.class public Landroidx/constraintlayout/helper/widget/Flow;
.super Lo/fi;
.source "SourceFile"


# instance fields
.field public final j:Lo/v7;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    const/16 v0, 0x20

    .line 6
    new-array v0, v0, [I

    .line 8
    iput-object v0, p0, Lo/z4;->a:[I

    .line 10
    new-instance v0, Ljava/util/HashMap;

    .line 12
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 15
    iput-object v0, p0, Lo/z4;->g:Ljava/util/HashMap;

    .line 17
    iput-object p1, p0, Lo/z4;->c:Landroid/content/Context;

    .line 19
    invoke-super {p0, p2}, Lo/fi;->g(Landroid/util/AttributeSet;)V

    .line 22
    new-instance p1, Lo/v7;

    .line 24
    invoke-direct {p1}, Lo/b9;-><init>()V

    .line 27
    const/4 v0, 0x0

    .line 28
    iput v0, p1, Lo/v7;->s0:I

    .line 30
    iput v0, p1, Lo/v7;->t0:I

    .line 32
    iput v0, p1, Lo/v7;->u0:I

    .line 34
    iput v0, p1, Lo/v7;->v0:I

    .line 36
    iput v0, p1, Lo/v7;->w0:I

    .line 38
    iput v0, p1, Lo/v7;->x0:I

    .line 40
    iput-boolean v0, p1, Lo/v7;->y0:Z

    .line 42
    iput v0, p1, Lo/v7;->z0:I

    .line 44
    iput v0, p1, Lo/v7;->A0:I

    .line 46
    new-instance v1, Lo/c3;

    .line 48
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object v1, p1, Lo/v7;->B0:Lo/c3;

    .line 53
    const/4 v1, 0x0

    .line 54
    iput-object v1, p1, Lo/v7;->C0:Lo/C4;

    .line 56
    const/4 v2, -0x1

    .line 57
    iput v2, p1, Lo/v7;->D0:I

    .line 59
    iput v2, p1, Lo/v7;->E0:I

    .line 61
    iput v2, p1, Lo/v7;->F0:I

    .line 63
    iput v2, p1, Lo/v7;->G0:I

    .line 65
    iput v2, p1, Lo/v7;->H0:I

    .line 67
    iput v2, p1, Lo/v7;->I0:I

    .line 69
    const/high16 v3, 0x3f000000    # 0.5f

    .line 71
    iput v3, p1, Lo/v7;->J0:F

    .line 73
    iput v3, p1, Lo/v7;->K0:F

    .line 75
    iput v3, p1, Lo/v7;->L0:F

    .line 77
    iput v3, p1, Lo/v7;->M0:F

    .line 79
    iput v3, p1, Lo/v7;->N0:F

    .line 81
    iput v3, p1, Lo/v7;->O0:F

    .line 83
    iput v0, p1, Lo/v7;->P0:I

    .line 85
    iput v0, p1, Lo/v7;->Q0:I

    .line 87
    const/4 v4, 0x2

    .line 88
    iput v4, p1, Lo/v7;->R0:I

    .line 90
    iput v4, p1, Lo/v7;->S0:I

    .line 92
    iput v0, p1, Lo/v7;->T0:I

    .line 94
    iput v2, p1, Lo/v7;->U0:I

    .line 96
    iput v0, p1, Lo/v7;->V0:I

    .line 98
    new-instance v5, Ljava/util/ArrayList;

    .line 100
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 103
    iput-object v5, p1, Lo/v7;->W0:Ljava/util/ArrayList;

    .line 105
    iput-object v1, p1, Lo/v7;->X0:[Lo/L4;

    .line 107
    iput-object v1, p1, Lo/v7;->Y0:[Lo/L4;

    .line 109
    iput-object v1, p1, Lo/v7;->Z0:[I

    .line 111
    iput v0, p1, Lo/v7;->b1:I

    .line 113
    iput-object p1, p0, Landroidx/constraintlayout/helper/widget/Flow;->j:Lo/v7;

    .line 115
    if-eqz p2, :cond_1b

    .line 117
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 120
    move-result-object p1

    .line 121
    sget-object v1, Lo/ad;->b:[I

    .line 123
    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 126
    move-result-object p1

    .line 127
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    .line 130
    move-result p2

    .line 131
    move v1, v0

    .line 132
    :goto_0
    if-ge v1, p2, :cond_1a

    .line 134
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    .line 137
    move-result v5

    .line 138
    if-nez v5, :cond_0

    .line 140
    iget-object v6, p0, Landroidx/constraintlayout/helper/widget/Flow;->j:Lo/v7;

    .line 142
    invoke-virtual {p1, v5, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 145
    move-result v5

    .line 146
    iput v5, v6, Lo/v7;->V0:I

    .line 148
    goto/16 :goto_1

    .line 150
    :cond_0
    const/4 v6, 0x1

    .line 151
    if-ne v5, v6, :cond_1

    .line 153
    iget-object v6, p0, Landroidx/constraintlayout/helper/widget/Flow;->j:Lo/v7;

    .line 155
    invoke-virtual {p1, v5, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 158
    move-result v5

    .line 159
    iput v5, v6, Lo/v7;->s0:I

    .line 161
    iput v5, v6, Lo/v7;->t0:I

    .line 163
    iput v5, v6, Lo/v7;->u0:I

    .line 165
    iput v5, v6, Lo/v7;->v0:I

    .line 167
    goto/16 :goto_1

    .line 169
    :cond_1
    const/16 v6, 0x12

    .line 171
    if-ne v5, v6, :cond_2

    .line 173
    iget-object v6, p0, Landroidx/constraintlayout/helper/widget/Flow;->j:Lo/v7;

    .line 175
    invoke-virtual {p1, v5, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 178
    move-result v5

    .line 179
    iput v5, v6, Lo/v7;->u0:I

    .line 181
    iput v5, v6, Lo/v7;->w0:I

    .line 183
    iput v5, v6, Lo/v7;->x0:I

    .line 185
    goto/16 :goto_1

    .line 187
    :cond_2
    const/16 v6, 0x13

    .line 189
    if-ne v5, v6, :cond_3

    .line 191
    iget-object v6, p0, Landroidx/constraintlayout/helper/widget/Flow;->j:Lo/v7;

    .line 193
    invoke-virtual {p1, v5, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 196
    move-result v5

    .line 197
    iput v5, v6, Lo/v7;->v0:I

    .line 199
    goto/16 :goto_1

    .line 201
    :cond_3
    if-ne v5, v4, :cond_4

    .line 203
    iget-object v6, p0, Landroidx/constraintlayout/helper/widget/Flow;->j:Lo/v7;

    .line 205
    invoke-virtual {p1, v5, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 208
    move-result v5

    .line 209
    iput v5, v6, Lo/v7;->w0:I

    .line 211
    goto/16 :goto_1

    .line 213
    :cond_4
    const/4 v6, 0x3

    .line 214
    if-ne v5, v6, :cond_5

    .line 216
    iget-object v6, p0, Landroidx/constraintlayout/helper/widget/Flow;->j:Lo/v7;

    .line 218
    invoke-virtual {p1, v5, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 221
    move-result v5

    .line 222
    iput v5, v6, Lo/v7;->s0:I

    .line 224
    goto/16 :goto_1

    .line 226
    :cond_5
    const/4 v6, 0x4

    .line 227
    if-ne v5, v6, :cond_6

    .line 229
    iget-object v6, p0, Landroidx/constraintlayout/helper/widget/Flow;->j:Lo/v7;

    .line 231
    invoke-virtual {p1, v5, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 234
    move-result v5

    .line 235
    iput v5, v6, Lo/v7;->x0:I

    .line 237
    goto/16 :goto_1

    .line 239
    :cond_6
    const/4 v6, 0x5

    .line 240
    if-ne v5, v6, :cond_7

    .line 242
    iget-object v6, p0, Landroidx/constraintlayout/helper/widget/Flow;->j:Lo/v7;

    .line 244
    invoke-virtual {p1, v5, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 247
    move-result v5

    .line 248
    iput v5, v6, Lo/v7;->t0:I

    .line 250
    goto/16 :goto_1

    .line 252
    :cond_7
    const/16 v6, 0x36

    .line 254
    if-ne v5, v6, :cond_8

    .line 256
    iget-object v6, p0, Landroidx/constraintlayout/helper/widget/Flow;->j:Lo/v7;

    .line 258
    invoke-virtual {p1, v5, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 261
    move-result v5

    .line 262
    iput v5, v6, Lo/v7;->T0:I

    .line 264
    goto/16 :goto_1

    .line 266
    :cond_8
    const/16 v6, 0x2c

    .line 268
    if-ne v5, v6, :cond_9

    .line 270
    iget-object v6, p0, Landroidx/constraintlayout/helper/widget/Flow;->j:Lo/v7;

    .line 272
    invoke-virtual {p1, v5, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 275
    move-result v5

    .line 276
    iput v5, v6, Lo/v7;->D0:I

    .line 278
    goto/16 :goto_1

    .line 280
    :cond_9
    const/16 v6, 0x35

    .line 282
    if-ne v5, v6, :cond_a

    .line 284
    iget-object v6, p0, Landroidx/constraintlayout/helper/widget/Flow;->j:Lo/v7;

    .line 286
    invoke-virtual {p1, v5, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 289
    move-result v5

    .line 290
    iput v5, v6, Lo/v7;->E0:I

    .line 292
    goto/16 :goto_1

    .line 294
    :cond_a
    const/16 v6, 0x26

    .line 296
    if-ne v5, v6, :cond_b

    .line 298
    iget-object v6, p0, Landroidx/constraintlayout/helper/widget/Flow;->j:Lo/v7;

    .line 300
    invoke-virtual {p1, v5, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 303
    move-result v5

    .line 304
    iput v5, v6, Lo/v7;->F0:I

    .line 306
    goto/16 :goto_1

    .line 308
    :cond_b
    const/16 v6, 0x2e

    .line 310
    if-ne v5, v6, :cond_c

    .line 312
    iget-object v6, p0, Landroidx/constraintlayout/helper/widget/Flow;->j:Lo/v7;

    .line 314
    invoke-virtual {p1, v5, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 317
    move-result v5

    .line 318
    iput v5, v6, Lo/v7;->H0:I

    .line 320
    goto/16 :goto_1

    .line 322
    :cond_c
    const/16 v6, 0x28

    .line 324
    if-ne v5, v6, :cond_d

    .line 326
    iget-object v6, p0, Landroidx/constraintlayout/helper/widget/Flow;->j:Lo/v7;

    .line 328
    invoke-virtual {p1, v5, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 331
    move-result v5

    .line 332
    iput v5, v6, Lo/v7;->G0:I

    .line 334
    goto/16 :goto_1

    .line 336
    :cond_d
    const/16 v6, 0x30

    .line 338
    if-ne v5, v6, :cond_e

    .line 340
    iget-object v6, p0, Landroidx/constraintlayout/helper/widget/Flow;->j:Lo/v7;

    .line 342
    invoke-virtual {p1, v5, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 345
    move-result v5

    .line 346
    iput v5, v6, Lo/v7;->I0:I

    .line 348
    goto/16 :goto_1

    .line 350
    :cond_e
    const/16 v6, 0x2a

    .line 352
    if-ne v5, v6, :cond_f

    .line 354
    iget-object v6, p0, Landroidx/constraintlayout/helper/widget/Flow;->j:Lo/v7;

    .line 356
    invoke-virtual {p1, v5, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 359
    move-result v5

    .line 360
    iput v5, v6, Lo/v7;->J0:F

    .line 362
    goto/16 :goto_1

    .line 364
    :cond_f
    const/16 v6, 0x25

    .line 366
    if-ne v5, v6, :cond_10

    .line 368
    iget-object v6, p0, Landroidx/constraintlayout/helper/widget/Flow;->j:Lo/v7;

    .line 370
    invoke-virtual {p1, v5, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 373
    move-result v5

    .line 374
    iput v5, v6, Lo/v7;->L0:F

    .line 376
    goto/16 :goto_1

    .line 378
    :cond_10
    const/16 v6, 0x2d

    .line 380
    if-ne v5, v6, :cond_11

    .line 382
    iget-object v6, p0, Landroidx/constraintlayout/helper/widget/Flow;->j:Lo/v7;

    .line 384
    invoke-virtual {p1, v5, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 387
    move-result v5

    .line 388
    iput v5, v6, Lo/v7;->N0:F

    .line 390
    goto/16 :goto_1

    .line 392
    :cond_11
    const/16 v6, 0x27

    .line 394
    if-ne v5, v6, :cond_12

    .line 396
    iget-object v6, p0, Landroidx/constraintlayout/helper/widget/Flow;->j:Lo/v7;

    .line 398
    invoke-virtual {p1, v5, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 401
    move-result v5

    .line 402
    iput v5, v6, Lo/v7;->M0:F

    .line 404
    goto :goto_1

    .line 405
    :cond_12
    const/16 v6, 0x2f

    .line 407
    if-ne v5, v6, :cond_13

    .line 409
    iget-object v6, p0, Landroidx/constraintlayout/helper/widget/Flow;->j:Lo/v7;

    .line 411
    invoke-virtual {p1, v5, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 414
    move-result v5

    .line 415
    iput v5, v6, Lo/v7;->O0:F

    .line 417
    goto :goto_1

    .line 418
    :cond_13
    const/16 v6, 0x33

    .line 420
    if-ne v5, v6, :cond_14

    .line 422
    iget-object v6, p0, Landroidx/constraintlayout/helper/widget/Flow;->j:Lo/v7;

    .line 424
    invoke-virtual {p1, v5, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 427
    move-result v5

    .line 428
    iput v5, v6, Lo/v7;->K0:F

    .line 430
    goto :goto_1

    .line 431
    :cond_14
    const/16 v6, 0x29

    .line 433
    if-ne v5, v6, :cond_15

    .line 435
    iget-object v6, p0, Landroidx/constraintlayout/helper/widget/Flow;->j:Lo/v7;

    .line 437
    invoke-virtual {p1, v5, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 440
    move-result v5

    .line 441
    iput v5, v6, Lo/v7;->R0:I

    .line 443
    goto :goto_1

    .line 444
    :cond_15
    const/16 v6, 0x32

    .line 446
    if-ne v5, v6, :cond_16

    .line 448
    iget-object v6, p0, Landroidx/constraintlayout/helper/widget/Flow;->j:Lo/v7;

    .line 450
    invoke-virtual {p1, v5, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 453
    move-result v5

    .line 454
    iput v5, v6, Lo/v7;->S0:I

    .line 456
    goto :goto_1

    .line 457
    :cond_16
    const/16 v6, 0x2b

    .line 459
    if-ne v5, v6, :cond_17

    .line 461
    iget-object v6, p0, Landroidx/constraintlayout/helper/widget/Flow;->j:Lo/v7;

    .line 463
    invoke-virtual {p1, v5, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 466
    move-result v5

    .line 467
    iput v5, v6, Lo/v7;->P0:I

    .line 469
    goto :goto_1

    .line 470
    :cond_17
    const/16 v6, 0x34

    .line 472
    if-ne v5, v6, :cond_18

    .line 474
    iget-object v6, p0, Landroidx/constraintlayout/helper/widget/Flow;->j:Lo/v7;

    .line 476
    invoke-virtual {p1, v5, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 479
    move-result v5

    .line 480
    iput v5, v6, Lo/v7;->Q0:I

    .line 482
    goto :goto_1

    .line 483
    :cond_18
    const/16 v6, 0x31

    .line 485
    if-ne v5, v6, :cond_19

    .line 487
    iget-object v6, p0, Landroidx/constraintlayout/helper/widget/Flow;->j:Lo/v7;

    .line 489
    invoke-virtual {p1, v5, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 492
    move-result v5

    .line 493
    iput v5, v6, Lo/v7;->U0:I

    .line 495
    :cond_19
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 497
    goto/16 :goto_0

    .line 499
    :cond_1a
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 502
    :cond_1b
    iget-object p1, p0, Landroidx/constraintlayout/helper/widget/Flow;->j:Lo/v7;

    .line 504
    iput-object p1, p0, Lo/z4;->d:Lo/b9;

    .line 506
    invoke-virtual {p0}, Lo/z4;->i()V

    .line 509
    return-void
.end method


# virtual methods
.method public final h(Lo/L4;Z)V
    .locals 2

    .line 1
    iget-object p1, p0, Landroidx/constraintlayout/helper/widget/Flow;->j:Lo/v7;

    .line 3
    iget v0, p1, Lo/v7;->u0:I

    .line 5
    if-gtz v0, :cond_0

    .line 7
    iget v1, p1, Lo/v7;->v0:I

    .line 9
    if-lez v1, :cond_2

    .line 11
    :cond_0
    if-eqz p2, :cond_1

    .line 13
    iget p2, p1, Lo/v7;->v0:I

    .line 15
    iput p2, p1, Lo/v7;->w0:I

    .line 17
    iput v0, p1, Lo/v7;->x0:I

    .line 19
    goto :goto_0

    .line 20
    :cond_1
    iput v0, p1, Lo/v7;->w0:I

    .line 22
    iget p2, p1, Lo/v7;->v0:I

    .line 24
    iput p2, p1, Lo/v7;->x0:I

    .line 26
    :cond_2
    :goto_0
    return-void
.end method

.method public final j(Lo/v7;II)V
    .locals 40

    .line 1
    move-object/from16 v0, p0

    .line 3
    move-object/from16 v9, p1

    .line 5
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 8
    move-result v10

    .line 9
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 12
    move-result v11

    .line 13
    invoke-static/range {p3 .. p3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 16
    move-result v12

    .line 17
    invoke-static/range {p3 .. p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 20
    move-result v13

    .line 21
    const/4 v14, 0x0

    .line 22
    if-eqz v9, :cond_79

    .line 24
    iget v1, v9, Lo/b9;->r0:I

    .line 26
    const/4 v15, 0x1

    .line 27
    const/4 v8, 0x2

    .line 28
    const/4 v7, 0x3

    .line 29
    if-lez v1, :cond_7

    .line 31
    iget-object v1, v9, Lo/L4;->T:Lo/L4;

    .line 33
    if-eqz v1, :cond_0

    .line 35
    check-cast v1, Lo/M4;

    .line 37
    iget-object v1, v1, Lo/M4;->u0:Lo/C4;

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    const/4 v1, 0x0

    .line 41
    :goto_0
    if-nez v1, :cond_1

    .line 43
    iput v14, v9, Lo/v7;->z0:I

    .line 45
    iput v14, v9, Lo/v7;->A0:I

    .line 47
    iput-boolean v14, v9, Lo/v7;->y0:Z

    .line 49
    goto/16 :goto_3f

    .line 51
    :cond_1
    move v3, v14

    .line 52
    :goto_1
    iget v4, v9, Lo/b9;->r0:I

    .line 54
    if-ge v3, v4, :cond_7

    .line 56
    iget-object v4, v9, Lo/b9;->q0:[Lo/L4;

    .line 58
    aget-object v4, v4, v3

    .line 60
    if-nez v4, :cond_2

    .line 62
    goto :goto_2

    .line 63
    :cond_2
    instance-of v5, v4, Lo/X8;

    .line 65
    if-eqz v5, :cond_3

    .line 67
    goto :goto_2

    .line 68
    :cond_3
    invoke-virtual {v4, v14}, Lo/L4;->j(I)I

    .line 71
    move-result v5

    .line 72
    invoke-virtual {v4, v15}, Lo/L4;->j(I)I

    .line 75
    move-result v6

    .line 76
    if-ne v5, v7, :cond_4

    .line 78
    iget v2, v4, Lo/L4;->r:I

    .line 80
    if-eq v2, v15, :cond_4

    .line 82
    if-ne v6, v7, :cond_4

    .line 84
    iget v2, v4, Lo/L4;->s:I

    .line 86
    if-eq v2, v15, :cond_4

    .line 88
    goto :goto_2

    .line 89
    :cond_4
    if-ne v5, v7, :cond_5

    .line 91
    move v5, v8

    .line 92
    :cond_5
    if-ne v6, v7, :cond_6

    .line 94
    move v6, v8

    .line 95
    :cond_6
    iget-object v2, v9, Lo/v7;->B0:Lo/c3;

    .line 97
    iput v5, v2, Lo/c3;->a:I

    .line 99
    iput v6, v2, Lo/c3;->b:I

    .line 101
    invoke-virtual {v4}, Lo/L4;->q()I

    .line 104
    move-result v5

    .line 105
    iput v5, v2, Lo/c3;->c:I

    .line 107
    invoke-virtual {v4}, Lo/L4;->k()I

    .line 110
    move-result v5

    .line 111
    iput v5, v2, Lo/c3;->d:I

    .line 113
    invoke-virtual {v1, v4, v2}, Lo/C4;->b(Lo/L4;Lo/c3;)V

    .line 116
    iget v5, v2, Lo/c3;->e:I

    .line 118
    invoke-virtual {v4, v5}, Lo/L4;->O(I)V

    .line 121
    iget v5, v2, Lo/c3;->f:I

    .line 123
    invoke-virtual {v4, v5}, Lo/L4;->L(I)V

    .line 126
    iget v2, v2, Lo/c3;->g:I

    .line 128
    invoke-virtual {v4, v2}, Lo/L4;->I(I)V

    .line 131
    :goto_2
    add-int/lit8 v3, v3, 0x1

    .line 133
    goto :goto_1

    .line 134
    :cond_7
    iget v6, v9, Lo/v7;->w0:I

    .line 136
    iget v5, v9, Lo/v7;->x0:I

    .line 138
    iget v4, v9, Lo/v7;->s0:I

    .line 140
    iget v3, v9, Lo/v7;->t0:I

    .line 142
    new-array v2, v8, [I

    .line 144
    sub-int v1, v11, v6

    .line 146
    sub-int/2addr v1, v5

    .line 147
    iget v7, v9, Lo/v7;->V0:I

    .line 149
    if-ne v7, v15, :cond_8

    .line 151
    sub-int v1, v13, v4

    .line 153
    sub-int/2addr v1, v3

    .line 154
    :cond_8
    move/from16 v26, v1

    .line 156
    const/4 v1, -0x1

    .line 157
    if-nez v7, :cond_a

    .line 159
    iget v7, v9, Lo/v7;->D0:I

    .line 161
    if-ne v7, v1, :cond_9

    .line 163
    iput v14, v9, Lo/v7;->D0:I

    .line 165
    :cond_9
    iget v7, v9, Lo/v7;->E0:I

    .line 167
    if-ne v7, v1, :cond_c

    .line 169
    iput v14, v9, Lo/v7;->E0:I

    .line 171
    goto :goto_3

    .line 172
    :cond_a
    iget v7, v9, Lo/v7;->D0:I

    .line 174
    if-ne v7, v1, :cond_b

    .line 176
    iput v14, v9, Lo/v7;->D0:I

    .line 178
    :cond_b
    iget v7, v9, Lo/v7;->E0:I

    .line 180
    if-ne v7, v1, :cond_c

    .line 182
    iput v14, v9, Lo/v7;->E0:I

    .line 184
    :cond_c
    :goto_3
    iget-object v1, v9, Lo/b9;->q0:[Lo/L4;

    .line 186
    move v7, v14

    .line 187
    move/from16 v16, v7

    .line 189
    :goto_4
    iget v14, v9, Lo/b9;->r0:I

    .line 191
    const/16 v8, 0x8

    .line 193
    if-ge v7, v14, :cond_e

    .line 195
    iget-object v14, v9, Lo/b9;->q0:[Lo/L4;

    .line 197
    aget-object v14, v14, v7

    .line 199
    iget v14, v14, Lo/L4;->g0:I

    .line 201
    if-ne v14, v8, :cond_d

    .line 203
    add-int/lit8 v16, v16, 0x1

    .line 205
    :cond_d
    add-int/lit8 v7, v7, 0x1

    .line 207
    const/4 v8, 0x2

    .line 208
    goto :goto_4

    .line 209
    :cond_e
    if-lez v16, :cond_10

    .line 211
    sub-int v14, v14, v16

    .line 213
    new-array v1, v14, [Lo/L4;

    .line 215
    const/4 v7, 0x0

    .line 216
    const/4 v14, 0x0

    .line 217
    :goto_5
    iget v15, v9, Lo/b9;->r0:I

    .line 219
    if-ge v7, v15, :cond_10

    .line 221
    iget-object v15, v9, Lo/b9;->q0:[Lo/L4;

    .line 223
    aget-object v15, v15, v7

    .line 225
    move-object/from16 v16, v2

    .line 227
    iget v2, v15, Lo/L4;->g0:I

    .line 229
    if-eq v2, v8, :cond_f

    .line 231
    aput-object v15, v1, v14

    .line 233
    add-int/lit8 v14, v14, 0x1

    .line 235
    :cond_f
    add-int/lit8 v7, v7, 0x1

    .line 237
    move-object/from16 v2, v16

    .line 239
    goto :goto_5

    .line 240
    :cond_10
    move-object/from16 v16, v2

    .line 242
    move v15, v14

    .line 243
    move-object v14, v1

    .line 244
    iput-object v14, v9, Lo/v7;->a1:[Lo/L4;

    .line 246
    iput v15, v9, Lo/v7;->b1:I

    .line 248
    iget v1, v9, Lo/v7;->T0:I

    .line 250
    iget-object v8, v9, Lo/v7;->W0:Ljava/util/ArrayList;

    .line 252
    if-eqz v1, :cond_6e

    .line 254
    iget-object v7, v9, Lo/L4;->J:Lo/x4;

    .line 256
    iget-object v2, v9, Lo/L4;->I:Lo/x4;

    .line 258
    iget-object v0, v9, Lo/L4;->K:Lo/x4;

    .line 260
    move-object/from16 v27, v0

    .line 262
    iget-object v0, v9, Lo/L4;->L:Lo/x4;

    .line 264
    move-object/from16 v28, v0

    .line 266
    iget-object v0, v9, Lo/L4;->p0:[I

    .line 268
    move-object/from16 v18, v2

    .line 270
    const/4 v2, 0x1

    .line 271
    if-eq v1, v2, :cond_53

    .line 273
    const/4 v2, 0x2

    .line 274
    if-eq v1, v2, :cond_2c

    .line 276
    move-object/from16 v17, v7

    .line 278
    const/4 v7, 0x3

    .line 279
    if-eq v1, v7, :cond_11

    .line 281
    :goto_6
    move/from16 v32, v3

    .line 283
    move/from16 v33, v4

    .line 285
    move/from16 v34, v5

    .line 287
    move/from16 v35, v6

    .line 289
    move/from16 v39, v10

    .line 291
    move/from16 v38, v11

    .line 293
    move/from16 v36, v12

    .line 295
    move/from16 p3, v13

    .line 297
    move-object/from16 v31, v16

    .line 299
    :goto_7
    const/4 v1, 0x0

    .line 300
    const/4 v2, 0x1

    .line 301
    goto/16 :goto_3a

    .line 303
    :cond_11
    iget v1, v9, Lo/v7;->V0:I

    .line 305
    if-nez v15, :cond_12

    .line 307
    goto :goto_6

    .line 308
    :cond_12
    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 311
    move/from16 p3, v13

    .line 313
    new-instance v13, Lo/u7;

    .line 315
    iget-object v7, v9, Lo/L4;->I:Lo/x4;

    .line 317
    move/from16 v20, v5

    .line 319
    iget-object v5, v9, Lo/L4;->J:Lo/x4;

    .line 321
    move/from16 v21, v6

    .line 323
    iget-object v6, v9, Lo/L4;->K:Lo/x4;

    .line 325
    move-object/from16 v22, v8

    .line 327
    iget-object v8, v9, Lo/L4;->L:Lo/x4;

    .line 329
    move/from16 v30, v1

    .line 331
    move/from16 v29, v26

    .line 333
    move-object v1, v13

    .line 334
    move-object/from16 v31, v16

    .line 336
    move/from16 v16, v2

    .line 338
    move-object/from16 v2, p1

    .line 340
    move/from16 v32, v3

    .line 342
    move/from16 v3, v30

    .line 344
    move/from16 v33, v4

    .line 346
    move-object v4, v7

    .line 347
    move/from16 v34, v20

    .line 349
    move/from16 v35, v21

    .line 351
    move/from16 v36, v12

    .line 353
    const/4 v12, 0x3

    .line 354
    move-object v7, v8

    .line 355
    move-object/from16 v12, v22

    .line 357
    move/from16 v8, v29

    .line 359
    invoke-direct/range {v1 .. v8}, Lo/u7;-><init>(Lo/v7;ILo/x4;Lo/x4;Lo/x4;Lo/x4;I)V

    .line 362
    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 365
    if-nez v30, :cond_1a

    .line 367
    const/4 v1, 0x0

    .line 368
    const/4 v2, 0x0

    .line 369
    const/4 v3, 0x0

    .line 370
    const/4 v8, 0x0

    .line 371
    :goto_8
    if-ge v8, v15, :cond_19

    .line 373
    const/4 v4, 0x1

    .line 374
    add-int/2addr v1, v4

    .line 375
    aget-object v7, v14, v8

    .line 377
    move/from16 v6, v29

    .line 379
    invoke-virtual {v9, v7, v6}, Lo/v7;->U(Lo/L4;I)I

    .line 382
    move-result v16

    .line 383
    iget-object v4, v7, Lo/L4;->p0:[I

    .line 385
    const/4 v5, 0x0

    .line 386
    aget v4, v4, v5

    .line 388
    const/4 v5, 0x3

    .line 389
    if-ne v4, v5, :cond_13

    .line 391
    add-int/lit8 v2, v2, 0x1

    .line 393
    :cond_13
    move/from16 v20, v2

    .line 395
    if-eq v3, v6, :cond_14

    .line 397
    iget v2, v9, Lo/v7;->P0:I

    .line 399
    add-int/2addr v2, v3

    .line 400
    add-int v2, v2, v16

    .line 402
    if-le v2, v6, :cond_15

    .line 404
    :cond_14
    iget-object v2, v13, Lo/u7;->b:Lo/L4;

    .line 406
    if-eqz v2, :cond_15

    .line 408
    const/4 v2, 0x1

    .line 409
    goto :goto_9

    .line 410
    :cond_15
    const/4 v2, 0x0

    .line 411
    :goto_9
    if-nez v2, :cond_16

    .line 413
    if-lez v8, :cond_16

    .line 415
    iget v4, v9, Lo/v7;->U0:I

    .line 417
    if-lez v4, :cond_16

    .line 419
    if-le v1, v4, :cond_16

    .line 421
    const/4 v2, 0x1

    .line 422
    :cond_16
    if-eqz v2, :cond_17

    .line 424
    new-instance v13, Lo/u7;

    .line 426
    iget-object v4, v9, Lo/L4;->I:Lo/x4;

    .line 428
    iget-object v5, v9, Lo/L4;->J:Lo/x4;

    .line 430
    iget-object v3, v9, Lo/L4;->K:Lo/x4;

    .line 432
    iget-object v2, v9, Lo/L4;->L:Lo/x4;

    .line 434
    move-object v1, v13

    .line 435
    move-object/from16 v21, v2

    .line 437
    move-object/from16 v2, p1

    .line 439
    move-object/from16 v22, v3

    .line 441
    move/from16 v3, v30

    .line 443
    move/from16 v29, v6

    .line 445
    move-object/from16 v6, v22

    .line 447
    move/from16 v38, v11

    .line 449
    move-object v11, v7

    .line 450
    move-object/from16 v7, v21

    .line 452
    move/from16 v39, v10

    .line 454
    move v10, v8

    .line 455
    move/from16 v8, v29

    .line 457
    invoke-direct/range {v1 .. v8}, Lo/u7;-><init>(Lo/v7;ILo/x4;Lo/x4;Lo/x4;Lo/x4;I)V

    .line 460
    iput v10, v13, Lo/u7;->n:I

    .line 462
    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 465
    move/from16 v3, v16

    .line 467
    const/4 v1, 0x1

    .line 468
    goto :goto_a

    .line 469
    :cond_17
    move/from16 v29, v6

    .line 471
    move/from16 v39, v10

    .line 473
    move/from16 v38, v11

    .line 475
    move-object v11, v7

    .line 476
    move v10, v8

    .line 477
    if-lez v10, :cond_18

    .line 479
    iget v2, v9, Lo/v7;->P0:I

    .line 481
    add-int v2, v2, v16

    .line 483
    add-int/2addr v2, v3

    .line 484
    move v3, v2

    .line 485
    goto :goto_a

    .line 486
    :cond_18
    move/from16 v3, v16

    .line 488
    :goto_a
    invoke-virtual {v13, v11}, Lo/u7;->a(Lo/L4;)V

    .line 491
    add-int/lit8 v8, v10, 0x1

    .line 493
    move/from16 v2, v20

    .line 495
    move/from16 v11, v38

    .line 497
    move/from16 v10, v39

    .line 499
    goto/16 :goto_8

    .line 501
    :cond_19
    move/from16 v39, v10

    .line 503
    move/from16 v38, v11

    .line 505
    goto/16 :goto_e

    .line 507
    :cond_1a
    move/from16 v39, v10

    .line 509
    move/from16 v38, v11

    .line 511
    const/4 v1, 0x0

    .line 512
    const/4 v2, 0x0

    .line 513
    const/4 v3, 0x0

    .line 514
    const/4 v10, 0x0

    .line 515
    :goto_b
    if-ge v10, v15, :cond_21

    .line 517
    const/4 v4, 0x1

    .line 518
    add-int/2addr v1, v4

    .line 519
    aget-object v11, v14, v10

    .line 521
    move/from16 v8, v29

    .line 523
    invoke-virtual {v9, v11, v8}, Lo/v7;->T(Lo/L4;I)I

    .line 526
    move-result v16

    .line 527
    iget-object v5, v11, Lo/L4;->p0:[I

    .line 529
    aget v5, v5, v4

    .line 531
    const/4 v4, 0x3

    .line 532
    if-ne v5, v4, :cond_1b

    .line 534
    add-int/lit8 v2, v2, 0x1

    .line 536
    :cond_1b
    move/from16 v20, v2

    .line 538
    if-eq v3, v8, :cond_1c

    .line 540
    iget v2, v9, Lo/v7;->Q0:I

    .line 542
    add-int/2addr v2, v3

    .line 543
    add-int v2, v2, v16

    .line 545
    if-le v2, v8, :cond_1d

    .line 547
    :cond_1c
    iget-object v2, v13, Lo/u7;->b:Lo/L4;

    .line 549
    if-eqz v2, :cond_1d

    .line 551
    const/4 v2, 0x1

    .line 552
    goto :goto_c

    .line 553
    :cond_1d
    const/4 v2, 0x0

    .line 554
    :goto_c
    if-nez v2, :cond_1e

    .line 556
    if-lez v10, :cond_1e

    .line 558
    iget v4, v9, Lo/v7;->U0:I

    .line 560
    if-lez v4, :cond_1e

    .line 562
    if-le v1, v4, :cond_1e

    .line 564
    const/4 v2, 0x1

    .line 565
    :cond_1e
    if-eqz v2, :cond_1f

    .line 567
    new-instance v13, Lo/u7;

    .line 569
    iget-object v4, v9, Lo/L4;->I:Lo/x4;

    .line 571
    iget-object v5, v9, Lo/L4;->J:Lo/x4;

    .line 573
    iget-object v6, v9, Lo/L4;->K:Lo/x4;

    .line 575
    iget-object v7, v9, Lo/L4;->L:Lo/x4;

    .line 577
    move-object v1, v13

    .line 578
    move-object/from16 v2, p1

    .line 580
    move/from16 v3, v30

    .line 582
    move/from16 v29, v8

    .line 584
    invoke-direct/range {v1 .. v8}, Lo/u7;-><init>(Lo/v7;ILo/x4;Lo/x4;Lo/x4;Lo/x4;I)V

    .line 587
    iput v10, v13, Lo/u7;->n:I

    .line 589
    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 592
    move/from16 v3, v16

    .line 594
    const/4 v1, 0x1

    .line 595
    goto :goto_d

    .line 596
    :cond_1f
    move/from16 v29, v8

    .line 598
    if-lez v10, :cond_20

    .line 600
    iget v2, v9, Lo/v7;->Q0:I

    .line 602
    add-int v2, v2, v16

    .line 604
    add-int/2addr v2, v3

    .line 605
    move v3, v2

    .line 606
    goto :goto_d

    .line 607
    :cond_20
    move/from16 v3, v16

    .line 609
    :goto_d
    invoke-virtual {v13, v11}, Lo/u7;->a(Lo/L4;)V

    .line 612
    add-int/lit8 v10, v10, 0x1

    .line 614
    move/from16 v2, v20

    .line 616
    goto :goto_b

    .line 617
    :cond_21
    :goto_e
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    .line 620
    move-result v1

    .line 621
    iget v3, v9, Lo/v7;->w0:I

    .line 623
    iget v4, v9, Lo/v7;->s0:I

    .line 625
    iget v5, v9, Lo/v7;->x0:I

    .line 627
    iget v6, v9, Lo/v7;->t0:I

    .line 629
    const/4 v7, 0x0

    .line 630
    aget v8, v0, v7

    .line 632
    const/4 v10, 0x2

    .line 633
    if-eq v8, v10, :cond_23

    .line 635
    const/4 v7, 0x1

    .line 636
    aget v0, v0, v7

    .line 638
    if-ne v0, v10, :cond_22

    .line 640
    goto :goto_f

    .line 641
    :cond_22
    const/4 v0, 0x0

    .line 642
    goto :goto_10

    .line 643
    :cond_23
    :goto_f
    const/4 v0, 0x1

    .line 644
    :goto_10
    if-lez v2, :cond_25

    .line 646
    if-eqz v0, :cond_25

    .line 648
    const/4 v0, 0x0

    .line 649
    :goto_11
    if-ge v0, v1, :cond_25

    .line 651
    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 654
    move-result-object v2

    .line 655
    check-cast v2, Lo/u7;

    .line 657
    if-nez v30, :cond_24

    .line 659
    invoke-virtual {v2}, Lo/u7;->d()I

    .line 662
    move-result v7

    .line 663
    sub-int v7, v29, v7

    .line 665
    invoke-virtual {v2, v7}, Lo/u7;->e(I)V

    .line 668
    goto :goto_12

    .line 669
    :cond_24
    invoke-virtual {v2}, Lo/u7;->c()I

    .line 672
    move-result v7

    .line 673
    sub-int v7, v29, v7

    .line 675
    invoke-virtual {v2, v7}, Lo/u7;->e(I)V

    .line 678
    :goto_12
    add-int/lit8 v0, v0, 0x1

    .line 680
    goto :goto_11

    .line 681
    :cond_25
    move-object/from16 v2, v17

    .line 683
    move-object/from16 v0, v18

    .line 685
    move-object/from16 v13, v27

    .line 687
    move-object/from16 v11, v28

    .line 689
    const/4 v7, 0x0

    .line 690
    const/4 v8, 0x0

    .line 691
    const/4 v10, 0x0

    .line 692
    :goto_13
    if-ge v7, v1, :cond_2b

    .line 694
    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 697
    move-result-object v14

    .line 698
    check-cast v14, Lo/u7;

    .line 700
    if-nez v30, :cond_28

    .line 702
    add-int/lit8 v6, v1, -0x1

    .line 704
    if-ge v7, v6, :cond_26

    .line 706
    add-int/lit8 v6, v7, 0x1

    .line 708
    invoke-virtual {v12, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 711
    move-result-object v6

    .line 712
    check-cast v6, Lo/u7;

    .line 714
    iget-object v6, v6, Lo/u7;->b:Lo/L4;

    .line 716
    iget-object v6, v6, Lo/L4;->J:Lo/x4;

    .line 718
    move-object v11, v6

    .line 719
    const/4 v6, 0x0

    .line 720
    goto :goto_14

    .line 721
    :cond_26
    iget v6, v9, Lo/v7;->t0:I

    .line 723
    move-object/from16 v11, v28

    .line 725
    :goto_14
    iget-object v15, v14, Lo/u7;->b:Lo/L4;

    .line 727
    iget-object v15, v15, Lo/L4;->L:Lo/x4;

    .line 729
    move-object/from16 v16, v14

    .line 731
    move/from16 v17, v30

    .line 733
    move-object/from16 v18, v0

    .line 735
    move-object/from16 v19, v2

    .line 737
    move-object/from16 v20, v13

    .line 739
    move-object/from16 v21, v11

    .line 741
    move/from16 v22, v3

    .line 743
    move/from16 v23, v4

    .line 745
    move/from16 v24, v5

    .line 747
    move/from16 v25, v6

    .line 749
    move/from16 v26, v29

    .line 751
    invoke-virtual/range {v16 .. v26}, Lo/u7;->f(ILo/x4;Lo/x4;Lo/x4;Lo/x4;IIIII)V

    .line 754
    invoke-virtual {v14}, Lo/u7;->d()I

    .line 757
    move-result v2

    .line 758
    invoke-static {v8, v2}, Ljava/lang/Math;->max(II)I

    .line 761
    move-result v2

    .line 762
    invoke-virtual {v14}, Lo/u7;->c()I

    .line 765
    move-result v4

    .line 766
    add-int/2addr v4, v10

    .line 767
    if-lez v7, :cond_27

    .line 769
    iget v8, v9, Lo/v7;->Q0:I

    .line 771
    add-int/2addr v4, v8

    .line 772
    :cond_27
    move v8, v2

    .line 773
    move v10, v4

    .line 774
    move-object v2, v15

    .line 775
    const/4 v4, 0x0

    .line 776
    goto :goto_16

    .line 777
    :cond_28
    add-int/lit8 v5, v1, -0x1

    .line 779
    if-ge v7, v5, :cond_29

    .line 781
    add-int/lit8 v5, v7, 0x1

    .line 783
    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 786
    move-result-object v5

    .line 787
    check-cast v5, Lo/u7;

    .line 789
    iget-object v5, v5, Lo/u7;->b:Lo/L4;

    .line 791
    iget-object v5, v5, Lo/L4;->I:Lo/x4;

    .line 793
    move-object v13, v5

    .line 794
    const/4 v5, 0x0

    .line 795
    goto :goto_15

    .line 796
    :cond_29
    iget v5, v9, Lo/v7;->x0:I

    .line 798
    move-object/from16 v13, v27

    .line 800
    :goto_15
    iget-object v15, v14, Lo/u7;->b:Lo/L4;

    .line 802
    iget-object v15, v15, Lo/L4;->K:Lo/x4;

    .line 804
    move-object/from16 v16, v14

    .line 806
    move/from16 v17, v30

    .line 808
    move-object/from16 v18, v0

    .line 810
    move-object/from16 v19, v2

    .line 812
    move-object/from16 v20, v13

    .line 814
    move-object/from16 v21, v11

    .line 816
    move/from16 v22, v3

    .line 818
    move/from16 v23, v4

    .line 820
    move/from16 v24, v5

    .line 822
    move/from16 v25, v6

    .line 824
    move/from16 v26, v29

    .line 826
    invoke-virtual/range {v16 .. v26}, Lo/u7;->f(ILo/x4;Lo/x4;Lo/x4;Lo/x4;IIIII)V

    .line 829
    invoke-virtual {v14}, Lo/u7;->d()I

    .line 832
    move-result v0

    .line 833
    add-int/2addr v0, v8

    .line 834
    invoke-virtual {v14}, Lo/u7;->c()I

    .line 837
    move-result v3

    .line 838
    invoke-static {v10, v3}, Ljava/lang/Math;->max(II)I

    .line 841
    move-result v3

    .line 842
    if-lez v7, :cond_2a

    .line 844
    iget v8, v9, Lo/v7;->P0:I

    .line 846
    add-int/2addr v0, v8

    .line 847
    :cond_2a
    move v8, v0

    .line 848
    move v10, v3

    .line 849
    move-object v0, v15

    .line 850
    const/4 v3, 0x0

    .line 851
    :goto_16
    add-int/lit8 v7, v7, 0x1

    .line 853
    goto/16 :goto_13

    .line 855
    :cond_2b
    const/4 v0, 0x0

    .line 856
    aput v8, v31, v0

    .line 858
    const/4 v0, 0x1

    .line 859
    aput v10, v31, v0

    .line 861
    goto/16 :goto_7

    .line 863
    :cond_2c
    move/from16 v32, v3

    .line 865
    move/from16 v33, v4

    .line 867
    move/from16 v34, v5

    .line 869
    move/from16 v35, v6

    .line 871
    move/from16 v39, v10

    .line 873
    move/from16 v38, v11

    .line 875
    move/from16 v36, v12

    .line 877
    move/from16 p3, v13

    .line 879
    move-object/from16 v31, v16

    .line 881
    move/from16 v29, v26

    .line 883
    move v10, v2

    .line 884
    iget v0, v9, Lo/v7;->V0:I

    .line 886
    if-nez v0, :cond_32

    .line 888
    iget v1, v9, Lo/v7;->U0:I

    .line 890
    if-gtz v1, :cond_31

    .line 892
    const/4 v1, 0x0

    .line 893
    const/4 v2, 0x0

    .line 894
    const/4 v3, 0x0

    .line 895
    :goto_17
    if-ge v1, v15, :cond_30

    .line 897
    if-lez v1, :cond_2d

    .line 899
    iget v4, v9, Lo/v7;->P0:I

    .line 901
    add-int/2addr v2, v4

    .line 902
    :cond_2d
    aget-object v4, v14, v1

    .line 904
    if-nez v4, :cond_2e

    .line 906
    move/from16 v11, v29

    .line 908
    goto :goto_18

    .line 909
    :cond_2e
    move/from16 v11, v29

    .line 911
    invoke-virtual {v9, v4, v11}, Lo/v7;->U(Lo/L4;I)I

    .line 914
    move-result v4

    .line 915
    add-int/2addr v4, v2

    .line 916
    if-le v4, v11, :cond_2f

    .line 918
    goto :goto_19

    .line 919
    :cond_2f
    add-int/lit8 v3, v3, 0x1

    .line 921
    move v2, v4

    .line 922
    :goto_18
    add-int/lit8 v1, v1, 0x1

    .line 924
    move/from16 v29, v11

    .line 926
    goto :goto_17

    .line 927
    :cond_30
    move/from16 v11, v29

    .line 929
    :goto_19
    const/4 v1, 0x0

    .line 930
    goto :goto_1d

    .line 931
    :cond_31
    move/from16 v11, v29

    .line 933
    move v3, v1

    .line 934
    goto :goto_19

    .line 935
    :cond_32
    move/from16 v11, v29

    .line 937
    iget v1, v9, Lo/v7;->U0:I

    .line 939
    if-gtz v1, :cond_37

    .line 941
    const/4 v1, 0x0

    .line 942
    const/4 v2, 0x0

    .line 943
    const/4 v3, 0x0

    .line 944
    :goto_1a
    if-ge v1, v15, :cond_36

    .line 946
    if-lez v1, :cond_33

    .line 948
    iget v4, v9, Lo/v7;->Q0:I

    .line 950
    add-int/2addr v2, v4

    .line 951
    :cond_33
    aget-object v4, v14, v1

    .line 953
    if-nez v4, :cond_34

    .line 955
    goto :goto_1b

    .line 956
    :cond_34
    invoke-virtual {v9, v4, v11}, Lo/v7;->T(Lo/L4;I)I

    .line 959
    move-result v4

    .line 960
    add-int/2addr v4, v2

    .line 961
    if-le v4, v11, :cond_35

    .line 963
    goto :goto_1c

    .line 964
    :cond_35
    add-int/lit8 v3, v3, 0x1

    .line 966
    move v2, v4

    .line 967
    :goto_1b
    add-int/lit8 v1, v1, 0x1

    .line 969
    goto :goto_1a

    .line 970
    :cond_36
    :goto_1c
    move v1, v3

    .line 971
    :cond_37
    const/4 v3, 0x0

    .line 972
    :goto_1d
    iget-object v2, v9, Lo/v7;->Z0:[I

    .line 974
    if-nez v2, :cond_38

    .line 976
    new-array v2, v10, [I

    .line 978
    iput-object v2, v9, Lo/v7;->Z0:[I

    .line 980
    :cond_38
    if-nez v1, :cond_39

    .line 982
    const/4 v2, 0x1

    .line 983
    if-eq v0, v2, :cond_3a

    .line 985
    :cond_39
    if-nez v3, :cond_3b

    .line 987
    if-nez v0, :cond_3b

    .line 989
    :cond_3a
    const/4 v2, 0x1

    .line 990
    goto :goto_1e

    .line 991
    :cond_3b
    const/4 v2, 0x0

    .line 992
    :goto_1e
    if-nez v2, :cond_52

    .line 994
    if-nez v0, :cond_3c

    .line 996
    int-to-float v1, v15

    .line 997
    int-to-float v4, v3

    .line 998
    div-float/2addr v1, v4

    .line 999
    float-to-double v4, v1

    .line 1000
    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    .line 1003
    move-result-wide v4

    .line 1004
    double-to-int v1, v4

    .line 1005
    goto :goto_1f

    .line 1006
    :cond_3c
    int-to-float v3, v15

    .line 1007
    int-to-float v4, v1

    .line 1008
    div-float/2addr v3, v4

    .line 1009
    float-to-double v3, v3

    .line 1010
    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    .line 1013
    move-result-wide v3

    .line 1014
    double-to-int v3, v3

    .line 1015
    :goto_1f
    iget-object v4, v9, Lo/v7;->Y0:[Lo/L4;

    .line 1017
    if-eqz v4, :cond_3d

    .line 1019
    array-length v5, v4

    .line 1020
    if-ge v5, v3, :cond_3e

    .line 1022
    :cond_3d
    const/4 v5, 0x0

    .line 1023
    goto :goto_20

    .line 1024
    :cond_3e
    const/4 v5, 0x0

    .line 1025
    invoke-static {v4, v5}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1028
    goto :goto_21

    .line 1029
    :goto_20
    new-array v4, v3, [Lo/L4;

    .line 1031
    iput-object v4, v9, Lo/v7;->Y0:[Lo/L4;

    .line 1033
    :goto_21
    iget-object v4, v9, Lo/v7;->X0:[Lo/L4;

    .line 1035
    if-eqz v4, :cond_40

    .line 1037
    array-length v6, v4

    .line 1038
    if-ge v6, v1, :cond_3f

    .line 1040
    goto :goto_22

    .line 1041
    :cond_3f
    invoke-static {v4, v5}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1044
    goto :goto_23

    .line 1045
    :cond_40
    :goto_22
    new-array v4, v1, [Lo/L4;

    .line 1047
    iput-object v4, v9, Lo/v7;->X0:[Lo/L4;

    .line 1049
    :goto_23
    const/4 v4, 0x0

    .line 1050
    :goto_24
    if-ge v4, v3, :cond_49

    .line 1052
    const/4 v5, 0x0

    .line 1053
    :goto_25
    if-ge v5, v1, :cond_48

    .line 1055
    mul-int v6, v5, v3

    .line 1057
    add-int/2addr v6, v4

    .line 1058
    const/4 v7, 0x1

    .line 1059
    if-ne v0, v7, :cond_41

    .line 1061
    mul-int v6, v4, v1

    .line 1063
    add-int/2addr v6, v5

    .line 1064
    :cond_41
    array-length v7, v14

    .line 1065
    if-lt v6, v7, :cond_42

    .line 1067
    goto :goto_26

    .line 1068
    :cond_42
    aget-object v6, v14, v6

    .line 1070
    if-nez v6, :cond_43

    .line 1072
    goto :goto_26

    .line 1073
    :cond_43
    invoke-virtual {v9, v6, v11}, Lo/v7;->U(Lo/L4;I)I

    .line 1076
    move-result v7

    .line 1077
    iget-object v8, v9, Lo/v7;->Y0:[Lo/L4;

    .line 1079
    aget-object v8, v8, v4

    .line 1081
    if-eqz v8, :cond_44

    .line 1083
    invoke-virtual {v8}, Lo/L4;->q()I

    .line 1086
    move-result v8

    .line 1087
    if-ge v8, v7, :cond_45

    .line 1089
    :cond_44
    iget-object v7, v9, Lo/v7;->Y0:[Lo/L4;

    .line 1091
    aput-object v6, v7, v4

    .line 1093
    :cond_45
    invoke-virtual {v9, v6, v11}, Lo/v7;->T(Lo/L4;I)I

    .line 1096
    move-result v7

    .line 1097
    iget-object v8, v9, Lo/v7;->X0:[Lo/L4;

    .line 1099
    aget-object v8, v8, v5

    .line 1101
    if-eqz v8, :cond_46

    .line 1103
    invoke-virtual {v8}, Lo/L4;->k()I

    .line 1106
    move-result v8

    .line 1107
    if-ge v8, v7, :cond_47

    .line 1109
    :cond_46
    iget-object v7, v9, Lo/v7;->X0:[Lo/L4;

    .line 1111
    aput-object v6, v7, v5

    .line 1113
    :cond_47
    :goto_26
    add-int/lit8 v5, v5, 0x1

    .line 1115
    goto :goto_25

    .line 1116
    :cond_48
    add-int/lit8 v4, v4, 0x1

    .line 1118
    goto :goto_24

    .line 1119
    :cond_49
    const/4 v4, 0x0

    .line 1120
    const/4 v5, 0x0

    .line 1121
    :goto_27
    if-ge v4, v3, :cond_4c

    .line 1123
    iget-object v6, v9, Lo/v7;->Y0:[Lo/L4;

    .line 1125
    aget-object v6, v6, v4

    .line 1127
    if-eqz v6, :cond_4b

    .line 1129
    if-lez v4, :cond_4a

    .line 1131
    iget v7, v9, Lo/v7;->P0:I

    .line 1133
    add-int/2addr v5, v7

    .line 1134
    :cond_4a
    invoke-virtual {v9, v6, v11}, Lo/v7;->U(Lo/L4;I)I

    .line 1137
    move-result v6

    .line 1138
    add-int/2addr v6, v5

    .line 1139
    move v5, v6

    .line 1140
    :cond_4b
    add-int/lit8 v4, v4, 0x1

    .line 1142
    goto :goto_27

    .line 1143
    :cond_4c
    const/4 v4, 0x0

    .line 1144
    const/4 v6, 0x0

    .line 1145
    :goto_28
    if-ge v4, v1, :cond_4f

    .line 1147
    iget-object v7, v9, Lo/v7;->X0:[Lo/L4;

    .line 1149
    aget-object v7, v7, v4

    .line 1151
    if-eqz v7, :cond_4e

    .line 1153
    if-lez v4, :cond_4d

    .line 1155
    iget v8, v9, Lo/v7;->Q0:I

    .line 1157
    add-int/2addr v6, v8

    .line 1158
    :cond_4d
    invoke-virtual {v9, v7, v11}, Lo/v7;->T(Lo/L4;I)I

    .line 1161
    move-result v7

    .line 1162
    add-int/2addr v7, v6

    .line 1163
    move v6, v7

    .line 1164
    :cond_4e
    add-int/lit8 v4, v4, 0x1

    .line 1166
    goto :goto_28

    .line 1167
    :cond_4f
    const/4 v4, 0x0

    .line 1168
    aput v5, v31, v4

    .line 1170
    const/4 v4, 0x1

    .line 1171
    aput v6, v31, v4

    .line 1173
    if-nez v0, :cond_51

    .line 1175
    if-le v5, v11, :cond_50

    .line 1177
    if-le v3, v4, :cond_50

    .line 1179
    add-int/lit8 v3, v3, -0x1

    .line 1181
    goto/16 :goto_1e

    .line 1183
    :cond_50
    move v2, v4

    .line 1184
    goto/16 :goto_1e

    .line 1186
    :cond_51
    if-le v6, v11, :cond_50

    .line 1188
    if-le v1, v4, :cond_50

    .line 1190
    add-int/lit8 v1, v1, -0x1

    .line 1192
    goto/16 :goto_1e

    .line 1194
    :cond_52
    const/4 v4, 0x1

    .line 1195
    iget-object v0, v9, Lo/v7;->Z0:[I

    .line 1197
    const/4 v2, 0x0

    .line 1198
    aput v3, v0, v2

    .line 1200
    aput v1, v0, v4

    .line 1202
    goto/16 :goto_7

    .line 1204
    :cond_53
    move/from16 v32, v3

    .line 1206
    move/from16 v33, v4

    .line 1208
    move/from16 v34, v5

    .line 1210
    move/from16 v35, v6

    .line 1212
    move-object/from16 v17, v7

    .line 1214
    move/from16 v39, v10

    .line 1216
    move/from16 v38, v11

    .line 1218
    move/from16 v36, v12

    .line 1220
    move/from16 p3, v13

    .line 1222
    move-object/from16 v31, v16

    .line 1224
    move/from16 v11, v26

    .line 1226
    const/4 v10, 0x2

    .line 1227
    move-object v12, v8

    .line 1228
    iget v13, v9, Lo/v7;->V0:I

    .line 1230
    if-nez v15, :cond_54

    .line 1232
    goto/16 :goto_7

    .line 1234
    :cond_54
    invoke-virtual {v12}, Ljava/util/ArrayList;->clear()V

    .line 1237
    new-instance v8, Lo/u7;

    .line 1239
    iget-object v4, v9, Lo/L4;->I:Lo/x4;

    .line 1241
    iget-object v5, v9, Lo/L4;->J:Lo/x4;

    .line 1243
    iget-object v6, v9, Lo/L4;->K:Lo/x4;

    .line 1245
    iget-object v7, v9, Lo/L4;->L:Lo/x4;

    .line 1247
    move-object v1, v8

    .line 1248
    move-object/from16 v2, p1

    .line 1250
    move v3, v13

    .line 1251
    move-object v10, v8

    .line 1252
    move v8, v11

    .line 1253
    invoke-direct/range {v1 .. v8}, Lo/u7;-><init>(Lo/v7;ILo/x4;Lo/x4;Lo/x4;Lo/x4;I)V

    .line 1256
    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1259
    if-nez v13, :cond_5c

    .line 1261
    move-object v8, v10

    .line 1262
    const/4 v1, 0x0

    .line 1263
    const/4 v2, 0x0

    .line 1264
    const/4 v10, 0x0

    .line 1265
    :goto_29
    if-ge v10, v15, :cond_5b

    .line 1267
    aget-object v7, v14, v10

    .line 1269
    invoke-virtual {v9, v7, v11}, Lo/v7;->U(Lo/L4;I)I

    .line 1272
    move-result v16

    .line 1273
    iget-object v3, v7, Lo/L4;->p0:[I

    .line 1275
    const/4 v4, 0x0

    .line 1276
    aget v3, v3, v4

    .line 1278
    const/4 v4, 0x3

    .line 1279
    if-ne v3, v4, :cond_55

    .line 1281
    add-int/lit8 v1, v1, 0x1

    .line 1283
    :cond_55
    move/from16 v20, v1

    .line 1285
    if-eq v2, v11, :cond_56

    .line 1287
    iget v1, v9, Lo/v7;->P0:I

    .line 1289
    add-int/2addr v1, v2

    .line 1290
    add-int v1, v1, v16

    .line 1292
    if-le v1, v11, :cond_57

    .line 1294
    :cond_56
    iget-object v1, v8, Lo/u7;->b:Lo/L4;

    .line 1296
    if-eqz v1, :cond_57

    .line 1298
    const/4 v1, 0x1

    .line 1299
    goto :goto_2a

    .line 1300
    :cond_57
    const/4 v1, 0x0

    .line 1301
    :goto_2a
    if-nez v1, :cond_58

    .line 1303
    if-lez v10, :cond_58

    .line 1305
    iget v3, v9, Lo/v7;->U0:I

    .line 1307
    if-lez v3, :cond_58

    .line 1309
    rem-int v3, v10, v3

    .line 1311
    if-nez v3, :cond_58

    .line 1313
    const/4 v1, 0x1

    .line 1314
    :cond_58
    if-eqz v1, :cond_5a

    .line 1316
    new-instance v8, Lo/u7;

    .line 1318
    iget-object v4, v9, Lo/L4;->I:Lo/x4;

    .line 1320
    iget-object v5, v9, Lo/L4;->J:Lo/x4;

    .line 1322
    iget-object v6, v9, Lo/L4;->K:Lo/x4;

    .line 1324
    iget-object v3, v9, Lo/L4;->L:Lo/x4;

    .line 1326
    move-object v1, v8

    .line 1327
    move-object/from16 v2, p1

    .line 1329
    move-object/from16 v21, v3

    .line 1331
    move v3, v13

    .line 1332
    move-object/from16 v22, v0

    .line 1334
    move-object v0, v7

    .line 1335
    move-object/from16 v7, v21

    .line 1337
    move/from16 v29, v13

    .line 1339
    move-object v13, v8

    .line 1340
    move v8, v11

    .line 1341
    invoke-direct/range {v1 .. v8}, Lo/u7;-><init>(Lo/v7;ILo/x4;Lo/x4;Lo/x4;Lo/x4;I)V

    .line 1344
    iput v10, v13, Lo/u7;->n:I

    .line 1346
    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1349
    move-object v8, v13

    .line 1350
    :cond_59
    move/from16 v2, v16

    .line 1352
    goto :goto_2b

    .line 1353
    :cond_5a
    move-object/from16 v22, v0

    .line 1355
    move-object v0, v7

    .line 1356
    move/from16 v29, v13

    .line 1358
    if-lez v10, :cond_59

    .line 1360
    iget v1, v9, Lo/v7;->P0:I

    .line 1362
    add-int v1, v1, v16

    .line 1364
    add-int/2addr v1, v2

    .line 1365
    move v2, v1

    .line 1366
    :goto_2b
    invoke-virtual {v8, v0}, Lo/u7;->a(Lo/L4;)V

    .line 1369
    add-int/lit8 v10, v10, 0x1

    .line 1371
    move/from16 v1, v20

    .line 1373
    move-object/from16 v0, v22

    .line 1375
    move/from16 v13, v29

    .line 1377
    goto :goto_29

    .line 1378
    :cond_5b
    move-object/from16 v22, v0

    .line 1380
    move/from16 v29, v13

    .line 1382
    goto/16 :goto_2f

    .line 1384
    :cond_5c
    move-object/from16 v22, v0

    .line 1386
    move/from16 v29, v13

    .line 1388
    move-object v8, v10

    .line 1389
    const/4 v0, 0x0

    .line 1390
    const/4 v1, 0x0

    .line 1391
    const/4 v2, 0x0

    .line 1392
    :goto_2c
    if-ge v0, v15, :cond_63

    .line 1394
    aget-object v10, v14, v0

    .line 1396
    invoke-virtual {v9, v10, v11}, Lo/v7;->T(Lo/L4;I)I

    .line 1399
    move-result v13

    .line 1400
    iget-object v3, v10, Lo/L4;->p0:[I

    .line 1402
    const/4 v4, 0x1

    .line 1403
    aget v3, v3, v4

    .line 1405
    const/4 v7, 0x3

    .line 1406
    if-ne v3, v7, :cond_5d

    .line 1408
    add-int/lit8 v1, v1, 0x1

    .line 1410
    :cond_5d
    move/from16 v16, v1

    .line 1412
    if-eq v2, v11, :cond_5e

    .line 1414
    iget v1, v9, Lo/v7;->Q0:I

    .line 1416
    add-int/2addr v1, v2

    .line 1417
    add-int/2addr v1, v13

    .line 1418
    if-le v1, v11, :cond_5f

    .line 1420
    :cond_5e
    iget-object v1, v8, Lo/u7;->b:Lo/L4;

    .line 1422
    if-eqz v1, :cond_5f

    .line 1424
    const/4 v1, 0x1

    .line 1425
    goto :goto_2d

    .line 1426
    :cond_5f
    const/4 v1, 0x0

    .line 1427
    :goto_2d
    if-nez v1, :cond_60

    .line 1429
    if-lez v0, :cond_60

    .line 1431
    iget v3, v9, Lo/v7;->U0:I

    .line 1433
    if-lez v3, :cond_60

    .line 1435
    rem-int v3, v0, v3

    .line 1437
    if-nez v3, :cond_60

    .line 1439
    const/4 v1, 0x1

    .line 1440
    :cond_60
    if-eqz v1, :cond_61

    .line 1442
    new-instance v8, Lo/u7;

    .line 1444
    iget-object v4, v9, Lo/L4;->I:Lo/x4;

    .line 1446
    iget-object v5, v9, Lo/L4;->J:Lo/x4;

    .line 1448
    iget-object v6, v9, Lo/L4;->K:Lo/x4;

    .line 1450
    iget-object v3, v9, Lo/L4;->L:Lo/x4;

    .line 1452
    move-object v1, v8

    .line 1453
    move-object/from16 v2, p1

    .line 1455
    move-object/from16 v19, v3

    .line 1457
    move/from16 v3, v29

    .line 1459
    move/from16 v20, v7

    .line 1461
    move-object/from16 v7, v19

    .line 1463
    move-object/from16 v30, v14

    .line 1465
    move-object v14, v8

    .line 1466
    move v8, v11

    .line 1467
    invoke-direct/range {v1 .. v8}, Lo/u7;-><init>(Lo/v7;ILo/x4;Lo/x4;Lo/x4;Lo/x4;I)V

    .line 1470
    iput v0, v14, Lo/u7;->n:I

    .line 1472
    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1475
    move v2, v13

    .line 1476
    move-object v8, v14

    .line 1477
    goto :goto_2e

    .line 1478
    :cond_61
    move/from16 v20, v7

    .line 1480
    move-object/from16 v30, v14

    .line 1482
    if-lez v0, :cond_62

    .line 1484
    iget v1, v9, Lo/v7;->Q0:I

    .line 1486
    add-int/2addr v1, v13

    .line 1487
    add-int/2addr v1, v2

    .line 1488
    move v2, v1

    .line 1489
    goto :goto_2e

    .line 1490
    :cond_62
    move v2, v13

    .line 1491
    :goto_2e
    invoke-virtual {v8, v10}, Lo/u7;->a(Lo/L4;)V

    .line 1494
    add-int/lit8 v0, v0, 0x1

    .line 1496
    move/from16 v1, v16

    .line 1498
    move-object/from16 v14, v30

    .line 1500
    goto :goto_2c

    .line 1501
    :cond_63
    :goto_2f
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    .line 1504
    move-result v0

    .line 1505
    iget v2, v9, Lo/v7;->w0:I

    .line 1507
    iget v3, v9, Lo/v7;->s0:I

    .line 1509
    iget v4, v9, Lo/v7;->x0:I

    .line 1511
    iget v5, v9, Lo/v7;->t0:I

    .line 1513
    const/4 v6, 0x0

    .line 1514
    aget v7, v22, v6

    .line 1516
    const/4 v6, 0x2

    .line 1517
    if-eq v7, v6, :cond_65

    .line 1519
    const/4 v7, 0x1

    .line 1520
    aget v8, v22, v7

    .line 1522
    if-ne v8, v6, :cond_64

    .line 1524
    goto :goto_30

    .line 1525
    :cond_64
    const/4 v6, 0x0

    .line 1526
    goto :goto_31

    .line 1527
    :cond_65
    :goto_30
    const/4 v6, 0x1

    .line 1528
    :goto_31
    if-lez v1, :cond_67

    .line 1530
    if-eqz v6, :cond_67

    .line 1532
    const/4 v1, 0x0

    .line 1533
    :goto_32
    if-ge v1, v0, :cond_67

    .line 1535
    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1538
    move-result-object v6

    .line 1539
    check-cast v6, Lo/u7;

    .line 1541
    if-nez v29, :cond_66

    .line 1543
    invoke-virtual {v6}, Lo/u7;->d()I

    .line 1546
    move-result v7

    .line 1547
    sub-int v7, v11, v7

    .line 1549
    invoke-virtual {v6, v7}, Lo/u7;->e(I)V

    .line 1552
    goto :goto_33

    .line 1553
    :cond_66
    invoke-virtual {v6}, Lo/u7;->c()I

    .line 1556
    move-result v7

    .line 1557
    sub-int v7, v11, v7

    .line 1559
    invoke-virtual {v6, v7}, Lo/u7;->e(I)V

    .line 1562
    :goto_33
    add-int/lit8 v1, v1, 0x1

    .line 1564
    goto :goto_32

    .line 1565
    :cond_67
    move v6, v3

    .line 1566
    move-object/from16 v1, v18

    .line 1568
    move-object/from16 v14, v27

    .line 1570
    move-object/from16 v13, v28

    .line 1572
    const/4 v7, 0x0

    .line 1573
    const/4 v8, 0x0

    .line 1574
    const/4 v10, 0x0

    .line 1575
    move v3, v2

    .line 1576
    move-object/from16 v2, v17

    .line 1578
    :goto_34
    if-ge v7, v0, :cond_6d

    .line 1580
    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1583
    move-result-object v15

    .line 1584
    check-cast v15, Lo/u7;

    .line 1586
    if-nez v29, :cond_6a

    .line 1588
    add-int/lit8 v5, v0, -0x1

    .line 1590
    if-ge v7, v5, :cond_68

    .line 1592
    add-int/lit8 v5, v7, 0x1

    .line 1594
    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1597
    move-result-object v5

    .line 1598
    check-cast v5, Lo/u7;

    .line 1600
    iget-object v5, v5, Lo/u7;->b:Lo/L4;

    .line 1602
    iget-object v5, v5, Lo/L4;->J:Lo/x4;

    .line 1604
    move-object v13, v5

    .line 1605
    move-object/from16 v37, v12

    .line 1607
    const/4 v5, 0x0

    .line 1608
    goto :goto_35

    .line 1609
    :cond_68
    iget v5, v9, Lo/v7;->t0:I

    .line 1611
    move-object/from16 v37, v12

    .line 1613
    move-object/from16 v13, v28

    .line 1615
    :goto_35
    iget-object v12, v15, Lo/u7;->b:Lo/L4;

    .line 1617
    iget-object v12, v12, Lo/L4;->L:Lo/x4;

    .line 1619
    move-object/from16 v16, v15

    .line 1621
    move/from16 v17, v29

    .line 1623
    move-object/from16 v18, v1

    .line 1625
    move-object/from16 v19, v2

    .line 1627
    move-object/from16 v20, v14

    .line 1629
    move-object/from16 v21, v13

    .line 1631
    move/from16 v22, v3

    .line 1633
    move/from16 v23, v6

    .line 1635
    move/from16 v24, v4

    .line 1637
    move/from16 v25, v5

    .line 1639
    move/from16 v26, v11

    .line 1641
    invoke-virtual/range {v16 .. v26}, Lo/u7;->f(ILo/x4;Lo/x4;Lo/x4;Lo/x4;IIIII)V

    .line 1644
    invoke-virtual {v15}, Lo/u7;->d()I

    .line 1647
    move-result v2

    .line 1648
    invoke-static {v8, v2}, Ljava/lang/Math;->max(II)I

    .line 1651
    move-result v2

    .line 1652
    invoke-virtual {v15}, Lo/u7;->c()I

    .line 1655
    move-result v6

    .line 1656
    add-int/2addr v6, v10

    .line 1657
    if-lez v7, :cond_69

    .line 1659
    iget v8, v9, Lo/v7;->Q0:I

    .line 1661
    add-int/2addr v6, v8

    .line 1662
    :cond_69
    move/from16 p2, v0

    .line 1664
    move v8, v2

    .line 1665
    move v10, v6

    .line 1666
    move-object v2, v12

    .line 1667
    move-object/from16 v12, v37

    .line 1669
    const/4 v6, 0x0

    .line 1670
    goto :goto_37

    .line 1671
    :cond_6a
    move-object/from16 v37, v12

    .line 1673
    add-int/lit8 v4, v0, -0x1

    .line 1675
    if-ge v7, v4, :cond_6b

    .line 1677
    add-int/lit8 v4, v7, 0x1

    .line 1679
    move-object/from16 v12, v37

    .line 1681
    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1684
    move-result-object v4

    .line 1685
    check-cast v4, Lo/u7;

    .line 1687
    iget-object v4, v4, Lo/u7;->b:Lo/L4;

    .line 1689
    iget-object v4, v4, Lo/L4;->I:Lo/x4;

    .line 1691
    move/from16 p2, v0

    .line 1693
    move-object v14, v4

    .line 1694
    const/4 v4, 0x0

    .line 1695
    goto :goto_36

    .line 1696
    :cond_6b
    move-object/from16 v12, v37

    .line 1698
    iget v4, v9, Lo/v7;->x0:I

    .line 1700
    move/from16 p2, v0

    .line 1702
    move-object/from16 v14, v27

    .line 1704
    :goto_36
    iget-object v0, v15, Lo/u7;->b:Lo/L4;

    .line 1706
    iget-object v0, v0, Lo/L4;->K:Lo/x4;

    .line 1708
    move-object/from16 v16, v15

    .line 1710
    move/from16 v17, v29

    .line 1712
    move-object/from16 v18, v1

    .line 1714
    move-object/from16 v19, v2

    .line 1716
    move-object/from16 v20, v14

    .line 1718
    move-object/from16 v21, v13

    .line 1720
    move/from16 v22, v3

    .line 1722
    move/from16 v23, v6

    .line 1724
    move/from16 v24, v4

    .line 1726
    move/from16 v25, v5

    .line 1728
    move/from16 v26, v11

    .line 1730
    invoke-virtual/range {v16 .. v26}, Lo/u7;->f(ILo/x4;Lo/x4;Lo/x4;Lo/x4;IIIII)V

    .line 1733
    invoke-virtual {v15}, Lo/u7;->d()I

    .line 1736
    move-result v1

    .line 1737
    add-int/2addr v1, v8

    .line 1738
    invoke-virtual {v15}, Lo/u7;->c()I

    .line 1741
    move-result v3

    .line 1742
    invoke-static {v10, v3}, Ljava/lang/Math;->max(II)I

    .line 1745
    move-result v3

    .line 1746
    if-lez v7, :cond_6c

    .line 1748
    iget v8, v9, Lo/v7;->P0:I

    .line 1750
    add-int/2addr v1, v8

    .line 1751
    :cond_6c
    move v8, v1

    .line 1752
    move v10, v3

    .line 1753
    const/4 v3, 0x0

    .line 1754
    move-object v1, v0

    .line 1755
    :goto_37
    add-int/lit8 v7, v7, 0x1

    .line 1757
    move/from16 v0, p2

    .line 1759
    goto/16 :goto_34

    .line 1761
    :cond_6d
    const/4 v0, 0x0

    .line 1762
    aput v8, v31, v0

    .line 1764
    const/4 v0, 0x1

    .line 1765
    aput v10, v31, v0

    .line 1767
    goto/16 :goto_7

    .line 1769
    :cond_6e
    move/from16 v32, v3

    .line 1771
    move/from16 v33, v4

    .line 1773
    move/from16 v34, v5

    .line 1775
    move/from16 v35, v6

    .line 1777
    move/from16 v39, v10

    .line 1779
    move/from16 v38, v11

    .line 1781
    move/from16 v36, v12

    .line 1783
    move/from16 p3, v13

    .line 1785
    move-object/from16 v30, v14

    .line 1787
    move-object/from16 v31, v16

    .line 1789
    move/from16 v11, v26

    .line 1791
    move-object v12, v8

    .line 1792
    iget v0, v9, Lo/v7;->V0:I

    .line 1794
    if-nez v15, :cond_6f

    .line 1796
    goto/16 :goto_7

    .line 1798
    :cond_6f
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    .line 1801
    move-result v1

    .line 1802
    if-nez v1, :cond_70

    .line 1804
    new-instance v10, Lo/u7;

    .line 1806
    iget-object v4, v9, Lo/L4;->I:Lo/x4;

    .line 1808
    iget-object v5, v9, Lo/L4;->J:Lo/x4;

    .line 1810
    iget-object v6, v9, Lo/L4;->K:Lo/x4;

    .line 1812
    iget-object v7, v9, Lo/L4;->L:Lo/x4;

    .line 1814
    move-object v1, v10

    .line 1815
    move-object/from16 v2, p1

    .line 1817
    move v3, v0

    .line 1818
    move v8, v11

    .line 1819
    invoke-direct/range {v1 .. v8}, Lo/u7;-><init>(Lo/v7;ILo/x4;Lo/x4;Lo/x4;Lo/x4;I)V

    .line 1822
    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1825
    goto :goto_38

    .line 1826
    :cond_70
    const/4 v1, 0x0

    .line 1827
    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1830
    move-result-object v2

    .line 1831
    move-object v10, v2

    .line 1832
    check-cast v10, Lo/u7;

    .line 1834
    iput v1, v10, Lo/u7;->c:I

    .line 1836
    const/4 v2, 0x0

    .line 1837
    iput-object v2, v10, Lo/u7;->b:Lo/L4;

    .line 1839
    iput v1, v10, Lo/u7;->l:I

    .line 1841
    iput v1, v10, Lo/u7;->m:I

    .line 1843
    iput v1, v10, Lo/u7;->n:I

    .line 1845
    iput v1, v10, Lo/u7;->o:I

    .line 1847
    iput v1, v10, Lo/u7;->p:I

    .line 1849
    iget v1, v9, Lo/v7;->w0:I

    .line 1851
    iget v2, v9, Lo/v7;->s0:I

    .line 1853
    iget v3, v9, Lo/v7;->x0:I

    .line 1855
    iget v4, v9, Lo/v7;->t0:I

    .line 1857
    iget-object v5, v9, Lo/L4;->K:Lo/x4;

    .line 1859
    iget-object v6, v9, Lo/L4;->L:Lo/x4;

    .line 1861
    iget-object v7, v9, Lo/L4;->I:Lo/x4;

    .line 1863
    iget-object v8, v9, Lo/L4;->J:Lo/x4;

    .line 1865
    move-object/from16 v16, v10

    .line 1867
    move/from16 v17, v0

    .line 1869
    move-object/from16 v18, v7

    .line 1871
    move-object/from16 v19, v8

    .line 1873
    move-object/from16 v20, v5

    .line 1875
    move-object/from16 v21, v6

    .line 1877
    move/from16 v22, v1

    .line 1879
    move/from16 v23, v2

    .line 1881
    move/from16 v24, v3

    .line 1883
    move/from16 v25, v4

    .line 1885
    move/from16 v26, v11

    .line 1887
    invoke-virtual/range {v16 .. v26}, Lo/u7;->f(ILo/x4;Lo/x4;Lo/x4;Lo/x4;IIIII)V

    .line 1890
    :goto_38
    const/4 v0, 0x0

    .line 1891
    :goto_39
    if-ge v0, v15, :cond_71

    .line 1893
    aget-object v1, v30, v0

    .line 1895
    invoke-virtual {v10, v1}, Lo/u7;->a(Lo/L4;)V

    .line 1898
    add-int/lit8 v0, v0, 0x1

    .line 1900
    goto :goto_39

    .line 1901
    :cond_71
    invoke-virtual {v10}, Lo/u7;->d()I

    .line 1904
    move-result v0

    .line 1905
    const/4 v1, 0x0

    .line 1906
    aput v0, v31, v1

    .line 1908
    invoke-virtual {v10}, Lo/u7;->c()I

    .line 1911
    move-result v0

    .line 1912
    const/4 v2, 0x1

    .line 1913
    aput v0, v31, v2

    .line 1915
    :goto_3a
    aget v0, v31, v1

    .line 1917
    add-int v0, v0, v35

    .line 1919
    add-int v0, v0, v34

    .line 1921
    aget v1, v31, v2

    .line 1923
    add-int v1, v1, v33

    .line 1925
    add-int v1, v1, v32

    .line 1927
    const/high16 v3, -0x80000000

    .line 1929
    const/high16 v4, 0x40000000    # 2.0f

    .line 1931
    move/from16 v5, v39

    .line 1933
    if-ne v5, v4, :cond_72

    .line 1935
    move/from16 v0, v36

    .line 1937
    move/from16 v11, v38

    .line 1939
    goto :goto_3c

    .line 1940
    :cond_72
    if-ne v5, v3, :cond_73

    .line 1942
    move/from16 v6, v38

    .line 1944
    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    .line 1947
    move-result v11

    .line 1948
    :goto_3b
    move/from16 v0, v36

    .line 1950
    goto :goto_3c

    .line 1951
    :cond_73
    if-nez v5, :cond_74

    .line 1953
    move v11, v0

    .line 1954
    goto :goto_3b

    .line 1955
    :cond_74
    move/from16 v0, v36

    .line 1957
    const/4 v11, 0x0

    .line 1958
    :goto_3c
    if-ne v0, v4, :cond_75

    .line 1960
    move/from16 v13, p3

    .line 1962
    goto :goto_3d

    .line 1963
    :cond_75
    if-ne v0, v3, :cond_76

    .line 1965
    move/from16 v3, p3

    .line 1967
    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    .line 1970
    move-result v13

    .line 1971
    goto :goto_3d

    .line 1972
    :cond_76
    if-nez v0, :cond_77

    .line 1974
    move v13, v1

    .line 1975
    goto :goto_3d

    .line 1976
    :cond_77
    const/4 v13, 0x0

    .line 1977
    :goto_3d
    iput v11, v9, Lo/v7;->z0:I

    .line 1979
    iput v13, v9, Lo/v7;->A0:I

    .line 1981
    invoke-virtual {v9, v11}, Lo/L4;->O(I)V

    .line 1984
    invoke-virtual {v9, v13}, Lo/L4;->L(I)V

    .line 1987
    iget v0, v9, Lo/b9;->r0:I

    .line 1989
    if-lez v0, :cond_78

    .line 1991
    move v14, v2

    .line 1992
    goto :goto_3e

    .line 1993
    :cond_78
    const/4 v14, 0x0

    .line 1994
    :goto_3e
    iput-boolean v14, v9, Lo/v7;->y0:Z

    .line 1996
    :goto_3f
    iget v0, v9, Lo/v7;->z0:I

    .line 1998
    iget v1, v9, Lo/v7;->A0:I

    .line 2000
    move-object/from16 v2, p0

    .line 2002
    invoke-virtual {v2, v0, v1}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 2005
    goto :goto_40

    .line 2006
    :cond_79
    move-object v2, v0

    .line 2007
    move v0, v14

    .line 2008
    invoke-virtual {v2, v0, v0}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 2011
    :goto_40
    return-void
.end method

.method public final onMeasure(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->j:Lo/v7;

    .line 3
    invoke-virtual {p0, v0, p1, p2}, Landroidx/constraintlayout/helper/widget/Flow;->j(Lo/v7;II)V

    .line 6
    return-void
.end method

.method public setFirstHorizontalBias(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->j:Lo/v7;

    .line 3
    iput p1, v0, Lo/v7;->L0:F

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 8
    return-void
.end method

.method public setFirstHorizontalStyle(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->j:Lo/v7;

    .line 3
    iput p1, v0, Lo/v7;->F0:I

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 8
    return-void
.end method

.method public setFirstVerticalBias(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->j:Lo/v7;

    .line 3
    iput p1, v0, Lo/v7;->M0:F

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 8
    return-void
.end method

.method public setFirstVerticalStyle(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->j:Lo/v7;

    .line 3
    iput p1, v0, Lo/v7;->G0:I

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 8
    return-void
.end method

.method public setHorizontalAlign(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->j:Lo/v7;

    .line 3
    iput p1, v0, Lo/v7;->R0:I

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 8
    return-void
.end method

.method public setHorizontalBias(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->j:Lo/v7;

    .line 3
    iput p1, v0, Lo/v7;->J0:F

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 8
    return-void
.end method

.method public setHorizontalGap(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->j:Lo/v7;

    .line 3
    iput p1, v0, Lo/v7;->P0:I

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 8
    return-void
.end method

.method public setHorizontalStyle(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->j:Lo/v7;

    .line 3
    iput p1, v0, Lo/v7;->D0:I

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 8
    return-void
.end method

.method public setLastHorizontalBias(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->j:Lo/v7;

    .line 3
    iput p1, v0, Lo/v7;->N0:F

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 8
    return-void
.end method

.method public setLastHorizontalStyle(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->j:Lo/v7;

    .line 3
    iput p1, v0, Lo/v7;->H0:I

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 8
    return-void
.end method

.method public setLastVerticalBias(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->j:Lo/v7;

    .line 3
    iput p1, v0, Lo/v7;->O0:F

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 8
    return-void
.end method

.method public setLastVerticalStyle(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->j:Lo/v7;

    .line 3
    iput p1, v0, Lo/v7;->I0:I

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 8
    return-void
.end method

.method public setMaxElementsWrap(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->j:Lo/v7;

    .line 3
    iput p1, v0, Lo/v7;->U0:I

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 8
    return-void
.end method

.method public setOrientation(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->j:Lo/v7;

    .line 3
    iput p1, v0, Lo/v7;->V0:I

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 8
    return-void
.end method

.method public setPadding(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->j:Lo/v7;

    .line 3
    iput p1, v0, Lo/v7;->s0:I

    .line 5
    iput p1, v0, Lo/v7;->t0:I

    .line 7
    iput p1, v0, Lo/v7;->u0:I

    .line 9
    iput p1, v0, Lo/v7;->v0:I

    .line 11
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 14
    return-void
.end method

.method public setPaddingBottom(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->j:Lo/v7;

    .line 3
    iput p1, v0, Lo/v7;->t0:I

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 8
    return-void
.end method

.method public setPaddingLeft(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->j:Lo/v7;

    .line 3
    iput p1, v0, Lo/v7;->w0:I

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 8
    return-void
.end method

.method public setPaddingRight(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->j:Lo/v7;

    .line 3
    iput p1, v0, Lo/v7;->x0:I

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 8
    return-void
.end method

.method public setPaddingTop(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->j:Lo/v7;

    .line 3
    iput p1, v0, Lo/v7;->s0:I

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 8
    return-void
.end method

.method public setVerticalAlign(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->j:Lo/v7;

    .line 3
    iput p1, v0, Lo/v7;->S0:I

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 8
    return-void
.end method

.method public setVerticalBias(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->j:Lo/v7;

    .line 3
    iput p1, v0, Lo/v7;->K0:F

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 8
    return-void
.end method

.method public setVerticalGap(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->j:Lo/v7;

    .line 3
    iput p1, v0, Lo/v7;->Q0:I

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 8
    return-void
.end method

.method public setVerticalStyle(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->j:Lo/v7;

    .line 3
    iput p1, v0, Lo/v7;->E0:I

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 8
    return-void
.end method

.method public setWrapMode(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->j:Lo/v7;

    .line 3
    iput p1, v0, Lo/v7;->T0:I

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 8
    return-void
.end method
