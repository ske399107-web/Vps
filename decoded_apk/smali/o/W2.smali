.class public abstract Lo/W2;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field public A:I

.field public B:I

.field public C:I

.field public D:I

.field public E:I

.field public F:I

.field public G:I

.field public H:I

.field public I:I

.field public J:I

.field public K:I

.field public L:I

.field public final M:I

.field public N:F

.field public O:Landroid/view/MotionEvent;

.field public P:Z

.field public Q:F

.field public R:F

.field public S:Ljava/util/ArrayList;

.field public T:I

.field public U:I

.field public V:F

.field public W:[F

.field public final a:Landroid/graphics/Paint;

.field public a0:Z

.field public final b:Landroid/graphics/Paint;

.field public b0:I

.field public final c:Landroid/graphics/Paint;

.field public c0:I

.field public final d:Landroid/graphics/Paint;

.field public d0:I

.field public final e:Landroid/graphics/Paint;

.field public e0:Z

.field public final f:Landroid/graphics/Paint;

.field public f0:Z

.field public final g:Landroid/graphics/Paint;

.field public g0:Landroid/content/res/ColorStateList;

.field public final h:Lo/U2;

.field public h0:Landroid/content/res/ColorStateList;

.field public final i:Landroid/view/accessibility/AccessibilityManager;

.field public i0:Landroid/content/res/ColorStateList;

.field public j:Lo/T2;

.field public j0:Landroid/content/res/ColorStateList;

.field public final k:I

.field public k0:Landroid/content/res/ColorStateList;

.field public final l:Ljava/util/ArrayList;

.field public final l0:Landroid/graphics/Path;

.field public final m:Ljava/util/ArrayList;

.field public final m0:Landroid/graphics/RectF;

.field public final n:Ljava/util/ArrayList;

.field public final n0:Landroid/graphics/RectF;

.field public o:Z

.field public final o0:Lo/eb;

.field public p:Landroid/animation/ValueAnimator;

.field public p0:Landroid/graphics/drawable/Drawable;

.field public q:Landroid/animation/ValueAnimator;

.field public q0:Ljava/util/List;

.field public final r:I

.field public r0:F

.field public final s:I

.field public s0:I

.field public final t:I

.field public final t0:Lo/R2;

.field public final u:I

.field public final v:I

.field public final w:I

.field public final x:I

.field public final y:I

.field public final z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 3
    move-object/from16 v7, p2

    .line 5
    const v1, 0x7f0f0445

    .line 8
    const v8, 0x7f0303de

    .line 11
    move-object/from16 v2, p1

    .line 13
    invoke-static {v2, v7, v8, v1}, Lo/x9;->j0(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    .line 16
    move-result-object v1

    .line 17
    invoke-direct {v0, v1, v7, v8}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 20
    new-instance v1, Ljava/util/ArrayList;

    .line 22
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 25
    iput-object v1, v0, Lo/W2;->l:Ljava/util/ArrayList;

    .line 27
    new-instance v1, Ljava/util/ArrayList;

    .line 29
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 32
    iput-object v1, v0, Lo/W2;->m:Ljava/util/ArrayList;

    .line 34
    new-instance v1, Ljava/util/ArrayList;

    .line 36
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 39
    iput-object v1, v0, Lo/W2;->n:Ljava/util/ArrayList;

    .line 41
    const/4 v9, 0x0

    .line 42
    iput-boolean v9, v0, Lo/W2;->o:Z

    .line 44
    const/4 v1, -0x1

    .line 45
    iput v1, v0, Lo/W2;->I:I

    .line 47
    iput v1, v0, Lo/W2;->J:I

    .line 49
    iput-boolean v9, v0, Lo/W2;->P:Z

    .line 51
    new-instance v2, Ljava/util/ArrayList;

    .line 53
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 56
    iput-object v2, v0, Lo/W2;->S:Ljava/util/ArrayList;

    .line 58
    iput v1, v0, Lo/W2;->T:I

    .line 60
    iput v1, v0, Lo/W2;->U:I

    .line 62
    const/4 v10, 0x0

    .line 63
    iput v10, v0, Lo/W2;->V:F

    .line 65
    const/4 v11, 0x1

    .line 66
    iput-boolean v11, v0, Lo/W2;->a0:Z

    .line 68
    iput-boolean v9, v0, Lo/W2;->e0:Z

    .line 70
    new-instance v1, Landroid/graphics/Path;

    .line 72
    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 75
    iput-object v1, v0, Lo/W2;->l0:Landroid/graphics/Path;

    .line 77
    new-instance v1, Landroid/graphics/RectF;

    .line 79
    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    .line 82
    iput-object v1, v0, Lo/W2;->m0:Landroid/graphics/RectF;

    .line 84
    new-instance v1, Landroid/graphics/RectF;

    .line 86
    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    .line 89
    iput-object v1, v0, Lo/W2;->n0:Landroid/graphics/RectF;

    .line 91
    new-instance v12, Lo/eb;

    .line 93
    invoke-direct {v12}, Lo/eb;-><init>()V

    .line 96
    iput-object v12, v0, Lo/W2;->o0:Lo/eb;

    .line 98
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 101
    move-result-object v1

    .line 102
    iput-object v1, v0, Lo/W2;->q0:Ljava/util/List;

    .line 104
    iput v9, v0, Lo/W2;->s0:I

    .line 106
    new-instance v1, Lo/R2;

    .line 108
    move-object v13, v0

    .line 109
    check-cast v13, Lcom/google/android/material/slider/Slider;

    .line 111
    invoke-direct {v1, v13}, Lo/R2;-><init>(Lcom/google/android/material/slider/Slider;)V

    .line 114
    iput-object v1, v0, Lo/W2;->t0:Lo/R2;

    .line 116
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 119
    move-result-object v14

    .line 120
    new-instance v1, Landroid/graphics/Paint;

    .line 122
    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 125
    iput-object v1, v0, Lo/W2;->a:Landroid/graphics/Paint;

    .line 127
    new-instance v1, Landroid/graphics/Paint;

    .line 129
    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 132
    iput-object v1, v0, Lo/W2;->b:Landroid/graphics/Paint;

    .line 134
    new-instance v1, Landroid/graphics/Paint;

    .line 136
    invoke-direct {v1, v11}, Landroid/graphics/Paint;-><init>(I)V

    .line 139
    iput-object v1, v0, Lo/W2;->c:Landroid/graphics/Paint;

    .line 141
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 143
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 146
    new-instance v3, Landroid/graphics/PorterDuffXfermode;

    .line 148
    sget-object v4, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    .line 150
    invoke-direct {v3, v4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    .line 153
    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 156
    new-instance v1, Landroid/graphics/Paint;

    .line 158
    invoke-direct {v1, v11}, Landroid/graphics/Paint;-><init>(I)V

    .line 161
    iput-object v1, v0, Lo/W2;->d:Landroid/graphics/Paint;

    .line 163
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 166
    new-instance v1, Landroid/graphics/Paint;

    .line 168
    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 171
    iput-object v1, v0, Lo/W2;->e:Landroid/graphics/Paint;

    .line 173
    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 175
    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 178
    sget-object v4, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    .line 180
    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 183
    new-instance v1, Landroid/graphics/Paint;

    .line 185
    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 188
    iput-object v1, v0, Lo/W2;->f:Landroid/graphics/Paint;

    .line 190
    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 193
    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 196
    new-instance v1, Landroid/graphics/Paint;

    .line 198
    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 201
    iput-object v1, v0, Lo/W2;->g:Landroid/graphics/Paint;

    .line 203
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 206
    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 209
    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 212
    move-result-object v1

    .line 213
    const v2, 0x7f0602ef

    .line 216
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 219
    move-result v2

    .line 220
    iput v2, v0, Lo/W2;->z:I

    .line 222
    const v2, 0x7f0602ee

    .line 225
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 228
    move-result v2

    .line 229
    iput v2, v0, Lo/W2;->s:I

    .line 231
    iput v2, v0, Lo/W2;->D:I

    .line 233
    const v2, 0x7f0602ea

    .line 236
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 239
    move-result v2

    .line 240
    iput v2, v0, Lo/W2;->t:I

    .line 242
    const v2, 0x7f0602ed

    .line 245
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 248
    move-result v2

    .line 249
    iput v2, v0, Lo/W2;->u:I

    .line 251
    const v2, 0x7f0602ec

    .line 254
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 257
    move-result v3

    .line 258
    iput v3, v0, Lo/W2;->v:I

    .line 260
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 263
    move-result v2

    .line 264
    iput v2, v0, Lo/W2;->w:I

    .line 266
    const v2, 0x7f0602eb

    .line 269
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 272
    move-result v2

    .line 273
    iput v2, v0, Lo/W2;->x:I

    .line 275
    const v2, 0x7f0602e6

    .line 278
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 281
    move-result v1

    .line 282
    iput v1, v0, Lo/W2;->M:I

    .line 284
    sget-object v15, Lo/fd;->x:[I

    .line 286
    new-array v6, v9, [I

    .line 288
    const v5, 0x7f0f0445

    .line 291
    invoke-static {v14, v7, v8, v5}, Lo/x9;->j(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 294
    move-object v1, v14

    .line 295
    move-object/from16 v2, p2

    .line 297
    move-object v3, v15

    .line 298
    move v4, v8

    .line 299
    move/from16 p1, v5

    .line 301
    invoke-static/range {v1 .. v6}, Lo/x9;->q(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)V

    .line 304
    move/from16 v1, p1

    .line 306
    invoke-virtual {v14, v7, v15, v8, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 309
    move-result-object v1

    .line 310
    const/16 v2, 0x8

    .line 312
    const v3, 0x7f0f0467

    .line 315
    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 318
    move-result v2

    .line 319
    iput v2, v0, Lo/W2;->k:I

    .line 321
    const/4 v2, 0x3

    .line 322
    invoke-virtual {v1, v2, v10}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 325
    move-result v2

    .line 326
    iput v2, v0, Lo/W2;->Q:F

    .line 328
    const/4 v2, 0x4

    .line 329
    const/high16 v3, 0x3f800000    # 1.0f

    .line 331
    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 334
    move-result v2

    .line 335
    iput v2, v0, Lo/W2;->R:F

    .line 337
    iget v2, v0, Lo/W2;->Q:F

    .line 339
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 342
    move-result-object v2

    .line 343
    filled-new-array {v2}, [Ljava/lang/Float;

    .line 346
    move-result-object v2

    .line 347
    invoke-virtual {v0, v2}, Lo/W2;->setValues([Ljava/lang/Float;)V

    .line 350
    const/4 v2, 0x2

    .line 351
    invoke-virtual {v1, v2, v10}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 354
    move-result v3

    .line 355
    iput v3, v0, Lo/W2;->V:F

    .line 357
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 360
    move-result-object v3

    .line 361
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 364
    move-result-object v3

    .line 365
    const/16 v4, 0x30

    .line 367
    int-to-float v4, v4

    .line 368
    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 371
    move-result-object v3

    .line 372
    invoke-static {v11, v4, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 375
    move-result v3

    .line 376
    float-to-double v3, v3

    .line 377
    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    .line 380
    move-result-wide v3

    .line 381
    double-to-float v3, v3

    .line 382
    const/16 v4, 0x9

    .line 384
    invoke-virtual {v1, v4, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 387
    move-result v3

    .line 388
    float-to-double v3, v3

    .line 389
    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    .line 392
    move-result-wide v3

    .line 393
    double-to-int v3, v3

    .line 394
    iput v3, v0, Lo/W2;->y:I

    .line 396
    const/16 v3, 0x18

    .line 398
    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 401
    move-result v4

    .line 402
    if-eqz v4, :cond_0

    .line 404
    move v5, v3

    .line 405
    goto :goto_0

    .line 406
    :cond_0
    const/16 v5, 0x1a

    .line 408
    :goto_0
    if-eqz v4, :cond_1

    .line 410
    goto :goto_1

    .line 411
    :cond_1
    const/16 v3, 0x19

    .line 413
    :goto_1
    invoke-static {v14, v1, v5}, Lo/Ha;->F(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    .line 416
    move-result-object v4

    .line 417
    if-eqz v4, :cond_2

    .line 419
    goto :goto_2

    .line 420
    :cond_2
    const v4, 0x7f0502b5

    .line 423
    invoke-static {v14, v4}, Lo/L1;->v(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 426
    move-result-object v4

    .line 427
    :goto_2
    invoke-virtual {v0, v4}, Lo/W2;->setTrackInactiveTintList(Landroid/content/res/ColorStateList;)V

    .line 430
    invoke-static {v14, v1, v3}, Lo/Ha;->F(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    .line 433
    move-result-object v3

    .line 434
    if-eqz v3, :cond_3

    .line 436
    goto :goto_3

    .line 437
    :cond_3
    const v3, 0x7f0502b2

    .line 440
    invoke-static {v14, v3}, Lo/L1;->v(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 443
    move-result-object v3

    .line 444
    :goto_3
    invoke-virtual {v0, v3}, Lo/W2;->setTrackActiveTintList(Landroid/content/res/ColorStateList;)V

    .line 447
    const/16 v3, 0xa

    .line 449
    invoke-static {v14, v1, v3}, Lo/Ha;->F(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    .line 452
    move-result-object v3

    .line 453
    invoke-virtual {v12, v3}, Lo/eb;->k(Landroid/content/res/ColorStateList;)V

    .line 456
    const/16 v3, 0xe

    .line 458
    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 461
    move-result v4

    .line 462
    if-eqz v4, :cond_4

    .line 464
    invoke-static {v14, v1, v3}, Lo/Ha;->F(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    .line 467
    move-result-object v3

    .line 468
    invoke-virtual {v0, v3}, Lo/W2;->setThumbStrokeColor(Landroid/content/res/ColorStateList;)V

    .line 471
    :cond_4
    const/16 v3, 0xf

    .line 473
    invoke-virtual {v1, v3, v10}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 476
    move-result v3

    .line 477
    invoke-virtual {v0, v3}, Lo/W2;->setThumbStrokeWidth(F)V

    .line 480
    const/4 v3, 0x5

    .line 481
    invoke-static {v14, v1, v3}, Lo/Ha;->F(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    .line 484
    move-result-object v3

    .line 485
    if-eqz v3, :cond_5

    .line 487
    goto :goto_4

    .line 488
    :cond_5
    const v3, 0x7f0502b3

    .line 491
    invoke-static {v14, v3}, Lo/L1;->v(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 494
    move-result-object v3

    .line 495
    :goto_4
    invoke-virtual {v0, v3}, Lo/W2;->setHaloTintList(Landroid/content/res/ColorStateList;)V

    .line 498
    const/16 v3, 0x17

    .line 500
    invoke-virtual {v1, v3, v11}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 503
    move-result v3

    .line 504
    iput-boolean v3, v0, Lo/W2;->a0:Z

    .line 506
    const/16 v3, 0x12

    .line 508
    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 511
    move-result v4

    .line 512
    if-eqz v4, :cond_6

    .line 514
    move v5, v3

    .line 515
    goto :goto_5

    .line 516
    :cond_6
    const/16 v5, 0x14

    .line 518
    :goto_5
    if-eqz v4, :cond_7

    .line 520
    goto :goto_6

    .line 521
    :cond_7
    const/16 v3, 0x13

    .line 523
    :goto_6
    invoke-static {v14, v1, v5}, Lo/Ha;->F(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    .line 526
    move-result-object v4

    .line 527
    if-eqz v4, :cond_8

    .line 529
    goto :goto_7

    .line 530
    :cond_8
    const v4, 0x7f0502b4

    .line 533
    invoke-static {v14, v4}, Lo/L1;->v(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 536
    move-result-object v4

    .line 537
    :goto_7
    invoke-virtual {v0, v4}, Lo/W2;->setTickInactiveTintList(Landroid/content/res/ColorStateList;)V

    .line 540
    invoke-static {v14, v1, v3}, Lo/Ha;->F(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    .line 543
    move-result-object v3

    .line 544
    if-eqz v3, :cond_9

    .line 546
    goto :goto_8

    .line 547
    :cond_9
    const v3, 0x7f0502b1

    .line 550
    invoke-static {v14, v3}, Lo/L1;->v(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 553
    move-result-object v3

    .line 554
    :goto_8
    invoke-virtual {v0, v3}, Lo/W2;->setTickActiveTintList(Landroid/content/res/ColorStateList;)V

    .line 557
    const/16 v3, 0x10

    .line 559
    invoke-virtual {v1, v3, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 562
    move-result v3

    .line 563
    invoke-virtual {v0, v3}, Lo/W2;->setThumbTrackGapSize(I)V

    .line 566
    const/16 v3, 0x1d

    .line 568
    invoke-virtual {v1, v3, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 571
    move-result v3

    .line 572
    invoke-virtual {v0, v3}, Lo/W2;->setTrackStopIndicatorSize(I)V

    .line 575
    const/16 v3, 0x1c

    .line 577
    invoke-virtual {v1, v3, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 580
    move-result v3

    .line 581
    invoke-virtual {v0, v3}, Lo/W2;->setTrackInsideCornerSize(I)V

    .line 584
    const/16 v3, 0xd

    .line 586
    invoke-virtual {v1, v3, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 589
    move-result v3

    .line 590
    mul-int/2addr v3, v2

    .line 591
    const/16 v4, 0x11

    .line 593
    invoke-virtual {v1, v4, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 596
    move-result v4

    .line 597
    const/16 v5, 0xc

    .line 599
    invoke-virtual {v1, v5, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 602
    move-result v3

    .line 603
    invoke-virtual {v0, v4}, Lo/W2;->setThumbWidth(I)V

    .line 606
    invoke-virtual {v0, v3}, Lo/W2;->setThumbHeight(I)V

    .line 609
    const/4 v3, 0x6

    .line 610
    invoke-virtual {v1, v3, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 613
    move-result v3

    .line 614
    invoke-virtual {v0, v3}, Lo/W2;->setHaloRadius(I)V

    .line 617
    const/16 v3, 0xb

    .line 619
    invoke-virtual {v1, v3, v10}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 622
    move-result v3

    .line 623
    invoke-virtual {v0, v3}, Lo/W2;->setThumbElevation(F)V

    .line 626
    const/16 v3, 0x1b

    .line 628
    invoke-virtual {v1, v3, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 631
    move-result v3

    .line 632
    invoke-virtual {v0, v3}, Lo/W2;->setTrackHeight(I)V

    .line 635
    iget v3, v0, Lo/W2;->K:I

    .line 637
    div-int/2addr v3, v2

    .line 638
    const/16 v4, 0x15

    .line 640
    invoke-virtual {v1, v4, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 643
    move-result v3

    .line 644
    invoke-virtual {v0, v3}, Lo/W2;->setTickActiveRadius(I)V

    .line 647
    iget v3, v0, Lo/W2;->K:I

    .line 649
    div-int/2addr v3, v2

    .line 650
    const/16 v2, 0x16

    .line 652
    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 655
    move-result v2

    .line 656
    invoke-virtual {v0, v2}, Lo/W2;->setTickInactiveRadius(I)V

    .line 659
    const/4 v2, 0x7

    .line 660
    invoke-virtual {v1, v2, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 663
    move-result v2

    .line 664
    invoke-virtual {v0, v2}, Lo/W2;->setLabelBehavior(I)V

    .line 667
    invoke-virtual {v1, v9, v11}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 670
    move-result v2

    .line 671
    if-nez v2, :cond_a

    .line 673
    invoke-virtual {v0, v9}, Lo/W2;->setEnabled(Z)V

    .line 676
    :cond_a
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 679
    invoke-virtual {v0, v11}, Landroid/view/View;->setFocusable(Z)V

    .line 682
    invoke-virtual {v0, v11}, Landroid/view/View;->setClickable(Z)V

    .line 685
    invoke-virtual {v12}, Lo/eb;->l()V

    .line 688
    invoke-static {v14}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 691
    move-result-object v1

    .line 692
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    .line 695
    move-result v1

    .line 696
    iput v1, v0, Lo/W2;->r:I

    .line 698
    new-instance v1, Lo/U2;

    .line 700
    invoke-direct {v1, v13}, Lo/U2;-><init>(Lcom/google/android/material/slider/Slider;)V

    .line 703
    iput-object v1, v0, Lo/W2;->h:Lo/U2;

    .line 705
    invoke-static {v0, v1}, Lo/Dh;->l(Landroid/view/View;Lo/r;)V

    .line 708
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 711
    move-result-object v1

    .line 712
    const-string v2, "accessibility"

    .line 714
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 717
    move-result-object v1

    .line 718
    check-cast v1, Landroid/view/accessibility/AccessibilityManager;

    .line 720
    iput-object v1, v0, Lo/W2;->i:Landroid/view/accessibility/AccessibilityManager;

    .line 722
    return-void
.end method


# virtual methods
.method public final A(F)Z
    .locals 2

    .line 1
    new-instance v0, Ljava/math/BigDecimal;

    .line 3
    invoke-static {p1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    .line 6
    move-result-object p1

    .line 7
    invoke-direct {v0, p1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 10
    new-instance p1, Ljava/math/BigDecimal;

    .line 12
    iget v1, p0, Lo/W2;->Q:F

    .line 14
    invoke-static {v1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    .line 17
    move-result-object v1

    .line 18
    invoke-direct {p1, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 21
    sget-object v1, Ljava/math/MathContext;->DECIMAL64:Ljava/math/MathContext;

    .line 23
    invoke-virtual {v0, p1, v1}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;

    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {p1}, Ljava/math/BigDecimal;->doubleValue()D

    .line 30
    move-result-wide v0

    .line 31
    invoke-virtual {p0, v0, v1}, Lo/W2;->i(D)Z

    .line 34
    move-result p1

    .line 35
    return p1
.end method

.method public final B(F)F
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lo/W2;->o(F)F

    .line 4
    move-result p1

    .line 5
    iget v0, p0, Lo/W2;->d0:I

    .line 7
    int-to-float v0, v0

    .line 8
    mul-float/2addr p1, v0

    .line 9
    iget v0, p0, Lo/W2;->D:I

    .line 11
    int-to-float v0, v0

    .line 12
    add-float/2addr p1, v0

    .line 13
    return p1
.end method

.method public final a(Landroid/graphics/drawable/Drawable;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x0

    .line 10
    const/4 v3, -0x1

    .line 11
    if-ne v0, v3, :cond_0

    .line 13
    if-ne v1, v3, :cond_0

    .line 15
    iget v0, p0, Lo/W2;->E:I

    .line 17
    iget v1, p0, Lo/W2;->F:I

    .line 19
    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    iget v3, p0, Lo/W2;->E:I

    .line 25
    iget v4, p0, Lo/W2;->F:I

    .line 27
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    .line 30
    move-result v3

    .line 31
    int-to-float v3, v3

    .line 32
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    .line 35
    move-result v4

    .line 36
    int-to-float v4, v4

    .line 37
    div-float/2addr v3, v4

    .line 38
    int-to-float v0, v0

    .line 39
    mul-float/2addr v0, v3

    .line 40
    float-to-int v0, v0

    .line 41
    int-to-float v1, v1

    .line 42
    mul-float/2addr v1, v3

    .line 43
    float-to-int v1, v1

    .line 44
    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 47
    :goto_0
    return-void
.end method

.method public final b()I
    .locals 4

    .line 1
    iget v0, p0, Lo/W2;->A:I

    .line 3
    div-int/lit8 v0, v0, 0x2

    .line 5
    iget v1, p0, Lo/W2;->B:I

    .line 7
    const/4 v2, 0x1

    .line 8
    const/4 v3, 0x0

    .line 9
    if-eq v1, v2, :cond_0

    .line 11
    const/4 v2, 0x3

    .line 12
    if-ne v1, v2, :cond_1

    .line 14
    :cond_0
    iget-object v1, p0, Lo/W2;->l:Ljava/util/ArrayList;

    .line 16
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Lo/mg;

    .line 22
    invoke-virtual {v1}, Lo/mg;->getIntrinsicHeight()I

    .line 25
    move-result v3

    .line 26
    :cond_1
    add-int/2addr v0, v3

    .line 27
    return v0
.end method

.method public final c(Z)Landroid/animation/ValueAnimator;
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    const/high16 v1, 0x3f800000    # 1.0f

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz p1, :cond_0

    .line 7
    move v3, v2

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move v3, v1

    .line 10
    :goto_0
    if-eqz p1, :cond_1

    .line 12
    iget-object v4, p0, Lo/W2;->q:Landroid/animation/ValueAnimator;

    .line 14
    goto :goto_1

    .line 15
    :cond_1
    iget-object v4, p0, Lo/W2;->p:Landroid/animation/ValueAnimator;

    .line 17
    :goto_1
    if-eqz v4, :cond_2

    .line 19
    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->isRunning()Z

    .line 22
    move-result v5

    .line 23
    if-eqz v5, :cond_2

    .line 25
    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 28
    move-result-object v3

    .line 29
    check-cast v3, Ljava/lang/Float;

    .line 31
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    .line 34
    move-result v3

    .line 35
    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->cancel()V

    .line 38
    :cond_2
    if-eqz p1, :cond_3

    .line 40
    goto :goto_2

    .line 41
    :cond_3
    move v1, v2

    .line 42
    :goto_2
    const/4 v2, 0x2

    .line 43
    new-array v2, v2, [F

    .line 45
    aput v3, v2, v0

    .line 47
    const/4 v3, 0x1

    .line 48
    aput v1, v2, v3

    .line 50
    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 53
    move-result-object v1

    .line 54
    if-eqz p1, :cond_4

    .line 56
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 59
    move-result-object p1

    .line 60
    const v2, 0x7f030333

    .line 63
    const/16 v3, 0x53

    .line 65
    invoke-static {p1, v2, v3}, Lo/Ha;->o0(Landroid/content/Context;II)I

    .line 68
    move-result p1

    .line 69
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 72
    move-result-object v2

    .line 73
    sget-object v3, Lo/Q0;->e:Landroid/view/animation/DecelerateInterpolator;

    .line 75
    const v4, 0x7f03033d

    .line 78
    invoke-static {v2, v4, v3}, Lo/Ha;->p0(Landroid/content/Context;ILandroid/view/animation/Interpolator;)Landroid/animation/TimeInterpolator;

    .line 81
    move-result-object v2

    .line 82
    goto :goto_3

    .line 83
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 86
    move-result-object p1

    .line 87
    const v2, 0x7f030336

    .line 90
    const/16 v3, 0x75

    .line 92
    invoke-static {p1, v2, v3}, Lo/Ha;->o0(Landroid/content/Context;II)I

    .line 95
    move-result p1

    .line 96
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 99
    move-result-object v2

    .line 100
    sget-object v3, Lo/Q0;->c:Lo/o7;

    .line 102
    const v4, 0x7f03033b

    .line 105
    invoke-static {v2, v4, v3}, Lo/Ha;->p0(Landroid/content/Context;ILandroid/view/animation/Interpolator;)Landroid/animation/TimeInterpolator;

    .line 108
    move-result-object v2

    .line 109
    :goto_3
    int-to-long v3, p1

    .line 110
    invoke-virtual {v1, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 113
    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 116
    new-instance p1, Lo/S2;

    .line 118
    invoke-direct {p1, v0, p0}, Lo/S2;-><init>(ILjava/lang/Object;)V

    .line 121
    invoke-virtual {v1, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 124
    return-object v1
.end method

.method public final d(Landroid/graphics/Canvas;IIFLandroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 4
    iget v0, p0, Lo/W2;->D:I

    .line 6
    invoke-virtual {p0, p4}, Lo/W2;->o(F)F

    .line 9
    move-result p4

    .line 10
    int-to-float p2, p2

    .line 11
    mul-float/2addr p4, p2

    .line 12
    float-to-int p2, p4

    .line 13
    add-int/2addr v0, p2

    .line 14
    int-to-float p2, v0

    .line 15
    invoke-virtual {p5}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 18
    move-result-object p4

    .line 19
    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    .line 22
    move-result p4

    .line 23
    int-to-float p4, p4

    .line 24
    const/high16 v0, 0x40000000    # 2.0f

    .line 26
    div-float/2addr p4, v0

    .line 27
    sub-float/2addr p2, p4

    .line 28
    int-to-float p3, p3

    .line 29
    invoke-virtual {p5}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 32
    move-result-object p4

    .line 33
    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    .line 36
    move-result p4

    .line 37
    int-to-float p4, p4

    .line 38
    div-float/2addr p4, v0

    .line 39
    sub-float/2addr p3, p4

    .line 40
    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 43
    invoke-virtual {p5, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 46
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 49
    return-void
.end method

.method public final dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lo/W2;->h:Lo/U2;

    .line 3
    invoke-virtual {v0, p1}, Lo/i7;->m(Landroid/view/MotionEvent;)Z

    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 9
    invoke-super {p0, p1}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    .line 12
    move-result p1

    .line 13
    if-eqz p1, :cond_0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p1, 0x0

    .line 17
    goto :goto_1

    .line 18
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 19
    :goto_1
    return p1
.end method

.method public final drawableStateChanged()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    .line 4
    iget-object v0, p0, Lo/W2;->a:Landroid/graphics/Paint;

    .line 6
    iget-object v1, p0, Lo/W2;->k0:Landroid/content/res/ColorStateList;

    .line 8
    invoke-virtual {p0, v1}, Lo/W2;->h(Landroid/content/res/ColorStateList;)I

    .line 11
    move-result v1

    .line 12
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 15
    iget-object v0, p0, Lo/W2;->b:Landroid/graphics/Paint;

    .line 17
    iget-object v1, p0, Lo/W2;->j0:Landroid/content/res/ColorStateList;

    .line 19
    invoke-virtual {p0, v1}, Lo/W2;->h(Landroid/content/res/ColorStateList;)I

    .line 22
    move-result v1

    .line 23
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 26
    iget-object v0, p0, Lo/W2;->e:Landroid/graphics/Paint;

    .line 28
    iget-object v1, p0, Lo/W2;->i0:Landroid/content/res/ColorStateList;

    .line 30
    invoke-virtual {p0, v1}, Lo/W2;->h(Landroid/content/res/ColorStateList;)I

    .line 33
    move-result v1

    .line 34
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 37
    iget-object v0, p0, Lo/W2;->f:Landroid/graphics/Paint;

    .line 39
    iget-object v1, p0, Lo/W2;->h0:Landroid/content/res/ColorStateList;

    .line 41
    invoke-virtual {p0, v1}, Lo/W2;->h(Landroid/content/res/ColorStateList;)I

    .line 44
    move-result v1

    .line 45
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 48
    iget-object v0, p0, Lo/W2;->g:Landroid/graphics/Paint;

    .line 50
    iget-object v1, p0, Lo/W2;->j0:Landroid/content/res/ColorStateList;

    .line 52
    invoke-virtual {p0, v1}, Lo/W2;->h(Landroid/content/res/ColorStateList;)I

    .line 55
    move-result v1

    .line 56
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 59
    iget-object v0, p0, Lo/W2;->l:Ljava/util/ArrayList;

    .line 61
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 64
    move-result-object v0

    .line 65
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 68
    move-result v1

    .line 69
    if-eqz v1, :cond_1

    .line 71
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 74
    move-result-object v1

    .line 75
    check-cast v1, Lo/mg;

    .line 77
    invoke-virtual {v1}, Lo/eb;->isStateful()Z

    .line 80
    move-result v2

    .line 81
    if-eqz v2, :cond_0

    .line 83
    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    .line 86
    move-result-object v2

    .line 87
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 90
    goto :goto_0

    .line 91
    :cond_1
    iget-object v0, p0, Lo/W2;->o0:Lo/eb;

    .line 93
    invoke-virtual {v0}, Lo/eb;->isStateful()Z

    .line 96
    move-result v1

    .line 97
    if-eqz v1, :cond_2

    .line 99
    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    .line 102
    move-result-object v1

    .line 103
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 106
    :cond_2
    iget-object v0, p0, Lo/W2;->d:Landroid/graphics/Paint;

    .line 108
    iget-object v1, p0, Lo/W2;->g0:Landroid/content/res/ColorStateList;

    .line 110
    invoke-virtual {p0, v1}, Lo/W2;->h(Landroid/content/res/ColorStateList;)I

    .line 113
    move-result v1

    .line 114
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 117
    const/16 v1, 0x3f

    .line 119
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 122
    return-void
.end method

.method public final e()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lo/W2;->o:Z

    .line 3
    if-nez v0, :cond_0

    .line 5
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lo/W2;->o:Z

    .line 8
    invoke-virtual {p0, v0}, Lo/W2;->c(Z)Landroid/animation/ValueAnimator;

    .line 11
    move-result-object v0

    .line 12
    iput-object v0, p0, Lo/W2;->p:Landroid/animation/ValueAnimator;

    .line 14
    const/4 v1, 0x0

    .line 15
    iput-object v1, p0, Lo/W2;->q:Landroid/animation/ValueAnimator;

    .line 17
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 20
    :cond_0
    iget-object v0, p0, Lo/W2;->l:Ljava/util/ArrayList;

    .line 22
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 25
    move-result-object v1

    .line 26
    const/4 v2, 0x0

    .line 27
    :goto_0
    iget-object v3, p0, Lo/W2;->S:Ljava/util/ArrayList;

    .line 29
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 32
    move-result v3

    .line 33
    if-ge v2, v3, :cond_2

    .line 35
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 38
    move-result v3

    .line 39
    if-eqz v3, :cond_2

    .line 41
    iget v3, p0, Lo/W2;->U:I

    .line 43
    if-ne v2, v3, :cond_1

    .line 45
    goto :goto_1

    .line 46
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 49
    move-result-object v3

    .line 50
    check-cast v3, Lo/mg;

    .line 52
    iget-object v4, p0, Lo/W2;->S:Ljava/util/ArrayList;

    .line 54
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 57
    move-result-object v4

    .line 58
    check-cast v4, Ljava/lang/Float;

    .line 60
    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    .line 63
    move-result v4

    .line 64
    invoke-virtual {p0, v3, v4}, Lo/W2;->q(Lo/mg;F)V

    .line 67
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 69
    goto :goto_0

    .line 70
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 73
    move-result v2

    .line 74
    if-eqz v2, :cond_3

    .line 76
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 79
    move-result-object v0

    .line 80
    check-cast v0, Lo/mg;

    .line 82
    iget-object v1, p0, Lo/W2;->S:Ljava/util/ArrayList;

    .line 84
    iget v2, p0, Lo/W2;->U:I

    .line 86
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 89
    move-result-object v1

    .line 90
    check-cast v1, Ljava/lang/Float;

    .line 92
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    .line 95
    move-result v1

    .line 96
    invoke-virtual {p0, v0, v1}, Lo/W2;->q(Lo/mg;F)V

    .line 99
    return-void

    .line 100
    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 102
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 105
    move-result v0

    .line 106
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 109
    move-result-object v0

    .line 110
    iget-object v2, p0, Lo/W2;->S:Ljava/util/ArrayList;

    .line 112
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 115
    move-result v2

    .line 116
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 119
    move-result-object v2

    .line 120
    filled-new-array {v0, v2}, [Ljava/lang/Object;

    .line 123
    move-result-object v0

    .line 124
    const-string v2, "Not enough labels(%d) to display all the values(%d)"

    .line 126
    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 129
    move-result-object v0

    .line 130
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 133
    throw v1
.end method

.method public final f()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lo/W2;->o:Z

    .line 3
    if-eqz v0, :cond_0

    .line 5
    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lo/W2;->o:Z

    .line 8
    invoke-virtual {p0, v0}, Lo/W2;->c(Z)Landroid/animation/ValueAnimator;

    .line 11
    move-result-object v0

    .line 12
    iput-object v0, p0, Lo/W2;->q:Landroid/animation/ValueAnimator;

    .line 14
    const/4 v1, 0x0

    .line 15
    iput-object v1, p0, Lo/W2;->p:Landroid/animation/ValueAnimator;

    .line 17
    new-instance v1, Lo/Q;

    .line 19
    const/4 v2, 0x2

    .line 20
    invoke-direct {v1, v2, p0}, Lo/Q;-><init>(ILjava/lang/Object;)V

    .line 23
    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 26
    iget-object v0, p0, Lo/W2;->q:Landroid/animation/ValueAnimator;

    .line 28
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 31
    :cond_0
    return-void
.end method

.method public final g()[F
    .locals 6

    .line 1
    iget-object v0, p0, Lo/W2;->S:Ljava/util/ArrayList;

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Ljava/lang/Float;

    .line 10
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    .line 13
    move-result v0

    .line 14
    iget-object v2, p0, Lo/W2;->S:Ljava/util/ArrayList;

    .line 16
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 19
    move-result v3

    .line 20
    const/4 v4, 0x1

    .line 21
    sub-int/2addr v3, v4

    .line 22
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 25
    move-result-object v2

    .line 26
    check-cast v2, Ljava/lang/Float;

    .line 28
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 31
    move-result v2

    .line 32
    iget-object v3, p0, Lo/W2;->S:Ljava/util/ArrayList;

    .line 34
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 37
    move-result v3

    .line 38
    if-ne v3, v4, :cond_0

    .line 40
    iget v0, p0, Lo/W2;->Q:F

    .line 42
    :cond_0
    invoke-virtual {p0, v0}, Lo/W2;->o(F)F

    .line 45
    move-result v0

    .line 46
    invoke-virtual {p0, v2}, Lo/W2;->o(F)F

    .line 49
    move-result v2

    .line 50
    invoke-virtual {p0}, Lo/W2;->k()Z

    .line 53
    move-result v3

    .line 54
    const/4 v5, 0x2

    .line 55
    if-eqz v3, :cond_1

    .line 57
    new-array v3, v5, [F

    .line 59
    aput v2, v3, v1

    .line 61
    aput v0, v3, v4

    .line 63
    goto :goto_0

    .line 64
    :cond_1
    new-array v3, v5, [F

    .line 66
    aput v0, v3, v1

    .line 68
    aput v2, v3, v4

    .line 70
    :goto_0
    return-object v3
.end method

.method public final getAccessibilityFocusedVirtualViewId()I
    .locals 1

    .line 1
    iget-object v0, p0, Lo/W2;->h:Lo/U2;

    .line 3
    iget v0, v0, Lo/i7;->k:I

    .line 5
    return v0
.end method

.method public getMinSeparation()F
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public abstract getThumbRadius()I
.end method

.method public getValues()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    iget-object v1, p0, Lo/W2;->S:Ljava/util/ArrayList;

    .line 5
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 8
    return-object v0
.end method

.method public final h(Landroid/content/res/ColorStateList;)I
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    .line 8
    move-result v1

    .line 9
    invoke-virtual {p1, v0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    .line 12
    move-result p1

    .line 13
    return p1
.end method

.method public final i(D)Z
    .locals 2

    .line 1
    new-instance v0, Ljava/math/BigDecimal;

    .line 3
    invoke-static {p1, p2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    .line 6
    move-result-object p1

    .line 7
    invoke-direct {v0, p1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 10
    new-instance p1, Ljava/math/BigDecimal;

    .line 12
    iget p2, p0, Lo/W2;->V:F

    .line 14
    invoke-static {p2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    .line 17
    move-result-object p2

    .line 18
    invoke-direct {p1, p2}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 21
    sget-object p2, Ljava/math/MathContext;->DECIMAL64:Ljava/math/MathContext;

    .line 23
    invoke-virtual {v0, p1, p2}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;

    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {p1}, Ljava/math/BigDecimal;->doubleValue()D

    .line 30
    move-result-wide p1

    .line 31
    invoke-static {p1, p2}, Ljava/lang/Math;->round(D)J

    .line 34
    move-result-wide v0

    .line 35
    long-to-double v0, v0

    .line 36
    sub-double/2addr v0, p1

    .line 37
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    .line 40
    move-result-wide p1

    .line 41
    const-wide v0, 0x3f1a36e2eb1c432dL    # 1.0E-4

    .line 46
    cmpg-double p1, p1, v0

    .line 48
    if-gez p1, :cond_0

    .line 50
    const/4 p1, 0x1

    .line 51
    goto :goto_0

    .line 52
    :cond_0
    const/4 p1, 0x0

    .line 53
    :goto_0
    return p1
.end method

.method public final j(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getToolType(I)I

    .line 5
    move-result p1

    .line 6
    const/4 v1, 0x3

    .line 7
    if-ne p1, v1, :cond_0

    .line 9
    goto :goto_1

    .line 10
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 13
    move-result-object p1

    .line 14
    :goto_0
    instance-of v1, p1, Landroid/view/ViewGroup;

    .line 16
    if-eqz v1, :cond_3

    .line 18
    move-object v1, p1

    .line 19
    check-cast v1, Landroid/view/ViewGroup;

    .line 21
    const/4 v2, 0x1

    .line 22
    invoke-virtual {v1, v2}, Landroid/view/View;->canScrollVertically(I)Z

    .line 25
    move-result v3

    .line 26
    if-nez v3, :cond_1

    .line 28
    const/4 v3, -0x1

    .line 29
    invoke-virtual {v1, v3}, Landroid/view/View;->canScrollVertically(I)Z

    .line 32
    move-result v3

    .line 33
    if-eqz v3, :cond_2

    .line 35
    :cond_1
    invoke-virtual {v1}, Landroid/view/ViewGroup;->shouldDelayChildPressedState()Z

    .line 38
    move-result v1

    .line 39
    if-eqz v1, :cond_2

    .line 41
    move v0, v2

    .line 42
    goto :goto_1

    .line 43
    :cond_2
    invoke-interface {p1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    .line 46
    move-result-object p1

    .line 47
    goto :goto_0

    .line 48
    :cond_3
    :goto_1
    return v0
.end method

.method public final k()Z
    .locals 2

    .line 1
    sget-object v0, Lo/Dh;->a:Ljava/util/WeakHashMap;

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-ne v0, v1, :cond_0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v1, 0x0

    .line 12
    :goto_0
    return v1
.end method

.method public final l()V
    .locals 7

    .line 1
    iget v0, p0, Lo/W2;->V:F

    .line 3
    const/4 v1, 0x0

    .line 4
    cmpg-float v0, v0, v1

    .line 6
    if-gtz v0, :cond_0

    .line 8
    return-void

    .line 9
    :cond_0
    invoke-virtual {p0}, Lo/W2;->z()V

    .line 12
    iget v0, p0, Lo/W2;->R:F

    .line 14
    iget v1, p0, Lo/W2;->Q:F

    .line 16
    sub-float/2addr v0, v1

    .line 17
    iget v1, p0, Lo/W2;->V:F

    .line 19
    div-float/2addr v0, v1

    .line 20
    const/high16 v1, 0x3f800000    # 1.0f

    .line 22
    add-float/2addr v0, v1

    .line 23
    float-to-int v0, v0

    .line 24
    iget v1, p0, Lo/W2;->d0:I

    .line 26
    iget v2, p0, Lo/W2;->x:I

    .line 28
    div-int/2addr v1, v2

    .line 29
    add-int/lit8 v1, v1, 0x1

    .line 31
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 34
    move-result v0

    .line 35
    iget-object v1, p0, Lo/W2;->W:[F

    .line 37
    if-eqz v1, :cond_1

    .line 39
    array-length v1, v1

    .line 40
    mul-int/lit8 v2, v0, 0x2

    .line 42
    if-eq v1, v2, :cond_2

    .line 44
    :cond_1
    mul-int/lit8 v1, v0, 0x2

    .line 46
    new-array v1, v1, [F

    .line 48
    iput-object v1, p0, Lo/W2;->W:[F

    .line 50
    :cond_2
    iget v1, p0, Lo/W2;->d0:I

    .line 52
    int-to-float v1, v1

    .line 53
    add-int/lit8 v2, v0, -0x1

    .line 55
    int-to-float v2, v2

    .line 56
    div-float/2addr v1, v2

    .line 57
    const/4 v2, 0x0

    .line 58
    :goto_0
    mul-int/lit8 v3, v0, 0x2

    .line 60
    if-ge v2, v3, :cond_3

    .line 62
    iget-object v3, p0, Lo/W2;->W:[F

    .line 64
    iget v4, p0, Lo/W2;->D:I

    .line 66
    int-to-float v4, v4

    .line 67
    int-to-float v5, v2

    .line 68
    const/high16 v6, 0x40000000    # 2.0f

    .line 70
    div-float/2addr v5, v6

    .line 71
    mul-float/2addr v5, v1

    .line 72
    add-float/2addr v5, v4

    .line 73
    aput v5, v3, v2

    .line 75
    add-int/lit8 v4, v2, 0x1

    .line 77
    invoke-virtual {p0}, Lo/W2;->b()I

    .line 80
    move-result v5

    .line 81
    int-to-float v5, v5

    .line 82
    aput v5, v3, v4

    .line 84
    add-int/lit8 v2, v2, 0x2

    .line 86
    goto :goto_0

    .line 87
    :cond_3
    return-void
.end method

.method public final m(I)Z
    .locals 8

    .line 1
    iget v0, p0, Lo/W2;->U:I

    .line 3
    int-to-long v1, v0

    .line 4
    int-to-long v3, p1

    .line 5
    add-long/2addr v1, v3

    .line 6
    iget-object p1, p0, Lo/W2;->S:Ljava/util/ArrayList;

    .line 8
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 11
    move-result p1

    .line 12
    const/4 v3, 0x1

    .line 13
    sub-int/2addr p1, v3

    .line 14
    int-to-long v4, p1

    .line 15
    const-wide/16 v6, 0x0

    .line 17
    cmp-long p1, v1, v6

    .line 19
    if-gez p1, :cond_0

    .line 21
    move-wide v1, v6

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    cmp-long p1, v1, v4

    .line 25
    if-lez p1, :cond_1

    .line 27
    move-wide v1, v4

    .line 28
    :cond_1
    :goto_0
    long-to-int p1, v1

    .line 29
    iput p1, p0, Lo/W2;->U:I

    .line 31
    if-ne p1, v0, :cond_2

    .line 33
    const/4 p1, 0x0

    .line 34
    return p1

    .line 35
    :cond_2
    iget v0, p0, Lo/W2;->T:I

    .line 37
    const/4 v1, -0x1

    .line 38
    if-eq v0, v1, :cond_3

    .line 40
    iput p1, p0, Lo/W2;->T:I

    .line 42
    :cond_3
    invoke-virtual {p0}, Lo/W2;->v()V

    .line 45
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    .line 48
    return v3
.end method

.method public final n(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lo/W2;->k()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 7
    const/high16 v0, -0x80000000

    .line 9
    if-ne p1, v0, :cond_0

    .line 11
    const p1, 0x7fffffff

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    neg-int p1, p1

    .line 16
    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lo/W2;->m(I)Z

    .line 19
    return-void
.end method

.method public final o(F)F
    .locals 2

    .line 1
    iget v0, p0, Lo/W2;->Q:F

    .line 3
    sub-float/2addr p1, v0

    .line 4
    iget v1, p0, Lo/W2;->R:F

    .line 6
    sub-float/2addr v1, v0

    .line 7
    div-float/2addr p1, v1

    .line 8
    invoke-virtual {p0}, Lo/W2;->k()Z

    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 14
    const/high16 v0, 0x3f800000    # 1.0f

    .line 16
    sub-float/2addr v0, p1

    .line 17
    return v0

    .line 18
    :cond_0
    return p1
.end method

.method public final onAttachedToWindow()V
    .locals 5

    .line 1
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 7
    move-result-object v0

    .line 8
    iget-object v1, p0, Lo/W2;->t0:Lo/R2;

    .line 10
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 13
    iget-object v0, p0, Lo/W2;->l:Ljava/util/ArrayList;

    .line 15
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 18
    move-result-object v0

    .line 19
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_1

    .line 25
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    move-result-object v1

    .line 29
    check-cast v1, Lo/mg;

    .line 31
    invoke-static {p0}, Lo/Ng;->f(Landroid/view/View;)Landroid/view/ViewGroup;

    .line 34
    move-result-object v2

    .line 35
    if-nez v2, :cond_0

    .line 37
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    const/4 v3, 0x2

    .line 45
    new-array v3, v3, [I

    .line 47
    invoke-virtual {v2, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 50
    const/4 v4, 0x0

    .line 51
    aget v3, v3, v4

    .line 53
    iput v3, v1, Lo/mg;->J:I

    .line 55
    iget-object v3, v1, Lo/mg;->C:Landroid/graphics/Rect;

    .line 57
    invoke-virtual {v2, v3}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 60
    iget-object v1, v1, Lo/mg;->B:Lo/f3;

    .line 62
    invoke-virtual {v2, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 65
    goto :goto_0

    .line 66
    :cond_1
    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 3

    .line 1
    iget-object v0, p0, Lo/W2;->j:Lo/T2;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lo/W2;->o:Z

    .line 11
    iget-object v0, p0, Lo/W2;->l:Ljava/util/ArrayList;

    .line 13
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 16
    move-result-object v0

    .line 17
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_3

    .line 23
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Lo/mg;

    .line 29
    invoke-static {p0}, Lo/Ng;->g(Landroid/view/View;)Lo/Oh;

    .line 32
    move-result-object v2

    .line 33
    if-eqz v2, :cond_1

    .line 35
    iget-object v2, v2, Lo/Oh;->a:Ljava/lang/Object;

    .line 37
    check-cast v2, Landroid/view/ViewOverlay;

    .line 39
    invoke-virtual {v2, v1}, Landroid/view/ViewOverlay;->remove(Landroid/graphics/drawable/Drawable;)V

    .line 42
    invoke-static {p0}, Lo/Ng;->f(Landroid/view/View;)Landroid/view/ViewGroup;

    .line 45
    move-result-object v2

    .line 46
    if-nez v2, :cond_2

    .line 48
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    goto :goto_0

    .line 52
    :cond_2
    iget-object v1, v1, Lo/mg;->B:Lo/f3;

    .line 54
    invoke-virtual {v2, v1}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 57
    goto :goto_0

    .line 58
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 61
    move-result-object v0

    .line 62
    iget-object v1, p0, Lo/W2;->t0:Lo/R2;

    .line 64
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 67
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 70
    return-void
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 18

    .line 1
    move-object/from16 v6, p0

    .line 3
    move-object/from16 v7, p1

    .line 5
    iget-boolean v0, v6, Lo/W2;->f0:Z

    .line 7
    if-eqz v0, :cond_0

    .line 9
    invoke-virtual/range {p0 .. p0}, Lo/W2;->z()V

    .line 12
    invoke-virtual/range {p0 .. p0}, Lo/W2;->l()V

    .line 15
    :cond_0
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 18
    invoke-virtual/range {p0 .. p0}, Lo/W2;->b()I

    .line 21
    move-result v8

    .line 22
    iget-object v0, v6, Lo/W2;->S:Ljava/util/ArrayList;

    .line 24
    const/4 v9, 0x0

    .line 25
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Ljava/lang/Float;

    .line 31
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    .line 34
    move-result v0

    .line 35
    iget-object v1, v6, Lo/W2;->S:Ljava/util/ArrayList;

    .line 37
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 40
    move-result v2

    .line 41
    const/4 v10, 0x1

    .line 42
    sub-int/2addr v2, v10

    .line 43
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 46
    move-result-object v1

    .line 47
    check-cast v1, Ljava/lang/Float;

    .line 49
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    .line 52
    move-result v11

    .line 53
    iget v1, v6, Lo/W2;->R:F

    .line 55
    cmpg-float v1, v11, v1

    .line 57
    iget-object v12, v6, Lo/W2;->m0:Landroid/graphics/RectF;

    .line 59
    const/4 v13, 0x3

    .line 60
    const/high16 v15, 0x40000000    # 2.0f

    .line 62
    if-ltz v1, :cond_1

    .line 64
    iget-object v1, v6, Lo/W2;->S:Ljava/util/ArrayList;

    .line 66
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 69
    move-result v1

    .line 70
    if-le v1, v10, :cond_5

    .line 72
    iget v1, v6, Lo/W2;->Q:F

    .line 74
    cmpl-float v0, v0, v1

    .line 76
    if-lez v0, :cond_5

    .line 78
    :cond_1
    iget v0, v6, Lo/W2;->d0:I

    .line 80
    invoke-virtual/range {p0 .. p0}, Lo/W2;->g()[F

    .line 83
    move-result-object v16

    .line 84
    iget v1, v6, Lo/W2;->D:I

    .line 86
    int-to-float v2, v1

    .line 87
    aget v3, v16, v10

    .line 89
    int-to-float v5, v0

    .line 90
    mul-float/2addr v3, v5

    .line 91
    add-float/2addr v2, v3

    .line 92
    add-int v3, v1, v0

    .line 94
    int-to-float v3, v3

    .line 95
    cmpg-float v3, v2, v3

    .line 97
    iget-object v4, v6, Lo/W2;->a:Landroid/graphics/Paint;

    .line 99
    if-gez v3, :cond_2

    .line 101
    iget v3, v6, Lo/W2;->H:I

    .line 103
    if-lez v3, :cond_3

    .line 105
    int-to-float v3, v3

    .line 106
    add-float/2addr v2, v3

    .line 107
    int-to-float v3, v8

    .line 108
    iget v10, v6, Lo/W2;->C:I

    .line 110
    int-to-float v10, v10

    .line 111
    div-float/2addr v10, v15

    .line 112
    sub-float v14, v3, v10

    .line 114
    add-int/2addr v1, v0

    .line 115
    int-to-float v0, v1

    .line 116
    add-float/2addr v0, v10

    .line 117
    add-float/2addr v10, v3

    .line 118
    invoke-virtual {v12, v2, v14, v0, v10}, Landroid/graphics/RectF;->set(FFFF)V

    .line 121
    invoke-virtual {v6, v7, v4, v12, v13}, Lo/W2;->x(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/RectF;I)V

    .line 124
    :cond_2
    move-object v14, v4

    .line 125
    move v10, v5

    .line 126
    goto :goto_0

    .line 127
    :cond_3
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 129
    invoke-virtual {v4, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 132
    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    .line 134
    invoke-virtual {v4, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 137
    int-to-float v10, v8

    .line 138
    iget v1, v6, Lo/W2;->D:I

    .line 140
    add-int/2addr v1, v0

    .line 141
    int-to-float v3, v1

    .line 142
    move-object/from16 v0, p1

    .line 144
    move v1, v2

    .line 145
    move v2, v10

    .line 146
    move-object v14, v4

    .line 147
    move v4, v10

    .line 148
    move v10, v5

    .line 149
    move-object v5, v14

    .line 150
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 153
    :goto_0
    iget v0, v6, Lo/W2;->D:I

    .line 155
    int-to-float v1, v0

    .line 156
    aget v2, v16, v9

    .line 158
    mul-float/2addr v2, v10

    .line 159
    add-float v3, v2, v1

    .line 161
    cmpl-float v1, v3, v1

    .line 163
    if-lez v1, :cond_5

    .line 165
    iget v1, v6, Lo/W2;->H:I

    .line 167
    if-lez v1, :cond_4

    .line 169
    int-to-float v0, v0

    .line 170
    iget v2, v6, Lo/W2;->C:I

    .line 172
    int-to-float v2, v2

    .line 173
    div-float/2addr v2, v15

    .line 174
    sub-float/2addr v0, v2

    .line 175
    int-to-float v4, v8

    .line 176
    sub-float v5, v4, v2

    .line 178
    int-to-float v1, v1

    .line 179
    sub-float/2addr v3, v1

    .line 180
    add-float/2addr v2, v4

    .line 181
    invoke-virtual {v12, v0, v5, v3, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 184
    const/4 v0, 0x2

    .line 185
    invoke-virtual {v6, v7, v14, v12, v0}, Lo/W2;->x(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/RectF;I)V

    .line 188
    goto :goto_1

    .line 189
    :cond_4
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 191
    invoke-virtual {v14, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 194
    sget-object v0, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    .line 196
    invoke-virtual {v14, v0}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 199
    iget v0, v6, Lo/W2;->D:I

    .line 201
    int-to-float v1, v0

    .line 202
    int-to-float v4, v8

    .line 203
    move-object/from16 v0, p1

    .line 205
    move v2, v4

    .line 206
    move-object v5, v14

    .line 207
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 210
    :cond_5
    :goto_1
    iget v0, v6, Lo/W2;->Q:F

    .line 212
    cmpl-float v0, v11, v0

    .line 214
    if-lez v0, :cond_10

    .line 216
    iget v0, v6, Lo/W2;->d0:I

    .line 218
    invoke-virtual/range {p0 .. p0}, Lo/W2;->g()[F

    .line 221
    move-result-object v1

    .line 222
    iget v2, v6, Lo/W2;->D:I

    .line 224
    int-to-float v2, v2

    .line 225
    const/4 v3, 0x1

    .line 226
    aget v4, v1, v3

    .line 228
    int-to-float v0, v0

    .line 229
    mul-float/2addr v4, v0

    .line 230
    add-float v3, v4, v2

    .line 232
    aget v1, v1, v9

    .line 234
    mul-float/2addr v1, v0

    .line 235
    add-float/2addr v1, v2

    .line 236
    iget v0, v6, Lo/W2;->H:I

    .line 238
    if-lez v0, :cond_6

    .line 240
    const/4 v0, 0x1

    .line 241
    goto :goto_2

    .line 242
    :cond_6
    move v0, v9

    .line 243
    :goto_2
    iget-object v5, v6, Lo/W2;->b:Landroid/graphics/Paint;

    .line 245
    if-eqz v0, :cond_f

    .line 247
    iget-object v0, v6, Lo/W2;->S:Ljava/util/ArrayList;

    .line 249
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 252
    move-result v0

    .line 253
    const/4 v2, 0x1

    .line 254
    if-ne v0, v2, :cond_8

    .line 256
    invoke-virtual/range {p0 .. p0}, Lo/W2;->k()Z

    .line 259
    move-result v0

    .line 260
    if-eqz v0, :cond_7

    .line 262
    move v0, v13

    .line 263
    goto :goto_3

    .line 264
    :cond_7
    const/4 v0, 0x2

    .line 265
    goto :goto_3

    .line 266
    :cond_8
    const/4 v0, 0x4

    .line 267
    :goto_3
    move v2, v9

    .line 268
    :goto_4
    iget-object v4, v6, Lo/W2;->S:Ljava/util/ArrayList;

    .line 270
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 273
    move-result v4

    .line 274
    if-ge v2, v4, :cond_10

    .line 276
    iget-object v4, v6, Lo/W2;->S:Ljava/util/ArrayList;

    .line 278
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 281
    move-result v4

    .line 282
    const/4 v10, 0x1

    .line 283
    if-le v4, v10, :cond_a

    .line 285
    if-lez v2, :cond_9

    .line 287
    iget-object v1, v6, Lo/W2;->S:Ljava/util/ArrayList;

    .line 289
    add-int/lit8 v3, v2, -0x1

    .line 291
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 294
    move-result-object v1

    .line 295
    check-cast v1, Ljava/lang/Float;

    .line 297
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    .line 300
    move-result v1

    .line 301
    invoke-virtual {v6, v1}, Lo/W2;->B(F)F

    .line 304
    move-result v1

    .line 305
    :cond_9
    iget-object v3, v6, Lo/W2;->S:Ljava/util/ArrayList;

    .line 307
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 310
    move-result-object v3

    .line 311
    check-cast v3, Ljava/lang/Float;

    .line 313
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    .line 316
    move-result v3

    .line 317
    invoke-virtual {v6, v3}, Lo/W2;->B(F)F

    .line 320
    move-result v3

    .line 321
    invoke-virtual/range {p0 .. p0}, Lo/W2;->k()Z

    .line 324
    move-result v4

    .line 325
    if-eqz v4, :cond_a

    .line 327
    move/from16 v17, v3

    .line 329
    move v3, v1

    .line 330
    move/from16 v1, v17

    .line 332
    :cond_a
    invoke-static {v0}, Lo/Ve;->C(I)I

    .line 335
    move-result v4

    .line 336
    const/4 v10, 0x1

    .line 337
    if-eq v4, v10, :cond_d

    .line 339
    const/4 v10, 0x2

    .line 340
    if-eq v4, v10, :cond_c

    .line 342
    if-eq v4, v13, :cond_b

    .line 344
    goto :goto_6

    .line 345
    :cond_b
    iget v4, v6, Lo/W2;->H:I

    .line 347
    int-to-float v4, v4

    .line 348
    add-float/2addr v1, v4

    .line 349
    :goto_5
    sub-float/2addr v3, v4

    .line 350
    goto :goto_6

    .line 351
    :cond_c
    iget v4, v6, Lo/W2;->H:I

    .line 353
    int-to-float v4, v4

    .line 354
    add-float/2addr v1, v4

    .line 355
    iget v4, v6, Lo/W2;->C:I

    .line 357
    int-to-float v4, v4

    .line 358
    div-float/2addr v4, v15

    .line 359
    add-float/2addr v4, v3

    .line 360
    move v3, v4

    .line 361
    goto :goto_6

    .line 362
    :cond_d
    iget v4, v6, Lo/W2;->C:I

    .line 364
    int-to-float v4, v4

    .line 365
    div-float/2addr v4, v15

    .line 366
    sub-float/2addr v1, v4

    .line 367
    iget v4, v6, Lo/W2;->H:I

    .line 369
    int-to-float v4, v4

    .line 370
    goto :goto_5

    .line 371
    :goto_6
    cmpl-float v4, v1, v3

    .line 373
    if-ltz v4, :cond_e

    .line 375
    goto :goto_7

    .line 376
    :cond_e
    int-to-float v4, v8

    .line 377
    iget v10, v6, Lo/W2;->C:I

    .line 379
    int-to-float v10, v10

    .line 380
    div-float/2addr v10, v15

    .line 381
    sub-float v11, v4, v10

    .line 383
    add-float/2addr v10, v4

    .line 384
    invoke-virtual {v12, v1, v11, v3, v10}, Landroid/graphics/RectF;->set(FFFF)V

    .line 387
    invoke-virtual {v6, v7, v5, v12, v0}, Lo/W2;->x(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/RectF;I)V

    .line 390
    :goto_7
    add-int/lit8 v2, v2, 0x1

    .line 392
    goto :goto_4

    .line 393
    :cond_f
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 395
    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 398
    sget-object v0, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    .line 400
    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 403
    int-to-float v4, v8

    .line 404
    move-object/from16 v0, p1

    .line 406
    move v2, v4

    .line 407
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 410
    :cond_10
    iget-boolean v0, v6, Lo/W2;->a0:Z

    .line 412
    if-eqz v0, :cond_14

    .line 414
    iget v0, v6, Lo/W2;->V:F

    .line 416
    const/4 v1, 0x0

    .line 417
    cmpg-float v0, v0, v1

    .line 419
    if-gtz v0, :cond_11

    .line 421
    goto :goto_9

    .line 422
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lo/W2;->g()[F

    .line 425
    move-result-object v0

    .line 426
    aget v1, v0, v9

    .line 428
    iget-object v2, v6, Lo/W2;->W:[F

    .line 430
    array-length v2, v2

    .line 431
    int-to-float v2, v2

    .line 432
    div-float/2addr v2, v15

    .line 433
    const/high16 v3, 0x3f800000    # 1.0f

    .line 435
    sub-float/2addr v2, v3

    .line 436
    mul-float/2addr v2, v1

    .line 437
    float-to-double v1, v2

    .line 438
    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    .line 441
    move-result-wide v1

    .line 442
    double-to-int v1, v1

    .line 443
    const/4 v2, 0x1

    .line 444
    aget v0, v0, v2

    .line 446
    iget-object v2, v6, Lo/W2;->W:[F

    .line 448
    array-length v2, v2

    .line 449
    int-to-float v2, v2

    .line 450
    div-float/2addr v2, v15

    .line 451
    sub-float/2addr v2, v3

    .line 452
    mul-float/2addr v2, v0

    .line 453
    float-to-double v2, v2

    .line 454
    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    .line 457
    move-result-wide v2

    .line 458
    double-to-int v0, v2

    .line 459
    iget-object v2, v6, Lo/W2;->e:Landroid/graphics/Paint;

    .line 461
    if-lez v1, :cond_12

    .line 463
    iget-object v3, v6, Lo/W2;->W:[F

    .line 465
    mul-int/lit8 v4, v1, 0x2

    .line 467
    invoke-virtual {v7, v3, v9, v4, v2}, Landroid/graphics/Canvas;->drawPoints([FIILandroid/graphics/Paint;)V

    .line 470
    :cond_12
    if-gt v1, v0, :cond_13

    .line 472
    iget-object v3, v6, Lo/W2;->W:[F

    .line 474
    mul-int/lit8 v4, v1, 0x2

    .line 476
    sub-int v1, v0, v1

    .line 478
    const/4 v5, 0x1

    .line 479
    add-int/2addr v1, v5

    .line 480
    const/4 v10, 0x2

    .line 481
    mul-int/2addr v1, v10

    .line 482
    iget-object v11, v6, Lo/W2;->f:Landroid/graphics/Paint;

    .line 484
    invoke-virtual {v7, v3, v4, v1, v11}, Landroid/graphics/Canvas;->drawPoints([FIILandroid/graphics/Paint;)V

    .line 487
    goto :goto_8

    .line 488
    :cond_13
    const/4 v5, 0x1

    .line 489
    const/4 v10, 0x2

    .line 490
    :goto_8
    add-int/2addr v0, v5

    .line 491
    mul-int/2addr v0, v10

    .line 492
    iget-object v1, v6, Lo/W2;->W:[F

    .line 494
    array-length v3, v1

    .line 495
    if-ge v0, v3, :cond_14

    .line 497
    array-length v3, v1

    .line 498
    sub-int/2addr v3, v0

    .line 499
    invoke-virtual {v7, v1, v0, v3, v2}, Landroid/graphics/Canvas;->drawPoints([FIILandroid/graphics/Paint;)V

    .line 502
    :cond_14
    :goto_9
    iget v0, v6, Lo/W2;->K:I

    .line 504
    if-gtz v0, :cond_15

    .line 506
    goto :goto_a

    .line 507
    :cond_15
    iget-object v0, v6, Lo/W2;->S:Ljava/util/ArrayList;

    .line 509
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 512
    move-result v0

    .line 513
    iget-object v1, v6, Lo/W2;->g:Landroid/graphics/Paint;

    .line 515
    const/4 v2, 0x1

    .line 516
    if-lt v0, v2, :cond_16

    .line 518
    iget-object v0, v6, Lo/W2;->S:Ljava/util/ArrayList;

    .line 520
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 523
    move-result v3

    .line 524
    sub-int/2addr v3, v2

    .line 525
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 528
    move-result-object v0

    .line 529
    check-cast v0, Ljava/lang/Float;

    .line 531
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    .line 534
    move-result v0

    .line 535
    iget v2, v6, Lo/W2;->R:F

    .line 537
    cmpg-float v0, v0, v2

    .line 539
    if-gez v0, :cond_16

    .line 541
    invoke-virtual {v6, v2}, Lo/W2;->B(F)F

    .line 544
    move-result v0

    .line 545
    int-to-float v2, v8

    .line 546
    invoke-virtual {v7, v0, v2, v1}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    .line 549
    :cond_16
    iget-object v0, v6, Lo/W2;->S:Ljava/util/ArrayList;

    .line 551
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 554
    move-result v0

    .line 555
    const/4 v2, 0x1

    .line 556
    if-le v0, v2, :cond_17

    .line 558
    iget-object v0, v6, Lo/W2;->S:Ljava/util/ArrayList;

    .line 560
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 563
    move-result-object v0

    .line 564
    check-cast v0, Ljava/lang/Float;

    .line 566
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    .line 569
    move-result v0

    .line 570
    iget v2, v6, Lo/W2;->Q:F

    .line 572
    cmpl-float v0, v0, v2

    .line 574
    if-lez v0, :cond_17

    .line 576
    invoke-virtual {v6, v2}, Lo/W2;->B(F)F

    .line 579
    move-result v0

    .line 580
    int-to-float v2, v8

    .line 581
    invoke-virtual {v7, v0, v2, v1}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    .line 584
    :cond_17
    :goto_a
    iget-boolean v0, v6, Lo/W2;->P:Z

    .line 586
    if-nez v0, :cond_18

    .line 588
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isFocused()Z

    .line 591
    move-result v0

    .line 592
    if-eqz v0, :cond_1a

    .line 594
    :cond_18
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isEnabled()Z

    .line 597
    move-result v0

    .line 598
    if-eqz v0, :cond_1a

    .line 600
    iget v0, v6, Lo/W2;->d0:I

    .line 602
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 605
    move-result-object v1

    .line 606
    instance-of v1, v1, Landroid/graphics/drawable/RippleDrawable;

    .line 608
    if-nez v1, :cond_1a

    .line 610
    iget v1, v6, Lo/W2;->D:I

    .line 612
    int-to-float v1, v1

    .line 613
    iget-object v2, v6, Lo/W2;->S:Ljava/util/ArrayList;

    .line 615
    iget v3, v6, Lo/W2;->U:I

    .line 617
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 620
    move-result-object v2

    .line 621
    check-cast v2, Ljava/lang/Float;

    .line 623
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 626
    move-result v2

    .line 627
    invoke-virtual {v6, v2}, Lo/W2;->o(F)F

    .line 630
    move-result v2

    .line 631
    int-to-float v0, v0

    .line 632
    mul-float/2addr v2, v0

    .line 633
    add-float/2addr v2, v1

    .line 634
    float-to-int v10, v2

    .line 635
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 637
    const/16 v1, 0x1c

    .line 639
    if-ge v0, v1, :cond_19

    .line 641
    iget v0, v6, Lo/W2;->G:I

    .line 643
    sub-int v1, v10, v0

    .line 645
    int-to-float v1, v1

    .line 646
    sub-int v2, v8, v0

    .line 648
    int-to-float v2, v2

    .line 649
    add-int v3, v10, v0

    .line 651
    int-to-float v3, v3

    .line 652
    add-int/2addr v0, v8

    .line 653
    int-to-float v4, v0

    .line 654
    sget-object v5, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    .line 656
    move-object/from16 v0, p1

    .line 658
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->clipRect(FFFFLandroid/graphics/Region$Op;)Z

    .line 661
    :cond_19
    int-to-float v0, v10

    .line 662
    int-to-float v1, v8

    .line 663
    iget v2, v6, Lo/W2;->G:I

    .line 665
    int-to-float v2, v2

    .line 666
    iget-object v3, v6, Lo/W2;->d:Landroid/graphics/Paint;

    .line 668
    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 671
    :cond_1a
    invoke-virtual/range {p0 .. p0}, Lo/W2;->w()V

    .line 674
    iget v10, v6, Lo/W2;->d0:I

    .line 676
    :goto_b
    iget-object v0, v6, Lo/W2;->S:Ljava/util/ArrayList;

    .line 678
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 681
    move-result v0

    .line 682
    if-ge v9, v0, :cond_1e

    .line 684
    iget-object v0, v6, Lo/W2;->S:Ljava/util/ArrayList;

    .line 686
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 689
    move-result-object v0

    .line 690
    check-cast v0, Ljava/lang/Float;

    .line 692
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    .line 695
    move-result v4

    .line 696
    iget-object v5, v6, Lo/W2;->p0:Landroid/graphics/drawable/Drawable;

    .line 698
    if-eqz v5, :cond_1b

    .line 700
    move-object/from16 v0, p0

    .line 702
    move-object/from16 v1, p1

    .line 704
    move v2, v10

    .line 705
    move v3, v8

    .line 706
    invoke-virtual/range {v0 .. v5}, Lo/W2;->d(Landroid/graphics/Canvas;IIFLandroid/graphics/drawable/Drawable;)V

    .line 709
    goto :goto_c

    .line 710
    :cond_1b
    iget-object v0, v6, Lo/W2;->q0:Ljava/util/List;

    .line 712
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 715
    move-result v0

    .line 716
    if-ge v9, v0, :cond_1c

    .line 718
    iget-object v0, v6, Lo/W2;->q0:Ljava/util/List;

    .line 720
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 723
    move-result-object v0

    .line 724
    move-object v5, v0

    .line 725
    check-cast v5, Landroid/graphics/drawable/Drawable;

    .line 727
    move-object/from16 v0, p0

    .line 729
    move-object/from16 v1, p1

    .line 731
    move v2, v10

    .line 732
    move v3, v8

    .line 733
    invoke-virtual/range {v0 .. v5}, Lo/W2;->d(Landroid/graphics/Canvas;IIFLandroid/graphics/drawable/Drawable;)V

    .line 736
    goto :goto_c

    .line 737
    :cond_1c
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isEnabled()Z

    .line 740
    move-result v0

    .line 741
    if-nez v0, :cond_1d

    .line 743
    iget v0, v6, Lo/W2;->D:I

    .line 745
    int-to-float v0, v0

    .line 746
    invoke-virtual {v6, v4}, Lo/W2;->o(F)F

    .line 749
    move-result v1

    .line 750
    int-to-float v2, v10

    .line 751
    mul-float/2addr v1, v2

    .line 752
    add-float/2addr v1, v0

    .line 753
    int-to-float v0, v8

    .line 754
    invoke-virtual/range {p0 .. p0}, Lo/W2;->getThumbRadius()I

    .line 757
    move-result v2

    .line 758
    int-to-float v2, v2

    .line 759
    iget-object v3, v6, Lo/W2;->c:Landroid/graphics/Paint;

    .line 761
    invoke-virtual {v7, v1, v0, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 764
    :cond_1d
    iget-object v5, v6, Lo/W2;->o0:Lo/eb;

    .line 766
    move-object/from16 v0, p0

    .line 768
    move-object/from16 v1, p1

    .line 770
    move v2, v10

    .line 771
    move v3, v8

    .line 772
    invoke-virtual/range {v0 .. v5}, Lo/W2;->d(Landroid/graphics/Canvas;IIFLandroid/graphics/drawable/Drawable;)V

    .line 775
    :goto_c
    add-int/lit8 v9, v9, 0x1

    .line 777
    goto :goto_b

    .line 778
    :cond_1e
    return-void
.end method

.method public final onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 4
    iget-object p3, p0, Lo/W2;->h:Lo/U2;

    .line 6
    if-nez p1, :cond_0

    .line 8
    const/4 p1, -0x1

    .line 9
    iput p1, p0, Lo/W2;->T:I

    .line 11
    iget p1, p0, Lo/W2;->U:I

    .line 13
    invoke-virtual {p3, p1}, Lo/i7;->j(I)Z

    .line 16
    goto :goto_1

    .line 17
    :cond_0
    const/4 p1, 0x1

    .line 18
    const v0, 0x7fffffff

    .line 21
    if-eq p2, p1, :cond_4

    .line 23
    const/4 p1, 0x2

    .line 24
    const/high16 v1, -0x80000000

    .line 26
    if-eq p2, p1, :cond_3

    .line 28
    const/16 p1, 0x11

    .line 30
    if-eq p2, p1, :cond_2

    .line 32
    const/16 p1, 0x42

    .line 34
    if-eq p2, p1, :cond_1

    .line 36
    goto :goto_0

    .line 37
    :cond_1
    invoke-virtual {p0, v1}, Lo/W2;->n(I)V

    .line 40
    goto :goto_0

    .line 41
    :cond_2
    invoke-virtual {p0, v0}, Lo/W2;->n(I)V

    .line 44
    goto :goto_0

    .line 45
    :cond_3
    invoke-virtual {p0, v1}, Lo/W2;->m(I)Z

    .line 48
    goto :goto_0

    .line 49
    :cond_4
    invoke-virtual {p0, v0}, Lo/W2;->m(I)Z

    .line 52
    :goto_0
    iget p1, p0, Lo/W2;->U:I

    .line 54
    invoke-virtual {p3, p1}, Lo/i7;->w(I)Z

    .line 57
    :goto_1
    return-void
.end method

.method public final onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 13

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 7
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 10
    move-result p1

    .line 11
    return p1

    .line 12
    :cond_0
    iget-object v0, p0, Lo/W2;->S:Ljava/util/ArrayList;

    .line 14
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 17
    move-result v0

    .line 18
    const/4 v1, 0x0

    .line 19
    const/4 v2, 0x1

    .line 20
    if-ne v0, v2, :cond_1

    .line 22
    iput v1, p0, Lo/W2;->T:I

    .line 24
    :cond_1
    iget v0, p0, Lo/W2;->T:I

    .line 26
    const/4 v3, 0x0

    .line 27
    const/16 v4, 0x46

    .line 29
    const/16 v5, 0x45

    .line 31
    const/16 v6, 0x51

    .line 33
    const/16 v7, 0x42

    .line 35
    const/16 v8, 0x3d

    .line 37
    const/4 v9, -0x1

    .line 38
    if-ne v0, v9, :cond_9

    .line 40
    if-eq p1, v8, :cond_5

    .line 42
    if-eq p1, v7, :cond_4

    .line 44
    if-eq p1, v6, :cond_3

    .line 46
    if-eq p1, v5, :cond_2

    .line 48
    if-eq p1, v4, :cond_3

    .line 50
    packed-switch p1, :pswitch_data_0

    .line 53
    goto :goto_0

    .line 54
    :pswitch_0
    invoke-virtual {p0, v2}, Lo/W2;->n(I)V

    .line 57
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 59
    goto :goto_0

    .line 60
    :pswitch_1
    invoke-virtual {p0, v9}, Lo/W2;->n(I)V

    .line 63
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 65
    goto :goto_0

    .line 66
    :cond_2
    invoke-virtual {p0, v9}, Lo/W2;->m(I)Z

    .line 69
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 71
    goto :goto_0

    .line 72
    :cond_3
    invoke-virtual {p0, v2}, Lo/W2;->m(I)Z

    .line 75
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 77
    goto :goto_0

    .line 78
    :cond_4
    :pswitch_2
    iget v0, p0, Lo/W2;->U:I

    .line 80
    iput v0, p0, Lo/W2;->T:I

    .line 82
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    .line 85
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 87
    goto :goto_0

    .line 88
    :cond_5
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    .line 91
    move-result v0

    .line 92
    if-eqz v0, :cond_6

    .line 94
    invoke-virtual {p0, v2}, Lo/W2;->m(I)Z

    .line 97
    move-result v0

    .line 98
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 101
    move-result-object v3

    .line 102
    goto :goto_0

    .line 103
    :cond_6
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isShiftPressed()Z

    .line 106
    move-result v0

    .line 107
    if-eqz v0, :cond_7

    .line 109
    invoke-virtual {p0, v9}, Lo/W2;->m(I)Z

    .line 112
    move-result v0

    .line 113
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 116
    move-result-object v3

    .line 117
    goto :goto_0

    .line 118
    :cond_7
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 120
    :goto_0
    if-eqz v3, :cond_8

    .line 122
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 125
    move-result p1

    .line 126
    goto :goto_1

    .line 127
    :cond_8
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 130
    move-result p1

    .line 131
    :goto_1
    return p1

    .line 132
    :cond_9
    iget-boolean v0, p0, Lo/W2;->e0:Z

    .line 134
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    .line 137
    move-result v10

    .line 138
    or-int/2addr v0, v10

    .line 139
    iput-boolean v0, p0, Lo/W2;->e0:Z

    .line 141
    const/high16 v10, 0x3f800000    # 1.0f

    .line 143
    const/4 v11, 0x0

    .line 144
    if-eqz v0, :cond_c

    .line 146
    iget v0, p0, Lo/W2;->V:F

    .line 148
    cmpl-float v11, v0, v11

    .line 150
    if-nez v11, :cond_a

    .line 152
    goto :goto_2

    .line 153
    :cond_a
    move v10, v0

    .line 154
    :goto_2
    iget v0, p0, Lo/W2;->R:F

    .line 156
    iget v11, p0, Lo/W2;->Q:F

    .line 158
    sub-float/2addr v0, v11

    .line 159
    div-float/2addr v0, v10

    .line 160
    const/16 v11, 0x14

    .line 162
    int-to-float v11, v11

    .line 163
    cmpg-float v12, v0, v11

    .line 165
    if-gtz v12, :cond_b

    .line 167
    goto :goto_3

    .line 168
    :cond_b
    div-float/2addr v0, v11

    .line 169
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 172
    move-result v0

    .line 173
    int-to-float v0, v0

    .line 174
    mul-float/2addr v10, v0

    .line 175
    goto :goto_3

    .line 176
    :cond_c
    iget v0, p0, Lo/W2;->V:F

    .line 178
    cmpl-float v11, v0, v11

    .line 180
    if-nez v11, :cond_d

    .line 182
    goto :goto_3

    .line 183
    :cond_d
    move v10, v0

    .line 184
    :goto_3
    const/16 v0, 0x15

    .line 186
    if-eq p1, v0, :cond_12

    .line 188
    const/16 v0, 0x16

    .line 190
    if-eq p1, v0, :cond_10

    .line 192
    if-eq p1, v5, :cond_f

    .line 194
    if-eq p1, v4, :cond_e

    .line 196
    if-eq p1, v6, :cond_e

    .line 198
    goto :goto_5

    .line 199
    :cond_e
    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 202
    move-result-object v3

    .line 203
    goto :goto_5

    .line 204
    :cond_f
    neg-float v0, v10

    .line 205
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 208
    move-result-object v3

    .line 209
    goto :goto_5

    .line 210
    :cond_10
    invoke-virtual {p0}, Lo/W2;->k()Z

    .line 213
    move-result v0

    .line 214
    if-eqz v0, :cond_11

    .line 216
    neg-float v10, v10

    .line 217
    :cond_11
    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 220
    move-result-object v3

    .line 221
    goto :goto_5

    .line 222
    :cond_12
    invoke-virtual {p0}, Lo/W2;->k()Z

    .line 225
    move-result v0

    .line 226
    if-eqz v0, :cond_13

    .line 228
    goto :goto_4

    .line 229
    :cond_13
    neg-float v10, v10

    .line 230
    :goto_4
    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 233
    move-result-object v3

    .line 234
    :goto_5
    if-eqz v3, :cond_15

    .line 236
    iget-object p1, p0, Lo/W2;->S:Ljava/util/ArrayList;

    .line 238
    iget p2, p0, Lo/W2;->T:I

    .line 240
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 243
    move-result-object p1

    .line 244
    check-cast p1, Ljava/lang/Float;

    .line 246
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 249
    move-result p1

    .line 250
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    .line 253
    move-result p2

    .line 254
    add-float/2addr p2, p1

    .line 255
    iget p1, p0, Lo/W2;->T:I

    .line 257
    invoke-virtual {p0, p1, p2}, Lo/W2;->s(IF)Z

    .line 260
    move-result p1

    .line 261
    if-eqz p1, :cond_14

    .line 263
    invoke-virtual {p0}, Lo/W2;->v()V

    .line 266
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    .line 269
    :cond_14
    return v2

    .line 270
    :cond_15
    const/16 v0, 0x17

    .line 272
    if-eq p1, v0, :cond_19

    .line 274
    if-eq p1, v8, :cond_16

    .line 276
    if-eq p1, v7, :cond_19

    .line 278
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 281
    move-result p1

    .line 282
    return p1

    .line 283
    :cond_16
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    .line 286
    move-result p1

    .line 287
    if-eqz p1, :cond_17

    .line 289
    invoke-virtual {p0, v2}, Lo/W2;->m(I)Z

    .line 292
    move-result p1

    .line 293
    return p1

    .line 294
    :cond_17
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isShiftPressed()Z

    .line 297
    move-result p1

    .line 298
    if-eqz p1, :cond_18

    .line 300
    invoke-virtual {p0, v9}, Lo/W2;->m(I)Z

    .line 303
    move-result p1

    .line 304
    return p1

    .line 305
    :cond_18
    return v1

    .line 306
    :cond_19
    iput v9, p0, Lo/W2;->T:I

    .line 308
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    .line 311
    return v2

    nop

    .line 313
    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public final onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lo/W2;->e0:Z

    .line 4
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    .line 7
    move-result p1

    .line 8
    return p1
.end method

.method public final onMeasure(II)V
    .locals 3

    .line 1
    iget p2, p0, Lo/W2;->A:I

    .line 3
    iget v0, p0, Lo/W2;->B:I

    .line 5
    const/4 v1, 0x1

    .line 6
    const/4 v2, 0x0

    .line 7
    if-eq v0, v1, :cond_0

    .line 9
    const/4 v1, 0x3

    .line 10
    if-ne v0, v1, :cond_1

    .line 12
    :cond_0
    iget-object v0, p0, Lo/W2;->l:Ljava/util/ArrayList;

    .line 14
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lo/mg;

    .line 20
    invoke-virtual {v0}, Lo/mg;->getIntrinsicHeight()I

    .line 23
    move-result v2

    .line 24
    :cond_1
    add-int/2addr p2, v2

    .line 25
    const/high16 v0, 0x40000000    # 2.0f

    .line 27
    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 30
    move-result p2

    .line 31
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 34
    return-void
.end method

.method public final onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 1
    check-cast p1, Lo/V2;

    .line 3
    invoke-virtual {p1}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    .line 6
    move-result-object v0

    .line 7
    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 10
    iget v0, p1, Lo/V2;->a:F

    .line 12
    iput v0, p0, Lo/W2;->Q:F

    .line 14
    iget v0, p1, Lo/V2;->b:F

    .line 16
    iput v0, p0, Lo/W2;->R:F

    .line 18
    iget-object v0, p1, Lo/V2;->c:Ljava/util/ArrayList;

    .line 20
    invoke-virtual {p0, v0}, Lo/W2;->r(Ljava/util/ArrayList;)V

    .line 23
    iget v0, p1, Lo/V2;->d:F

    .line 25
    iput v0, p0, Lo/W2;->V:F

    .line 27
    iget-boolean p1, p1, Lo/V2;->e:Z

    .line 29
    if-eqz p1, :cond_0

    .line 31
    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    .line 34
    :cond_0
    return-void
.end method

.method public final onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lo/V2;

    .line 7
    invoke-direct {v1, v0}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 10
    iget v0, p0, Lo/W2;->Q:F

    .line 12
    iput v0, v1, Lo/V2;->a:F

    .line 14
    iget v0, p0, Lo/W2;->R:F

    .line 16
    iput v0, v1, Lo/V2;->b:F

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    .line 20
    iget-object v2, p0, Lo/W2;->S:Ljava/util/ArrayList;

    .line 22
    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 25
    iput-object v0, v1, Lo/V2;->c:Ljava/util/ArrayList;

    .line 27
    iget v0, p0, Lo/W2;->V:F

    .line 29
    iput v0, v1, Lo/V2;->d:F

    .line 31
    invoke-virtual {p0}, Landroid/view/View;->hasFocus()Z

    .line 34
    move-result v0

    .line 35
    iput-boolean v0, v1, Lo/V2;->e:Z

    .line 37
    return-object v1
.end method

.method public final onSizeChanged(IIII)V
    .locals 0

    .line 1
    iget p2, p0, Lo/W2;->D:I

    .line 3
    mul-int/lit8 p2, p2, 0x2

    .line 5
    sub-int/2addr p1, p2

    .line 6
    const/4 p2, 0x0

    .line 7
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    .line 10
    move-result p1

    .line 11
    iput p1, p0, Lo/W2;->d0:I

    .line 13
    invoke-virtual {p0}, Lo/W2;->l()V

    .line 16
    invoke-virtual {p0}, Lo/W2;->v()V

    .line 19
    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 8
    return v1

    .line 9
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 12
    move-result v0

    .line 13
    iget v2, p0, Lo/W2;->D:I

    .line 15
    int-to-float v2, v2

    .line 16
    sub-float v2, v0, v2

    .line 18
    iget v3, p0, Lo/W2;->d0:I

    .line 20
    int-to-float v3, v3

    .line 21
    div-float/2addr v2, v3

    .line 22
    iput v2, p0, Lo/W2;->r0:F

    .line 24
    const/4 v3, 0x0

    .line 25
    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    .line 28
    move-result v2

    .line 29
    iput v2, p0, Lo/W2;->r0:F

    .line 31
    const/high16 v3, 0x3f800000    # 1.0f

    .line 33
    invoke-static {v3, v2}, Ljava/lang/Math;->min(FF)F

    .line 36
    move-result v2

    .line 37
    iput v2, p0, Lo/W2;->r0:F

    .line 39
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 42
    move-result v2

    .line 43
    const/4 v3, -0x1

    .line 44
    const/4 v4, 0x2

    .line 45
    const/4 v5, 0x1

    .line 46
    if-eqz v2, :cond_b

    .line 48
    iget v6, p0, Lo/W2;->r:I

    .line 50
    if-eq v2, v5, :cond_5

    .line 52
    if-eq v2, v4, :cond_1

    .line 54
    const/4 v0, 0x3

    .line 55
    if-eq v2, v0, :cond_5

    .line 57
    goto/16 :goto_4

    .line 59
    :cond_1
    iget-boolean v2, p0, Lo/W2;->P:Z

    .line 61
    if-nez v2, :cond_3

    .line 63
    invoke-virtual {p0, p1}, Lo/W2;->j(Landroid/view/MotionEvent;)Z

    .line 66
    move-result v2

    .line 67
    if-eqz v2, :cond_2

    .line 69
    iget v2, p0, Lo/W2;->N:F

    .line 71
    sub-float/2addr v0, v2

    .line 72
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 75
    move-result v0

    .line 76
    int-to-float v2, v6

    .line 77
    cmpg-float v0, v0, v2

    .line 79
    if-gez v0, :cond_2

    .line 81
    return v1

    .line 82
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 85
    move-result-object v0

    .line 86
    invoke-interface {v0, v5}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 89
    invoke-virtual {p0}, Lo/W2;->p()V

    .line 92
    :cond_3
    move-object v0, p0

    .line 93
    check-cast v0, Lcom/google/android/material/slider/Slider;

    .line 95
    invoke-virtual {v0}, Lcom/google/android/material/slider/Slider;->getActiveThumbIndex()I

    .line 98
    move-result v2

    .line 99
    if-eq v2, v3, :cond_4

    .line 101
    goto :goto_0

    .line 102
    :cond_4
    invoke-virtual {v0, v1}, Lo/W2;->setActiveThumbIndex(I)V

    .line 105
    :goto_0
    iput-boolean v5, p0, Lo/W2;->P:Z

    .line 107
    invoke-virtual {p0}, Lo/W2;->t()V

    .line 110
    invoke-virtual {p0}, Lo/W2;->v()V

    .line 113
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 116
    goto/16 :goto_4

    .line 118
    :cond_5
    iput-boolean v1, p0, Lo/W2;->P:Z

    .line 120
    iget-object v0, p0, Lo/W2;->O:Landroid/view/MotionEvent;

    .line 122
    if-eqz v0, :cond_7

    .line 124
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 127
    move-result v0

    .line 128
    if-nez v0, :cond_7

    .line 130
    iget-object v0, p0, Lo/W2;->O:Landroid/view/MotionEvent;

    .line 132
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getX()F

    .line 135
    move-result v0

    .line 136
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 139
    move-result v2

    .line 140
    sub-float/2addr v0, v2

    .line 141
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 144
    move-result v0

    .line 145
    int-to-float v2, v6

    .line 146
    cmpg-float v0, v0, v2

    .line 148
    if-gtz v0, :cond_7

    .line 150
    iget-object v0, p0, Lo/W2;->O:Landroid/view/MotionEvent;

    .line 152
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getY()F

    .line 155
    move-result v0

    .line 156
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 159
    move-result v4

    .line 160
    sub-float/2addr v0, v4

    .line 161
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 164
    move-result v0

    .line 165
    cmpg-float v0, v0, v2

    .line 167
    if-gtz v0, :cond_7

    .line 169
    move-object v0, p0

    .line 170
    check-cast v0, Lcom/google/android/material/slider/Slider;

    .line 172
    invoke-virtual {v0}, Lcom/google/android/material/slider/Slider;->getActiveThumbIndex()I

    .line 175
    move-result v2

    .line 176
    if-eq v2, v3, :cond_6

    .line 178
    goto :goto_1

    .line 179
    :cond_6
    invoke-virtual {v0, v1}, Lo/W2;->setActiveThumbIndex(I)V

    .line 182
    :goto_1
    invoke-virtual {p0}, Lo/W2;->p()V

    .line 185
    :cond_7
    iget v0, p0, Lo/W2;->T:I

    .line 187
    if-eq v0, v3, :cond_a

    .line 189
    invoke-virtual {p0}, Lo/W2;->t()V

    .line 192
    invoke-virtual {p0}, Lo/W2;->v()V

    .line 195
    iget v0, p0, Lo/W2;->H:I

    .line 197
    if-lez v0, :cond_8

    .line 199
    iget v0, p0, Lo/W2;->I:I

    .line 201
    if-eq v0, v3, :cond_8

    .line 203
    iget v1, p0, Lo/W2;->J:I

    .line 205
    if-eq v1, v3, :cond_8

    .line 207
    invoke-virtual {p0, v0}, Lo/W2;->setThumbWidth(I)V

    .line 210
    iget v0, p0, Lo/W2;->J:I

    .line 212
    invoke-virtual {p0, v0}, Lo/W2;->setThumbTrackGapSize(I)V

    .line 215
    :cond_8
    iput v3, p0, Lo/W2;->T:I

    .line 217
    iget-object v0, p0, Lo/W2;->n:Ljava/util/ArrayList;

    .line 219
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 222
    move-result-object v0

    .line 223
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 226
    move-result v1

    .line 227
    if-nez v1, :cond_9

    .line 229
    goto :goto_2

    .line 230
    :cond_9
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 233
    move-result-object p1

    .line 234
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 237
    new-instance p1, Ljava/lang/ClassCastException;

    .line 239
    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    .line 242
    throw p1

    .line 243
    :cond_a
    :goto_2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 246
    goto :goto_4

    .line 247
    :cond_b
    iput v0, p0, Lo/W2;->N:F

    .line 249
    invoke-virtual {p0, p1}, Lo/W2;->j(Landroid/view/MotionEvent;)Z

    .line 252
    move-result v0

    .line 253
    if-eqz v0, :cond_c

    .line 255
    goto :goto_4

    .line 256
    :cond_c
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 259
    move-result-object v0

    .line 260
    invoke-interface {v0, v5}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 263
    move-object v0, p0

    .line 264
    check-cast v0, Lcom/google/android/material/slider/Slider;

    .line 266
    invoke-virtual {v0}, Lcom/google/android/material/slider/Slider;->getActiveThumbIndex()I

    .line 269
    move-result v2

    .line 270
    if-eq v2, v3, :cond_d

    .line 272
    goto :goto_3

    .line 273
    :cond_d
    invoke-virtual {v0, v1}, Lo/W2;->setActiveThumbIndex(I)V

    .line 276
    :goto_3
    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    .line 279
    iput-boolean v5, p0, Lo/W2;->P:Z

    .line 281
    invoke-virtual {p0}, Lo/W2;->t()V

    .line 284
    invoke-virtual {p0}, Lo/W2;->v()V

    .line 287
    iget v0, p0, Lo/W2;->H:I

    .line 289
    if-lez v0, :cond_e

    .line 291
    iget v1, p0, Lo/W2;->E:I

    .line 293
    iput v1, p0, Lo/W2;->I:I

    .line 295
    iput v0, p0, Lo/W2;->J:I

    .line 297
    int-to-float v0, v1

    .line 298
    const/high16 v1, 0x3f000000    # 0.5f

    .line 300
    mul-float/2addr v0, v1

    .line 301
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 304
    move-result v0

    .line 305
    iget v1, p0, Lo/W2;->E:I

    .line 307
    sub-int/2addr v1, v0

    .line 308
    invoke-virtual {p0, v0}, Lo/W2;->setThumbWidth(I)V

    .line 311
    iget v0, p0, Lo/W2;->H:I

    .line 313
    div-int/2addr v1, v4

    .line 314
    sub-int/2addr v0, v1

    .line 315
    invoke-virtual {p0, v0}, Lo/W2;->setThumbTrackGapSize(I)V

    .line 318
    :cond_e
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 321
    invoke-virtual {p0}, Lo/W2;->p()V

    .line 324
    :goto_4
    iget-boolean v0, p0, Lo/W2;->P:Z

    .line 326
    invoke-virtual {p0, v0}, Landroid/view/View;->setPressed(Z)V

    .line 329
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    .line 332
    move-result-object p1

    .line 333
    iput-object p1, p0, Lo/W2;->O:Landroid/view/MotionEvent;

    .line 335
    return v5
.end method

.method public final onVisibilityChanged(Landroid/view/View;I)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    .line 4
    if-eqz p2, :cond_1

    .line 6
    invoke-static {p0}, Lo/Ng;->g(Landroid/view/View;)Lo/Oh;

    .line 9
    move-result-object p1

    .line 10
    if-nez p1, :cond_0

    .line 12
    return-void

    .line 13
    :cond_0
    iget-object p2, p0, Lo/W2;->l:Ljava/util/ArrayList;

    .line 15
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 18
    move-result-object p2

    .line 19
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_1

    .line 25
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Lo/mg;

    .line 31
    iget-object v1, p1, Lo/Oh;->a:Ljava/lang/Object;

    .line 33
    check-cast v1, Landroid/view/ViewOverlay;

    .line 35
    invoke-virtual {v1, v0}, Landroid/view/ViewOverlay;->remove(Landroid/graphics/drawable/Drawable;)V

    .line 38
    goto :goto_0

    .line 39
    :cond_1
    return-void
.end method

.method public final p()V
    .locals 2

    .line 1
    iget-object v0, p0, Lo/W2;->n:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v1

    .line 11
    if-nez v1, :cond_0

    .line 13
    return-void

    .line 14
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    new-instance v0, Ljava/lang/ClassCastException;

    .line 23
    invoke-direct {v0}, Ljava/lang/ClassCastException;-><init>()V

    .line 26
    throw v0
.end method

.method public final q(Lo/mg;F)V
    .locals 3

    .line 1
    float-to-int v0, p2

    .line 2
    int-to-float v0, v0

    .line 3
    cmpl-float v0, v0, p2

    .line 5
    if-nez v0, :cond_0

    .line 7
    const-string v0, "%.0f"

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const-string v0, "%.2f"

    .line 12
    :goto_0
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 15
    move-result-object v1

    .line 16
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 19
    move-result-object v1

    .line 20
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 23
    move-result-object v0

    .line 24
    iget-object v1, p1, Lo/mg;->x:Ljava/lang/CharSequence;

    .line 26
    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 29
    move-result v1

    .line 30
    if-nez v1, :cond_1

    .line 32
    iput-object v0, p1, Lo/mg;->x:Ljava/lang/CharSequence;

    .line 34
    iget-object v0, p1, Lo/mg;->A:Lo/Lf;

    .line 36
    const/4 v1, 0x1

    .line 37
    iput-boolean v1, v0, Lo/Lf;->d:Z

    .line 39
    invoke-virtual {p1}, Lo/eb;->invalidateSelf()V

    .line 42
    :cond_1
    iget v0, p0, Lo/W2;->D:I

    .line 44
    invoke-virtual {p0, p2}, Lo/W2;->o(F)F

    .line 47
    move-result p2

    .line 48
    iget v1, p0, Lo/W2;->d0:I

    .line 50
    int-to-float v1, v1

    .line 51
    mul-float/2addr p2, v1

    .line 52
    float-to-int p2, p2

    .line 53
    add-int/2addr v0, p2

    .line 54
    invoke-virtual {p1}, Lo/mg;->getIntrinsicWidth()I

    .line 57
    move-result p2

    .line 58
    div-int/lit8 p2, p2, 0x2

    .line 60
    sub-int/2addr v0, p2

    .line 61
    invoke-virtual {p0}, Lo/W2;->b()I

    .line 64
    move-result p2

    .line 65
    iget v1, p0, Lo/W2;->M:I

    .line 67
    iget v2, p0, Lo/W2;->F:I

    .line 69
    div-int/lit8 v2, v2, 0x2

    .line 71
    add-int/2addr v2, v1

    .line 72
    sub-int/2addr p2, v2

    .line 73
    invoke-virtual {p1}, Lo/mg;->getIntrinsicHeight()I

    .line 76
    move-result v1

    .line 77
    sub-int v1, p2, v1

    .line 79
    invoke-virtual {p1}, Lo/mg;->getIntrinsicWidth()I

    .line 82
    move-result v2

    .line 83
    add-int/2addr v2, v0

    .line 84
    invoke-virtual {p1, v0, v1, v2, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 87
    new-instance p2, Landroid/graphics/Rect;

    .line 89
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 92
    move-result-object v0

    .line 93
    invoke-direct {p2, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 96
    invoke-static {p0}, Lo/Ng;->f(Landroid/view/View;)Landroid/view/ViewGroup;

    .line 99
    move-result-object v0

    .line 100
    invoke-static {v0, p0, p2}, Lo/Q5;->b(Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;)V

    .line 103
    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 106
    invoke-static {p0}, Lo/Ng;->g(Landroid/view/View;)Lo/Oh;

    .line 109
    move-result-object p2

    .line 110
    iget-object p2, p2, Lo/Oh;->a:Ljava/lang/Object;

    .line 112
    check-cast p2, Landroid/view/ViewOverlay;

    .line 114
    invoke-virtual {p2, p1}, Landroid/view/ViewOverlay;->add(Landroid/graphics/drawable/Drawable;)V

    .line 117
    return-void
.end method

.method public final r(Ljava/util/ArrayList;)V
    .locals 10

    .line 1
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_12

    .line 7
    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 10
    iget-object v0, p0, Lo/W2;->S:Ljava/util/ArrayList;

    .line 12
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 15
    move-result v0

    .line 16
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 19
    move-result v1

    .line 20
    if-ne v0, v1, :cond_0

    .line 22
    iget-object v0, p0, Lo/W2;->S:Ljava/util/ArrayList;

    .line 24
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_0

    .line 30
    return-void

    .line 31
    :cond_0
    iput-object p1, p0, Lo/W2;->S:Ljava/util/ArrayList;

    .line 33
    const/4 p1, 0x1

    .line 34
    iput-boolean p1, p0, Lo/W2;->f0:Z

    .line 36
    const/4 v0, 0x0

    .line 37
    iput v0, p0, Lo/W2;->U:I

    .line 39
    invoke-virtual {p0}, Lo/W2;->v()V

    .line 42
    iget-object v1, p0, Lo/W2;->l:Ljava/util/ArrayList;

    .line 44
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 47
    move-result v2

    .line 48
    iget-object v3, p0, Lo/W2;->S:Ljava/util/ArrayList;

    .line 50
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 53
    move-result v3

    .line 54
    if-le v2, v3, :cond_4

    .line 56
    iget-object v2, p0, Lo/W2;->S:Ljava/util/ArrayList;

    .line 58
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 61
    move-result v2

    .line 62
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 65
    move-result v3

    .line 66
    invoke-virtual {v1, v2, v3}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    .line 69
    move-result-object v2

    .line 70
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 73
    move-result-object v3

    .line 74
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 77
    move-result v4

    .line 78
    if-eqz v4, :cond_3

    .line 80
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 83
    move-result-object v4

    .line 84
    check-cast v4, Lo/mg;

    .line 86
    sget-object v5, Lo/Dh;->a:Ljava/util/WeakHashMap;

    .line 88
    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    .line 91
    move-result v5

    .line 92
    if-eqz v5, :cond_1

    .line 94
    invoke-static {p0}, Lo/Ng;->g(Landroid/view/View;)Lo/Oh;

    .line 97
    move-result-object v5

    .line 98
    if-eqz v5, :cond_1

    .line 100
    iget-object v5, v5, Lo/Oh;->a:Ljava/lang/Object;

    .line 102
    check-cast v5, Landroid/view/ViewOverlay;

    .line 104
    invoke-virtual {v5, v4}, Landroid/view/ViewOverlay;->remove(Landroid/graphics/drawable/Drawable;)V

    .line 107
    invoke-static {p0}, Lo/Ng;->f(Landroid/view/View;)Landroid/view/ViewGroup;

    .line 110
    move-result-object v5

    .line 111
    if-nez v5, :cond_2

    .line 113
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 116
    goto :goto_0

    .line 117
    :cond_2
    iget-object v4, v4, Lo/mg;->B:Lo/f3;

    .line 119
    invoke-virtual {v5, v4}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 122
    goto :goto_0

    .line 123
    :cond_3
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 126
    :cond_4
    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 129
    move-result v2

    .line 130
    iget-object v3, p0, Lo/W2;->S:Ljava/util/ArrayList;

    .line 132
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 135
    move-result v3

    .line 136
    if-ge v2, v3, :cond_d

    .line 138
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 141
    move-result-object v2

    .line 142
    iget v7, p0, Lo/W2;->k:I

    .line 144
    new-instance v9, Lo/mg;

    .line 146
    invoke-direct {v9, v2, v7}, Lo/mg;-><init>(Landroid/content/Context;I)V

    .line 149
    sget-object v5, Lo/fd;->E:[I

    .line 151
    new-array v8, v0, [I

    .line 153
    iget-object v3, v9, Lo/mg;->y:Landroid/content/Context;

    .line 155
    const/4 v4, 0x0

    .line 156
    const/4 v6, 0x0

    .line 157
    invoke-static/range {v3 .. v8}, Lo/x9;->H(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    .line 160
    move-result-object v2

    .line 161
    iget-object v3, v9, Lo/mg;->y:Landroid/content/Context;

    .line 163
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 166
    move-result-object v4

    .line 167
    const v5, 0x7f060306

    .line 170
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 173
    move-result v4

    .line 174
    iput v4, v9, Lo/mg;->I:I

    .line 176
    const/16 v4, 0x8

    .line 178
    invoke-virtual {v2, v4, p1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 181
    move-result v4

    .line 182
    iput-boolean v4, v9, Lo/mg;->H:Z

    .line 184
    if-eqz v4, :cond_5

    .line 186
    iget-object v4, v9, Lo/eb;->a:Lo/db;

    .line 188
    iget-object v4, v4, Lo/db;->a:Lo/Ae;

    .line 190
    invoke-virtual {v4}, Lo/Ae;->e()Lo/ze;

    .line 193
    move-result-object v4

    .line 194
    invoke-virtual {v9}, Lo/mg;->r()Lo/dc;

    .line 197
    move-result-object v5

    .line 198
    iput-object v5, v4, Lo/ze;->k:Lo/u6;

    .line 200
    invoke-virtual {v4}, Lo/ze;->a()Lo/Ae;

    .line 203
    move-result-object v4

    .line 204
    invoke-virtual {v9, v4}, Lo/eb;->setShapeAppearanceModel(Lo/Ae;)V

    .line 207
    goto :goto_2

    .line 208
    :cond_5
    iput v0, v9, Lo/mg;->I:I

    .line 210
    :goto_2
    const/4 v4, 0x6

    .line 211
    invoke-virtual {v2, v4}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    .line 214
    move-result-object v4

    .line 215
    iget-object v5, v9, Lo/mg;->x:Ljava/lang/CharSequence;

    .line 217
    invoke-static {v5, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 220
    move-result v5

    .line 221
    iget-object v6, v9, Lo/mg;->A:Lo/Lf;

    .line 223
    if-nez v5, :cond_6

    .line 225
    iput-object v4, v9, Lo/mg;->x:Ljava/lang/CharSequence;

    .line 227
    iput-boolean p1, v6, Lo/Lf;->d:Z

    .line 229
    invoke-virtual {v9}, Lo/eb;->invalidateSelf()V

    .line 232
    :cond_6
    invoke-virtual {v2, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 235
    move-result v4

    .line 236
    if-eqz v4, :cond_7

    .line 238
    invoke-virtual {v2, v0, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 241
    move-result v4

    .line 242
    if-eqz v4, :cond_7

    .line 244
    new-instance v5, Lo/If;

    .line 246
    invoke-direct {v5, v3, v4}, Lo/If;-><init>(Landroid/content/Context;I)V

    .line 249
    goto :goto_3

    .line 250
    :cond_7
    const/4 v5, 0x0

    .line 251
    :goto_3
    if-eqz v5, :cond_8

    .line 253
    invoke-virtual {v2, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 256
    move-result v4

    .line 257
    if-eqz v4, :cond_8

    .line 259
    invoke-static {v3, v2, p1}, Lo/Ha;->F(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    .line 262
    move-result-object v4

    .line 263
    iput-object v4, v5, Lo/If;->j:Landroid/content/res/ColorStateList;

    .line 265
    :cond_8
    invoke-virtual {v6, v5, v3}, Lo/Lf;->b(Lo/If;Landroid/content/Context;)V

    .line 268
    const-class v4, Lo/mg;

    .line 270
    invoke-virtual {v4}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 273
    move-result-object v5

    .line 274
    const v6, 0x7f0300fc

    .line 277
    invoke-static {v3, v6, v5}, Lo/Ha;->q0(Landroid/content/Context;ILjava/lang/String;)Landroid/util/TypedValue;

    .line 280
    move-result-object v5

    .line 281
    iget v6, v5, Landroid/util/TypedValue;->resourceId:I

    .line 283
    if-eqz v6, :cond_9

    .line 285
    invoke-virtual {v3, v6}, Landroid/content/Context;->getColor(I)I

    .line 288
    move-result v5

    .line 289
    goto :goto_4

    .line 290
    :cond_9
    iget v5, v5, Landroid/util/TypedValue;->data:I

    .line 292
    :goto_4
    invoke-virtual {v4}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 295
    move-result-object v6

    .line 296
    const v7, 0x1010031

    .line 299
    invoke-static {v3, v7, v6}, Lo/Ha;->q0(Landroid/content/Context;ILjava/lang/String;)Landroid/util/TypedValue;

    .line 302
    move-result-object v6

    .line 303
    iget v7, v6, Landroid/util/TypedValue;->resourceId:I

    .line 305
    if-eqz v7, :cond_a

    .line 307
    invoke-virtual {v3, v7}, Landroid/content/Context;->getColor(I)I

    .line 310
    move-result v6

    .line 311
    goto :goto_5

    .line 312
    :cond_a
    iget v6, v6, Landroid/util/TypedValue;->data:I

    .line 314
    :goto_5
    const/16 v7, 0xe5

    .line 316
    invoke-static {v6, v7}, Lo/m4;->d(II)I

    .line 319
    move-result v6

    .line 320
    const/16 v7, 0x99

    .line 322
    invoke-static {v5, v7}, Lo/m4;->d(II)I

    .line 325
    move-result v5

    .line 326
    invoke-static {v5, v6}, Lo/m4;->b(II)I

    .line 329
    move-result v5

    .line 330
    const/4 v6, 0x7

    .line 331
    invoke-virtual {v2, v6, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 334
    move-result v5

    .line 335
    invoke-static {v5}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 338
    move-result-object v5

    .line 339
    invoke-virtual {v9, v5}, Lo/eb;->k(Landroid/content/res/ColorStateList;)V

    .line 342
    invoke-virtual {v4}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 345
    move-result-object v4

    .line 346
    const v5, 0x7f030120

    .line 349
    invoke-static {v3, v5, v4}, Lo/Ha;->q0(Landroid/content/Context;ILjava/lang/String;)Landroid/util/TypedValue;

    .line 352
    move-result-object v4

    .line 353
    iget v5, v4, Landroid/util/TypedValue;->resourceId:I

    .line 355
    if-eqz v5, :cond_b

    .line 357
    invoke-virtual {v3, v5}, Landroid/content/Context;->getColor(I)I

    .line 360
    move-result v3

    .line 361
    goto :goto_6

    .line 362
    :cond_b
    iget v3, v4, Landroid/util/TypedValue;->data:I

    .line 364
    :goto_6
    invoke-static {v3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 367
    move-result-object v3

    .line 368
    invoke-virtual {v9, v3}, Lo/eb;->m(Landroid/content/res/ColorStateList;)V

    .line 371
    const/4 v3, 0x2

    .line 372
    invoke-virtual {v2, v3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 375
    move-result v4

    .line 376
    iput v4, v9, Lo/mg;->D:I

    .line 378
    const/4 v4, 0x4

    .line 379
    invoke-virtual {v2, v4, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 382
    move-result v4

    .line 383
    iput v4, v9, Lo/mg;->E:I

    .line 385
    const/4 v4, 0x5

    .line 386
    invoke-virtual {v2, v4, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 389
    move-result v4

    .line 390
    iput v4, v9, Lo/mg;->F:I

    .line 392
    const/4 v4, 0x3

    .line 393
    invoke-virtual {v2, v4, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 396
    move-result v4

    .line 397
    iput v4, v9, Lo/mg;->G:I

    .line 399
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 402
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 405
    sget-object v2, Lo/Dh;->a:Ljava/util/WeakHashMap;

    .line 407
    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    .line 410
    move-result v2

    .line 411
    if-eqz v2, :cond_4

    .line 413
    invoke-static {p0}, Lo/Ng;->f(Landroid/view/View;)Landroid/view/ViewGroup;

    .line 416
    move-result-object v2

    .line 417
    if-nez v2, :cond_c

    .line 419
    goto/16 :goto_1

    .line 421
    :cond_c
    new-array v3, v3, [I

    .line 423
    invoke-virtual {v2, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 426
    aget v3, v3, v0

    .line 428
    iput v3, v9, Lo/mg;->J:I

    .line 430
    iget-object v3, v9, Lo/mg;->C:Landroid/graphics/Rect;

    .line 432
    invoke-virtual {v2, v3}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 435
    iget-object v3, v9, Lo/mg;->B:Lo/f3;

    .line 437
    invoke-virtual {v2, v3}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 440
    goto/16 :goto_1

    .line 442
    :cond_d
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 445
    move-result v2

    .line 446
    if-ne v2, p1, :cond_e

    .line 448
    move p1, v0

    .line 449
    :cond_e
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 452
    move-result-object v1

    .line 453
    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 456
    move-result v2

    .line 457
    if-eqz v2, :cond_f

    .line 459
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 462
    move-result-object v2

    .line 463
    check-cast v2, Lo/mg;

    .line 465
    int-to-float v3, p1

    .line 466
    iget-object v4, v2, Lo/eb;->a:Lo/db;

    .line 468
    iput v3, v4, Lo/db;->j:F

    .line 470
    invoke-virtual {v2}, Lo/eb;->invalidateSelf()V

    .line 473
    goto :goto_7

    .line 474
    :cond_f
    iget-object p1, p0, Lo/W2;->m:Ljava/util/ArrayList;

    .line 476
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 479
    move-result-object p1

    .line 480
    :cond_10
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 483
    move-result v1

    .line 484
    if-eqz v1, :cond_11

    .line 486
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 489
    move-result-object v1

    .line 490
    check-cast v1, Lo/Ca;

    .line 492
    iget-object v2, p0, Lo/W2;->S:Ljava/util/ArrayList;

    .line 494
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 497
    move-result-object v2

    .line 498
    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 501
    move-result v3

    .line 502
    if-eqz v3, :cond_10

    .line 504
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 507
    move-result-object v3

    .line 508
    check-cast v3, Ljava/lang/Float;

    .line 510
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    .line 513
    move-result v3

    .line 514
    invoke-virtual {v1, p0, v3, v0}, Lo/Ca;->a(Lo/W2;FZ)V

    .line 517
    goto :goto_8

    .line 518
    :cond_11
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    .line 521
    return-void

    .line 522
    :cond_12
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 524
    const-string v0, "At least one value must be set"

    .line 526
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 529
    throw p1
.end method

.method public final s(IF)Z
    .locals 4

    .line 1
    iput p1, p0, Lo/W2;->U:I

    .line 3
    iget-object v0, p0, Lo/W2;->S:Ljava/util/ArrayList;

    .line 5
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Ljava/lang/Float;

    .line 11
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    .line 14
    move-result v0

    .line 15
    sub-float v0, p2, v0

    .line 17
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 20
    move-result v0

    .line 21
    float-to-double v0, v0

    .line 22
    const-wide v2, 0x3f1a36e2eb1c432dL    # 1.0E-4

    .line 27
    cmpg-double v0, v0, v2

    .line 29
    if-gez v0, :cond_0

    .line 31
    const/4 p1, 0x0

    .line 32
    return p1

    .line 33
    :cond_0
    invoke-virtual {p0}, Lo/W2;->getMinSeparation()F

    .line 36
    move-result v0

    .line 37
    iget v1, p0, Lo/W2;->s0:I

    .line 39
    if-nez v1, :cond_2

    .line 41
    const/4 v1, 0x0

    .line 42
    cmpl-float v2, v0, v1

    .line 44
    if-nez v2, :cond_1

    .line 46
    move v0, v1

    .line 47
    goto :goto_0

    .line 48
    :cond_1
    iget v1, p0, Lo/W2;->D:I

    .line 50
    int-to-float v1, v1

    .line 51
    sub-float/2addr v0, v1

    .line 52
    iget v1, p0, Lo/W2;->d0:I

    .line 54
    int-to-float v1, v1

    .line 55
    div-float/2addr v0, v1

    .line 56
    iget v1, p0, Lo/W2;->Q:F

    .line 58
    iget v2, p0, Lo/W2;->R:F

    .line 60
    sub-float v2, v1, v2

    .line 62
    mul-float/2addr v2, v0

    .line 63
    add-float/2addr v2, v1

    .line 64
    move v0, v2

    .line 65
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lo/W2;->k()Z

    .line 68
    move-result v1

    .line 69
    if-eqz v1, :cond_3

    .line 71
    neg-float v0, v0

    .line 72
    :cond_3
    add-int/lit8 v1, p1, 0x1

    .line 74
    iget-object v2, p0, Lo/W2;->S:Ljava/util/ArrayList;

    .line 76
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 79
    move-result v2

    .line 80
    if-lt v1, v2, :cond_4

    .line 82
    iget v1, p0, Lo/W2;->R:F

    .line 84
    goto :goto_1

    .line 85
    :cond_4
    iget-object v2, p0, Lo/W2;->S:Ljava/util/ArrayList;

    .line 87
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 90
    move-result-object v1

    .line 91
    check-cast v1, Ljava/lang/Float;

    .line 93
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    .line 96
    move-result v1

    .line 97
    sub-float/2addr v1, v0

    .line 98
    :goto_1
    add-int/lit8 v2, p1, -0x1

    .line 100
    if-gez v2, :cond_5

    .line 102
    iget v0, p0, Lo/W2;->Q:F

    .line 104
    goto :goto_2

    .line 105
    :cond_5
    iget-object v3, p0, Lo/W2;->S:Ljava/util/ArrayList;

    .line 107
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 110
    move-result-object v2

    .line 111
    check-cast v2, Ljava/lang/Float;

    .line 113
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 116
    move-result v2

    .line 117
    add-float/2addr v0, v2

    .line 118
    :goto_2
    cmpg-float v2, p2, v0

    .line 120
    if-gez v2, :cond_6

    .line 122
    move p2, v0

    .line 123
    goto :goto_3

    .line 124
    :cond_6
    cmpl-float v0, p2, v1

    .line 126
    if-lez v0, :cond_7

    .line 128
    move p2, v1

    .line 129
    :cond_7
    :goto_3
    iget-object v0, p0, Lo/W2;->S:Ljava/util/ArrayList;

    .line 131
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 134
    move-result-object p2

    .line 135
    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 138
    iget-object p2, p0, Lo/W2;->m:Ljava/util/ArrayList;

    .line 140
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 143
    move-result-object p2

    .line 144
    :goto_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 147
    move-result v0

    .line 148
    const/4 v1, 0x1

    .line 149
    if-eqz v0, :cond_8

    .line 151
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 154
    move-result-object v0

    .line 155
    check-cast v0, Lo/Ca;

    .line 157
    iget-object v2, p0, Lo/W2;->S:Ljava/util/ArrayList;

    .line 159
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 162
    move-result-object v2

    .line 163
    check-cast v2, Ljava/lang/Float;

    .line 165
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 168
    move-result v2

    .line 169
    invoke-virtual {v0, p0, v2, v1}, Lo/Ca;->a(Lo/W2;FZ)V

    .line 172
    goto :goto_4

    .line 173
    :cond_8
    iget-object p2, p0, Lo/W2;->i:Landroid/view/accessibility/AccessibilityManager;

    .line 175
    if-eqz p2, :cond_a

    .line 177
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    .line 180
    move-result p2

    .line 181
    if-eqz p2, :cond_a

    .line 183
    iget-object p2, p0, Lo/W2;->j:Lo/T2;

    .line 185
    if-nez p2, :cond_9

    .line 187
    new-instance p2, Lo/T2;

    .line 189
    invoke-direct {p2, p0}, Lo/T2;-><init>(Lo/W2;)V

    .line 192
    iput-object p2, p0, Lo/W2;->j:Lo/T2;

    .line 194
    goto :goto_5

    .line 195
    :cond_9
    invoke-virtual {p0, p2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 198
    :goto_5
    iget-object p2, p0, Lo/W2;->j:Lo/T2;

    .line 200
    iput p1, p2, Lo/T2;->b:I

    .line 202
    const-wide/16 v2, 0xc8

    .line 204
    invoke-virtual {p0, p2, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 207
    :cond_a
    return v1
.end method

.method public setActiveThumbIndex(I)V
    .locals 0

    .line 1
    iput p1, p0, Lo/W2;->T:I

    .line 3
    return-void
.end method

.method public varargs setCustomThumbDrawablesForValues([I)V
    .locals 4

    .line 1
    array-length v0, p1

    new-array v0, v0, [Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    .line 2
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    aget v3, p1, v1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0, v0}, Lo/W2;->setCustomThumbDrawablesForValues([Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public varargs setCustomThumbDrawablesForValues([Landroid/graphics/drawable/Drawable;)V
    .locals 4

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lo/W2;->p0:Landroid/graphics/drawable/Drawable;

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/W2;->q0:Ljava/util/List;

    .line 7
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 8
    iget-object v3, p0, Lo/W2;->q0:Ljava/util/List;

    .line 9
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 10
    invoke-virtual {p0, v2}, Lo/W2;->a(Landroid/graphics/drawable/Drawable;)V

    .line 11
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 4
    if-eqz p1, :cond_0

    .line 6
    const/4 p1, 0x0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 p1, 0x2

    .line 9
    :goto_0
    const/4 v0, 0x0

    .line 10
    invoke-virtual {p0, p1, v0}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 13
    return-void
.end method

.method public abstract setHaloRadius(I)V
.end method

.method public abstract setHaloTintList(Landroid/content/res/ColorStateList;)V
.end method

.method public abstract setLabelBehavior(I)V
.end method

.method public setSeparationUnit(I)V
    .locals 0

    .line 1
    iput p1, p0, Lo/W2;->s0:I

    .line 3
    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lo/W2;->f0:Z

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    .line 9
    return-void
.end method

.method public abstract setThumbElevation(F)V
.end method

.method public abstract setThumbHeight(I)V
.end method

.method public abstract setThumbStrokeColor(Landroid/content/res/ColorStateList;)V
.end method

.method public abstract setThumbStrokeWidth(F)V
.end method

.method public abstract setThumbTrackGapSize(I)V
.end method

.method public abstract setThumbWidth(I)V
.end method

.method public abstract setTickActiveRadius(I)V
.end method

.method public abstract setTickActiveTintList(Landroid/content/res/ColorStateList;)V
.end method

.method public abstract setTickInactiveRadius(I)V
.end method

.method public abstract setTickInactiveTintList(Landroid/content/res/ColorStateList;)V
.end method

.method public abstract setTrackActiveTintList(Landroid/content/res/ColorStateList;)V
.end method

.method public abstract setTrackHeight(I)V
.end method

.method public abstract setTrackInactiveTintList(Landroid/content/res/ColorStateList;)V
.end method

.method public abstract setTrackInsideCornerSize(I)V
.end method

.method public abstract setTrackStopIndicatorSize(I)V
.end method

.method public setValues(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, v0}, Lo/W2;->r(Ljava/util/ArrayList;)V

    return-void
.end method

.method public varargs setValues([Ljava/lang/Float;)V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-static {v0, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 3
    invoke-virtual {p0, v0}, Lo/W2;->r(Ljava/util/ArrayList;)V

    return-void
.end method

.method public final t()V
    .locals 6

    .line 1
    iget v0, p0, Lo/W2;->r0:F

    .line 3
    iget v1, p0, Lo/W2;->V:F

    .line 5
    const/4 v2, 0x0

    .line 6
    cmpl-float v2, v1, v2

    .line 8
    if-lez v2, :cond_0

    .line 10
    iget v2, p0, Lo/W2;->R:F

    .line 12
    iget v3, p0, Lo/W2;->Q:F

    .line 14
    sub-float/2addr v2, v3

    .line 15
    div-float/2addr v2, v1

    .line 16
    float-to-int v1, v2

    .line 17
    int-to-float v2, v1

    .line 18
    mul-float/2addr v0, v2

    .line 19
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 22
    move-result v0

    .line 23
    int-to-double v2, v0

    .line 24
    int-to-double v0, v1

    .line 25
    div-double/2addr v2, v0

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    float-to-double v2, v0

    .line 28
    :goto_0
    invoke-virtual {p0}, Lo/W2;->k()Z

    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_1

    .line 34
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 36
    sub-double v2, v0, v2

    .line 38
    :cond_1
    iget v0, p0, Lo/W2;->R:F

    .line 40
    iget v1, p0, Lo/W2;->Q:F

    .line 42
    sub-float/2addr v0, v1

    .line 43
    float-to-double v4, v0

    .line 44
    mul-double/2addr v2, v4

    .line 45
    float-to-double v0, v1

    .line 46
    add-double/2addr v2, v0

    .line 47
    double-to-float v0, v2

    .line 48
    iget v1, p0, Lo/W2;->T:I

    .line 50
    invoke-virtual {p0, v1, v0}, Lo/W2;->s(IF)Z

    .line 53
    return-void
.end method

.method public final u(ILandroid/graphics/Rect;)V
    .locals 5

    .line 1
    iget v0, p0, Lo/W2;->D:I

    .line 3
    invoke-virtual {p0}, Lo/W2;->getValues()Ljava/util/List;

    .line 6
    move-result-object v1

    .line 7
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Ljava/lang/Float;

    .line 13
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 16
    move-result p1

    .line 17
    invoke-virtual {p0, p1}, Lo/W2;->o(F)F

    .line 20
    move-result p1

    .line 21
    iget v1, p0, Lo/W2;->d0:I

    .line 23
    int-to-float v1, v1

    .line 24
    mul-float/2addr p1, v1

    .line 25
    float-to-int p1, p1

    .line 26
    add-int/2addr v0, p1

    .line 27
    invoke-virtual {p0}, Lo/W2;->b()I

    .line 30
    move-result p1

    .line 31
    iget v1, p0, Lo/W2;->E:I

    .line 33
    div-int/lit8 v1, v1, 0x2

    .line 35
    iget v2, p0, Lo/W2;->y:I

    .line 37
    div-int/lit8 v2, v2, 0x2

    .line 39
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    .line 42
    move-result v1

    .line 43
    iget v2, p0, Lo/W2;->F:I

    .line 45
    div-int/lit8 v2, v2, 0x2

    .line 47
    iget v3, p0, Lo/W2;->y:I

    .line 49
    div-int/lit8 v3, v3, 0x2

    .line 51
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    .line 54
    move-result v2

    .line 55
    sub-int v3, v0, v1

    .line 57
    sub-int v4, p1, v2

    .line 59
    add-int/2addr v0, v1

    .line 60
    add-int/2addr p1, v2

    .line 61
    invoke-virtual {p2, v3, v4, v0, p1}, Landroid/graphics/Rect;->set(IIII)V

    .line 64
    return-void
.end method

.method public final v()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 4
    move-result-object v0

    .line 5
    instance-of v0, v0, Landroid/graphics/drawable/RippleDrawable;

    .line 7
    if-eqz v0, :cond_0

    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 12
    move-result v0

    .line 13
    if-lez v0, :cond_0

    .line 15
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 18
    move-result-object v0

    .line 19
    instance-of v1, v0, Landroid/graphics/drawable/RippleDrawable;

    .line 21
    if-eqz v1, :cond_0

    .line 23
    iget-object v1, p0, Lo/W2;->S:Ljava/util/ArrayList;

    .line 25
    iget v2, p0, Lo/W2;->U:I

    .line 27
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Ljava/lang/Float;

    .line 33
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    .line 36
    move-result v1

    .line 37
    invoke-virtual {p0, v1}, Lo/W2;->o(F)F

    .line 40
    move-result v1

    .line 41
    iget v2, p0, Lo/W2;->d0:I

    .line 43
    int-to-float v2, v2

    .line 44
    mul-float/2addr v1, v2

    .line 45
    iget v2, p0, Lo/W2;->D:I

    .line 47
    int-to-float v2, v2

    .line 48
    add-float/2addr v1, v2

    .line 49
    float-to-int v1, v1

    .line 50
    invoke-virtual {p0}, Lo/W2;->b()I

    .line 53
    move-result v2

    .line 54
    iget v3, p0, Lo/W2;->G:I

    .line 56
    sub-int v4, v1, v3

    .line 58
    sub-int v5, v2, v3

    .line 60
    add-int/2addr v1, v3

    .line 61
    add-int/2addr v2, v3

    .line 62
    invoke-virtual {v0, v4, v5, v1, v2}, Landroid/graphics/drawable/Drawable;->setHotspotBounds(IIII)V

    .line 65
    :cond_0
    return-void
.end method

.method public final w()V
    .locals 3

    .line 1
    iget v0, p0, Lo/W2;->B:I

    .line 3
    if-eqz v0, :cond_3

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eq v0, v1, :cond_3

    .line 8
    const/4 v1, 0x2

    .line 9
    if-eq v0, v1, :cond_2

    .line 11
    const/4 v1, 0x3

    .line 12
    if-ne v0, v1, :cond_1

    .line 14
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_0

    .line 20
    new-instance v0, Landroid/graphics/Rect;

    .line 22
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 25
    invoke-static {p0}, Lo/Ng;->f(Landroid/view/View;)Landroid/view/ViewGroup;

    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v1, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 32
    invoke-virtual {p0, v0}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_0

    .line 38
    invoke-virtual {p0}, Lo/W2;->e()V

    .line 41
    goto :goto_0

    .line 42
    :cond_0
    invoke-virtual {p0}, Lo/W2;->f()V

    .line 45
    goto :goto_0

    .line 46
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 48
    new-instance v1, Ljava/lang/StringBuilder;

    .line 50
    const-string v2, "Unexpected labelBehavior: "

    .line 52
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 55
    iget v2, p0, Lo/W2;->B:I

    .line 57
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 60
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    move-result-object v1

    .line 64
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 67
    throw v0

    .line 68
    :cond_2
    invoke-virtual {p0}, Lo/W2;->f()V

    .line 71
    goto :goto_0

    .line 72
    :cond_3
    iget v0, p0, Lo/W2;->T:I

    .line 74
    const/4 v1, -0x1

    .line 75
    if-eq v0, v1, :cond_4

    .line 77
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    .line 80
    move-result v0

    .line 81
    if-eqz v0, :cond_4

    .line 83
    invoke-virtual {p0}, Lo/W2;->e()V

    .line 86
    goto :goto_0

    .line 87
    :cond_4
    invoke-virtual {p0}, Lo/W2;->f()V

    .line 90
    :goto_0
    return-void
.end method

.method public final x(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/RectF;I)V
    .locals 10

    .line 1
    const/4 v0, 0x3

    .line 2
    const/4 v1, 0x1

    .line 3
    const/4 v2, 0x2

    .line 4
    iget v3, p0, Lo/W2;->C:I

    .line 6
    int-to-float v3, v3

    .line 7
    const/high16 v4, 0x40000000    # 2.0f

    .line 9
    div-float/2addr v3, v4

    .line 10
    invoke-static {p4}, Lo/Ve;->C(I)I

    .line 13
    move-result v5

    .line 14
    if-eq v5, v1, :cond_2

    .line 16
    if-eq v5, v2, :cond_1

    .line 18
    if-eq v5, v0, :cond_0

    .line 20
    :goto_0
    move v5, v3

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    iget v3, p0, Lo/W2;->L:I

    .line 24
    int-to-float v3, v3

    .line 25
    goto :goto_0

    .line 26
    :cond_1
    iget v5, p0, Lo/W2;->L:I

    .line 28
    int-to-float v5, v5

    .line 29
    move v9, v5

    .line 30
    move v5, v3

    .line 31
    move v3, v9

    .line 32
    goto :goto_1

    .line 33
    :cond_2
    iget v5, p0, Lo/W2;->L:I

    .line 35
    int-to-float v5, v5

    .line 36
    :goto_1
    sget-object v6, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 38
    invoke-virtual {p2, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 41
    sget-object v6, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    .line 43
    invoke-virtual {p2, v6}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 46
    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 49
    iget-object v6, p0, Lo/W2;->l0:Landroid/graphics/Path;

    .line 51
    invoke-virtual {v6}, Landroid/graphics/Path;->reset()V

    .line 54
    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    .line 57
    move-result v7

    .line 58
    add-float v8, v3, v5

    .line 60
    cmpl-float v7, v7, v8

    .line 62
    if-ltz v7, :cond_3

    .line 64
    const/16 p4, 0x8

    .line 66
    new-array p4, p4, [F

    .line 68
    const/4 v4, 0x0

    .line 69
    aput v3, p4, v4

    .line 71
    aput v3, p4, v1

    .line 73
    aput v5, p4, v2

    .line 75
    aput v5, p4, v0

    .line 77
    const/4 v0, 0x4

    .line 78
    aput v5, p4, v0

    .line 80
    const/4 v0, 0x5

    .line 81
    aput v5, p4, v0

    .line 83
    const/4 v0, 0x6

    .line 84
    aput v3, p4, v0

    .line 86
    const/4 v0, 0x7

    .line 87
    aput v3, p4, v0

    .line 89
    sget-object v0, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    .line 91
    invoke-virtual {v6, p3, p4, v0}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 94
    invoke-virtual {p1, v6, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 97
    goto :goto_3

    .line 98
    :cond_3
    invoke-static {v3, v5}, Ljava/lang/Math;->min(FF)F

    .line 101
    move-result v0

    .line 102
    invoke-static {v3, v5}, Ljava/lang/Math;->max(FF)F

    .line 105
    move-result v3

    .line 106
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 109
    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    .line 111
    invoke-virtual {v6, p3, v0, v0, v5}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 114
    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 117
    invoke-static {p4}, Lo/Ve;->C(I)I

    .line 120
    move-result p4

    .line 121
    iget-object v0, p0, Lo/W2;->n0:Landroid/graphics/RectF;

    .line 123
    if-eq p4, v1, :cond_5

    .line 125
    if-eq p4, v2, :cond_4

    .line 127
    invoke-virtual {p3}, Landroid/graphics/RectF;->centerX()F

    .line 130
    move-result p4

    .line 131
    sub-float/2addr p4, v3

    .line 132
    iget v1, p3, Landroid/graphics/RectF;->top:F

    .line 134
    invoke-virtual {p3}, Landroid/graphics/RectF;->centerX()F

    .line 137
    move-result v2

    .line 138
    add-float/2addr v2, v3

    .line 139
    iget p3, p3, Landroid/graphics/RectF;->bottom:F

    .line 141
    invoke-virtual {v0, p4, v1, v2, p3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 144
    goto :goto_2

    .line 145
    :cond_4
    iget p4, p3, Landroid/graphics/RectF;->right:F

    .line 147
    mul-float/2addr v4, v3

    .line 148
    sub-float v1, p4, v4

    .line 150
    iget v2, p3, Landroid/graphics/RectF;->top:F

    .line 152
    iget p3, p3, Landroid/graphics/RectF;->bottom:F

    .line 154
    invoke-virtual {v0, v1, v2, p4, p3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 157
    goto :goto_2

    .line 158
    :cond_5
    iget p4, p3, Landroid/graphics/RectF;->left:F

    .line 160
    iget v1, p3, Landroid/graphics/RectF;->top:F

    .line 162
    mul-float/2addr v4, v3

    .line 163
    add-float/2addr v4, p4

    .line 164
    iget p3, p3, Landroid/graphics/RectF;->bottom:F

    .line 166
    invoke-virtual {v0, p4, v1, v4, p3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 169
    :goto_2
    invoke-virtual {p1, v0, v3, v3, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 172
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 175
    :goto_3
    return-void
.end method

.method public final y()V
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 8
    move-result v1

    .line 9
    add-int/2addr v1, v0

    .line 10
    iget v0, p0, Lo/W2;->C:I

    .line 12
    add-int/2addr v0, v1

    .line 13
    iget v1, p0, Lo/W2;->F:I

    .line 15
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 18
    move-result v2

    .line 19
    add-int/2addr v2, v1

    .line 20
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 23
    move-result v1

    .line 24
    add-int/2addr v1, v2

    .line 25
    iget v2, p0, Lo/W2;->z:I

    .line 27
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    .line 30
    move-result v0

    .line 31
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    .line 34
    move-result v0

    .line 35
    iget v1, p0, Lo/W2;->A:I

    .line 37
    const/4 v2, 0x0

    .line 38
    const/4 v3, 0x1

    .line 39
    if-ne v0, v1, :cond_0

    .line 41
    move v0, v2

    .line 42
    goto :goto_0

    .line 43
    :cond_0
    iput v0, p0, Lo/W2;->A:I

    .line 45
    move v0, v3

    .line 46
    :goto_0
    iget v1, p0, Lo/W2;->E:I

    .line 48
    div-int/lit8 v1, v1, 0x2

    .line 50
    iget v4, p0, Lo/W2;->t:I

    .line 52
    sub-int/2addr v1, v4

    .line 53
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    .line 56
    move-result v1

    .line 57
    iget v4, p0, Lo/W2;->C:I

    .line 59
    iget v5, p0, Lo/W2;->u:I

    .line 61
    sub-int/2addr v4, v5

    .line 62
    div-int/lit8 v4, v4, 0x2

    .line 64
    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    .line 67
    move-result v4

    .line 68
    iget v5, p0, Lo/W2;->b0:I

    .line 70
    iget v6, p0, Lo/W2;->v:I

    .line 72
    sub-int/2addr v5, v6

    .line 73
    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    .line 76
    move-result v5

    .line 77
    iget v6, p0, Lo/W2;->c0:I

    .line 79
    iget v7, p0, Lo/W2;->w:I

    .line 81
    sub-int/2addr v6, v7

    .line 82
    invoke-static {v6, v2}, Ljava/lang/Math;->max(II)I

    .line 85
    move-result v6

    .line 86
    iget v7, p0, Lo/W2;->s:I

    .line 88
    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    .line 91
    move-result v1

    .line 92
    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    .line 95
    move-result v4

    .line 96
    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    .line 99
    move-result v1

    .line 100
    add-int/2addr v1, v7

    .line 101
    iget v4, p0, Lo/W2;->D:I

    .line 103
    if-ne v4, v1, :cond_1

    .line 105
    goto :goto_1

    .line 106
    :cond_1
    iput v1, p0, Lo/W2;->D:I

    .line 108
    sget-object v1, Lo/Dh;->a:Ljava/util/WeakHashMap;

    .line 110
    invoke-virtual {p0}, Landroid/view/View;->isLaidOut()Z

    .line 113
    move-result v1

    .line 114
    if-eqz v1, :cond_2

    .line 116
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 119
    move-result v1

    .line 120
    iget v4, p0, Lo/W2;->D:I

    .line 122
    mul-int/lit8 v4, v4, 0x2

    .line 124
    sub-int/2addr v1, v4

    .line 125
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    .line 128
    move-result v1

    .line 129
    iput v1, p0, Lo/W2;->d0:I

    .line 131
    invoke-virtual {p0}, Lo/W2;->l()V

    .line 134
    :cond_2
    move v2, v3

    .line 135
    :goto_1
    if-eqz v0, :cond_3

    .line 137
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 140
    goto :goto_2

    .line 141
    :cond_3
    if-eqz v2, :cond_4

    .line 143
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    .line 146
    :cond_4
    :goto_2
    return-void
.end method

.method public final z()V
    .locals 8

    .line 1
    iget-boolean v0, p0, Lo/W2;->f0:Z

    .line 3
    if-eqz v0, :cond_10

    .line 5
    iget v0, p0, Lo/W2;->Q:F

    .line 7
    iget v1, p0, Lo/W2;->R:F

    .line 9
    cmpl-float v2, v0, v1

    .line 11
    const-string v3, ")"

    .line 13
    if-gez v2, :cond_f

    .line 15
    cmpg-float v0, v1, v0

    .line 17
    if-lez v0, :cond_e

    .line 19
    iget v0, p0, Lo/W2;->V:F

    .line 21
    const/4 v2, 0x0

    .line 22
    cmpl-float v0, v0, v2

    .line 24
    if-lez v0, :cond_1

    .line 26
    invoke-virtual {p0, v1}, Lo/W2;->A(F)Z

    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_0

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 35
    iget v1, p0, Lo/W2;->V:F

    .line 37
    iget v2, p0, Lo/W2;->Q:F

    .line 39
    iget v3, p0, Lo/W2;->R:F

    .line 41
    new-instance v4, Ljava/lang/StringBuilder;

    .line 43
    const-string v5, "The stepSize("

    .line 45
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 48
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 51
    const-string v1, ") must be 0, or a factor of the valueFrom("

    .line 53
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 59
    const-string v1, ")-valueTo("

    .line 61
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 67
    const-string v1, ") range"

    .line 69
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    move-result-object v1

    .line 76
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 79
    throw v0

    .line 80
    :cond_1
    :goto_0
    iget-object v0, p0, Lo/W2;->S:Ljava/util/ArrayList;

    .line 82
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 85
    move-result-object v0

    .line 86
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 89
    move-result v1

    .line 90
    const-string v4, ") when using stepSize("

    .line 92
    if-eqz v1, :cond_5

    .line 94
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 97
    move-result-object v1

    .line 98
    check-cast v1, Ljava/lang/Float;

    .line 100
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    .line 103
    move-result v5

    .line 104
    iget v6, p0, Lo/W2;->Q:F

    .line 106
    cmpg-float v5, v5, v6

    .line 108
    if-ltz v5, :cond_4

    .line 110
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    .line 113
    move-result v5

    .line 114
    iget v6, p0, Lo/W2;->R:F

    .line 116
    cmpl-float v5, v5, v6

    .line 118
    if-gtz v5, :cond_4

    .line 120
    iget v5, p0, Lo/W2;->V:F

    .line 122
    cmpl-float v5, v5, v2

    .line 124
    if-lez v5, :cond_2

    .line 126
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    .line 129
    move-result v5

    .line 130
    invoke-virtual {p0, v5}, Lo/W2;->A(F)Z

    .line 133
    move-result v5

    .line 134
    if-eqz v5, :cond_3

    .line 136
    goto :goto_1

    .line 137
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 139
    iget v2, p0, Lo/W2;->Q:F

    .line 141
    iget v5, p0, Lo/W2;->V:F

    .line 143
    new-instance v6, Ljava/lang/StringBuilder;

    .line 145
    const-string v7, "Value("

    .line 147
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 150
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 153
    const-string v1, ") must be equal to valueFrom("

    .line 155
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 161
    const-string v1, ") plus a multiple of stepSize("

    .line 163
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 169
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 175
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 181
    move-result-object v1

    .line 182
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 185
    throw v0

    .line 186
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 188
    iget v2, p0, Lo/W2;->Q:F

    .line 190
    iget v4, p0, Lo/W2;->R:F

    .line 192
    new-instance v5, Ljava/lang/StringBuilder;

    .line 194
    const-string v6, "Slider value("

    .line 196
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 199
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 202
    const-string v1, ") must be greater or equal to valueFrom("

    .line 204
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 210
    const-string v1, "), and lower or equal to valueTo("

    .line 212
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 218
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 224
    move-result-object v1

    .line 225
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 228
    throw v0

    .line 229
    :cond_5
    invoke-virtual {p0}, Lo/W2;->getMinSeparation()F

    .line 232
    move-result v0

    .line 233
    cmpg-float v1, v0, v2

    .line 235
    const-string v5, "minSeparation("

    .line 237
    if-ltz v1, :cond_d

    .line 239
    iget v1, p0, Lo/W2;->V:F

    .line 241
    cmpl-float v6, v1, v2

    .line 243
    if-lez v6, :cond_8

    .line 245
    cmpl-float v6, v0, v2

    .line 247
    if-lez v6, :cond_8

    .line 249
    iget v6, p0, Lo/W2;->s0:I

    .line 251
    const/4 v7, 0x1

    .line 252
    if-ne v6, v7, :cond_7

    .line 254
    cmpg-float v1, v0, v1

    .line 256
    if-ltz v1, :cond_6

    .line 258
    float-to-double v6, v0

    .line 259
    invoke-virtual {p0, v6, v7}, Lo/W2;->i(D)Z

    .line 262
    move-result v1

    .line 263
    if-eqz v1, :cond_6

    .line 265
    goto :goto_2

    .line 266
    :cond_6
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 268
    iget v2, p0, Lo/W2;->V:F

    .line 270
    new-instance v6, Ljava/lang/StringBuilder;

    .line 272
    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 275
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 278
    const-string v0, ") must be greater or equal and a multiple of stepSize("

    .line 280
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 286
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 292
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 298
    move-result-object v0

    .line 299
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 302
    throw v1

    .line 303
    :cond_7
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 305
    iget v2, p0, Lo/W2;->V:F

    .line 307
    new-instance v4, Ljava/lang/StringBuilder;

    .line 309
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 312
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 315
    const-string v0, ") cannot be set as a dimension when using stepSize("

    .line 317
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 323
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 329
    move-result-object v0

    .line 330
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 333
    throw v1

    .line 334
    :cond_8
    :goto_2
    iget v0, p0, Lo/W2;->V:F

    .line 336
    cmpl-float v1, v0, v2

    .line 338
    if-nez v1, :cond_9

    .line 340
    goto :goto_3

    .line 341
    :cond_9
    float-to-int v1, v0

    .line 342
    int-to-float v1, v1

    .line 343
    cmpl-float v1, v1, v0

    .line 345
    const-string v2, "). Using floats can have rounding errors which may result in incorrect values. Instead, consider using integers with a custom LabelFormatter to display the value correctly."

    .line 347
    const-string v3, "W2"

    .line 349
    if-eqz v1, :cond_a

    .line 351
    new-instance v1, Ljava/lang/StringBuilder;

    .line 353
    const-string v4, "Floating point value used for stepSize("

    .line 355
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 358
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 361
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 364
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 367
    move-result-object v0

    .line 368
    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    :cond_a
    iget v0, p0, Lo/W2;->Q:F

    .line 373
    float-to-int v1, v0

    .line 374
    int-to-float v1, v1

    .line 375
    cmpl-float v1, v1, v0

    .line 377
    if-eqz v1, :cond_b

    .line 379
    new-instance v1, Ljava/lang/StringBuilder;

    .line 381
    const-string v4, "Floating point value used for valueFrom("

    .line 383
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 386
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 389
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 392
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 395
    move-result-object v0

    .line 396
    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    :cond_b
    iget v0, p0, Lo/W2;->R:F

    .line 401
    float-to-int v1, v0

    .line 402
    int-to-float v1, v1

    .line 403
    cmpl-float v1, v1, v0

    .line 405
    if-eqz v1, :cond_c

    .line 407
    new-instance v1, Ljava/lang/StringBuilder;

    .line 409
    const-string v4, "Floating point value used for valueTo("

    .line 411
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 414
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 417
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 420
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 423
    move-result-object v0

    .line 424
    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    :cond_c
    :goto_3
    const/4 v0, 0x0

    .line 428
    iput-boolean v0, p0, Lo/W2;->f0:Z

    .line 430
    goto :goto_4

    .line 431
    :cond_d
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 433
    new-instance v2, Ljava/lang/StringBuilder;

    .line 435
    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 438
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 441
    const-string v0, ") must be greater or equal to 0"

    .line 443
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 446
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 449
    move-result-object v0

    .line 450
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 453
    throw v1

    .line 454
    :cond_e
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 456
    iget v1, p0, Lo/W2;->R:F

    .line 458
    iget v2, p0, Lo/W2;->Q:F

    .line 460
    new-instance v4, Ljava/lang/StringBuilder;

    .line 462
    const-string v5, "valueTo("

    .line 464
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 467
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 470
    const-string v1, ") must be greater than valueFrom("

    .line 472
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 475
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 478
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 481
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 484
    move-result-object v1

    .line 485
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 488
    throw v0

    .line 489
    :cond_f
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 491
    iget v1, p0, Lo/W2;->Q:F

    .line 493
    iget v2, p0, Lo/W2;->R:F

    .line 495
    new-instance v4, Ljava/lang/StringBuilder;

    .line 497
    const-string v5, "valueFrom("

    .line 499
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 502
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 505
    const-string v1, ") must be smaller than valueTo("

    .line 507
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 510
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 513
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 516
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 519
    move-result-object v1

    .line 520
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 523
    throw v0

    .line 524
    :cond_10
    :goto_4
    return-void
.end method
