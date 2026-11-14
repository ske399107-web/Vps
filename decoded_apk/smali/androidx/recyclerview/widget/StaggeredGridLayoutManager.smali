.class public Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
.super Lo/ud;
.source "SourceFile"

# interfaces
.implements Lo/Ed;


# instance fields
.field public A:I

.field public final B:Lo/H1;

.field public final C:I

.field public D:Z

.field public E:Z

.field public F:Lo/ff;

.field public final G:Landroid/graphics/Rect;

.field public final H:Lo/cf;

.field public final I:Z

.field public J:[I

.field public final K:Lo/J2;

.field public final p:I

.field public final q:[Lo/Ba;

.field public final r:Lo/z6;

.field public final s:Lo/z6;

.field public final t:I

.field public u:I

.field public final v:Lo/G9;

.field public w:Z

.field public x:Z

.field public final y:Ljava/util/BitSet;

.field public z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 6

    .line 1
    invoke-direct {p0}, Lo/ud;-><init>()V

    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->p:I

    .line 7
    const/4 v1, 0x0

    .line 8
    iput-boolean v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->w:Z

    .line 10
    iput-boolean v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->x:Z

    .line 12
    iput v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->z:I

    .line 14
    const/high16 v2, -0x80000000

    .line 16
    iput v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->A:I

    .line 18
    new-instance v2, Lo/H1;

    .line 20
    const/16 v3, 0x13

    .line 22
    const/4 v4, 0x0

    .line 23
    invoke-direct {v2, v3, v4}, Lo/H1;-><init>(IZ)V

    .line 26
    iput-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->B:Lo/H1;

    .line 28
    const/4 v3, 0x2

    .line 29
    iput v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->C:I

    .line 31
    new-instance v3, Landroid/graphics/Rect;

    .line 33
    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 36
    iput-object v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->G:Landroid/graphics/Rect;

    .line 38
    new-instance v3, Lo/cf;

    .line 40
    invoke-direct {v3, p0}, Lo/cf;-><init>(Landroidx/recyclerview/widget/StaggeredGridLayoutManager;)V

    .line 43
    iput-object v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->H:Lo/cf;

    .line 45
    const/4 v3, 0x1

    .line 46
    iput-boolean v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->I:Z

    .line 48
    new-instance v4, Lo/J2;

    .line 50
    const/16 v5, 0xa

    .line 52
    invoke-direct {v4, v5, p0}, Lo/J2;-><init>(ILjava/lang/Object;)V

    .line 55
    iput-object v4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->K:Lo/J2;

    .line 57
    invoke-static {p1, p2, p3, p4}, Lo/ud;->I(Landroid/content/Context;Landroid/util/AttributeSet;II)Lo/td;

    .line 60
    move-result-object p1

    .line 61
    iget p2, p1, Lo/td;->a:I

    .line 63
    if-eqz p2, :cond_1

    .line 65
    if-ne p2, v3, :cond_0

    .line 67
    goto :goto_0

    .line 68
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 70
    const-string p2, "invalid orientation."

    .line 72
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 75
    throw p1

    .line 76
    :cond_1
    :goto_0
    const/4 p3, 0x0

    .line 77
    invoke-virtual {p0, p3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c(Ljava/lang/String;)V

    .line 80
    iget p4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t:I

    .line 82
    if-ne p2, p4, :cond_2

    .line 84
    goto :goto_1

    .line 85
    :cond_2
    iput p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t:I

    .line 87
    iget-object p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:Lo/z6;

    .line 89
    iget-object p4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->s:Lo/z6;

    .line 91
    iput-object p4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:Lo/z6;

    .line 93
    iput-object p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->s:Lo/z6;

    .line 95
    invoke-virtual {p0}, Lo/ud;->l0()V

    .line 98
    :goto_1
    iget p2, p1, Lo/td;->b:I

    .line 100
    invoke-virtual {p0, p3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c(Ljava/lang/String;)V

    .line 103
    iget p4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->p:I

    .line 105
    if-eq p2, p4, :cond_5

    .line 107
    iget-object p4, v2, Lo/H1;->b:Ljava/lang/Object;

    .line 109
    check-cast p4, [I

    .line 111
    if-eqz p4, :cond_3

    .line 113
    invoke-static {p4, v0}, Ljava/util/Arrays;->fill([II)V

    .line 116
    :cond_3
    iput-object p3, v2, Lo/H1;->c:Ljava/lang/Object;

    .line 118
    invoke-virtual {p0}, Lo/ud;->l0()V

    .line 121
    iput p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->p:I

    .line 123
    new-instance p2, Ljava/util/BitSet;

    .line 125
    iget p4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->p:I

    .line 127
    invoke-direct {p2, p4}, Ljava/util/BitSet;-><init>(I)V

    .line 130
    iput-object p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->y:Ljava/util/BitSet;

    .line 132
    iget p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->p:I

    .line 134
    new-array p2, p2, [Lo/Ba;

    .line 136
    iput-object p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:[Lo/Ba;

    .line 138
    move p2, v1

    .line 139
    :goto_2
    iget p4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->p:I

    .line 141
    if-ge p2, p4, :cond_4

    .line 143
    iget-object p4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:[Lo/Ba;

    .line 145
    new-instance v0, Lo/Ba;

    .line 147
    invoke-direct {v0, p0, p2}, Lo/Ba;-><init>(Landroidx/recyclerview/widget/StaggeredGridLayoutManager;I)V

    .line 150
    aput-object v0, p4, p2

    .line 152
    add-int/lit8 p2, p2, 0x1

    .line 154
    goto :goto_2

    .line 155
    :cond_4
    invoke-virtual {p0}, Lo/ud;->l0()V

    .line 158
    :cond_5
    iget-boolean p1, p1, Lo/td;->c:Z

    .line 160
    invoke-virtual {p0, p3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c(Ljava/lang/String;)V

    .line 163
    iget-object p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->F:Lo/ff;

    .line 165
    if-eqz p2, :cond_6

    .line 167
    iget-boolean p3, p2, Lo/ff;->h:Z

    .line 169
    if-eq p3, p1, :cond_6

    .line 171
    iput-boolean p1, p2, Lo/ff;->h:Z

    .line 173
    :cond_6
    iput-boolean p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->w:Z

    .line 175
    invoke-virtual {p0}, Lo/ud;->l0()V

    .line 178
    new-instance p1, Lo/G9;

    .line 180
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 183
    iput-boolean v3, p1, Lo/G9;->a:Z

    .line 185
    iput v1, p1, Lo/G9;->f:I

    .line 187
    iput v1, p1, Lo/G9;->g:I

    .line 189
    iput-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->v:Lo/G9;

    .line 191
    iget p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t:I

    .line 193
    invoke-static {p0, p1}, Lo/z6;->a(Lo/ud;I)Lo/z6;

    .line 196
    move-result-object p1

    .line 197
    iput-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:Lo/z6;

    .line 199
    iget p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t:I

    .line 201
    sub-int/2addr v3, p1

    .line 202
    invoke-static {p0, v3}, Lo/z6;->a(Lo/ud;I)Lo/z6;

    .line 205
    move-result-object p1

    .line 206
    iput-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->s:Lo/z6;

    .line 208
    return-void
.end method

.method public static d1(III)I
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 3
    if-nez p2, :cond_0

    .line 5
    return p0

    .line 6
    :cond_0
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 9
    move-result v0

    .line 10
    const/high16 v1, -0x80000000

    .line 12
    if-eq v0, v1, :cond_2

    .line 14
    const/high16 v1, 0x40000000    # 2.0f

    .line 16
    if-ne v0, v1, :cond_1

    .line 18
    goto :goto_0

    .line 19
    :cond_1
    return p0

    .line 20
    :cond_2
    :goto_0
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 23
    move-result p0

    .line 24
    sub-int/2addr p0, p1

    .line 25
    sub-int/2addr p0, p2

    .line 26
    const/4 p1, 0x0

    .line 27
    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    .line 30
    move-result p0

    .line 31
    invoke-static {p0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 34
    move-result p0

    .line 35
    return p0
.end method


# virtual methods
.method public final A0(I)I
    .locals 3

    .line 1
    invoke-virtual {p0}, Lo/ud;->v()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, -0x1

    .line 6
    const/4 v2, 0x1

    .line 7
    if-nez v0, :cond_1

    .line 9
    iget-boolean p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->x:Z

    .line 11
    if-eqz p1, :cond_0

    .line 13
    move v1, v2

    .line 14
    :cond_0
    return v1

    .line 15
    :cond_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->K0()I

    .line 18
    move-result v0

    .line 19
    if-ge p1, v0, :cond_2

    .line 21
    move p1, v2

    .line 22
    goto :goto_0

    .line 23
    :cond_2
    const/4 p1, 0x0

    .line 24
    :goto_0
    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->x:Z

    .line 26
    if-eq p1, v0, :cond_3

    .line 28
    goto :goto_1

    .line 29
    :cond_3
    move v1, v2

    .line 30
    :goto_1
    return v1
.end method

.method public final B0()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lo/ud;->v()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_3

    .line 8
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->C:I

    .line 10
    if-eqz v0, :cond_3

    .line 12
    iget-boolean v0, p0, Lo/ud;->g:Z

    .line 14
    if-nez v0, :cond_0

    .line 16
    goto :goto_1

    .line 17
    :cond_0
    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->x:Z

    .line 19
    if-eqz v0, :cond_1

    .line 21
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->L0()I

    .line 24
    move-result v0

    .line 25
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->K0()I

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->K0()I

    .line 32
    move-result v0

    .line 33
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->L0()I

    .line 36
    :goto_0
    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->B:Lo/H1;

    .line 38
    if-nez v0, :cond_3

    .line 40
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->P0()Landroid/view/View;

    .line 43
    move-result-object v0

    .line 44
    if-eqz v0, :cond_3

    .line 46
    iget-object v0, v2, Lo/H1;->b:Ljava/lang/Object;

    .line 48
    check-cast v0, [I

    .line 50
    if-eqz v0, :cond_2

    .line 52
    const/4 v1, -0x1

    .line 53
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 56
    :cond_2
    const/4 v0, 0x0

    .line 57
    iput-object v0, v2, Lo/H1;->c:Ljava/lang/Object;

    .line 59
    const/4 v0, 0x1

    .line 60
    iput-boolean v0, p0, Lo/ud;->f:Z

    .line 62
    invoke-virtual {p0}, Lo/ud;->l0()V

    .line 65
    return v0

    .line 66
    :cond_3
    :goto_1
    return v1
.end method

.method public final C0(Lo/Fd;)I
    .locals 6

    .line 1
    invoke-virtual {p0}, Lo/ud;->v()I

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
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:Lo/z6;

    .line 11
    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->I:Z

    .line 13
    xor-int/lit8 v0, v0, 0x1

    .line 15
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->H0(Z)Landroid/view/View;

    .line 18
    move-result-object v2

    .line 19
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->G0(Z)Landroid/view/View;

    .line 22
    move-result-object v3

    .line 23
    iget-boolean v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->I:Z

    .line 25
    move-object v0, p1

    .line 26
    move-object v4, p0

    .line 27
    invoke-static/range {v0 .. v5}, Lo/Ha;->m(Lo/Fd;Lo/z6;Landroid/view/View;Landroid/view/View;Lo/ud;Z)I

    .line 30
    move-result p1

    .line 31
    return p1
.end method

.method public final D0(Lo/Fd;)I
    .locals 7

    .line 1
    invoke-virtual {p0}, Lo/ud;->v()I

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
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:Lo/z6;

    .line 11
    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->I:Z

    .line 13
    xor-int/lit8 v0, v0, 0x1

    .line 15
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->H0(Z)Landroid/view/View;

    .line 18
    move-result-object v2

    .line 19
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->G0(Z)Landroid/view/View;

    .line 22
    move-result-object v3

    .line 23
    iget-boolean v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->I:Z

    .line 25
    iget-boolean v6, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->x:Z

    .line 27
    move-object v0, p1

    .line 28
    move-object v4, p0

    .line 29
    invoke-static/range {v0 .. v6}, Lo/Ha;->n(Lo/Fd;Lo/z6;Landroid/view/View;Landroid/view/View;Lo/ud;ZZ)I

    .line 32
    move-result p1

    .line 33
    return p1
.end method

.method public final E0(Lo/Fd;)I
    .locals 6

    .line 1
    invoke-virtual {p0}, Lo/ud;->v()I

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
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:Lo/z6;

    .line 11
    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->I:Z

    .line 13
    xor-int/lit8 v0, v0, 0x1

    .line 15
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->H0(Z)Landroid/view/View;

    .line 18
    move-result-object v2

    .line 19
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->G0(Z)Landroid/view/View;

    .line 22
    move-result-object v3

    .line 23
    iget-boolean v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->I:Z

    .line 25
    move-object v0, p1

    .line 26
    move-object v4, p0

    .line 27
    invoke-static/range {v0 .. v5}, Lo/Ha;->o(Lo/Fd;Lo/z6;Landroid/view/View;Landroid/view/View;Lo/ud;Z)I

    .line 30
    move-result p1

    .line 31
    return p1
.end method

.method public final F0(Lo/Ad;Lo/G9;Lo/Fd;)I
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 3
    move-object/from16 v1, p1

    .line 5
    move-object/from16 v2, p2

    .line 7
    iget-object v3, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->y:Ljava/util/BitSet;

    .line 9
    iget v4, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->p:I

    .line 11
    const/4 v5, 0x0

    .line 12
    const/4 v6, 0x1

    .line 13
    invoke-virtual {v3, v5, v4, v6}, Ljava/util/BitSet;->set(IIZ)V

    .line 16
    iget-object v3, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->v:Lo/G9;

    .line 18
    iget-boolean v4, v3, Lo/G9;->i:Z

    .line 20
    if-eqz v4, :cond_1

    .line 22
    iget v4, v2, Lo/G9;->e:I

    .line 24
    if-ne v4, v6, :cond_0

    .line 26
    const v4, 0x7fffffff

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/high16 v4, -0x80000000

    .line 32
    goto :goto_0

    .line 33
    :cond_1
    iget v4, v2, Lo/G9;->e:I

    .line 35
    if-ne v4, v6, :cond_2

    .line 37
    iget v4, v2, Lo/G9;->g:I

    .line 39
    iget v9, v2, Lo/G9;->b:I

    .line 41
    add-int/2addr v4, v9

    .line 42
    goto :goto_0

    .line 43
    :cond_2
    iget v4, v2, Lo/G9;->f:I

    .line 45
    iget v9, v2, Lo/G9;->b:I

    .line 47
    sub-int/2addr v4, v9

    .line 48
    :goto_0
    iget v9, v2, Lo/G9;->e:I

    .line 50
    move v10, v5

    .line 51
    :goto_1
    iget v11, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->p:I

    .line 53
    if-ge v10, v11, :cond_4

    .line 55
    iget-object v11, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:[Lo/Ba;

    .line 57
    aget-object v11, v11, v10

    .line 59
    iget-object v11, v11, Lo/Ba;->f:Ljava/lang/Object;

    .line 61
    check-cast v11, Ljava/util/ArrayList;

    .line 63
    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    .line 66
    move-result v11

    .line 67
    if-eqz v11, :cond_3

    .line 69
    goto :goto_2

    .line 70
    :cond_3
    iget-object v11, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:[Lo/Ba;

    .line 72
    aget-object v11, v11, v10

    .line 74
    invoke-virtual {v0, v11, v9, v4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c1(Lo/Ba;II)V

    .line 77
    :goto_2
    add-int/lit8 v10, v10, 0x1

    .line 79
    goto :goto_1

    .line 80
    :cond_4
    iget-boolean v9, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->x:Z

    .line 82
    if-eqz v9, :cond_5

    .line 84
    iget-object v9, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:Lo/z6;

    .line 86
    invoke-virtual {v9}, Lo/z6;->g()I

    .line 89
    move-result v9

    .line 90
    goto :goto_3

    .line 91
    :cond_5
    iget-object v9, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:Lo/z6;

    .line 93
    invoke-virtual {v9}, Lo/z6;->k()I

    .line 96
    move-result v9

    .line 97
    :goto_3
    move v10, v5

    .line 98
    :goto_4
    iget v11, v2, Lo/G9;->c:I

    .line 100
    if-ltz v11, :cond_6

    .line 102
    invoke-virtual/range {p3 .. p3}, Lo/Fd;->b()I

    .line 105
    move-result v12

    .line 106
    if-ge v11, v12, :cond_6

    .line 108
    move v11, v6

    .line 109
    goto :goto_5

    .line 110
    :cond_6
    move v11, v5

    .line 111
    :goto_5
    const/4 v12, -0x1

    .line 112
    if-eqz v11, :cond_7

    .line 114
    iget-boolean v11, v3, Lo/G9;->i:Z

    .line 116
    if-nez v11, :cond_8

    .line 118
    iget-object v11, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->y:Ljava/util/BitSet;

    .line 120
    invoke-virtual {v11}, Ljava/util/BitSet;->isEmpty()Z

    .line 123
    move-result v11

    .line 124
    if-nez v11, :cond_7

    .line 126
    goto :goto_6

    .line 127
    :cond_7
    move v7, v5

    .line 128
    goto/16 :goto_15

    .line 130
    :cond_8
    :goto_6
    iget v10, v2, Lo/G9;->c:I

    .line 132
    const-wide v13, 0x7fffffffffffffffL

    .line 137
    invoke-virtual {v1, v10, v13, v14}, Lo/Ad;->i(IJ)Lo/Id;

    .line 140
    move-result-object v10

    .line 141
    iget-object v10, v10, Lo/Id;->a:Landroid/view/View;

    .line 143
    iget v11, v2, Lo/G9;->c:I

    .line 145
    iget v13, v2, Lo/G9;->d:I

    .line 147
    add-int/2addr v11, v13

    .line 148
    iput v11, v2, Lo/G9;->c:I

    .line 150
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 153
    move-result-object v11

    .line 154
    check-cast v11, Lo/df;

    .line 156
    iget-object v13, v11, Lo/vd;->a:Lo/Id;

    .line 158
    invoke-virtual {v13}, Lo/Id;->b()I

    .line 161
    move-result v13

    .line 162
    iget-object v14, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->B:Lo/H1;

    .line 164
    iget-object v15, v14, Lo/H1;->b:Ljava/lang/Object;

    .line 166
    check-cast v15, [I

    .line 168
    if-eqz v15, :cond_a

    .line 170
    array-length v8, v15

    .line 171
    if-lt v13, v8, :cond_9

    .line 173
    goto :goto_7

    .line 174
    :cond_9
    aget v8, v15, v13

    .line 176
    goto :goto_8

    .line 177
    :cond_a
    :goto_7
    move v8, v12

    .line 178
    :goto_8
    if-ne v8, v12, :cond_10

    .line 180
    iget v8, v2, Lo/G9;->e:I

    .line 182
    invoke-virtual {v0, v8}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->T0(I)Z

    .line 185
    move-result v8

    .line 186
    if-eqz v8, :cond_b

    .line 188
    iget v8, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->p:I

    .line 190
    sub-int/2addr v8, v6

    .line 191
    move v15, v12

    .line 192
    move/from16 v16, v15

    .line 194
    goto :goto_9

    .line 195
    :cond_b
    iget v8, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->p:I

    .line 197
    move/from16 v16, v6

    .line 199
    move v15, v8

    .line 200
    move v8, v5

    .line 201
    :goto_9
    iget v7, v2, Lo/G9;->e:I

    .line 203
    const/16 v17, 0x0

    .line 205
    if-ne v7, v6, :cond_e

    .line 207
    iget-object v7, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:Lo/z6;

    .line 209
    invoke-virtual {v7}, Lo/z6;->k()I

    .line 212
    move-result v7

    .line 213
    const v5, 0x7fffffff

    .line 216
    :goto_a
    if-eq v8, v15, :cond_d

    .line 218
    iget-object v12, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:[Lo/Ba;

    .line 220
    aget-object v12, v12, v8

    .line 222
    invoke-virtual {v12, v7}, Lo/Ba;->g(I)I

    .line 225
    move-result v6

    .line 226
    if-ge v6, v5, :cond_c

    .line 228
    move v5, v6

    .line 229
    move-object/from16 v17, v12

    .line 231
    :cond_c
    add-int v8, v8, v16

    .line 233
    const/4 v6, 0x1

    .line 234
    const/4 v12, -0x1

    .line 235
    goto :goto_a

    .line 236
    :cond_d
    move-object/from16 v5, v17

    .line 238
    goto :goto_c

    .line 239
    :cond_e
    iget-object v5, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:Lo/z6;

    .line 241
    invoke-virtual {v5}, Lo/z6;->g()I

    .line 244
    move-result v5

    .line 245
    const/high16 v6, -0x80000000

    .line 247
    :goto_b
    if-eq v8, v15, :cond_d

    .line 249
    iget-object v7, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:[Lo/Ba;

    .line 251
    aget-object v7, v7, v8

    .line 253
    invoke-virtual {v7, v5}, Lo/Ba;->i(I)I

    .line 256
    move-result v12

    .line 257
    if-le v12, v6, :cond_f

    .line 259
    move-object/from16 v17, v7

    .line 261
    move v6, v12

    .line 262
    :cond_f
    add-int v8, v8, v16

    .line 264
    goto :goto_b

    .line 265
    :goto_c
    invoke-virtual {v14, v13}, Lo/H1;->s(I)V

    .line 268
    iget-object v6, v14, Lo/H1;->b:Ljava/lang/Object;

    .line 270
    check-cast v6, [I

    .line 272
    iget v7, v5, Lo/Ba;->e:I

    .line 274
    aput v7, v6, v13

    .line 276
    goto :goto_d

    .line 277
    :cond_10
    iget-object v5, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:[Lo/Ba;

    .line 279
    aget-object v5, v5, v8

    .line 281
    :goto_d
    iput-object v5, v11, Lo/df;->e:Lo/Ba;

    .line 283
    iget v6, v2, Lo/G9;->e:I

    .line 285
    const/4 v7, 0x1

    .line 286
    if-ne v6, v7, :cond_11

    .line 288
    const/4 v6, 0x0

    .line 289
    const/4 v8, -0x1

    .line 290
    invoke-virtual {v0, v10, v8, v6}, Lo/ud;->b(Landroid/view/View;IZ)V

    .line 293
    goto :goto_e

    .line 294
    :cond_11
    const/4 v6, 0x0

    .line 295
    invoke-virtual {v0, v10, v6, v6}, Lo/ud;->b(Landroid/view/View;IZ)V

    .line 298
    :goto_e
    iget v8, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t:I

    .line 300
    if-ne v8, v7, :cond_12

    .line 302
    iget v7, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->u:I

    .line 304
    iget v8, v0, Lo/ud;->l:I

    .line 306
    iget v12, v11, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 308
    invoke-static {v6, v7, v8, v6, v12}, Lo/ud;->w(ZIIII)I

    .line 311
    move-result v7

    .line 312
    iget v6, v0, Lo/ud;->o:I

    .line 314
    iget v8, v0, Lo/ud;->m:I

    .line 316
    invoke-virtual/range {p0 .. p0}, Lo/ud;->G()I

    .line 319
    move-result v12

    .line 320
    invoke-virtual/range {p0 .. p0}, Lo/ud;->D()I

    .line 323
    move-result v13

    .line 324
    add-int/2addr v13, v12

    .line 325
    iget v12, v11, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 327
    const/4 v14, 0x1

    .line 328
    invoke-static {v14, v6, v8, v13, v12}, Lo/ud;->w(ZIIII)I

    .line 331
    move-result v6

    .line 332
    invoke-virtual {v0, v10, v7, v6}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->R0(Landroid/view/View;II)V

    .line 335
    goto :goto_f

    .line 336
    :cond_12
    move v14, v7

    .line 337
    iget v6, v0, Lo/ud;->n:I

    .line 339
    iget v7, v0, Lo/ud;->l:I

    .line 341
    invoke-virtual/range {p0 .. p0}, Lo/ud;->E()I

    .line 344
    move-result v8

    .line 345
    invoke-virtual/range {p0 .. p0}, Lo/ud;->F()I

    .line 348
    move-result v12

    .line 349
    add-int/2addr v12, v8

    .line 350
    iget v8, v11, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 352
    invoke-static {v14, v6, v7, v12, v8}, Lo/ud;->w(ZIIII)I

    .line 355
    move-result v6

    .line 356
    iget v7, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->u:I

    .line 358
    iget v8, v0, Lo/ud;->m:I

    .line 360
    iget v12, v11, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 362
    const/4 v13, 0x0

    .line 363
    invoke-static {v13, v7, v8, v13, v12}, Lo/ud;->w(ZIIII)I

    .line 366
    move-result v7

    .line 367
    invoke-virtual {v0, v10, v6, v7}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->R0(Landroid/view/View;II)V

    .line 370
    :goto_f
    iget v6, v2, Lo/G9;->e:I

    .line 372
    if-ne v6, v14, :cond_13

    .line 374
    invoke-virtual {v5, v9}, Lo/Ba;->g(I)I

    .line 377
    move-result v6

    .line 378
    iget-object v7, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:Lo/z6;

    .line 380
    invoke-virtual {v7, v10}, Lo/z6;->c(Landroid/view/View;)I

    .line 383
    move-result v7

    .line 384
    add-int/2addr v7, v6

    .line 385
    goto :goto_10

    .line 386
    :cond_13
    invoke-virtual {v5, v9}, Lo/Ba;->i(I)I

    .line 389
    move-result v7

    .line 390
    iget-object v6, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:Lo/z6;

    .line 392
    invoke-virtual {v6, v10}, Lo/z6;->c(Landroid/view/View;)I

    .line 395
    move-result v6

    .line 396
    sub-int v6, v7, v6

    .line 398
    :goto_10
    iget v8, v2, Lo/G9;->e:I

    .line 400
    const/4 v12, 0x1

    .line 401
    if-ne v8, v12, :cond_17

    .line 403
    iget-object v8, v11, Lo/df;->e:Lo/Ba;

    .line 405
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 408
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 411
    move-result-object v11

    .line 412
    check-cast v11, Lo/df;

    .line 414
    iput-object v8, v11, Lo/df;->e:Lo/Ba;

    .line 416
    iget-object v12, v8, Lo/Ba;->f:Ljava/lang/Object;

    .line 418
    check-cast v12, Ljava/util/ArrayList;

    .line 420
    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 423
    const/high16 v13, -0x80000000

    .line 425
    iput v13, v8, Lo/Ba;->c:I

    .line 427
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    .line 430
    move-result v12

    .line 431
    const/4 v14, 0x1

    .line 432
    if-ne v12, v14, :cond_14

    .line 434
    iput v13, v8, Lo/Ba;->b:I

    .line 436
    :cond_14
    iget-object v12, v11, Lo/vd;->a:Lo/Id;

    .line 438
    invoke-virtual {v12}, Lo/Id;->i()Z

    .line 441
    move-result v12

    .line 442
    if-nez v12, :cond_15

    .line 444
    iget-object v11, v11, Lo/vd;->a:Lo/Id;

    .line 446
    invoke-virtual {v11}, Lo/Id;->l()Z

    .line 449
    move-result v11

    .line 450
    if-eqz v11, :cond_16

    .line 452
    :cond_15
    iget v11, v8, Lo/Ba;->d:I

    .line 454
    iget-object v12, v8, Lo/Ba;->g:Ljava/lang/Object;

    .line 456
    check-cast v12, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    .line 458
    iget-object v12, v12, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:Lo/z6;

    .line 460
    invoke-virtual {v12, v10}, Lo/z6;->c(Landroid/view/View;)I

    .line 463
    move-result v12

    .line 464
    add-int/2addr v12, v11

    .line 465
    iput v12, v8, Lo/Ba;->d:I

    .line 467
    :cond_16
    const/high16 v13, -0x80000000

    .line 469
    goto :goto_11

    .line 470
    :cond_17
    iget-object v8, v11, Lo/df;->e:Lo/Ba;

    .line 472
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 475
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 478
    move-result-object v11

    .line 479
    check-cast v11, Lo/df;

    .line 481
    iput-object v8, v11, Lo/df;->e:Lo/Ba;

    .line 483
    iget-object v12, v8, Lo/Ba;->f:Ljava/lang/Object;

    .line 485
    check-cast v12, Ljava/util/ArrayList;

    .line 487
    const/4 v13, 0x0

    .line 488
    invoke-virtual {v12, v13, v10}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 491
    const/high16 v13, -0x80000000

    .line 493
    iput v13, v8, Lo/Ba;->b:I

    .line 495
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    .line 498
    move-result v12

    .line 499
    const/4 v14, 0x1

    .line 500
    if-ne v12, v14, :cond_18

    .line 502
    iput v13, v8, Lo/Ba;->c:I

    .line 504
    :cond_18
    iget-object v12, v11, Lo/vd;->a:Lo/Id;

    .line 506
    invoke-virtual {v12}, Lo/Id;->i()Z

    .line 509
    move-result v12

    .line 510
    if-nez v12, :cond_19

    .line 512
    iget-object v11, v11, Lo/vd;->a:Lo/Id;

    .line 514
    invoke-virtual {v11}, Lo/Id;->l()Z

    .line 517
    move-result v11

    .line 518
    if-eqz v11, :cond_1a

    .line 520
    :cond_19
    iget v11, v8, Lo/Ba;->d:I

    .line 522
    iget-object v12, v8, Lo/Ba;->g:Ljava/lang/Object;

    .line 524
    check-cast v12, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    .line 526
    iget-object v12, v12, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:Lo/z6;

    .line 528
    invoke-virtual {v12, v10}, Lo/z6;->c(Landroid/view/View;)I

    .line 531
    move-result v12

    .line 532
    add-int/2addr v12, v11

    .line 533
    iput v12, v8, Lo/Ba;->d:I

    .line 535
    :cond_1a
    :goto_11
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->Q0()Z

    .line 538
    move-result v8

    .line 539
    if-eqz v8, :cond_1b

    .line 541
    iget v8, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t:I

    .line 543
    const/4 v11, 0x1

    .line 544
    if-ne v8, v11, :cond_1b

    .line 546
    iget-object v8, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->s:Lo/z6;

    .line 548
    invoke-virtual {v8}, Lo/z6;->g()I

    .line 551
    move-result v8

    .line 552
    iget v12, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->p:I

    .line 554
    sub-int/2addr v12, v11

    .line 555
    iget v11, v5, Lo/Ba;->e:I

    .line 557
    sub-int/2addr v12, v11

    .line 558
    iget v11, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->u:I

    .line 560
    mul-int/2addr v12, v11

    .line 561
    sub-int/2addr v8, v12

    .line 562
    iget-object v11, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->s:Lo/z6;

    .line 564
    invoke-virtual {v11, v10}, Lo/z6;->c(Landroid/view/View;)I

    .line 567
    move-result v11

    .line 568
    sub-int v11, v8, v11

    .line 570
    goto :goto_12

    .line 571
    :cond_1b
    iget v8, v5, Lo/Ba;->e:I

    .line 573
    iget v11, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->u:I

    .line 575
    mul-int/2addr v8, v11

    .line 576
    iget-object v11, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->s:Lo/z6;

    .line 578
    invoke-virtual {v11}, Lo/z6;->k()I

    .line 581
    move-result v11

    .line 582
    add-int/2addr v11, v8

    .line 583
    iget-object v8, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->s:Lo/z6;

    .line 585
    invoke-virtual {v8, v10}, Lo/z6;->c(Landroid/view/View;)I

    .line 588
    move-result v8

    .line 589
    add-int/2addr v8, v11

    .line 590
    :goto_12
    iget v12, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t:I

    .line 592
    const/4 v14, 0x1

    .line 593
    if-ne v12, v14, :cond_1c

    .line 595
    invoke-static {v10, v11, v6, v8, v7}, Lo/ud;->N(Landroid/view/View;IIII)V

    .line 598
    goto :goto_13

    .line 599
    :cond_1c
    invoke-static {v10, v6, v11, v7, v8}, Lo/ud;->N(Landroid/view/View;IIII)V

    .line 602
    :goto_13
    iget v6, v3, Lo/G9;->e:I

    .line 604
    invoke-virtual {v0, v5, v6, v4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c1(Lo/Ba;II)V

    .line 607
    invoke-virtual {v0, v1, v3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->V0(Lo/Ad;Lo/G9;)V

    .line 610
    iget-boolean v6, v3, Lo/G9;->h:Z

    .line 612
    if-eqz v6, :cond_1d

    .line 614
    invoke-virtual {v10}, Landroid/view/View;->hasFocusable()Z

    .line 617
    move-result v6

    .line 618
    if-eqz v6, :cond_1d

    .line 620
    iget-object v6, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->y:Ljava/util/BitSet;

    .line 622
    iget v5, v5, Lo/Ba;->e:I

    .line 624
    const/4 v7, 0x0

    .line 625
    invoke-virtual {v6, v5, v7}, Ljava/util/BitSet;->set(IZ)V

    .line 628
    goto :goto_14

    .line 629
    :cond_1d
    const/4 v7, 0x0

    .line 630
    :goto_14
    move v5, v7

    .line 631
    move v6, v14

    .line 632
    move v10, v6

    .line 633
    goto/16 :goto_4

    .line 635
    :goto_15
    if-nez v10, :cond_1e

    .line 637
    invoke-virtual {v0, v1, v3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->V0(Lo/Ad;Lo/G9;)V

    .line 640
    :cond_1e
    iget v1, v3, Lo/G9;->e:I

    .line 642
    const/4 v3, -0x1

    .line 643
    if-ne v1, v3, :cond_1f

    .line 645
    iget-object v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:Lo/z6;

    .line 647
    invoke-virtual {v1}, Lo/z6;->k()I

    .line 650
    move-result v1

    .line 651
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->N0(I)I

    .line 654
    move-result v1

    .line 655
    iget-object v3, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:Lo/z6;

    .line 657
    invoke-virtual {v3}, Lo/z6;->k()I

    .line 660
    move-result v3

    .line 661
    sub-int/2addr v3, v1

    .line 662
    goto :goto_16

    .line 663
    :cond_1f
    iget-object v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:Lo/z6;

    .line 665
    invoke-virtual {v1}, Lo/z6;->g()I

    .line 668
    move-result v1

    .line 669
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->M0(I)I

    .line 672
    move-result v1

    .line 673
    iget-object v3, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:Lo/z6;

    .line 675
    invoke-virtual {v3}, Lo/z6;->g()I

    .line 678
    move-result v3

    .line 679
    sub-int v3, v1, v3

    .line 681
    :goto_16
    if-lez v3, :cond_20

    .line 683
    iget v1, v2, Lo/G9;->b:I

    .line 685
    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    .line 688
    move-result v5

    .line 689
    goto :goto_17

    .line 690
    :cond_20
    move v5, v7

    .line 691
    :goto_17
    return v5
.end method

.method public final G0(Z)Landroid/view/View;
    .locals 7

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:Lo/z6;

    .line 3
    invoke-virtual {v0}, Lo/z6;->k()I

    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:Lo/z6;

    .line 9
    invoke-virtual {v1}, Lo/z6;->g()I

    .line 12
    move-result v1

    .line 13
    invoke-virtual {p0}, Lo/ud;->v()I

    .line 16
    move-result v2

    .line 17
    add-int/lit8 v2, v2, -0x1

    .line 19
    const/4 v3, 0x0

    .line 20
    :goto_0
    if-ltz v2, :cond_4

    .line 22
    invoke-virtual {p0, v2}, Lo/ud;->u(I)Landroid/view/View;

    .line 25
    move-result-object v4

    .line 26
    iget-object v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:Lo/z6;

    .line 28
    invoke-virtual {v5, v4}, Lo/z6;->e(Landroid/view/View;)I

    .line 31
    move-result v5

    .line 32
    iget-object v6, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:Lo/z6;

    .line 34
    invoke-virtual {v6, v4}, Lo/z6;->b(Landroid/view/View;)I

    .line 37
    move-result v6

    .line 38
    if-le v6, v0, :cond_3

    .line 40
    if-lt v5, v1, :cond_0

    .line 42
    goto :goto_2

    .line 43
    :cond_0
    if-le v6, v1, :cond_2

    .line 45
    if-nez p1, :cond_1

    .line 47
    goto :goto_1

    .line 48
    :cond_1
    if-nez v3, :cond_3

    .line 50
    move-object v3, v4

    .line 51
    goto :goto_2

    .line 52
    :cond_2
    :goto_1
    return-object v4

    .line 53
    :cond_3
    :goto_2
    add-int/lit8 v2, v2, -0x1

    .line 55
    goto :goto_0

    .line 56
    :cond_4
    return-object v3
.end method

.method public final H0(Z)Landroid/view/View;
    .locals 8

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:Lo/z6;

    .line 3
    invoke-virtual {v0}, Lo/z6;->k()I

    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:Lo/z6;

    .line 9
    invoke-virtual {v1}, Lo/z6;->g()I

    .line 12
    move-result v1

    .line 13
    invoke-virtual {p0}, Lo/ud;->v()I

    .line 16
    move-result v2

    .line 17
    const/4 v3, 0x0

    .line 18
    const/4 v4, 0x0

    .line 19
    :goto_0
    if-ge v4, v2, :cond_4

    .line 21
    invoke-virtual {p0, v4}, Lo/ud;->u(I)Landroid/view/View;

    .line 24
    move-result-object v5

    .line 25
    iget-object v6, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:Lo/z6;

    .line 27
    invoke-virtual {v6, v5}, Lo/z6;->e(Landroid/view/View;)I

    .line 30
    move-result v6

    .line 31
    iget-object v7, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:Lo/z6;

    .line 33
    invoke-virtual {v7, v5}, Lo/z6;->b(Landroid/view/View;)I

    .line 36
    move-result v7

    .line 37
    if-le v7, v0, :cond_3

    .line 39
    if-lt v6, v1, :cond_0

    .line 41
    goto :goto_2

    .line 42
    :cond_0
    if-ge v6, v0, :cond_2

    .line 44
    if-nez p1, :cond_1

    .line 46
    goto :goto_1

    .line 47
    :cond_1
    if-nez v3, :cond_3

    .line 49
    move-object v3, v5

    .line 50
    goto :goto_2

    .line 51
    :cond_2
    :goto_1
    return-object v5

    .line 52
    :cond_3
    :goto_2
    add-int/lit8 v4, v4, 0x1

    .line 54
    goto :goto_0

    .line 55
    :cond_4
    return-object v3
.end method

.method public final I0(Lo/Ad;Lo/Fd;Z)V
    .locals 2

    .line 1
    const/high16 v0, -0x80000000

    .line 3
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->M0(I)I

    .line 6
    move-result v1

    .line 7
    if-ne v1, v0, :cond_0

    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:Lo/z6;

    .line 12
    invoke-virtual {v0}, Lo/z6;->g()I

    .line 15
    move-result v0

    .line 16
    sub-int/2addr v0, v1

    .line 17
    if-lez v0, :cond_1

    .line 19
    neg-int v1, v0

    .line 20
    invoke-virtual {p0, v1, p1, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->Z0(ILo/Ad;Lo/Fd;)I

    .line 23
    move-result p1

    .line 24
    neg-int p1, p1

    .line 25
    sub-int/2addr v0, p1

    .line 26
    if-eqz p3, :cond_1

    .line 28
    if-lez v0, :cond_1

    .line 30
    iget-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:Lo/z6;

    .line 32
    invoke-virtual {p1, v0}, Lo/z6;->p(I)V

    .line 35
    :cond_1
    return-void
.end method

.method public final J(Lo/Ad;Lo/Fd;)I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t:I

    .line 3
    if-nez v0, :cond_0

    .line 5
    iget p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->p:I

    .line 7
    return p1

    .line 8
    :cond_0
    invoke-super {p0, p1, p2}, Lo/ud;->J(Lo/Ad;Lo/Fd;)I

    .line 11
    move-result p1

    .line 12
    return p1
.end method

.method public final J0(Lo/Ad;Lo/Fd;Z)V
    .locals 2

    .line 1
    const v0, 0x7fffffff

    .line 4
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->N0(I)I

    .line 7
    move-result v1

    .line 8
    if-ne v1, v0, :cond_0

    .line 10
    return-void

    .line 11
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:Lo/z6;

    .line 13
    invoke-virtual {v0}, Lo/z6;->k()I

    .line 16
    move-result v0

    .line 17
    sub-int/2addr v1, v0

    .line 18
    if-lez v1, :cond_1

    .line 20
    invoke-virtual {p0, v1, p1, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->Z0(ILo/Ad;Lo/Fd;)I

    .line 23
    move-result p1

    .line 24
    sub-int/2addr v1, p1

    .line 25
    if-eqz p3, :cond_1

    .line 27
    if-lez v1, :cond_1

    .line 29
    iget-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:Lo/z6;

    .line 31
    neg-int p2, v1

    .line 32
    invoke-virtual {p1, p2}, Lo/z6;->p(I)V

    .line 35
    :cond_1
    return-void
.end method

.method public final K0()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lo/ud;->v()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p0, v1}, Lo/ud;->u(I)Landroid/view/View;

    .line 12
    move-result-object v0

    .line 13
    invoke-static {v0}, Lo/ud;->H(Landroid/view/View;)I

    .line 16
    move-result v1

    .line 17
    :goto_0
    return v1
.end method

.method public final L()Z
    .locals 1

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->C:I

    .line 3
    if-eqz v0, :cond_0

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

.method public final L0()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lo/ud;->v()I

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 7
    const/4 v0, 0x0

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 11
    invoke-virtual {p0, v0}, Lo/ud;->u(I)Landroid/view/View;

    .line 14
    move-result-object v0

    .line 15
    invoke-static {v0}, Lo/ud;->H(Landroid/view/View;)I

    .line 18
    move-result v0

    .line 19
    :goto_0
    return v0
.end method

.method public final M0(I)I
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:[Lo/Ba;

    .line 3
    const/4 v1, 0x0

    .line 4
    aget-object v0, v0, v1

    .line 6
    invoke-virtual {v0, p1}, Lo/Ba;->g(I)I

    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x1

    .line 11
    :goto_0
    iget v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->p:I

    .line 13
    if-ge v1, v2, :cond_1

    .line 15
    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:[Lo/Ba;

    .line 17
    aget-object v2, v2, v1

    .line 19
    invoke-virtual {v2, p1}, Lo/Ba;->g(I)I

    .line 22
    move-result v2

    .line 23
    if-le v2, v0, :cond_0

    .line 25
    move v0, v2

    .line 26
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    return v0
.end method

.method public final N0(I)I
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:[Lo/Ba;

    .line 3
    const/4 v1, 0x0

    .line 4
    aget-object v0, v0, v1

    .line 6
    invoke-virtual {v0, p1}, Lo/Ba;->i(I)I

    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x1

    .line 11
    :goto_0
    iget v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->p:I

    .line 13
    if-ge v1, v2, :cond_1

    .line 15
    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:[Lo/Ba;

    .line 17
    aget-object v2, v2, v1

    .line 19
    invoke-virtual {v2, p1}, Lo/Ba;->i(I)I

    .line 22
    move-result v2

    .line 23
    if-ge v2, v0, :cond_0

    .line 25
    move v0, v2

    .line 26
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    return v0
.end method

.method public final O(I)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Lo/ud;->O(I)V

    .line 4
    const/4 v0, 0x0

    .line 5
    :goto_0
    iget v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->p:I

    .line 7
    if-ge v0, v1, :cond_2

    .line 9
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:[Lo/Ba;

    .line 11
    aget-object v1, v1, v0

    .line 13
    iget v2, v1, Lo/Ba;->b:I

    .line 15
    const/high16 v3, -0x80000000

    .line 17
    if-eq v2, v3, :cond_0

    .line 19
    add-int/2addr v2, p1

    .line 20
    iput v2, v1, Lo/Ba;->b:I

    .line 22
    :cond_0
    iget v2, v1, Lo/Ba;->c:I

    .line 24
    if-eq v2, v3, :cond_1

    .line 26
    add-int/2addr v2, p1

    .line 27
    iput v2, v1, Lo/Ba;->c:I

    .line 29
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 31
    goto :goto_0

    .line 32
    :cond_2
    return-void
.end method

.method public final O0(III)V
    .locals 10

    .line 1
    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->x:Z

    .line 3
    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->L0()I

    .line 8
    move-result v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->K0()I

    .line 13
    move-result v0

    .line 14
    :goto_0
    const/16 v1, 0x8

    .line 16
    if-ne p3, v1, :cond_2

    .line 18
    if-ge p1, p2, :cond_1

    .line 20
    add-int/lit8 v2, p2, 0x1

    .line 22
    :goto_1
    move v3, p1

    .line 23
    goto :goto_2

    .line 24
    :cond_1
    add-int/lit8 v2, p1, 0x1

    .line 26
    move v3, p2

    .line 27
    goto :goto_2

    .line 28
    :cond_2
    add-int v2, p1, p2

    .line 30
    goto :goto_1

    .line 31
    :goto_2
    iget-object v4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->B:Lo/H1;

    .line 33
    iget-object v5, v4, Lo/H1;->b:Ljava/lang/Object;

    .line 35
    check-cast v5, [I

    .line 37
    const/4 v6, -0x1

    .line 38
    if-nez v5, :cond_3

    .line 40
    goto/16 :goto_8

    .line 42
    :cond_3
    array-length v5, v5

    .line 43
    if-lt v3, v5, :cond_4

    .line 45
    goto/16 :goto_8

    .line 47
    :cond_4
    iget-object v5, v4, Lo/H1;->c:Ljava/lang/Object;

    .line 49
    check-cast v5, Ljava/util/ArrayList;

    .line 51
    if-nez v5, :cond_6

    .line 53
    :cond_5
    move v5, v6

    .line 54
    goto :goto_7

    .line 55
    :cond_6
    const/4 v7, 0x0

    .line 56
    if-nez v5, :cond_7

    .line 58
    goto :goto_4

    .line 59
    :cond_7
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 62
    move-result v5

    .line 63
    add-int/lit8 v5, v5, -0x1

    .line 65
    :goto_3
    if-ltz v5, :cond_9

    .line 67
    iget-object v8, v4, Lo/H1;->c:Ljava/lang/Object;

    .line 69
    check-cast v8, Ljava/util/ArrayList;

    .line 71
    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 74
    move-result-object v8

    .line 75
    check-cast v8, Lo/ef;

    .line 77
    iget v9, v8, Lo/ef;->a:I

    .line 79
    if-ne v9, v3, :cond_8

    .line 81
    move-object v7, v8

    .line 82
    goto :goto_4

    .line 83
    :cond_8
    add-int/lit8 v5, v5, -0x1

    .line 85
    goto :goto_3

    .line 86
    :cond_9
    :goto_4
    if-eqz v7, :cond_a

    .line 88
    iget-object v5, v4, Lo/H1;->c:Ljava/lang/Object;

    .line 90
    check-cast v5, Ljava/util/ArrayList;

    .line 92
    invoke-interface {v5, v7}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 95
    :cond_a
    iget-object v5, v4, Lo/H1;->c:Ljava/lang/Object;

    .line 97
    check-cast v5, Ljava/util/ArrayList;

    .line 99
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 102
    move-result v5

    .line 103
    const/4 v7, 0x0

    .line 104
    :goto_5
    if-ge v7, v5, :cond_c

    .line 106
    iget-object v8, v4, Lo/H1;->c:Ljava/lang/Object;

    .line 108
    check-cast v8, Ljava/util/ArrayList;

    .line 110
    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 113
    move-result-object v8

    .line 114
    check-cast v8, Lo/ef;

    .line 116
    iget v8, v8, Lo/ef;->a:I

    .line 118
    if-lt v8, v3, :cond_b

    .line 120
    goto :goto_6

    .line 121
    :cond_b
    add-int/lit8 v7, v7, 0x1

    .line 123
    goto :goto_5

    .line 124
    :cond_c
    move v7, v6

    .line 125
    :goto_6
    if-eq v7, v6, :cond_5

    .line 127
    iget-object v5, v4, Lo/H1;->c:Ljava/lang/Object;

    .line 129
    check-cast v5, Ljava/util/ArrayList;

    .line 131
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 134
    move-result-object v5

    .line 135
    check-cast v5, Lo/ef;

    .line 137
    iget-object v8, v4, Lo/H1;->c:Ljava/lang/Object;

    .line 139
    check-cast v8, Ljava/util/ArrayList;

    .line 141
    invoke-interface {v8, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 144
    iget v5, v5, Lo/ef;->a:I

    .line 146
    :goto_7
    if-ne v5, v6, :cond_d

    .line 148
    iget-object v5, v4, Lo/H1;->b:Ljava/lang/Object;

    .line 150
    check-cast v5, [I

    .line 152
    array-length v7, v5

    .line 153
    invoke-static {v5, v3, v7, v6}, Ljava/util/Arrays;->fill([IIII)V

    .line 156
    iget-object v5, v4, Lo/H1;->b:Ljava/lang/Object;

    .line 158
    check-cast v5, [I

    .line 160
    array-length v5, v5

    .line 161
    goto :goto_8

    .line 162
    :cond_d
    iget-object v7, v4, Lo/H1;->b:Ljava/lang/Object;

    .line 164
    check-cast v7, [I

    .line 166
    add-int/lit8 v5, v5, 0x1

    .line 168
    invoke-static {v7, v3, v5, v6}, Ljava/util/Arrays;->fill([IIII)V

    .line 171
    :goto_8
    const/4 v5, 0x1

    .line 172
    if-eq p3, v5, :cond_10

    .line 174
    const/4 v6, 0x2

    .line 175
    if-eq p3, v6, :cond_f

    .line 177
    if-eq p3, v1, :cond_e

    .line 179
    goto :goto_9

    .line 180
    :cond_e
    invoke-virtual {v4, p1, v5}, Lo/H1;->D(II)V

    .line 183
    invoke-virtual {v4, p2, v5}, Lo/H1;->C(II)V

    .line 186
    goto :goto_9

    .line 187
    :cond_f
    invoke-virtual {v4, p1, p2}, Lo/H1;->D(II)V

    .line 190
    goto :goto_9

    .line 191
    :cond_10
    invoke-virtual {v4, p1, p2}, Lo/H1;->C(II)V

    .line 194
    :goto_9
    if-gt v2, v0, :cond_11

    .line 196
    return-void

    .line 197
    :cond_11
    iget-boolean p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->x:Z

    .line 199
    if-eqz p1, :cond_12

    .line 201
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->K0()I

    .line 204
    move-result p1

    .line 205
    goto :goto_a

    .line 206
    :cond_12
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->L0()I

    .line 209
    move-result p1

    .line 210
    :goto_a
    if-gt v3, p1, :cond_13

    .line 212
    invoke-virtual {p0}, Lo/ud;->l0()V

    .line 215
    :cond_13
    return-void
.end method

.method public final P(I)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Lo/ud;->P(I)V

    .line 4
    const/4 v0, 0x0

    .line 5
    :goto_0
    iget v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->p:I

    .line 7
    if-ge v0, v1, :cond_2

    .line 9
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:[Lo/Ba;

    .line 11
    aget-object v1, v1, v0

    .line 13
    iget v2, v1, Lo/Ba;->b:I

    .line 15
    const/high16 v3, -0x80000000

    .line 17
    if-eq v2, v3, :cond_0

    .line 19
    add-int/2addr v2, p1

    .line 20
    iput v2, v1, Lo/Ba;->b:I

    .line 22
    :cond_0
    iget v2, v1, Lo/Ba;->c:I

    .line 24
    if-eq v2, v3, :cond_1

    .line 26
    add-int/2addr v2, p1

    .line 27
    iput v2, v1, Lo/Ba;->c:I

    .line 29
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 31
    goto :goto_0

    .line 32
    :cond_2
    return-void
.end method

.method public final P0()Landroid/view/View;
    .locals 13

    .line 1
    invoke-virtual {p0}, Lo/ud;->v()I

    .line 4
    move-result v0

    .line 5
    add-int/lit8 v1, v0, -0x1

    .line 7
    new-instance v2, Ljava/util/BitSet;

    .line 9
    iget v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->p:I

    .line 11
    invoke-direct {v2, v3}, Ljava/util/BitSet;-><init>(I)V

    .line 14
    iget v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->p:I

    .line 16
    const/4 v4, 0x0

    .line 17
    const/4 v5, 0x1

    .line 18
    invoke-virtual {v2, v4, v3, v5}, Ljava/util/BitSet;->set(IIZ)V

    .line 21
    iget v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t:I

    .line 23
    const/4 v6, -0x1

    .line 24
    if-ne v3, v5, :cond_0

    .line 26
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->Q0()Z

    .line 29
    move-result v3

    .line 30
    if-eqz v3, :cond_0

    .line 32
    move v3, v5

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    move v3, v6

    .line 35
    :goto_0
    iget-boolean v7, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->x:Z

    .line 37
    if-eqz v7, :cond_1

    .line 39
    move v0, v6

    .line 40
    goto :goto_1

    .line 41
    :cond_1
    move v1, v4

    .line 42
    :goto_1
    if-ge v1, v0, :cond_2

    .line 44
    move v6, v5

    .line 45
    :cond_2
    if-eq v1, v0, :cond_d

    .line 47
    invoke-virtual {p0, v1}, Lo/ud;->u(I)Landroid/view/View;

    .line 50
    move-result-object v7

    .line 51
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 54
    move-result-object v8

    .line 55
    check-cast v8, Lo/df;

    .line 57
    iget-object v9, v8, Lo/df;->e:Lo/Ba;

    .line 59
    iget v9, v9, Lo/Ba;->e:I

    .line 61
    invoke-virtual {v2, v9}, Ljava/util/BitSet;->get(I)Z

    .line 64
    move-result v9

    .line 65
    if-eqz v9, :cond_7

    .line 67
    iget-object v9, v8, Lo/df;->e:Lo/Ba;

    .line 69
    iget-boolean v10, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->x:Z

    .line 71
    const/high16 v11, -0x80000000

    .line 73
    if-eqz v10, :cond_4

    .line 75
    iget v10, v9, Lo/Ba;->c:I

    .line 77
    if-eq v10, v11, :cond_3

    .line 79
    goto :goto_2

    .line 80
    :cond_3
    invoke-virtual {v9}, Lo/Ba;->a()V

    .line 83
    iget v10, v9, Lo/Ba;->c:I

    .line 85
    :goto_2
    iget-object v11, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:Lo/z6;

    .line 87
    invoke-virtual {v11}, Lo/z6;->g()I

    .line 90
    move-result v11

    .line 91
    if-ge v10, v11, :cond_6

    .line 93
    iget-object v0, v9, Lo/Ba;->f:Ljava/lang/Object;

    .line 95
    check-cast v0, Ljava/util/ArrayList;

    .line 97
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 100
    move-result v1

    .line 101
    sub-int/2addr v1, v5

    .line 102
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 105
    move-result-object v0

    .line 106
    check-cast v0, Landroid/view/View;

    .line 108
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 111
    move-result-object v0

    .line 112
    check-cast v0, Lo/df;

    .line 114
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 117
    goto :goto_4

    .line 118
    :cond_4
    iget v10, v9, Lo/Ba;->b:I

    .line 120
    if-eq v10, v11, :cond_5

    .line 122
    goto :goto_3

    .line 123
    :cond_5
    iget-object v10, v9, Lo/Ba;->f:Ljava/lang/Object;

    .line 125
    check-cast v10, Ljava/util/ArrayList;

    .line 127
    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 130
    move-result-object v10

    .line 131
    check-cast v10, Landroid/view/View;

    .line 133
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 136
    move-result-object v11

    .line 137
    check-cast v11, Lo/df;

    .line 139
    iget-object v12, v9, Lo/Ba;->g:Ljava/lang/Object;

    .line 141
    check-cast v12, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    .line 143
    iget-object v12, v12, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:Lo/z6;

    .line 145
    invoke-virtual {v12, v10}, Lo/z6;->e(Landroid/view/View;)I

    .line 148
    move-result v10

    .line 149
    iput v10, v9, Lo/Ba;->b:I

    .line 151
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 154
    iget v10, v9, Lo/Ba;->b:I

    .line 156
    :goto_3
    iget-object v11, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:Lo/z6;

    .line 158
    invoke-virtual {v11}, Lo/z6;->k()I

    .line 161
    move-result v11

    .line 162
    if-le v10, v11, :cond_6

    .line 164
    iget-object v0, v9, Lo/Ba;->f:Ljava/lang/Object;

    .line 166
    check-cast v0, Ljava/util/ArrayList;

    .line 168
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 171
    move-result-object v0

    .line 172
    check-cast v0, Landroid/view/View;

    .line 174
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 177
    move-result-object v0

    .line 178
    check-cast v0, Lo/df;

    .line 180
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 183
    :goto_4
    return-object v7

    .line 184
    :cond_6
    iget-object v9, v8, Lo/df;->e:Lo/Ba;

    .line 186
    iget v9, v9, Lo/Ba;->e:I

    .line 188
    invoke-virtual {v2, v9}, Ljava/util/BitSet;->clear(I)V

    .line 191
    :cond_7
    add-int/2addr v1, v6

    .line 192
    if-eq v1, v0, :cond_2

    .line 194
    invoke-virtual {p0, v1}, Lo/ud;->u(I)Landroid/view/View;

    .line 197
    move-result-object v9

    .line 198
    iget-boolean v10, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->x:Z

    .line 200
    if-eqz v10, :cond_9

    .line 202
    iget-object v10, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:Lo/z6;

    .line 204
    invoke-virtual {v10, v7}, Lo/z6;->b(Landroid/view/View;)I

    .line 207
    move-result v10

    .line 208
    iget-object v11, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:Lo/z6;

    .line 210
    invoke-virtual {v11, v9}, Lo/z6;->b(Landroid/view/View;)I

    .line 213
    move-result v11

    .line 214
    if-ge v10, v11, :cond_8

    .line 216
    return-object v7

    .line 217
    :cond_8
    if-ne v10, v11, :cond_2

    .line 219
    goto :goto_5

    .line 220
    :cond_9
    iget-object v10, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:Lo/z6;

    .line 222
    invoke-virtual {v10, v7}, Lo/z6;->e(Landroid/view/View;)I

    .line 225
    move-result v10

    .line 226
    iget-object v11, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:Lo/z6;

    .line 228
    invoke-virtual {v11, v9}, Lo/z6;->e(Landroid/view/View;)I

    .line 231
    move-result v11

    .line 232
    if-le v10, v11, :cond_a

    .line 234
    return-object v7

    .line 235
    :cond_a
    if-ne v10, v11, :cond_2

    .line 237
    :goto_5
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 240
    move-result-object v9

    .line 241
    check-cast v9, Lo/df;

    .line 243
    iget-object v8, v8, Lo/df;->e:Lo/Ba;

    .line 245
    iget v8, v8, Lo/Ba;->e:I

    .line 247
    iget-object v9, v9, Lo/df;->e:Lo/Ba;

    .line 249
    iget v9, v9, Lo/Ba;->e:I

    .line 251
    sub-int/2addr v8, v9

    .line 252
    if-gez v8, :cond_b

    .line 254
    move v8, v5

    .line 255
    goto :goto_6

    .line 256
    :cond_b
    move v8, v4

    .line 257
    :goto_6
    if-gez v3, :cond_c

    .line 259
    move v9, v5

    .line 260
    goto :goto_7

    .line 261
    :cond_c
    move v9, v4

    .line 262
    :goto_7
    if-eq v8, v9, :cond_2

    .line 264
    return-object v7

    .line 265
    :cond_d
    const/4 v0, 0x0

    .line 266
    return-object v0
.end method

.method public final Q0()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lo/ud;->C()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-ne v0, v1, :cond_0

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v1, 0x0

    .line 10
    :goto_0
    return v1
.end method

.method public final R(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lo/ud;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->K:Lo/J2;

    .line 7
    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    iget v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->p:I

    .line 13
    if-ge v0, v1, :cond_1

    .line 15
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:[Lo/Ba;

    .line 17
    aget-object v1, v1, v0

    .line 19
    invoke-virtual {v1}, Lo/Ba;->b()V

    .line 22
    add-int/lit8 v0, v0, 0x1

    .line 24
    goto :goto_0

    .line 25
    :cond_1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    .line 28
    return-void
.end method

.method public final R0(Landroid/view/View;II)V
    .locals 5

    .line 1
    iget-object v0, p0, Lo/ud;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 3
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->G:Landroid/graphics/Rect;

    .line 5
    if-nez v0, :cond_0

    .line 7
    const/4 v0, 0x0

    .line 8
    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->J(Landroid/view/View;)Landroid/graphics/Rect;

    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 19
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Lo/df;

    .line 25
    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 27
    iget v3, v1, Landroid/graphics/Rect;->left:I

    .line 29
    add-int/2addr v2, v3

    .line 30
    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 32
    iget v4, v1, Landroid/graphics/Rect;->right:I

    .line 34
    add-int/2addr v3, v4

    .line 35
    invoke-static {p2, v2, v3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->d1(III)I

    .line 38
    move-result p2

    .line 39
    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 41
    iget v3, v1, Landroid/graphics/Rect;->top:I

    .line 43
    add-int/2addr v2, v3

    .line 44
    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 46
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    .line 48
    add-int/2addr v3, v1

    .line 49
    invoke-static {p3, v2, v3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->d1(III)I

    .line 52
    move-result p3

    .line 53
    invoke-virtual {p0, p1, p2, p3, v0}, Lo/ud;->u0(Landroid/view/View;IILo/vd;)Z

    .line 56
    move-result v0

    .line 57
    if-eqz v0, :cond_1

    .line 59
    invoke-virtual {p1, p2, p3}, Landroid/view/View;->measure(II)V

    .line 62
    :cond_1
    return-void
.end method

.method public final S(Landroid/view/View;ILo/Ad;Lo/Fd;)Landroid/view/View;
    .locals 8

    .line 1
    invoke-virtual {p0}, Lo/ud;->v()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 8
    return-object v1

    .line 9
    :cond_0
    iget-object v0, p0, Lo/ud;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 11
    if-nez v0, :cond_1

    .line 13
    :goto_0
    move-object p1, v1

    .line 14
    goto :goto_1

    .line 15
    :cond_1
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->A(Landroid/view/View;)Landroid/view/View;

    .line 18
    move-result-object p1

    .line 19
    if-nez p1, :cond_2

    .line 21
    goto :goto_0

    .line 22
    :cond_2
    iget-object v0, p0, Lo/ud;->a:Lo/s2;

    .line 24
    iget-object v0, v0, Lo/s2;->d:Ljava/lang/Object;

    .line 26
    check-cast v0, Ljava/util/ArrayList;

    .line 28
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_3

    .line 34
    goto :goto_0

    .line 35
    :cond_3
    :goto_1
    if-nez p1, :cond_4

    .line 37
    return-object v1

    .line 38
    :cond_4
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->Y0()V

    .line 41
    const/4 v0, 0x1

    .line 42
    const/4 v2, -0x1

    .line 43
    const/high16 v3, -0x80000000

    .line 45
    if-eq p2, v0, :cond_e

    .line 47
    const/4 v4, 0x2

    .line 48
    if-eq p2, v4, :cond_a

    .line 50
    const/16 v4, 0x11

    .line 52
    if-eq p2, v4, :cond_9

    .line 54
    const/16 v4, 0x21

    .line 56
    if-eq p2, v4, :cond_8

    .line 58
    const/16 v4, 0x42

    .line 60
    if-eq p2, v4, :cond_7

    .line 62
    const/16 v4, 0x82

    .line 64
    if-eq p2, v4, :cond_6

    .line 66
    :cond_5
    move p2, v3

    .line 67
    goto :goto_4

    .line 68
    :cond_6
    iget p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t:I

    .line 70
    if-ne p2, v0, :cond_5

    .line 72
    goto :goto_2

    .line 73
    :cond_7
    iget p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t:I

    .line 75
    if-nez p2, :cond_5

    .line 77
    goto :goto_2

    .line 78
    :cond_8
    iget p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t:I

    .line 80
    if-ne p2, v0, :cond_5

    .line 82
    goto :goto_3

    .line 83
    :cond_9
    iget p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t:I

    .line 85
    if-nez p2, :cond_5

    .line 87
    goto :goto_3

    .line 88
    :cond_a
    iget p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t:I

    .line 90
    if-ne p2, v0, :cond_c

    .line 92
    :cond_b
    :goto_2
    move p2, v0

    .line 93
    goto :goto_4

    .line 94
    :cond_c
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->Q0()Z

    .line 97
    move-result p2

    .line 98
    if-eqz p2, :cond_b

    .line 100
    :cond_d
    :goto_3
    move p2, v2

    .line 101
    goto :goto_4

    .line 102
    :cond_e
    iget p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t:I

    .line 104
    if-ne p2, v0, :cond_f

    .line 106
    goto :goto_3

    .line 107
    :cond_f
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->Q0()Z

    .line 110
    move-result p2

    .line 111
    if-eqz p2, :cond_d

    .line 113
    goto :goto_2

    .line 114
    :goto_4
    if-ne p2, v3, :cond_10

    .line 116
    return-object v1

    .line 117
    :cond_10
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 120
    move-result-object v3

    .line 121
    check-cast v3, Lo/df;

    .line 123
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 126
    iget-object v3, v3, Lo/df;->e:Lo/Ba;

    .line 128
    if-ne p2, v0, :cond_11

    .line 130
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->L0()I

    .line 133
    move-result v4

    .line 134
    goto :goto_5

    .line 135
    :cond_11
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->K0()I

    .line 138
    move-result v4

    .line 139
    :goto_5
    invoke-virtual {p0, v4, p4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b1(ILo/Fd;)V

    .line 142
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a1(I)V

    .line 145
    iget-object v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->v:Lo/G9;

    .line 147
    iget v6, v5, Lo/G9;->d:I

    .line 149
    add-int/2addr v6, v4

    .line 150
    iput v6, v5, Lo/G9;->c:I

    .line 152
    iget-object v6, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:Lo/z6;

    .line 154
    invoke-virtual {v6}, Lo/z6;->l()I

    .line 157
    move-result v6

    .line 158
    int-to-float v6, v6

    .line 159
    const v7, 0x3eaaaaab

    .line 162
    mul-float/2addr v6, v7

    .line 163
    float-to-int v6, v6

    .line 164
    iput v6, v5, Lo/G9;->b:I

    .line 166
    iput-boolean v0, v5, Lo/G9;->h:Z

    .line 168
    const/4 v6, 0x0

    .line 169
    iput-boolean v6, v5, Lo/G9;->a:Z

    .line 171
    invoke-virtual {p0, p3, v5, p4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->F0(Lo/Ad;Lo/G9;Lo/Fd;)I

    .line 174
    iget-boolean p3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->x:Z

    .line 176
    iput-boolean p3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->D:Z

    .line 178
    invoke-virtual {v3, v4, p2}, Lo/Ba;->h(II)Landroid/view/View;

    .line 181
    move-result-object p3

    .line 182
    if-eqz p3, :cond_12

    .line 184
    if-eq p3, p1, :cond_12

    .line 186
    return-object p3

    .line 187
    :cond_12
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->T0(I)Z

    .line 190
    move-result p3

    .line 191
    if-eqz p3, :cond_14

    .line 193
    iget p3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->p:I

    .line 195
    sub-int/2addr p3, v0

    .line 196
    :goto_6
    if-ltz p3, :cond_16

    .line 198
    iget-object p4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:[Lo/Ba;

    .line 200
    aget-object p4, p4, p3

    .line 202
    invoke-virtual {p4, v4, p2}, Lo/Ba;->h(II)Landroid/view/View;

    .line 205
    move-result-object p4

    .line 206
    if-eqz p4, :cond_13

    .line 208
    if-eq p4, p1, :cond_13

    .line 210
    return-object p4

    .line 211
    :cond_13
    add-int/lit8 p3, p3, -0x1

    .line 213
    goto :goto_6

    .line 214
    :cond_14
    move p3, v6

    .line 215
    :goto_7
    iget p4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->p:I

    .line 217
    if-ge p3, p4, :cond_16

    .line 219
    iget-object p4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:[Lo/Ba;

    .line 221
    aget-object p4, p4, p3

    .line 223
    invoke-virtual {p4, v4, p2}, Lo/Ba;->h(II)Landroid/view/View;

    .line 226
    move-result-object p4

    .line 227
    if-eqz p4, :cond_15

    .line 229
    if-eq p4, p1, :cond_15

    .line 231
    return-object p4

    .line 232
    :cond_15
    add-int/lit8 p3, p3, 0x1

    .line 234
    goto :goto_7

    .line 235
    :cond_16
    iget-boolean p3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->w:Z

    .line 237
    xor-int/2addr p3, v0

    .line 238
    if-ne p2, v2, :cond_17

    .line 240
    move p4, v0

    .line 241
    goto :goto_8

    .line 242
    :cond_17
    move p4, v6

    .line 243
    :goto_8
    if-ne p3, p4, :cond_18

    .line 245
    move p3, v0

    .line 246
    goto :goto_9

    .line 247
    :cond_18
    move p3, v6

    .line 248
    :goto_9
    if-eqz p3, :cond_19

    .line 250
    invoke-virtual {v3}, Lo/Ba;->c()I

    .line 253
    move-result p4

    .line 254
    goto :goto_a

    .line 255
    :cond_19
    invoke-virtual {v3}, Lo/Ba;->d()I

    .line 258
    move-result p4

    .line 259
    :goto_a
    invoke-virtual {p0, p4}, Lo/ud;->q(I)Landroid/view/View;

    .line 262
    move-result-object p4

    .line 263
    if-eqz p4, :cond_1a

    .line 265
    if-eq p4, p1, :cond_1a

    .line 267
    return-object p4

    .line 268
    :cond_1a
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->T0(I)Z

    .line 271
    move-result p2

    .line 272
    if-eqz p2, :cond_1e

    .line 274
    iget p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->p:I

    .line 276
    sub-int/2addr p2, v0

    .line 277
    :goto_b
    if-ltz p2, :cond_21

    .line 279
    iget p4, v3, Lo/Ba;->e:I

    .line 281
    if-ne p2, p4, :cond_1b

    .line 283
    goto :goto_d

    .line 284
    :cond_1b
    if-eqz p3, :cond_1c

    .line 286
    iget-object p4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:[Lo/Ba;

    .line 288
    aget-object p4, p4, p2

    .line 290
    invoke-virtual {p4}, Lo/Ba;->c()I

    .line 293
    move-result p4

    .line 294
    goto :goto_c

    .line 295
    :cond_1c
    iget-object p4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:[Lo/Ba;

    .line 297
    aget-object p4, p4, p2

    .line 299
    invoke-virtual {p4}, Lo/Ba;->d()I

    .line 302
    move-result p4

    .line 303
    :goto_c
    invoke-virtual {p0, p4}, Lo/ud;->q(I)Landroid/view/View;

    .line 306
    move-result-object p4

    .line 307
    if-eqz p4, :cond_1d

    .line 309
    if-eq p4, p1, :cond_1d

    .line 311
    return-object p4

    .line 312
    :cond_1d
    :goto_d
    add-int/lit8 p2, p2, -0x1

    .line 314
    goto :goto_b

    .line 315
    :cond_1e
    :goto_e
    iget p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->p:I

    .line 317
    if-ge v6, p2, :cond_21

    .line 319
    if-eqz p3, :cond_1f

    .line 321
    iget-object p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:[Lo/Ba;

    .line 323
    aget-object p2, p2, v6

    .line 325
    invoke-virtual {p2}, Lo/Ba;->c()I

    .line 328
    move-result p2

    .line 329
    goto :goto_f

    .line 330
    :cond_1f
    iget-object p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:[Lo/Ba;

    .line 332
    aget-object p2, p2, v6

    .line 334
    invoke-virtual {p2}, Lo/Ba;->d()I

    .line 337
    move-result p2

    .line 338
    :goto_f
    invoke-virtual {p0, p2}, Lo/ud;->q(I)Landroid/view/View;

    .line 341
    move-result-object p2

    .line 342
    if-eqz p2, :cond_20

    .line 344
    if-eq p2, p1, :cond_20

    .line 346
    return-object p2

    .line 347
    :cond_20
    add-int/lit8 v6, v6, 0x1

    .line 349
    goto :goto_e

    .line 350
    :cond_21
    return-object v1
.end method

.method public final S0(Lo/Ad;Lo/Fd;Z)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 3
    move-object/from16 v1, p1

    .line 5
    move-object/from16 v2, p2

    .line 7
    iget-object v3, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->F:Lo/ff;

    .line 9
    const/4 v4, -0x1

    .line 10
    iget-object v5, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->H:Lo/cf;

    .line 12
    if-nez v3, :cond_0

    .line 14
    iget v3, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->z:I

    .line 16
    if-eq v3, v4, :cond_1

    .line 18
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lo/Fd;->b()I

    .line 21
    move-result v3

    .line 22
    if-nez v3, :cond_1

    .line 24
    invoke-virtual/range {p0 .. p1}, Lo/ud;->g0(Lo/Ad;)V

    .line 27
    invoke-virtual {v5}, Lo/cf;->a()V

    .line 30
    return-void

    .line 31
    :cond_1
    iget-boolean v3, v5, Lo/cf;->e:Z

    .line 33
    const/4 v6, 0x1

    .line 34
    const/4 v7, 0x0

    .line 35
    if-eqz v3, :cond_3

    .line 37
    iget v3, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->z:I

    .line 39
    if-ne v3, v4, :cond_3

    .line 41
    iget-object v3, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->F:Lo/ff;

    .line 43
    if-eqz v3, :cond_2

    .line 45
    goto :goto_0

    .line 46
    :cond_2
    move v3, v7

    .line 47
    goto :goto_1

    .line 48
    :cond_3
    :goto_0
    move v3, v6

    .line 49
    :goto_1
    iget-object v8, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->B:Lo/H1;

    .line 51
    const/4 v9, 0x0

    .line 52
    iget-object v10, v5, Lo/cf;->g:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    .line 54
    const/high16 v11, -0x80000000

    .line 56
    if-eqz v3, :cond_22

    .line 58
    invoke-virtual {v5}, Lo/cf;->a()V

    .line 61
    iget-object v12, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->F:Lo/ff;

    .line 63
    if-eqz v12, :cond_a

    .line 65
    iget v13, v12, Lo/ff;->c:I

    .line 67
    if-lez v13, :cond_7

    .line 69
    iget v14, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->p:I

    .line 71
    if-ne v13, v14, :cond_6

    .line 73
    move v12, v7

    .line 74
    :goto_2
    iget v13, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->p:I

    .line 76
    if-ge v12, v13, :cond_7

    .line 78
    iget-object v13, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:[Lo/Ba;

    .line 80
    aget-object v13, v13, v12

    .line 82
    invoke-virtual {v13}, Lo/Ba;->b()V

    .line 85
    iget-object v13, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->F:Lo/ff;

    .line 87
    iget-object v14, v13, Lo/ff;->d:[I

    .line 89
    aget v14, v14, v12

    .line 91
    if-eq v14, v11, :cond_5

    .line 93
    iget-boolean v13, v13, Lo/ff;->i:Z

    .line 95
    if-eqz v13, :cond_4

    .line 97
    iget-object v13, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:Lo/z6;

    .line 99
    invoke-virtual {v13}, Lo/z6;->g()I

    .line 102
    move-result v13

    .line 103
    :goto_3
    add-int/2addr v14, v13

    .line 104
    goto :goto_4

    .line 105
    :cond_4
    iget-object v13, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:Lo/z6;

    .line 107
    invoke-virtual {v13}, Lo/z6;->k()I

    .line 110
    move-result v13

    .line 111
    goto :goto_3

    .line 112
    :cond_5
    :goto_4
    iget-object v13, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:[Lo/Ba;

    .line 114
    aget-object v13, v13, v12

    .line 116
    iput v14, v13, Lo/Ba;->b:I

    .line 118
    iput v14, v13, Lo/Ba;->c:I

    .line 120
    add-int/lit8 v12, v12, 0x1

    .line 122
    goto :goto_2

    .line 123
    :cond_6
    iput-object v9, v12, Lo/ff;->d:[I

    .line 125
    iput v7, v12, Lo/ff;->c:I

    .line 127
    iput v7, v12, Lo/ff;->e:I

    .line 129
    iput-object v9, v12, Lo/ff;->f:[I

    .line 131
    iput-object v9, v12, Lo/ff;->g:Ljava/util/ArrayList;

    .line 133
    iget v13, v12, Lo/ff;->b:I

    .line 135
    iput v13, v12, Lo/ff;->a:I

    .line 137
    :cond_7
    iget-object v12, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->F:Lo/ff;

    .line 139
    iget-boolean v13, v12, Lo/ff;->j:Z

    .line 141
    iput-boolean v13, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->E:Z

    .line 143
    iget-boolean v12, v12, Lo/ff;->h:Z

    .line 145
    invoke-virtual {v0, v9}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c(Ljava/lang/String;)V

    .line 148
    iget-object v13, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->F:Lo/ff;

    .line 150
    if-eqz v13, :cond_8

    .line 152
    iget-boolean v14, v13, Lo/ff;->h:Z

    .line 154
    if-eq v14, v12, :cond_8

    .line 156
    iput-boolean v12, v13, Lo/ff;->h:Z

    .line 158
    :cond_8
    iput-boolean v12, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->w:Z

    .line 160
    invoke-virtual/range {p0 .. p0}, Lo/ud;->l0()V

    .line 163
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->Y0()V

    .line 166
    iget-object v12, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->F:Lo/ff;

    .line 168
    iget v13, v12, Lo/ff;->a:I

    .line 170
    if-eq v13, v4, :cond_9

    .line 172
    iput v13, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->z:I

    .line 174
    iget-boolean v13, v12, Lo/ff;->i:Z

    .line 176
    iput-boolean v13, v5, Lo/cf;->c:Z

    .line 178
    goto :goto_5

    .line 179
    :cond_9
    iget-boolean v13, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->x:Z

    .line 181
    iput-boolean v13, v5, Lo/cf;->c:Z

    .line 183
    :goto_5
    iget v13, v12, Lo/ff;->e:I

    .line 185
    if-le v13, v6, :cond_b

    .line 187
    iget-object v13, v12, Lo/ff;->f:[I

    .line 189
    iput-object v13, v8, Lo/H1;->b:Ljava/lang/Object;

    .line 191
    iget-object v12, v12, Lo/ff;->g:Ljava/util/ArrayList;

    .line 193
    iput-object v12, v8, Lo/H1;->c:Ljava/lang/Object;

    .line 195
    goto :goto_6

    .line 196
    :cond_a
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->Y0()V

    .line 199
    iget-boolean v12, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->x:Z

    .line 201
    iput-boolean v12, v5, Lo/cf;->c:Z

    .line 203
    :cond_b
    :goto_6
    iget-boolean v12, v2, Lo/Fd;->g:Z

    .line 205
    if-nez v12, :cond_1d

    .line 207
    iget v12, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->z:I

    .line 209
    if-ne v12, v4, :cond_c

    .line 211
    goto/16 :goto_e

    .line 213
    :cond_c
    if-ltz v12, :cond_1c

    .line 215
    invoke-virtual/range {p2 .. p2}, Lo/Fd;->b()I

    .line 218
    move-result v13

    .line 219
    if-lt v12, v13, :cond_d

    .line 221
    goto/16 :goto_d

    .line 223
    :cond_d
    iget-object v12, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->F:Lo/ff;

    .line 225
    if-eqz v12, :cond_f

    .line 227
    iget v13, v12, Lo/ff;->a:I

    .line 229
    if-eq v13, v4, :cond_f

    .line 231
    iget v12, v12, Lo/ff;->c:I

    .line 233
    if-ge v12, v6, :cond_e

    .line 235
    goto :goto_7

    .line 236
    :cond_e
    iput v11, v5, Lo/cf;->b:I

    .line 238
    iget v12, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->z:I

    .line 240
    iput v12, v5, Lo/cf;->a:I

    .line 242
    goto/16 :goto_12

    .line 244
    :cond_f
    :goto_7
    iget v12, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->z:I

    .line 246
    invoke-virtual {v0, v12}, Lo/ud;->q(I)Landroid/view/View;

    .line 249
    move-result-object v12

    .line 250
    if-eqz v12, :cond_17

    .line 252
    iget-boolean v13, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->x:Z

    .line 254
    if-eqz v13, :cond_10

    .line 256
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->L0()I

    .line 259
    move-result v13

    .line 260
    goto :goto_8

    .line 261
    :cond_10
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->K0()I

    .line 264
    move-result v13

    .line 265
    :goto_8
    iput v13, v5, Lo/cf;->a:I

    .line 267
    iget v13, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->A:I

    .line 269
    if-eq v13, v11, :cond_12

    .line 271
    iget-boolean v13, v5, Lo/cf;->c:Z

    .line 273
    if-eqz v13, :cond_11

    .line 275
    iget-object v13, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:Lo/z6;

    .line 277
    invoke-virtual {v13}, Lo/z6;->g()I

    .line 280
    move-result v13

    .line 281
    iget v14, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->A:I

    .line 283
    sub-int/2addr v13, v14

    .line 284
    iget-object v14, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:Lo/z6;

    .line 286
    invoke-virtual {v14, v12}, Lo/z6;->b(Landroid/view/View;)I

    .line 289
    move-result v12

    .line 290
    sub-int/2addr v13, v12

    .line 291
    iput v13, v5, Lo/cf;->b:I

    .line 293
    goto/16 :goto_12

    .line 295
    :cond_11
    iget-object v13, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:Lo/z6;

    .line 297
    invoke-virtual {v13}, Lo/z6;->k()I

    .line 300
    move-result v13

    .line 301
    iget v14, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->A:I

    .line 303
    add-int/2addr v13, v14

    .line 304
    iget-object v14, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:Lo/z6;

    .line 306
    invoke-virtual {v14, v12}, Lo/z6;->e(Landroid/view/View;)I

    .line 309
    move-result v12

    .line 310
    sub-int/2addr v13, v12

    .line 311
    iput v13, v5, Lo/cf;->b:I

    .line 313
    goto/16 :goto_12

    .line 315
    :cond_12
    iget-object v13, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:Lo/z6;

    .line 317
    invoke-virtual {v13, v12}, Lo/z6;->c(Landroid/view/View;)I

    .line 320
    move-result v13

    .line 321
    iget-object v14, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:Lo/z6;

    .line 323
    invoke-virtual {v14}, Lo/z6;->l()I

    .line 326
    move-result v14

    .line 327
    if-le v13, v14, :cond_14

    .line 329
    iget-boolean v12, v5, Lo/cf;->c:Z

    .line 331
    if-eqz v12, :cond_13

    .line 333
    iget-object v12, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:Lo/z6;

    .line 335
    invoke-virtual {v12}, Lo/z6;->g()I

    .line 338
    move-result v12

    .line 339
    goto :goto_9

    .line 340
    :cond_13
    iget-object v12, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:Lo/z6;

    .line 342
    invoke-virtual {v12}, Lo/z6;->k()I

    .line 345
    move-result v12

    .line 346
    :goto_9
    iput v12, v5, Lo/cf;->b:I

    .line 348
    goto/16 :goto_12

    .line 350
    :cond_14
    iget-object v13, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:Lo/z6;

    .line 352
    invoke-virtual {v13, v12}, Lo/z6;->e(Landroid/view/View;)I

    .line 355
    move-result v13

    .line 356
    iget-object v14, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:Lo/z6;

    .line 358
    invoke-virtual {v14}, Lo/z6;->k()I

    .line 361
    move-result v14

    .line 362
    sub-int/2addr v13, v14

    .line 363
    if-gez v13, :cond_15

    .line 365
    neg-int v12, v13

    .line 366
    iput v12, v5, Lo/cf;->b:I

    .line 368
    goto/16 :goto_12

    .line 370
    :cond_15
    iget-object v13, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:Lo/z6;

    .line 372
    invoke-virtual {v13}, Lo/z6;->g()I

    .line 375
    move-result v13

    .line 376
    iget-object v14, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:Lo/z6;

    .line 378
    invoke-virtual {v14, v12}, Lo/z6;->b(Landroid/view/View;)I

    .line 381
    move-result v12

    .line 382
    sub-int/2addr v13, v12

    .line 383
    if-gez v13, :cond_16

    .line 385
    iput v13, v5, Lo/cf;->b:I

    .line 387
    goto/16 :goto_12

    .line 389
    :cond_16
    iput v11, v5, Lo/cf;->b:I

    .line 391
    goto/16 :goto_12

    .line 393
    :cond_17
    iget v12, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->z:I

    .line 395
    iput v12, v5, Lo/cf;->a:I

    .line 397
    iget v13, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->A:I

    .line 399
    if-ne v13, v11, :cond_1a

    .line 401
    invoke-virtual {v0, v12}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->A0(I)I

    .line 404
    move-result v12

    .line 405
    if-ne v12, v6, :cond_18

    .line 407
    move v12, v6

    .line 408
    goto :goto_a

    .line 409
    :cond_18
    move v12, v7

    .line 410
    :goto_a
    iput-boolean v12, v5, Lo/cf;->c:Z

    .line 412
    if-eqz v12, :cond_19

    .line 414
    iget-object v12, v10, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:Lo/z6;

    .line 416
    invoke-virtual {v12}, Lo/z6;->g()I

    .line 419
    move-result v12

    .line 420
    goto :goto_b

    .line 421
    :cond_19
    iget-object v12, v10, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:Lo/z6;

    .line 423
    invoke-virtual {v12}, Lo/z6;->k()I

    .line 426
    move-result v12

    .line 427
    :goto_b
    iput v12, v5, Lo/cf;->b:I

    .line 429
    goto :goto_c

    .line 430
    :cond_1a
    iget-boolean v12, v5, Lo/cf;->c:Z

    .line 432
    if-eqz v12, :cond_1b

    .line 434
    iget-object v12, v10, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:Lo/z6;

    .line 436
    invoke-virtual {v12}, Lo/z6;->g()I

    .line 439
    move-result v12

    .line 440
    sub-int/2addr v12, v13

    .line 441
    iput v12, v5, Lo/cf;->b:I

    .line 443
    goto :goto_c

    .line 444
    :cond_1b
    iget-object v12, v10, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:Lo/z6;

    .line 446
    invoke-virtual {v12}, Lo/z6;->k()I

    .line 449
    move-result v12

    .line 450
    add-int/2addr v12, v13

    .line 451
    iput v12, v5, Lo/cf;->b:I

    .line 453
    :goto_c
    iput-boolean v6, v5, Lo/cf;->d:Z

    .line 455
    goto :goto_12

    .line 456
    :cond_1c
    :goto_d
    iput v4, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->z:I

    .line 458
    iput v11, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->A:I

    .line 460
    :cond_1d
    :goto_e
    iget-boolean v12, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->D:Z

    .line 462
    if-eqz v12, :cond_20

    .line 464
    invoke-virtual/range {p2 .. p2}, Lo/Fd;->b()I

    .line 467
    move-result v12

    .line 468
    invoke-virtual/range {p0 .. p0}, Lo/ud;->v()I

    .line 471
    move-result v13

    .line 472
    sub-int/2addr v13, v6

    .line 473
    :goto_f
    if-ltz v13, :cond_1f

    .line 475
    invoke-virtual {v0, v13}, Lo/ud;->u(I)Landroid/view/View;

    .line 478
    move-result-object v14

    .line 479
    invoke-static {v14}, Lo/ud;->H(Landroid/view/View;)I

    .line 482
    move-result v14

    .line 483
    if-ltz v14, :cond_1e

    .line 485
    if-ge v14, v12, :cond_1e

    .line 487
    goto :goto_11

    .line 488
    :cond_1e
    add-int/lit8 v13, v13, -0x1

    .line 490
    goto :goto_f

    .line 491
    :cond_1f
    move v14, v7

    .line 492
    goto :goto_11

    .line 493
    :cond_20
    invoke-virtual/range {p2 .. p2}, Lo/Fd;->b()I

    .line 496
    move-result v12

    .line 497
    invoke-virtual/range {p0 .. p0}, Lo/ud;->v()I

    .line 500
    move-result v13

    .line 501
    move v14, v7

    .line 502
    :goto_10
    if-ge v14, v13, :cond_1f

    .line 504
    invoke-virtual {v0, v14}, Lo/ud;->u(I)Landroid/view/View;

    .line 507
    move-result-object v15

    .line 508
    invoke-static {v15}, Lo/ud;->H(Landroid/view/View;)I

    .line 511
    move-result v15

    .line 512
    if-ltz v15, :cond_21

    .line 514
    if-ge v15, v12, :cond_21

    .line 516
    move v14, v15

    .line 517
    goto :goto_11

    .line 518
    :cond_21
    add-int/lit8 v14, v14, 0x1

    .line 520
    goto :goto_10

    .line 521
    :goto_11
    iput v14, v5, Lo/cf;->a:I

    .line 523
    iput v11, v5, Lo/cf;->b:I

    .line 525
    :goto_12
    iput-boolean v6, v5, Lo/cf;->e:Z

    .line 527
    :cond_22
    iget-object v12, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->F:Lo/ff;

    .line 529
    if-nez v12, :cond_25

    .line 531
    iget v12, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->z:I

    .line 533
    if-ne v12, v4, :cond_25

    .line 535
    iget-boolean v12, v5, Lo/cf;->c:Z

    .line 537
    iget-boolean v13, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->D:Z

    .line 539
    if-ne v12, v13, :cond_23

    .line 541
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->Q0()Z

    .line 544
    move-result v12

    .line 545
    iget-boolean v13, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->E:Z

    .line 547
    if-eq v12, v13, :cond_25

    .line 549
    :cond_23
    iget-object v12, v8, Lo/H1;->b:Ljava/lang/Object;

    .line 551
    check-cast v12, [I

    .line 553
    if-eqz v12, :cond_24

    .line 555
    invoke-static {v12, v4}, Ljava/util/Arrays;->fill([II)V

    .line 558
    :cond_24
    iput-object v9, v8, Lo/H1;->c:Ljava/lang/Object;

    .line 560
    iput-boolean v6, v5, Lo/cf;->d:Z

    .line 562
    :cond_25
    invoke-virtual/range {p0 .. p0}, Lo/ud;->v()I

    .line 565
    move-result v8

    .line 566
    if-lez v8, :cond_34

    .line 568
    iget-object v8, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->F:Lo/ff;

    .line 570
    if-eqz v8, :cond_26

    .line 572
    iget v8, v8, Lo/ff;->c:I

    .line 574
    if-ge v8, v6, :cond_34

    .line 576
    :cond_26
    iget-boolean v8, v5, Lo/cf;->d:Z

    .line 578
    if-eqz v8, :cond_28

    .line 580
    move v3, v7

    .line 581
    :goto_13
    iget v8, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->p:I

    .line 583
    if-ge v3, v8, :cond_34

    .line 585
    iget-object v8, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:[Lo/Ba;

    .line 587
    aget-object v8, v8, v3

    .line 589
    invoke-virtual {v8}, Lo/Ba;->b()V

    .line 592
    iget v8, v5, Lo/cf;->b:I

    .line 594
    if-eq v8, v11, :cond_27

    .line 596
    iget-object v9, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:[Lo/Ba;

    .line 598
    aget-object v9, v9, v3

    .line 600
    iput v8, v9, Lo/Ba;->b:I

    .line 602
    iput v8, v9, Lo/Ba;->c:I

    .line 604
    :cond_27
    add-int/lit8 v3, v3, 0x1

    .line 606
    goto :goto_13

    .line 607
    :cond_28
    if-nez v3, :cond_2a

    .line 609
    iget-object v3, v5, Lo/cf;->f:[I

    .line 611
    if-nez v3, :cond_29

    .line 613
    goto :goto_15

    .line 614
    :cond_29
    move v3, v7

    .line 615
    :goto_14
    iget v8, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->p:I

    .line 617
    if-ge v3, v8, :cond_34

    .line 619
    iget-object v8, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:[Lo/Ba;

    .line 621
    aget-object v8, v8, v3

    .line 623
    invoke-virtual {v8}, Lo/Ba;->b()V

    .line 626
    iget-object v9, v5, Lo/cf;->f:[I

    .line 628
    aget v9, v9, v3

    .line 630
    iput v9, v8, Lo/Ba;->b:I

    .line 632
    iput v9, v8, Lo/Ba;->c:I

    .line 634
    add-int/lit8 v3, v3, 0x1

    .line 636
    goto :goto_14

    .line 637
    :cond_2a
    :goto_15
    move v3, v7

    .line 638
    :goto_16
    iget v8, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->p:I

    .line 640
    if-ge v3, v8, :cond_31

    .line 642
    iget-object v8, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:[Lo/Ba;

    .line 644
    aget-object v8, v8, v3

    .line 646
    iget-boolean v9, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->x:Z

    .line 648
    iget v12, v5, Lo/cf;->b:I

    .line 650
    if-eqz v9, :cond_2b

    .line 652
    invoke-virtual {v8, v11}, Lo/Ba;->g(I)I

    .line 655
    move-result v13

    .line 656
    goto :goto_17

    .line 657
    :cond_2b
    invoke-virtual {v8, v11}, Lo/Ba;->i(I)I

    .line 660
    move-result v13

    .line 661
    :goto_17
    invoke-virtual {v8}, Lo/Ba;->b()V

    .line 664
    if-ne v13, v11, :cond_2c

    .line 666
    goto :goto_18

    .line 667
    :cond_2c
    iget-object v14, v8, Lo/Ba;->g:Ljava/lang/Object;

    .line 669
    check-cast v14, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    .line 671
    if-eqz v9, :cond_2d

    .line 673
    iget-object v15, v14, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:Lo/z6;

    .line 675
    invoke-virtual {v15}, Lo/z6;->g()I

    .line 678
    move-result v15

    .line 679
    if-lt v13, v15, :cond_30

    .line 681
    :cond_2d
    if-nez v9, :cond_2e

    .line 683
    iget-object v9, v14, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:Lo/z6;

    .line 685
    invoke-virtual {v9}, Lo/z6;->k()I

    .line 688
    move-result v9

    .line 689
    if-le v13, v9, :cond_2e

    .line 691
    goto :goto_18

    .line 692
    :cond_2e
    if-eq v12, v11, :cond_2f

    .line 694
    add-int/2addr v13, v12

    .line 695
    :cond_2f
    iput v13, v8, Lo/Ba;->c:I

    .line 697
    iput v13, v8, Lo/Ba;->b:I

    .line 699
    :cond_30
    :goto_18
    add-int/lit8 v3, v3, 0x1

    .line 701
    goto :goto_16

    .line 702
    :cond_31
    iget-object v3, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:[Lo/Ba;

    .line 704
    array-length v8, v3

    .line 705
    iget-object v9, v5, Lo/cf;->f:[I

    .line 707
    if-eqz v9, :cond_32

    .line 709
    array-length v9, v9

    .line 710
    if-ge v9, v8, :cond_33

    .line 712
    :cond_32
    iget-object v9, v10, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:[Lo/Ba;

    .line 714
    array-length v9, v9

    .line 715
    new-array v9, v9, [I

    .line 717
    iput-object v9, v5, Lo/cf;->f:[I

    .line 719
    :cond_33
    move v9, v7

    .line 720
    :goto_19
    if-ge v9, v8, :cond_34

    .line 722
    iget-object v10, v5, Lo/cf;->f:[I

    .line 724
    aget-object v12, v3, v9

    .line 726
    invoke-virtual {v12, v11}, Lo/Ba;->i(I)I

    .line 729
    move-result v12

    .line 730
    aput v12, v10, v9

    .line 732
    add-int/lit8 v9, v9, 0x1

    .line 734
    goto :goto_19

    .line 735
    :cond_34
    invoke-virtual/range {p0 .. p1}, Lo/ud;->p(Lo/Ad;)V

    .line 738
    iget-object v3, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->v:Lo/G9;

    .line 740
    iput-boolean v7, v3, Lo/G9;->a:Z

    .line 742
    iget-object v8, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->s:Lo/z6;

    .line 744
    invoke-virtual {v8}, Lo/z6;->l()I

    .line 747
    move-result v8

    .line 748
    iget v9, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->p:I

    .line 750
    div-int v9, v8, v9

    .line 752
    iput v9, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->u:I

    .line 754
    iget-object v9, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->s:Lo/z6;

    .line 756
    invoke-virtual {v9}, Lo/z6;->i()I

    .line 759
    move-result v9

    .line 760
    invoke-static {v8, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 763
    iget v8, v5, Lo/cf;->a:I

    .line 765
    invoke-virtual {v0, v8, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b1(ILo/Fd;)V

    .line 768
    iget-boolean v8, v5, Lo/cf;->c:Z

    .line 770
    if-eqz v8, :cond_35

    .line 772
    invoke-virtual {v0, v4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a1(I)V

    .line 775
    invoke-virtual {v0, v1, v3, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->F0(Lo/Ad;Lo/G9;Lo/Fd;)I

    .line 778
    invoke-virtual {v0, v6}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a1(I)V

    .line 781
    iget v4, v5, Lo/cf;->a:I

    .line 783
    iget v8, v3, Lo/G9;->d:I

    .line 785
    add-int/2addr v4, v8

    .line 786
    iput v4, v3, Lo/G9;->c:I

    .line 788
    invoke-virtual {v0, v1, v3, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->F0(Lo/Ad;Lo/G9;Lo/Fd;)I

    .line 791
    goto :goto_1a

    .line 792
    :cond_35
    invoke-virtual {v0, v6}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a1(I)V

    .line 795
    invoke-virtual {v0, v1, v3, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->F0(Lo/Ad;Lo/G9;Lo/Fd;)I

    .line 798
    invoke-virtual {v0, v4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a1(I)V

    .line 801
    iget v4, v5, Lo/cf;->a:I

    .line 803
    iget v8, v3, Lo/G9;->d:I

    .line 805
    add-int/2addr v4, v8

    .line 806
    iput v4, v3, Lo/G9;->c:I

    .line 808
    invoke-virtual {v0, v1, v3, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->F0(Lo/Ad;Lo/G9;Lo/Fd;)I

    .line 811
    :goto_1a
    iget-object v3, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->s:Lo/z6;

    .line 813
    invoke-virtual {v3}, Lo/z6;->i()I

    .line 816
    move-result v3

    .line 817
    const/high16 v4, 0x40000000    # 2.0f

    .line 819
    if-ne v3, v4, :cond_36

    .line 821
    goto/16 :goto_1f

    .line 823
    :cond_36
    invoke-virtual/range {p0 .. p0}, Lo/ud;->v()I

    .line 826
    move-result v3

    .line 827
    const/4 v4, 0x0

    .line 828
    move v8, v7

    .line 829
    :goto_1b
    if-ge v8, v3, :cond_38

    .line 831
    invoke-virtual {v0, v8}, Lo/ud;->u(I)Landroid/view/View;

    .line 834
    move-result-object v9

    .line 835
    iget-object v10, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->s:Lo/z6;

    .line 837
    invoke-virtual {v10, v9}, Lo/z6;->c(Landroid/view/View;)I

    .line 840
    move-result v10

    .line 841
    int-to-float v10, v10

    .line 842
    cmpg-float v12, v10, v4

    .line 844
    if-gez v12, :cond_37

    .line 846
    goto :goto_1c

    .line 847
    :cond_37
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 850
    move-result-object v9

    .line 851
    check-cast v9, Lo/df;

    .line 853
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 856
    invoke-static {v4, v10}, Ljava/lang/Math;->max(FF)F

    .line 859
    move-result v4

    .line 860
    :goto_1c
    add-int/lit8 v8, v8, 0x1

    .line 862
    goto :goto_1b

    .line 863
    :cond_38
    iget v8, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->u:I

    .line 865
    iget v9, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->p:I

    .line 867
    int-to-float v9, v9

    .line 868
    mul-float/2addr v4, v9

    .line 869
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    .line 872
    move-result v4

    .line 873
    iget-object v9, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->s:Lo/z6;

    .line 875
    invoke-virtual {v9}, Lo/z6;->i()I

    .line 878
    move-result v9

    .line 879
    if-ne v9, v11, :cond_39

    .line 881
    iget-object v9, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->s:Lo/z6;

    .line 883
    invoke-virtual {v9}, Lo/z6;->l()I

    .line 886
    move-result v9

    .line 887
    invoke-static {v4, v9}, Ljava/lang/Math;->min(II)I

    .line 890
    move-result v4

    .line 891
    :cond_39
    iget v9, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->p:I

    .line 893
    div-int v9, v4, v9

    .line 895
    iput v9, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->u:I

    .line 897
    iget-object v9, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->s:Lo/z6;

    .line 899
    invoke-virtual {v9}, Lo/z6;->i()I

    .line 902
    move-result v9

    .line 903
    invoke-static {v4, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 906
    iget v4, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->u:I

    .line 908
    if-ne v4, v8, :cond_3a

    .line 910
    goto :goto_1f

    .line 911
    :cond_3a
    move v4, v7

    .line 912
    :goto_1d
    if-ge v4, v3, :cond_3d

    .line 914
    invoke-virtual {v0, v4}, Lo/ud;->u(I)Landroid/view/View;

    .line 917
    move-result-object v9

    .line 918
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 921
    move-result-object v10

    .line 922
    check-cast v10, Lo/df;

    .line 924
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 927
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->Q0()Z

    .line 930
    move-result v11

    .line 931
    if-eqz v11, :cond_3b

    .line 933
    iget v11, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t:I

    .line 935
    if-ne v11, v6, :cond_3b

    .line 937
    iget v11, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->p:I

    .line 939
    sub-int/2addr v11, v6

    .line 940
    iget-object v10, v10, Lo/df;->e:Lo/Ba;

    .line 942
    iget v10, v10, Lo/Ba;->e:I

    .line 944
    sub-int/2addr v11, v10

    .line 945
    neg-int v10, v11

    .line 946
    iget v11, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->u:I

    .line 948
    mul-int/2addr v11, v10

    .line 949
    mul-int/2addr v10, v8

    .line 950
    sub-int/2addr v11, v10

    .line 951
    invoke-virtual {v9, v11}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 954
    goto :goto_1e

    .line 955
    :cond_3b
    iget-object v10, v10, Lo/df;->e:Lo/Ba;

    .line 957
    iget v10, v10, Lo/Ba;->e:I

    .line 959
    iget v11, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->u:I

    .line 961
    mul-int/2addr v11, v10

    .line 962
    mul-int/2addr v10, v8

    .line 963
    iget v12, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t:I

    .line 965
    if-ne v12, v6, :cond_3c

    .line 967
    sub-int/2addr v11, v10

    .line 968
    invoke-virtual {v9, v11}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 971
    goto :goto_1e

    .line 972
    :cond_3c
    sub-int/2addr v11, v10

    .line 973
    invoke-virtual {v9, v11}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 976
    :goto_1e
    add-int/lit8 v4, v4, 0x1

    .line 978
    goto :goto_1d

    .line 979
    :cond_3d
    :goto_1f
    invoke-virtual/range {p0 .. p0}, Lo/ud;->v()I

    .line 982
    move-result v3

    .line 983
    if-lez v3, :cond_3f

    .line 985
    iget-boolean v3, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->x:Z

    .line 987
    if-eqz v3, :cond_3e

    .line 989
    invoke-virtual {v0, v1, v2, v6}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->I0(Lo/Ad;Lo/Fd;Z)V

    .line 992
    invoke-virtual {v0, v1, v2, v7}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->J0(Lo/Ad;Lo/Fd;Z)V

    .line 995
    goto :goto_20

    .line 996
    :cond_3e
    invoke-virtual {v0, v1, v2, v6}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->J0(Lo/Ad;Lo/Fd;Z)V

    .line 999
    invoke-virtual {v0, v1, v2, v7}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->I0(Lo/Ad;Lo/Fd;Z)V

    .line 1002
    :cond_3f
    :goto_20
    if-eqz p3, :cond_41

    .line 1004
    iget-boolean v3, v2, Lo/Fd;->g:Z

    .line 1006
    if-nez v3, :cond_41

    .line 1008
    iget v3, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->C:I

    .line 1010
    if-eqz v3, :cond_41

    .line 1012
    invoke-virtual/range {p0 .. p0}, Lo/ud;->v()I

    .line 1015
    move-result v3

    .line 1016
    if-lez v3, :cond_41

    .line 1018
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->P0()Landroid/view/View;

    .line 1021
    move-result-object v3

    .line 1022
    if-eqz v3, :cond_41

    .line 1024
    iget-object v3, v0, Lo/ud;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 1026
    if-eqz v3, :cond_40

    .line 1028
    iget-object v4, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->K:Lo/J2;

    .line 1030
    invoke-virtual {v3, v4}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1033
    :cond_40
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->B0()Z

    .line 1036
    move-result v3

    .line 1037
    if-eqz v3, :cond_41

    .line 1039
    goto :goto_21

    .line 1040
    :cond_41
    move v6, v7

    .line 1041
    :goto_21
    iget-boolean v3, v2, Lo/Fd;->g:Z

    .line 1043
    if-eqz v3, :cond_42

    .line 1045
    invoke-virtual {v5}, Lo/cf;->a()V

    .line 1048
    :cond_42
    iget-boolean v3, v5, Lo/cf;->c:Z

    .line 1050
    iput-boolean v3, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->D:Z

    .line 1052
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->Q0()Z

    .line 1055
    move-result v3

    .line 1056
    iput-boolean v3, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->E:Z

    .line 1058
    if-eqz v6, :cond_43

    .line 1060
    invoke-virtual {v5}, Lo/cf;->a()V

    .line 1063
    invoke-virtual {v0, v1, v2, v7}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->S0(Lo/Ad;Lo/Fd;Z)V

    .line 1066
    :cond_43
    return-void
.end method

.method public final T(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lo/ud;->T(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 4
    invoke-virtual {p0}, Lo/ud;->v()I

    .line 7
    move-result v0

    .line 8
    if-lez v0, :cond_2

    .line 10
    const/4 v0, 0x0

    .line 11
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->H0(Z)Landroid/view/View;

    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->G0(Z)Landroid/view/View;

    .line 18
    move-result-object v0

    .line 19
    if-eqz v1, :cond_2

    .line 21
    if-nez v0, :cond_0

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    invoke-static {v1}, Lo/ud;->H(Landroid/view/View;)I

    .line 27
    move-result v1

    .line 28
    invoke-static {v0}, Lo/ud;->H(Landroid/view/View;)I

    .line 31
    move-result v0

    .line 32
    if-ge v1, v0, :cond_1

    .line 34
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityRecord;->setFromIndex(I)V

    .line 37
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setToIndex(I)V

    .line 40
    goto :goto_0

    .line 41
    :cond_1
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setFromIndex(I)V

    .line 44
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityRecord;->setToIndex(I)V

    .line 47
    nop

    .line 48
    :cond_2
    :goto_0
    return-void
.end method

.method public final T0(I)Z
    .locals 4

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t:I

    .line 3
    const/4 v1, -0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x1

    .line 6
    if-nez v0, :cond_2

    .line 8
    if-ne p1, v1, :cond_0

    .line 10
    move p1, v3

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    move p1, v2

    .line 13
    :goto_0
    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->x:Z

    .line 15
    if-eq p1, v0, :cond_1

    .line 17
    move v2, v3

    .line 18
    :cond_1
    return v2

    .line 19
    :cond_2
    if-ne p1, v1, :cond_3

    .line 21
    move p1, v3

    .line 22
    goto :goto_1

    .line 23
    :cond_3
    move p1, v2

    .line 24
    :goto_1
    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->x:Z

    .line 26
    if-ne p1, v0, :cond_4

    .line 28
    move p1, v3

    .line 29
    goto :goto_2

    .line 30
    :cond_4
    move p1, v2

    .line 31
    :goto_2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->Q0()Z

    .line 34
    move-result v0

    .line 35
    if-ne p1, v0, :cond_5

    .line 37
    move v2, v3

    .line 38
    :cond_5
    return v2
.end method

.method public final U0(ILo/Fd;)V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-lez p1, :cond_0

    .line 4
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->L0()I

    .line 7
    move-result v1

    .line 8
    move v2, v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->K0()I

    .line 13
    move-result v1

    .line 14
    const/4 v2, -0x1

    .line 15
    :goto_0
    iget-object v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->v:Lo/G9;

    .line 17
    iput-boolean v0, v3, Lo/G9;->a:Z

    .line 19
    invoke-virtual {p0, v1, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b1(ILo/Fd;)V

    .line 22
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a1(I)V

    .line 25
    iget p2, v3, Lo/G9;->d:I

    .line 27
    add-int/2addr v1, p2

    .line 28
    iput v1, v3, Lo/G9;->c:I

    .line 30
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    .line 33
    move-result p1

    .line 34
    iput p1, v3, Lo/G9;->b:I

    .line 36
    return-void
.end method

.method public final V(Lo/Ad;Lo/Fd;Landroid/view/View;Lo/D;)V
    .locals 2

    .line 1
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 4
    move-result-object p1

    .line 5
    instance-of p2, p1, Lo/df;

    .line 7
    if-nez p2, :cond_0

    .line 9
    invoke-virtual {p0, p3, p4}, Lo/ud;->U(Landroid/view/View;Lo/D;)V

    .line 12
    return-void

    .line 13
    :cond_0
    check-cast p1, Lo/df;

    .line 15
    iget p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t:I

    .line 17
    const/4 p3, 0x1

    .line 18
    const/4 v0, 0x0

    .line 19
    const/4 v1, -0x1

    .line 20
    if-nez p2, :cond_2

    .line 22
    iget-object p1, p1, Lo/df;->e:Lo/Ba;

    .line 24
    if-nez p1, :cond_1

    .line 26
    move p1, v1

    .line 27
    goto :goto_0

    .line 28
    :cond_1
    iget p1, p1, Lo/Ba;->e:I

    .line 30
    :goto_0
    invoke-static {v0, p1, p3, v1, v1}, Lo/C;->B(ZIIII)Lo/C;

    .line 33
    move-result-object p1

    .line 34
    invoke-virtual {p4, p1}, Lo/D;->j(Lo/C;)V

    .line 37
    goto :goto_2

    .line 38
    :cond_2
    iget-object p1, p1, Lo/df;->e:Lo/Ba;

    .line 40
    if-nez p1, :cond_3

    .line 42
    move p1, v1

    .line 43
    goto :goto_1

    .line 44
    :cond_3
    iget p1, p1, Lo/Ba;->e:I

    .line 46
    :goto_1
    invoke-static {v0, v1, v1, p1, p3}, Lo/C;->B(ZIIII)Lo/C;

    .line 49
    move-result-object p1

    .line 50
    invoke-virtual {p4, p1}, Lo/D;->j(Lo/C;)V

    .line 53
    :goto_2
    return-void
.end method

.method public final V0(Lo/Ad;Lo/G9;)V
    .locals 4

    .line 1
    iget-boolean v0, p2, Lo/G9;->a:Z

    .line 3
    if-eqz v0, :cond_a

    .line 5
    iget-boolean v0, p2, Lo/G9;->i:Z

    .line 7
    if-eqz v0, :cond_0

    .line 9
    goto/16 :goto_4

    .line 11
    :cond_0
    iget v0, p2, Lo/G9;->b:I

    .line 13
    const/4 v1, -0x1

    .line 14
    if-nez v0, :cond_2

    .line 16
    iget v0, p2, Lo/G9;->e:I

    .line 18
    if-ne v0, v1, :cond_1

    .line 20
    iget p2, p2, Lo/G9;->g:I

    .line 22
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->W0(Lo/Ad;I)V

    .line 25
    goto/16 :goto_4

    .line 27
    :cond_1
    iget p2, p2, Lo/G9;->f:I

    .line 29
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->X0(Lo/Ad;I)V

    .line 32
    goto :goto_4

    .line 33
    :cond_2
    iget v0, p2, Lo/G9;->e:I

    .line 35
    const/4 v2, 0x1

    .line 36
    const/4 v3, 0x0

    .line 37
    if-ne v0, v1, :cond_6

    .line 39
    iget v0, p2, Lo/G9;->f:I

    .line 41
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:[Lo/Ba;

    .line 43
    aget-object v1, v1, v3

    .line 45
    invoke-virtual {v1, v0}, Lo/Ba;->i(I)I

    .line 48
    move-result v1

    .line 49
    :goto_0
    iget v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->p:I

    .line 51
    if-ge v2, v3, :cond_4

    .line 53
    iget-object v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:[Lo/Ba;

    .line 55
    aget-object v3, v3, v2

    .line 57
    invoke-virtual {v3, v0}, Lo/Ba;->i(I)I

    .line 60
    move-result v3

    .line 61
    if-le v3, v1, :cond_3

    .line 63
    move v1, v3

    .line 64
    :cond_3
    add-int/lit8 v2, v2, 0x1

    .line 66
    goto :goto_0

    .line 67
    :cond_4
    sub-int/2addr v0, v1

    .line 68
    if-gez v0, :cond_5

    .line 70
    iget p2, p2, Lo/G9;->g:I

    .line 72
    goto :goto_1

    .line 73
    :cond_5
    iget v1, p2, Lo/G9;->g:I

    .line 75
    iget p2, p2, Lo/G9;->b:I

    .line 77
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    .line 80
    move-result p2

    .line 81
    sub-int p2, v1, p2

    .line 83
    :goto_1
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->W0(Lo/Ad;I)V

    .line 86
    goto :goto_4

    .line 87
    :cond_6
    iget v0, p2, Lo/G9;->g:I

    .line 89
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:[Lo/Ba;

    .line 91
    aget-object v1, v1, v3

    .line 93
    invoke-virtual {v1, v0}, Lo/Ba;->g(I)I

    .line 96
    move-result v1

    .line 97
    :goto_2
    iget v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->p:I

    .line 99
    if-ge v2, v3, :cond_8

    .line 101
    iget-object v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:[Lo/Ba;

    .line 103
    aget-object v3, v3, v2

    .line 105
    invoke-virtual {v3, v0}, Lo/Ba;->g(I)I

    .line 108
    move-result v3

    .line 109
    if-ge v3, v1, :cond_7

    .line 111
    move v1, v3

    .line 112
    :cond_7
    add-int/lit8 v2, v2, 0x1

    .line 114
    goto :goto_2

    .line 115
    :cond_8
    iget v0, p2, Lo/G9;->g:I

    .line 117
    sub-int/2addr v1, v0

    .line 118
    if-gez v1, :cond_9

    .line 120
    iget p2, p2, Lo/G9;->f:I

    .line 122
    goto :goto_3

    .line 123
    :cond_9
    iget v0, p2, Lo/G9;->f:I

    .line 125
    iget p2, p2, Lo/G9;->b:I

    .line 127
    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    .line 130
    move-result p2

    .line 131
    add-int/2addr p2, v0

    .line 132
    :goto_3
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->X0(Lo/Ad;I)V

    .line 135
    :cond_a
    :goto_4
    return-void
.end method

.method public final W(II)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, p1, p2, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->O0(III)V

    .line 5
    return-void
.end method

.method public final W0(Lo/Ad;I)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lo/ud;->v()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    sub-int/2addr v0, v1

    .line 7
    :goto_0
    if-ltz v0, :cond_4

    .line 9
    invoke-virtual {p0, v0}, Lo/ud;->u(I)Landroid/view/View;

    .line 12
    move-result-object v2

    .line 13
    iget-object v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:Lo/z6;

    .line 15
    invoke-virtual {v3, v2}, Lo/z6;->e(Landroid/view/View;)I

    .line 18
    move-result v3

    .line 19
    if-lt v3, p2, :cond_4

    .line 21
    iget-object v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:Lo/z6;

    .line 23
    invoke-virtual {v3, v2}, Lo/z6;->o(Landroid/view/View;)I

    .line 26
    move-result v3

    .line 27
    if-lt v3, p2, :cond_4

    .line 29
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 32
    move-result-object v3

    .line 33
    check-cast v3, Lo/df;

    .line 35
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    iget-object v4, v3, Lo/df;->e:Lo/Ba;

    .line 40
    iget-object v4, v4, Lo/Ba;->f:Ljava/lang/Object;

    .line 42
    check-cast v4, Ljava/util/ArrayList;

    .line 44
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 47
    move-result v4

    .line 48
    if-ne v4, v1, :cond_0

    .line 50
    return-void

    .line 51
    :cond_0
    iget-object v3, v3, Lo/df;->e:Lo/Ba;

    .line 53
    iget-object v4, v3, Lo/Ba;->f:Ljava/lang/Object;

    .line 55
    check-cast v4, Ljava/util/ArrayList;

    .line 57
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 60
    move-result v5

    .line 61
    add-int/lit8 v6, v5, -0x1

    .line 63
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 66
    move-result-object v4

    .line 67
    check-cast v4, Landroid/view/View;

    .line 69
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 72
    move-result-object v6

    .line 73
    check-cast v6, Lo/df;

    .line 75
    const/4 v7, 0x0

    .line 76
    iput-object v7, v6, Lo/df;->e:Lo/Ba;

    .line 78
    iget-object v7, v6, Lo/vd;->a:Lo/Id;

    .line 80
    invoke-virtual {v7}, Lo/Id;->i()Z

    .line 83
    move-result v7

    .line 84
    if-nez v7, :cond_1

    .line 86
    iget-object v6, v6, Lo/vd;->a:Lo/Id;

    .line 88
    invoke-virtual {v6}, Lo/Id;->l()Z

    .line 91
    move-result v6

    .line 92
    if-eqz v6, :cond_2

    .line 94
    :cond_1
    iget v6, v3, Lo/Ba;->d:I

    .line 96
    iget-object v7, v3, Lo/Ba;->g:Ljava/lang/Object;

    .line 98
    check-cast v7, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    .line 100
    iget-object v7, v7, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:Lo/z6;

    .line 102
    invoke-virtual {v7, v4}, Lo/z6;->c(Landroid/view/View;)I

    .line 105
    move-result v4

    .line 106
    sub-int/2addr v6, v4

    .line 107
    iput v6, v3, Lo/Ba;->d:I

    .line 109
    :cond_2
    const/high16 v4, -0x80000000

    .line 111
    if-ne v5, v1, :cond_3

    .line 113
    iput v4, v3, Lo/Ba;->b:I

    .line 115
    :cond_3
    iput v4, v3, Lo/Ba;->c:I

    .line 117
    invoke-virtual {p0, v2, p1}, Lo/ud;->i0(Landroid/view/View;Lo/Ad;)V

    .line 120
    add-int/lit8 v0, v0, -0x1

    .line 122
    goto :goto_0

    .line 123
    :cond_4
    return-void
.end method

.method public final X()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->B:Lo/H1;

    .line 3
    iget-object v1, v0, Lo/H1;->b:Ljava/lang/Object;

    .line 5
    check-cast v1, [I

    .line 7
    if-eqz v1, :cond_0

    .line 9
    const/4 v2, -0x1

    .line 10
    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([II)V

    .line 13
    :cond_0
    const/4 v1, 0x0

    .line 14
    iput-object v1, v0, Lo/H1;->c:Ljava/lang/Object;

    .line 16
    invoke-virtual {p0}, Lo/ud;->l0()V

    .line 19
    return-void
.end method

.method public final X0(Lo/Ad;I)V
    .locals 6

    .line 1
    :goto_0
    invoke-virtual {p0}, Lo/ud;->v()I

    .line 4
    move-result v0

    .line 5
    if-lez v0, :cond_4

    .line 7
    const/4 v0, 0x0

    .line 8
    invoke-virtual {p0, v0}, Lo/ud;->u(I)Landroid/view/View;

    .line 11
    move-result-object v1

    .line 12
    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:Lo/z6;

    .line 14
    invoke-virtual {v2, v1}, Lo/z6;->b(Landroid/view/View;)I

    .line 17
    move-result v2

    .line 18
    if-gt v2, p2, :cond_4

    .line 20
    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:Lo/z6;

    .line 22
    invoke-virtual {v2, v1}, Lo/z6;->n(Landroid/view/View;)I

    .line 25
    move-result v2

    .line 26
    if-gt v2, p2, :cond_4

    .line 28
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 31
    move-result-object v2

    .line 32
    check-cast v2, Lo/df;

    .line 34
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    iget-object v3, v2, Lo/df;->e:Lo/Ba;

    .line 39
    iget-object v3, v3, Lo/Ba;->f:Ljava/lang/Object;

    .line 41
    check-cast v3, Ljava/util/ArrayList;

    .line 43
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 46
    move-result v3

    .line 47
    const/4 v4, 0x1

    .line 48
    if-ne v3, v4, :cond_0

    .line 50
    return-void

    .line 51
    :cond_0
    iget-object v2, v2, Lo/df;->e:Lo/Ba;

    .line 53
    iget-object v3, v2, Lo/Ba;->f:Ljava/lang/Object;

    .line 55
    check-cast v3, Ljava/util/ArrayList;

    .line 57
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 60
    move-result-object v0

    .line 61
    check-cast v0, Landroid/view/View;

    .line 63
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 66
    move-result-object v4

    .line 67
    check-cast v4, Lo/df;

    .line 69
    const/4 v5, 0x0

    .line 70
    iput-object v5, v4, Lo/df;->e:Lo/Ba;

    .line 72
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 75
    move-result v3

    .line 76
    const/high16 v5, -0x80000000

    .line 78
    if-nez v3, :cond_1

    .line 80
    iput v5, v2, Lo/Ba;->c:I

    .line 82
    :cond_1
    iget-object v3, v4, Lo/vd;->a:Lo/Id;

    .line 84
    invoke-virtual {v3}, Lo/Id;->i()Z

    .line 87
    move-result v3

    .line 88
    if-nez v3, :cond_2

    .line 90
    iget-object v3, v4, Lo/vd;->a:Lo/Id;

    .line 92
    invoke-virtual {v3}, Lo/Id;->l()Z

    .line 95
    move-result v3

    .line 96
    if-eqz v3, :cond_3

    .line 98
    :cond_2
    iget v3, v2, Lo/Ba;->d:I

    .line 100
    iget-object v4, v2, Lo/Ba;->g:Ljava/lang/Object;

    .line 102
    check-cast v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    .line 104
    iget-object v4, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:Lo/z6;

    .line 106
    invoke-virtual {v4, v0}, Lo/z6;->c(Landroid/view/View;)I

    .line 109
    move-result v0

    .line 110
    sub-int/2addr v3, v0

    .line 111
    iput v3, v2, Lo/Ba;->d:I

    .line 113
    :cond_3
    iput v5, v2, Lo/Ba;->b:I

    .line 115
    invoke-virtual {p0, v1, p1}, Lo/ud;->i0(Landroid/view/View;Lo/Ad;)V

    .line 118
    goto :goto_0

    .line 119
    :cond_4
    return-void
.end method

.method public final Y(II)V
    .locals 1

    .line 1
    const/16 v0, 0x8

    .line 3
    invoke-virtual {p0, p1, p2, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->O0(III)V

    .line 6
    return-void
.end method

.method public final Y0()V
    .locals 2

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t:I

    .line 3
    const/4 v1, 0x1

    .line 4
    if-eq v0, v1, :cond_1

    .line 6
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->Q0()Z

    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->w:Z

    .line 15
    xor-int/2addr v0, v1

    .line 16
    iput-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->x:Z

    .line 18
    goto :goto_1

    .line 19
    :cond_1
    :goto_0
    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->w:Z

    .line 21
    iput-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->x:Z

    .line 23
    :goto_1
    return-void
.end method

.method public final Z(II)V
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-virtual {p0, p1, p2, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->O0(III)V

    .line 5
    return-void
.end method

.method public final Z0(ILo/Ad;Lo/Fd;)I
    .locals 3

    .line 1
    invoke-virtual {p0}, Lo/ud;->v()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_3

    .line 8
    if-nez p1, :cond_0

    .line 10
    goto :goto_1

    .line 11
    :cond_0
    invoke-virtual {p0, p1, p3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->U0(ILo/Fd;)V

    .line 14
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->v:Lo/G9;

    .line 16
    invoke-virtual {p0, p2, v0, p3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->F0(Lo/Ad;Lo/G9;Lo/Fd;)I

    .line 19
    move-result p3

    .line 20
    iget v2, v0, Lo/G9;->b:I

    .line 22
    if-ge v2, p3, :cond_1

    .line 24
    goto :goto_0

    .line 25
    :cond_1
    if-gez p1, :cond_2

    .line 27
    neg-int p1, p3

    .line 28
    goto :goto_0

    .line 29
    :cond_2
    move p1, p3

    .line 30
    :goto_0
    iget-object p3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:Lo/z6;

    .line 32
    neg-int v2, p1

    .line 33
    invoke-virtual {p3, v2}, Lo/z6;->p(I)V

    .line 36
    iget-boolean p3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->x:Z

    .line 38
    iput-boolean p3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->D:Z

    .line 40
    iput v1, v0, Lo/G9;->b:I

    .line 42
    invoke-virtual {p0, p2, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->V0(Lo/Ad;Lo/G9;)V

    .line 45
    return p1

    .line 46
    :cond_3
    :goto_1
    return v1
.end method

.method public final a(I)Landroid/graphics/PointF;
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->A0(I)I

    .line 4
    move-result p1

    .line 5
    new-instance v0, Landroid/graphics/PointF;

    .line 7
    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    .line 10
    if-nez p1, :cond_0

    .line 12
    const/4 p1, 0x0

    .line 13
    return-object p1

    .line 14
    :cond_0
    iget v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t:I

    .line 16
    const/4 v2, 0x0

    .line 17
    if-nez v1, :cond_1

    .line 19
    int-to-float p1, p1

    .line 20
    iput p1, v0, Landroid/graphics/PointF;->x:F

    .line 22
    iput v2, v0, Landroid/graphics/PointF;->y:F

    .line 24
    goto :goto_0

    .line 25
    :cond_1
    iput v2, v0, Landroid/graphics/PointF;->x:F

    .line 27
    int-to-float p1, p1

    .line 28
    iput p1, v0, Landroid/graphics/PointF;->y:F

    .line 30
    :goto_0
    return-object v0
.end method

.method public final a0(II)V
    .locals 1

    .line 1
    const/4 v0, 0x4

    .line 2
    invoke-virtual {p0, p1, p2, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->O0(III)V

    .line 5
    return-void
.end method

.method public final a1(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->v:Lo/G9;

    .line 3
    iput p1, v0, Lo/G9;->e:I

    .line 5
    iget-boolean v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->x:Z

    .line 7
    const/4 v2, 0x1

    .line 8
    const/4 v3, -0x1

    .line 9
    if-ne p1, v3, :cond_0

    .line 11
    move p1, v2

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p1, 0x0

    .line 14
    :goto_0
    if-ne v1, p1, :cond_1

    .line 16
    goto :goto_1

    .line 17
    :cond_1
    move v2, v3

    .line 18
    :goto_1
    iput v2, v0, Lo/G9;->d:I

    .line 20
    return-void
.end method

.method public final b0(Lo/Ad;Lo/Fd;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, p1, p2, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->S0(Lo/Ad;Lo/Fd;Z)V

    .line 5
    return-void
.end method

.method public final b1(ILo/Fd;)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->v:Lo/G9;

    .line 3
    const/4 v1, 0x0

    .line 4
    iput v1, v0, Lo/G9;->b:I

    .line 6
    iput p1, v0, Lo/G9;->c:I

    .line 8
    iget-object v2, p0, Lo/ud;->e:Lo/aa;

    .line 10
    const/4 v3, 0x1

    .line 11
    if-eqz v2, :cond_0

    .line 13
    iget-boolean v2, v2, Lo/aa;->e:Z

    .line 15
    if-eqz v2, :cond_0

    .line 17
    move v2, v3

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move v2, v1

    .line 20
    :goto_0
    if-eqz v2, :cond_3

    .line 22
    iget p2, p2, Lo/Fd;->a:I

    .line 24
    const/4 v2, -0x1

    .line 25
    if-eq p2, v2, :cond_3

    .line 27
    iget-boolean v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->x:Z

    .line 29
    if-ge p2, p1, :cond_1

    .line 31
    move p1, v3

    .line 32
    goto :goto_1

    .line 33
    :cond_1
    move p1, v1

    .line 34
    :goto_1
    if-ne v2, p1, :cond_2

    .line 36
    iget-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:Lo/z6;

    .line 38
    invoke-virtual {p1}, Lo/z6;->l()I

    .line 41
    move-result p1

    .line 42
    move p2, v1

    .line 43
    goto :goto_2

    .line 44
    :cond_2
    iget-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:Lo/z6;

    .line 46
    invoke-virtual {p1}, Lo/z6;->l()I

    .line 49
    move-result p1

    .line 50
    move p2, p1

    .line 51
    move p1, v1

    .line 52
    goto :goto_2

    .line 53
    :cond_3
    move p1, v1

    .line 54
    move p2, p1

    .line 55
    :goto_2
    iget-object v2, p0, Lo/ud;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 57
    if-eqz v2, :cond_4

    .line 59
    iget-boolean v2, v2, Landroidx/recyclerview/widget/RecyclerView;->g:Z

    .line 61
    if-eqz v2, :cond_4

    .line 63
    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:Lo/z6;

    .line 65
    invoke-virtual {v2}, Lo/z6;->k()I

    .line 68
    move-result v2

    .line 69
    sub-int/2addr v2, p2

    .line 70
    iput v2, v0, Lo/G9;->f:I

    .line 72
    iget-object p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:Lo/z6;

    .line 74
    invoke-virtual {p2}, Lo/z6;->g()I

    .line 77
    move-result p2

    .line 78
    add-int/2addr p2, p1

    .line 79
    iput p2, v0, Lo/G9;->g:I

    .line 81
    goto :goto_3

    .line 82
    :cond_4
    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:Lo/z6;

    .line 84
    invoke-virtual {v2}, Lo/z6;->f()I

    .line 87
    move-result v2

    .line 88
    add-int/2addr v2, p1

    .line 89
    iput v2, v0, Lo/G9;->g:I

    .line 91
    neg-int p1, p2

    .line 92
    iput p1, v0, Lo/G9;->f:I

    .line 94
    :goto_3
    iput-boolean v1, v0, Lo/G9;->h:Z

    .line 96
    iput-boolean v3, v0, Lo/G9;->a:Z

    .line 98
    iget-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:Lo/z6;

    .line 100
    invoke-virtual {p1}, Lo/z6;->i()I

    .line 103
    move-result p1

    .line 104
    if-nez p1, :cond_5

    .line 106
    iget-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:Lo/z6;

    .line 108
    invoke-virtual {p1}, Lo/z6;->f()I

    .line 111
    move-result p1

    .line 112
    if-nez p1, :cond_5

    .line 114
    move v1, v3

    .line 115
    :cond_5
    iput-boolean v1, v0, Lo/G9;->i:Z

    .line 117
    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->F:Lo/ff;

    .line 3
    if-nez v0, :cond_0

    .line 5
    invoke-super {p0, p1}, Lo/ud;->c(Ljava/lang/String;)V

    .line 8
    :cond_0
    return-void
.end method

.method public final c0(Lo/Fd;)V
    .locals 0

    .line 1
    const/4 p1, -0x1

    .line 2
    iput p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->z:I

    .line 4
    const/high16 p1, -0x80000000

    .line 6
    iput p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->A:I

    .line 8
    const/4 p1, 0x0

    .line 9
    iput-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->F:Lo/ff;

    .line 11
    iget-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->H:Lo/cf;

    .line 13
    invoke-virtual {p1}, Lo/cf;->a()V

    .line 16
    return-void
.end method

.method public final c1(Lo/Ba;II)V
    .locals 5

    .line 1
    iget v0, p1, Lo/Ba;->d:I

    .line 3
    const/high16 v1, -0x80000000

    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, -0x1

    .line 7
    iget v4, p1, Lo/Ba;->e:I

    .line 9
    if-ne p2, v3, :cond_1

    .line 11
    iget p2, p1, Lo/Ba;->b:I

    .line 13
    if-eq p2, v1, :cond_0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget-object p2, p1, Lo/Ba;->f:Ljava/lang/Object;

    .line 18
    check-cast p2, Ljava/util/ArrayList;

    .line 20
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 23
    move-result-object p2

    .line 24
    check-cast p2, Landroid/view/View;

    .line 26
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 29
    move-result-object v1

    .line 30
    check-cast v1, Lo/df;

    .line 32
    iget-object v3, p1, Lo/Ba;->g:Ljava/lang/Object;

    .line 34
    check-cast v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    .line 36
    iget-object v3, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:Lo/z6;

    .line 38
    invoke-virtual {v3, p2}, Lo/z6;->e(Landroid/view/View;)I

    .line 41
    move-result p2

    .line 42
    iput p2, p1, Lo/Ba;->b:I

    .line 44
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    iget p2, p1, Lo/Ba;->b:I

    .line 49
    :goto_0
    add-int/2addr p2, v0

    .line 50
    if-gt p2, p3, :cond_3

    .line 52
    iget-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->y:Ljava/util/BitSet;

    .line 54
    invoke-virtual {p1, v4, v2}, Ljava/util/BitSet;->set(IZ)V

    .line 57
    goto :goto_2

    .line 58
    :cond_1
    iget p2, p1, Lo/Ba;->c:I

    .line 60
    if-eq p2, v1, :cond_2

    .line 62
    goto :goto_1

    .line 63
    :cond_2
    invoke-virtual {p1}, Lo/Ba;->a()V

    .line 66
    iget p2, p1, Lo/Ba;->c:I

    .line 68
    :goto_1
    sub-int/2addr p2, v0

    .line 69
    if-lt p2, p3, :cond_3

    .line 71
    iget-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->y:Ljava/util/BitSet;

    .line 73
    invoke-virtual {p1, v4, v2}, Ljava/util/BitSet;->set(IZ)V

    .line 76
    :cond_3
    :goto_2
    return-void
.end method

.method public final d()Z
    .locals 1

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t:I

    .line 3
    if-nez v0, :cond_0

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

.method public final d0(Landroid/os/Parcelable;)V
    .locals 1

    .line 1
    instance-of v0, p1, Lo/ff;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    check-cast p1, Lo/ff;

    .line 7
    iput-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->F:Lo/ff;

    .line 9
    invoke-virtual {p0}, Lo/ud;->l0()V

    .line 12
    :cond_0
    return-void
.end method

.method public final e()Z
    .locals 2

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t:I

    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v1, 0x0

    .line 8
    :goto_0
    return v1
.end method

.method public final e0()Landroid/os/Parcelable;
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->F:Lo/ff;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    new-instance v1, Lo/ff;

    .line 7
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 10
    iget v2, v0, Lo/ff;->c:I

    .line 12
    iput v2, v1, Lo/ff;->c:I

    .line 14
    iget v2, v0, Lo/ff;->a:I

    .line 16
    iput v2, v1, Lo/ff;->a:I

    .line 18
    iget v2, v0, Lo/ff;->b:I

    .line 20
    iput v2, v1, Lo/ff;->b:I

    .line 22
    iget-object v2, v0, Lo/ff;->d:[I

    .line 24
    iput-object v2, v1, Lo/ff;->d:[I

    .line 26
    iget v2, v0, Lo/ff;->e:I

    .line 28
    iput v2, v1, Lo/ff;->e:I

    .line 30
    iget-object v2, v0, Lo/ff;->f:[I

    .line 32
    iput-object v2, v1, Lo/ff;->f:[I

    .line 34
    iget-boolean v2, v0, Lo/ff;->h:Z

    .line 36
    iput-boolean v2, v1, Lo/ff;->h:Z

    .line 38
    iget-boolean v2, v0, Lo/ff;->i:Z

    .line 40
    iput-boolean v2, v1, Lo/ff;->i:Z

    .line 42
    iget-boolean v2, v0, Lo/ff;->j:Z

    .line 44
    iput-boolean v2, v1, Lo/ff;->j:Z

    .line 46
    iget-object v0, v0, Lo/ff;->g:Ljava/util/ArrayList;

    .line 48
    iput-object v0, v1, Lo/ff;->g:Ljava/util/ArrayList;

    .line 50
    return-object v1

    .line 51
    :cond_0
    new-instance v0, Lo/ff;

    .line 53
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 56
    iget-boolean v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->w:Z

    .line 58
    iput-boolean v1, v0, Lo/ff;->h:Z

    .line 60
    iget-boolean v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->D:Z

    .line 62
    iput-boolean v1, v0, Lo/ff;->i:Z

    .line 64
    iget-boolean v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->E:Z

    .line 66
    iput-boolean v1, v0, Lo/ff;->j:Z

    .line 68
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->B:Lo/H1;

    .line 70
    const/4 v2, 0x0

    .line 71
    if-eqz v1, :cond_1

    .line 73
    iget-object v3, v1, Lo/H1;->b:Ljava/lang/Object;

    .line 75
    check-cast v3, [I

    .line 77
    if-eqz v3, :cond_1

    .line 79
    iput-object v3, v0, Lo/ff;->f:[I

    .line 81
    array-length v3, v3

    .line 82
    iput v3, v0, Lo/ff;->e:I

    .line 84
    iget-object v1, v1, Lo/H1;->c:Ljava/lang/Object;

    .line 86
    check-cast v1, Ljava/util/ArrayList;

    .line 88
    iput-object v1, v0, Lo/ff;->g:Ljava/util/ArrayList;

    .line 90
    goto :goto_0

    .line 91
    :cond_1
    iput v2, v0, Lo/ff;->e:I

    .line 93
    :goto_0
    invoke-virtual {p0}, Lo/ud;->v()I

    .line 96
    move-result v1

    .line 97
    const/4 v3, -0x1

    .line 98
    if-lez v1, :cond_7

    .line 100
    iget-boolean v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->D:Z

    .line 102
    if-eqz v1, :cond_2

    .line 104
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->L0()I

    .line 107
    move-result v1

    .line 108
    goto :goto_1

    .line 109
    :cond_2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->K0()I

    .line 112
    move-result v1

    .line 113
    :goto_1
    iput v1, v0, Lo/ff;->a:I

    .line 115
    iget-boolean v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->x:Z

    .line 117
    const/4 v4, 0x1

    .line 118
    if-eqz v1, :cond_3

    .line 120
    invoke-virtual {p0, v4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->G0(Z)Landroid/view/View;

    .line 123
    move-result-object v1

    .line 124
    goto :goto_2

    .line 125
    :cond_3
    invoke-virtual {p0, v4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->H0(Z)Landroid/view/View;

    .line 128
    move-result-object v1

    .line 129
    :goto_2
    if-nez v1, :cond_4

    .line 131
    goto :goto_3

    .line 132
    :cond_4
    invoke-static {v1}, Lo/ud;->H(Landroid/view/View;)I

    .line 135
    move-result v3

    .line 136
    :goto_3
    iput v3, v0, Lo/ff;->b:I

    .line 138
    iget v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->p:I

    .line 140
    iput v1, v0, Lo/ff;->c:I

    .line 142
    new-array v1, v1, [I

    .line 144
    iput-object v1, v0, Lo/ff;->d:[I

    .line 146
    :goto_4
    iget v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->p:I

    .line 148
    if-ge v2, v1, :cond_8

    .line 150
    iget-boolean v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->D:Z

    .line 152
    const/high16 v3, -0x80000000

    .line 154
    if-eqz v1, :cond_5

    .line 156
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:[Lo/Ba;

    .line 158
    aget-object v1, v1, v2

    .line 160
    invoke-virtual {v1, v3}, Lo/Ba;->g(I)I

    .line 163
    move-result v1

    .line 164
    if-eq v1, v3, :cond_6

    .line 166
    iget-object v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:Lo/z6;

    .line 168
    invoke-virtual {v3}, Lo/z6;->g()I

    .line 171
    move-result v3

    .line 172
    :goto_5
    sub-int/2addr v1, v3

    .line 173
    goto :goto_6

    .line 174
    :cond_5
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:[Lo/Ba;

    .line 176
    aget-object v1, v1, v2

    .line 178
    invoke-virtual {v1, v3}, Lo/Ba;->i(I)I

    .line 181
    move-result v1

    .line 182
    if-eq v1, v3, :cond_6

    .line 184
    iget-object v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:Lo/z6;

    .line 186
    invoke-virtual {v3}, Lo/z6;->k()I

    .line 189
    move-result v3

    .line 190
    goto :goto_5

    .line 191
    :cond_6
    :goto_6
    iget-object v3, v0, Lo/ff;->d:[I

    .line 193
    aput v1, v3, v2

    .line 195
    add-int/lit8 v2, v2, 0x1

    .line 197
    goto :goto_4

    .line 198
    :cond_7
    iput v3, v0, Lo/ff;->a:I

    .line 200
    iput v3, v0, Lo/ff;->b:I

    .line 202
    iput v2, v0, Lo/ff;->c:I

    .line 204
    :cond_8
    return-object v0
.end method

.method public final f(Lo/vd;)Z
    .locals 0

    .line 1
    instance-of p1, p1, Lo/df;

    .line 3
    return p1
.end method

.method public final f0(I)V
    .locals 0

    .line 1
    if-nez p1, :cond_0

    .line 3
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->B0()Z

    .line 6
    :cond_0
    return-void
.end method

.method public final h(IILo/Fd;Lo/R8;)V
    .locals 4

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t:I

    .line 3
    if-nez v0, :cond_0

    .line 5
    goto :goto_0

    .line 6
    :cond_0
    move p1, p2

    .line 7
    :goto_0
    invoke-virtual {p0}, Lo/ud;->v()I

    .line 10
    move-result p2

    .line 11
    if-eqz p2, :cond_7

    .line 13
    if-nez p1, :cond_1

    .line 15
    goto :goto_5

    .line 16
    :cond_1
    invoke-virtual {p0, p1, p3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->U0(ILo/Fd;)V

    .line 19
    iget-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->J:[I

    .line 21
    if-eqz p1, :cond_2

    .line 23
    array-length p1, p1

    .line 24
    iget p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->p:I

    .line 26
    if-ge p1, p2, :cond_3

    .line 28
    :cond_2
    iget p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->p:I

    .line 30
    new-array p1, p1, [I

    .line 32
    iput-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->J:[I

    .line 34
    :cond_3
    const/4 p1, 0x0

    .line 35
    move p2, p1

    .line 36
    move v0, p2

    .line 37
    :goto_1
    iget v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->p:I

    .line 39
    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->v:Lo/G9;

    .line 41
    if-ge p2, v1, :cond_6

    .line 43
    iget v1, v2, Lo/G9;->d:I

    .line 45
    const/4 v3, -0x1

    .line 46
    if-ne v1, v3, :cond_4

    .line 48
    iget v1, v2, Lo/G9;->f:I

    .line 50
    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:[Lo/Ba;

    .line 52
    aget-object v2, v2, p2

    .line 54
    invoke-virtual {v2, v1}, Lo/Ba;->i(I)I

    .line 57
    move-result v2

    .line 58
    :goto_2
    sub-int/2addr v1, v2

    .line 59
    goto :goto_3

    .line 60
    :cond_4
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:[Lo/Ba;

    .line 62
    aget-object v1, v1, p2

    .line 64
    iget v3, v2, Lo/G9;->g:I

    .line 66
    invoke-virtual {v1, v3}, Lo/Ba;->g(I)I

    .line 69
    move-result v1

    .line 70
    iget v2, v2, Lo/G9;->g:I

    .line 72
    goto :goto_2

    .line 73
    :goto_3
    if-ltz v1, :cond_5

    .line 75
    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->J:[I

    .line 77
    aput v1, v2, v0

    .line 79
    add-int/lit8 v0, v0, 0x1

    .line 81
    :cond_5
    add-int/lit8 p2, p2, 0x1

    .line 83
    goto :goto_1

    .line 84
    :cond_6
    iget-object p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->J:[I

    .line 86
    invoke-static {p2, p1, v0}, Ljava/util/Arrays;->sort([III)V

    .line 89
    :goto_4
    if-ge p1, v0, :cond_7

    .line 91
    iget p2, v2, Lo/G9;->c:I

    .line 93
    if-ltz p2, :cond_7

    .line 95
    invoke-virtual {p3}, Lo/Fd;->b()I

    .line 98
    move-result v1

    .line 99
    if-ge p2, v1, :cond_7

    .line 101
    iget p2, v2, Lo/G9;->c:I

    .line 103
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->J:[I

    .line 105
    aget v1, v1, p1

    .line 107
    invoke-virtual {p4, p2, v1}, Lo/R8;->a(II)V

    .line 110
    iget p2, v2, Lo/G9;->c:I

    .line 112
    iget v1, v2, Lo/G9;->d:I

    .line 114
    add-int/2addr p2, v1

    .line 115
    iput p2, v2, Lo/G9;->c:I

    .line 117
    add-int/lit8 p1, p1, 0x1

    .line 119
    goto :goto_4

    .line 120
    :cond_7
    :goto_5
    return-void
.end method

.method public final j(Lo/Fd;)I
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->C0(Lo/Fd;)I

    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public final k(Lo/Fd;)I
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->D0(Lo/Fd;)I

    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public final l(Lo/Fd;)I
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->E0(Lo/Fd;)I

    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public final m(Lo/Fd;)I
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->C0(Lo/Fd;)I

    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public final m0(ILo/Ad;Lo/Fd;)I
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->Z0(ILo/Ad;Lo/Fd;)I

    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public final n(Lo/Fd;)I
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->D0(Lo/Fd;)I

    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public final n0(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->F:Lo/ff;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    iget v1, v0, Lo/ff;->a:I

    .line 7
    if-eq v1, p1, :cond_0

    .line 9
    const/4 v1, 0x0

    .line 10
    iput-object v1, v0, Lo/ff;->d:[I

    .line 12
    const/4 v1, 0x0

    .line 13
    iput v1, v0, Lo/ff;->c:I

    .line 15
    const/4 v1, -0x1

    .line 16
    iput v1, v0, Lo/ff;->a:I

    .line 18
    iput v1, v0, Lo/ff;->b:I

    .line 20
    :cond_0
    iput p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->z:I

    .line 22
    const/high16 p1, -0x80000000

    .line 24
    iput p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->A:I

    .line 26
    invoke-virtual {p0}, Lo/ud;->l0()V

    .line 29
    return-void
.end method

.method public final o(Lo/Fd;)I
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->E0(Lo/Fd;)I

    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public final o0(ILo/Ad;Lo/Fd;)I
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->Z0(ILo/Ad;Lo/Fd;)I

    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public final r()Lo/vd;
    .locals 3

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t:I

    .line 3
    const/4 v1, -0x1

    .line 4
    const/4 v2, -0x2

    .line 5
    if-nez v0, :cond_0

    .line 7
    new-instance v0, Lo/df;

    .line 9
    invoke-direct {v0, v2, v1}, Lo/vd;-><init>(II)V

    .line 12
    return-object v0

    .line 13
    :cond_0
    new-instance v0, Lo/df;

    .line 15
    invoke-direct {v0, v1, v2}, Lo/vd;-><init>(II)V

    .line 18
    return-object v0
.end method

.method public final r0(Landroid/graphics/Rect;II)V
    .locals 5

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->p:I

    .line 3
    invoke-virtual {p0}, Lo/ud;->E()I

    .line 6
    move-result v1

    .line 7
    invoke-virtual {p0}, Lo/ud;->F()I

    .line 10
    move-result v2

    .line 11
    add-int/2addr v2, v1

    .line 12
    invoke-virtual {p0}, Lo/ud;->G()I

    .line 15
    move-result v1

    .line 16
    invoke-virtual {p0}, Lo/ud;->D()I

    .line 19
    move-result v3

    .line 20
    add-int/2addr v3, v1

    .line 21
    iget v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t:I

    .line 23
    const/4 v4, 0x1

    .line 24
    if-ne v1, v4, :cond_0

    .line 26
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    .line 29
    move-result p1

    .line 30
    add-int/2addr p1, v3

    .line 31
    iget-object v1, p0, Lo/ud;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 33
    sget-object v3, Lo/Dh;->a:Ljava/util/WeakHashMap;

    .line 35
    invoke-virtual {v1}, Landroid/view/View;->getMinimumHeight()I

    .line 38
    move-result v1

    .line 39
    invoke-static {p3, p1, v1}, Lo/ud;->g(III)I

    .line 42
    move-result p1

    .line 43
    iget p3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->u:I

    .line 45
    mul-int/2addr p3, v0

    .line 46
    add-int/2addr p3, v2

    .line 47
    iget-object v0, p0, Lo/ud;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 49
    invoke-virtual {v0}, Landroid/view/View;->getMinimumWidth()I

    .line 52
    move-result v0

    .line 53
    invoke-static {p2, p3, v0}, Lo/ud;->g(III)I

    .line 56
    move-result p2

    .line 57
    goto :goto_0

    .line 58
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    .line 61
    move-result p1

    .line 62
    add-int/2addr p1, v2

    .line 63
    iget-object v1, p0, Lo/ud;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 65
    sget-object v2, Lo/Dh;->a:Ljava/util/WeakHashMap;

    .line 67
    invoke-virtual {v1}, Landroid/view/View;->getMinimumWidth()I

    .line 70
    move-result v1

    .line 71
    invoke-static {p2, p1, v1}, Lo/ud;->g(III)I

    .line 74
    move-result p2

    .line 75
    iget p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->u:I

    .line 77
    mul-int/2addr p1, v0

    .line 78
    add-int/2addr p1, v3

    .line 79
    iget-object v0, p0, Lo/ud;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 81
    invoke-virtual {v0}, Landroid/view/View;->getMinimumHeight()I

    .line 84
    move-result v0

    .line 85
    invoke-static {p3, p1, v0}, Lo/ud;->g(III)I

    .line 88
    move-result p1

    .line 89
    :goto_0
    iget-object p3, p0, Lo/ud;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 91
    invoke-static {p3, p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->e(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 94
    return-void
.end method

.method public final s(Landroid/content/Context;Landroid/util/AttributeSet;)Lo/vd;
    .locals 1

    .line 1
    new-instance v0, Lo/df;

    .line 3
    invoke-direct {v0, p1, p2}, Lo/vd;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 6
    return-object v0
.end method

.method public final t(Landroid/view/ViewGroup$LayoutParams;)Lo/vd;
    .locals 1

    .line 1
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    new-instance v0, Lo/df;

    .line 7
    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 9
    invoke-direct {v0, p1}, Lo/vd;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 12
    return-object v0

    .line 13
    :cond_0
    new-instance v0, Lo/df;

    .line 15
    invoke-direct {v0, p1}, Lo/vd;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 18
    return-object v0
.end method

.method public final x(Lo/Ad;Lo/Fd;)I
    .locals 2

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t:I

    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 6
    iget p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->p:I

    .line 8
    return p1

    .line 9
    :cond_0
    invoke-super {p0, p1, p2}, Lo/ud;->x(Lo/Ad;Lo/Fd;)I

    .line 12
    move-result p1

    .line 13
    return p1
.end method

.method public final x0(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 1

    .line 1
    new-instance v0, Lo/aa;

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 6
    move-result-object p1

    .line 7
    invoke-direct {v0, p1}, Lo/aa;-><init>(Landroid/content/Context;)V

    .line 10
    iput p2, v0, Lo/aa;->a:I

    .line 12
    invoke-virtual {p0, v0}, Lo/ud;->y0(Lo/aa;)V

    .line 15
    return-void
.end method

.method public final z0()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->F:Lo/ff;

    .line 3
    if-nez v0, :cond_0

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
