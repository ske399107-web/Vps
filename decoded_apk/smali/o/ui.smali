.class public final Lo/ui;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# instance fields
.field public final a:Lo/R4;

.field public b:Lo/Mi;


# direct methods
.method public constructor <init>(Landroid/view/View;Lo/R4;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p2, p0, Lo/ui;->a:Lo/R4;

    .line 6
    sget-object p2, Lo/Dh;->a:Ljava/util/WeakHashMap;

    .line 8
    invoke-static {p1}, Lo/wh;->a(Landroid/view/View;)Lo/Mi;

    .line 11
    move-result-object p1

    .line 12
    if-eqz p1, :cond_2

    .line 14
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 16
    const/16 v0, 0x1e

    .line 18
    if-lt p2, v0, :cond_0

    .line 20
    new-instance p2, Lo/Di;

    .line 22
    invoke-direct {p2, p1}, Lo/Di;-><init>(Lo/Mi;)V

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/16 v0, 0x1d

    .line 28
    if-lt p2, v0, :cond_1

    .line 30
    new-instance p2, Lo/Ci;

    .line 32
    invoke-direct {p2, p1}, Lo/Ci;-><init>(Lo/Mi;)V

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    new-instance p2, Lo/Ai;

    .line 38
    invoke-direct {p2, p1}, Lo/Ai;-><init>(Lo/Mi;)V

    .line 41
    :goto_0
    invoke-virtual {p2}, Lo/Ei;->b()Lo/Mi;

    .line 44
    move-result-object p1

    .line 45
    goto :goto_1

    .line 46
    :cond_2
    const/4 p1, 0x0

    .line 47
    :goto_1
    iput-object p1, p0, Lo/ui;->b:Lo/Mi;

    .line 49
    return-void
.end method


# virtual methods
.method public final onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 3
    move-object/from16 v7, p1

    .line 5
    move-object/from16 v8, p2

    .line 7
    const/16 v1, 0x8

    .line 9
    const/4 v3, 0x1

    .line 10
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isLaidOut()Z

    .line 13
    move-result v4

    .line 14
    if-nez v4, :cond_0

    .line 16
    invoke-static/range {p1 .. p2}, Lo/Mi;->g(Landroid/view/View;Landroid/view/WindowInsets;)Lo/Mi;

    .line 19
    move-result-object v1

    .line 20
    iput-object v1, v0, Lo/ui;->b:Lo/Mi;

    .line 22
    invoke-static/range {p1 .. p2}, Lo/vi;->i(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    .line 25
    move-result-object v1

    .line 26
    return-object v1

    .line 27
    :cond_0
    invoke-static/range {p1 .. p2}, Lo/Mi;->g(Landroid/view/View;Landroid/view/WindowInsets;)Lo/Mi;

    .line 30
    move-result-object v9

    .line 31
    iget-object v4, v0, Lo/ui;->b:Lo/Mi;

    .line 33
    if-nez v4, :cond_1

    .line 35
    sget-object v4, Lo/Dh;->a:Ljava/util/WeakHashMap;

    .line 37
    invoke-static/range {p1 .. p1}, Lo/wh;->a(Landroid/view/View;)Lo/Mi;

    .line 40
    move-result-object v4

    .line 41
    iput-object v4, v0, Lo/ui;->b:Lo/Mi;

    .line 43
    :cond_1
    iget-object v4, v0, Lo/ui;->b:Lo/Mi;

    .line 45
    if-nez v4, :cond_2

    .line 47
    iput-object v9, v0, Lo/ui;->b:Lo/Mi;

    .line 49
    invoke-static/range {p1 .. p2}, Lo/vi;->i(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    .line 52
    move-result-object v1

    .line 53
    return-object v1

    .line 54
    :cond_2
    invoke-static/range {p1 .. p1}, Lo/vi;->j(Landroid/view/View;)Lo/R4;

    .line 57
    move-result-object v4

    .line 58
    if-eqz v4, :cond_3

    .line 60
    iget-object v4, v4, Lo/R4;->b:Ljava/lang/Object;

    .line 62
    check-cast v4, Landroid/view/WindowInsets;

    .line 64
    invoke-static {v4, v8}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 67
    move-result v4

    .line 68
    if-eqz v4, :cond_3

    .line 70
    invoke-static/range {p1 .. p2}, Lo/vi;->i(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    .line 73
    move-result-object v1

    .line 74
    return-object v1

    .line 75
    :cond_3
    iget-object v4, v0, Lo/ui;->b:Lo/Mi;

    .line 77
    move v6, v3

    .line 78
    const/4 v5, 0x0

    .line 79
    :goto_0
    iget-object v10, v9, Lo/Mi;->a:Lo/Ki;

    .line 81
    const/16 v11, 0x100

    .line 83
    if-gt v6, v11, :cond_5

    .line 85
    invoke-virtual {v10, v6}, Lo/Ki;->f(I)Lo/t9;

    .line 88
    move-result-object v10

    .line 89
    iget-object v11, v4, Lo/Mi;->a:Lo/Ki;

    .line 91
    invoke-virtual {v11, v6}, Lo/Ki;->f(I)Lo/t9;

    .line 94
    move-result-object v11

    .line 95
    invoke-virtual {v10, v11}, Lo/t9;->equals(Ljava/lang/Object;)Z

    .line 98
    move-result v10

    .line 99
    if-nez v10, :cond_4

    .line 101
    or-int/2addr v5, v6

    .line 102
    :cond_4
    shl-int/2addr v6, v3

    .line 103
    goto :goto_0

    .line 104
    :cond_5
    if-nez v5, :cond_6

    .line 106
    invoke-static/range {p1 .. p2}, Lo/vi;->i(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    .line 109
    move-result-object v1

    .line 110
    return-object v1

    .line 111
    :cond_6
    iget-object v4, v0, Lo/ui;->b:Lo/Mi;

    .line 113
    and-int/lit8 v3, v5, 0x8

    .line 115
    if-eqz v3, :cond_8

    .line 117
    invoke-virtual {v10, v1}, Lo/Ki;->f(I)Lo/t9;

    .line 120
    move-result-object v3

    .line 121
    iget v3, v3, Lo/t9;->d:I

    .line 123
    iget-object v6, v4, Lo/Mi;->a:Lo/Ki;

    .line 125
    invoke-virtual {v6, v1}, Lo/Ki;->f(I)Lo/t9;

    .line 128
    move-result-object v1

    .line 129
    iget v1, v1, Lo/t9;->d:I

    .line 131
    if-le v3, v1, :cond_7

    .line 133
    sget-object v1, Lo/vi;->e:Landroid/view/animation/PathInterpolator;

    .line 135
    goto :goto_1

    .line 136
    :cond_7
    sget-object v1, Lo/vi;->f:Lo/o7;

    .line 138
    goto :goto_1

    .line 139
    :cond_8
    sget-object v1, Lo/vi;->g:Landroid/view/animation/DecelerateInterpolator;

    .line 141
    :goto_1
    new-instance v11, Lo/zi;

    .line 143
    const-wide/16 v12, 0xa0

    .line 145
    invoke-direct {v11, v5, v1, v12, v13}, Lo/zi;-><init>(ILandroid/view/animation/Interpolator;J)V

    .line 148
    iget-object v1, v11, Lo/zi;->a:Lo/yi;

    .line 150
    const/4 v3, 0x0

    .line 151
    invoke-virtual {v1, v3}, Lo/yi;->d(F)V

    .line 154
    const/4 v1, 0x2

    .line 155
    new-array v1, v1, [F

    .line 157
    fill-array-data v1, :array_0

    .line 160
    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 163
    move-result-object v1

    .line 164
    iget-object v3, v11, Lo/zi;->a:Lo/yi;

    .line 166
    invoke-virtual {v3}, Lo/yi;->a()J

    .line 169
    move-result-wide v12

    .line 170
    invoke-virtual {v1, v12, v13}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 173
    move-result-object v12

    .line 174
    invoke-virtual {v10, v5}, Lo/Ki;->f(I)Lo/t9;

    .line 177
    move-result-object v1

    .line 178
    iget-object v3, v4, Lo/Mi;->a:Lo/Ki;

    .line 180
    invoke-virtual {v3, v5}, Lo/Ki;->f(I)Lo/t9;

    .line 183
    move-result-object v3

    .line 184
    iget v6, v1, Lo/t9;->a:I

    .line 186
    iget v10, v3, Lo/t9;->a:I

    .line 188
    invoke-static {v6, v10}, Ljava/lang/Math;->min(II)I

    .line 191
    move-result v6

    .line 192
    iget v10, v1, Lo/t9;->b:I

    .line 194
    iget v13, v3, Lo/t9;->b:I

    .line 196
    invoke-static {v10, v13}, Ljava/lang/Math;->min(II)I

    .line 199
    move-result v14

    .line 200
    iget v15, v1, Lo/t9;->c:I

    .line 202
    iget v2, v3, Lo/t9;->c:I

    .line 204
    invoke-static {v15, v2}, Ljava/lang/Math;->min(II)I

    .line 207
    move-result v0

    .line 208
    move-object/from16 v16, v12

    .line 210
    iget v12, v1, Lo/t9;->d:I

    .line 212
    move/from16 v17, v5

    .line 214
    iget v5, v3, Lo/t9;->d:I

    .line 216
    move-object/from16 v18, v4

    .line 218
    invoke-static {v12, v5}, Ljava/lang/Math;->min(II)I

    .line 221
    move-result v4

    .line 222
    invoke-static {v6, v14, v0, v4}, Lo/t9;->b(IIII)Lo/t9;

    .line 225
    move-result-object v0

    .line 226
    iget v1, v1, Lo/t9;->a:I

    .line 228
    iget v3, v3, Lo/t9;->a:I

    .line 230
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    .line 233
    move-result v1

    .line 234
    invoke-static {v10, v13}, Ljava/lang/Math;->max(II)I

    .line 237
    move-result v3

    .line 238
    invoke-static {v15, v2}, Ljava/lang/Math;->max(II)I

    .line 241
    move-result v2

    .line 242
    invoke-static {v12, v5}, Ljava/lang/Math;->max(II)I

    .line 245
    move-result v4

    .line 246
    invoke-static {v1, v3, v2, v4}, Lo/t9;->b(IIII)Lo/t9;

    .line 249
    move-result-object v1

    .line 250
    new-instance v10, Lo/H1;

    .line 252
    const/16 v2, 0x17

    .line 254
    const/4 v3, 0x0

    .line 255
    invoke-direct {v10, v0, v1, v2, v3}, Lo/H1;-><init>(Ljava/lang/Object;Ljava/lang/Object;IZ)V

    .line 258
    invoke-static {v7, v8, v3}, Lo/vi;->f(Landroid/view/View;Landroid/view/WindowInsets;Z)V

    .line 261
    new-instance v0, Lo/ti;

    .line 263
    move-object v1, v0

    .line 264
    move-object v2, v11

    .line 265
    move-object v3, v9

    .line 266
    move-object/from16 v4, v18

    .line 268
    move/from16 v5, v17

    .line 270
    move-object/from16 v6, p1

    .line 272
    invoke-direct/range {v1 .. v6}, Lo/ti;-><init>(Lo/zi;Lo/Mi;Lo/Mi;ILandroid/view/View;)V

    .line 275
    move-object/from16 v1, v16

    .line 277
    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 280
    new-instance v0, Lo/rg;

    .line 282
    invoke-direct {v0, v11, v7}, Lo/rg;-><init>(Lo/zi;Landroid/view/View;)V

    .line 285
    invoke-virtual {v1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 288
    new-instance v0, Lo/E5;

    .line 290
    invoke-direct {v0, v7, v11, v10, v1}, Lo/E5;-><init>(Landroid/view/View;Lo/zi;Lo/H1;Landroid/animation/ValueAnimator;)V

    .line 293
    invoke-static {v7, v0}, Lo/qc;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 296
    move-object/from16 v0, p0

    .line 298
    iput-object v9, v0, Lo/ui;->b:Lo/Mi;

    .line 300
    invoke-static/range {p1 .. p2}, Lo/vi;->i(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    .line 303
    move-result-object v1

    .line 304
    return-object v1

    .line 305
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
