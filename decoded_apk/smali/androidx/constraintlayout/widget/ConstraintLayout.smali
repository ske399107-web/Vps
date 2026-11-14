.class public Landroidx/constraintlayout/widget/ConstraintLayout;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# static fields
.field public static p:Lo/Me;


# instance fields
.field public final a:Landroid/util/SparseArray;

.field public final b:Ljava/util/ArrayList;

.field public final c:Lo/M4;

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:Z

.field public i:I

.field public j:Lo/K4;

.field public k:Lo/H1;

.field public l:I

.field public m:Ljava/util/HashMap;

.field public final n:Landroid/util/SparseArray;

.field public final o:Lo/C4;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->a:Landroid/util/SparseArray;

    .line 3
    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x4

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Ljava/util/ArrayList;

    .line 4
    new-instance p1, Lo/M4;

    invoke-direct {p1}, Lo/M4;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->c:Lo/M4;

    const/4 p1, 0x0

    .line 5
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:I

    .line 6
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->e:I

    const v0, 0x7fffffff

    .line 7
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->f:I

    .line 8
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->g:I

    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->h:Z

    const/16 v0, 0x101

    .line 10
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->i:I

    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->j:Lo/K4;

    .line 12
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->k:Lo/H1;

    const/4 v0, -0x1

    .line 13
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->l:I

    .line 14
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->m:Ljava/util/HashMap;

    .line 15
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->n:Landroid/util/SparseArray;

    .line 16
    new-instance v0, Lo/C4;

    invoke-direct {v0, p0, p0}, Lo/C4;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/ConstraintLayout;)V

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->o:Lo/C4;

    .line 17
    invoke-virtual {p0, p2, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->i(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 18
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 19
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->a:Landroid/util/SparseArray;

    .line 20
    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x4

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Ljava/util/ArrayList;

    .line 21
    new-instance p1, Lo/M4;

    invoke-direct {p1}, Lo/M4;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->c:Lo/M4;

    const/4 p1, 0x0

    .line 22
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:I

    .line 23
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->e:I

    const p1, 0x7fffffff

    .line 24
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->f:I

    .line 25
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->g:I

    const/4 p1, 0x1

    .line 26
    iput-boolean p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->h:Z

    const/16 p1, 0x101

    .line 27
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->i:I

    const/4 p1, 0x0

    .line 28
    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->j:Lo/K4;

    .line 29
    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->k:Lo/H1;

    const/4 p1, -0x1

    .line 30
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->l:I

    .line 31
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->m:Ljava/util/HashMap;

    .line 32
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->n:Landroid/util/SparseArray;

    .line 33
    new-instance p1, Lo/C4;

    invoke-direct {p1, p0, p0}, Lo/C4;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/ConstraintLayout;)V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->o:Lo/C4;

    .line 34
    invoke-virtual {p0, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;->i(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static g()Lo/B4;
    .locals 8

    .line 1
    new-instance v0, Lo/B4;

    .line 3
    const/4 v1, -0x2

    .line 4
    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 7
    const/4 v1, -0x1

    .line 8
    iput v1, v0, Lo/B4;->a:I

    .line 10
    iput v1, v0, Lo/B4;->b:I

    .line 12
    const/high16 v2, -0x40800000    # -1.0f

    .line 14
    iput v2, v0, Lo/B4;->c:F

    .line 16
    const/4 v3, 0x1

    .line 17
    iput-boolean v3, v0, Lo/B4;->d:Z

    .line 19
    iput v1, v0, Lo/B4;->e:I

    .line 21
    iput v1, v0, Lo/B4;->f:I

    .line 23
    iput v1, v0, Lo/B4;->g:I

    .line 25
    iput v1, v0, Lo/B4;->h:I

    .line 27
    iput v1, v0, Lo/B4;->i:I

    .line 29
    iput v1, v0, Lo/B4;->j:I

    .line 31
    iput v1, v0, Lo/B4;->k:I

    .line 33
    iput v1, v0, Lo/B4;->l:I

    .line 35
    iput v1, v0, Lo/B4;->m:I

    .line 37
    iput v1, v0, Lo/B4;->n:I

    .line 39
    iput v1, v0, Lo/B4;->o:I

    .line 41
    iput v1, v0, Lo/B4;->p:I

    .line 43
    const/4 v4, 0x0

    .line 44
    iput v4, v0, Lo/B4;->q:I

    .line 46
    const/4 v5, 0x0

    .line 47
    iput v5, v0, Lo/B4;->r:F

    .line 49
    iput v1, v0, Lo/B4;->s:I

    .line 51
    iput v1, v0, Lo/B4;->t:I

    .line 53
    iput v1, v0, Lo/B4;->u:I

    .line 55
    iput v1, v0, Lo/B4;->v:I

    .line 57
    const/high16 v5, -0x80000000

    .line 59
    iput v5, v0, Lo/B4;->w:I

    .line 61
    iput v5, v0, Lo/B4;->x:I

    .line 63
    iput v5, v0, Lo/B4;->y:I

    .line 65
    iput v5, v0, Lo/B4;->z:I

    .line 67
    iput v5, v0, Lo/B4;->A:I

    .line 69
    iput v5, v0, Lo/B4;->B:I

    .line 71
    iput v5, v0, Lo/B4;->C:I

    .line 73
    iput v4, v0, Lo/B4;->D:I

    .line 75
    const/high16 v6, 0x3f000000    # 0.5f

    .line 77
    iput v6, v0, Lo/B4;->E:F

    .line 79
    iput v6, v0, Lo/B4;->F:F

    .line 81
    const/4 v7, 0x0

    .line 82
    iput-object v7, v0, Lo/B4;->G:Ljava/lang/String;

    .line 84
    iput v2, v0, Lo/B4;->H:F

    .line 86
    iput v2, v0, Lo/B4;->I:F

    .line 88
    iput v4, v0, Lo/B4;->J:I

    .line 90
    iput v4, v0, Lo/B4;->K:I

    .line 92
    iput v4, v0, Lo/B4;->L:I

    .line 94
    iput v4, v0, Lo/B4;->M:I

    .line 96
    iput v4, v0, Lo/B4;->N:I

    .line 98
    iput v4, v0, Lo/B4;->O:I

    .line 100
    iput v4, v0, Lo/B4;->P:I

    .line 102
    iput v4, v0, Lo/B4;->Q:I

    .line 104
    const/high16 v2, 0x3f800000    # 1.0f

    .line 106
    iput v2, v0, Lo/B4;->R:F

    .line 108
    iput v2, v0, Lo/B4;->S:F

    .line 110
    iput v1, v0, Lo/B4;->T:I

    .line 112
    iput v1, v0, Lo/B4;->U:I

    .line 114
    iput v1, v0, Lo/B4;->V:I

    .line 116
    iput-boolean v4, v0, Lo/B4;->W:Z

    .line 118
    iput-boolean v4, v0, Lo/B4;->X:Z

    .line 120
    iput-object v7, v0, Lo/B4;->Y:Ljava/lang/String;

    .line 122
    iput v4, v0, Lo/B4;->Z:I

    .line 124
    iput-boolean v3, v0, Lo/B4;->a0:Z

    .line 126
    iput-boolean v3, v0, Lo/B4;->b0:Z

    .line 128
    iput-boolean v4, v0, Lo/B4;->c0:Z

    .line 130
    iput-boolean v4, v0, Lo/B4;->d0:Z

    .line 132
    iput-boolean v4, v0, Lo/B4;->e0:Z

    .line 134
    iput v1, v0, Lo/B4;->f0:I

    .line 136
    iput v1, v0, Lo/B4;->g0:I

    .line 138
    iput v1, v0, Lo/B4;->h0:I

    .line 140
    iput v1, v0, Lo/B4;->i0:I

    .line 142
    iput v5, v0, Lo/B4;->j0:I

    .line 144
    iput v5, v0, Lo/B4;->k0:I

    .line 146
    iput v6, v0, Lo/B4;->l0:F

    .line 148
    new-instance v1, Lo/L4;

    .line 150
    invoke-direct {v1}, Lo/L4;-><init>()V

    .line 153
    iput-object v1, v0, Lo/B4;->p0:Lo/L4;

    .line 155
    return-object v0
.end method

.method private getPaddingWidth()I
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    .line 9
    move-result v0

    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 13
    move-result v2

    .line 14
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    .line 17
    move-result v2

    .line 18
    add-int/2addr v2, v0

    .line 19
    invoke-virtual {p0}, Landroid/view/View;->getPaddingStart()I

    .line 22
    move-result v0

    .line 23
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    .line 26
    move-result v0

    .line 27
    invoke-virtual {p0}, Landroid/view/View;->getPaddingEnd()I

    .line 30
    move-result v3

    .line 31
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    .line 34
    move-result v1

    .line 35
    add-int/2addr v1, v0

    .line 36
    if-lez v1, :cond_0

    .line 38
    move v2, v1

    .line 39
    :cond_0
    return v2
.end method

.method public static getSharedValues()Lo/Me;
    .locals 2

    .line 1
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintLayout;->p:Lo/Me;

    .line 3
    if-nez v0, :cond_0

    .line 5
    new-instance v0, Lo/Me;

    .line 7
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v1, Landroid/util/SparseIntArray;

    .line 12
    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    .line 15
    new-instance v1, Ljava/util/HashMap;

    .line 17
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 20
    sput-object v0, Landroidx/constraintlayout/widget/ConstraintLayout;->p:Lo/Me;

    .line 22
    :cond_0
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintLayout;->p:Lo/Me;

    .line 24
    return-object v0
.end method


# virtual methods
.method public final checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 0

    .line 1
    instance-of p1, p1, Lo/B4;

    .line 3
    return p1
.end method

.method public final dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 3
    const/4 v1, 0x0

    .line 4
    iget-object v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Ljava/util/ArrayList;

    .line 6
    if-eqz v2, :cond_0

    .line 8
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 11
    move-result v3

    .line 12
    if-lez v3, :cond_0

    .line 14
    move v4, v1

    .line 15
    :goto_0
    if-ge v4, v3, :cond_0

    .line 17
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 20
    move-result-object v5

    .line 21
    check-cast v5, Lo/z4;

    .line 23
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    add-int/lit8 v4, v4, 0x1

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 32
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isInEditMode()Z

    .line 35
    move-result v2

    .line 36
    if-eqz v2, :cond_3

    .line 38
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    .line 41
    move-result v2

    .line 42
    int-to-float v2, v2

    .line 43
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    .line 46
    move-result v3

    .line 47
    int-to-float v3, v3

    .line 48
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 51
    move-result v4

    .line 52
    move v5, v1

    .line 53
    :goto_1
    if-ge v5, v4, :cond_3

    .line 55
    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 58
    move-result-object v6

    .line 59
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    .line 62
    move-result v7

    .line 63
    const/16 v8, 0x8

    .line 65
    if-ne v7, v8, :cond_1

    .line 67
    goto/16 :goto_2

    .line 69
    :cond_1
    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 72
    move-result-object v6

    .line 73
    if-eqz v6, :cond_2

    .line 75
    instance-of v7, v6, Ljava/lang/String;

    .line 77
    if-eqz v7, :cond_2

    .line 79
    check-cast v6, Ljava/lang/String;

    .line 81
    const-string v7, ","

    .line 83
    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 86
    move-result-object v6

    .line 87
    array-length v7, v6

    .line 88
    const/4 v8, 0x4

    .line 89
    if-ne v7, v8, :cond_2

    .line 91
    aget-object v7, v6, v1

    .line 93
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 96
    move-result v7

    .line 97
    const/4 v8, 0x1

    .line 98
    aget-object v8, v6, v8

    .line 100
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 103
    move-result v8

    .line 104
    const/4 v9, 0x2

    .line 105
    aget-object v9, v6, v9

    .line 107
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 110
    move-result v9

    .line 111
    const/4 v10, 0x3

    .line 112
    aget-object v6, v6, v10

    .line 114
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 117
    move-result v6

    .line 118
    int-to-float v7, v7

    .line 119
    const/high16 v10, 0x44870000    # 1080.0f

    .line 121
    div-float/2addr v7, v10

    .line 122
    mul-float/2addr v7, v2

    .line 123
    float-to-int v7, v7

    .line 124
    int-to-float v8, v8

    .line 125
    const/high16 v11, 0x44f00000    # 1920.0f

    .line 127
    div-float/2addr v8, v11

    .line 128
    mul-float/2addr v8, v3

    .line 129
    float-to-int v8, v8

    .line 130
    int-to-float v9, v9

    .line 131
    div-float/2addr v9, v10

    .line 132
    mul-float/2addr v9, v2

    .line 133
    float-to-int v9, v9

    .line 134
    int-to-float v6, v6

    .line 135
    div-float/2addr v6, v11

    .line 136
    mul-float/2addr v6, v3

    .line 137
    float-to-int v6, v6

    .line 138
    new-instance v15, Landroid/graphics/Paint;

    .line 140
    invoke-direct {v15}, Landroid/graphics/Paint;-><init>()V

    .line 143
    const/high16 v10, -0x10000

    .line 145
    invoke-virtual {v15, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 148
    int-to-float v14, v7

    .line 149
    int-to-float v13, v8

    .line 150
    add-int/2addr v7, v9

    .line 151
    int-to-float v7, v7

    .line 152
    move-object/from16 v10, p1

    .line 154
    move v11, v14

    .line 155
    move v12, v13

    .line 156
    move v9, v13

    .line 157
    move v13, v7

    .line 158
    move/from16 v16, v14

    .line 160
    move v14, v9

    .line 161
    move-object/from16 v17, v15

    .line 163
    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 166
    add-int/2addr v8, v6

    .line 167
    int-to-float v6, v8

    .line 168
    move v11, v7

    .line 169
    move v12, v9

    .line 170
    move v14, v6

    .line 171
    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 174
    move v12, v6

    .line 175
    move/from16 v13, v16

    .line 177
    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 180
    move/from16 v11, v16

    .line 182
    move v14, v9

    .line 183
    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 186
    const v8, -0xff0100

    .line 189
    invoke-virtual {v15, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 192
    move v12, v9

    .line 193
    move v13, v7

    .line 194
    move v14, v6

    .line 195
    move-object v8, v15

    .line 196
    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 199
    move v12, v6

    .line 200
    move v14, v9

    .line 201
    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 204
    :cond_2
    :goto_2
    add-int/lit8 v5, v5, 0x1

    .line 206
    goto/16 :goto_1

    .line 208
    :cond_3
    return-void
.end method

.method public final forceLayout()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->h:Z

    .line 4
    invoke-super {p0}, Landroid/view/View;->forceLayout()V

    .line 7
    return-void
.end method

.method public final bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 1
    invoke-static {}, Landroidx/constraintlayout/widget/ConstraintLayout;->g()Lo/B4;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 12

    .line 1
    new-instance v0, Lo/B4;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 2
    invoke-direct {v0, v1, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v2, -0x1

    .line 3
    iput v2, v0, Lo/B4;->a:I

    .line 4
    iput v2, v0, Lo/B4;->b:I

    const/high16 v3, -0x40800000    # -1.0f

    .line 5
    iput v3, v0, Lo/B4;->c:F

    const/4 v4, 0x1

    .line 6
    iput-boolean v4, v0, Lo/B4;->d:Z

    .line 7
    iput v2, v0, Lo/B4;->e:I

    .line 8
    iput v2, v0, Lo/B4;->f:I

    .line 9
    iput v2, v0, Lo/B4;->g:I

    .line 10
    iput v2, v0, Lo/B4;->h:I

    .line 11
    iput v2, v0, Lo/B4;->i:I

    .line 12
    iput v2, v0, Lo/B4;->j:I

    .line 13
    iput v2, v0, Lo/B4;->k:I

    .line 14
    iput v2, v0, Lo/B4;->l:I

    .line 15
    iput v2, v0, Lo/B4;->m:I

    .line 16
    iput v2, v0, Lo/B4;->n:I

    .line 17
    iput v2, v0, Lo/B4;->o:I

    .line 18
    iput v2, v0, Lo/B4;->p:I

    const/4 v5, 0x0

    .line 19
    iput v5, v0, Lo/B4;->q:I

    const/4 v6, 0x0

    .line 20
    iput v6, v0, Lo/B4;->r:F

    .line 21
    iput v2, v0, Lo/B4;->s:I

    .line 22
    iput v2, v0, Lo/B4;->t:I

    .line 23
    iput v2, v0, Lo/B4;->u:I

    .line 24
    iput v2, v0, Lo/B4;->v:I

    const/high16 v7, -0x80000000

    .line 25
    iput v7, v0, Lo/B4;->w:I

    .line 26
    iput v7, v0, Lo/B4;->x:I

    .line 27
    iput v7, v0, Lo/B4;->y:I

    .line 28
    iput v7, v0, Lo/B4;->z:I

    .line 29
    iput v7, v0, Lo/B4;->A:I

    .line 30
    iput v7, v0, Lo/B4;->B:I

    .line 31
    iput v7, v0, Lo/B4;->C:I

    .line 32
    iput v5, v0, Lo/B4;->D:I

    const/high16 v8, 0x3f000000    # 0.5f

    .line 33
    iput v8, v0, Lo/B4;->E:F

    .line 34
    iput v8, v0, Lo/B4;->F:F

    const/4 v9, 0x0

    .line 35
    iput-object v9, v0, Lo/B4;->G:Ljava/lang/String;

    .line 36
    iput v3, v0, Lo/B4;->H:F

    .line 37
    iput v3, v0, Lo/B4;->I:F

    .line 38
    iput v5, v0, Lo/B4;->J:I

    .line 39
    iput v5, v0, Lo/B4;->K:I

    .line 40
    iput v5, v0, Lo/B4;->L:I

    .line 41
    iput v5, v0, Lo/B4;->M:I

    .line 42
    iput v5, v0, Lo/B4;->N:I

    .line 43
    iput v5, v0, Lo/B4;->O:I

    .line 44
    iput v5, v0, Lo/B4;->P:I

    .line 45
    iput v5, v0, Lo/B4;->Q:I

    const/high16 v3, 0x3f800000    # 1.0f

    .line 46
    iput v3, v0, Lo/B4;->R:F

    .line 47
    iput v3, v0, Lo/B4;->S:F

    .line 48
    iput v2, v0, Lo/B4;->T:I

    .line 49
    iput v2, v0, Lo/B4;->U:I

    .line 50
    iput v2, v0, Lo/B4;->V:I

    .line 51
    iput-boolean v5, v0, Lo/B4;->W:Z

    .line 52
    iput-boolean v5, v0, Lo/B4;->X:Z

    .line 53
    iput-object v9, v0, Lo/B4;->Y:Ljava/lang/String;

    .line 54
    iput v5, v0, Lo/B4;->Z:I

    .line 55
    iput-boolean v4, v0, Lo/B4;->a0:Z

    .line 56
    iput-boolean v4, v0, Lo/B4;->b0:Z

    .line 57
    iput-boolean v5, v0, Lo/B4;->c0:Z

    .line 58
    iput-boolean v5, v0, Lo/B4;->d0:Z

    .line 59
    iput-boolean v5, v0, Lo/B4;->e0:Z

    .line 60
    iput v2, v0, Lo/B4;->f0:I

    .line 61
    iput v2, v0, Lo/B4;->g0:I

    .line 62
    iput v2, v0, Lo/B4;->h0:I

    .line 63
    iput v2, v0, Lo/B4;->i0:I

    .line 64
    iput v7, v0, Lo/B4;->j0:I

    .line 65
    iput v7, v0, Lo/B4;->k0:I

    .line 66
    iput v8, v0, Lo/B4;->l0:F

    .line 67
    new-instance v3, Lo/L4;

    invoke-direct {v3}, Lo/L4;-><init>()V

    iput-object v3, v0, Lo/B4;->p0:Lo/L4;

    .line 68
    sget-object v3, Lo/ad;->b:[I

    invoke-virtual {v1, p1, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 69
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v1

    move v3, v5

    :goto_0
    if-ge v3, v1, :cond_1

    .line 70
    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v7

    .line 71
    sget-object v8, Lo/A4;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v8, v7}, Landroid/util/SparseIntArray;->get(I)I

    move-result v8

    .line 72
    const-string v9, "ConstraintLayout"

    const/4 v10, 0x2

    const/4 v11, -0x2

    packed-switch v8, :pswitch_data_0

    packed-switch v8, :pswitch_data_1

    packed-switch v8, :pswitch_data_2

    goto/16 :goto_1

    .line 73
    :pswitch_0
    iget-boolean v8, v0, Lo/B4;->d:Z

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    iput-boolean v7, v0, Lo/B4;->d:Z

    goto/16 :goto_1

    .line 74
    :pswitch_1
    iget v8, v0, Lo/B4;->Z:I

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    iput v7, v0, Lo/B4;->Z:I

    goto/16 :goto_1

    .line 75
    :pswitch_2
    invoke-static {v0, p1, v7, v4}, Lo/K4;->g(Ljava/lang/Object;Landroid/content/res/TypedArray;II)V

    goto/16 :goto_1

    .line 76
    :pswitch_3
    invoke-static {v0, p1, v7, v5}, Lo/K4;->g(Ljava/lang/Object;Landroid/content/res/TypedArray;II)V

    goto/16 :goto_1

    .line 77
    :pswitch_4
    iget v8, v0, Lo/B4;->C:I

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    iput v7, v0, Lo/B4;->C:I

    goto/16 :goto_1

    .line 78
    :pswitch_5
    iget v8, v0, Lo/B4;->D:I

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    iput v7, v0, Lo/B4;->D:I

    goto/16 :goto_1

    .line 79
    :pswitch_6
    iget v8, v0, Lo/B4;->o:I

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    iput v8, v0, Lo/B4;->o:I

    if-ne v8, v2, :cond_0

    .line 80
    invoke-virtual {p1, v7, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    iput v7, v0, Lo/B4;->o:I

    goto/16 :goto_1

    .line 81
    :pswitch_7
    iget v8, v0, Lo/B4;->n:I

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    iput v8, v0, Lo/B4;->n:I

    if-ne v8, v2, :cond_0

    .line 82
    invoke-virtual {p1, v7, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    iput v7, v0, Lo/B4;->n:I

    goto/16 :goto_1

    .line 83
    :pswitch_8
    invoke-virtual {p1, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lo/B4;->Y:Ljava/lang/String;

    goto/16 :goto_1

    .line 84
    :pswitch_9
    iget v8, v0, Lo/B4;->U:I

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v7

    iput v7, v0, Lo/B4;->U:I

    goto/16 :goto_1

    .line 85
    :pswitch_a
    iget v8, v0, Lo/B4;->T:I

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v7

    iput v7, v0, Lo/B4;->T:I

    goto/16 :goto_1

    .line 86
    :pswitch_b
    invoke-virtual {p1, v7, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    iput v7, v0, Lo/B4;->K:I

    goto/16 :goto_1

    .line 87
    :pswitch_c
    invoke-virtual {p1, v7, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    iput v7, v0, Lo/B4;->J:I

    goto/16 :goto_1

    .line 88
    :pswitch_d
    iget v8, v0, Lo/B4;->I:F

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v7

    iput v7, v0, Lo/B4;->I:F

    goto/16 :goto_1

    .line 89
    :pswitch_e
    iget v8, v0, Lo/B4;->H:F

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v7

    iput v7, v0, Lo/B4;->H:F

    goto/16 :goto_1

    .line 90
    :pswitch_f
    invoke-virtual {p1, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lo/K4;->h(Lo/B4;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 91
    :pswitch_10
    iget v8, v0, Lo/B4;->S:F

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v7

    iput v7, v0, Lo/B4;->S:F

    .line 92
    iput v10, v0, Lo/B4;->M:I

    goto/16 :goto_1

    .line 93
    :pswitch_11
    :try_start_0
    iget v8, v0, Lo/B4;->Q:I

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v8

    iput v8, v0, Lo/B4;->Q:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 94
    :catch_0
    iget v8, v0, Lo/B4;->Q:I

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    if-ne v7, v11, :cond_0

    .line 95
    iput v11, v0, Lo/B4;->Q:I

    goto/16 :goto_1

    .line 96
    :pswitch_12
    :try_start_1
    iget v8, v0, Lo/B4;->O:I

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v8

    iput v8, v0, Lo/B4;->O:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    .line 97
    :catch_1
    iget v8, v0, Lo/B4;->O:I

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    if-ne v7, v11, :cond_0

    .line 98
    iput v11, v0, Lo/B4;->O:I

    goto/16 :goto_1

    .line 99
    :pswitch_13
    iget v8, v0, Lo/B4;->R:F

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v7

    iput v7, v0, Lo/B4;->R:F

    .line 100
    iput v10, v0, Lo/B4;->L:I

    goto/16 :goto_1

    .line 101
    :pswitch_14
    :try_start_2
    iget v8, v0, Lo/B4;->P:I

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v8

    iput v8, v0, Lo/B4;->P:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_1

    .line 102
    :catch_2
    iget v8, v0, Lo/B4;->P:I

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    if-ne v7, v11, :cond_0

    .line 103
    iput v11, v0, Lo/B4;->P:I

    goto/16 :goto_1

    .line 104
    :pswitch_15
    :try_start_3
    iget v8, v0, Lo/B4;->N:I

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v8

    iput v8, v0, Lo/B4;->N:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_1

    .line 105
    :catch_3
    iget v8, v0, Lo/B4;->N:I

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    if-ne v7, v11, :cond_0

    .line 106
    iput v11, v0, Lo/B4;->N:I

    goto/16 :goto_1

    .line 107
    :pswitch_16
    invoke-virtual {p1, v7, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    iput v7, v0, Lo/B4;->M:I

    if-ne v7, v4, :cond_0

    .line 108
    const-string v7, "layout_constraintHeight_default=\"wrap\" is deprecated.\nUse layout_height=\"WRAP_CONTENT\" and layout_constrainedHeight=\"true\" instead."

    invoke-static {v9, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 109
    :pswitch_17
    invoke-virtual {p1, v7, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    iput v7, v0, Lo/B4;->L:I

    if-ne v7, v4, :cond_0

    .line 110
    const-string v7, "layout_constraintWidth_default=\"wrap\" is deprecated.\nUse layout_width=\"WRAP_CONTENT\" and layout_constrainedWidth=\"true\" instead."

    invoke-static {v9, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 111
    :pswitch_18
    iget v8, v0, Lo/B4;->F:F

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v7

    iput v7, v0, Lo/B4;->F:F

    goto/16 :goto_1

    .line 112
    :pswitch_19
    iget v8, v0, Lo/B4;->E:F

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v7

    iput v7, v0, Lo/B4;->E:F

    goto/16 :goto_1

    .line 113
    :pswitch_1a
    iget-boolean v8, v0, Lo/B4;->X:Z

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    iput-boolean v7, v0, Lo/B4;->X:Z

    goto/16 :goto_1

    .line 114
    :pswitch_1b
    iget-boolean v8, v0, Lo/B4;->W:Z

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    iput-boolean v7, v0, Lo/B4;->W:Z

    goto/16 :goto_1

    .line 115
    :pswitch_1c
    iget v8, v0, Lo/B4;->B:I

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    iput v7, v0, Lo/B4;->B:I

    goto/16 :goto_1

    .line 116
    :pswitch_1d
    iget v8, v0, Lo/B4;->A:I

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    iput v7, v0, Lo/B4;->A:I

    goto/16 :goto_1

    .line 117
    :pswitch_1e
    iget v8, v0, Lo/B4;->z:I

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    iput v7, v0, Lo/B4;->z:I

    goto/16 :goto_1

    .line 118
    :pswitch_1f
    iget v8, v0, Lo/B4;->y:I

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    iput v7, v0, Lo/B4;->y:I

    goto/16 :goto_1

    .line 119
    :pswitch_20
    iget v8, v0, Lo/B4;->x:I

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    iput v7, v0, Lo/B4;->x:I

    goto/16 :goto_1

    .line 120
    :pswitch_21
    iget v8, v0, Lo/B4;->w:I

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    iput v7, v0, Lo/B4;->w:I

    goto/16 :goto_1

    .line 121
    :pswitch_22
    iget v8, v0, Lo/B4;->v:I

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    iput v8, v0, Lo/B4;->v:I

    if-ne v8, v2, :cond_0

    .line 122
    invoke-virtual {p1, v7, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    iput v7, v0, Lo/B4;->v:I

    goto/16 :goto_1

    .line 123
    :pswitch_23
    iget v8, v0, Lo/B4;->u:I

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    iput v8, v0, Lo/B4;->u:I

    if-ne v8, v2, :cond_0

    .line 124
    invoke-virtual {p1, v7, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    iput v7, v0, Lo/B4;->u:I

    goto/16 :goto_1

    .line 125
    :pswitch_24
    iget v8, v0, Lo/B4;->t:I

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    iput v8, v0, Lo/B4;->t:I

    if-ne v8, v2, :cond_0

    .line 126
    invoke-virtual {p1, v7, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    iput v7, v0, Lo/B4;->t:I

    goto/16 :goto_1

    .line 127
    :pswitch_25
    iget v8, v0, Lo/B4;->s:I

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    iput v8, v0, Lo/B4;->s:I

    if-ne v8, v2, :cond_0

    .line 128
    invoke-virtual {p1, v7, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    iput v7, v0, Lo/B4;->s:I

    goto/16 :goto_1

    .line 129
    :pswitch_26
    iget v8, v0, Lo/B4;->m:I

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    iput v8, v0, Lo/B4;->m:I

    if-ne v8, v2, :cond_0

    .line 130
    invoke-virtual {p1, v7, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    iput v7, v0, Lo/B4;->m:I

    goto/16 :goto_1

    .line 131
    :pswitch_27
    iget v8, v0, Lo/B4;->l:I

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    iput v8, v0, Lo/B4;->l:I

    if-ne v8, v2, :cond_0

    .line 132
    invoke-virtual {p1, v7, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    iput v7, v0, Lo/B4;->l:I

    goto/16 :goto_1

    .line 133
    :pswitch_28
    iget v8, v0, Lo/B4;->k:I

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    iput v8, v0, Lo/B4;->k:I

    if-ne v8, v2, :cond_0

    .line 134
    invoke-virtual {p1, v7, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    iput v7, v0, Lo/B4;->k:I

    goto/16 :goto_1

    .line 135
    :pswitch_29
    iget v8, v0, Lo/B4;->j:I

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    iput v8, v0, Lo/B4;->j:I

    if-ne v8, v2, :cond_0

    .line 136
    invoke-virtual {p1, v7, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    iput v7, v0, Lo/B4;->j:I

    goto/16 :goto_1

    .line 137
    :pswitch_2a
    iget v8, v0, Lo/B4;->i:I

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    iput v8, v0, Lo/B4;->i:I

    if-ne v8, v2, :cond_0

    .line 138
    invoke-virtual {p1, v7, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    iput v7, v0, Lo/B4;->i:I

    goto/16 :goto_1

    .line 139
    :pswitch_2b
    iget v8, v0, Lo/B4;->h:I

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    iput v8, v0, Lo/B4;->h:I

    if-ne v8, v2, :cond_0

    .line 140
    invoke-virtual {p1, v7, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    iput v7, v0, Lo/B4;->h:I

    goto/16 :goto_1

    .line 141
    :pswitch_2c
    iget v8, v0, Lo/B4;->g:I

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    iput v8, v0, Lo/B4;->g:I

    if-ne v8, v2, :cond_0

    .line 142
    invoke-virtual {p1, v7, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    iput v7, v0, Lo/B4;->g:I

    goto/16 :goto_1

    .line 143
    :pswitch_2d
    iget v8, v0, Lo/B4;->f:I

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    iput v8, v0, Lo/B4;->f:I

    if-ne v8, v2, :cond_0

    .line 144
    invoke-virtual {p1, v7, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    iput v7, v0, Lo/B4;->f:I

    goto :goto_1

    .line 145
    :pswitch_2e
    iget v8, v0, Lo/B4;->e:I

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    iput v8, v0, Lo/B4;->e:I

    if-ne v8, v2, :cond_0

    .line 146
    invoke-virtual {p1, v7, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    iput v7, v0, Lo/B4;->e:I

    goto :goto_1

    .line 147
    :pswitch_2f
    iget v8, v0, Lo/B4;->c:F

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v7

    iput v7, v0, Lo/B4;->c:F

    goto :goto_1

    .line 148
    :pswitch_30
    iget v8, v0, Lo/B4;->b:I

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v7

    iput v7, v0, Lo/B4;->b:I

    goto :goto_1

    .line 149
    :pswitch_31
    iget v8, v0, Lo/B4;->a:I

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v7

    iput v7, v0, Lo/B4;->a:I

    goto :goto_1

    .line 150
    :pswitch_32
    iget v8, v0, Lo/B4;->r:F

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v7

    const/high16 v8, 0x43b40000    # 360.0f

    rem-float/2addr v7, v8

    iput v7, v0, Lo/B4;->r:F

    cmpg-float v9, v7, v6

    if-gez v9, :cond_0

    sub-float v7, v8, v7

    rem-float/2addr v7, v8

    .line 151
    iput v7, v0, Lo/B4;->r:F

    goto :goto_1

    .line 152
    :pswitch_33
    iget v8, v0, Lo/B4;->q:I

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    iput v7, v0, Lo/B4;->q:I

    goto :goto_1

    .line 153
    :pswitch_34
    iget v8, v0, Lo/B4;->p:I

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    iput v8, v0, Lo/B4;->p:I

    if-ne v8, v2, :cond_0

    .line 154
    invoke-virtual {p1, v7, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    iput v7, v0, Lo/B4;->p:I

    goto :goto_1

    .line 155
    :pswitch_35
    iget v8, v0, Lo/B4;->V:I

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    iput v7, v0, Lo/B4;->V:I

    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 156
    :cond_1
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 157
    invoke-virtual {v0}, Lo/B4;->a()V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2c
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x40
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 8

    .line 158
    new-instance v0, Lo/B4;

    .line 159
    invoke-direct {v0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v1, -0x1

    .line 160
    iput v1, v0, Lo/B4;->a:I

    .line 161
    iput v1, v0, Lo/B4;->b:I

    const/high16 v2, -0x40800000    # -1.0f

    .line 162
    iput v2, v0, Lo/B4;->c:F

    const/4 v3, 0x1

    .line 163
    iput-boolean v3, v0, Lo/B4;->d:Z

    .line 164
    iput v1, v0, Lo/B4;->e:I

    .line 165
    iput v1, v0, Lo/B4;->f:I

    .line 166
    iput v1, v0, Lo/B4;->g:I

    .line 167
    iput v1, v0, Lo/B4;->h:I

    .line 168
    iput v1, v0, Lo/B4;->i:I

    .line 169
    iput v1, v0, Lo/B4;->j:I

    .line 170
    iput v1, v0, Lo/B4;->k:I

    .line 171
    iput v1, v0, Lo/B4;->l:I

    .line 172
    iput v1, v0, Lo/B4;->m:I

    .line 173
    iput v1, v0, Lo/B4;->n:I

    .line 174
    iput v1, v0, Lo/B4;->o:I

    .line 175
    iput v1, v0, Lo/B4;->p:I

    const/4 v4, 0x0

    .line 176
    iput v4, v0, Lo/B4;->q:I

    const/4 v5, 0x0

    .line 177
    iput v5, v0, Lo/B4;->r:F

    .line 178
    iput v1, v0, Lo/B4;->s:I

    .line 179
    iput v1, v0, Lo/B4;->t:I

    .line 180
    iput v1, v0, Lo/B4;->u:I

    .line 181
    iput v1, v0, Lo/B4;->v:I

    const/high16 v5, -0x80000000

    .line 182
    iput v5, v0, Lo/B4;->w:I

    .line 183
    iput v5, v0, Lo/B4;->x:I

    .line 184
    iput v5, v0, Lo/B4;->y:I

    .line 185
    iput v5, v0, Lo/B4;->z:I

    .line 186
    iput v5, v0, Lo/B4;->A:I

    .line 187
    iput v5, v0, Lo/B4;->B:I

    .line 188
    iput v5, v0, Lo/B4;->C:I

    .line 189
    iput v4, v0, Lo/B4;->D:I

    const/high16 v6, 0x3f000000    # 0.5f

    .line 190
    iput v6, v0, Lo/B4;->E:F

    .line 191
    iput v6, v0, Lo/B4;->F:F

    const/4 v7, 0x0

    .line 192
    iput-object v7, v0, Lo/B4;->G:Ljava/lang/String;

    .line 193
    iput v2, v0, Lo/B4;->H:F

    .line 194
    iput v2, v0, Lo/B4;->I:F

    .line 195
    iput v4, v0, Lo/B4;->J:I

    .line 196
    iput v4, v0, Lo/B4;->K:I

    .line 197
    iput v4, v0, Lo/B4;->L:I

    .line 198
    iput v4, v0, Lo/B4;->M:I

    .line 199
    iput v4, v0, Lo/B4;->N:I

    .line 200
    iput v4, v0, Lo/B4;->O:I

    .line 201
    iput v4, v0, Lo/B4;->P:I

    .line 202
    iput v4, v0, Lo/B4;->Q:I

    const/high16 v2, 0x3f800000    # 1.0f

    .line 203
    iput v2, v0, Lo/B4;->R:F

    .line 204
    iput v2, v0, Lo/B4;->S:F

    .line 205
    iput v1, v0, Lo/B4;->T:I

    .line 206
    iput v1, v0, Lo/B4;->U:I

    .line 207
    iput v1, v0, Lo/B4;->V:I

    .line 208
    iput-boolean v4, v0, Lo/B4;->W:Z

    .line 209
    iput-boolean v4, v0, Lo/B4;->X:Z

    .line 210
    iput-object v7, v0, Lo/B4;->Y:Ljava/lang/String;

    .line 211
    iput v4, v0, Lo/B4;->Z:I

    .line 212
    iput-boolean v3, v0, Lo/B4;->a0:Z

    .line 213
    iput-boolean v3, v0, Lo/B4;->b0:Z

    .line 214
    iput-boolean v4, v0, Lo/B4;->c0:Z

    .line 215
    iput-boolean v4, v0, Lo/B4;->d0:Z

    .line 216
    iput-boolean v4, v0, Lo/B4;->e0:Z

    .line 217
    iput v1, v0, Lo/B4;->f0:I

    .line 218
    iput v1, v0, Lo/B4;->g0:I

    .line 219
    iput v1, v0, Lo/B4;->h0:I

    .line 220
    iput v1, v0, Lo/B4;->i0:I

    .line 221
    iput v5, v0, Lo/B4;->j0:I

    .line 222
    iput v5, v0, Lo/B4;->k0:I

    .line 223
    iput v6, v0, Lo/B4;->l0:F

    .line 224
    new-instance v1, Lo/L4;

    invoke-direct {v1}, Lo/L4;-><init>()V

    iput-object v1, v0, Lo/B4;->p0:Lo/L4;

    .line 225
    instance-of v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v1, :cond_0

    .line 226
    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 227
    iget v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 228
    iget v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 229
    iget v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 230
    iget v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 231
    invoke-virtual {v1}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 232
    invoke-virtual {v1}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 233
    :cond_0
    instance-of v1, p1, Lo/B4;

    if-nez v1, :cond_1

    goto/16 :goto_0

    .line 234
    :cond_1
    check-cast p1, Lo/B4;

    .line 235
    iget v1, p1, Lo/B4;->a:I

    iput v1, v0, Lo/B4;->a:I

    .line 236
    iget v1, p1, Lo/B4;->b:I

    iput v1, v0, Lo/B4;->b:I

    .line 237
    iget v1, p1, Lo/B4;->c:F

    iput v1, v0, Lo/B4;->c:F

    .line 238
    iget-boolean v1, p1, Lo/B4;->d:Z

    iput-boolean v1, v0, Lo/B4;->d:Z

    .line 239
    iget v1, p1, Lo/B4;->e:I

    iput v1, v0, Lo/B4;->e:I

    .line 240
    iget v1, p1, Lo/B4;->f:I

    iput v1, v0, Lo/B4;->f:I

    .line 241
    iget v1, p1, Lo/B4;->g:I

    iput v1, v0, Lo/B4;->g:I

    .line 242
    iget v1, p1, Lo/B4;->h:I

    iput v1, v0, Lo/B4;->h:I

    .line 243
    iget v1, p1, Lo/B4;->i:I

    iput v1, v0, Lo/B4;->i:I

    .line 244
    iget v1, p1, Lo/B4;->j:I

    iput v1, v0, Lo/B4;->j:I

    .line 245
    iget v1, p1, Lo/B4;->k:I

    iput v1, v0, Lo/B4;->k:I

    .line 246
    iget v1, p1, Lo/B4;->l:I

    iput v1, v0, Lo/B4;->l:I

    .line 247
    iget v1, p1, Lo/B4;->m:I

    iput v1, v0, Lo/B4;->m:I

    .line 248
    iget v1, p1, Lo/B4;->n:I

    iput v1, v0, Lo/B4;->n:I

    .line 249
    iget v1, p1, Lo/B4;->o:I

    iput v1, v0, Lo/B4;->o:I

    .line 250
    iget v1, p1, Lo/B4;->p:I

    iput v1, v0, Lo/B4;->p:I

    .line 251
    iget v1, p1, Lo/B4;->q:I

    iput v1, v0, Lo/B4;->q:I

    .line 252
    iget v1, p1, Lo/B4;->r:F

    iput v1, v0, Lo/B4;->r:F

    .line 253
    iget v1, p1, Lo/B4;->s:I

    iput v1, v0, Lo/B4;->s:I

    .line 254
    iget v1, p1, Lo/B4;->t:I

    iput v1, v0, Lo/B4;->t:I

    .line 255
    iget v1, p1, Lo/B4;->u:I

    iput v1, v0, Lo/B4;->u:I

    .line 256
    iget v1, p1, Lo/B4;->v:I

    iput v1, v0, Lo/B4;->v:I

    .line 257
    iget v1, p1, Lo/B4;->w:I

    iput v1, v0, Lo/B4;->w:I

    .line 258
    iget v1, p1, Lo/B4;->x:I

    iput v1, v0, Lo/B4;->x:I

    .line 259
    iget v1, p1, Lo/B4;->y:I

    iput v1, v0, Lo/B4;->y:I

    .line 260
    iget v1, p1, Lo/B4;->z:I

    iput v1, v0, Lo/B4;->z:I

    .line 261
    iget v1, p1, Lo/B4;->A:I

    iput v1, v0, Lo/B4;->A:I

    .line 262
    iget v1, p1, Lo/B4;->B:I

    iput v1, v0, Lo/B4;->B:I

    .line 263
    iget v1, p1, Lo/B4;->C:I

    iput v1, v0, Lo/B4;->C:I

    .line 264
    iget v1, p1, Lo/B4;->D:I

    iput v1, v0, Lo/B4;->D:I

    .line 265
    iget v1, p1, Lo/B4;->E:F

    iput v1, v0, Lo/B4;->E:F

    .line 266
    iget v1, p1, Lo/B4;->F:F

    iput v1, v0, Lo/B4;->F:F

    .line 267
    iget-object v1, p1, Lo/B4;->G:Ljava/lang/String;

    iput-object v1, v0, Lo/B4;->G:Ljava/lang/String;

    .line 268
    iget v1, p1, Lo/B4;->H:F

    iput v1, v0, Lo/B4;->H:F

    .line 269
    iget v1, p1, Lo/B4;->I:F

    iput v1, v0, Lo/B4;->I:F

    .line 270
    iget v1, p1, Lo/B4;->J:I

    iput v1, v0, Lo/B4;->J:I

    .line 271
    iget v1, p1, Lo/B4;->K:I

    iput v1, v0, Lo/B4;->K:I

    .line 272
    iget-boolean v1, p1, Lo/B4;->W:Z

    iput-boolean v1, v0, Lo/B4;->W:Z

    .line 273
    iget-boolean v1, p1, Lo/B4;->X:Z

    iput-boolean v1, v0, Lo/B4;->X:Z

    .line 274
    iget v1, p1, Lo/B4;->L:I

    iput v1, v0, Lo/B4;->L:I

    .line 275
    iget v1, p1, Lo/B4;->M:I

    iput v1, v0, Lo/B4;->M:I

    .line 276
    iget v1, p1, Lo/B4;->N:I

    iput v1, v0, Lo/B4;->N:I

    .line 277
    iget v1, p1, Lo/B4;->P:I

    iput v1, v0, Lo/B4;->P:I

    .line 278
    iget v1, p1, Lo/B4;->O:I

    iput v1, v0, Lo/B4;->O:I

    .line 279
    iget v1, p1, Lo/B4;->Q:I

    iput v1, v0, Lo/B4;->Q:I

    .line 280
    iget v1, p1, Lo/B4;->R:F

    iput v1, v0, Lo/B4;->R:F

    .line 281
    iget v1, p1, Lo/B4;->S:F

    iput v1, v0, Lo/B4;->S:F

    .line 282
    iget v1, p1, Lo/B4;->T:I

    iput v1, v0, Lo/B4;->T:I

    .line 283
    iget v1, p1, Lo/B4;->U:I

    iput v1, v0, Lo/B4;->U:I

    .line 284
    iget v1, p1, Lo/B4;->V:I

    iput v1, v0, Lo/B4;->V:I

    .line 285
    iget-boolean v1, p1, Lo/B4;->a0:Z

    iput-boolean v1, v0, Lo/B4;->a0:Z

    .line 286
    iget-boolean v1, p1, Lo/B4;->b0:Z

    iput-boolean v1, v0, Lo/B4;->b0:Z

    .line 287
    iget-boolean v1, p1, Lo/B4;->c0:Z

    iput-boolean v1, v0, Lo/B4;->c0:Z

    .line 288
    iget-boolean v1, p1, Lo/B4;->d0:Z

    iput-boolean v1, v0, Lo/B4;->d0:Z

    .line 289
    iget v1, p1, Lo/B4;->f0:I

    iput v1, v0, Lo/B4;->f0:I

    .line 290
    iget v1, p1, Lo/B4;->g0:I

    iput v1, v0, Lo/B4;->g0:I

    .line 291
    iget v1, p1, Lo/B4;->h0:I

    iput v1, v0, Lo/B4;->h0:I

    .line 292
    iget v1, p1, Lo/B4;->i0:I

    iput v1, v0, Lo/B4;->i0:I

    .line 293
    iget v1, p1, Lo/B4;->j0:I

    iput v1, v0, Lo/B4;->j0:I

    .line 294
    iget v1, p1, Lo/B4;->k0:I

    iput v1, v0, Lo/B4;->k0:I

    .line 295
    iget v1, p1, Lo/B4;->l0:F

    iput v1, v0, Lo/B4;->l0:F

    .line 296
    iget-object v1, p1, Lo/B4;->Y:Ljava/lang/String;

    iput-object v1, v0, Lo/B4;->Y:Ljava/lang/String;

    .line 297
    iget v1, p1, Lo/B4;->Z:I

    iput v1, v0, Lo/B4;->Z:I

    .line 298
    iget-object p1, p1, Lo/B4;->p0:Lo/L4;

    iput-object p1, v0, Lo/B4;->p0:Lo/L4;

    :goto_0
    return-object v0
.end method

.method public getMaxHeight()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->g:I

    .line 3
    return v0
.end method

.method public getMaxWidth()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->f:I

    .line 3
    return v0
.end method

.method public getMinHeight()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->e:I

    .line 3
    return v0
.end method

.method public getMinWidth()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:I

    .line 3
    return v0
.end method

.method public getOptimizationLevel()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->c:Lo/M4;

    .line 3
    iget v0, v0, Lo/M4;->D0:I

    .line 5
    return v0
.end method

.method public getSceneString()Ljava/lang/String;
    .locals 9

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->c:Lo/M4;

    .line 8
    iget-object v2, v1, Lo/L4;->j:Ljava/lang/String;

    .line 10
    const/4 v3, -0x1

    .line 11
    if-nez v2, :cond_1

    .line 13
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    .line 16
    move-result v2

    .line 17
    if-eq v2, v3, :cond_0

    .line 19
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 22
    move-result-object v4

    .line 23
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 26
    move-result-object v4

    .line 27
    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    .line 30
    move-result-object v2

    .line 31
    iput-object v2, v1, Lo/L4;->j:Ljava/lang/String;

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const-string v2, "parent"

    .line 36
    iput-object v2, v1, Lo/L4;->j:Ljava/lang/String;

    .line 38
    :cond_1
    :goto_0
    iget-object v2, v1, Lo/L4;->h0:Ljava/lang/String;

    .line 40
    const-string v4, " setDebugName "

    .line 42
    const-string v5, "ConstraintLayout"

    .line 44
    if-nez v2, :cond_2

    .line 46
    iget-object v2, v1, Lo/L4;->j:Ljava/lang/String;

    .line 48
    iput-object v2, v1, Lo/L4;->h0:Ljava/lang/String;

    .line 50
    new-instance v2, Ljava/lang/StringBuilder;

    .line 52
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 55
    iget-object v6, v1, Lo/L4;->h0:Ljava/lang/String;

    .line 57
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    move-result-object v2

    .line 64
    invoke-static {v5, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    :cond_2
    iget-object v2, v1, Lo/M4;->q0:Ljava/util/ArrayList;

    .line 69
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 72
    move-result-object v2

    .line 73
    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 76
    move-result v6

    .line 77
    if-eqz v6, :cond_5

    .line 79
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 82
    move-result-object v6

    .line 83
    check-cast v6, Lo/L4;

    .line 85
    iget-object v7, v6, Lo/L4;->f0:Landroid/view/View;

    .line 87
    if-eqz v7, :cond_3

    .line 89
    iget-object v8, v6, Lo/L4;->j:Ljava/lang/String;

    .line 91
    if-nez v8, :cond_4

    .line 93
    invoke-virtual {v7}, Landroid/view/View;->getId()I

    .line 96
    move-result v7

    .line 97
    if-eq v7, v3, :cond_4

    .line 99
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 102
    move-result-object v8

    .line 103
    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 106
    move-result-object v8

    .line 107
    invoke-virtual {v8, v7}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    .line 110
    move-result-object v7

    .line 111
    iput-object v7, v6, Lo/L4;->j:Ljava/lang/String;

    .line 113
    :cond_4
    iget-object v7, v6, Lo/L4;->h0:Ljava/lang/String;

    .line 115
    if-nez v7, :cond_3

    .line 117
    iget-object v7, v6, Lo/L4;->j:Ljava/lang/String;

    .line 119
    iput-object v7, v6, Lo/L4;->h0:Ljava/lang/String;

    .line 121
    new-instance v7, Ljava/lang/StringBuilder;

    .line 123
    invoke-direct {v7, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 126
    iget-object v6, v6, Lo/L4;->h0:Ljava/lang/String;

    .line 128
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 134
    move-result-object v6

    .line 135
    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    goto :goto_1

    .line 139
    :cond_5
    invoke-virtual {v1, v0}, Lo/M4;->n(Ljava/lang/StringBuilder;)V

    .line 142
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 145
    move-result-object v0

    .line 146
    return-object v0
.end method

.method public final h(Landroid/view/View;)Lo/L4;
    .locals 1

    .line 1
    if-ne p1, p0, :cond_0

    .line 3
    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->c:Lo/M4;

    .line 5
    return-object p1

    .line 6
    :cond_0
    if-eqz p1, :cond_2

    .line 8
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 11
    move-result-object v0

    .line 12
    instance-of v0, v0, Lo/B4;

    .line 14
    if-eqz v0, :cond_1

    .line 16
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 19
    move-result-object p1

    .line 20
    check-cast p1, Lo/B4;

    .line 22
    iget-object p1, p1, Lo/B4;->p0:Lo/L4;

    .line 24
    return-object p1

    .line 25
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 36
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 39
    move-result-object v0

    .line 40
    instance-of v0, v0, Lo/B4;

    .line 42
    if-eqz v0, :cond_2

    .line 44
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 47
    move-result-object p1

    .line 48
    check-cast p1, Lo/B4;

    .line 50
    iget-object p1, p1, Lo/B4;->p0:Lo/L4;

    .line 52
    return-object p1

    .line 53
    :cond_2
    const/4 p1, 0x0

    .line 54
    return-object p1
.end method

.method public final i(Landroid/util/AttributeSet;I)V
    .locals 7

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->c:Lo/M4;

    .line 3
    iput-object p0, v0, Lo/L4;->f0:Landroid/view/View;

    .line 5
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->o:Lo/C4;

    .line 7
    iput-object v1, v0, Lo/M4;->u0:Lo/C4;

    .line 9
    iget-object v2, v0, Lo/M4;->s0:Lo/O5;

    .line 11
    iput-object v1, v2, Lo/O5;->f:Lo/C4;

    .line 13
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->a:Landroid/util/SparseArray;

    .line 15
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    .line 18
    move-result v2

    .line 19
    invoke-virtual {v1, v2, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 22
    const/4 v1, 0x0

    .line 23
    iput-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->j:Lo/K4;

    .line 25
    if-eqz p1, :cond_8

    .line 27
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 30
    move-result-object v2

    .line 31
    sget-object v3, Lo/ad;->b:[I

    .line 33
    const/4 v4, 0x0

    .line 34
    invoke-virtual {v2, p1, v3, p2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    .line 41
    move-result p2

    .line 42
    move v2, v4

    .line 43
    :goto_0
    if-ge v2, p2, :cond_7

    .line 45
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    .line 48
    move-result v3

    .line 49
    const/16 v5, 0x10

    .line 51
    if-ne v3, v5, :cond_0

    .line 53
    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:I

    .line 55
    invoke-virtual {p1, v3, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    .line 58
    move-result v3

    .line 59
    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:I

    .line 61
    goto :goto_2

    .line 62
    :cond_0
    const/16 v5, 0x11

    .line 64
    if-ne v3, v5, :cond_1

    .line 66
    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->e:I

    .line 68
    invoke-virtual {p1, v3, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    .line 71
    move-result v3

    .line 72
    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->e:I

    .line 74
    goto :goto_2

    .line 75
    :cond_1
    const/16 v5, 0xe

    .line 77
    if-ne v3, v5, :cond_2

    .line 79
    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->f:I

    .line 81
    invoke-virtual {p1, v3, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    .line 84
    move-result v3

    .line 85
    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->f:I

    .line 87
    goto :goto_2

    .line 88
    :cond_2
    const/16 v5, 0xf

    .line 90
    if-ne v3, v5, :cond_3

    .line 92
    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->g:I

    .line 94
    invoke-virtual {p1, v3, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    .line 97
    move-result v3

    .line 98
    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->g:I

    .line 100
    goto :goto_2

    .line 101
    :cond_3
    const/16 v5, 0x71

    .line 103
    if-ne v3, v5, :cond_4

    .line 105
    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->i:I

    .line 107
    invoke-virtual {p1, v3, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 110
    move-result v3

    .line 111
    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->i:I

    .line 113
    goto :goto_2

    .line 114
    :cond_4
    const/16 v5, 0x38

    .line 116
    if-ne v3, v5, :cond_5

    .line 118
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 121
    move-result v3

    .line 122
    if-eqz v3, :cond_6

    .line 124
    :try_start_0
    invoke-virtual {p0, v3}, Landroidx/constraintlayout/widget/ConstraintLayout;->j(I)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    goto :goto_2

    .line 128
    :catch_0
    iput-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->k:Lo/H1;

    .line 130
    goto :goto_2

    .line 131
    :cond_5
    const/16 v5, 0x22

    .line 133
    if-ne v3, v5, :cond_6

    .line 135
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 138
    move-result v3

    .line 139
    :try_start_1
    new-instance v5, Lo/K4;

    .line 141
    invoke-direct {v5}, Lo/K4;-><init>()V

    .line 144
    iput-object v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->j:Lo/K4;

    .line 146
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 149
    move-result-object v6

    .line 150
    invoke-virtual {v5, v6, v3}, Lo/K4;->e(Landroid/content/Context;I)V
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 153
    goto :goto_1

    .line 154
    :catch_1
    iput-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->j:Lo/K4;

    .line 156
    :goto_1
    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->l:I

    .line 158
    :cond_6
    :goto_2
    add-int/lit8 v2, v2, 0x1

    .line 160
    goto :goto_0

    .line 161
    :cond_7
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 164
    :cond_8
    iget p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->i:I

    .line 166
    iput p1, v0, Lo/M4;->D0:I

    .line 168
    const/16 p1, 0x200

    .line 170
    invoke-virtual {v0, p1}, Lo/M4;->W(I)Z

    .line 173
    move-result p1

    .line 174
    sput-boolean p1, Lo/ba;->q:Z

    .line 176
    return-void
.end method

.method public final j(I)V
    .locals 12

    .line 1
    new-instance v0, Lo/H1;

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v1

    .line 7
    const/4 v2, 0x7

    .line 8
    const/4 v3, 0x0

    .line 9
    invoke-direct {v0, v2, v3}, Lo/H1;-><init>(IZ)V

    .line 12
    new-instance v2, Landroid/util/SparseArray;

    .line 14
    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    .line 17
    iput-object v2, v0, Lo/H1;->b:Ljava/lang/Object;

    .line 19
    new-instance v2, Landroid/util/SparseArray;

    .line 21
    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    .line 24
    iput-object v2, v0, Lo/H1;->c:Ljava/lang/Object;

    .line 26
    const-string v2, "Error parsing resource: "

    .line 28
    const-string v3, "ConstraintLayoutStates"

    .line 30
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 33
    move-result-object v4

    .line 34
    invoke-virtual {v4, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    .line 37
    move-result-object v4

    .line 38
    :try_start_0
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 41
    move-result v5

    .line 42
    const/4 v6, 0x0

    .line 43
    :goto_0
    const/4 v7, 0x1

    .line 44
    if-eq v5, v7, :cond_6

    .line 46
    const/4 v8, 0x2

    .line 47
    if-eq v5, v8, :cond_0

    .line 49
    goto/16 :goto_3

    .line 51
    :cond_0
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 54
    move-result-object v5

    .line 55
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    .line 58
    move-result v9

    .line 59
    const/4 v10, 0x4

    .line 60
    const/4 v11, 0x3

    .line 61
    sparse-switch v9, :sswitch_data_0

    .line 64
    goto :goto_1

    .line 65
    :sswitch_0
    const-string v7, "Variant"

    .line 67
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 70
    move-result v5

    .line 71
    if-eqz v5, :cond_1

    .line 73
    move v7, v11

    .line 74
    goto :goto_2

    .line 75
    :catch_0
    move-exception v1

    .line 76
    goto :goto_4

    .line 77
    :catch_1
    move-exception v1

    .line 78
    goto/16 :goto_5

    .line 80
    :sswitch_1
    const-string v7, "layoutDescription"

    .line 82
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 85
    move-result v5

    .line 86
    if-eqz v5, :cond_1

    .line 88
    const/4 v7, 0x0

    .line 89
    goto :goto_2

    .line 90
    :sswitch_2
    const-string v9, "StateSet"

    .line 92
    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 95
    move-result v5

    .line 96
    if-eqz v5, :cond_1

    .line 98
    goto :goto_2

    .line 99
    :sswitch_3
    const-string v7, "State"

    .line 101
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 104
    move-result v5

    .line 105
    if-eqz v5, :cond_1

    .line 107
    move v7, v8

    .line 108
    goto :goto_2

    .line 109
    :sswitch_4
    const-string v7, "ConstraintSet"

    .line 111
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 114
    move-result v5

    .line 115
    if-eqz v5, :cond_1

    .line 117
    move v7, v10

    .line 118
    goto :goto_2

    .line 119
    :cond_1
    :goto_1
    const/4 v7, -0x1

    .line 120
    :goto_2
    if-eq v7, v8, :cond_4

    .line 122
    if-eq v7, v11, :cond_3

    .line 124
    if-eq v7, v10, :cond_2

    .line 126
    goto :goto_3

    .line 127
    :cond_2
    invoke-virtual {v0, v1, v4}, Lo/H1;->I(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)V

    .line 130
    goto :goto_3

    .line 131
    :cond_3
    new-instance v5, Lo/D4;

    .line 133
    invoke-direct {v5, v1, v4}, Lo/D4;-><init>(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)V

    .line 136
    if-eqz v6, :cond_5

    .line 138
    iget-object v7, v6, Lo/ab;->a:Ljava/lang/Object;

    .line 140
    check-cast v7, Ljava/util/ArrayList;

    .line 142
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 145
    goto :goto_3

    .line 146
    :cond_4
    new-instance v5, Lo/ab;

    .line 148
    invoke-direct {v5, v1, v4}, Lo/ab;-><init>(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)V

    .line 151
    iget-object v6, v0, Lo/H1;->b:Ljava/lang/Object;

    .line 153
    check-cast v6, Landroid/util/SparseArray;

    .line 155
    iget v7, v5, Lo/ab;->b:I

    .line 157
    invoke-virtual {v6, v7, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 160
    move-object v6, v5

    .line 161
    :cond_5
    :goto_3
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 164
    move-result v5
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    goto :goto_0

    .line 166
    :goto_4
    new-instance v4, Ljava/lang/StringBuilder;

    .line 168
    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 171
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 174
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 177
    move-result-object p1

    .line 178
    invoke-static {v3, p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 181
    goto :goto_6

    .line 182
    :goto_5
    new-instance v4, Ljava/lang/StringBuilder;

    .line 184
    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 187
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 190
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 193
    move-result-object p1

    .line 194
    invoke-static {v3, p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 197
    :cond_6
    :goto_6
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->k:Lo/H1;

    .line 199
    return-void

    nop

    .line 201
    :sswitch_data_0
    .sparse-switch
        -0x50764adb -> :sswitch_4
        0x4c7d471 -> :sswitch_3
        0x526c4e31 -> :sswitch_2
        0x62ce7272 -> :sswitch_1
        0x7155a865 -> :sswitch_0
    .end sparse-switch
.end method

.method public final k(Lo/M4;III)V
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    .line 1
    invoke-static/range {p3 .. p3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 2
    invoke-static/range {p3 .. p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 3
    invoke-static/range {p4 .. p4}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    .line 4
    invoke-static/range {p4 .. p4}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    .line 5
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    move-result v7

    const/4 v8, 0x0

    invoke-static {v8, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 6
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    add-int v10, v7, v9

    .line 7
    invoke-direct/range {p0 .. p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getPaddingWidth()I

    move-result v11

    .line 8
    iget-object v12, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->o:Lo/C4;

    iput v7, v12, Lo/C4;->b:I

    .line 9
    iput v9, v12, Lo/C4;->c:I

    .line 10
    iput v11, v12, Lo/C4;->d:I

    .line 11
    iput v10, v12, Lo/C4;->e:I

    move/from16 v9, p3

    .line 12
    iput v9, v12, Lo/C4;->f:I

    move/from16 v9, p4

    .line 13
    iput v9, v12, Lo/C4;->g:I

    .line 14
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingStart()I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 15
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingEnd()I

    move-result v13

    invoke-static {v8, v13}, Ljava/lang/Math;->max(II)I

    move-result v13

    const/4 v14, 0x1

    if-gtz v9, :cond_1

    if-lez v13, :cond_0

    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    goto :goto_1

    .line 17
    :cond_1
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v15

    iget v15, v15, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v16, 0x400000

    and-int v15, v15, v16

    if-eqz v15, :cond_2

    .line 18
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v15

    if-ne v14, v15, :cond_2

    move v9, v13

    :cond_2
    :goto_1
    sub-int/2addr v4, v11

    sub-int/2addr v6, v10

    .line 19
    iget v10, v12, Lo/C4;->e:I

    .line 20
    iget v11, v12, Lo/C4;->d:I

    .line 21
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v12

    const/high16 v15, 0x40000000    # 2.0f

    const/high16 v13, -0x80000000

    if-eq v3, v13, :cond_6

    if-eqz v3, :cond_4

    if-eq v3, v15, :cond_3

    move/from16 v17, v8

    goto :goto_4

    .line 22
    :cond_3
    iget v14, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->f:I

    sub-int/2addr v14, v11

    invoke-static {v14, v4}, Ljava/lang/Math;->min(II)I

    move-result v14

    move/from16 v17, v14

    const/4 v14, 0x1

    goto :goto_4

    :cond_4
    if-nez v12, :cond_5

    .line 23
    iget v14, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:I

    invoke-static {v8, v14}, Ljava/lang/Math;->max(II)I

    move-result v14

    :goto_2
    move/from16 v17, v14

    :goto_3
    const/4 v14, 0x2

    goto :goto_4

    :cond_5
    move/from16 v17, v8

    goto :goto_3

    :cond_6
    if-nez v12, :cond_7

    .line 24
    iget v14, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:I

    invoke-static {v8, v14}, Ljava/lang/Math;->max(II)I

    move-result v14

    goto :goto_2

    :cond_7
    move/from16 v17, v4

    goto :goto_3

    :goto_4
    if-eq v5, v13, :cond_b

    if-eqz v5, :cond_9

    if-eq v5, v15, :cond_8

    move v13, v8

    :goto_5
    const/4 v12, 0x1

    goto :goto_8

    .line 25
    :cond_8
    iget v12, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->g:I

    sub-int/2addr v12, v10

    invoke-static {v12, v6}, Ljava/lang/Math;->min(II)I

    move-result v12

    move v13, v12

    goto :goto_5

    :cond_9
    if-nez v12, :cond_a

    .line 26
    iget v12, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->e:I

    invoke-static {v8, v12}, Ljava/lang/Math;->max(II)I

    move-result v12

    :goto_6
    move v13, v12

    :goto_7
    const/4 v12, 0x2

    goto :goto_8

    :cond_a
    move v13, v8

    goto :goto_7

    :cond_b
    if-nez v12, :cond_c

    .line 27
    iget v12, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->e:I

    invoke-static {v8, v12}, Ljava/lang/Math;->max(II)I

    move-result v12

    goto :goto_6

    :cond_c
    move v13, v6

    goto :goto_7

    .line 28
    :goto_8
    invoke-virtual/range {p1 .. p1}, Lo/L4;->q()I

    move-result v15

    iget-object v8, v1, Lo/M4;->s0:Lo/O5;

    move/from16 v19, v6

    move/from16 v6, v17

    if-ne v6, v15, :cond_d

    invoke-virtual/range {p1 .. p1}, Lo/L4;->k()I

    move-result v15

    if-eq v13, v15, :cond_e

    :cond_d
    const/4 v15, 0x1

    goto :goto_a

    :cond_e
    :goto_9
    const/4 v15, 0x0

    goto :goto_b

    .line 29
    :goto_a
    iput-boolean v15, v8, Lo/O5;->c:Z

    goto :goto_9

    .line 30
    :goto_b
    iput v15, v1, Lo/L4;->Y:I

    .line 31
    iput v15, v1, Lo/L4;->Z:I

    .line 32
    iget v15, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->f:I

    sub-int/2addr v15, v11

    move-object/from16 v17, v8

    .line 33
    iget-object v8, v1, Lo/L4;->C:[I

    move/from16 v20, v4

    const/4 v4, 0x0

    aput v15, v8, v4

    .line 34
    iget v15, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->g:I

    sub-int/2addr v15, v10

    const/16 v18, 0x1

    .line 35
    aput v15, v8, v18

    .line 36
    iput v4, v1, Lo/L4;->b0:I

    .line 37
    iput v4, v1, Lo/L4;->c0:I

    .line 38
    invoke-virtual {v1, v14}, Lo/L4;->M(I)V

    .line 39
    invoke-virtual {v1, v6}, Lo/L4;->O(I)V

    .line 40
    invoke-virtual {v1, v12}, Lo/L4;->N(I)V

    .line 41
    invoke-virtual {v1, v13}, Lo/L4;->L(I)V

    .line 42
    iget v6, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:I

    sub-int/2addr v6, v11

    if-gez v6, :cond_f

    .line 43
    iput v4, v1, Lo/L4;->b0:I

    goto :goto_c

    .line 44
    :cond_f
    iput v6, v1, Lo/L4;->b0:I

    .line 45
    :goto_c
    iget v6, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->e:I

    sub-int/2addr v6, v10

    if-gez v6, :cond_10

    .line 46
    iput v4, v1, Lo/L4;->c0:I

    goto :goto_d

    .line 47
    :cond_10
    iput v6, v1, Lo/L4;->c0:I

    .line 48
    :goto_d
    iput v9, v1, Lo/M4;->x0:I

    .line 49
    iput v7, v1, Lo/M4;->y0:I

    .line 50
    iget-object v4, v1, Lo/M4;->r0:Lo/s2;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    iget-object v6, v1, Lo/M4;->u0:Lo/C4;

    .line 52
    iget-object v7, v1, Lo/M4;->q0:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 53
    invoke-virtual/range {p1 .. p1}, Lo/L4;->q()I

    move-result v9

    .line 54
    invoke-virtual/range {p1 .. p1}, Lo/L4;->k()I

    move-result v10

    const/16 v11, 0x80

    .line 55
    invoke-static {v2, v11}, Lo/x9;->w(II)Z

    move-result v11

    const/16 v12, 0x40

    if-nez v11, :cond_12

    .line 56
    invoke-static {v2, v12}, Lo/x9;->w(II)Z

    move-result v2

    if-eqz v2, :cond_11

    goto :goto_e

    :cond_11
    const/4 v2, 0x0

    goto :goto_f

    :cond_12
    :goto_e
    const/4 v2, 0x1

    :goto_f
    const/4 v13, 0x3

    if-eqz v2, :cond_1b

    const/4 v15, 0x0

    :goto_10
    if-ge v15, v7, :cond_1b

    .line 57
    iget-object v12, v1, Lo/M4;->q0:Ljava/util/ArrayList;

    invoke-virtual {v12, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lo/L4;

    .line 58
    iget-object v14, v12, Lo/L4;->p0:[I

    const/16 v18, 0x0

    .line 59
    aget v0, v14, v18

    if-ne v0, v13, :cond_13

    const/4 v0, 0x1

    :goto_11
    const/16 v22, 0x1

    goto :goto_12

    :cond_13
    const/4 v0, 0x0

    goto :goto_11

    .line 60
    :goto_12
    aget v14, v14, v22

    if-ne v14, v13, :cond_14

    const/4 v14, 0x1

    goto :goto_13

    :cond_14
    const/4 v14, 0x0

    :goto_13
    if-eqz v0, :cond_15

    if-eqz v14, :cond_15

    .line 61
    iget v0, v12, Lo/L4;->W:F

    const/4 v14, 0x0

    cmpl-float v0, v0, v14

    if-lez v0, :cond_15

    const/4 v0, 0x1

    goto :goto_14

    :cond_15
    const/4 v0, 0x0

    .line 62
    :goto_14
    invoke-virtual {v12}, Lo/L4;->x()Z

    move-result v14

    if-eqz v14, :cond_17

    if-eqz v0, :cond_17

    :cond_16
    :goto_15
    const/high16 v0, 0x40000000    # 2.0f

    const/4 v2, 0x0

    goto :goto_16

    .line 63
    :cond_17
    invoke-virtual {v12}, Lo/L4;->y()Z

    move-result v14

    if-eqz v14, :cond_18

    if-eqz v0, :cond_18

    goto :goto_15

    .line 64
    :cond_18
    instance-of v0, v12, Lo/v7;

    if-eqz v0, :cond_19

    goto :goto_15

    .line 65
    :cond_19
    invoke-virtual {v12}, Lo/L4;->x()Z

    move-result v0

    if-nez v0, :cond_16

    .line 66
    invoke-virtual {v12}, Lo/L4;->y()Z

    move-result v0

    if-eqz v0, :cond_1a

    goto :goto_15

    :cond_1a
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p0

    const/16 v12, 0x40

    goto :goto_10

    :cond_1b
    const/high16 v0, 0x40000000    # 2.0f

    :goto_16
    if-ne v3, v0, :cond_1c

    if-eq v5, v0, :cond_1d

    :cond_1c
    if-eqz v11, :cond_1e

    :cond_1d
    const/4 v0, 0x1

    goto :goto_17

    :cond_1e
    const/4 v0, 0x0

    :goto_17
    and-int/2addr v0, v2

    if-eqz v0, :cond_3d

    const/4 v12, 0x0

    .line 67
    aget v14, v8, v12

    move/from16 v12, v20

    .line 68
    invoke-static {v14, v12}, Ljava/lang/Math;->min(II)I

    move-result v12

    const/4 v14, 0x1

    .line 69
    aget v8, v8, v14

    move/from16 v15, v19

    .line 70
    invoke-static {v8, v15}, Ljava/lang/Math;->min(II)I

    move-result v8

    const/high16 v15, 0x40000000    # 2.0f

    if-ne v3, v15, :cond_1f

    .line 71
    invoke-virtual/range {p1 .. p1}, Lo/L4;->q()I

    move-result v13

    if-eq v13, v12, :cond_1f

    .line 72
    invoke-virtual {v1, v12}, Lo/L4;->O(I)V

    .line 73
    iget-object v12, v1, Lo/M4;->s0:Lo/O5;

    iput-boolean v14, v12, Lo/O5;->b:Z

    :cond_1f
    if-ne v5, v15, :cond_20

    .line 74
    invoke-virtual/range {p1 .. p1}, Lo/L4;->k()I

    move-result v12

    if-eq v12, v8, :cond_20

    .line 75
    invoke-virtual {v1, v8}, Lo/L4;->L(I)V

    .line 76
    iget-object v8, v1, Lo/M4;->s0:Lo/O5;

    iput-boolean v14, v8, Lo/O5;->b:Z

    :cond_20
    if-ne v3, v15, :cond_36

    if-ne v5, v15, :cond_36

    move-object/from16 v8, v17

    .line 77
    iget-boolean v12, v8, Lo/O5;->b:Z

    .line 78
    iget-object v13, v8, Lo/O5;->a:Lo/M4;

    if-nez v12, :cond_22

    iget-boolean v12, v8, Lo/O5;->c:Z

    if-eqz v12, :cond_21

    goto :goto_18

    :cond_21
    const/4 v15, 0x0

    goto :goto_1a

    .line 79
    :cond_22
    :goto_18
    iget-object v12, v13, Lo/M4;->q0:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_19
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_23

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lo/L4;

    .line 80
    invoke-virtual {v14}, Lo/L4;->h()V

    const/4 v15, 0x0

    .line 81
    iput-boolean v15, v14, Lo/L4;->a:Z

    .line 82
    iget-object v2, v14, Lo/L4;->d:Lo/c9;

    invoke-virtual {v2}, Lo/c9;->n()V

    .line 83
    iget-object v2, v14, Lo/L4;->e:Lo/oh;

    invoke-virtual {v2}, Lo/oh;->m()V

    goto :goto_19

    :cond_23
    const/4 v15, 0x0

    .line 84
    invoke-virtual {v13}, Lo/L4;->h()V

    .line 85
    iput-boolean v15, v13, Lo/L4;->a:Z

    .line 86
    iget-object v2, v13, Lo/L4;->d:Lo/c9;

    invoke-virtual {v2}, Lo/c9;->n()V

    .line 87
    iget-object v2, v13, Lo/L4;->e:Lo/oh;

    invoke-virtual {v2}, Lo/oh;->m()V

    .line 88
    iput-boolean v15, v8, Lo/O5;->c:Z

    .line 89
    :goto_1a
    iget-object v2, v8, Lo/O5;->d:Lo/M4;

    invoke-virtual {v8, v2}, Lo/O5;->b(Lo/M4;)V

    .line 90
    iput v15, v13, Lo/L4;->Y:I

    .line 91
    iput v15, v13, Lo/L4;->Z:I

    .line 92
    invoke-virtual {v13, v15}, Lo/L4;->j(I)I

    move-result v2

    const/4 v12, 0x1

    .line 93
    invoke-virtual {v13, v12}, Lo/L4;->j(I)I

    move-result v14

    .line 94
    iget-boolean v12, v8, Lo/O5;->b:Z

    if-eqz v12, :cond_24

    .line 95
    invoke-virtual {v8}, Lo/O5;->c()V

    .line 96
    :cond_24
    invoke-virtual {v13}, Lo/L4;->r()I

    move-result v12

    .line 97
    invoke-virtual {v13}, Lo/L4;->s()I

    move-result v15

    move/from16 v20, v0

    .line 98
    iget-object v0, v13, Lo/L4;->d:Lo/c9;

    iget-object v0, v0, Lo/mi;->h:Lo/P5;

    invoke-virtual {v0, v12}, Lo/P5;->d(I)V

    .line 99
    iget-object v0, v13, Lo/L4;->e:Lo/oh;

    iget-object v0, v0, Lo/mi;->h:Lo/P5;

    invoke-virtual {v0, v15}, Lo/P5;->d(I)V

    .line 100
    invoke-virtual {v8}, Lo/O5;->g()V

    .line 101
    iget-object v0, v8, Lo/O5;->e:Ljava/util/ArrayList;

    move-object/from16 v22, v6

    const/4 v6, 0x2

    if-eq v2, v6, :cond_27

    if-ne v14, v6, :cond_25

    goto :goto_1b

    :cond_25
    move/from16 v23, v9

    :cond_26
    const/4 v6, 0x1

    goto :goto_1d

    :cond_27
    :goto_1b
    if-eqz v11, :cond_29

    .line 102
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_28
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_29

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lo/mi;

    .line 103
    invoke-virtual/range {v23 .. v23}, Lo/mi;->k()Z

    move-result v23

    if-nez v23, :cond_28

    const/4 v11, 0x0

    :cond_29
    if-eqz v11, :cond_2a

    const/4 v6, 0x2

    if-ne v2, v6, :cond_2a

    const/4 v6, 0x1

    .line 104
    invoke-virtual {v13, v6}, Lo/L4;->M(I)V

    move/from16 v23, v9

    const/4 v6, 0x0

    .line 105
    invoke-virtual {v8, v13, v6}, Lo/O5;->d(Lo/M4;I)I

    move-result v9

    invoke-virtual {v13, v9}, Lo/L4;->O(I)V

    .line 106
    iget-object v6, v13, Lo/L4;->d:Lo/c9;

    iget-object v6, v6, Lo/mi;->e:Lo/a6;

    invoke-virtual {v13}, Lo/L4;->q()I

    move-result v9

    invoke-virtual {v6, v9}, Lo/a6;->d(I)V

    goto :goto_1c

    :cond_2a
    move/from16 v23, v9

    :goto_1c
    if-eqz v11, :cond_26

    const/4 v6, 0x2

    if-ne v14, v6, :cond_26

    const/4 v6, 0x1

    .line 107
    invoke-virtual {v13, v6}, Lo/L4;->N(I)V

    .line 108
    invoke-virtual {v8, v13, v6}, Lo/O5;->d(Lo/M4;I)I

    move-result v9

    invoke-virtual {v13, v9}, Lo/L4;->L(I)V

    .line 109
    iget-object v9, v13, Lo/L4;->e:Lo/oh;

    iget-object v9, v9, Lo/mi;->e:Lo/a6;

    invoke-virtual {v13}, Lo/L4;->k()I

    move-result v11

    invoke-virtual {v9, v11}, Lo/a6;->d(I)V

    .line 110
    :goto_1d
    iget-object v9, v13, Lo/L4;->p0:[I

    move/from16 v24, v10

    const/4 v11, 0x0

    aget v10, v9, v11

    if-eq v10, v6, :cond_2c

    const/4 v6, 0x4

    if-ne v10, v6, :cond_2b

    goto :goto_1e

    :cond_2b
    const/4 v6, 0x0

    goto :goto_1f

    .line 111
    :cond_2c
    :goto_1e
    invoke-virtual {v13}, Lo/L4;->q()I

    move-result v6

    add-int/2addr v6, v12

    .line 112
    iget-object v10, v13, Lo/L4;->d:Lo/c9;

    iget-object v10, v10, Lo/mi;->i:Lo/P5;

    invoke-virtual {v10, v6}, Lo/P5;->d(I)V

    .line 113
    iget-object v10, v13, Lo/L4;->d:Lo/c9;

    iget-object v10, v10, Lo/mi;->e:Lo/a6;

    sub-int/2addr v6, v12

    invoke-virtual {v10, v6}, Lo/a6;->d(I)V

    .line 114
    invoke-virtual {v8}, Lo/O5;->g()V

    const/4 v6, 0x1

    .line 115
    aget v9, v9, v6

    if-eq v9, v6, :cond_2d

    const/4 v6, 0x4

    if-ne v9, v6, :cond_2e

    .line 116
    :cond_2d
    invoke-virtual {v13}, Lo/L4;->k()I

    move-result v6

    add-int/2addr v6, v15

    .line 117
    iget-object v9, v13, Lo/L4;->e:Lo/oh;

    iget-object v9, v9, Lo/mi;->i:Lo/P5;

    invoke-virtual {v9, v6}, Lo/P5;->d(I)V

    .line 118
    iget-object v9, v13, Lo/L4;->e:Lo/oh;

    iget-object v9, v9, Lo/mi;->e:Lo/a6;

    sub-int/2addr v6, v15

    invoke-virtual {v9, v6}, Lo/a6;->d(I)V

    .line 119
    :cond_2e
    invoke-virtual {v8}, Lo/O5;->g()V

    const/4 v6, 0x1

    .line 120
    :goto_1f
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_20
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_30

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lo/mi;

    .line 121
    iget-object v10, v9, Lo/mi;->b:Lo/L4;

    if-ne v10, v13, :cond_2f

    iget-boolean v10, v9, Lo/mi;->g:Z

    if-nez v10, :cond_2f

    goto :goto_20

    .line 122
    :cond_2f
    invoke-virtual {v9}, Lo/mi;->e()V

    goto :goto_20

    .line 123
    :cond_30
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_31
    :goto_21
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_35

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lo/mi;

    if-nez v6, :cond_32

    .line 124
    iget-object v9, v8, Lo/mi;->b:Lo/L4;

    if-ne v9, v13, :cond_32

    goto :goto_21

    .line 125
    :cond_32
    iget-object v9, v8, Lo/mi;->h:Lo/P5;

    iget-boolean v9, v9, Lo/P5;->j:Z

    if-nez v9, :cond_33

    :goto_22
    const/4 v0, 0x0

    goto :goto_23

    .line 126
    :cond_33
    iget-object v9, v8, Lo/mi;->i:Lo/P5;

    iget-boolean v9, v9, Lo/P5;->j:Z

    if-nez v9, :cond_34

    instance-of v9, v8, Lo/Y8;

    if-nez v9, :cond_34

    goto :goto_22

    .line 127
    :cond_34
    iget-object v9, v8, Lo/mi;->e:Lo/a6;

    iget-boolean v9, v9, Lo/P5;->j:Z

    if-nez v9, :cond_31

    instance-of v9, v8, Lo/C3;

    if-nez v9, :cond_31

    instance-of v8, v8, Lo/Y8;

    if-nez v8, :cond_31

    goto :goto_22

    :cond_35
    const/4 v0, 0x1

    .line 128
    :goto_23
    invoke-virtual {v13, v2}, Lo/L4;->M(I)V

    .line 129
    invoke-virtual {v13, v14}, Lo/L4;->N(I)V

    move v6, v0

    const/high16 v0, 0x40000000    # 2.0f

    const/4 v2, 0x2

    goto/16 :goto_27

    :cond_36
    move/from16 v20, v0

    move-object/from16 v22, v6

    move/from16 v23, v9

    move/from16 v24, v10

    move-object/from16 v8, v17

    .line 130
    iget-boolean v0, v8, Lo/O5;->b:Z

    .line 131
    iget-object v2, v8, Lo/O5;->a:Lo/M4;

    if-eqz v0, :cond_38

    .line 132
    iget-object v0, v2, Lo/M4;->q0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_24
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_37

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lo/L4;

    .line 133
    invoke-virtual {v6}, Lo/L4;->h()V

    const/4 v9, 0x0

    .line 134
    iput-boolean v9, v6, Lo/L4;->a:Z

    .line 135
    iget-object v10, v6, Lo/L4;->d:Lo/c9;

    iget-object v12, v10, Lo/mi;->e:Lo/a6;

    iput-boolean v9, v12, Lo/P5;->j:Z

    .line 136
    iput-boolean v9, v10, Lo/mi;->g:Z

    .line 137
    invoke-virtual {v10}, Lo/c9;->n()V

    .line 138
    iget-object v6, v6, Lo/L4;->e:Lo/oh;

    iget-object v10, v6, Lo/mi;->e:Lo/a6;

    iput-boolean v9, v10, Lo/P5;->j:Z

    .line 139
    iput-boolean v9, v6, Lo/mi;->g:Z

    .line 140
    invoke-virtual {v6}, Lo/oh;->m()V

    goto :goto_24

    :cond_37
    const/4 v9, 0x0

    .line 141
    invoke-virtual {v2}, Lo/L4;->h()V

    .line 142
    iput-boolean v9, v2, Lo/L4;->a:Z

    .line 143
    iget-object v0, v2, Lo/L4;->d:Lo/c9;

    iget-object v6, v0, Lo/mi;->e:Lo/a6;

    iput-boolean v9, v6, Lo/P5;->j:Z

    .line 144
    iput-boolean v9, v0, Lo/mi;->g:Z

    .line 145
    invoke-virtual {v0}, Lo/c9;->n()V

    .line 146
    iget-object v0, v2, Lo/L4;->e:Lo/oh;

    iget-object v6, v0, Lo/mi;->e:Lo/a6;

    iput-boolean v9, v6, Lo/P5;->j:Z

    .line 147
    iput-boolean v9, v0, Lo/mi;->g:Z

    .line 148
    invoke-virtual {v0}, Lo/oh;->m()V

    .line 149
    invoke-virtual {v8}, Lo/O5;->c()V

    goto :goto_25

    :cond_38
    const/4 v9, 0x0

    .line 150
    :goto_25
    iget-object v0, v8, Lo/O5;->d:Lo/M4;

    invoke-virtual {v8, v0}, Lo/O5;->b(Lo/M4;)V

    .line 151
    iput v9, v2, Lo/L4;->Y:I

    .line 152
    iput v9, v2, Lo/L4;->Z:I

    .line 153
    iget-object v0, v2, Lo/L4;->d:Lo/c9;

    iget-object v0, v0, Lo/mi;->h:Lo/P5;

    invoke-virtual {v0, v9}, Lo/P5;->d(I)V

    .line 154
    iget-object v0, v2, Lo/L4;->e:Lo/oh;

    iget-object v0, v0, Lo/mi;->h:Lo/P5;

    invoke-virtual {v0, v9}, Lo/P5;->d(I)V

    const/high16 v0, 0x40000000    # 2.0f

    if-ne v3, v0, :cond_39

    .line 155
    invoke-virtual {v1, v9, v11}, Lo/M4;->T(IZ)Z

    move-result v2

    move v6, v2

    const/4 v2, 0x1

    goto :goto_26

    :cond_39
    const/4 v2, 0x0

    const/4 v6, 0x1

    :goto_26
    if-ne v5, v0, :cond_3a

    const/4 v8, 0x1

    .line 156
    invoke-virtual {v1, v8, v11}, Lo/M4;->T(IZ)Z

    move-result v9

    and-int/2addr v6, v9

    add-int/lit8 v2, v2, 0x1

    :cond_3a
    :goto_27
    if-eqz v6, :cond_3e

    if-ne v3, v0, :cond_3b

    const/4 v3, 0x1

    goto :goto_28

    :cond_3b
    const/4 v3, 0x0

    :goto_28
    if-ne v5, v0, :cond_3c

    const/4 v0, 0x1

    goto :goto_29

    :cond_3c
    const/4 v0, 0x0

    .line 157
    :goto_29
    invoke-virtual {v1, v3, v0}, Lo/M4;->P(ZZ)V

    goto :goto_2a

    :cond_3d
    move/from16 v20, v0

    move-object/from16 v22, v6

    move/from16 v23, v9

    move/from16 v24, v10

    const/4 v2, 0x0

    const/4 v6, 0x0

    :cond_3e
    :goto_2a
    if-eqz v6, :cond_3f

    const/4 v0, 0x2

    if-eq v2, v0, :cond_67

    .line 158
    :cond_3f
    iget v0, v1, Lo/M4;->D0:I

    if-lez v7, :cond_4e

    .line 159
    iget-object v2, v1, Lo/M4;->q0:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/16 v3, 0x40

    .line 160
    invoke-virtual {v1, v3}, Lo/M4;->W(I)Z

    move-result v3

    .line 161
    iget-object v5, v1, Lo/M4;->u0:Lo/C4;

    const/4 v15, 0x0

    :goto_2b
    if-ge v15, v2, :cond_4c

    .line 162
    iget-object v6, v1, Lo/M4;->q0:Ljava/util/ArrayList;

    invoke-virtual {v6, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lo/L4;

    .line 163
    instance-of v8, v6, Lo/X8;

    if-eqz v8, :cond_40

    :goto_2c
    const/4 v8, 0x3

    const/4 v10, 0x0

    goto/16 :goto_31

    .line 164
    :cond_40
    instance-of v8, v6, Lo/Q2;

    if-eqz v8, :cond_41

    goto :goto_2c

    .line 165
    :cond_41
    iget-boolean v8, v6, Lo/L4;->F:Z

    if-eqz v8, :cond_42

    goto :goto_2c

    :cond_42
    if-eqz v3, :cond_43

    .line 166
    iget-object v8, v6, Lo/L4;->d:Lo/c9;

    if-eqz v8, :cond_43

    iget-object v9, v6, Lo/L4;->e:Lo/oh;

    if-eqz v9, :cond_43

    iget-object v8, v8, Lo/mi;->e:Lo/a6;

    iget-boolean v8, v8, Lo/P5;->j:Z

    if-eqz v8, :cond_43

    iget-object v8, v9, Lo/mi;->e:Lo/a6;

    iget-boolean v8, v8, Lo/P5;->j:Z

    if-eqz v8, :cond_43

    goto :goto_2c

    :cond_43
    const/4 v8, 0x0

    .line 167
    invoke-virtual {v6, v8}, Lo/L4;->j(I)I

    move-result v9

    const/4 v8, 0x1

    .line 168
    invoke-virtual {v6, v8}, Lo/L4;->j(I)I

    move-result v10

    const/4 v11, 0x3

    if-ne v9, v11, :cond_44

    .line 169
    iget v12, v6, Lo/L4;->r:I

    if-eq v12, v8, :cond_44

    if-ne v10, v11, :cond_44

    iget v11, v6, Lo/L4;->s:I

    if-eq v11, v8, :cond_44

    move v11, v8

    goto :goto_2d

    :cond_44
    const/4 v11, 0x0

    :goto_2d
    if-nez v11, :cond_49

    .line 170
    invoke-virtual {v1, v8}, Lo/M4;->W(I)Z

    move-result v12

    if-eqz v12, :cond_49

    instance-of v8, v6, Lo/v7;

    if-nez v8, :cond_49

    const/4 v8, 0x3

    if-ne v9, v8, :cond_45

    .line 171
    iget v12, v6, Lo/L4;->r:I

    if-nez v12, :cond_45

    if-eq v10, v8, :cond_45

    .line 172
    invoke-virtual {v6}, Lo/L4;->x()Z

    move-result v12

    if-nez v12, :cond_45

    const/4 v11, 0x1

    :cond_45
    if-ne v10, v8, :cond_46

    .line 173
    iget v12, v6, Lo/L4;->s:I

    if-nez v12, :cond_46

    if-eq v9, v8, :cond_46

    .line 174
    invoke-virtual {v6}, Lo/L4;->x()Z

    move-result v12

    if-nez v12, :cond_46

    const/4 v11, 0x1

    :cond_46
    if-eq v9, v8, :cond_48

    if-ne v10, v8, :cond_47

    goto :goto_2f

    :cond_47
    :goto_2e
    const/4 v10, 0x0

    goto :goto_30

    .line 175
    :cond_48
    :goto_2f
    iget v9, v6, Lo/L4;->W:F

    const/4 v10, 0x0

    cmpl-float v9, v9, v10

    if-lez v9, :cond_4a

    const/4 v11, 0x1

    goto :goto_30

    :cond_49
    const/4 v8, 0x3

    goto :goto_2e

    :cond_4a
    :goto_30
    if-eqz v11, :cond_4b

    goto :goto_31

    :cond_4b
    const/4 v9, 0x0

    .line 176
    invoke-virtual {v4, v9, v5, v6}, Lo/s2;->x(ILo/C4;Lo/L4;)Z

    :goto_31
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_2b

    .line 177
    :cond_4c
    iget-object v2, v5, Lo/C4;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 178
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    const/4 v15, 0x0

    :goto_32
    if-ge v15, v3, :cond_4d

    .line 179
    invoke-virtual {v2, v15}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    add-int/lit8 v15, v15, 0x1

    goto :goto_32

    .line 180
    :cond_4d
    iget-object v2, v2, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_4e

    const/4 v15, 0x0

    :goto_33
    if-ge v15, v3, :cond_4e

    .line 181
    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lo/z4;

    .line 182
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/lit8 v15, v15, 0x1

    goto :goto_33

    .line 183
    :cond_4e
    invoke-virtual {v4, v1}, Lo/s2;->D(Lo/M4;)V

    .line 184
    iget-object v2, v4, Lo/s2;->b:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    move/from16 v5, v23

    move/from16 v6, v24

    const/4 v15, 0x0

    if-lez v7, :cond_4f

    .line 185
    invoke-virtual {v4, v1, v15, v5, v6}, Lo/s2;->B(Lo/M4;III)V

    :cond_4f
    if-lez v3, :cond_66

    .line 186
    iget-object v7, v1, Lo/L4;->p0:[I

    aget v8, v7, v15

    const/4 v9, 0x2

    if-ne v8, v9, :cond_50

    const/4 v8, 0x1

    :goto_34
    const/4 v10, 0x1

    goto :goto_35

    :cond_50
    move v8, v15

    goto :goto_34

    .line 187
    :goto_35
    aget v7, v7, v10

    if-ne v7, v9, :cond_51

    const/4 v7, 0x1

    goto :goto_36

    :cond_51
    move v7, v15

    .line 188
    :goto_36
    invoke-virtual/range {p1 .. p1}, Lo/L4;->q()I

    move-result v9

    .line 189
    iget-object v10, v4, Lo/s2;->d:Ljava/lang/Object;

    check-cast v10, Lo/M4;

    iget v11, v10, Lo/L4;->b0:I

    .line 190
    invoke-static {v9, v11}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 191
    invoke-virtual/range {p1 .. p1}, Lo/L4;->k()I

    move-result v11

    .line 192
    iget v10, v10, Lo/L4;->c0:I

    .line 193
    invoke-static {v11, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    move v11, v15

    move v12, v11

    :goto_37
    if-ge v11, v3, :cond_57

    .line 194
    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lo/L4;

    .line 195
    instance-of v15, v14, Lo/v7;

    if-nez v15, :cond_52

    move/from16 v16, v0

    move-object/from16 v1, v22

    goto/16 :goto_39

    .line 196
    :cond_52
    invoke-virtual {v14}, Lo/L4;->q()I

    move-result v15

    .line 197
    invoke-virtual {v14}, Lo/L4;->k()I

    move-result v13

    move/from16 v16, v0

    move-object/from16 v1, v22

    const/4 v0, 0x1

    .line 198
    invoke-virtual {v4, v0, v1, v14}, Lo/s2;->x(ILo/C4;Lo/L4;)Z

    move-result v19

    or-int v0, v12, v19

    .line 199
    invoke-virtual {v14}, Lo/L4;->q()I

    move-result v12

    move/from16 v19, v0

    .line 200
    invoke-virtual {v14}, Lo/L4;->k()I

    move-result v0

    if-eq v12, v15, :cond_54

    .line 201
    invoke-virtual {v14, v12}, Lo/L4;->O(I)V

    if-eqz v8, :cond_53

    .line 202
    invoke-virtual {v14}, Lo/L4;->r()I

    move-result v12

    .line 203
    iget v15, v14, Lo/L4;->U:I

    add-int/2addr v12, v15

    if-le v12, v9, :cond_53

    .line 204
    invoke-virtual {v14}, Lo/L4;->r()I

    move-result v12

    iget v15, v14, Lo/L4;->U:I

    add-int/2addr v12, v15

    const/4 v15, 0x4

    .line 205
    invoke-virtual {v14, v15}, Lo/L4;->i(I)Lo/x4;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lo/x4;->e()I

    move-result v15

    add-int/2addr v15, v12

    .line 206
    invoke-static {v9, v15}, Ljava/lang/Math;->max(II)I

    move-result v9

    :cond_53
    const/4 v15, 0x1

    goto :goto_38

    :cond_54
    move/from16 v15, v19

    :goto_38
    if-eq v0, v13, :cond_56

    .line 207
    invoke-virtual {v14, v0}, Lo/L4;->L(I)V

    if-eqz v7, :cond_55

    .line 208
    invoke-virtual {v14}, Lo/L4;->s()I

    move-result v0

    .line 209
    iget v12, v14, Lo/L4;->V:I

    add-int/2addr v0, v12

    if-le v0, v10, :cond_55

    .line 210
    invoke-virtual {v14}, Lo/L4;->s()I

    move-result v0

    iget v12, v14, Lo/L4;->V:I

    add-int/2addr v0, v12

    const/4 v12, 0x5

    .line 211
    invoke-virtual {v14, v12}, Lo/L4;->i(I)Lo/x4;

    move-result-object v12

    invoke-virtual {v12}, Lo/x4;->e()I

    move-result v12

    add-int/2addr v12, v0

    .line 212
    invoke-static {v10, v12}, Ljava/lang/Math;->max(II)I

    move-result v10

    :cond_55
    const/4 v15, 0x1

    .line 213
    :cond_56
    check-cast v14, Lo/v7;

    .line 214
    iget-boolean v0, v14, Lo/v7;->y0:Z

    or-int/2addr v0, v15

    move v12, v0

    :goto_39
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v22, v1

    move/from16 v0, v16

    const/4 v15, 0x0

    move-object/from16 v1, p1

    goto/16 :goto_37

    :cond_57
    move/from16 v16, v0

    move-object/from16 v1, v22

    const/4 v0, 0x0

    :goto_3a
    const/4 v15, 0x2

    if-ge v0, v15, :cond_65

    const/4 v11, 0x0

    :goto_3b
    if-ge v11, v3, :cond_64

    .line 215
    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lo/L4;

    .line 216
    instance-of v14, v13, Lo/b9;

    if-eqz v14, :cond_58

    instance-of v14, v13, Lo/v7;

    if-eqz v14, :cond_5c

    :cond_58
    instance-of v14, v13, Lo/X8;

    if-eqz v14, :cond_59

    goto :goto_3c

    .line 217
    :cond_59
    iget v14, v13, Lo/L4;->g0:I

    const/16 v15, 0x8

    if-ne v14, v15, :cond_5a

    goto :goto_3c

    :cond_5a
    if-eqz v20, :cond_5b

    .line 218
    iget-object v14, v13, Lo/L4;->d:Lo/c9;

    iget-object v14, v14, Lo/mi;->e:Lo/a6;

    iget-boolean v14, v14, Lo/P5;->j:Z

    if-eqz v14, :cond_5b

    iget-object v14, v13, Lo/L4;->e:Lo/oh;

    iget-object v14, v14, Lo/mi;->e:Lo/a6;

    iget-boolean v14, v14, Lo/P5;->j:Z

    if-eqz v14, :cond_5b

    goto :goto_3c

    .line 219
    :cond_5b
    instance-of v14, v13, Lo/v7;

    if-eqz v14, :cond_5d

    :cond_5c
    :goto_3c
    move-object/from16 v22, v1

    move-object/from16 v19, v2

    move/from16 v21, v3

    const/4 v14, 0x4

    const/4 v15, 0x5

    goto/16 :goto_41

    .line 220
    :cond_5d
    invoke-virtual {v13}, Lo/L4;->q()I

    move-result v14

    .line 221
    invoke-virtual {v13}, Lo/L4;->k()I

    move-result v15

    move-object/from16 v19, v2

    .line 222
    iget v2, v13, Lo/L4;->a0:I

    move/from16 v21, v3

    const/4 v3, 0x1

    if-ne v0, v3, :cond_5e

    const/4 v3, 0x2

    .line 223
    :cond_5e
    invoke-virtual {v4, v3, v1, v13}, Lo/s2;->x(ILo/C4;Lo/L4;)Z

    move-result v3

    or-int/2addr v3, v12

    .line 224
    invoke-virtual {v13}, Lo/L4;->q()I

    move-result v12

    move-object/from16 v22, v1

    .line 225
    invoke-virtual {v13}, Lo/L4;->k()I

    move-result v1

    if-eq v12, v14, :cond_60

    .line 226
    invoke-virtual {v13, v12}, Lo/L4;->O(I)V

    if-eqz v8, :cond_5f

    .line 227
    invoke-virtual {v13}, Lo/L4;->r()I

    move-result v3

    iget v12, v13, Lo/L4;->U:I

    add-int/2addr v3, v12

    if-le v3, v9, :cond_5f

    .line 228
    invoke-virtual {v13}, Lo/L4;->r()I

    move-result v3

    iget v12, v13, Lo/L4;->U:I

    add-int/2addr v3, v12

    const/4 v14, 0x4

    .line 229
    invoke-virtual {v13, v14}, Lo/L4;->i(I)Lo/x4;

    move-result-object v12

    invoke-virtual {v12}, Lo/x4;->e()I

    move-result v12

    add-int/2addr v12, v3

    .line 230
    invoke-static {v9, v12}, Ljava/lang/Math;->max(II)I

    move-result v9

    goto :goto_3d

    :cond_5f
    const/4 v14, 0x4

    :goto_3d
    const/4 v3, 0x1

    goto :goto_3e

    :cond_60
    const/4 v14, 0x4

    :goto_3e
    if-eq v1, v15, :cond_62

    .line 231
    invoke-virtual {v13, v1}, Lo/L4;->L(I)V

    if-eqz v7, :cond_61

    .line 232
    invoke-virtual {v13}, Lo/L4;->s()I

    move-result v1

    iget v3, v13, Lo/L4;->V:I

    add-int/2addr v1, v3

    if-le v1, v10, :cond_61

    .line 233
    invoke-virtual {v13}, Lo/L4;->s()I

    move-result v1

    iget v3, v13, Lo/L4;->V:I

    add-int/2addr v1, v3

    const/4 v15, 0x5

    .line 234
    invoke-virtual {v13, v15}, Lo/L4;->i(I)Lo/x4;

    move-result-object v3

    .line 235
    invoke-virtual {v3}, Lo/x4;->e()I

    move-result v3

    add-int/2addr v3, v1

    .line 236
    invoke-static {v10, v3}, Ljava/lang/Math;->max(II)I

    move-result v10

    goto :goto_3f

    :cond_61
    const/4 v15, 0x5

    :goto_3f
    const/4 v3, 0x1

    goto :goto_40

    :cond_62
    const/4 v15, 0x5

    .line 237
    :goto_40
    iget-boolean v1, v13, Lo/L4;->E:Z

    if-eqz v1, :cond_63

    .line 238
    iget v1, v13, Lo/L4;->a0:I

    if-eq v2, v1, :cond_63

    const/4 v12, 0x1

    goto :goto_41

    :cond_63
    move v12, v3

    :goto_41
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v2, v19

    move/from16 v3, v21

    move-object/from16 v1, v22

    const/4 v15, 0x2

    goto/16 :goto_3b

    :cond_64
    move-object/from16 v22, v1

    move-object/from16 v19, v2

    move/from16 v21, v3

    const/4 v14, 0x4

    const/4 v15, 0x5

    if-eqz v12, :cond_65

    add-int/lit8 v0, v0, 0x1

    move-object/from16 v1, p1

    move-object/from16 v2, v22

    .line 239
    invoke-virtual {v4, v1, v0, v5, v6}, Lo/s2;->B(Lo/M4;III)V

    move-object v1, v2

    move-object/from16 v2, v19

    move/from16 v3, v21

    const/4 v12, 0x0

    goto/16 :goto_3a

    :cond_65
    move-object/from16 v1, p1

    move/from16 v0, v16

    .line 240
    :cond_66
    iput v0, v1, Lo/M4;->D0:I

    const/16 v0, 0x200

    .line 241
    invoke-virtual {v1, v0}, Lo/M4;->W(I)Z

    move-result v0

    sput-boolean v0, Lo/ba;->q:Z

    :cond_67
    return-void
.end method

.method public final l(Lo/L4;Lo/B4;Landroid/util/SparseArray;II)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->a:Landroid/util/SparseArray;

    .line 3
    invoke-virtual {v0, p4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/view/View;

    .line 9
    invoke-virtual {p3, p4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 12
    move-result-object p3

    .line 13
    check-cast p3, Lo/L4;

    .line 15
    if-eqz p3, :cond_1

    .line 17
    if-eqz v0, :cond_1

    .line 19
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 22
    move-result-object p4

    .line 23
    instance-of p4, p4, Lo/B4;

    .line 25
    if-eqz p4, :cond_1

    .line 27
    const/4 p4, 0x1

    .line 28
    iput-boolean p4, p2, Lo/B4;->c0:Z

    .line 30
    const/4 v1, 0x6

    .line 31
    if-ne p5, v1, :cond_0

    .line 33
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 36
    move-result-object v0

    .line 37
    check-cast v0, Lo/B4;

    .line 39
    iput-boolean p4, v0, Lo/B4;->c0:Z

    .line 41
    iget-object v0, v0, Lo/B4;->p0:Lo/L4;

    .line 43
    iput-boolean p4, v0, Lo/L4;->E:Z

    .line 45
    :cond_0
    invoke-virtual {p1, v1}, Lo/L4;->i(I)Lo/x4;

    .line 48
    move-result-object v0

    .line 49
    invoke-virtual {p3, p5}, Lo/L4;->i(I)Lo/x4;

    .line 52
    move-result-object p3

    .line 53
    iget p5, p2, Lo/B4;->D:I

    .line 55
    iget p2, p2, Lo/B4;->C:I

    .line 57
    invoke-virtual {v0, p3, p5, p2, p4}, Lo/x4;->b(Lo/x4;IIZ)Z

    .line 60
    iput-boolean p4, p1, Lo/L4;->E:Z

    .line 62
    const/4 p2, 0x3

    .line 63
    invoke-virtual {p1, p2}, Lo/L4;->i(I)Lo/x4;

    .line 66
    move-result-object p2

    .line 67
    invoke-virtual {p2}, Lo/x4;->j()V

    .line 70
    const/4 p2, 0x5

    .line 71
    invoke-virtual {p1, p2}, Lo/L4;->i(I)Lo/x4;

    .line 74
    move-result-object p1

    .line 75
    invoke-virtual {p1}, Lo/x4;->j()V

    .line 78
    :cond_1
    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 4
    move-result p1

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    .line 8
    move-result p2

    .line 9
    const/4 p3, 0x0

    .line 10
    move p4, p3

    .line 11
    :goto_0
    if-ge p4, p1, :cond_1

    .line 13
    invoke-virtual {p0, p4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 16
    move-result-object p5

    .line 17
    invoke-virtual {p5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Lo/B4;

    .line 23
    iget-object v1, v0, Lo/B4;->p0:Lo/L4;

    .line 25
    invoke-virtual {p5}, Landroid/view/View;->getVisibility()I

    .line 28
    move-result v2

    .line 29
    const/16 v3, 0x8

    .line 31
    if-ne v2, v3, :cond_0

    .line 33
    iget-boolean v2, v0, Lo/B4;->d0:Z

    .line 35
    if-nez v2, :cond_0

    .line 37
    iget-boolean v0, v0, Lo/B4;->e0:Z

    .line 39
    if-nez v0, :cond_0

    .line 41
    if-nez p2, :cond_0

    .line 43
    goto :goto_1

    .line 44
    :cond_0
    invoke-virtual {v1}, Lo/L4;->r()I

    .line 47
    move-result v0

    .line 48
    invoke-virtual {v1}, Lo/L4;->s()I

    .line 51
    move-result v2

    .line 52
    invoke-virtual {v1}, Lo/L4;->q()I

    .line 55
    move-result v3

    .line 56
    add-int/2addr v3, v0

    .line 57
    invoke-virtual {v1}, Lo/L4;->k()I

    .line 60
    move-result v1

    .line 61
    add-int/2addr v1, v2

    .line 62
    invoke-virtual {p5, v0, v2, v3, v1}, Landroid/view/View;->layout(IIII)V

    .line 65
    :goto_1
    add-int/lit8 p4, p4, 0x1

    .line 67
    goto :goto_0

    .line 68
    :cond_1
    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Ljava/util/ArrayList;

    .line 70
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 73
    move-result p2

    .line 74
    if-lez p2, :cond_2

    .line 76
    :goto_2
    if-ge p3, p2, :cond_2

    .line 78
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 81
    move-result-object p4

    .line 82
    check-cast p4, Lo/z4;

    .line 84
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 87
    add-int/lit8 p3, p3, 0x1

    .line 89
    goto :goto_2

    .line 90
    :cond_2
    return-void
.end method

.method public onMeasure(II)V
    .locals 23

    .line 1
    move-object/from16 v6, p0

    .line 3
    move/from16 v7, p1

    .line 5
    move/from16 v8, p2

    .line 7
    iget-boolean v0, v6, Landroidx/constraintlayout/widget/ConstraintLayout;->h:Z

    .line 9
    iput-boolean v0, v6, Landroidx/constraintlayout/widget/ConstraintLayout;->h:Z

    .line 11
    const/4 v9, 0x0

    .line 12
    const/4 v10, 0x1

    .line 13
    if-nez v0, :cond_1

    .line 15
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 18
    move-result v0

    .line 19
    move v1, v9

    .line 20
    :goto_0
    if-ge v1, v0, :cond_1

    .line 22
    invoke-virtual {v6, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 25
    move-result-object v2

    .line 26
    invoke-virtual {v2}, Landroid/view/View;->isLayoutRequested()Z

    .line 29
    move-result v2

    .line 30
    if-eqz v2, :cond_0

    .line 32
    iput-boolean v10, v6, Landroidx/constraintlayout/widget/ConstraintLayout;->h:Z

    .line 34
    goto :goto_1

    .line 35
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 37
    goto :goto_0

    .line 38
    :cond_1
    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 45
    move-result-object v0

    .line 46
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 48
    const/high16 v1, 0x400000

    .line 50
    and-int/2addr v0, v1

    .line 51
    if-eqz v0, :cond_2

    .line 53
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getLayoutDirection()I

    .line 56
    move-result v0

    .line 57
    if-ne v10, v0, :cond_2

    .line 59
    move v0, v10

    .line 60
    goto :goto_2

    .line 61
    :cond_2
    move v0, v9

    .line 62
    :goto_2
    iget-object v11, v6, Landroidx/constraintlayout/widget/ConstraintLayout;->c:Lo/M4;

    .line 64
    iput-boolean v0, v11, Lo/M4;->v0:Z

    .line 66
    iget-boolean v0, v6, Landroidx/constraintlayout/widget/ConstraintLayout;->h:Z

    .line 68
    if-eqz v0, :cond_4d

    .line 70
    iput-boolean v9, v6, Landroidx/constraintlayout/widget/ConstraintLayout;->h:Z

    .line 72
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 75
    move-result v0

    .line 76
    move v1, v9

    .line 77
    :goto_3
    if-ge v1, v0, :cond_4

    .line 79
    invoke-virtual {v6, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 82
    move-result-object v2

    .line 83
    invoke-virtual {v2}, Landroid/view/View;->isLayoutRequested()Z

    .line 86
    move-result v2

    .line 87
    if-eqz v2, :cond_3

    .line 89
    move v12, v10

    .line 90
    goto :goto_4

    .line 91
    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 93
    goto :goto_3

    .line 94
    :cond_4
    move v12, v9

    .line 95
    :goto_4
    if-eqz v12, :cond_4c

    .line 97
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isInEditMode()Z

    .line 100
    move-result v13

    .line 101
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 104
    move-result v14

    .line 105
    move v0, v9

    .line 106
    :goto_5
    if-ge v0, v14, :cond_6

    .line 108
    invoke-virtual {v6, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 111
    move-result-object v1

    .line 112
    invoke-virtual {v6, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->h(Landroid/view/View;)Lo/L4;

    .line 115
    move-result-object v1

    .line 116
    if-nez v1, :cond_5

    .line 118
    goto :goto_6

    .line 119
    :cond_5
    invoke-virtual {v1}, Lo/L4;->C()V

    .line 122
    :goto_6
    add-int/lit8 v0, v0, 0x1

    .line 124
    goto :goto_5

    .line 125
    :cond_6
    const/4 v0, 0x0

    .line 126
    const/4 v15, -0x1

    .line 127
    if-eqz v13, :cond_f

    .line 129
    move v1, v9

    .line 130
    :goto_7
    if-ge v1, v14, :cond_f

    .line 132
    invoke-virtual {v6, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 135
    move-result-object v2

    .line 136
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 139
    move-result-object v3

    .line 140
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    .line 143
    move-result v4

    .line 144
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 147
    move-result-object v3

    .line 148
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    .line 151
    move-result v4

    .line 152
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 155
    move-result-object v4

    .line 156
    if-eqz v3, :cond_9

    .line 158
    iget-object v5, v6, Landroidx/constraintlayout/widget/ConstraintLayout;->m:Ljava/util/HashMap;

    .line 160
    if-nez v5, :cond_7

    .line 162
    new-instance v5, Ljava/util/HashMap;

    .line 164
    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 167
    iput-object v5, v6, Landroidx/constraintlayout/widget/ConstraintLayout;->m:Ljava/util/HashMap;

    .line 169
    :cond_7
    const-string v5, "/"

    .line 171
    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 174
    move-result v5

    .line 175
    if-eq v5, v15, :cond_8

    .line 177
    add-int/lit8 v5, v5, 0x1

    .line 179
    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 182
    move-result-object v5

    .line 183
    goto :goto_8

    .line 184
    :cond_8
    move-object v5, v3

    .line 185
    :goto_8
    iget-object v10, v6, Landroidx/constraintlayout/widget/ConstraintLayout;->m:Ljava/util/HashMap;

    .line 187
    invoke-virtual {v10, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    :cond_9
    const/16 v4, 0x2f

    .line 192
    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    .line 195
    move-result v4

    .line 196
    if-eq v4, v15, :cond_a

    .line 198
    add-int/lit8 v4, v4, 0x1

    .line 200
    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 203
    move-result-object v3

    .line 204
    :cond_a
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    .line 207
    move-result v2

    .line 208
    if-nez v2, :cond_b

    .line 210
    :goto_9
    move-object v2, v11

    .line 211
    goto :goto_a

    .line 212
    :cond_b
    iget-object v4, v6, Landroidx/constraintlayout/widget/ConstraintLayout;->a:Landroid/util/SparseArray;

    .line 214
    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 217
    move-result-object v4

    .line 218
    check-cast v4, Landroid/view/View;

    .line 220
    if-nez v4, :cond_c

    .line 222
    invoke-virtual {v6, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 225
    move-result-object v4

    .line 226
    if-eqz v4, :cond_c

    .line 228
    if-eq v4, v6, :cond_c

    .line 230
    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 233
    move-result-object v2

    .line 234
    if-ne v2, v6, :cond_c

    .line 236
    invoke-virtual {v6, v4}, Landroidx/constraintlayout/widget/ConstraintLayout;->onViewAdded(Landroid/view/View;)V

    .line 239
    :cond_c
    if-ne v4, v6, :cond_d

    .line 241
    goto :goto_9

    .line 242
    :cond_d
    if-nez v4, :cond_e

    .line 244
    move-object v2, v0

    .line 245
    goto :goto_a

    .line 246
    :cond_e
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 249
    move-result-object v2

    .line 250
    check-cast v2, Lo/B4;

    .line 252
    iget-object v2, v2, Lo/B4;->p0:Lo/L4;

    .line 254
    :goto_a
    iput-object v3, v2, Lo/L4;->h0:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 256
    :catch_0
    add-int/lit8 v1, v1, 0x1

    .line 258
    const/4 v10, 0x1

    .line 259
    goto/16 :goto_7

    .line 261
    :cond_f
    iget v1, v6, Landroidx/constraintlayout/widget/ConstraintLayout;->l:I

    .line 263
    if-eq v1, v15, :cond_10

    .line 265
    move v1, v9

    .line 266
    :goto_b
    if-ge v1, v14, :cond_10

    .line 268
    invoke-virtual {v6, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 271
    move-result-object v2

    .line 272
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    .line 275
    add-int/lit8 v1, v1, 0x1

    .line 277
    goto :goto_b

    .line 278
    :cond_10
    iget-object v1, v6, Landroidx/constraintlayout/widget/ConstraintLayout;->j:Lo/K4;

    .line 280
    if-eqz v1, :cond_11

    .line 282
    invoke-virtual {v1, v6}, Lo/K4;->a(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 285
    :cond_11
    iget-object v1, v11, Lo/M4;->q0:Ljava/util/ArrayList;

    .line 287
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 290
    iget-object v1, v6, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Ljava/util/ArrayList;

    .line 292
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 295
    move-result v2

    .line 296
    if-lez v2, :cond_19

    .line 298
    move v3, v9

    .line 299
    :goto_c
    if-ge v3, v2, :cond_19

    .line 301
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 304
    move-result-object v4

    .line 305
    check-cast v4, Lo/z4;

    .line 307
    invoke-virtual {v4}, Landroid/view/View;->isInEditMode()Z

    .line 310
    move-result v5

    .line 311
    if-eqz v5, :cond_12

    .line 313
    iget-object v5, v4, Lo/z4;->e:Ljava/lang/String;

    .line 315
    invoke-virtual {v4, v5}, Lo/z4;->setIds(Ljava/lang/String;)V

    .line 318
    :cond_12
    iget-object v5, v4, Lo/z4;->d:Lo/b9;

    .line 320
    if-nez v5, :cond_13

    .line 322
    move-object/from16 v17, v1

    .line 324
    goto/16 :goto_10

    .line 326
    :cond_13
    iput v9, v5, Lo/b9;->r0:I

    .line 328
    iget-object v5, v5, Lo/b9;->q0:[Lo/L4;

    .line 330
    invoke-static {v5, v0}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 333
    move v5, v9

    .line 334
    :goto_d
    iget v0, v4, Lo/z4;->b:I

    .line 336
    if-ge v5, v0, :cond_18

    .line 338
    iget-object v0, v4, Lo/z4;->a:[I

    .line 340
    aget v0, v0, v5

    .line 342
    iget-object v15, v6, Landroidx/constraintlayout/widget/ConstraintLayout;->a:Landroid/util/SparseArray;

    .line 344
    invoke-virtual {v15, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 347
    move-result-object v15

    .line 348
    check-cast v15, Landroid/view/View;

    .line 350
    if-nez v15, :cond_14

    .line 352
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 355
    move-result-object v0

    .line 356
    iget-object v9, v4, Lo/z4;->g:Ljava/util/HashMap;

    .line 358
    invoke-virtual {v9, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    move-result-object v0

    .line 362
    check-cast v0, Ljava/lang/String;

    .line 364
    invoke-virtual {v4, v6, v0}, Lo/z4;->f(Landroidx/constraintlayout/widget/ConstraintLayout;Ljava/lang/String;)I

    .line 367
    move-result v10

    .line 368
    if-eqz v10, :cond_14

    .line 370
    iget-object v15, v4, Lo/z4;->a:[I

    .line 372
    aput v10, v15, v5

    .line 374
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 377
    move-result-object v15

    .line 378
    invoke-virtual {v9, v15, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    iget-object v0, v6, Landroidx/constraintlayout/widget/ConstraintLayout;->a:Landroid/util/SparseArray;

    .line 383
    invoke-virtual {v0, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 386
    move-result-object v0

    .line 387
    move-object v15, v0

    .line 388
    check-cast v15, Landroid/view/View;

    .line 390
    :cond_14
    if-eqz v15, :cond_17

    .line 392
    iget-object v0, v4, Lo/z4;->d:Lo/b9;

    .line 394
    invoke-virtual {v6, v15}, Landroidx/constraintlayout/widget/ConstraintLayout;->h(Landroid/view/View;)Lo/L4;

    .line 397
    move-result-object v9

    .line 398
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 401
    if-eq v9, v0, :cond_17

    .line 403
    if-nez v9, :cond_15

    .line 405
    goto :goto_e

    .line 406
    :cond_15
    iget v10, v0, Lo/b9;->r0:I

    .line 408
    const/4 v15, 0x1

    .line 409
    add-int/2addr v10, v15

    .line 410
    iget-object v15, v0, Lo/b9;->q0:[Lo/L4;

    .line 412
    move-object/from16 v17, v1

    .line 414
    array-length v1, v15

    .line 415
    if-le v10, v1, :cond_16

    .line 417
    array-length v1, v15

    .line 418
    const/4 v10, 0x2

    .line 419
    mul-int/2addr v1, v10

    .line 420
    invoke-static {v15, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 423
    move-result-object v1

    .line 424
    check-cast v1, [Lo/L4;

    .line 426
    iput-object v1, v0, Lo/b9;->q0:[Lo/L4;

    .line 428
    :cond_16
    iget-object v1, v0, Lo/b9;->q0:[Lo/L4;

    .line 430
    iget v10, v0, Lo/b9;->r0:I

    .line 432
    aput-object v9, v1, v10

    .line 434
    const/4 v1, 0x1

    .line 435
    add-int/2addr v10, v1

    .line 436
    iput v10, v0, Lo/b9;->r0:I

    .line 438
    goto :goto_f

    .line 439
    :cond_17
    :goto_e
    move-object/from16 v17, v1

    .line 441
    :goto_f
    add-int/lit8 v5, v5, 0x1

    .line 443
    move-object/from16 v1, v17

    .line 445
    const/4 v9, 0x0

    .line 446
    const/4 v15, -0x1

    .line 447
    goto :goto_d

    .line 448
    :cond_18
    move-object/from16 v17, v1

    .line 450
    iget-object v0, v4, Lo/z4;->d:Lo/b9;

    .line 452
    invoke-virtual {v0}, Lo/b9;->S()V

    .line 455
    :goto_10
    add-int/lit8 v3, v3, 0x1

    .line 457
    move-object/from16 v1, v17

    .line 459
    const/4 v0, 0x0

    .line 460
    const/4 v9, 0x0

    .line 461
    const/4 v15, -0x1

    .line 462
    goto/16 :goto_c

    .line 464
    :cond_19
    const/4 v0, 0x0

    .line 465
    :goto_11
    if-ge v0, v14, :cond_1a

    .line 467
    invoke-virtual {v6, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 470
    add-int/lit8 v0, v0, 0x1

    .line 472
    goto :goto_11

    .line 473
    :cond_1a
    iget-object v9, v6, Landroidx/constraintlayout/widget/ConstraintLayout;->n:Landroid/util/SparseArray;

    .line 475
    invoke-virtual {v9}, Landroid/util/SparseArray;->clear()V

    .line 478
    const/4 v0, 0x0

    .line 479
    invoke-virtual {v9, v0, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 482
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getId()I

    .line 485
    move-result v0

    .line 486
    invoke-virtual {v9, v0, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 489
    const/4 v0, 0x0

    .line 490
    :goto_12
    if-ge v0, v14, :cond_1b

    .line 492
    invoke-virtual {v6, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 495
    move-result-object v1

    .line 496
    invoke-virtual {v6, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->h(Landroid/view/View;)Lo/L4;

    .line 499
    move-result-object v2

    .line 500
    invoke-virtual {v1}, Landroid/view/View;->getId()I

    .line 503
    move-result v1

    .line 504
    invoke-virtual {v9, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 507
    add-int/lit8 v0, v0, 0x1

    .line 509
    goto :goto_12

    .line 510
    :cond_1b
    const/4 v10, 0x0

    .line 511
    :goto_13
    if-ge v10, v14, :cond_4c

    .line 513
    invoke-virtual {v6, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 516
    move-result-object v0

    .line 517
    invoke-virtual {v6, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->h(Landroid/view/View;)Lo/L4;

    .line 520
    move-result-object v15

    .line 521
    if-nez v15, :cond_1d

    .line 523
    :cond_1c
    :goto_14
    move/from16 v16, v14

    .line 525
    const/4 v0, 0x2

    .line 526
    const/4 v3, 0x1

    .line 527
    const/4 v4, -0x1

    .line 528
    goto/16 :goto_29

    .line 530
    :cond_1d
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 533
    move-result-object v1

    .line 534
    move-object v5, v1

    .line 535
    check-cast v5, Lo/B4;

    .line 537
    iget-object v1, v11, Lo/M4;->q0:Ljava/util/ArrayList;

    .line 539
    invoke-virtual {v1, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 542
    iget-object v1, v15, Lo/L4;->T:Lo/L4;

    .line 544
    if-eqz v1, :cond_1e

    .line 546
    check-cast v1, Lo/M4;

    .line 548
    iget-object v1, v1, Lo/M4;->q0:Ljava/util/ArrayList;

    .line 550
    invoke-virtual {v1, v15}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 553
    invoke-virtual {v15}, Lo/L4;->C()V

    .line 556
    :cond_1e
    iput-object v11, v15, Lo/L4;->T:Lo/L4;

    .line 558
    invoke-virtual {v5}, Lo/B4;->a()V

    .line 561
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 564
    move-result v1

    .line 565
    iput v1, v15, Lo/L4;->g0:I

    .line 567
    iput-object v0, v15, Lo/L4;->f0:Landroid/view/View;

    .line 569
    instance-of v1, v0, Lo/z4;

    .line 571
    if-eqz v1, :cond_1f

    .line 573
    check-cast v0, Lo/z4;

    .line 575
    iget-boolean v1, v11, Lo/M4;->v0:Z

    .line 577
    invoke-virtual {v0, v15, v1}, Lo/z4;->h(Lo/L4;Z)V

    .line 580
    :cond_1f
    iget-boolean v0, v5, Lo/B4;->d0:Z

    .line 582
    if-eqz v0, :cond_23

    .line 584
    check-cast v15, Lo/X8;

    .line 586
    iget v0, v5, Lo/B4;->m0:I

    .line 588
    iget v1, v5, Lo/B4;->n0:I

    .line 590
    iget v2, v5, Lo/B4;->o0:F

    .line 592
    const/high16 v3, -0x40800000    # -1.0f

    .line 594
    cmpl-float v4, v2, v3

    .line 596
    if-eqz v4, :cond_21

    .line 598
    if-lez v4, :cond_20

    .line 600
    iput v2, v15, Lo/X8;->q0:F

    .line 602
    const/4 v2, -0x1

    .line 603
    iput v2, v15, Lo/X8;->r0:I

    .line 605
    iput v2, v15, Lo/X8;->s0:I

    .line 607
    goto :goto_14

    .line 608
    :cond_20
    const/4 v2, -0x1

    .line 609
    goto :goto_14

    .line 610
    :cond_21
    const/4 v2, -0x1

    .line 611
    if-eq v0, v2, :cond_22

    .line 613
    if-le v0, v2, :cond_1c

    .line 615
    iput v3, v15, Lo/X8;->q0:F

    .line 617
    iput v0, v15, Lo/X8;->r0:I

    .line 619
    iput v2, v15, Lo/X8;->s0:I

    .line 621
    goto :goto_14

    .line 622
    :cond_22
    if-eq v1, v2, :cond_1c

    .line 624
    if-le v1, v2, :cond_1c

    .line 626
    iput v3, v15, Lo/X8;->q0:F

    .line 628
    iput v2, v15, Lo/X8;->r0:I

    .line 630
    iput v1, v15, Lo/X8;->s0:I

    .line 632
    goto :goto_14

    .line 633
    :cond_23
    iget v0, v5, Lo/B4;->f0:I

    .line 635
    iget v1, v5, Lo/B4;->g0:I

    .line 637
    iget v2, v5, Lo/B4;->h0:I

    .line 639
    iget v3, v5, Lo/B4;->i0:I

    .line 641
    iget v4, v5, Lo/B4;->j0:I

    .line 643
    move/from16 v16, v14

    .line 645
    iget v14, v5, Lo/B4;->k0:I

    .line 647
    iget v7, v5, Lo/B4;->l0:F

    .line 649
    iget v8, v5, Lo/B4;->p:I

    .line 651
    const/4 v6, -0x1

    .line 652
    if-eq v8, v6, :cond_25

    .line 654
    invoke-virtual {v9, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 657
    move-result-object v0

    .line 658
    move-object/from16 v22, v0

    .line 660
    check-cast v22, Lo/L4;

    .line 662
    if-eqz v22, :cond_24

    .line 664
    iget v0, v5, Lo/B4;->r:F

    .line 666
    iget v1, v5, Lo/B4;->q:I

    .line 668
    const/16 v19, 0x7

    .line 670
    const/16 v21, 0x0

    .line 672
    move-object/from16 v17, v15

    .line 674
    move/from16 v18, v19

    .line 676
    move/from16 v20, v1

    .line 678
    invoke-virtual/range {v17 .. v22}, Lo/L4;->v(IIIILo/L4;)V

    .line 681
    iput v0, v15, Lo/L4;->D:F

    .line 683
    :cond_24
    move-object v14, v5

    .line 684
    goto/16 :goto_1c

    .line 686
    :cond_25
    if-eq v0, v6, :cond_27

    .line 688
    invoke-virtual {v9, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 691
    move-result-object v0

    .line 692
    move-object/from16 v22, v0

    .line 694
    check-cast v22, Lo/L4;

    .line 696
    if-eqz v22, :cond_26

    .line 698
    iget v0, v5, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 700
    move-object/from16 v17, v15

    .line 702
    const/4 v1, 0x2

    .line 703
    move/from16 v18, v1

    .line 705
    move/from16 v19, v1

    .line 707
    move/from16 v20, v0

    .line 709
    move/from16 v21, v4

    .line 711
    invoke-virtual/range {v17 .. v22}, Lo/L4;->v(IIIILo/L4;)V

    .line 714
    :cond_26
    :goto_15
    const/4 v0, -0x1

    .line 715
    goto :goto_16

    .line 716
    :cond_27
    move v0, v6

    .line 717
    if-eq v1, v0, :cond_28

    .line 719
    invoke-virtual {v9, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 722
    move-result-object v0

    .line 723
    move-object/from16 v22, v0

    .line 725
    check-cast v22, Lo/L4;

    .line 727
    if-eqz v22, :cond_26

    .line 729
    iget v0, v5, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 731
    move-object/from16 v17, v15

    .line 733
    const/4 v1, 0x2

    .line 734
    move/from16 v18, v1

    .line 736
    const/4 v1, 0x4

    .line 737
    move/from16 v19, v1

    .line 739
    move/from16 v20, v0

    .line 741
    move/from16 v21, v4

    .line 743
    invoke-virtual/range {v17 .. v22}, Lo/L4;->v(IIIILo/L4;)V

    .line 746
    goto :goto_15

    .line 747
    :cond_28
    :goto_16
    if-eq v2, v0, :cond_29

    .line 749
    invoke-virtual {v9, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 752
    move-result-object v0

    .line 753
    move-object/from16 v22, v0

    .line 755
    check-cast v22, Lo/L4;

    .line 757
    if-eqz v22, :cond_2a

    .line 759
    iget v0, v5, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 761
    move-object/from16 v17, v15

    .line 763
    const/4 v1, 0x4

    .line 764
    move/from16 v18, v1

    .line 766
    const/4 v1, 0x2

    .line 767
    move/from16 v19, v1

    .line 769
    move/from16 v20, v0

    .line 771
    move/from16 v21, v14

    .line 773
    invoke-virtual/range {v17 .. v22}, Lo/L4;->v(IIIILo/L4;)V

    .line 776
    goto :goto_17

    .line 777
    :cond_29
    if-eq v3, v0, :cond_2a

    .line 779
    invoke-virtual {v9, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 782
    move-result-object v0

    .line 783
    move-object/from16 v22, v0

    .line 785
    check-cast v22, Lo/L4;

    .line 787
    if-eqz v22, :cond_2a

    .line 789
    iget v0, v5, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 791
    move-object/from16 v17, v15

    .line 793
    const/4 v1, 0x4

    .line 794
    move/from16 v18, v1

    .line 796
    move/from16 v19, v1

    .line 798
    move/from16 v20, v0

    .line 800
    move/from16 v21, v14

    .line 802
    invoke-virtual/range {v17 .. v22}, Lo/L4;->v(IIIILo/L4;)V

    .line 805
    :cond_2a
    :goto_17
    iget v0, v5, Lo/B4;->i:I

    .line 807
    const/4 v1, -0x1

    .line 808
    if-eq v0, v1, :cond_2b

    .line 810
    invoke-virtual {v9, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 813
    move-result-object v0

    .line 814
    move-object/from16 v22, v0

    .line 816
    check-cast v22, Lo/L4;

    .line 818
    if-eqz v22, :cond_2c

    .line 820
    iget v0, v5, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 822
    iget v1, v5, Lo/B4;->x:I

    .line 824
    move-object/from16 v17, v15

    .line 826
    const/4 v2, 0x3

    .line 827
    move/from16 v18, v2

    .line 829
    move/from16 v19, v2

    .line 831
    move/from16 v20, v0

    .line 833
    move/from16 v21, v1

    .line 835
    invoke-virtual/range {v17 .. v22}, Lo/L4;->v(IIIILo/L4;)V

    .line 838
    goto :goto_18

    .line 839
    :cond_2b
    iget v0, v5, Lo/B4;->j:I

    .line 841
    const/4 v1, -0x1

    .line 842
    if-eq v0, v1, :cond_2c

    .line 844
    invoke-virtual {v9, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 847
    move-result-object v0

    .line 848
    move-object/from16 v22, v0

    .line 850
    check-cast v22, Lo/L4;

    .line 852
    if-eqz v22, :cond_2c

    .line 854
    iget v0, v5, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 856
    iget v1, v5, Lo/B4;->x:I

    .line 858
    move-object/from16 v17, v15

    .line 860
    const/4 v2, 0x3

    .line 861
    move/from16 v18, v2

    .line 863
    const/4 v2, 0x5

    .line 864
    move/from16 v19, v2

    .line 866
    move/from16 v20, v0

    .line 868
    move/from16 v21, v1

    .line 870
    invoke-virtual/range {v17 .. v22}, Lo/L4;->v(IIIILo/L4;)V

    .line 873
    :cond_2c
    :goto_18
    iget v0, v5, Lo/B4;->k:I

    .line 875
    const/4 v1, -0x1

    .line 876
    if-eq v0, v1, :cond_2d

    .line 878
    invoke-virtual {v9, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 881
    move-result-object v0

    .line 882
    move-object/from16 v22, v0

    .line 884
    check-cast v22, Lo/L4;

    .line 886
    if-eqz v22, :cond_2e

    .line 888
    iget v0, v5, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 890
    iget v1, v5, Lo/B4;->z:I

    .line 892
    move-object/from16 v17, v15

    .line 894
    const/4 v2, 0x5

    .line 895
    move/from16 v18, v2

    .line 897
    const/4 v2, 0x3

    .line 898
    move/from16 v19, v2

    .line 900
    move/from16 v20, v0

    .line 902
    move/from16 v21, v1

    .line 904
    invoke-virtual/range {v17 .. v22}, Lo/L4;->v(IIIILo/L4;)V

    .line 907
    goto :goto_19

    .line 908
    :cond_2d
    iget v0, v5, Lo/B4;->l:I

    .line 910
    const/4 v1, -0x1

    .line 911
    if-eq v0, v1, :cond_2e

    .line 913
    invoke-virtual {v9, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 916
    move-result-object v0

    .line 917
    move-object/from16 v22, v0

    .line 919
    check-cast v22, Lo/L4;

    .line 921
    if-eqz v22, :cond_2e

    .line 923
    iget v0, v5, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 925
    iget v1, v5, Lo/B4;->z:I

    .line 927
    move-object/from16 v17, v15

    .line 929
    const/4 v2, 0x5

    .line 930
    move/from16 v18, v2

    .line 932
    move/from16 v19, v2

    .line 934
    move/from16 v20, v0

    .line 936
    move/from16 v21, v1

    .line 938
    invoke-virtual/range {v17 .. v22}, Lo/L4;->v(IIIILo/L4;)V

    .line 941
    :cond_2e
    :goto_19
    iget v4, v5, Lo/B4;->m:I

    .line 943
    const/4 v6, -0x1

    .line 944
    if-eq v4, v6, :cond_30

    .line 946
    const/4 v8, 0x6

    .line 947
    move-object/from16 v0, p0

    .line 949
    move-object v1, v15

    .line 950
    move-object v2, v5

    .line 951
    move-object v3, v9

    .line 952
    move-object v14, v5

    .line 953
    move v5, v8

    .line 954
    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/widget/ConstraintLayout;->l(Lo/L4;Lo/B4;Landroid/util/SparseArray;II)V

    .line 957
    :cond_2f
    :goto_1a
    const/4 v0, 0x0

    .line 958
    goto :goto_1b

    .line 959
    :cond_30
    move-object v14, v5

    .line 960
    iget v4, v14, Lo/B4;->n:I

    .line 962
    if-eq v4, v6, :cond_31

    .line 964
    move-object/from16 v0, p0

    .line 966
    move-object v1, v15

    .line 967
    move-object v2, v14

    .line 968
    move-object v3, v9

    .line 969
    const/4 v8, 0x3

    .line 970
    move v5, v8

    .line 971
    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/widget/ConstraintLayout;->l(Lo/L4;Lo/B4;Landroid/util/SparseArray;II)V

    .line 974
    goto :goto_1a

    .line 975
    :cond_31
    iget v4, v14, Lo/B4;->o:I

    .line 977
    if-eq v4, v6, :cond_2f

    .line 979
    move-object/from16 v0, p0

    .line 981
    move-object v1, v15

    .line 982
    move-object v2, v14

    .line 983
    move-object v3, v9

    .line 984
    const/4 v6, 0x5

    .line 985
    move v5, v6

    .line 986
    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/widget/ConstraintLayout;->l(Lo/L4;Lo/B4;Landroid/util/SparseArray;II)V

    .line 989
    goto :goto_1a

    .line 990
    :goto_1b
    cmpl-float v1, v7, v0

    .line 992
    if-ltz v1, :cond_32

    .line 994
    iput v7, v15, Lo/L4;->d0:F

    .line 996
    :cond_32
    iget v1, v14, Lo/B4;->F:F

    .line 998
    cmpl-float v2, v1, v0

    .line 1000
    if-ltz v2, :cond_33

    .line 1002
    iput v1, v15, Lo/L4;->e0:F

    .line 1004
    :cond_33
    :goto_1c
    if-eqz v13, :cond_35

    .line 1006
    iget v0, v14, Lo/B4;->T:I

    .line 1008
    const/4 v1, -0x1

    .line 1009
    if-ne v0, v1, :cond_34

    .line 1011
    iget v2, v14, Lo/B4;->U:I

    .line 1013
    if-eq v2, v1, :cond_35

    .line 1015
    :cond_34
    iget v1, v14, Lo/B4;->U:I

    .line 1017
    iput v0, v15, Lo/L4;->Y:I

    .line 1019
    iput v1, v15, Lo/L4;->Z:I

    .line 1021
    :cond_35
    iget-boolean v0, v14, Lo/B4;->a0:Z

    .line 1023
    const/4 v1, 0x3

    .line 1024
    const/4 v2, 0x4

    .line 1025
    const/4 v3, -0x2

    .line 1026
    if-nez v0, :cond_38

    .line 1028
    iget v0, v14, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 1030
    const/4 v4, -0x1

    .line 1031
    if-ne v0, v4, :cond_37

    .line 1033
    iget-boolean v0, v14, Lo/B4;->W:Z

    .line 1035
    if-eqz v0, :cond_36

    .line 1037
    invoke-virtual {v15, v1}, Lo/L4;->M(I)V

    .line 1040
    :goto_1d
    const/4 v0, 0x2

    .line 1041
    goto :goto_1e

    .line 1042
    :cond_36
    invoke-virtual {v15, v2}, Lo/L4;->M(I)V

    .line 1045
    goto :goto_1d

    .line 1046
    :goto_1e
    invoke-virtual {v15, v0}, Lo/L4;->i(I)Lo/x4;

    .line 1049
    move-result-object v0

    .line 1050
    iget v4, v14, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 1052
    iput v4, v0, Lo/x4;->g:I

    .line 1054
    const/4 v0, 0x4

    .line 1055
    invoke-virtual {v15, v0}, Lo/L4;->i(I)Lo/x4;

    .line 1058
    move-result-object v0

    .line 1059
    iget v4, v14, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 1061
    iput v4, v0, Lo/x4;->g:I

    .line 1063
    goto :goto_1f

    .line 1064
    :cond_37
    invoke-virtual {v15, v1}, Lo/L4;->M(I)V

    .line 1067
    const/4 v0, 0x0

    .line 1068
    invoke-virtual {v15, v0}, Lo/L4;->O(I)V

    .line 1071
    goto :goto_1f

    .line 1072
    :cond_38
    const/4 v0, 0x1

    .line 1073
    invoke-virtual {v15, v0}, Lo/L4;->M(I)V

    .line 1076
    iget v0, v14, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 1078
    invoke-virtual {v15, v0}, Lo/L4;->O(I)V

    .line 1081
    iget v0, v14, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 1083
    if-ne v0, v3, :cond_39

    .line 1085
    const/4 v0, 0x2

    .line 1086
    invoke-virtual {v15, v0}, Lo/L4;->M(I)V

    .line 1089
    :cond_39
    :goto_1f
    iget-boolean v0, v14, Lo/B4;->b0:Z

    .line 1091
    if-nez v0, :cond_3c

    .line 1093
    iget v0, v14, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 1095
    const/4 v4, -0x1

    .line 1096
    if-ne v0, v4, :cond_3b

    .line 1098
    iget-boolean v0, v14, Lo/B4;->X:Z

    .line 1100
    if-eqz v0, :cond_3a

    .line 1102
    invoke-virtual {v15, v1}, Lo/L4;->N(I)V

    .line 1105
    :goto_20
    const/4 v0, 0x3

    .line 1106
    goto :goto_21

    .line 1107
    :cond_3a
    invoke-virtual {v15, v2}, Lo/L4;->N(I)V

    .line 1110
    goto :goto_20

    .line 1111
    :goto_21
    invoke-virtual {v15, v0}, Lo/L4;->i(I)Lo/x4;

    .line 1114
    move-result-object v0

    .line 1115
    iget v2, v14, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1117
    iput v2, v0, Lo/x4;->g:I

    .line 1119
    const/4 v0, 0x5

    .line 1120
    invoke-virtual {v15, v0}, Lo/L4;->i(I)Lo/x4;

    .line 1123
    move-result-object v0

    .line 1124
    iget v2, v14, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 1126
    iput v2, v0, Lo/x4;->g:I

    .line 1128
    goto :goto_22

    .line 1129
    :cond_3b
    invoke-virtual {v15, v1}, Lo/L4;->N(I)V

    .line 1132
    const/4 v0, 0x0

    .line 1133
    invoke-virtual {v15, v0}, Lo/L4;->L(I)V

    .line 1136
    goto :goto_22

    .line 1137
    :cond_3c
    const/4 v0, 0x1

    .line 1138
    const/4 v4, -0x1

    .line 1139
    invoke-virtual {v15, v0}, Lo/L4;->N(I)V

    .line 1142
    iget v0, v14, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 1144
    invoke-virtual {v15, v0}, Lo/L4;->L(I)V

    .line 1147
    iget v0, v14, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 1149
    if-ne v0, v3, :cond_3d

    .line 1151
    const/4 v0, 0x2

    .line 1152
    invoke-virtual {v15, v0}, Lo/L4;->N(I)V

    .line 1155
    :cond_3d
    :goto_22
    iget-object v0, v14, Lo/B4;->G:Ljava/lang/String;

    .line 1157
    if-eqz v0, :cond_3e

    .line 1159
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 1162
    move-result v2

    .line 1163
    if-nez v2, :cond_3f

    .line 1165
    :cond_3e
    const/4 v2, 0x0

    .line 1166
    goto/16 :goto_27

    .line 1168
    :cond_3f
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 1171
    move-result v2

    .line 1172
    const/16 v3, 0x2c

    .line 1174
    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    .line 1177
    move-result v3

    .line 1178
    if-lez v3, :cond_42

    .line 1180
    add-int/lit8 v5, v2, -0x1

    .line 1182
    if-ge v3, v5, :cond_42

    .line 1184
    const/4 v5, 0x0

    .line 1185
    invoke-virtual {v0, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 1188
    move-result-object v6

    .line 1189
    const-string v5, "W"

    .line 1191
    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 1194
    move-result v5

    .line 1195
    if-eqz v5, :cond_40

    .line 1197
    const/4 v5, 0x0

    .line 1198
    goto :goto_23

    .line 1199
    :cond_40
    const-string v5, "H"

    .line 1201
    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 1204
    move-result v5

    .line 1205
    if-eqz v5, :cond_41

    .line 1207
    const/4 v5, 0x1

    .line 1208
    goto :goto_23

    .line 1209
    :cond_41
    move v5, v4

    .line 1210
    :goto_23
    add-int/lit8 v3, v3, 0x1

    .line 1212
    goto :goto_24

    .line 1213
    :cond_42
    move v5, v4

    .line 1214
    const/4 v3, 0x0

    .line 1215
    :goto_24
    const/16 v6, 0x3a

    .line 1217
    invoke-virtual {v0, v6}, Ljava/lang/String;->indexOf(I)I

    .line 1220
    move-result v6

    .line 1221
    if-ltz v6, :cond_44

    .line 1223
    add-int/lit8 v2, v2, -0x1

    .line 1225
    if-ge v6, v2, :cond_44

    .line 1227
    invoke-virtual {v0, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 1230
    move-result-object v2

    .line 1231
    add-int/lit8 v6, v6, 0x1

    .line 1233
    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 1236
    move-result-object v0

    .line 1237
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 1240
    move-result v3

    .line 1241
    if-lez v3, :cond_45

    .line 1243
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 1246
    move-result v3

    .line 1247
    if-lez v3, :cond_45

    .line 1249
    :try_start_1
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 1252
    move-result v2

    .line 1253
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 1256
    move-result v0

    .line 1257
    const/4 v3, 0x0

    .line 1258
    cmpl-float v6, v2, v3

    .line 1260
    if-lez v6, :cond_45

    .line 1262
    cmpl-float v6, v0, v3

    .line 1264
    if-lez v6, :cond_45

    .line 1266
    const/4 v3, 0x1

    .line 1267
    if-ne v5, v3, :cond_43

    .line 1269
    div-float/2addr v0, v2

    .line 1270
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 1273
    move-result v0

    .line 1274
    goto :goto_25

    .line 1275
    :cond_43
    div-float/2addr v2, v0

    .line 1276
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    .line 1279
    move-result v0
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1280
    :goto_25
    const/4 v2, 0x0

    .line 1281
    goto :goto_26

    .line 1282
    :cond_44
    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 1285
    move-result-object v0

    .line 1286
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 1289
    move-result v2

    .line 1290
    if-lez v2, :cond_45

    .line 1292
    :try_start_2
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 1295
    move-result v0
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1296
    goto :goto_25

    .line 1297
    :catch_1
    :cond_45
    const/4 v0, 0x0

    .line 1298
    goto :goto_25

    .line 1299
    :goto_26
    cmpl-float v3, v0, v2

    .line 1301
    if-lez v3, :cond_46

    .line 1303
    iput v0, v15, Lo/L4;->W:F

    .line 1305
    iput v5, v15, Lo/L4;->X:I

    .line 1307
    goto :goto_28

    .line 1308
    :goto_27
    iput v2, v15, Lo/L4;->W:F

    .line 1310
    :cond_46
    :goto_28
    iget v0, v14, Lo/B4;->H:F

    .line 1312
    iget-object v2, v15, Lo/L4;->k0:[F

    .line 1314
    const/4 v3, 0x0

    .line 1315
    aput v0, v2, v3

    .line 1317
    iget v0, v14, Lo/B4;->I:F

    .line 1319
    const/4 v3, 0x1

    .line 1320
    aput v0, v2, v3

    .line 1322
    iget v0, v14, Lo/B4;->J:I

    .line 1324
    iput v0, v15, Lo/L4;->i0:I

    .line 1326
    iget v0, v14, Lo/B4;->K:I

    .line 1328
    iput v0, v15, Lo/L4;->j0:I

    .line 1330
    iget v0, v14, Lo/B4;->Z:I

    .line 1332
    if-ltz v0, :cond_47

    .line 1334
    if-gt v0, v1, :cond_47

    .line 1336
    iput v0, v15, Lo/L4;->q:I

    .line 1338
    :cond_47
    iget v0, v14, Lo/B4;->L:I

    .line 1340
    iget v1, v14, Lo/B4;->N:I

    .line 1342
    iget v2, v14, Lo/B4;->P:I

    .line 1344
    iget v5, v14, Lo/B4;->R:F

    .line 1346
    iput v0, v15, Lo/L4;->r:I

    .line 1348
    iput v1, v15, Lo/L4;->u:I

    .line 1350
    const v1, 0x7fffffff

    .line 1353
    if-ne v2, v1, :cond_48

    .line 1355
    const/4 v2, 0x0

    .line 1356
    :cond_48
    iput v2, v15, Lo/L4;->v:I

    .line 1358
    iput v5, v15, Lo/L4;->w:F

    .line 1360
    const/4 v2, 0x0

    .line 1361
    cmpl-float v6, v5, v2

    .line 1363
    const/high16 v2, 0x3f800000    # 1.0f

    .line 1365
    if-lez v6, :cond_49

    .line 1367
    cmpg-float v5, v5, v2

    .line 1369
    if-gez v5, :cond_49

    .line 1371
    if-nez v0, :cond_49

    .line 1373
    const/4 v0, 0x2

    .line 1374
    iput v0, v15, Lo/L4;->r:I

    .line 1376
    :cond_49
    iget v0, v14, Lo/B4;->M:I

    .line 1378
    iget v5, v14, Lo/B4;->O:I

    .line 1380
    iget v6, v14, Lo/B4;->Q:I

    .line 1382
    iget v7, v14, Lo/B4;->S:F

    .line 1384
    iput v0, v15, Lo/L4;->s:I

    .line 1386
    iput v5, v15, Lo/L4;->x:I

    .line 1388
    if-ne v6, v1, :cond_4a

    .line 1390
    const/4 v6, 0x0

    .line 1391
    :cond_4a
    iput v6, v15, Lo/L4;->y:I

    .line 1393
    iput v7, v15, Lo/L4;->z:F

    .line 1395
    const/4 v1, 0x0

    .line 1396
    cmpl-float v1, v7, v1

    .line 1398
    if-lez v1, :cond_4b

    .line 1400
    cmpg-float v1, v7, v2

    .line 1402
    if-gez v1, :cond_4b

    .line 1404
    if-nez v0, :cond_4b

    .line 1406
    const/4 v0, 0x2

    .line 1407
    iput v0, v15, Lo/L4;->s:I

    .line 1409
    goto :goto_29

    .line 1410
    :cond_4b
    const/4 v0, 0x2

    .line 1411
    :goto_29
    add-int/lit8 v10, v10, 0x1

    .line 1413
    move-object/from16 v6, p0

    .line 1415
    move/from16 v7, p1

    .line 1417
    move/from16 v8, p2

    .line 1419
    move/from16 v14, v16

    .line 1421
    goto/16 :goto_13

    .line 1423
    :cond_4c
    if-eqz v12, :cond_4d

    .line 1425
    iget-object v0, v11, Lo/M4;->r0:Lo/s2;

    .line 1427
    invoke-virtual {v0, v11}, Lo/s2;->D(Lo/M4;)V

    .line 1430
    :cond_4d
    iget-object v0, v11, Lo/M4;->w0:Lo/ba;

    .line 1432
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1435
    move-object/from16 v0, p0

    .line 1437
    iget v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->i:I

    .line 1439
    move/from16 v2, p1

    .line 1441
    move/from16 v3, p2

    .line 1443
    invoke-virtual {v0, v11, v1, v2, v3}, Landroidx/constraintlayout/widget/ConstraintLayout;->k(Lo/M4;III)V

    .line 1446
    invoke-virtual {v11}, Lo/L4;->q()I

    .line 1449
    move-result v1

    .line 1450
    invoke-virtual {v11}, Lo/L4;->k()I

    .line 1453
    move-result v4

    .line 1454
    iget-boolean v5, v11, Lo/M4;->E0:Z

    .line 1456
    iget-boolean v6, v11, Lo/M4;->F0:Z

    .line 1458
    iget-object v7, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->o:Lo/C4;

    .line 1460
    iget v8, v7, Lo/C4;->e:I

    .line 1462
    iget v7, v7, Lo/C4;->d:I

    .line 1464
    add-int/2addr v1, v7

    .line 1465
    add-int/2addr v4, v8

    .line 1466
    const/4 v7, 0x0

    .line 1467
    invoke-static {v1, v2, v7}, Landroid/view/View;->resolveSizeAndState(III)I

    .line 1470
    move-result v1

    .line 1471
    invoke-static {v4, v3, v7}, Landroid/view/View;->resolveSizeAndState(III)I

    .line 1474
    move-result v2

    .line 1475
    const v3, 0xffffff

    .line 1478
    and-int/2addr v1, v3

    .line 1479
    and-int/2addr v2, v3

    .line 1480
    iget v3, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->f:I

    .line 1482
    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    .line 1485
    move-result v1

    .line 1486
    iget v3, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->g:I

    .line 1488
    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    .line 1491
    move-result v2

    .line 1492
    const/high16 v3, 0x1000000

    .line 1494
    if-eqz v5, :cond_4e

    .line 1496
    or-int/2addr v1, v3

    .line 1497
    :cond_4e
    if-eqz v6, :cond_4f

    .line 1499
    or-int/2addr v2, v3

    .line 1500
    :cond_4f
    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 1503
    return-void
.end method

.method public final onViewAdded(Landroid/view/View;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onViewAdded(Landroid/view/View;)V

    .line 4
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->h(Landroid/view/View;)Lo/L4;

    .line 7
    move-result-object v0

    .line 8
    instance-of v1, p1, Lo/W8;

    .line 10
    const/4 v2, 0x1

    .line 11
    if-eqz v1, :cond_0

    .line 13
    instance-of v0, v0, Lo/X8;

    .line 15
    if-nez v0, :cond_0

    .line 17
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Lo/B4;

    .line 23
    new-instance v1, Lo/X8;

    .line 25
    invoke-direct {v1}, Lo/X8;-><init>()V

    .line 28
    iput-object v1, v0, Lo/B4;->p0:Lo/L4;

    .line 30
    iput-boolean v2, v0, Lo/B4;->d0:Z

    .line 32
    iget v0, v0, Lo/B4;->V:I

    .line 34
    invoke-virtual {v1, v0}, Lo/X8;->S(I)V

    .line 37
    :cond_0
    instance-of v0, p1, Lo/z4;

    .line 39
    if-eqz v0, :cond_1

    .line 41
    move-object v0, p1

    .line 42
    check-cast v0, Lo/z4;

    .line 44
    invoke-virtual {v0}, Lo/z4;->i()V

    .line 47
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 50
    move-result-object v1

    .line 51
    check-cast v1, Lo/B4;

    .line 53
    iput-boolean v2, v1, Lo/B4;->e0:Z

    .line 55
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Ljava/util/ArrayList;

    .line 57
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 60
    move-result v3

    .line 61
    if-nez v3, :cond_1

    .line 63
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 69
    move-result v0

    .line 70
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->a:Landroid/util/SparseArray;

    .line 72
    invoke-virtual {v1, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 75
    iput-boolean v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->h:Z

    .line 77
    return-void
.end method

.method public onViewRemoved(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onViewRemoved(Landroid/view/View;)V

    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 7
    move-result v0

    .line 8
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->a:Landroid/util/SparseArray;

    .line 10
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 13
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->h(Landroid/view/View;)Lo/L4;

    .line 16
    move-result-object v0

    .line 17
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->c:Lo/M4;

    .line 19
    iget-object v1, v1, Lo/M4;->q0:Ljava/util/ArrayList;

    .line 21
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 24
    invoke-virtual {v0}, Lo/L4;->C()V

    .line 27
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Ljava/util/ArrayList;

    .line 29
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 32
    const/4 p1, 0x1

    .line 33
    iput-boolean p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->h:Z

    .line 35
    return-void
.end method

.method public final requestLayout()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->h:Z

    .line 4
    invoke-super {p0}, Landroid/view/View;->requestLayout()V

    .line 7
    return-void
.end method

.method public setConstraintSet(Lo/K4;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->j:Lo/K4;

    .line 3
    return-void
.end method

.method public setId(I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->a:Landroid/util/SparseArray;

    .line 7
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 10
    invoke-super {p0, p1}, Landroid/view/View;->setId(I)V

    .line 13
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    .line 16
    move-result p1

    .line 17
    invoke-virtual {v1, p1, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 20
    return-void
.end method

.method public setMaxHeight(I)V
    .locals 1

    .line 1
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->g:I

    .line 3
    if-ne p1, v0, :cond_0

    .line 5
    return-void

    .line 6
    :cond_0
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->g:I

    .line 8
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->requestLayout()V

    .line 11
    return-void
.end method

.method public setMaxWidth(I)V
    .locals 1

    .line 1
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->f:I

    .line 3
    if-ne p1, v0, :cond_0

    .line 5
    return-void

    .line 6
    :cond_0
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->f:I

    .line 8
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->requestLayout()V

    .line 11
    return-void
.end method

.method public setMinHeight(I)V
    .locals 1

    .line 1
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->e:I

    .line 3
    if-ne p1, v0, :cond_0

    .line 5
    return-void

    .line 6
    :cond_0
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->e:I

    .line 8
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->requestLayout()V

    .line 11
    return-void
.end method

.method public setMinWidth(I)V
    .locals 1

    .line 1
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:I

    .line 3
    if-ne p1, v0, :cond_0

    .line 5
    return-void

    .line 6
    :cond_0
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:I

    .line 8
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->requestLayout()V

    .line 11
    return-void
.end method

.method public setOnConstraintsChanged(Lo/N4;)V
    .locals 0

    .line 1
    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->k:Lo/H1;

    .line 3
    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    :cond_0
    return-void
.end method

.method public setOptimizationLevel(I)V
    .locals 1

    .line 1
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->i:I

    .line 3
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->c:Lo/M4;

    .line 5
    iput p1, v0, Lo/M4;->D0:I

    .line 7
    const/16 p1, 0x200

    .line 9
    invoke-virtual {v0, p1}, Lo/M4;->W(I)Z

    .line 12
    move-result p1

    .line 13
    sput-boolean p1, Lo/ba;->q:Z

    .line 15
    return-void
.end method

.method public final shouldDelayChildPressedState()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
