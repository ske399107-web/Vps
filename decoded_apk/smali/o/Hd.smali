.class public final Lo/Hd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public a:I

.field public b:I

.field public c:Landroid/widget/OverScroller;

.field public d:Landroid/view/animation/Interpolator;

.field public e:Z

.field public f:Z

.field public final synthetic g:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lo/Hd;->g:Landroidx/recyclerview/widget/RecyclerView;

    .line 6
    sget-object v0, Landroidx/recyclerview/widget/RecyclerView;->u0:Lo/kd;

    .line 8
    iput-object v0, p0, Lo/Hd;->d:Landroid/view/animation/Interpolator;

    .line 10
    const/4 v1, 0x0

    .line 11
    iput-boolean v1, p0, Lo/Hd;->e:Z

    .line 13
    iput-boolean v1, p0, Lo/Hd;->f:Z

    .line 15
    new-instance v1, Landroid/widget/OverScroller;

    .line 17
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 20
    move-result-object p1

    .line 21
    invoke-direct {v1, p1, v0}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    .line 24
    iput-object v1, p0, Lo/Hd;->c:Landroid/widget/OverScroller;

    .line 26
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lo/Hd;->e:Z

    .line 3
    if-eqz v0, :cond_0

    .line 5
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lo/Hd;->f:Z

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    iget-object v0, p0, Lo/Hd;->g:Landroidx/recyclerview/widget/RecyclerView;

    .line 11
    invoke-virtual {v0, p0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 14
    sget-object v1, Lo/Dh;->a:Ljava/util/WeakHashMap;

    .line 16
    invoke-virtual {v0, p0}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 19
    :goto_0
    return-void
.end method

.method public final b(IIILandroid/view/animation/BaseInterpolator;)V
    .locals 11

    .line 1
    const/high16 v0, -0x80000000

    .line 3
    iget-object v1, p0, Lo/Hd;->g:Landroidx/recyclerview/widget/RecyclerView;

    .line 5
    const/4 v2, 0x0

    .line 6
    if-ne p3, v0, :cond_4

    .line 8
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    .line 11
    move-result p3

    .line 12
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    .line 15
    move-result v0

    .line 16
    if-le p3, v0, :cond_0

    .line 18
    const/4 v3, 0x1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    move v3, v2

    .line 21
    :goto_0
    int-to-double v4, v2

    .line 22
    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    .line 25
    move-result-wide v4

    .line 26
    double-to-int v4, v4

    .line 27
    mul-int v5, p1, p1

    .line 29
    mul-int v6, p2, p2

    .line 31
    add-int/2addr v6, v5

    .line 32
    int-to-double v5, v6

    .line 33
    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    .line 36
    move-result-wide v5

    .line 37
    double-to-int v5, v5

    .line 38
    if-eqz v3, :cond_1

    .line 40
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 43
    move-result v6

    .line 44
    goto :goto_1

    .line 45
    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 48
    move-result v6

    .line 49
    :goto_1
    div-int/lit8 v7, v6, 0x2

    .line 51
    int-to-float v5, v5

    .line 52
    const/high16 v8, 0x3f800000    # 1.0f

    .line 54
    mul-float/2addr v5, v8

    .line 55
    int-to-float v6, v6

    .line 56
    div-float/2addr v5, v6

    .line 57
    invoke-static {v8, v5}, Ljava/lang/Math;->min(FF)F

    .line 60
    move-result v5

    .line 61
    int-to-float v7, v7

    .line 62
    const/high16 v9, 0x3f000000    # 0.5f

    .line 64
    sub-float/2addr v5, v9

    .line 65
    const v9, 0x3ef1463b

    .line 68
    mul-float/2addr v5, v9

    .line 69
    float-to-double v9, v5

    .line 70
    invoke-static {v9, v10}, Ljava/lang/Math;->sin(D)D

    .line 73
    move-result-wide v9

    .line 74
    double-to-float v5, v9

    .line 75
    mul-float/2addr v5, v7

    .line 76
    add-float/2addr v5, v7

    .line 77
    if-lez v4, :cond_2

    .line 79
    int-to-float p3, v4

    .line 80
    div-float/2addr v5, p3

    .line 81
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    .line 84
    move-result p3

    .line 85
    const/high16 v0, 0x447a0000    # 1000.0f

    .line 87
    mul-float/2addr p3, v0

    .line 88
    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    .line 91
    move-result p3

    .line 92
    mul-int/lit8 p3, p3, 0x4

    .line 94
    goto :goto_3

    .line 95
    :cond_2
    if-eqz v3, :cond_3

    .line 97
    goto :goto_2

    .line 98
    :cond_3
    move p3, v0

    .line 99
    :goto_2
    int-to-float p3, p3

    .line 100
    div-float/2addr p3, v6

    .line 101
    add-float/2addr p3, v8

    .line 102
    const/high16 v0, 0x43960000    # 300.0f

    .line 104
    mul-float/2addr p3, v0

    .line 105
    float-to-int p3, p3

    .line 106
    :goto_3
    const/16 v0, 0x7d0

    .line 108
    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    .line 111
    move-result p3

    .line 112
    :cond_4
    move v8, p3

    .line 113
    if-nez p4, :cond_5

    .line 115
    sget-object p4, Landroidx/recyclerview/widget/RecyclerView;->u0:Lo/kd;

    .line 117
    :cond_5
    iget-object p3, p0, Lo/Hd;->d:Landroid/view/animation/Interpolator;

    .line 119
    if-eq p3, p4, :cond_6

    .line 121
    iput-object p4, p0, Lo/Hd;->d:Landroid/view/animation/Interpolator;

    .line 123
    new-instance p3, Landroid/widget/OverScroller;

    .line 125
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 128
    move-result-object v0

    .line 129
    invoke-direct {p3, v0, p4}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    .line 132
    iput-object p3, p0, Lo/Hd;->c:Landroid/widget/OverScroller;

    .line 134
    :cond_6
    iput v2, p0, Lo/Hd;->b:I

    .line 136
    iput v2, p0, Lo/Hd;->a:I

    .line 138
    const/4 p3, 0x2

    .line 139
    invoke-virtual {v1, p3}, Landroidx/recyclerview/widget/RecyclerView;->setScrollState(I)V

    .line 142
    iget-object v3, p0, Lo/Hd;->c:Landroid/widget/OverScroller;

    .line 144
    const/4 v4, 0x0

    .line 145
    const/4 v5, 0x0

    .line 146
    move v6, p1

    .line 147
    move v7, p2

    .line 148
    invoke-virtual/range {v3 .. v8}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    .line 151
    invoke-virtual {p0}, Lo/Hd;->a()V

    .line 154
    return-void
.end method

.method public final run()V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 3
    iget-object v9, v0, Lo/Hd;->g:Landroidx/recyclerview/widget/RecyclerView;

    .line 5
    iget-object v1, v9, Landroidx/recyclerview/widget/RecyclerView;->l:Lo/ud;

    .line 7
    if-nez v1, :cond_0

    .line 9
    invoke-virtual {v9, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 12
    iget-object v1, v0, Lo/Hd;->c:Landroid/widget/OverScroller;

    .line 14
    invoke-virtual {v1}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 17
    return-void

    .line 18
    :cond_0
    const/4 v10, 0x0

    .line 19
    iput-boolean v10, v0, Lo/Hd;->f:Z

    .line 21
    const/4 v11, 0x1

    .line 22
    iput-boolean v11, v0, Lo/Hd;->e:Z

    .line 24
    invoke-virtual {v9}, Landroidx/recyclerview/widget/RecyclerView;->m()V

    .line 27
    iget-object v12, v0, Lo/Hd;->c:Landroid/widget/OverScroller;

    .line 29
    invoke-virtual {v12}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    .line 32
    move-result v1

    .line 33
    if-eqz v1, :cond_1d

    .line 35
    invoke-virtual {v12}, Landroid/widget/OverScroller;->getCurrX()I

    .line 38
    move-result v1

    .line 39
    invoke-virtual {v12}, Landroid/widget/OverScroller;->getCurrY()I

    .line 42
    move-result v2

    .line 43
    iget v3, v0, Lo/Hd;->a:I

    .line 45
    sub-int v7, v1, v3

    .line 47
    iget v3, v0, Lo/Hd;->b:I

    .line 49
    sub-int v8, v2, v3

    .line 51
    iput v1, v0, Lo/Hd;->a:I

    .line 53
    iput v2, v0, Lo/Hd;->b:I

    .line 55
    iget-object v3, v9, Landroidx/recyclerview/widget/RecyclerView;->o0:[I

    .line 57
    aput v10, v3, v10

    .line 59
    aput v10, v3, v11

    .line 61
    const/4 v6, 0x0

    .line 62
    const/4 v5, 0x1

    .line 63
    move-object v1, v9

    .line 64
    move v2, v7

    .line 65
    move v4, v8

    .line 66
    invoke-virtual/range {v1 .. v6}, Landroidx/recyclerview/widget/RecyclerView;->r(I[III[I)Z

    .line 69
    move-result v1

    .line 70
    iget-object v13, v9, Landroidx/recyclerview/widget/RecyclerView;->o0:[I

    .line 72
    if-eqz v1, :cond_1

    .line 74
    aget v1, v13, v10

    .line 76
    sub-int/2addr v7, v1

    .line 77
    aget v1, v13, v11

    .line 79
    sub-int/2addr v8, v1

    .line 80
    :cond_1
    invoke-virtual {v9}, Landroid/view/View;->getOverScrollMode()I

    .line 83
    move-result v1

    .line 84
    const/4 v14, 0x2

    .line 85
    if-eq v1, v14, :cond_2

    .line 87
    invoke-virtual {v9, v7, v8}, Landroidx/recyclerview/widget/RecyclerView;->l(II)V

    .line 90
    :cond_2
    iget-object v1, v9, Landroidx/recyclerview/widget/RecyclerView;->k:Lo/md;

    .line 92
    if-eqz v1, :cond_6

    .line 94
    aput v10, v13, v10

    .line 96
    aput v10, v13, v11

    .line 98
    invoke-virtual {v9, v7, v8, v13}, Landroidx/recyclerview/widget/RecyclerView;->X(II[I)V

    .line 101
    aget v1, v13, v10

    .line 103
    aget v2, v13, v11

    .line 105
    sub-int/2addr v7, v1

    .line 106
    sub-int/2addr v8, v2

    .line 107
    iget-object v3, v9, Landroidx/recyclerview/widget/RecyclerView;->l:Lo/ud;

    .line 109
    iget-object v3, v3, Lo/ud;->e:Lo/aa;

    .line 111
    if-eqz v3, :cond_5

    .line 113
    iget-boolean v4, v3, Lo/aa;->d:Z

    .line 115
    if-nez v4, :cond_5

    .line 117
    iget-boolean v4, v3, Lo/aa;->e:Z

    .line 119
    if-eqz v4, :cond_5

    .line 121
    iget-object v4, v9, Landroidx/recyclerview/widget/RecyclerView;->c0:Lo/Fd;

    .line 123
    invoke-virtual {v4}, Lo/Fd;->b()I

    .line 126
    move-result v4

    .line 127
    if-nez v4, :cond_3

    .line 129
    invoke-virtual {v3}, Lo/aa;->i()V

    .line 132
    goto :goto_0

    .line 133
    :cond_3
    iget v5, v3, Lo/aa;->a:I

    .line 135
    if-lt v5, v4, :cond_4

    .line 137
    sub-int/2addr v4, v11

    .line 138
    iput v4, v3, Lo/aa;->a:I

    .line 140
    invoke-virtual {v3, v1, v2}, Lo/aa;->g(II)V

    .line 143
    goto :goto_0

    .line 144
    :cond_4
    invoke-virtual {v3, v1, v2}, Lo/aa;->g(II)V

    .line 147
    :cond_5
    :goto_0
    move v15, v1

    .line 148
    move/from16 v16, v7

    .line 150
    move/from16 v17, v8

    .line 152
    move v8, v2

    .line 153
    goto :goto_1

    .line 154
    :cond_6
    move/from16 v16, v7

    .line 156
    move/from16 v17, v8

    .line 158
    move v8, v10

    .line 159
    move v15, v8

    .line 160
    :goto_1
    iget-object v1, v9, Landroidx/recyclerview/widget/RecyclerView;->m:Ljava/util/ArrayList;

    .line 162
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 165
    move-result v1

    .line 166
    if-nez v1, :cond_7

    .line 168
    invoke-virtual {v9}, Landroid/view/View;->invalidate()V

    .line 171
    :cond_7
    iget-object v7, v9, Landroidx/recyclerview/widget/RecyclerView;->o0:[I

    .line 173
    aput v10, v7, v10

    .line 175
    aput v10, v7, v11

    .line 177
    const/4 v3, 0x0

    .line 178
    const/16 v18, 0x1

    .line 180
    move-object v1, v9

    .line 181
    move v2, v15

    .line 182
    move v4, v8

    .line 183
    move/from16 v5, v16

    .line 185
    move/from16 v6, v17

    .line 187
    move v14, v8

    .line 188
    move/from16 v8, v18

    .line 190
    invoke-virtual/range {v1 .. v8}, Landroidx/recyclerview/widget/RecyclerView;->s(I[IIII[II)V

    .line 193
    aget v1, v13, v10

    .line 195
    sub-int v16, v16, v1

    .line 197
    aget v1, v13, v11

    .line 199
    sub-int v17, v17, v1

    .line 201
    if-nez v15, :cond_8

    .line 203
    if-eqz v14, :cond_9

    .line 205
    :cond_8
    invoke-virtual {v9, v15, v14}, Landroidx/recyclerview/widget/RecyclerView;->t(II)V

    .line 208
    :cond_9
    invoke-static {v9}, Landroidx/recyclerview/widget/RecyclerView;->d(Landroidx/recyclerview/widget/RecyclerView;)Z

    .line 211
    move-result v1

    .line 212
    if-nez v1, :cond_a

    .line 214
    invoke-virtual {v9}, Landroid/view/View;->invalidate()V

    .line 217
    :cond_a
    invoke-virtual {v12}, Landroid/widget/OverScroller;->getCurrX()I

    .line 220
    move-result v1

    .line 221
    invoke-virtual {v12}, Landroid/widget/OverScroller;->getFinalX()I

    .line 224
    move-result v2

    .line 225
    if-ne v1, v2, :cond_b

    .line 227
    move v1, v11

    .line 228
    goto :goto_2

    .line 229
    :cond_b
    move v1, v10

    .line 230
    :goto_2
    invoke-virtual {v12}, Landroid/widget/OverScroller;->getCurrY()I

    .line 233
    move-result v2

    .line 234
    invoke-virtual {v12}, Landroid/widget/OverScroller;->getFinalY()I

    .line 237
    move-result v3

    .line 238
    if-ne v2, v3, :cond_c

    .line 240
    move v2, v11

    .line 241
    goto :goto_3

    .line 242
    :cond_c
    move v2, v10

    .line 243
    :goto_3
    invoke-virtual {v12}, Landroid/widget/OverScroller;->isFinished()Z

    .line 246
    move-result v3

    .line 247
    if-nez v3, :cond_f

    .line 249
    if-nez v1, :cond_d

    .line 251
    if-eqz v16, :cond_e

    .line 253
    :cond_d
    if-nez v2, :cond_f

    .line 255
    if-eqz v17, :cond_e

    .line 257
    goto :goto_4

    .line 258
    :cond_e
    move v1, v10

    .line 259
    goto :goto_5

    .line 260
    :cond_f
    :goto_4
    move v1, v11

    .line 261
    :goto_5
    iget-object v2, v9, Landroidx/recyclerview/widget/RecyclerView;->l:Lo/ud;

    .line 263
    iget-object v2, v2, Lo/ud;->e:Lo/aa;

    .line 265
    if-eqz v2, :cond_10

    .line 267
    iget-boolean v2, v2, Lo/aa;->d:Z

    .line 269
    if-eqz v2, :cond_10

    .line 271
    goto/16 :goto_a

    .line 273
    :cond_10
    if-eqz v1, :cond_1c

    .line 275
    invoke-virtual {v9}, Landroid/view/View;->getOverScrollMode()I

    .line 278
    move-result v1

    .line 279
    const/4 v2, 0x2

    .line 280
    if-eq v1, v2, :cond_1a

    .line 282
    invoke-virtual {v12}, Landroid/widget/OverScroller;->getCurrVelocity()F

    .line 285
    move-result v1

    .line 286
    float-to-int v1, v1

    .line 287
    if-gez v16, :cond_11

    .line 289
    neg-int v2, v1

    .line 290
    goto :goto_6

    .line 291
    :cond_11
    if-lez v16, :cond_12

    .line 293
    move v2, v1

    .line 294
    goto :goto_6

    .line 295
    :cond_12
    move v2, v10

    .line 296
    :goto_6
    if-gez v17, :cond_13

    .line 298
    neg-int v1, v1

    .line 299
    goto :goto_7

    .line 300
    :cond_13
    if-lez v17, :cond_14

    .line 302
    goto :goto_7

    .line 303
    :cond_14
    move v1, v10

    .line 304
    :goto_7
    if-gez v2, :cond_15

    .line 306
    invoke-virtual {v9}, Landroidx/recyclerview/widget/RecyclerView;->v()V

    .line 309
    iget-object v3, v9, Landroidx/recyclerview/widget/RecyclerView;->D:Landroid/widget/EdgeEffect;

    .line 311
    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 314
    move-result v3

    .line 315
    if-eqz v3, :cond_16

    .line 317
    iget-object v3, v9, Landroidx/recyclerview/widget/RecyclerView;->D:Landroid/widget/EdgeEffect;

    .line 319
    neg-int v4, v2

    .line 320
    invoke-virtual {v3, v4}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    .line 323
    goto :goto_8

    .line 324
    :cond_15
    if-lez v2, :cond_16

    .line 326
    invoke-virtual {v9}, Landroidx/recyclerview/widget/RecyclerView;->w()V

    .line 329
    iget-object v3, v9, Landroidx/recyclerview/widget/RecyclerView;->F:Landroid/widget/EdgeEffect;

    .line 331
    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 334
    move-result v3

    .line 335
    if-eqz v3, :cond_16

    .line 337
    iget-object v3, v9, Landroidx/recyclerview/widget/RecyclerView;->F:Landroid/widget/EdgeEffect;

    .line 339
    invoke-virtual {v3, v2}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    .line 342
    :cond_16
    :goto_8
    if-gez v1, :cond_17

    .line 344
    invoke-virtual {v9}, Landroidx/recyclerview/widget/RecyclerView;->x()V

    .line 347
    iget-object v3, v9, Landroidx/recyclerview/widget/RecyclerView;->E:Landroid/widget/EdgeEffect;

    .line 349
    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 352
    move-result v3

    .line 353
    if-eqz v3, :cond_18

    .line 355
    iget-object v3, v9, Landroidx/recyclerview/widget/RecyclerView;->E:Landroid/widget/EdgeEffect;

    .line 357
    neg-int v4, v1

    .line 358
    invoke-virtual {v3, v4}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    .line 361
    goto :goto_9

    .line 362
    :cond_17
    if-lez v1, :cond_18

    .line 364
    invoke-virtual {v9}, Landroidx/recyclerview/widget/RecyclerView;->u()V

    .line 367
    iget-object v3, v9, Landroidx/recyclerview/widget/RecyclerView;->G:Landroid/widget/EdgeEffect;

    .line 369
    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 372
    move-result v3

    .line 373
    if-eqz v3, :cond_18

    .line 375
    iget-object v3, v9, Landroidx/recyclerview/widget/RecyclerView;->G:Landroid/widget/EdgeEffect;

    .line 377
    invoke-virtual {v3, v1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    .line 380
    :cond_18
    :goto_9
    if-nez v2, :cond_19

    .line 382
    if-eqz v1, :cond_1a

    .line 384
    :cond_19
    sget-object v1, Lo/Dh;->a:Ljava/util/WeakHashMap;

    .line 386
    invoke-virtual {v9}, Landroid/view/View;->postInvalidateOnAnimation()V

    .line 389
    :cond_1a
    iget-object v1, v9, Landroidx/recyclerview/widget/RecyclerView;->b0:Lo/R8;

    .line 391
    iget-object v2, v1, Lo/R8;->c:[I

    .line 393
    if-eqz v2, :cond_1b

    .line 395
    const/4 v3, -0x1

    .line 396
    invoke-static {v2, v3}, Ljava/util/Arrays;->fill([II)V

    .line 399
    :cond_1b
    iput v10, v1, Lo/R8;->d:I

    .line 401
    goto :goto_b

    .line 402
    :cond_1c
    :goto_a
    invoke-virtual/range {p0 .. p0}, Lo/Hd;->a()V

    .line 405
    iget-object v1, v9, Landroidx/recyclerview/widget/RecyclerView;->a0:Lo/T8;

    .line 407
    if-eqz v1, :cond_1d

    .line 409
    invoke-virtual {v1, v9, v15, v14}, Lo/T8;->a(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 412
    :cond_1d
    :goto_b
    iget-object v1, v9, Landroidx/recyclerview/widget/RecyclerView;->l:Lo/ud;

    .line 414
    iget-object v1, v1, Lo/ud;->e:Lo/aa;

    .line 416
    if-eqz v1, :cond_1e

    .line 418
    iget-boolean v2, v1, Lo/aa;->d:Z

    .line 420
    if-eqz v2, :cond_1e

    .line 422
    invoke-virtual {v1, v10, v10}, Lo/aa;->g(II)V

    .line 425
    :cond_1e
    iput-boolean v10, v0, Lo/Hd;->e:Z

    .line 427
    iget-boolean v1, v0, Lo/Hd;->f:Z

    .line 429
    if-eqz v1, :cond_1f

    .line 431
    invoke-virtual {v9, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 434
    sget-object v1, Lo/Dh;->a:Ljava/util/WeakHashMap;

    .line 436
    invoke-virtual {v9, v0}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 439
    goto :goto_c

    .line 440
    :cond_1f
    invoke-virtual {v9, v10}, Landroidx/recyclerview/widget/RecyclerView;->setScrollState(I)V

    .line 443
    invoke-virtual {v9, v11}, Landroidx/recyclerview/widget/RecyclerView;->c0(I)V

    .line 446
    :goto_c
    return-void
.end method
