.class public final Lo/Ce;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:[Lo/Ke;

.field public final b:[Landroid/graphics/Matrix;

.field public final c:[Landroid/graphics/Matrix;

.field public final d:Landroid/graphics/PointF;

.field public final e:Landroid/graphics/Path;

.field public final f:Landroid/graphics/Path;

.field public final g:Lo/Ke;

.field public final h:[F

.field public final i:[F

.field public final j:Landroid/graphics/Path;

.field public final k:Landroid/graphics/Path;

.field public final l:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x4

    .line 5
    new-array v1, v0, [Lo/Ke;

    .line 7
    iput-object v1, p0, Lo/Ce;->a:[Lo/Ke;

    .line 9
    new-array v1, v0, [Landroid/graphics/Matrix;

    .line 11
    iput-object v1, p0, Lo/Ce;->b:[Landroid/graphics/Matrix;

    .line 13
    new-array v1, v0, [Landroid/graphics/Matrix;

    .line 15
    iput-object v1, p0, Lo/Ce;->c:[Landroid/graphics/Matrix;

    .line 17
    new-instance v1, Landroid/graphics/PointF;

    .line 19
    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    .line 22
    iput-object v1, p0, Lo/Ce;->d:Landroid/graphics/PointF;

    .line 24
    new-instance v1, Landroid/graphics/Path;

    .line 26
    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 29
    iput-object v1, p0, Lo/Ce;->e:Landroid/graphics/Path;

    .line 31
    new-instance v1, Landroid/graphics/Path;

    .line 33
    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 36
    iput-object v1, p0, Lo/Ce;->f:Landroid/graphics/Path;

    .line 38
    new-instance v1, Lo/Ke;

    .line 40
    invoke-direct {v1}, Lo/Ke;-><init>()V

    .line 43
    iput-object v1, p0, Lo/Ce;->g:Lo/Ke;

    .line 45
    const/4 v1, 0x2

    .line 46
    new-array v2, v1, [F

    .line 48
    iput-object v2, p0, Lo/Ce;->h:[F

    .line 50
    new-array v1, v1, [F

    .line 52
    iput-object v1, p0, Lo/Ce;->i:[F

    .line 54
    new-instance v1, Landroid/graphics/Path;

    .line 56
    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 59
    iput-object v1, p0, Lo/Ce;->j:Landroid/graphics/Path;

    .line 61
    new-instance v1, Landroid/graphics/Path;

    .line 63
    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 66
    iput-object v1, p0, Lo/Ce;->k:Landroid/graphics/Path;

    .line 68
    const/4 v1, 0x1

    .line 69
    iput-boolean v1, p0, Lo/Ce;->l:Z

    .line 71
    const/4 v1, 0x0

    .line 72
    :goto_0
    if-ge v1, v0, :cond_0

    .line 74
    iget-object v2, p0, Lo/Ce;->a:[Lo/Ke;

    .line 76
    new-instance v3, Lo/Ke;

    .line 78
    invoke-direct {v3}, Lo/Ke;-><init>()V

    .line 81
    aput-object v3, v2, v1

    .line 83
    iget-object v2, p0, Lo/Ce;->b:[Landroid/graphics/Matrix;

    .line 85
    new-instance v3, Landroid/graphics/Matrix;

    .line 87
    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    .line 90
    aput-object v3, v2, v1

    .line 92
    iget-object v2, p0, Lo/Ce;->c:[Landroid/graphics/Matrix;

    .line 94
    new-instance v3, Landroid/graphics/Matrix;

    .line 96
    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    .line 99
    aput-object v3, v2, v1

    .line 101
    add-int/lit8 v1, v1, 0x1

    .line 103
    goto :goto_0

    .line 104
    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Lo/Ae;FLandroid/graphics/RectF;Lo/C;Landroid/graphics/Path;)V
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 3
    move-object/from16 v1, p1

    .line 5
    move/from16 v2, p2

    .line 7
    move-object/from16 v3, p3

    .line 9
    move-object/from16 v4, p4

    .line 11
    move-object/from16 v5, p5

    .line 13
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Path;->rewind()V

    .line 16
    iget-object v6, v0, Lo/Ce;->e:Landroid/graphics/Path;

    .line 18
    invoke-virtual {v6}, Landroid/graphics/Path;->rewind()V

    .line 21
    iget-object v7, v0, Lo/Ce;->f:Landroid/graphics/Path;

    .line 23
    invoke-virtual {v7}, Landroid/graphics/Path;->rewind()V

    .line 26
    sget-object v8, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    .line 28
    invoke-virtual {v7, v3, v8}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 31
    const/4 v9, 0x0

    .line 32
    :goto_0
    iget-object v10, v0, Lo/Ce;->c:[Landroid/graphics/Matrix;

    .line 34
    iget-object v11, v0, Lo/Ce;->b:[Landroid/graphics/Matrix;

    .line 36
    iget-object v12, v0, Lo/Ce;->a:[Lo/Ke;

    .line 38
    const/4 v13, 0x1

    .line 39
    const/4 v14, 0x4

    .line 40
    const/4 v15, 0x2

    .line 41
    iget-object v8, v0, Lo/Ce;->h:[F

    .line 43
    if-ge v9, v14, :cond_9

    .line 45
    if-eq v9, v13, :cond_2

    .line 47
    if-eq v9, v15, :cond_1

    .line 49
    const/4 v14, 0x3

    .line 50
    if-eq v9, v14, :cond_0

    .line 52
    iget-object v14, v1, Lo/Ae;->f:Lo/d5;

    .line 54
    goto :goto_1

    .line 55
    :cond_0
    iget-object v14, v1, Lo/Ae;->e:Lo/d5;

    .line 57
    goto :goto_1

    .line 58
    :cond_1
    iget-object v14, v1, Lo/Ae;->h:Lo/d5;

    .line 60
    goto :goto_1

    .line 61
    :cond_2
    iget-object v14, v1, Lo/Ae;->g:Lo/d5;

    .line 63
    :goto_1
    if-eq v9, v13, :cond_5

    .line 65
    if-eq v9, v15, :cond_4

    .line 67
    const/4 v15, 0x3

    .line 68
    if-eq v9, v15, :cond_3

    .line 70
    iget-object v15, v1, Lo/Ae;->b:Lo/L1;

    .line 72
    goto :goto_2

    .line 73
    :cond_3
    iget-object v15, v1, Lo/Ae;->a:Lo/L1;

    .line 75
    goto :goto_2

    .line 76
    :cond_4
    iget-object v15, v1, Lo/Ae;->d:Lo/L1;

    .line 78
    goto :goto_2

    .line 79
    :cond_5
    iget-object v15, v1, Lo/Ae;->c:Lo/L1;

    .line 81
    :goto_2
    aget-object v13, v12, v9

    .line 83
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 86
    invoke-interface {v14, v3}, Lo/d5;->a(Landroid/graphics/RectF;)F

    .line 89
    move-result v14

    .line 90
    invoke-virtual {v15, v13, v2, v14}, Lo/L1;->x(Lo/Ke;FF)V

    .line 93
    add-int/lit8 v13, v9, 0x1

    .line 95
    rem-int/lit8 v14, v13, 0x4

    .line 97
    mul-int/lit8 v14, v14, 0x5a

    .line 99
    int-to-float v14, v14

    .line 100
    aget-object v15, v11, v9

    .line 102
    invoke-virtual {v15}, Landroid/graphics/Matrix;->reset()V

    .line 105
    iget-object v15, v0, Lo/Ce;->d:Landroid/graphics/PointF;

    .line 107
    move/from16 v18, v13

    .line 109
    const/4 v13, 0x1

    .line 110
    if-eq v9, v13, :cond_8

    .line 112
    const/4 v13, 0x2

    .line 113
    if-eq v9, v13, :cond_7

    .line 115
    const/4 v13, 0x3

    .line 116
    if-eq v9, v13, :cond_6

    .line 118
    iget v13, v3, Landroid/graphics/RectF;->right:F

    .line 120
    move-object/from16 v19, v6

    .line 122
    iget v6, v3, Landroid/graphics/RectF;->top:F

    .line 124
    invoke-virtual {v15, v13, v6}, Landroid/graphics/PointF;->set(FF)V

    .line 127
    goto :goto_3

    .line 128
    :cond_6
    move-object/from16 v19, v6

    .line 130
    iget v6, v3, Landroid/graphics/RectF;->left:F

    .line 132
    iget v13, v3, Landroid/graphics/RectF;->top:F

    .line 134
    invoke-virtual {v15, v6, v13}, Landroid/graphics/PointF;->set(FF)V

    .line 137
    goto :goto_3

    .line 138
    :cond_7
    move-object/from16 v19, v6

    .line 140
    iget v6, v3, Landroid/graphics/RectF;->left:F

    .line 142
    iget v13, v3, Landroid/graphics/RectF;->bottom:F

    .line 144
    invoke-virtual {v15, v6, v13}, Landroid/graphics/PointF;->set(FF)V

    .line 147
    goto :goto_3

    .line 148
    :cond_8
    move-object/from16 v19, v6

    .line 150
    iget v6, v3, Landroid/graphics/RectF;->right:F

    .line 152
    iget v13, v3, Landroid/graphics/RectF;->bottom:F

    .line 154
    invoke-virtual {v15, v6, v13}, Landroid/graphics/PointF;->set(FF)V

    .line 157
    :goto_3
    aget-object v6, v11, v9

    .line 159
    iget v13, v15, Landroid/graphics/PointF;->x:F

    .line 161
    iget v15, v15, Landroid/graphics/PointF;->y:F

    .line 163
    invoke-virtual {v6, v13, v15}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 166
    aget-object v6, v11, v9

    .line 168
    invoke-virtual {v6, v14}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 171
    aget-object v6, v12, v9

    .line 173
    iget v12, v6, Lo/Ke;->c:F

    .line 175
    const/4 v13, 0x0

    .line 176
    aput v12, v8, v13

    .line 178
    iget v6, v6, Lo/Ke;->d:F

    .line 180
    const/4 v12, 0x1

    .line 181
    aput v6, v8, v12

    .line 183
    aget-object v6, v11, v9

    .line 185
    invoke-virtual {v6, v8}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 188
    aget-object v6, v10, v9

    .line 190
    invoke-virtual {v6}, Landroid/graphics/Matrix;->reset()V

    .line 193
    aget-object v6, v10, v9

    .line 195
    aget v11, v8, v13

    .line 197
    aget v8, v8, v12

    .line 199
    invoke-virtual {v6, v11, v8}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 202
    aget-object v6, v10, v9

    .line 204
    invoke-virtual {v6, v14}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 207
    move/from16 v9, v18

    .line 209
    move-object/from16 v6, v19

    .line 211
    goto/16 :goto_0

    .line 213
    :cond_9
    move-object/from16 v19, v6

    .line 215
    const/4 v13, 0x0

    .line 216
    :goto_4
    if-ge v13, v14, :cond_13

    .line 218
    aget-object v6, v12, v13

    .line 220
    iget v9, v6, Lo/Ke;->a:F

    .line 222
    const/4 v15, 0x0

    .line 223
    aput v9, v8, v15

    .line 225
    iget v6, v6, Lo/Ke;->b:F

    .line 227
    const/4 v9, 0x1

    .line 228
    aput v6, v8, v9

    .line 230
    aget-object v6, v11, v13

    .line 232
    invoke-virtual {v6, v8}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 235
    if-nez v13, :cond_a

    .line 237
    aget v6, v8, v15

    .line 239
    aget v14, v8, v9

    .line 241
    invoke-virtual {v5, v6, v14}, Landroid/graphics/Path;->moveTo(FF)V

    .line 244
    goto :goto_5

    .line 245
    :cond_a
    aget v6, v8, v15

    .line 247
    aget v14, v8, v9

    .line 249
    invoke-virtual {v5, v6, v14}, Landroid/graphics/Path;->lineTo(FF)V

    .line 252
    :goto_5
    aget-object v6, v12, v13

    .line 254
    aget-object v9, v11, v13

    .line 256
    invoke-virtual {v6, v9, v5}, Lo/Ke;->b(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    .line 259
    if-eqz v4, :cond_b

    .line 261
    aget-object v6, v12, v13

    .line 263
    aget-object v9, v11, v13

    .line 265
    iget-object v14, v4, Lo/C;->b:Ljava/lang/Object;

    .line 267
    check-cast v14, Lo/eb;

    .line 269
    iget-object v15, v14, Lo/eb;->d:Ljava/util/BitSet;

    .line 271
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 274
    const/4 v3, 0x0

    .line 275
    invoke-virtual {v15, v13, v3}, Ljava/util/BitSet;->set(IZ)V

    .line 278
    iget v3, v6, Lo/Ke;->f:F

    .line 280
    invoke-virtual {v6, v3}, Lo/Ke;->a(F)V

    .line 283
    new-instance v3, Landroid/graphics/Matrix;

    .line 285
    invoke-direct {v3, v9}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    .line 288
    new-instance v9, Ljava/util/ArrayList;

    .line 290
    iget-object v6, v6, Lo/Ke;->h:Ljava/util/ArrayList;

    .line 292
    invoke-direct {v9, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 295
    new-instance v6, Lo/De;

    .line 297
    invoke-direct {v6, v9, v3}, Lo/De;-><init>(Ljava/util/ArrayList;Landroid/graphics/Matrix;)V

    .line 300
    iget-object v3, v14, Lo/eb;->b:[Lo/Je;

    .line 302
    aput-object v6, v3, v13

    .line 304
    :cond_b
    add-int/lit8 v3, v13, 0x1

    .line 306
    rem-int/lit8 v6, v3, 0x4

    .line 308
    aget-object v9, v12, v13

    .line 310
    iget v14, v9, Lo/Ke;->c:F

    .line 312
    const/4 v15, 0x0

    .line 313
    aput v14, v8, v15

    .line 315
    iget v9, v9, Lo/Ke;->d:F

    .line 317
    const/4 v14, 0x1

    .line 318
    aput v9, v8, v14

    .line 320
    aget-object v9, v11, v13

    .line 322
    invoke-virtual {v9, v8}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 325
    aget-object v9, v12, v6

    .line 327
    iget v14, v9, Lo/Ke;->a:F

    .line 329
    iget-object v15, v0, Lo/Ce;->i:[F

    .line 331
    const/16 v16, 0x0

    .line 333
    aput v14, v15, v16

    .line 335
    iget v9, v9, Lo/Ke;->b:F

    .line 337
    const/4 v14, 0x1

    .line 338
    aput v9, v15, v14

    .line 340
    aget-object v9, v11, v6

    .line 342
    invoke-virtual {v9, v15}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 345
    aget v9, v8, v16

    .line 347
    aget v17, v15, v16

    .line 349
    sub-float v9, v9, v17

    .line 351
    move/from16 v20, v3

    .line 353
    float-to-double v3, v9

    .line 354
    aget v9, v8, v14

    .line 356
    aget v15, v15, v14

    .line 358
    sub-float/2addr v9, v15

    .line 359
    float-to-double v14, v9

    .line 360
    invoke-static {v3, v4, v14, v15}, Ljava/lang/Math;->hypot(DD)D

    .line 363
    move-result-wide v3

    .line 364
    double-to-float v3, v3

    .line 365
    const v4, 0x3a83126f    # 0.001f

    .line 368
    sub-float/2addr v3, v4

    .line 369
    const/4 v4, 0x0

    .line 370
    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    .line 373
    move-result v3

    .line 374
    aget-object v9, v12, v13

    .line 376
    iget v14, v9, Lo/Ke;->c:F

    .line 378
    const/4 v15, 0x0

    .line 379
    aput v14, v8, v15

    .line 381
    iget v9, v9, Lo/Ke;->d:F

    .line 383
    const/4 v14, 0x1

    .line 384
    aput v9, v8, v14

    .line 386
    aget-object v9, v11, v13

    .line 388
    invoke-virtual {v9, v8}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 391
    if-eq v13, v14, :cond_c

    .line 393
    const/4 v9, 0x3

    .line 394
    if-eq v13, v9, :cond_c

    .line 396
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/RectF;->centerY()F

    .line 399
    move-result v9

    .line 400
    aget v15, v8, v14

    .line 402
    sub-float/2addr v9, v15

    .line 403
    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    .line 406
    move-result v9

    .line 407
    goto :goto_6

    .line 408
    :cond_c
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/RectF;->centerX()F

    .line 411
    move-result v9

    .line 412
    const/4 v14, 0x0

    .line 413
    aget v15, v8, v14

    .line 415
    sub-float/2addr v9, v15

    .line 416
    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    .line 419
    move-result v9

    .line 420
    :goto_6
    const/high16 v14, 0x43870000    # 270.0f

    .line 422
    iget-object v15, v0, Lo/Ce;->g:Lo/Ke;

    .line 424
    invoke-virtual {v15, v4, v4, v14, v4}, Lo/Ke;->d(FFFF)V

    .line 427
    const/4 v4, 0x1

    .line 428
    if-eq v13, v4, :cond_f

    .line 430
    const/4 v4, 0x2

    .line 431
    if-eq v13, v4, :cond_e

    .line 433
    const/4 v14, 0x3

    .line 434
    if-eq v13, v14, :cond_d

    .line 436
    iget-object v4, v1, Lo/Ae;->j:Lo/u6;

    .line 438
    goto :goto_7

    .line 439
    :cond_d
    iget-object v4, v1, Lo/Ae;->i:Lo/u6;

    .line 441
    goto :goto_7

    .line 442
    :cond_e
    const/4 v14, 0x3

    .line 443
    iget-object v4, v1, Lo/Ae;->l:Lo/u6;

    .line 445
    goto :goto_7

    .line 446
    :cond_f
    const/4 v14, 0x3

    .line 447
    iget-object v4, v1, Lo/Ae;->k:Lo/u6;

    .line 449
    :goto_7
    invoke-virtual {v4, v3, v9, v2, v15}, Lo/u6;->f(FFFLo/Ke;)V

    .line 452
    iget-object v3, v0, Lo/Ce;->j:Landroid/graphics/Path;

    .line 454
    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    .line 457
    aget-object v9, v10, v13

    .line 459
    invoke-virtual {v15, v9, v3}, Lo/Ke;->b(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    .line 462
    iget-boolean v9, v0, Lo/Ce;->l:Z

    .line 464
    if-eqz v9, :cond_10

    .line 466
    invoke-virtual {v4}, Lo/u6;->c()Z

    .line 469
    move-result v4

    .line 470
    if-nez v4, :cond_11

    .line 472
    invoke-virtual {v0, v3, v13}, Lo/Ce;->b(Landroid/graphics/Path;I)Z

    .line 475
    move-result v4

    .line 476
    if-nez v4, :cond_11

    .line 478
    invoke-virtual {v0, v3, v6}, Lo/Ce;->b(Landroid/graphics/Path;I)Z

    .line 481
    move-result v4

    .line 482
    if-eqz v4, :cond_10

    .line 484
    goto :goto_8

    .line 485
    :cond_10
    move-object/from16 v9, v19

    .line 487
    const/4 v6, 0x1

    .line 488
    goto :goto_a

    .line 489
    :cond_11
    :goto_8
    sget-object v4, Landroid/graphics/Path$Op;->DIFFERENCE:Landroid/graphics/Path$Op;

    .line 491
    invoke-virtual {v3, v3, v7, v4}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    .line 494
    iget v3, v15, Lo/Ke;->a:F

    .line 496
    const/4 v4, 0x0

    .line 497
    aput v3, v8, v4

    .line 499
    iget v3, v15, Lo/Ke;->b:F

    .line 501
    const/4 v6, 0x1

    .line 502
    aput v3, v8, v6

    .line 504
    aget-object v3, v10, v13

    .line 506
    invoke-virtual {v3, v8}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 509
    aget v3, v8, v4

    .line 511
    aget v4, v8, v6

    .line 513
    move-object/from16 v9, v19

    .line 515
    invoke-virtual {v9, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 518
    aget-object v3, v10, v13

    .line 520
    invoke-virtual {v15, v3, v9}, Lo/Ke;->b(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    .line 523
    :goto_9
    move-object/from16 v3, p4

    .line 525
    goto :goto_b

    .line 526
    :goto_a
    aget-object v3, v10, v13

    .line 528
    invoke-virtual {v15, v3, v5}, Lo/Ke;->b(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    .line 531
    goto :goto_9

    .line 532
    :goto_b
    if-eqz v3, :cond_12

    .line 534
    aget-object v4, v10, v13

    .line 536
    iget-object v6, v3, Lo/C;->b:Ljava/lang/Object;

    .line 538
    check-cast v6, Lo/eb;

    .line 540
    iget-object v14, v6, Lo/eb;->d:Ljava/util/BitSet;

    .line 542
    add-int/lit8 v0, v13, 0x4

    .line 544
    const/4 v1, 0x0

    .line 545
    invoke-virtual {v14, v0, v1}, Ljava/util/BitSet;->set(IZ)V

    .line 548
    iget v0, v15, Lo/Ke;->f:F

    .line 550
    invoke-virtual {v15, v0}, Lo/Ke;->a(F)V

    .line 553
    new-instance v0, Landroid/graphics/Matrix;

    .line 555
    invoke-direct {v0, v4}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    .line 558
    new-instance v4, Ljava/util/ArrayList;

    .line 560
    iget-object v14, v15, Lo/Ke;->h:Ljava/util/ArrayList;

    .line 562
    invoke-direct {v4, v14}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 565
    new-instance v14, Lo/De;

    .line 567
    invoke-direct {v14, v4, v0}, Lo/De;-><init>(Ljava/util/ArrayList;Landroid/graphics/Matrix;)V

    .line 570
    iget-object v0, v6, Lo/eb;->c:[Lo/Je;

    .line 572
    aput-object v14, v0, v13

    .line 574
    goto :goto_c

    .line 575
    :cond_12
    const/4 v1, 0x0

    .line 576
    :goto_c
    move-object/from16 v0, p0

    .line 578
    move-object/from16 v1, p1

    .line 580
    move-object v4, v3

    .line 581
    move-object/from16 v19, v9

    .line 583
    move/from16 v13, v20

    .line 585
    const/4 v14, 0x4

    .line 586
    move-object/from16 v3, p3

    .line 588
    goto/16 :goto_4

    .line 590
    :cond_13
    move-object/from16 v9, v19

    .line 592
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Path;->close()V

    .line 595
    invoke-virtual {v9}, Landroid/graphics/Path;->close()V

    .line 598
    invoke-virtual {v9}, Landroid/graphics/Path;->isEmpty()Z

    .line 601
    move-result v0

    .line 602
    if-nez v0, :cond_14

    .line 604
    sget-object v0, Landroid/graphics/Path$Op;->UNION:Landroid/graphics/Path$Op;

    .line 606
    invoke-virtual {v5, v9, v0}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    .line 609
    :cond_14
    return-void
.end method

.method public final b(Landroid/graphics/Path;I)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lo/Ce;->k:Landroid/graphics/Path;

    .line 3
    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 6
    iget-object v1, p0, Lo/Ce;->a:[Lo/Ke;

    .line 8
    aget-object v1, v1, p2

    .line 10
    iget-object v2, p0, Lo/Ce;->b:[Landroid/graphics/Matrix;

    .line 12
    aget-object p2, v2, p2

    .line 14
    invoke-virtual {v1, p2, v0}, Lo/Ke;->b(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    .line 17
    new-instance p2, Landroid/graphics/RectF;

    .line 19
    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    .line 22
    const/4 v1, 0x1

    .line 23
    invoke-virtual {p1, p2, v1}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 26
    invoke-virtual {v0, p2, v1}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 29
    sget-object v2, Landroid/graphics/Path$Op;->INTERSECT:Landroid/graphics/Path$Op;

    .line 31
    invoke-virtual {p1, v0, v2}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    .line 34
    invoke-virtual {p1, p2, v1}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 37
    invoke-virtual {p2}, Landroid/graphics/RectF;->isEmpty()Z

    .line 40
    move-result p1

    .line 41
    if-eqz p1, :cond_1

    .line 43
    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    .line 46
    move-result p1

    .line 47
    const/high16 v0, 0x3f800000    # 1.0f

    .line 49
    cmpl-float p1, p1, v0

    .line 51
    if-lez p1, :cond_0

    .line 53
    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    .line 56
    move-result p1

    .line 57
    cmpl-float p1, p1, v0

    .line 59
    if-lez p1, :cond_0

    .line 61
    goto :goto_0

    .line 62
    :cond_0
    const/4 v1, 0x0

    .line 63
    :cond_1
    :goto_0
    return v1
.end method
