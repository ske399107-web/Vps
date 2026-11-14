.class public final Lo/C4;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public final synthetic h:Landroidx/constraintlayout/widget/ConstraintLayout;


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lo/C4;->h:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 6
    iput-object p2, p0, Lo/C4;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 8
    return-void
.end method

.method public static a(III)Z
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 4
    return v0

    .line 5
    :cond_0
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 8
    move-result p0

    .line 9
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 12
    move-result v1

    .line 13
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 16
    move-result p1

    .line 17
    const/high16 v2, 0x40000000    # 2.0f

    .line 19
    if-ne v1, v2, :cond_2

    .line 21
    const/high16 v1, -0x80000000

    .line 23
    if-eq p0, v1, :cond_1

    .line 25
    if-nez p0, :cond_2

    .line 27
    :cond_1
    if-ne p2, p1, :cond_2

    .line 29
    goto :goto_0

    .line 30
    :cond_2
    const/4 v0, 0x0

    .line 31
    :goto_0
    return v0
.end method


# virtual methods
.method public final b(Lo/L4;Lo/c3;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 3
    move-object/from16 v1, p1

    .line 5
    move-object/from16 v2, p2

    .line 7
    if-nez v1, :cond_0

    .line 9
    return-void

    .line 10
    :cond_0
    iget v3, v1, Lo/L4;->g0:I

    .line 12
    const/16 v4, 0x8

    .line 14
    const/4 v5, 0x0

    .line 15
    if-ne v3, v4, :cond_1

    .line 17
    iput v5, v2, Lo/c3;->e:I

    .line 19
    iput v5, v2, Lo/c3;->f:I

    .line 21
    iput v5, v2, Lo/c3;->g:I

    .line 23
    return-void

    .line 24
    :cond_1
    iget-object v3, v1, Lo/L4;->T:Lo/L4;

    .line 26
    if-nez v3, :cond_2

    .line 28
    return-void

    .line 29
    :cond_2
    sget-object v3, Landroidx/constraintlayout/widget/ConstraintLayout;->p:Lo/Me;

    .line 31
    iget-object v3, v0, Lo/C4;->h:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 33
    iget v4, v2, Lo/c3;->a:I

    .line 35
    iget v6, v2, Lo/c3;->b:I

    .line 37
    iget v7, v2, Lo/c3;->c:I

    .line 39
    iget v8, v2, Lo/c3;->d:I

    .line 41
    iget v9, v0, Lo/C4;->b:I

    .line 43
    iget v10, v0, Lo/C4;->c:I

    .line 45
    add-int/2addr v9, v10

    .line 46
    iget v10, v0, Lo/C4;->d:I

    .line 48
    iget-object v11, v1, Lo/L4;->f0:Landroid/view/View;

    .line 50
    invoke-static {v4}, Lo/Ve;->C(I)I

    .line 53
    move-result v12

    .line 54
    iget-object v13, v1, Lo/L4;->K:Lo/x4;

    .line 56
    iget-object v14, v1, Lo/L4;->I:Lo/x4;

    .line 58
    const/4 v15, 0x1

    .line 59
    const/4 v5, 0x2

    .line 60
    if-eqz v12, :cond_e

    .line 62
    if-eq v12, v15, :cond_d

    .line 64
    if-eq v12, v5, :cond_6

    .line 66
    const/4 v7, 0x3

    .line 67
    if-eq v12, v7, :cond_3

    .line 69
    const/4 v7, 0x0

    .line 70
    goto/16 :goto_5

    .line 72
    :cond_3
    iget v7, v0, Lo/C4;->f:I

    .line 74
    if-eqz v14, :cond_4

    .line 76
    iget v12, v14, Lo/x4;->g:I

    .line 78
    goto :goto_0

    .line 79
    :cond_4
    const/4 v12, 0x0

    .line 80
    :goto_0
    if-eqz v13, :cond_5

    .line 82
    iget v5, v13, Lo/x4;->g:I

    .line 84
    add-int/2addr v12, v5

    .line 85
    :cond_5
    add-int/2addr v10, v12

    .line 86
    const/4 v5, -0x1

    .line 87
    invoke-static {v7, v10, v5}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    .line 90
    move-result v7

    .line 91
    goto :goto_5

    .line 92
    :cond_6
    iget v5, v0, Lo/C4;->f:I

    .line 94
    const/4 v7, -0x2

    .line 95
    invoke-static {v5, v10, v7}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    .line 98
    move-result v5

    .line 99
    iget v7, v1, Lo/L4;->r:I

    .line 101
    if-ne v7, v15, :cond_7

    .line 103
    move v7, v15

    .line 104
    goto :goto_1

    .line 105
    :cond_7
    const/4 v7, 0x0

    .line 106
    :goto_1
    iget v10, v2, Lo/c3;->j:I

    .line 108
    const/4 v12, 0x2

    .line 109
    if-eq v10, v15, :cond_8

    .line 111
    if-ne v10, v12, :cond_b

    .line 113
    :cond_8
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    .line 116
    move-result v10

    .line 117
    invoke-virtual/range {p1 .. p1}, Lo/L4;->k()I

    .line 120
    move-result v15

    .line 121
    if-ne v10, v15, :cond_9

    .line 123
    const/4 v10, 0x1

    .line 124
    goto :goto_2

    .line 125
    :cond_9
    const/4 v10, 0x0

    .line 126
    :goto_2
    iget v15, v2, Lo/c3;->j:I

    .line 128
    if-eq v15, v12, :cond_c

    .line 130
    if-eqz v7, :cond_c

    .line 132
    if-eqz v7, :cond_a

    .line 134
    if-nez v10, :cond_c

    .line 136
    :cond_a
    invoke-virtual/range {p1 .. p1}, Lo/L4;->A()Z

    .line 139
    move-result v7

    .line 140
    if-eqz v7, :cond_b

    .line 142
    goto :goto_4

    .line 143
    :cond_b
    :goto_3
    move v7, v5

    .line 144
    goto :goto_5

    .line 145
    :cond_c
    :goto_4
    invoke-virtual/range {p1 .. p1}, Lo/L4;->q()I

    .line 148
    move-result v5

    .line 149
    const/high16 v12, 0x40000000    # 2.0f

    .line 151
    invoke-static {v5, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 154
    move-result v5

    .line 155
    goto :goto_3

    .line 156
    :cond_d
    const/high16 v12, 0x40000000    # 2.0f

    .line 158
    iget v5, v0, Lo/C4;->f:I

    .line 160
    const/4 v7, -0x2

    .line 161
    invoke-static {v5, v10, v7}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    .line 164
    move-result v5

    .line 165
    goto :goto_3

    .line 166
    :cond_e
    const/high16 v12, 0x40000000    # 2.0f

    .line 168
    invoke-static {v7, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 171
    move-result v5

    .line 172
    goto :goto_3

    .line 173
    :goto_5
    invoke-static {v6}, Lo/Ve;->C(I)I

    .line 176
    move-result v5

    .line 177
    if-eqz v5, :cond_19

    .line 179
    const/4 v10, 0x1

    .line 180
    if-eq v5, v10, :cond_18

    .line 182
    const/4 v8, 0x2

    .line 183
    if-eq v5, v8, :cond_12

    .line 185
    const/4 v8, 0x3

    .line 186
    if-eq v5, v8, :cond_f

    .line 188
    const/4 v5, 0x0

    .line 189
    goto/16 :goto_a

    .line 191
    :cond_f
    iget v5, v0, Lo/C4;->g:I

    .line 193
    if-eqz v14, :cond_10

    .line 195
    iget-object v8, v1, Lo/L4;->J:Lo/x4;

    .line 197
    iget v8, v8, Lo/x4;->g:I

    .line 199
    goto :goto_6

    .line 200
    :cond_10
    const/4 v8, 0x0

    .line 201
    :goto_6
    if-eqz v13, :cond_11

    .line 203
    iget-object v10, v1, Lo/L4;->L:Lo/x4;

    .line 205
    iget v10, v10, Lo/x4;->g:I

    .line 207
    add-int/2addr v8, v10

    .line 208
    :cond_11
    add-int/2addr v9, v8

    .line 209
    const/4 v8, -0x1

    .line 210
    invoke-static {v5, v9, v8}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    .line 213
    move-result v5

    .line 214
    goto :goto_a

    .line 215
    :cond_12
    iget v5, v0, Lo/C4;->g:I

    .line 217
    const/4 v8, -0x2

    .line 218
    invoke-static {v5, v9, v8}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    .line 221
    move-result v5

    .line 222
    iget v8, v1, Lo/L4;->s:I

    .line 224
    const/4 v9, 0x1

    .line 225
    if-ne v8, v9, :cond_13

    .line 227
    move v8, v9

    .line 228
    goto :goto_7

    .line 229
    :cond_13
    const/4 v8, 0x0

    .line 230
    :goto_7
    iget v10, v2, Lo/c3;->j:I

    .line 232
    if-eq v10, v9, :cond_14

    .line 234
    const/4 v9, 0x2

    .line 235
    if-ne v10, v9, :cond_1a

    .line 237
    goto :goto_8

    .line 238
    :cond_14
    const/4 v9, 0x2

    .line 239
    :goto_8
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    .line 242
    move-result v10

    .line 243
    invoke-virtual/range {p1 .. p1}, Lo/L4;->q()I

    .line 246
    move-result v12

    .line 247
    if-ne v10, v12, :cond_15

    .line 249
    const/4 v10, 0x1

    .line 250
    goto :goto_9

    .line 251
    :cond_15
    const/4 v10, 0x0

    .line 252
    :goto_9
    iget v12, v2, Lo/c3;->j:I

    .line 254
    if-eq v12, v9, :cond_17

    .line 256
    if-eqz v8, :cond_17

    .line 258
    if-eqz v8, :cond_16

    .line 260
    if-nez v10, :cond_17

    .line 262
    :cond_16
    invoke-virtual/range {p1 .. p1}, Lo/L4;->B()Z

    .line 265
    move-result v8

    .line 266
    if-eqz v8, :cond_1a

    .line 268
    :cond_17
    invoke-virtual/range {p1 .. p1}, Lo/L4;->k()I

    .line 271
    move-result v5

    .line 272
    const/high16 v10, 0x40000000    # 2.0f

    .line 274
    invoke-static {v5, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 277
    move-result v5

    .line 278
    goto :goto_a

    .line 279
    :cond_18
    const/high16 v10, 0x40000000    # 2.0f

    .line 281
    iget v5, v0, Lo/C4;->g:I

    .line 283
    const/4 v8, -0x2

    .line 284
    invoke-static {v5, v9, v8}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    .line 287
    move-result v5

    .line 288
    goto :goto_a

    .line 289
    :cond_19
    const/high16 v10, 0x40000000    # 2.0f

    .line 291
    invoke-static {v8, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 294
    move-result v5

    .line 295
    :cond_1a
    :goto_a
    iget-object v8, v1, Lo/L4;->T:Lo/L4;

    .line 297
    check-cast v8, Lo/M4;

    .line 299
    if-eqz v8, :cond_1b

    .line 301
    iget v9, v3, Landroidx/constraintlayout/widget/ConstraintLayout;->i:I

    .line 303
    const/16 v10, 0x100

    .line 305
    invoke-static {v9, v10}, Lo/x9;->w(II)Z

    .line 308
    move-result v9

    .line 309
    if-eqz v9, :cond_1b

    .line 311
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    .line 314
    move-result v9

    .line 315
    invoke-virtual/range {p1 .. p1}, Lo/L4;->q()I

    .line 318
    move-result v10

    .line 319
    if-ne v9, v10, :cond_1b

    .line 321
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    .line 324
    move-result v9

    .line 325
    invoke-virtual {v8}, Lo/L4;->q()I

    .line 328
    move-result v10

    .line 329
    if-ge v9, v10, :cond_1b

    .line 331
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    .line 334
    move-result v9

    .line 335
    invoke-virtual/range {p1 .. p1}, Lo/L4;->k()I

    .line 338
    move-result v10

    .line 339
    if-ne v9, v10, :cond_1b

    .line 341
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    .line 344
    move-result v9

    .line 345
    invoke-virtual {v8}, Lo/L4;->k()I

    .line 348
    move-result v8

    .line 349
    if-ge v9, v8, :cond_1b

    .line 351
    invoke-virtual {v11}, Landroid/view/View;->getBaseline()I

    .line 354
    move-result v8

    .line 355
    iget v9, v1, Lo/L4;->a0:I

    .line 357
    if-ne v8, v9, :cond_1b

    .line 359
    invoke-virtual/range {p1 .. p1}, Lo/L4;->z()Z

    .line 362
    move-result v8

    .line 363
    if-nez v8, :cond_1b

    .line 365
    iget v8, v1, Lo/L4;->G:I

    .line 367
    invoke-virtual/range {p1 .. p1}, Lo/L4;->q()I

    .line 370
    move-result v9

    .line 371
    invoke-static {v8, v7, v9}, Lo/C4;->a(III)Z

    .line 374
    move-result v8

    .line 375
    if-eqz v8, :cond_1b

    .line 377
    iget v8, v1, Lo/L4;->H:I

    .line 379
    invoke-virtual/range {p1 .. p1}, Lo/L4;->k()I

    .line 382
    move-result v9

    .line 383
    invoke-static {v8, v5, v9}, Lo/C4;->a(III)Z

    .line 386
    move-result v8

    .line 387
    if-eqz v8, :cond_1b

    .line 389
    invoke-virtual/range {p1 .. p1}, Lo/L4;->q()I

    .line 392
    move-result v3

    .line 393
    iput v3, v2, Lo/c3;->e:I

    .line 395
    invoke-virtual/range {p1 .. p1}, Lo/L4;->k()I

    .line 398
    move-result v3

    .line 399
    iput v3, v2, Lo/c3;->f:I

    .line 401
    iget v1, v1, Lo/L4;->a0:I

    .line 403
    iput v1, v2, Lo/c3;->g:I

    .line 405
    return-void

    .line 406
    :cond_1b
    const/4 v8, 0x3

    .line 407
    if-ne v4, v8, :cond_1c

    .line 409
    const/4 v9, 0x1

    .line 410
    goto :goto_b

    .line 411
    :cond_1c
    const/4 v9, 0x0

    .line 412
    :goto_b
    if-ne v6, v8, :cond_1d

    .line 414
    const/4 v8, 0x1

    .line 415
    goto :goto_c

    .line 416
    :cond_1d
    const/4 v8, 0x0

    .line 417
    :goto_c
    const/4 v10, 0x4

    .line 418
    const/4 v12, 0x1

    .line 419
    if-eq v6, v10, :cond_1f

    .line 421
    if-ne v6, v12, :cond_1e

    .line 423
    goto :goto_d

    .line 424
    :cond_1e
    const/4 v6, 0x0

    .line 425
    goto :goto_e

    .line 426
    :cond_1f
    :goto_d
    move v6, v12

    .line 427
    :goto_e
    if-eq v4, v10, :cond_21

    .line 429
    if-ne v4, v12, :cond_20

    .line 431
    goto :goto_f

    .line 432
    :cond_20
    const/4 v10, 0x0

    .line 433
    goto :goto_10

    .line 434
    :cond_21
    :goto_f
    const/4 v10, 0x1

    .line 435
    :goto_10
    const/4 v4, 0x0

    .line 436
    if-eqz v9, :cond_22

    .line 438
    iget v12, v1, Lo/L4;->W:F

    .line 440
    cmpl-float v12, v12, v4

    .line 442
    if-lez v12, :cond_22

    .line 444
    const/4 v12, 0x1

    .line 445
    goto :goto_11

    .line 446
    :cond_22
    const/4 v12, 0x0

    .line 447
    :goto_11
    if-eqz v8, :cond_23

    .line 449
    iget v13, v1, Lo/L4;->W:F

    .line 451
    cmpl-float v4, v13, v4

    .line 453
    if-lez v4, :cond_23

    .line 455
    const/4 v4, 0x1

    .line 456
    goto :goto_12

    .line 457
    :cond_23
    const/4 v4, 0x0

    .line 458
    :goto_12
    if-nez v11, :cond_24

    .line 460
    return-void

    .line 461
    :cond_24
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 464
    move-result-object v13

    .line 465
    check-cast v13, Lo/B4;

    .line 467
    iget v14, v2, Lo/c3;->j:I

    .line 469
    const/4 v15, 0x1

    .line 470
    if-eq v14, v15, :cond_26

    .line 472
    const/4 v15, 0x2

    .line 473
    if-eq v14, v15, :cond_26

    .line 475
    if-eqz v9, :cond_26

    .line 477
    iget v9, v1, Lo/L4;->r:I

    .line 479
    if-nez v9, :cond_26

    .line 481
    if-eqz v8, :cond_26

    .line 483
    iget v8, v1, Lo/L4;->s:I

    .line 485
    if-eqz v8, :cond_25

    .line 487
    goto :goto_13

    .line 488
    :cond_25
    const/4 v0, 0x0

    .line 489
    const/4 v3, -0x1

    .line 490
    const/4 v8, 0x0

    .line 491
    const/4 v10, 0x0

    .line 492
    const/4 v15, 0x0

    .line 493
    goto/16 :goto_1a

    .line 495
    :cond_26
    :goto_13
    instance-of v8, v11, Lo/fi;

    .line 497
    if-eqz v8, :cond_27

    .line 499
    instance-of v8, v1, Lo/v7;

    .line 501
    if-eqz v8, :cond_27

    .line 503
    move-object v8, v1

    .line 504
    check-cast v8, Lo/v7;

    .line 506
    move-object v9, v11

    .line 507
    check-cast v9, Lo/fi;

    .line 509
    invoke-virtual {v9, v8, v7, v5}, Lo/fi;->j(Lo/v7;II)V

    .line 512
    goto :goto_14

    .line 513
    :cond_27
    invoke-virtual {v11, v7, v5}, Landroid/view/View;->measure(II)V

    .line 516
    :goto_14
    iput v7, v1, Lo/L4;->G:I

    .line 518
    iput v5, v1, Lo/L4;->H:I

    .line 520
    const/4 v8, 0x0

    .line 521
    iput-boolean v8, v1, Lo/L4;->g:Z

    .line 523
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    .line 526
    move-result v8

    .line 527
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    .line 530
    move-result v9

    .line 531
    invoke-virtual {v11}, Landroid/view/View;->getBaseline()I

    .line 534
    move-result v14

    .line 535
    iget v15, v1, Lo/L4;->u:I

    .line 537
    if-lez v15, :cond_28

    .line 539
    invoke-static {v15, v8}, Ljava/lang/Math;->max(II)I

    .line 542
    move-result v15

    .line 543
    goto :goto_15

    .line 544
    :cond_28
    move v15, v8

    .line 545
    :goto_15
    iget v0, v1, Lo/L4;->v:I

    .line 547
    if-lez v0, :cond_29

    .line 549
    invoke-static {v0, v15}, Ljava/lang/Math;->min(II)I

    .line 552
    move-result v15

    .line 553
    :cond_29
    iget v0, v1, Lo/L4;->x:I

    .line 555
    if-lez v0, :cond_2a

    .line 557
    invoke-static {v0, v9}, Ljava/lang/Math;->max(II)I

    .line 560
    move-result v0

    .line 561
    move/from16 v16, v5

    .line 563
    goto :goto_16

    .line 564
    :cond_2a
    move/from16 v16, v5

    .line 566
    move v0, v9

    .line 567
    :goto_16
    iget v5, v1, Lo/L4;->y:I

    .line 569
    if-lez v5, :cond_2b

    .line 571
    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    .line 574
    move-result v0

    .line 575
    :cond_2b
    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintLayout;->i:I

    .line 577
    const/4 v5, 0x1

    .line 578
    invoke-static {v3, v5}, Lo/x9;->w(II)Z

    .line 581
    move-result v3

    .line 582
    if-nez v3, :cond_2d

    .line 584
    const/high16 v3, 0x3f000000    # 0.5f

    .line 586
    if-eqz v12, :cond_2c

    .line 588
    if-eqz v6, :cond_2c

    .line 590
    iget v4, v1, Lo/L4;->W:F

    .line 592
    int-to-float v5, v0

    .line 593
    mul-float/2addr v5, v4

    .line 594
    add-float/2addr v5, v3

    .line 595
    float-to-int v3, v5

    .line 596
    move v15, v3

    .line 597
    goto :goto_17

    .line 598
    :cond_2c
    if-eqz v4, :cond_2d

    .line 600
    if-eqz v10, :cond_2d

    .line 602
    iget v0, v1, Lo/L4;->W:F

    .line 604
    int-to-float v4, v15

    .line 605
    div-float/2addr v4, v0

    .line 606
    add-float/2addr v4, v3

    .line 607
    float-to-int v0, v4

    .line 608
    :cond_2d
    :goto_17
    if-ne v8, v15, :cond_2f

    .line 610
    if-eq v9, v0, :cond_2e

    .line 612
    goto :goto_18

    .line 613
    :cond_2e
    move v8, v14

    .line 614
    const/4 v3, -0x1

    .line 615
    const/4 v10, 0x0

    .line 616
    goto :goto_1a

    .line 617
    :cond_2f
    :goto_18
    const/high16 v3, 0x40000000    # 2.0f

    .line 619
    if-eq v8, v15, :cond_30

    .line 621
    invoke-static {v15, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 624
    move-result v7

    .line 625
    :cond_30
    if-eq v9, v0, :cond_31

    .line 627
    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 630
    move-result v5

    .line 631
    goto :goto_19

    .line 632
    :cond_31
    move/from16 v5, v16

    .line 634
    :goto_19
    invoke-virtual {v11, v7, v5}, Landroid/view/View;->measure(II)V

    .line 637
    iput v7, v1, Lo/L4;->G:I

    .line 639
    iput v5, v1, Lo/L4;->H:I

    .line 641
    const/4 v10, 0x0

    .line 642
    iput-boolean v10, v1, Lo/L4;->g:Z

    .line 644
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    .line 647
    move-result v8

    .line 648
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    .line 651
    move-result v0

    .line 652
    invoke-virtual {v11}, Landroid/view/View;->getBaseline()I

    .line 655
    move-result v3

    .line 656
    move v15, v8

    .line 657
    move v8, v3

    .line 658
    const/4 v3, -0x1

    .line 659
    :goto_1a
    if-eq v8, v3, :cond_32

    .line 661
    const/4 v3, 0x1

    .line 662
    goto :goto_1b

    .line 663
    :cond_32
    move v3, v10

    .line 664
    :goto_1b
    iget v4, v2, Lo/c3;->c:I

    .line 666
    if-ne v15, v4, :cond_34

    .line 668
    iget v4, v2, Lo/c3;->d:I

    .line 670
    if-eq v0, v4, :cond_33

    .line 672
    goto :goto_1c

    .line 673
    :cond_33
    move v5, v10

    .line 674
    goto :goto_1d

    .line 675
    :cond_34
    :goto_1c
    const/4 v5, 0x1

    .line 676
    :goto_1d
    iput-boolean v5, v2, Lo/c3;->i:Z

    .line 678
    iget-boolean v4, v13, Lo/B4;->c0:Z

    .line 680
    if-eqz v4, :cond_35

    .line 682
    const/4 v10, 0x1

    .line 683
    goto :goto_1e

    .line 684
    :cond_35
    move v10, v3

    .line 685
    :goto_1e
    if-eqz v10, :cond_36

    .line 687
    const/4 v3, -0x1

    .line 688
    if-eq v8, v3, :cond_36

    .line 690
    iget v1, v1, Lo/L4;->a0:I

    .line 692
    if-eq v1, v8, :cond_36

    .line 694
    const/4 v1, 0x1

    .line 695
    iput-boolean v1, v2, Lo/c3;->i:Z

    .line 697
    :cond_36
    iput v15, v2, Lo/c3;->e:I

    .line 699
    iput v0, v2, Lo/c3;->f:I

    .line 701
    iput-boolean v10, v2, Lo/c3;->h:Z

    .line 703
    iput v8, v2, Lo/c3;->g:I

    .line 705
    return-void
.end method
