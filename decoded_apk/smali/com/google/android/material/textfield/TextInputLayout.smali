.class public Lcom/google/android/material/textfield/TextInputLayout;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# static fields
.field public static final C0:[[I


# instance fields
.field public A:Landroid/content/res/ColorStateList;

.field public A0:Z

.field public B:Landroid/content/res/ColorStateList;

.field public B0:Z

.field public C:Z

.field public D:Ljava/lang/CharSequence;

.field public E:Z

.field public F:Lo/eb;

.field public G:Lo/eb;

.field public H:Landroid/graphics/drawable/StateListDrawable;

.field public I:Z

.field public J:Lo/eb;

.field public K:Lo/eb;

.field public L:Lo/Ae;

.field public M:Z

.field public final N:I

.field public O:I

.field public P:I

.field public Q:I

.field public R:I

.field public S:I

.field public T:I

.field public U:I

.field public final V:Landroid/graphics/Rect;

.field public final W:Landroid/graphics/Rect;

.field public final a:Landroid/widget/FrameLayout;

.field public final a0:Landroid/graphics/RectF;

.field public final b:Lo/if;

.field public b0:Landroid/graphics/Typeface;

.field public final c:Lo/b7;

.field public c0:Landroid/graphics/drawable/ColorDrawable;

.field public d:Landroid/widget/EditText;

.field public d0:I

.field public e:Ljava/lang/CharSequence;

.field public final e0:Ljava/util/LinkedHashSet;

.field public f:I

.field public f0:Landroid/graphics/drawable/ColorDrawable;

.field public g:I

.field public g0:I

.field public h:I

.field public h0:Landroid/graphics/drawable/Drawable;

.field public i:I

.field public i0:Landroid/content/res/ColorStateList;

.field public final j:Lo/m9;

.field public j0:Landroid/content/res/ColorStateList;

.field public k:Z

.field public k0:I

.field public l:I

.field public l0:I

.field public m:Z

.field public m0:I

.field public n:Lo/Of;

.field public n0:Landroid/content/res/ColorStateList;

.field public o:Lo/j2;

.field public o0:I

.field public p:I

.field public p0:I

.field public q:I

.field public q0:I

.field public r:Ljava/lang/CharSequence;

.field public r0:I

.field public s:Z

.field public s0:I

.field public t:Lo/j2;

.field public t0:I

.field public u:Landroid/content/res/ColorStateList;

.field public u0:Z

.field public v:I

.field public final v0:Lo/d4;

.field public w:Lo/l7;

.field public w0:Z

.field public x:Lo/l7;

.field public x0:Z

.field public y:Landroid/content/res/ColorStateList;

.field public y0:Landroid/animation/ValueAnimator;

.field public z:Landroid/content/res/ColorStateList;

.field public z0:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const v0, 0x10100a7

    .line 4
    filled-new-array {v0}, [I

    .line 7
    move-result-object v0

    .line 8
    const/4 v1, 0x0

    .line 9
    new-array v1, v1, [I

    .line 11
    filled-new-array {v0, v1}, [[I

    .line 14
    move-result-object v0

    .line 15
    sput-object v0, Lcom/google/android/material/textfield/TextInputLayout;->C0:[[I

    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 3
    move-object/from16 v7, p2

    .line 5
    const v8, 0x7f03046f

    .line 8
    const v9, 0x7f0f033e

    .line 11
    move-object/from16 v1, p1

    .line 13
    invoke-static {v1, v7, v8, v9}, Lo/x9;->j0(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    .line 16
    move-result-object v1

    .line 17
    invoke-direct {v0, v1, v7, v8}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 20
    const/4 v10, -0x1

    .line 21
    iput v10, v0, Lcom/google/android/material/textfield/TextInputLayout;->f:I

    .line 23
    iput v10, v0, Lcom/google/android/material/textfield/TextInputLayout;->g:I

    .line 25
    iput v10, v0, Lcom/google/android/material/textfield/TextInputLayout;->h:I

    .line 27
    iput v10, v0, Lcom/google/android/material/textfield/TextInputLayout;->i:I

    .line 29
    new-instance v1, Lo/m9;

    .line 31
    invoke-direct {v1, v0}, Lo/m9;-><init>(Lcom/google/android/material/textfield/TextInputLayout;)V

    .line 34
    iput-object v1, v0, Lcom/google/android/material/textfield/TextInputLayout;->j:Lo/m9;

    .line 36
    new-instance v1, Lo/Y5;

    .line 38
    const/4 v2, 0x3

    .line 39
    invoke-direct {v1, v2}, Lo/Y5;-><init>(I)V

    .line 42
    iput-object v1, v0, Lcom/google/android/material/textfield/TextInputLayout;->n:Lo/Of;

    .line 44
    new-instance v1, Landroid/graphics/Rect;

    .line 46
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 49
    iput-object v1, v0, Lcom/google/android/material/textfield/TextInputLayout;->V:Landroid/graphics/Rect;

    .line 51
    new-instance v1, Landroid/graphics/Rect;

    .line 53
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 56
    iput-object v1, v0, Lcom/google/android/material/textfield/TextInputLayout;->W:Landroid/graphics/Rect;

    .line 58
    new-instance v1, Landroid/graphics/RectF;

    .line 60
    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    .line 63
    iput-object v1, v0, Lcom/google/android/material/textfield/TextInputLayout;->a0:Landroid/graphics/RectF;

    .line 65
    new-instance v1, Ljava/util/LinkedHashSet;

    .line 67
    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 70
    iput-object v1, v0, Lcom/google/android/material/textfield/TextInputLayout;->e0:Ljava/util/LinkedHashSet;

    .line 72
    new-instance v1, Lo/d4;

    .line 74
    invoke-direct {v1, v0}, Lo/d4;-><init>(Lcom/google/android/material/textfield/TextInputLayout;)V

    .line 77
    iput-object v1, v0, Lcom/google/android/material/textfield/TextInputLayout;->v0:Lo/d4;

    .line 79
    const/4 v11, 0x0

    .line 80
    iput-boolean v11, v0, Lcom/google/android/material/textfield/TextInputLayout;->B0:Z

    .line 82
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 85
    move-result-object v12

    .line 86
    const/4 v13, 0x1

    .line 87
    invoke-virtual {v0, v13}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 90
    invoke-virtual {v0, v11}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 93
    invoke-virtual {v0, v13}, Landroid/view/ViewGroup;->setAddStatesFromChildren(Z)V

    .line 96
    new-instance v14, Landroid/widget/FrameLayout;

    .line 98
    invoke-direct {v14, v12}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 101
    iput-object v14, v0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/FrameLayout;

    .line 103
    invoke-virtual {v14, v13}, Landroid/view/ViewGroup;->setAddStatesFromChildren(Z)V

    .line 106
    sget-object v2, Lo/Q0;->a:Landroid/view/animation/LinearInterpolator;

    .line 108
    iput-object v2, v1, Lo/d4;->Q:Landroid/view/animation/LinearInterpolator;

    .line 110
    invoke-virtual {v1, v11}, Lo/d4;->h(Z)V

    .line 113
    iput-object v2, v1, Lo/d4;->P:Landroid/view/animation/LinearInterpolator;

    .line 115
    invoke-virtual {v1, v11}, Lo/d4;->h(Z)V

    .line 118
    iget v2, v1, Lo/d4;->g:I

    .line 120
    const v3, 0x800033

    .line 123
    if-eq v2, v3, :cond_0

    .line 125
    iput v3, v1, Lo/d4;->g:I

    .line 127
    invoke-virtual {v1, v11}, Lo/d4;->h(Z)V

    .line 130
    :cond_0
    sget-object v15, Lo/fd;->C:[I

    .line 132
    const/16 v6, 0x16

    .line 134
    const/16 v5, 0x14

    .line 136
    const/16 v4, 0x28

    .line 138
    const/16 v3, 0x2d

    .line 140
    const/16 v2, 0x31

    .line 142
    filled-new-array {v6, v5, v4, v3, v2}, [I

    .line 145
    move-result-object v16

    .line 146
    const v1, 0x7f0f033e

    .line 149
    invoke-static {v12, v7, v8, v1}, Lo/x9;->j(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 152
    move/from16 p1, v1

    .line 154
    move-object v1, v12

    .line 155
    move-object/from16 v2, p2

    .line 157
    move-object v3, v15

    .line 158
    move v4, v8

    .line 159
    move/from16 v5, p1

    .line 161
    move-object/from16 v6, v16

    .line 163
    invoke-static/range {v1 .. v6}, Lo/x9;->q(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)V

    .line 166
    new-instance v1, Lo/s2;

    .line 168
    move/from16 v2, p1

    .line 170
    invoke-virtual {v12, v7, v15, v8, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 173
    move-result-object v2

    .line 174
    invoke-direct {v1, v12, v2}, Lo/s2;-><init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    .line 177
    new-instance v3, Lo/if;

    .line 179
    invoke-direct {v3, v0, v1}, Lo/if;-><init>(Lcom/google/android/material/textfield/TextInputLayout;Lo/s2;)V

    .line 182
    iput-object v3, v0, Lcom/google/android/material/textfield/TextInputLayout;->b:Lo/if;

    .line 184
    const/16 v4, 0x30

    .line 186
    invoke-virtual {v2, v4, v13}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 189
    move-result v4

    .line 190
    iput-boolean v4, v0, Lcom/google/android/material/textfield/TextInputLayout;->C:Z

    .line 192
    const/4 v4, 0x4

    .line 193
    invoke-virtual {v2, v4}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    .line 196
    move-result-object v4

    .line 197
    invoke-virtual {v0, v4}, Lcom/google/android/material/textfield/TextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    .line 200
    const/16 v4, 0x2f

    .line 202
    invoke-virtual {v2, v4, v13}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 205
    move-result v4

    .line 206
    iput-boolean v4, v0, Lcom/google/android/material/textfield/TextInputLayout;->x0:Z

    .line 208
    const/16 v4, 0x2a

    .line 210
    invoke-virtual {v2, v4, v13}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 213
    move-result v4

    .line 214
    iput-boolean v4, v0, Lcom/google/android/material/textfield/TextInputLayout;->w0:Z

    .line 216
    const/4 v4, 0x6

    .line 217
    invoke-virtual {v2, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 220
    move-result v5

    .line 221
    if-eqz v5, :cond_1

    .line 223
    invoke-virtual {v2, v4, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 226
    move-result v4

    .line 227
    invoke-virtual {v0, v4}, Lcom/google/android/material/textfield/TextInputLayout;->setMinEms(I)V

    .line 230
    goto :goto_0

    .line 231
    :cond_1
    const/4 v4, 0x3

    .line 232
    invoke-virtual {v2, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 235
    move-result v5

    .line 236
    if-eqz v5, :cond_2

    .line 238
    invoke-virtual {v2, v4, v10}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 241
    move-result v4

    .line 242
    invoke-virtual {v0, v4}, Lcom/google/android/material/textfield/TextInputLayout;->setMinWidth(I)V

    .line 245
    :cond_2
    :goto_0
    const/4 v4, 0x5

    .line 246
    invoke-virtual {v2, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 249
    move-result v5

    .line 250
    const/4 v6, 0x2

    .line 251
    if-eqz v5, :cond_3

    .line 253
    invoke-virtual {v2, v4, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 256
    move-result v4

    .line 257
    invoke-virtual {v0, v4}, Lcom/google/android/material/textfield/TextInputLayout;->setMaxEms(I)V

    .line 260
    goto :goto_1

    .line 261
    :cond_3
    invoke-virtual {v2, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 264
    move-result v4

    .line 265
    if-eqz v4, :cond_4

    .line 267
    invoke-virtual {v2, v6, v10}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 270
    move-result v4

    .line 271
    invoke-virtual {v0, v4}, Lcom/google/android/material/textfield/TextInputLayout;->setMaxWidth(I)V

    .line 274
    :cond_4
    :goto_1
    invoke-static {v12, v7, v8, v9}, Lo/Ae;->b(Landroid/content/Context;Landroid/util/AttributeSet;II)Lo/ze;

    .line 277
    move-result-object v4

    .line 278
    invoke-virtual {v4}, Lo/ze;->a()Lo/Ae;

    .line 281
    move-result-object v4

    .line 282
    iput-object v4, v0, Lcom/google/android/material/textfield/TextInputLayout;->L:Lo/Ae;

    .line 284
    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 287
    move-result-object v4

    .line 288
    const v5, 0x7f0602fe

    .line 291
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 294
    move-result v4

    .line 295
    iput v4, v0, Lcom/google/android/material/textfield/TextInputLayout;->N:I

    .line 297
    const/16 v4, 0x9

    .line 299
    invoke-virtual {v2, v4, v11}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    .line 302
    move-result v4

    .line 303
    iput v4, v0, Lcom/google/android/material/textfield/TextInputLayout;->P:I

    .line 305
    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 308
    move-result-object v4

    .line 309
    const v5, 0x7f0602ff

    .line 312
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 315
    move-result v4

    .line 316
    const/16 v5, 0x10

    .line 318
    invoke-virtual {v2, v5, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 321
    move-result v4

    .line 322
    iput v4, v0, Lcom/google/android/material/textfield/TextInputLayout;->R:I

    .line 324
    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 327
    move-result-object v4

    .line 328
    const v5, 0x7f060300

    .line 331
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 334
    move-result v4

    .line 335
    const/16 v5, 0x11

    .line 337
    invoke-virtual {v2, v5, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 340
    move-result v4

    .line 341
    iput v4, v0, Lcom/google/android/material/textfield/TextInputLayout;->S:I

    .line 343
    iget v4, v0, Lcom/google/android/material/textfield/TextInputLayout;->R:I

    .line 345
    iput v4, v0, Lcom/google/android/material/textfield/TextInputLayout;->Q:I

    .line 347
    const/16 v4, 0xd

    .line 349
    const/high16 v5, -0x40800000    # -1.0f

    .line 351
    invoke-virtual {v2, v4, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 354
    move-result v4

    .line 355
    const/16 v7, 0xc

    .line 357
    invoke-virtual {v2, v7, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 360
    move-result v7

    .line 361
    const/16 v8, 0xa

    .line 363
    invoke-virtual {v2, v8, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 366
    move-result v8

    .line 367
    const/16 v9, 0xb

    .line 369
    invoke-virtual {v2, v9, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 372
    move-result v5

    .line 373
    iget-object v9, v0, Lcom/google/android/material/textfield/TextInputLayout;->L:Lo/Ae;

    .line 375
    invoke-virtual {v9}, Lo/Ae;->e()Lo/ze;

    .line 378
    move-result-object v9

    .line 379
    const/4 v15, 0x0

    .line 380
    cmpl-float v16, v4, v15

    .line 382
    if-ltz v16, :cond_5

    .line 384
    new-instance v6, Lo/g;

    .line 386
    invoke-direct {v6, v4}, Lo/g;-><init>(F)V

    .line 389
    iput-object v6, v9, Lo/ze;->e:Lo/d5;

    .line 391
    :cond_5
    cmpl-float v4, v7, v15

    .line 393
    if-ltz v4, :cond_6

    .line 395
    new-instance v4, Lo/g;

    .line 397
    invoke-direct {v4, v7}, Lo/g;-><init>(F)V

    .line 400
    iput-object v4, v9, Lo/ze;->f:Lo/d5;

    .line 402
    :cond_6
    cmpl-float v4, v8, v15

    .line 404
    if-ltz v4, :cond_7

    .line 406
    new-instance v4, Lo/g;

    .line 408
    invoke-direct {v4, v8}, Lo/g;-><init>(F)V

    .line 411
    iput-object v4, v9, Lo/ze;->g:Lo/d5;

    .line 413
    :cond_7
    cmpl-float v4, v5, v15

    .line 415
    if-ltz v4, :cond_8

    .line 417
    new-instance v4, Lo/g;

    .line 419
    invoke-direct {v4, v5}, Lo/g;-><init>(F)V

    .line 422
    iput-object v4, v9, Lo/ze;->h:Lo/d5;

    .line 424
    :cond_8
    invoke-virtual {v9}, Lo/ze;->a()Lo/Ae;

    .line 427
    move-result-object v4

    .line 428
    iput-object v4, v0, Lcom/google/android/material/textfield/TextInputLayout;->L:Lo/Ae;

    .line 430
    const/4 v4, 0x7

    .line 431
    invoke-static {v12, v1, v4}, Lo/Ha;->G(Landroid/content/Context;Lo/s2;I)Landroid/content/res/ColorStateList;

    .line 434
    move-result-object v4

    .line 435
    if-eqz v4, :cond_a

    .line 437
    invoke-virtual {v4}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    .line 440
    move-result v5

    .line 441
    iput v5, v0, Lcom/google/android/material/textfield/TextInputLayout;->o0:I

    .line 443
    iput v5, v0, Lcom/google/android/material/textfield/TextInputLayout;->U:I

    .line 445
    invoke-virtual {v4}, Landroid/content/res/ColorStateList;->isStateful()Z

    .line 448
    move-result v5

    .line 449
    const v6, 0x1010367

    .line 452
    const v7, -0x101009e

    .line 455
    if-eqz v5, :cond_9

    .line 457
    filled-new-array {v7}, [I

    .line 460
    move-result-object v5

    .line 461
    invoke-virtual {v4, v5, v10}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    .line 464
    move-result v5

    .line 465
    iput v5, v0, Lcom/google/android/material/textfield/TextInputLayout;->p0:I

    .line 467
    const v5, 0x101009c

    .line 470
    const v7, 0x101009e

    .line 473
    filled-new-array {v5, v7}, [I

    .line 476
    move-result-object v5

    .line 477
    invoke-virtual {v4, v5, v10}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    .line 480
    move-result v5

    .line 481
    iput v5, v0, Lcom/google/android/material/textfield/TextInputLayout;->q0:I

    .line 483
    filled-new-array {v6, v7}, [I

    .line 486
    move-result-object v5

    .line 487
    invoke-virtual {v4, v5, v10}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    .line 490
    move-result v4

    .line 491
    iput v4, v0, Lcom/google/android/material/textfield/TextInputLayout;->r0:I

    .line 493
    goto :goto_2

    .line 494
    :cond_9
    iget v4, v0, Lcom/google/android/material/textfield/TextInputLayout;->o0:I

    .line 496
    iput v4, v0, Lcom/google/android/material/textfield/TextInputLayout;->q0:I

    .line 498
    const v4, 0x7f0502d3

    .line 501
    invoke-static {v12, v4}, Lo/L1;->v(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 504
    move-result-object v4

    .line 505
    filled-new-array {v7}, [I

    .line 508
    move-result-object v5

    .line 509
    invoke-virtual {v4, v5, v10}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    .line 512
    move-result v5

    .line 513
    iput v5, v0, Lcom/google/android/material/textfield/TextInputLayout;->p0:I

    .line 515
    filled-new-array {v6}, [I

    .line 518
    move-result-object v5

    .line 519
    invoke-virtual {v4, v5, v10}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    .line 522
    move-result v4

    .line 523
    iput v4, v0, Lcom/google/android/material/textfield/TextInputLayout;->r0:I

    .line 525
    goto :goto_2

    .line 526
    :cond_a
    iput v11, v0, Lcom/google/android/material/textfield/TextInputLayout;->U:I

    .line 528
    iput v11, v0, Lcom/google/android/material/textfield/TextInputLayout;->o0:I

    .line 530
    iput v11, v0, Lcom/google/android/material/textfield/TextInputLayout;->p0:I

    .line 532
    iput v11, v0, Lcom/google/android/material/textfield/TextInputLayout;->q0:I

    .line 534
    iput v11, v0, Lcom/google/android/material/textfield/TextInputLayout;->r0:I

    .line 536
    :goto_2
    invoke-virtual {v2, v13}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 539
    move-result v4

    .line 540
    if-eqz v4, :cond_b

    .line 542
    invoke-virtual {v1, v13}, Lo/s2;->n(I)Landroid/content/res/ColorStateList;

    .line 545
    move-result-object v4

    .line 546
    iput-object v4, v0, Lcom/google/android/material/textfield/TextInputLayout;->j0:Landroid/content/res/ColorStateList;

    .line 548
    iput-object v4, v0, Lcom/google/android/material/textfield/TextInputLayout;->i0:Landroid/content/res/ColorStateList;

    .line 550
    :cond_b
    const/16 v4, 0xe

    .line 552
    invoke-static {v12, v1, v4}, Lo/Ha;->G(Landroid/content/Context;Lo/s2;I)Landroid/content/res/ColorStateList;

    .line 555
    move-result-object v5

    .line 556
    invoke-virtual {v2, v4, v11}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 559
    move-result v4

    .line 560
    iput v4, v0, Lcom/google/android/material/textfield/TextInputLayout;->m0:I

    .line 562
    const v4, 0x7f0502ee

    .line 565
    invoke-virtual {v12, v4}, Landroid/content/Context;->getColor(I)I

    .line 568
    move-result v4

    .line 569
    iput v4, v0, Lcom/google/android/material/textfield/TextInputLayout;->k0:I

    .line 571
    const v4, 0x7f0502ef

    .line 574
    invoke-virtual {v12, v4}, Landroid/content/Context;->getColor(I)I

    .line 577
    move-result v4

    .line 578
    iput v4, v0, Lcom/google/android/material/textfield/TextInputLayout;->s0:I

    .line 580
    const v4, 0x7f0502f2

    .line 583
    invoke-virtual {v12, v4}, Landroid/content/Context;->getColor(I)I

    .line 586
    move-result v4

    .line 587
    iput v4, v0, Lcom/google/android/material/textfield/TextInputLayout;->l0:I

    .line 589
    if-eqz v5, :cond_c

    .line 591
    invoke-virtual {v0, v5}, Lcom/google/android/material/textfield/TextInputLayout;->setBoxStrokeColorStateList(Landroid/content/res/ColorStateList;)V

    .line 594
    :cond_c
    const/16 v4, 0xf

    .line 596
    invoke-virtual {v2, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 599
    move-result v5

    .line 600
    if-eqz v5, :cond_d

    .line 602
    invoke-static {v12, v1, v4}, Lo/Ha;->G(Landroid/content/Context;Lo/s2;I)Landroid/content/res/ColorStateList;

    .line 605
    move-result-object v4

    .line 606
    invoke-virtual {v0, v4}, Lcom/google/android/material/textfield/TextInputLayout;->setBoxStrokeErrorColor(Landroid/content/res/ColorStateList;)V

    .line 609
    :cond_d
    const/16 v4, 0x31

    .line 611
    invoke-virtual {v2, v4, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 614
    move-result v5

    .line 615
    if-eq v5, v10, :cond_e

    .line 617
    invoke-virtual {v2, v4, v11}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 620
    move-result v4

    .line 621
    invoke-virtual {v0, v4}, Lcom/google/android/material/textfield/TextInputLayout;->setHintTextAppearance(I)V

    .line 624
    :cond_e
    const/16 v4, 0x18

    .line 626
    invoke-virtual {v1, v4}, Lo/s2;->n(I)Landroid/content/res/ColorStateList;

    .line 629
    move-result-object v4

    .line 630
    iput-object v4, v0, Lcom/google/android/material/textfield/TextInputLayout;->A:Landroid/content/res/ColorStateList;

    .line 632
    const/16 v4, 0x19

    .line 634
    invoke-virtual {v1, v4}, Lo/s2;->n(I)Landroid/content/res/ColorStateList;

    .line 637
    move-result-object v4

    .line 638
    iput-object v4, v0, Lcom/google/android/material/textfield/TextInputLayout;->B:Landroid/content/res/ColorStateList;

    .line 640
    const/16 v4, 0x28

    .line 642
    invoke-virtual {v2, v4, v11}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 645
    move-result v4

    .line 646
    const/16 v5, 0x23

    .line 648
    invoke-virtual {v2, v5}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    .line 651
    move-result-object v5

    .line 652
    const/16 v6, 0x22

    .line 654
    invoke-virtual {v2, v6, v13}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 657
    move-result v6

    .line 658
    const/16 v7, 0x24

    .line 660
    invoke-virtual {v2, v7, v11}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 663
    move-result v7

    .line 664
    const/16 v8, 0x2d

    .line 666
    invoke-virtual {v2, v8, v11}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 669
    move-result v8

    .line 670
    const/16 v9, 0x2c

    .line 672
    invoke-virtual {v2, v9, v11}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 675
    move-result v9

    .line 676
    const/16 v12, 0x2b

    .line 678
    invoke-virtual {v2, v12}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    .line 681
    move-result-object v12

    .line 682
    const/16 v15, 0x39

    .line 684
    invoke-virtual {v2, v15, v11}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 687
    move-result v15

    .line 688
    const/16 v13, 0x38

    .line 690
    invoke-virtual {v2, v13}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    .line 693
    move-result-object v13

    .line 694
    const/16 v10, 0x12

    .line 696
    invoke-virtual {v2, v10, v11}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 699
    move-result v10

    .line 700
    const/16 v11, 0x13

    .line 702
    move-object/from16 p2, v12

    .line 704
    const/4 v12, -0x1

    .line 705
    invoke-virtual {v2, v11, v12}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 708
    move-result v11

    .line 709
    invoke-virtual {v0, v11}, Lcom/google/android/material/textfield/TextInputLayout;->setCounterMaxLength(I)V

    .line 712
    const/4 v11, 0x0

    .line 713
    const/16 v12, 0x16

    .line 715
    invoke-virtual {v2, v12, v11}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 718
    move-result v12

    .line 719
    iput v12, v0, Lcom/google/android/material/textfield/TextInputLayout;->q:I

    .line 721
    const/16 v12, 0x14

    .line 723
    invoke-virtual {v2, v12, v11}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 726
    move-result v12

    .line 727
    iput v12, v0, Lcom/google/android/material/textfield/TextInputLayout;->p:I

    .line 729
    const/16 v12, 0x8

    .line 731
    invoke-virtual {v2, v12, v11}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 734
    move-result v12

    .line 735
    invoke-virtual {v0, v12}, Lcom/google/android/material/textfield/TextInputLayout;->setBoxBackgroundMode(I)V

    .line 738
    invoke-virtual {v0, v5}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorContentDescription(Ljava/lang/CharSequence;)V

    .line 741
    invoke-virtual {v0, v6}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorAccessibilityLiveRegion(I)V

    .line 744
    iget v5, v0, Lcom/google/android/material/textfield/TextInputLayout;->p:I

    .line 746
    invoke-virtual {v0, v5}, Lcom/google/android/material/textfield/TextInputLayout;->setCounterOverflowTextAppearance(I)V

    .line 749
    invoke-virtual {v0, v8}, Lcom/google/android/material/textfield/TextInputLayout;->setHelperTextTextAppearance(I)V

    .line 752
    invoke-virtual {v0, v4}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorTextAppearance(I)V

    .line 755
    iget v4, v0, Lcom/google/android/material/textfield/TextInputLayout;->q:I

    .line 757
    invoke-virtual {v0, v4}, Lcom/google/android/material/textfield/TextInputLayout;->setCounterTextAppearance(I)V

    .line 760
    invoke-virtual {v0, v13}, Lcom/google/android/material/textfield/TextInputLayout;->setPlaceholderText(Ljava/lang/CharSequence;)V

    .line 763
    invoke-virtual {v0, v15}, Lcom/google/android/material/textfield/TextInputLayout;->setPlaceholderTextAppearance(I)V

    .line 766
    const/16 v4, 0x29

    .line 768
    invoke-virtual {v2, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 771
    move-result v5

    .line 772
    if-eqz v5, :cond_f

    .line 774
    invoke-virtual {v1, v4}, Lo/s2;->n(I)Landroid/content/res/ColorStateList;

    .line 777
    move-result-object v4

    .line 778
    invoke-virtual {v0, v4}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorTextColor(Landroid/content/res/ColorStateList;)V

    .line 781
    :cond_f
    const/16 v4, 0x2e

    .line 783
    invoke-virtual {v2, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 786
    move-result v5

    .line 787
    if-eqz v5, :cond_10

    .line 789
    invoke-virtual {v1, v4}, Lo/s2;->n(I)Landroid/content/res/ColorStateList;

    .line 792
    move-result-object v4

    .line 793
    invoke-virtual {v0, v4}, Lcom/google/android/material/textfield/TextInputLayout;->setHelperTextColor(Landroid/content/res/ColorStateList;)V

    .line 796
    :cond_10
    const/16 v4, 0x32

    .line 798
    invoke-virtual {v2, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 801
    move-result v5

    .line 802
    if-eqz v5, :cond_11

    .line 804
    invoke-virtual {v1, v4}, Lo/s2;->n(I)Landroid/content/res/ColorStateList;

    .line 807
    move-result-object v4

    .line 808
    invoke-virtual {v0, v4}, Lcom/google/android/material/textfield/TextInputLayout;->setHintTextColor(Landroid/content/res/ColorStateList;)V

    .line 811
    :cond_11
    const/16 v4, 0x17

    .line 813
    invoke-virtual {v2, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 816
    move-result v5

    .line 817
    if-eqz v5, :cond_12

    .line 819
    invoke-virtual {v1, v4}, Lo/s2;->n(I)Landroid/content/res/ColorStateList;

    .line 822
    move-result-object v4

    .line 823
    invoke-virtual {v0, v4}, Lcom/google/android/material/textfield/TextInputLayout;->setCounterTextColor(Landroid/content/res/ColorStateList;)V

    .line 826
    :cond_12
    const/16 v4, 0x15

    .line 828
    invoke-virtual {v2, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 831
    move-result v5

    .line 832
    if-eqz v5, :cond_13

    .line 834
    invoke-virtual {v1, v4}, Lo/s2;->n(I)Landroid/content/res/ColorStateList;

    .line 837
    move-result-object v4

    .line 838
    invoke-virtual {v0, v4}, Lcom/google/android/material/textfield/TextInputLayout;->setCounterOverflowTextColor(Landroid/content/res/ColorStateList;)V

    .line 841
    :cond_13
    const/16 v4, 0x3a

    .line 843
    invoke-virtual {v2, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 846
    move-result v5

    .line 847
    if-eqz v5, :cond_14

    .line 849
    invoke-virtual {v1, v4}, Lo/s2;->n(I)Landroid/content/res/ColorStateList;

    .line 852
    move-result-object v4

    .line 853
    invoke-virtual {v0, v4}, Lcom/google/android/material/textfield/TextInputLayout;->setPlaceholderTextColor(Landroid/content/res/ColorStateList;)V

    .line 856
    :cond_14
    new-instance v4, Lo/b7;

    .line 858
    invoke-direct {v4, v0, v1}, Lo/b7;-><init>(Lcom/google/android/material/textfield/TextInputLayout;Lo/s2;)V

    .line 861
    iput-object v4, v0, Lcom/google/android/material/textfield/TextInputLayout;->c:Lo/b7;

    .line 863
    const/4 v5, 0x0

    .line 864
    const/4 v6, 0x1

    .line 865
    invoke-virtual {v2, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 868
    move-result v2

    .line 869
    invoke-virtual {v1}, Lo/s2;->A()V

    .line 872
    const/4 v1, 0x2

    .line 873
    invoke-virtual {v0, v1}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 876
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 878
    const/16 v5, 0x1a

    .line 880
    if-lt v1, v5, :cond_15

    .line 882
    if-lt v1, v5, :cond_15

    .line 884
    invoke-static {v0, v6}, Lo/xh;->b(Landroid/view/View;I)V

    .line 887
    :cond_15
    invoke-virtual {v14, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 890
    invoke-virtual {v14, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 893
    invoke-virtual {v0, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 896
    invoke-virtual {v0, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setEnabled(Z)V

    .line 899
    invoke-virtual {v0, v9}, Lcom/google/android/material/textfield/TextInputLayout;->setHelperTextEnabled(Z)V

    .line 902
    invoke-virtual {v0, v7}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorEnabled(Z)V

    .line 905
    invoke-virtual {v0, v10}, Lcom/google/android/material/textfield/TextInputLayout;->setCounterEnabled(Z)V

    .line 908
    move-object/from16 v1, p2

    .line 910
    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setHelperText(Ljava/lang/CharSequence;)V

    .line 913
    return-void
.end method

.method private getEditTextBoxBackground()Landroid/graphics/drawable/Drawable;
    .locals 10

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x2

    .line 4
    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    .line 6
    instance-of v4, v3, Landroid/widget/AutoCompleteTextView;

    .line 8
    if-eqz v4, :cond_4

    .line 10
    invoke-static {v3}, Lo/L1;->F(Landroid/widget/EditText;)Z

    .line 13
    move-result v3

    .line 14
    if-eqz v3, :cond_0

    .line 16
    goto/16 :goto_1

    .line 18
    :cond_0
    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    .line 20
    const v4, 0x7f0300f8

    .line 23
    invoke-static {v3, v4}, Lo/Ha;->E(Landroid/view/View;I)I

    .line 26
    move-result v3

    .line 27
    iget v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->O:I

    .line 29
    sget-object v5, Lcom/google/android/material/textfield/TextInputLayout;->C0:[[I

    .line 31
    const v6, 0x3dcccccd    # 0.1f

    .line 34
    if-ne v4, v2, :cond_2

    .line 36
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 39
    move-result-object v4

    .line 40
    iget-object v7, p0, Lcom/google/android/material/textfield/TextInputLayout;->F:Lo/eb;

    .line 42
    const v8, 0x7f030120

    .line 45
    const-string v9, "TextInputLayout"

    .line 47
    invoke-static {v4, v8, v9}, Lo/Ha;->q0(Landroid/content/Context;ILjava/lang/String;)Landroid/util/TypedValue;

    .line 50
    move-result-object v8

    .line 51
    iget v9, v8, Landroid/util/TypedValue;->resourceId:I

    .line 53
    if-eqz v9, :cond_1

    .line 55
    invoke-virtual {v4, v9}, Landroid/content/Context;->getColor(I)I

    .line 58
    move-result v4

    .line 59
    goto :goto_0

    .line 60
    :cond_1
    iget v4, v8, Landroid/util/TypedValue;->data:I

    .line 62
    :goto_0
    new-instance v8, Lo/eb;

    .line 64
    iget-object v9, v7, Lo/eb;->a:Lo/db;

    .line 66
    iget-object v9, v9, Lo/db;->a:Lo/Ae;

    .line 68
    invoke-direct {v8, v9}, Lo/eb;-><init>(Lo/Ae;)V

    .line 71
    invoke-static {v3, v4, v6}, Lo/Ha;->e0(IIF)I

    .line 74
    move-result v3

    .line 75
    filled-new-array {v3, v1}, [I

    .line 78
    move-result-object v6

    .line 79
    new-instance v9, Landroid/content/res/ColorStateList;

    .line 81
    invoke-direct {v9, v5, v6}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 84
    invoke-virtual {v8, v9}, Lo/eb;->k(Landroid/content/res/ColorStateList;)V

    .line 87
    invoke-virtual {v8, v4}, Lo/eb;->setTint(I)V

    .line 90
    filled-new-array {v3, v4}, [I

    .line 93
    move-result-object v3

    .line 94
    new-instance v4, Landroid/content/res/ColorStateList;

    .line 96
    invoke-direct {v4, v5, v3}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 99
    new-instance v3, Lo/eb;

    .line 101
    iget-object v5, v7, Lo/eb;->a:Lo/db;

    .line 103
    iget-object v5, v5, Lo/db;->a:Lo/Ae;

    .line 105
    invoke-direct {v3, v5}, Lo/eb;-><init>(Lo/Ae;)V

    .line 108
    const/4 v5, -0x1

    .line 109
    invoke-virtual {v3, v5}, Lo/eb;->setTint(I)V

    .line 112
    new-instance v5, Landroid/graphics/drawable/RippleDrawable;

    .line 114
    invoke-direct {v5, v4, v8, v3}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 117
    new-array v2, v2, [Landroid/graphics/drawable/Drawable;

    .line 119
    aput-object v5, v2, v1

    .line 121
    aput-object v7, v2, v0

    .line 123
    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    .line 125
    invoke-direct {v0, v2}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 128
    return-object v0

    .line 129
    :cond_2
    if-ne v4, v0, :cond_3

    .line 131
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->F:Lo/eb;

    .line 133
    iget v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->U:I

    .line 135
    invoke-static {v3, v1, v6}, Lo/Ha;->e0(IIF)I

    .line 138
    move-result v2

    .line 139
    filled-new-array {v2, v1}, [I

    .line 142
    move-result-object v1

    .line 143
    new-instance v2, Landroid/content/res/ColorStateList;

    .line 145
    invoke-direct {v2, v5, v1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 148
    new-instance v1, Landroid/graphics/drawable/RippleDrawable;

    .line 150
    invoke-direct {v1, v2, v0, v0}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 153
    return-object v1

    .line 154
    :cond_3
    const/4 v0, 0x0

    .line 155
    return-object v0

    .line 156
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->F:Lo/eb;

    .line 158
    return-object v0
.end method

.method private getOrCreateFilledDropDownMenuBackground()Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->H:Landroid/graphics/drawable/StateListDrawable;

    .line 3
    if-nez v0, :cond_0

    .line 5
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    .line 7
    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 10
    iput-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->H:Landroid/graphics/drawable/StateListDrawable;

    .line 12
    const v1, 0x10100aa

    .line 15
    filled-new-array {v1}, [I

    .line 18
    move-result-object v1

    .line 19
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getOrCreateOutlinedDropDownMenuBackground()Landroid/graphics/drawable/Drawable;

    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 26
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->H:Landroid/graphics/drawable/StateListDrawable;

    .line 28
    const/4 v1, 0x0

    .line 29
    new-array v2, v1, [I

    .line 31
    invoke-virtual {p0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->f(Z)Lo/eb;

    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {v0, v2, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 38
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->H:Landroid/graphics/drawable/StateListDrawable;

    .line 40
    return-object v0
.end method

.method private getOrCreateOutlinedDropDownMenuBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->G:Lo/eb;

    .line 3
    if-nez v0, :cond_0

    .line 5
    const/4 v0, 0x1

    .line 6
    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/TextInputLayout;->f(Z)Lo/eb;

    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->G:Lo/eb;

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->G:Lo/eb;

    .line 14
    return-object v0
.end method

.method public static k(Landroid/view/ViewGroup;Z)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    :goto_0
    if-ge v1, v0, :cond_1

    .line 8
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 11
    move-result-object v2

    .line 12
    invoke-virtual {v2, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 15
    instance-of v3, v2, Landroid/view/ViewGroup;

    .line 17
    if-eqz v3, :cond_0

    .line 19
    check-cast v2, Landroid/view/ViewGroup;

    .line 21
    invoke-static {v2, p1}, Lcom/google/android/material/textfield/TextInputLayout;->k(Landroid/view/ViewGroup;Z)V

    .line 24
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    return-void
.end method

.method private setEditText(Landroid/widget/EditText;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    .line 3
    if-nez v0, :cond_e

    .line 5
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getEndIconMode()I

    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x3

    .line 10
    if-eq v0, v1, :cond_0

    .line 12
    instance-of v0, p1, Lcom/google/android/material/textfield/TextInputEditText;

    .line 14
    if-nez v0, :cond_0

    .line 16
    const-string v0, "TextInputLayout"

    .line 18
    const-string v1, "EditText added is not a TextInputEditText. Please switch to using that class instead."

    .line 20
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    :cond_0
    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    .line 25
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->f:I

    .line 27
    const/4 v1, -0x1

    .line 28
    if-eq v0, v1, :cond_1

    .line 30
    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setMinEms(I)V

    .line 33
    goto :goto_0

    .line 34
    :cond_1
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->h:I

    .line 36
    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setMinWidth(I)V

    .line 39
    :goto_0
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->g:I

    .line 41
    if-eq v0, v1, :cond_2

    .line 43
    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setMaxEms(I)V

    .line 46
    goto :goto_1

    .line 47
    :cond_2
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->i:I

    .line 49
    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setMaxWidth(I)V

    .line 52
    :goto_1
    const/4 v0, 0x0

    .line 53
    iput-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->I:Z

    .line 55
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->i()V

    .line 58
    new-instance v1, Lo/Nf;

    .line 60
    invoke-direct {v1, p0}, Lo/Nf;-><init>(Lcom/google/android/material/textfield/TextInputLayout;)V

    .line 63
    invoke-virtual {p0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setTextInputAccessibilityDelegate(Lo/Nf;)V

    .line 66
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    .line 68
    invoke-virtual {v1}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    .line 71
    move-result-object v1

    .line 72
    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->v0:Lo/d4;

    .line 74
    invoke-virtual {v2, v1}, Lo/d4;->m(Landroid/graphics/Typeface;)V

    .line 77
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    .line 79
    invoke-virtual {v1}, Landroid/widget/TextView;->getTextSize()F

    .line 82
    move-result v1

    .line 83
    iget v3, v2, Lo/d4;->h:F

    .line 85
    cmpl-float v3, v3, v1

    .line 87
    if-eqz v3, :cond_3

    .line 89
    iput v1, v2, Lo/d4;->h:F

    .line 91
    invoke-virtual {v2, v0}, Lo/d4;->h(Z)V

    .line 94
    :cond_3
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 96
    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    .line 98
    invoke-virtual {v3}, Landroid/widget/TextView;->getLetterSpacing()F

    .line 101
    move-result v3

    .line 102
    iget v4, v2, Lo/d4;->W:F

    .line 104
    cmpl-float v4, v4, v3

    .line 106
    if-eqz v4, :cond_4

    .line 108
    iput v3, v2, Lo/d4;->W:F

    .line 110
    invoke-virtual {v2, v0}, Lo/d4;->h(Z)V

    .line 113
    :cond_4
    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    .line 115
    invoke-virtual {v3}, Landroid/widget/TextView;->getGravity()I

    .line 118
    move-result v3

    .line 119
    and-int/lit8 v4, v3, -0x71

    .line 121
    or-int/lit8 v4, v4, 0x30

    .line 123
    iget v5, v2, Lo/d4;->g:I

    .line 125
    if-eq v5, v4, :cond_5

    .line 127
    iput v4, v2, Lo/d4;->g:I

    .line 129
    invoke-virtual {v2, v0}, Lo/d4;->h(Z)V

    .line 132
    :cond_5
    iget v4, v2, Lo/d4;->f:I

    .line 134
    if-eq v4, v3, :cond_6

    .line 136
    iput v3, v2, Lo/d4;->f:I

    .line 138
    invoke-virtual {v2, v0}, Lo/d4;->h(Z)V

    .line 141
    :cond_6
    sget-object v2, Lo/Dh;->a:Ljava/util/WeakHashMap;

    .line 143
    invoke-virtual {p1}, Landroid/view/View;->getMinimumHeight()I

    .line 146
    move-result v2

    .line 147
    iput v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->t0:I

    .line 149
    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    .line 151
    new-instance v3, Lo/Mf;

    .line 153
    invoke-direct {v3, p0, p1}, Lo/Mf;-><init>(Lcom/google/android/material/textfield/TextInputLayout;Landroid/widget/EditText;)V

    .line 156
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 159
    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->i0:Landroid/content/res/ColorStateList;

    .line 161
    if-nez v2, :cond_7

    .line 163
    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    .line 165
    invoke-virtual {v2}, Landroid/widget/TextView;->getHintTextColors()Landroid/content/res/ColorStateList;

    .line 168
    move-result-object v2

    .line 169
    iput-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->i0:Landroid/content/res/ColorStateList;

    .line 171
    :cond_7
    iget-boolean v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->C:Z

    .line 173
    const/4 v3, 0x1

    .line 174
    if-eqz v2, :cond_9

    .line 176
    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->D:Ljava/lang/CharSequence;

    .line 178
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 181
    move-result v2

    .line 182
    if-eqz v2, :cond_8

    .line 184
    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    .line 186
    invoke-virtual {v2}, Landroid/widget/TextView;->getHint()Ljava/lang/CharSequence;

    .line 189
    move-result-object v2

    .line 190
    iput-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->e:Ljava/lang/CharSequence;

    .line 192
    invoke-virtual {p0, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    .line 195
    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    .line 197
    const/4 v4, 0x0

    .line 198
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 201
    :cond_8
    iput-boolean v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->E:Z

    .line 203
    :cond_9
    const/16 v2, 0x1d

    .line 205
    if-lt v1, v2, :cond_a

    .line 207
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->p()V

    .line 210
    :cond_a
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->o:Lo/j2;

    .line 212
    if-eqz v1, :cond_b

    .line 214
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    .line 216
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 219
    move-result-object v1

    .line 220
    invoke-virtual {p0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->n(Landroid/text/Editable;)V

    .line 223
    :cond_b
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->r()V

    .line 226
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->j:Lo/m9;

    .line 228
    invoke-virtual {v1}, Lo/m9;->b()V

    .line 231
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->b:Lo/if;

    .line 233
    invoke-virtual {v1}, Landroid/view/View;->bringToFront()V

    .line 236
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->c:Lo/b7;

    .line 238
    invoke-virtual {v1}, Landroid/view/View;->bringToFront()V

    .line 241
    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->e0:Ljava/util/LinkedHashSet;

    .line 243
    invoke-virtual {v2}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 246
    move-result-object v2

    .line 247
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 250
    move-result v4

    .line 251
    if-eqz v4, :cond_c

    .line 253
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 256
    move-result-object v4

    .line 257
    check-cast v4, Lo/Z6;

    .line 259
    invoke-virtual {v4, p0}, Lo/Z6;->a(Lcom/google/android/material/textfield/TextInputLayout;)V

    .line 262
    goto :goto_2

    .line 263
    :cond_c
    invoke-virtual {v1}, Lo/b7;->m()V

    .line 266
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    .line 269
    move-result v1

    .line 270
    if-nez v1, :cond_d

    .line 272
    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 275
    :cond_d
    invoke-virtual {p0, v0, v3}, Lcom/google/android/material/textfield/TextInputLayout;->u(ZZ)V

    .line 278
    return-void

    .line 279
    :cond_e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 281
    const-string v0, "We already have an EditText, can only have one"

    .line 283
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 286
    throw p1
.end method

.method private setHintInternal(Ljava/lang/CharSequence;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->D:Ljava/lang/CharSequence;

    .line 3
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_3

    .line 9
    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->D:Ljava/lang/CharSequence;

    .line 11
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->v0:Lo/d4;

    .line 13
    if-eqz p1, :cond_0

    .line 15
    iget-object v1, v0, Lo/d4;->A:Ljava/lang/CharSequence;

    .line 17
    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_2

    .line 23
    :cond_0
    iput-object p1, v0, Lo/d4;->A:Ljava/lang/CharSequence;

    .line 25
    const/4 p1, 0x0

    .line 26
    iput-object p1, v0, Lo/d4;->B:Ljava/lang/CharSequence;

    .line 28
    iget-object v1, v0, Lo/d4;->E:Landroid/graphics/Bitmap;

    .line 30
    if-eqz v1, :cond_1

    .line 32
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 35
    iput-object p1, v0, Lo/d4;->E:Landroid/graphics/Bitmap;

    .line 37
    :cond_1
    const/4 p1, 0x0

    .line 38
    invoke-virtual {v0, p1}, Lo/d4;->h(Z)V

    .line 41
    :cond_2
    iget-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->u0:Z

    .line 43
    if-nez p1, :cond_3

    .line 45
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->j()V

    .line 48
    :cond_3
    return-void
.end method

.method private setPlaceholderTextEnabled(Z)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->s:Z

    .line 3
    if-ne v0, p1, :cond_0

    .line 5
    return-void

    .line 6
    :cond_0
    if-eqz p1, :cond_1

    .line 8
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->t:Lo/j2;

    .line 10
    if-eqz v0, :cond_3

    .line 12
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/FrameLayout;

    .line 14
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 17
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->t:Lo/j2;

    .line 19
    const/4 v1, 0x0

    .line 20
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 23
    goto :goto_0

    .line 24
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->t:Lo/j2;

    .line 26
    if-eqz v0, :cond_2

    .line 28
    const/16 v1, 0x8

    .line 30
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 33
    :cond_2
    const/4 v0, 0x0

    .line 34
    iput-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->t:Lo/j2;

    .line 36
    :cond_3
    :goto_0
    iput-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->s:Z

    .line 38
    return-void
.end method


# virtual methods
.method public final a(F)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->v0:Lo/d4;

    .line 3
    iget v1, v0, Lo/d4;->b:F

    .line 5
    cmpl-float v1, v1, p1

    .line 7
    if-nez v1, :cond_0

    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->y0:Landroid/animation/ValueAnimator;

    .line 12
    if-nez v1, :cond_1

    .line 14
    new-instance v1, Landroid/animation/ValueAnimator;

    .line 16
    invoke-direct {v1}, Landroid/animation/ValueAnimator;-><init>()V

    .line 19
    iput-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->y0:Landroid/animation/ValueAnimator;

    .line 21
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 24
    move-result-object v2

    .line 25
    sget-object v3, Lo/Q0;->b:Lo/o7;

    .line 27
    const v4, 0x7f03033d

    .line 30
    invoke-static {v2, v4, v3}, Lo/Ha;->p0(Landroid/content/Context;ILandroid/view/animation/Interpolator;)Landroid/animation/TimeInterpolator;

    .line 33
    move-result-object v2

    .line 34
    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 37
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->y0:Landroid/animation/ValueAnimator;

    .line 39
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 42
    move-result-object v2

    .line 43
    const v3, 0x7f030333

    .line 46
    const/16 v4, 0xa7

    .line 48
    invoke-static {v2, v3, v4}, Lo/Ha;->o0(Landroid/content/Context;II)I

    .line 51
    move-result v2

    .line 52
    int-to-long v2, v2

    .line 53
    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 56
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->y0:Landroid/animation/ValueAnimator;

    .line 58
    new-instance v2, Lo/S2;

    .line 60
    const/4 v3, 0x3

    .line 61
    invoke-direct {v2, v3, p0}, Lo/S2;-><init>(ILjava/lang/Object;)V

    .line 64
    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 67
    :cond_1
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->y0:Landroid/animation/ValueAnimator;

    .line 69
    iget v0, v0, Lo/d4;->b:F

    .line 71
    const/4 v2, 0x2

    .line 72
    new-array v2, v2, [F

    .line 74
    const/4 v3, 0x0

    .line 75
    aput v0, v2, v3

    .line 77
    const/4 v0, 0x1

    .line 78
    aput p1, v2, v0

    .line 80
    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 83
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->y0:Landroid/animation/ValueAnimator;

    .line 85
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 88
    return-void
.end method

.method public final addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .line 1
    instance-of v0, p1, Landroid/widget/EditText;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    new-instance p2, Landroid/widget/FrameLayout$LayoutParams;

    .line 7
    invoke-direct {p2, p3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 10
    iget v0, p2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 12
    and-int/lit8 v0, v0, -0x71

    .line 14
    or-int/lit8 v0, v0, 0x10

    .line 16
    iput v0, p2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 18
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/FrameLayout;

    .line 20
    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 23
    invoke-virtual {v0, p3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 26
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->t()V

    .line 29
    check-cast p1, Landroid/widget/EditText;

    .line 31
    invoke-direct {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setEditText(Landroid/widget/EditText;)V

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 38
    :goto_0
    return-void
.end method

.method public final b()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->F:Lo/eb;

    .line 3
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v1, v0, Lo/eb;->a:Lo/db;

    .line 8
    iget-object v1, v1, Lo/db;->a:Lo/Ae;

    .line 10
    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->L:Lo/Ae;

    .line 12
    if-eq v1, v2, :cond_1

    .line 14
    invoke-virtual {v0, v2}, Lo/eb;->setShapeAppearanceModel(Lo/Ae;)V

    .line 17
    :cond_1
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->O:I

    .line 19
    const/4 v1, 0x2

    .line 20
    const/4 v2, -0x1

    .line 21
    if-ne v0, v1, :cond_2

    .line 23
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->Q:I

    .line 25
    if-le v0, v2, :cond_2

    .line 27
    iget v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->T:I

    .line 29
    if-eqz v1, :cond_2

    .line 31
    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->F:Lo/eb;

    .line 33
    int-to-float v0, v0

    .line 34
    iget-object v4, v3, Lo/eb;->a:Lo/db;

    .line 36
    iput v0, v4, Lo/db;->j:F

    .line 38
    invoke-virtual {v3}, Lo/eb;->invalidateSelf()V

    .line 41
    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 44
    move-result-object v0

    .line 45
    invoke-virtual {v3, v0}, Lo/eb;->m(Landroid/content/res/ColorStateList;)V

    .line 48
    :cond_2
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->U:I

    .line 50
    iget v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->O:I

    .line 52
    const/4 v3, 0x1

    .line 53
    if-ne v1, v3, :cond_3

    .line 55
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 58
    move-result-object v0

    .line 59
    const v1, 0x7f030120

    .line 62
    const/4 v3, 0x0

    .line 63
    invoke-static {v0, v1, v3}, Lo/Ha;->D(Landroid/content/Context;II)I

    .line 66
    move-result v0

    .line 67
    iget v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->U:I

    .line 69
    invoke-static {v1, v0}, Lo/m4;->b(II)I

    .line 72
    move-result v0

    .line 73
    :cond_3
    iput v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->U:I

    .line 75
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->F:Lo/eb;

    .line 77
    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 80
    move-result-object v0

    .line 81
    invoke-virtual {v1, v0}, Lo/eb;->k(Landroid/content/res/ColorStateList;)V

    .line 84
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->J:Lo/eb;

    .line 86
    if-eqz v0, :cond_7

    .line 88
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->K:Lo/eb;

    .line 90
    if-nez v1, :cond_4

    .line 92
    goto :goto_1

    .line 93
    :cond_4
    iget v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->Q:I

    .line 95
    if-le v1, v2, :cond_6

    .line 97
    iget v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->T:I

    .line 99
    if-eqz v1, :cond_6

    .line 101
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    .line 103
    invoke-virtual {v1}, Landroid/view/View;->isFocused()Z

    .line 106
    move-result v1

    .line 107
    if-eqz v1, :cond_5

    .line 109
    iget v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->k0:I

    .line 111
    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 114
    move-result-object v1

    .line 115
    goto :goto_0

    .line 116
    :cond_5
    iget v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->T:I

    .line 118
    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 121
    move-result-object v1

    .line 122
    :goto_0
    invoke-virtual {v0, v1}, Lo/eb;->k(Landroid/content/res/ColorStateList;)V

    .line 125
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->K:Lo/eb;

    .line 127
    iget v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->T:I

    .line 129
    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 132
    move-result-object v1

    .line 133
    invoke-virtual {v0, v1}, Lo/eb;->k(Landroid/content/res/ColorStateList;)V

    .line 136
    :cond_6
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 139
    :cond_7
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->s()V

    .line 142
    return-void
.end method

.method public final c()I
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->C:Z

    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 6
    return v1

    .line 7
    :cond_0
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->O:I

    .line 9
    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->v0:Lo/d4;

    .line 11
    if-eqz v0, :cond_2

    .line 13
    const/4 v3, 0x2

    .line 14
    if-eq v0, v3, :cond_1

    .line 16
    return v1

    .line 17
    :cond_1
    invoke-virtual {v2}, Lo/d4;->d()F

    .line 20
    move-result v0

    .line 21
    const/high16 v1, 0x40000000    # 2.0f

    .line 23
    div-float/2addr v0, v1

    .line 24
    :goto_0
    float-to-int v0, v0

    .line 25
    return v0

    .line 26
    :cond_2
    invoke-virtual {v2}, Lo/d4;->d()F

    .line 29
    move-result v0

    .line 30
    goto :goto_0
.end method

.method public final d()Lo/l7;
    .locals 4

    .line 1
    new-instance v0, Lo/l7;

    .line 3
    invoke-direct {v0}, Lo/l7;-><init>()V

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 9
    move-result-object v1

    .line 10
    const v2, 0x7f030335

    .line 13
    const/16 v3, 0x57

    .line 15
    invoke-static {v1, v2, v3}, Lo/Ha;->o0(Landroid/content/Context;II)I

    .line 18
    move-result v1

    .line 19
    int-to-long v1, v1

    .line 20
    iput-wide v1, v0, Lo/ug;->c:J

    .line 22
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 25
    move-result-object v1

    .line 26
    sget-object v2, Lo/Q0;->a:Landroid/view/animation/LinearInterpolator;

    .line 28
    const v3, 0x7f03033f

    .line 31
    invoke-static {v1, v3, v2}, Lo/Ha;->p0(Landroid/content/Context;ILandroid/view/animation/Interpolator;)Landroid/animation/TimeInterpolator;

    .line 34
    move-result-object v1

    .line 35
    iput-object v1, v0, Lo/ug;->d:Landroid/animation/TimeInterpolator;

    .line 37
    return-object v0
.end method

.method public final dispatchProvideAutofillStructure(Landroid/view/ViewStructure;I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    .line 3
    if-nez v0, :cond_0

    .line 5
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->dispatchProvideAutofillStructure(Landroid/view/ViewStructure;I)V

    .line 8
    return-void

    .line 9
    :cond_0
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->e:Ljava/lang/CharSequence;

    .line 11
    const/4 v2, 0x0

    .line 12
    if-eqz v1, :cond_1

    .line 14
    iget-boolean v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->E:Z

    .line 16
    iput-boolean v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->E:Z

    .line 18
    invoke-virtual {v0}, Landroid/widget/TextView;->getHint()Ljava/lang/CharSequence;

    .line 21
    move-result-object v0

    .line 22
    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    .line 24
    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->e:Ljava/lang/CharSequence;

    .line 26
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 29
    :try_start_0
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->dispatchProvideAutofillStructure(Landroid/view/ViewStructure;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    .line 34
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 37
    iput-boolean v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->E:Z

    .line 39
    goto :goto_1

    .line 40
    :catchall_0
    move-exception p1

    .line 41
    iget-object p2, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    .line 43
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 46
    iput-boolean v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->E:Z

    .line 48
    throw p1

    .line 49
    :cond_1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getAutofillId()Landroid/view/autofill/AutofillId;

    .line 52
    move-result-object v0

    .line 53
    invoke-virtual {p1, v0}, Landroid/view/ViewStructure;->setAutofillId(Landroid/view/autofill/AutofillId;)V

    .line 56
    invoke-virtual {p0, p1, p2}, Landroid/widget/LinearLayout;->onProvideAutofillStructure(Landroid/view/ViewStructure;I)V

    .line 59
    invoke-virtual {p0, p1, p2}, Landroid/widget/LinearLayout;->onProvideAutofillVirtualStructure(Landroid/view/ViewStructure;I)V

    .line 62
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/FrameLayout;

    .line 64
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 67
    move-result v1

    .line 68
    invoke-virtual {p1, v1}, Landroid/view/ViewStructure;->setChildCount(I)V

    .line 71
    :goto_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 74
    move-result v1

    .line 75
    if-ge v2, v1, :cond_3

    .line 77
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 80
    move-result-object v1

    .line 81
    invoke-virtual {p1, v2}, Landroid/view/ViewStructure;->newChild(I)Landroid/view/ViewStructure;

    .line 84
    move-result-object v3

    .line 85
    invoke-virtual {v1, v3, p2}, Landroid/view/View;->dispatchProvideAutofillStructure(Landroid/view/ViewStructure;I)V

    .line 88
    iget-object v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    .line 90
    if-ne v1, v4, :cond_2

    .line 92
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getHint()Ljava/lang/CharSequence;

    .line 95
    move-result-object v1

    .line 96
    invoke-virtual {v3, v1}, Landroid/view/ViewStructure;->setHint(Ljava/lang/CharSequence;)V

    .line 99
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 101
    goto :goto_0

    .line 102
    :cond_3
    :goto_1
    return-void
.end method

.method public final dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->A0:Z

    .line 4
    invoke-super {p0, p1}, Landroid/view/View;->dispatchRestoreInstanceState(Landroid/util/SparseArray;)V

    .line 7
    const/4 p1, 0x0

    .line 8
    iput-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->A0:Z

    .line 10
    return-void
.end method

.method public final draw(Landroid/graphics/Canvas;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 3
    move-object/from16 v8, p1

    .line 5
    invoke-super/range {p0 .. p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 8
    iget-boolean v1, v0, Lcom/google/android/material/textfield/TextInputLayout;->C:Z

    .line 10
    iget-object v9, v0, Lcom/google/android/material/textfield/TextInputLayout;->v0:Lo/d4;

    .line 12
    if-eqz v1, :cond_7

    .line 14
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 20
    move-result v10

    .line 21
    iget-object v1, v9, Lo/d4;->B:Ljava/lang/CharSequence;

    .line 23
    if-eqz v1, :cond_7

    .line 25
    iget-object v1, v9, Lo/d4;->e:Landroid/graphics/RectF;

    .line 27
    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    .line 30
    move-result v2

    .line 31
    const/4 v3, 0x0

    .line 32
    cmpl-float v2, v2, v3

    .line 34
    if-lez v2, :cond_7

    .line 36
    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    .line 39
    move-result v1

    .line 40
    cmpl-float v1, v1, v3

    .line 42
    if-lez v1, :cond_7

    .line 44
    iget-object v11, v9, Lo/d4;->N:Landroid/text/TextPaint;

    .line 46
    iget v1, v9, Lo/d4;->G:F

    .line 48
    invoke-virtual {v11, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 51
    iget v1, v9, Lo/d4;->p:F

    .line 53
    iget v2, v9, Lo/d4;->q:F

    .line 55
    iget v3, v9, Lo/d4;->F:F

    .line 57
    const/high16 v4, 0x3f800000    # 1.0f

    .line 59
    cmpl-float v4, v3, v4

    .line 61
    if-eqz v4, :cond_0

    .line 63
    invoke-virtual {v8, v3, v3, v1, v2}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 66
    :cond_0
    iget v3, v9, Lo/d4;->d0:I

    .line 68
    const/4 v12, 0x1

    .line 69
    if-le v3, v12, :cond_6

    .line 71
    iget-boolean v3, v9, Lo/d4;->C:Z

    .line 73
    if-eqz v3, :cond_1

    .line 75
    goto/16 :goto_2

    .line 77
    :cond_1
    iget v1, v9, Lo/d4;->p:F

    .line 79
    iget-object v3, v9, Lo/d4;->Y:Landroid/text/StaticLayout;

    .line 81
    const/4 v13, 0x0

    .line 82
    invoke-virtual {v3, v13}, Landroid/text/StaticLayout;->getLineStart(I)I

    .line 85
    move-result v3

    .line 86
    int-to-float v3, v3

    .line 87
    sub-float/2addr v1, v3

    .line 88
    invoke-virtual {v11}, Landroid/graphics/Paint;->getAlpha()I

    .line 91
    move-result v14

    .line 92
    invoke-virtual {v8, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 95
    iget v1, v9, Lo/d4;->b0:F

    .line 97
    int-to-float v2, v14

    .line 98
    mul-float/2addr v1, v2

    .line 99
    float-to-int v1, v1

    .line 100
    invoke-virtual {v11, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 103
    sget v15, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 105
    const/16 v7, 0x1f

    .line 107
    if-lt v15, v7, :cond_2

    .line 109
    iget v1, v9, Lo/d4;->H:F

    .line 111
    iget v3, v9, Lo/d4;->I:F

    .line 113
    iget v4, v9, Lo/d4;->J:F

    .line 115
    iget v5, v9, Lo/d4;->K:I

    .line 117
    invoke-virtual {v11}, Landroid/graphics/Paint;->getAlpha()I

    .line 120
    move-result v6

    .line 121
    invoke-static {v5}, Landroid/graphics/Color;->alpha(I)I

    .line 124
    move-result v16

    .line 125
    mul-int v6, v6, v16

    .line 127
    div-int/lit16 v6, v6, 0xff

    .line 129
    invoke-static {v5, v6}, Lo/m4;->d(II)I

    .line 132
    move-result v5

    .line 133
    invoke-virtual {v11, v1, v3, v4, v5}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 136
    :cond_2
    iget-object v1, v9, Lo/d4;->Y:Landroid/text/StaticLayout;

    .line 138
    invoke-virtual {v1, v8}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 141
    iget v1, v9, Lo/d4;->a0:F

    .line 143
    mul-float/2addr v1, v2

    .line 144
    float-to-int v1, v1

    .line 145
    invoke-virtual {v11, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 148
    if-lt v15, v7, :cond_3

    .line 150
    iget v1, v9, Lo/d4;->H:F

    .line 152
    iget v2, v9, Lo/d4;->I:F

    .line 154
    iget v3, v9, Lo/d4;->J:F

    .line 156
    iget v4, v9, Lo/d4;->K:I

    .line 158
    invoke-virtual {v11}, Landroid/graphics/Paint;->getAlpha()I

    .line 161
    move-result v5

    .line 162
    invoke-static {v4}, Landroid/graphics/Color;->alpha(I)I

    .line 165
    move-result v6

    .line 166
    mul-int/2addr v6, v5

    .line 167
    div-int/lit16 v6, v6, 0xff

    .line 169
    invoke-static {v4, v6}, Lo/m4;->d(II)I

    .line 172
    move-result v4

    .line 173
    invoke-virtual {v11, v1, v2, v3, v4}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 176
    :cond_3
    iget-object v1, v9, Lo/d4;->Y:Landroid/text/StaticLayout;

    .line 178
    invoke-virtual {v1, v13}, Landroid/text/Layout;->getLineBaseline(I)I

    .line 181
    move-result v1

    .line 182
    iget-object v2, v9, Lo/d4;->c0:Ljava/lang/CharSequence;

    .line 184
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    .line 187
    move-result v4

    .line 188
    int-to-float v6, v1

    .line 189
    const/4 v3, 0x0

    .line 190
    const/4 v5, 0x0

    .line 191
    move-object/from16 v1, p1

    .line 193
    move/from16 v16, v6

    .line 195
    move v13, v7

    .line 196
    move-object v7, v11

    .line 197
    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .line 200
    if-lt v15, v13, :cond_4

    .line 202
    iget v1, v9, Lo/d4;->H:F

    .line 204
    iget v2, v9, Lo/d4;->I:F

    .line 206
    iget v3, v9, Lo/d4;->J:F

    .line 208
    iget v4, v9, Lo/d4;->K:I

    .line 210
    invoke-virtual {v11, v1, v2, v3, v4}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 213
    :cond_4
    iget-object v1, v9, Lo/d4;->c0:Ljava/lang/CharSequence;

    .line 215
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 218
    move-result-object v1

    .line 219
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 222
    move-result-object v1

    .line 223
    const-string v2, "\u2026"

    .line 225
    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 228
    move-result v2

    .line 229
    if-eqz v2, :cond_5

    .line 231
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 234
    move-result v2

    .line 235
    sub-int/2addr v2, v12

    .line 236
    const/4 v3, 0x0

    .line 237
    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 240
    move-result-object v1

    .line 241
    :goto_0
    move-object v2, v1

    .line 242
    goto :goto_1

    .line 243
    :cond_5
    const/4 v3, 0x0

    .line 244
    goto :goto_0

    .line 245
    :goto_1
    invoke-virtual {v11, v14}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 248
    iget-object v1, v9, Lo/d4;->Y:Landroid/text/StaticLayout;

    .line 250
    invoke-virtual {v1, v3}, Landroid/text/Layout;->getLineEnd(I)I

    .line 253
    move-result v1

    .line 254
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 257
    move-result v3

    .line 258
    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    .line 261
    move-result v4

    .line 262
    const/4 v5, 0x0

    .line 263
    const/4 v3, 0x0

    .line 264
    move-object/from16 v1, p1

    .line 266
    move/from16 v6, v16

    .line 268
    move-object v7, v11

    .line 269
    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    .line 272
    goto :goto_3

    .line 273
    :cond_6
    :goto_2
    invoke-virtual {v8, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 276
    iget-object v1, v9, Lo/d4;->Y:Landroid/text/StaticLayout;

    .line 278
    invoke-virtual {v1, v8}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 281
    :goto_3
    invoke-virtual {v8, v10}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 284
    :cond_7
    iget-object v1, v0, Lcom/google/android/material/textfield/TextInputLayout;->K:Lo/eb;

    .line 286
    if-eqz v1, :cond_8

    .line 288
    iget-object v1, v0, Lcom/google/android/material/textfield/TextInputLayout;->J:Lo/eb;

    .line 290
    if-eqz v1, :cond_8

    .line 292
    invoke-virtual {v1, v8}, Lo/eb;->draw(Landroid/graphics/Canvas;)V

    .line 295
    iget-object v1, v0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    .line 297
    invoke-virtual {v1}, Landroid/view/View;->isFocused()Z

    .line 300
    move-result v1

    .line 301
    if-eqz v1, :cond_8

    .line 303
    iget-object v1, v0, Lcom/google/android/material/textfield/TextInputLayout;->K:Lo/eb;

    .line 305
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 308
    move-result-object v1

    .line 309
    iget-object v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->J:Lo/eb;

    .line 311
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 314
    move-result-object v2

    .line 315
    iget v3, v9, Lo/d4;->b:F

    .line 317
    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    .line 320
    move-result v4

    .line 321
    iget v5, v2, Landroid/graphics/Rect;->left:I

    .line 323
    invoke-static {v4, v5, v3}, Lo/Q0;->c(IIF)I

    .line 326
    move-result v5

    .line 327
    iput v5, v1, Landroid/graphics/Rect;->left:I

    .line 329
    iget v2, v2, Landroid/graphics/Rect;->right:I

    .line 331
    invoke-static {v4, v2, v3}, Lo/Q0;->c(IIF)I

    .line 334
    move-result v2

    .line 335
    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 337
    iget-object v1, v0, Lcom/google/android/material/textfield/TextInputLayout;->K:Lo/eb;

    .line 339
    invoke-virtual {v1, v8}, Lo/eb;->draw(Landroid/graphics/Canvas;)V

    .line 342
    :cond_8
    return-void
.end method

.method public final drawableStateChanged()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->z0:Z

    .line 3
    if-eqz v0, :cond_0

    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->z0:Z

    .line 9
    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    .line 12
    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    .line 15
    move-result-object v1

    .line 16
    const/4 v2, 0x0

    .line 17
    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->v0:Lo/d4;

    .line 19
    if-eqz v3, :cond_3

    .line 21
    iput-object v1, v3, Lo/d4;->L:[I

    .line 23
    iget-object v1, v3, Lo/d4;->k:Landroid/content/res/ColorStateList;

    .line 25
    if-eqz v1, :cond_1

    .line 27
    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->isStateful()Z

    .line 30
    move-result v1

    .line 31
    if-nez v1, :cond_2

    .line 33
    :cond_1
    iget-object v1, v3, Lo/d4;->j:Landroid/content/res/ColorStateList;

    .line 35
    if-eqz v1, :cond_3

    .line 37
    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->isStateful()Z

    .line 40
    move-result v1

    .line 41
    if-eqz v1, :cond_3

    .line 43
    :cond_2
    invoke-virtual {v3, v2}, Lo/d4;->h(Z)V

    .line 46
    move v1, v0

    .line 47
    goto :goto_0

    .line 48
    :cond_3
    move v1, v2

    .line 49
    :goto_0
    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    .line 51
    if-eqz v3, :cond_5

    .line 53
    sget-object v3, Lo/Dh;->a:Ljava/util/WeakHashMap;

    .line 55
    invoke-virtual {p0}, Landroid/view/View;->isLaidOut()Z

    .line 58
    move-result v3

    .line 59
    if-eqz v3, :cond_4

    .line 61
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    .line 64
    move-result v3

    .line 65
    if-eqz v3, :cond_4

    .line 67
    goto :goto_1

    .line 68
    :cond_4
    move v0, v2

    .line 69
    :goto_1
    invoke-virtual {p0, v0, v2}, Lcom/google/android/material/textfield/TextInputLayout;->u(ZZ)V

    .line 72
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->r()V

    .line 75
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->x()V

    .line 78
    if-eqz v1, :cond_6

    .line 80
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 83
    :cond_6
    iput-boolean v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->z0:Z

    .line 85
    return-void
.end method

.method public final e()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->C:Z

    .line 3
    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->D:Ljava/lang/CharSequence;

    .line 7
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 13
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->F:Lo/eb;

    .line 15
    instance-of v0, v0, Lo/j5;

    .line 17
    if-eqz v0, :cond_0

    .line 19
    const/4 v0, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v0, 0x0

    .line 22
    :goto_0
    return v0
.end method

.method public final f(Z)Lo/eb;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 7
    move-result-object v2

    .line 8
    const v3, 0x7f0602e4

    .line 11
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 14
    move-result v2

    .line 15
    int-to-float v2, v2

    .line 16
    if-eqz p1, :cond_0

    .line 18
    move v3, v2

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v3, 0x0

    .line 21
    :goto_0
    iget-object v4, v0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    .line 23
    instance-of v5, v4, Lo/La;

    .line 25
    if-eqz v5, :cond_1

    .line 27
    check-cast v4, Lo/La;

    .line 29
    invoke-virtual {v4}, Lo/La;->getPopupElevation()F

    .line 32
    move-result v4

    .line 33
    goto :goto_1

    .line 34
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 37
    move-result-object v4

    .line 38
    const v5, 0x7f06014d

    .line 41
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 44
    move-result v4

    .line 45
    int-to-float v4, v4

    .line 46
    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 49
    move-result-object v5

    .line 50
    const v6, 0x7f0602a5

    .line 53
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 56
    move-result v5

    .line 57
    new-instance v6, Lo/fe;

    .line 59
    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v7, Lo/fe;

    .line 64
    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v8, Lo/fe;

    .line 69
    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    .line 72
    new-instance v9, Lo/fe;

    .line 74
    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    .line 77
    new-instance v10, Lo/u6;

    .line 79
    invoke-direct {v10, v1}, Lo/u6;-><init>(I)V

    .line 82
    new-instance v11, Lo/u6;

    .line 84
    invoke-direct {v11, v1}, Lo/u6;-><init>(I)V

    .line 87
    new-instance v12, Lo/u6;

    .line 89
    invoke-direct {v12, v1}, Lo/u6;-><init>(I)V

    .line 92
    new-instance v13, Lo/u6;

    .line 94
    invoke-direct {v13, v1}, Lo/u6;-><init>(I)V

    .line 97
    new-instance v14, Lo/g;

    .line 99
    invoke-direct {v14, v3}, Lo/g;-><init>(F)V

    .line 102
    new-instance v15, Lo/g;

    .line 104
    invoke-direct {v15, v3}, Lo/g;-><init>(F)V

    .line 107
    new-instance v3, Lo/g;

    .line 109
    invoke-direct {v3, v2}, Lo/g;-><init>(F)V

    .line 112
    new-instance v1, Lo/g;

    .line 114
    invoke-direct {v1, v2}, Lo/g;-><init>(F)V

    .line 117
    new-instance v2, Lo/Ae;

    .line 119
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 122
    iput-object v6, v2, Lo/Ae;->a:Lo/L1;

    .line 124
    iput-object v7, v2, Lo/Ae;->b:Lo/L1;

    .line 126
    iput-object v8, v2, Lo/Ae;->c:Lo/L1;

    .line 128
    iput-object v9, v2, Lo/Ae;->d:Lo/L1;

    .line 130
    iput-object v14, v2, Lo/Ae;->e:Lo/d5;

    .line 132
    iput-object v15, v2, Lo/Ae;->f:Lo/d5;

    .line 134
    iput-object v1, v2, Lo/Ae;->g:Lo/d5;

    .line 136
    iput-object v3, v2, Lo/Ae;->h:Lo/d5;

    .line 138
    iput-object v10, v2, Lo/Ae;->i:Lo/u6;

    .line 140
    iput-object v11, v2, Lo/Ae;->j:Lo/u6;

    .line 142
    iput-object v12, v2, Lo/Ae;->k:Lo/u6;

    .line 144
    iput-object v13, v2, Lo/Ae;->l:Lo/u6;

    .line 146
    iget-object v1, v0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    .line 148
    instance-of v3, v1, Lo/La;

    .line 150
    if-eqz v3, :cond_2

    .line 152
    check-cast v1, Lo/La;

    .line 154
    invoke-virtual {v1}, Lo/La;->getDropDownBackgroundTintList()Landroid/content/res/ColorStateList;

    .line 157
    move-result-object v1

    .line 158
    goto :goto_2

    .line 159
    :cond_2
    const/4 v1, 0x0

    .line 160
    :goto_2
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 163
    move-result-object v3

    .line 164
    if-nez v1, :cond_4

    .line 166
    sget-object v1, Lo/eb;->w:Landroid/graphics/Paint;

    .line 168
    const-class v1, Lo/eb;

    .line 170
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 173
    move-result-object v1

    .line 174
    const v6, 0x7f030120

    .line 177
    invoke-static {v3, v6, v1}, Lo/Ha;->q0(Landroid/content/Context;ILjava/lang/String;)Landroid/util/TypedValue;

    .line 180
    move-result-object v1

    .line 181
    iget v6, v1, Landroid/util/TypedValue;->resourceId:I

    .line 183
    if-eqz v6, :cond_3

    .line 185
    invoke-virtual {v3, v6}, Landroid/content/Context;->getColor(I)I

    .line 188
    move-result v1

    .line 189
    goto :goto_3

    .line 190
    :cond_3
    iget v1, v1, Landroid/util/TypedValue;->data:I

    .line 192
    :goto_3
    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 195
    move-result-object v1

    .line 196
    :cond_4
    new-instance v6, Lo/eb;

    .line 198
    invoke-direct {v6}, Lo/eb;-><init>()V

    .line 201
    invoke-virtual {v6, v3}, Lo/eb;->i(Landroid/content/Context;)V

    .line 204
    invoke-virtual {v6, v1}, Lo/eb;->k(Landroid/content/res/ColorStateList;)V

    .line 207
    invoke-virtual {v6, v4}, Lo/eb;->j(F)V

    .line 210
    invoke-virtual {v6, v2}, Lo/eb;->setShapeAppearanceModel(Lo/Ae;)V

    .line 213
    iget-object v1, v6, Lo/eb;->a:Lo/db;

    .line 215
    iget-object v2, v1, Lo/db;->g:Landroid/graphics/Rect;

    .line 217
    if-nez v2, :cond_5

    .line 219
    new-instance v2, Landroid/graphics/Rect;

    .line 221
    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 224
    iput-object v2, v1, Lo/db;->g:Landroid/graphics/Rect;

    .line 226
    :cond_5
    iget-object v1, v6, Lo/eb;->a:Lo/db;

    .line 228
    iget-object v1, v1, Lo/db;->g:Landroid/graphics/Rect;

    .line 230
    const/4 v2, 0x0

    .line 231
    invoke-virtual {v1, v2, v5, v2, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 234
    invoke-virtual {v6}, Lo/eb;->invalidateSelf()V

    .line 237
    return-object v6
.end method

.method public final g(IZ)I
    .locals 1

    .line 1
    if-nez p2, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getPrefixText()Ljava/lang/CharSequence;

    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 9
    iget-object p2, p0, Lcom/google/android/material/textfield/TextInputLayout;->b:Lo/if;

    .line 11
    invoke-virtual {p2}, Lo/if;->a()I

    .line 14
    move-result p2

    .line 15
    :goto_0
    add-int/2addr p2, p1

    .line 16
    return p2

    .line 17
    :cond_0
    if-eqz p2, :cond_1

    .line 19
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getSuffixText()Ljava/lang/CharSequence;

    .line 22
    move-result-object p2

    .line 23
    if-eqz p2, :cond_1

    .line 25
    iget-object p2, p0, Lcom/google/android/material/textfield/TextInputLayout;->c:Lo/b7;

    .line 27
    invoke-virtual {p2}, Lo/b7;->c()I

    .line 30
    move-result p2

    .line 31
    goto :goto_0

    .line 32
    :cond_1
    iget-object p2, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    .line 34
    invoke-virtual {p2}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    .line 37
    move-result p2

    .line 38
    goto :goto_0
.end method

.method public getBaseline()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getBaseline()I

    .line 8
    move-result v0

    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 12
    move-result v1

    .line 13
    add-int/2addr v1, v0

    .line 14
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->c()I

    .line 17
    move-result v0

    .line 18
    add-int/2addr v0, v1

    .line 19
    return v0

    .line 20
    :cond_0
    invoke-super {p0}, Landroid/widget/LinearLayout;->getBaseline()I

    .line 23
    move-result v0

    .line 24
    return v0
.end method

.method public getBoxBackground()Lo/eb;
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->O:I

    .line 3
    const/4 v1, 0x1

    .line 4
    if-eq v0, v1, :cond_1

    .line 6
    const/4 v1, 0x2

    .line 7
    if-ne v0, v1, :cond_0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 12
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    .line 15
    throw v0

    .line 16
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->F:Lo/eb;

    .line 18
    return-object v0
.end method

.method public getBoxBackgroundColor()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->U:I

    .line 3
    return v0
.end method

.method public getBoxBackgroundMode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->O:I

    .line 3
    return v0
.end method

.method public getBoxCollapsedPaddingTop()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->P:I

    .line 3
    return v0
.end method

.method public getBoxCornerRadiusBottomEnd()F
    .locals 2

    .line 1
    invoke-static {p0}, Lo/Ng;->l(Landroid/view/View;)Z

    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->a0:Landroid/graphics/RectF;

    .line 7
    if-eqz v0, :cond_0

    .line 9
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->L:Lo/Ae;

    .line 11
    iget-object v0, v0, Lo/Ae;->h:Lo/d5;

    .line 13
    invoke-interface {v0, v1}, Lo/d5;->a(Landroid/graphics/RectF;)F

    .line 16
    move-result v0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->L:Lo/Ae;

    .line 20
    iget-object v0, v0, Lo/Ae;->g:Lo/d5;

    .line 22
    invoke-interface {v0, v1}, Lo/d5;->a(Landroid/graphics/RectF;)F

    .line 25
    move-result v0

    .line 26
    :goto_0
    return v0
.end method

.method public getBoxCornerRadiusBottomStart()F
    .locals 2

    .line 1
    invoke-static {p0}, Lo/Ng;->l(Landroid/view/View;)Z

    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->a0:Landroid/graphics/RectF;

    .line 7
    if-eqz v0, :cond_0

    .line 9
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->L:Lo/Ae;

    .line 11
    iget-object v0, v0, Lo/Ae;->g:Lo/d5;

    .line 13
    invoke-interface {v0, v1}, Lo/d5;->a(Landroid/graphics/RectF;)F

    .line 16
    move-result v0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->L:Lo/Ae;

    .line 20
    iget-object v0, v0, Lo/Ae;->h:Lo/d5;

    .line 22
    invoke-interface {v0, v1}, Lo/d5;->a(Landroid/graphics/RectF;)F

    .line 25
    move-result v0

    .line 26
    :goto_0
    return v0
.end method

.method public getBoxCornerRadiusTopEnd()F
    .locals 2

    .line 1
    invoke-static {p0}, Lo/Ng;->l(Landroid/view/View;)Z

    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->a0:Landroid/graphics/RectF;

    .line 7
    if-eqz v0, :cond_0

    .line 9
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->L:Lo/Ae;

    .line 11
    iget-object v0, v0, Lo/Ae;->e:Lo/d5;

    .line 13
    invoke-interface {v0, v1}, Lo/d5;->a(Landroid/graphics/RectF;)F

    .line 16
    move-result v0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->L:Lo/Ae;

    .line 20
    iget-object v0, v0, Lo/Ae;->f:Lo/d5;

    .line 22
    invoke-interface {v0, v1}, Lo/d5;->a(Landroid/graphics/RectF;)F

    .line 25
    move-result v0

    .line 26
    :goto_0
    return v0
.end method

.method public getBoxCornerRadiusTopStart()F
    .locals 2

    .line 1
    invoke-static {p0}, Lo/Ng;->l(Landroid/view/View;)Z

    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->a0:Landroid/graphics/RectF;

    .line 7
    if-eqz v0, :cond_0

    .line 9
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->L:Lo/Ae;

    .line 11
    iget-object v0, v0, Lo/Ae;->f:Lo/d5;

    .line 13
    invoke-interface {v0, v1}, Lo/d5;->a(Landroid/graphics/RectF;)F

    .line 16
    move-result v0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->L:Lo/Ae;

    .line 20
    iget-object v0, v0, Lo/Ae;->e:Lo/d5;

    .line 22
    invoke-interface {v0, v1}, Lo/d5;->a(Landroid/graphics/RectF;)F

    .line 25
    move-result v0

    .line 26
    :goto_0
    return v0
.end method

.method public getBoxStrokeColor()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->m0:I

    .line 3
    return v0
.end method

.method public getBoxStrokeErrorColor()Landroid/content/res/ColorStateList;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->n0:Landroid/content/res/ColorStateList;

    .line 3
    return-object v0
.end method

.method public getBoxStrokeWidth()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->R:I

    .line 3
    return v0
.end method

.method public getBoxStrokeWidthFocused()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->S:I

    .line 3
    return v0
.end method

.method public getCounterMaxLength()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->l:I

    .line 3
    return v0
.end method

.method public getCounterOverflowDescription()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->k:Z

    .line 3
    if-eqz v0, :cond_0

    .line 5
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->m:Z

    .line 7
    if-eqz v0, :cond_0

    .line 9
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->o:Lo/j2;

    .line 11
    if-eqz v0, :cond_0

    .line 13
    invoke-virtual {v0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    .line 16
    move-result-object v0

    .line 17
    return-object v0

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    return-object v0
.end method

.method public getCounterOverflowTextColor()Landroid/content/res/ColorStateList;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->z:Landroid/content/res/ColorStateList;

    .line 3
    return-object v0
.end method

.method public getCounterTextColor()Landroid/content/res/ColorStateList;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->y:Landroid/content/res/ColorStateList;

    .line 3
    return-object v0
.end method

.method public getCursorColor()Landroid/content/res/ColorStateList;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->A:Landroid/content/res/ColorStateList;

    .line 3
    return-object v0
.end method

.method public getCursorErrorColor()Landroid/content/res/ColorStateList;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->B:Landroid/content/res/ColorStateList;

    .line 3
    return-object v0
.end method

.method public getDefaultHintTextColor()Landroid/content/res/ColorStateList;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->i0:Landroid/content/res/ColorStateList;

    .line 3
    return-object v0
.end method

.method public getEditText()Landroid/widget/EditText;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    .line 3
    return-object v0
.end method

.method public getEndIconContentDescription()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->c:Lo/b7;

    .line 3
    iget-object v0, v0, Lo/b7;->g:Lcom/google/android/material/internal/CheckableImageButton;

    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public getEndIconDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->c:Lo/b7;

    .line 3
    iget-object v0, v0, Lo/b7;->g:Lcom/google/android/material/internal/CheckableImageButton;

    .line 5
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public getEndIconMinSize()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->c:Lo/b7;

    .line 3
    iget v0, v0, Lo/b7;->m:I

    .line 5
    return v0
.end method

.method public getEndIconMode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->c:Lo/b7;

    .line 3
    iget v0, v0, Lo/b7;->i:I

    .line 5
    return v0
.end method

.method public getEndIconScaleType()Landroid/widget/ImageView$ScaleType;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->c:Lo/b7;

    .line 3
    iget-object v0, v0, Lo/b7;->n:Landroid/widget/ImageView$ScaleType;

    .line 5
    return-object v0
.end method

.method public getEndIconView()Lcom/google/android/material/internal/CheckableImageButton;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->c:Lo/b7;

    .line 3
    iget-object v0, v0, Lo/b7;->g:Lcom/google/android/material/internal/CheckableImageButton;

    .line 5
    return-object v0
.end method

.method public getError()Ljava/lang/CharSequence;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->j:Lo/m9;

    .line 3
    iget-boolean v1, v0, Lo/m9;->q:Z

    .line 5
    if-eqz v1, :cond_0

    .line 7
    iget-object v0, v0, Lo/m9;->p:Ljava/lang/CharSequence;

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    return-object v0
.end method

.method public getErrorAccessibilityLiveRegion()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->j:Lo/m9;

    .line 3
    iget v0, v0, Lo/m9;->t:I

    .line 5
    return v0
.end method

.method public getErrorContentDescription()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->j:Lo/m9;

    .line 3
    iget-object v0, v0, Lo/m9;->s:Ljava/lang/CharSequence;

    .line 5
    return-object v0
.end method

.method public getErrorCurrentTextColors()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->j:Lo/m9;

    .line 3
    iget-object v0, v0, Lo/m9;->r:Lo/j2;

    .line 5
    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {v0}, Landroid/widget/TextView;->getCurrentTextColor()I

    .line 10
    move-result v0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, -0x1

    .line 13
    :goto_0
    return v0
.end method

.method public getErrorIconDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->c:Lo/b7;

    .line 3
    iget-object v0, v0, Lo/b7;->c:Lcom/google/android/material/internal/CheckableImageButton;

    .line 5
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public getHelperText()Ljava/lang/CharSequence;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->j:Lo/m9;

    .line 3
    iget-boolean v1, v0, Lo/m9;->x:Z

    .line 5
    if-eqz v1, :cond_0

    .line 7
    iget-object v0, v0, Lo/m9;->w:Ljava/lang/CharSequence;

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    return-object v0
.end method

.method public getHelperTextCurrentTextColor()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->j:Lo/m9;

    .line 3
    iget-object v0, v0, Lo/m9;->y:Lo/j2;

    .line 5
    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {v0}, Landroid/widget/TextView;->getCurrentTextColor()I

    .line 10
    move-result v0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, -0x1

    .line 13
    :goto_0
    return v0
.end method

.method public getHint()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->C:Z

    .line 3
    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->D:Ljava/lang/CharSequence;

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    return-object v0
.end method

.method public final getHintCollapsedTextHeight()F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->v0:Lo/d4;

    .line 3
    invoke-virtual {v0}, Lo/d4;->d()F

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final getHintCurrentCollapsedTextColor()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->v0:Lo/d4;

    .line 3
    iget-object v1, v0, Lo/d4;->k:Landroid/content/res/ColorStateList;

    .line 5
    invoke-virtual {v0, v1}, Lo/d4;->e(Landroid/content/res/ColorStateList;)I

    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public getHintTextColor()Landroid/content/res/ColorStateList;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->j0:Landroid/content/res/ColorStateList;

    .line 3
    return-object v0
.end method

.method public getLengthCounter()Lo/Of;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->n:Lo/Of;

    .line 3
    return-object v0
.end method

.method public getMaxEms()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->g:I

    .line 3
    return v0
.end method

.method public getMaxWidth()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->i:I

    .line 3
    return v0
.end method

.method public getMinEms()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->f:I

    .line 3
    return v0
.end method

.method public getMinWidth()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->h:I

    .line 3
    return v0
.end method

.method public getPasswordVisibilityToggleContentDescription()Ljava/lang/CharSequence;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->c:Lo/b7;

    .line 3
    iget-object v0, v0, Lo/b7;->g:Lcom/google/android/material/internal/CheckableImageButton;

    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public getPasswordVisibilityToggleDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->c:Lo/b7;

    .line 3
    iget-object v0, v0, Lo/b7;->g:Lcom/google/android/material/internal/CheckableImageButton;

    .line 5
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public getPlaceholderText()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->s:Z

    .line 3
    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->r:Ljava/lang/CharSequence;

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    return-object v0
.end method

.method public getPlaceholderTextAppearance()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->v:I

    .line 3
    return v0
.end method

.method public getPlaceholderTextColor()Landroid/content/res/ColorStateList;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->u:Landroid/content/res/ColorStateList;

    .line 3
    return-object v0
.end method

.method public getPrefixText()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->b:Lo/if;

    .line 3
    iget-object v0, v0, Lo/if;->c:Ljava/lang/CharSequence;

    .line 5
    return-object v0
.end method

.method public getPrefixTextColor()Landroid/content/res/ColorStateList;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->b:Lo/if;

    .line 3
    iget-object v0, v0, Lo/if;->b:Lo/j2;

    .line 5
    invoke-virtual {v0}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public getPrefixTextView()Landroid/widget/TextView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->b:Lo/if;

    .line 3
    iget-object v0, v0, Lo/if;->b:Lo/j2;

    .line 5
    return-object v0
.end method

.method public getShapeAppearanceModel()Lo/Ae;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->L:Lo/Ae;

    .line 3
    return-object v0
.end method

.method public getStartIconContentDescription()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->b:Lo/if;

    .line 3
    iget-object v0, v0, Lo/if;->d:Lcom/google/android/material/internal/CheckableImageButton;

    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public getStartIconDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->b:Lo/if;

    .line 3
    iget-object v0, v0, Lo/if;->d:Lcom/google/android/material/internal/CheckableImageButton;

    .line 5
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public getStartIconMinSize()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->b:Lo/if;

    .line 3
    iget v0, v0, Lo/if;->g:I

    .line 5
    return v0
.end method

.method public getStartIconScaleType()Landroid/widget/ImageView$ScaleType;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->b:Lo/if;

    .line 3
    iget-object v0, v0, Lo/if;->h:Landroid/widget/ImageView$ScaleType;

    .line 5
    return-object v0
.end method

.method public getSuffixText()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->c:Lo/b7;

    .line 3
    iget-object v0, v0, Lo/b7;->p:Ljava/lang/CharSequence;

    .line 5
    return-object v0
.end method

.method public getSuffixTextColor()Landroid/content/res/ColorStateList;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->c:Lo/b7;

    .line 3
    iget-object v0, v0, Lo/b7;->q:Lo/j2;

    .line 5
    invoke-virtual {v0}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public getSuffixTextView()Landroid/widget/TextView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->c:Lo/b7;

    .line 3
    iget-object v0, v0, Lo/b7;->q:Lo/j2;

    .line 5
    return-object v0
.end method

.method public getTypeface()Landroid/graphics/Typeface;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->b0:Landroid/graphics/Typeface;

    .line 3
    return-object v0
.end method

.method public final h(IZ)I
    .locals 1

    .line 1
    if-nez p2, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getSuffixText()Ljava/lang/CharSequence;

    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 9
    iget-object p2, p0, Lcom/google/android/material/textfield/TextInputLayout;->c:Lo/b7;

    .line 11
    invoke-virtual {p2}, Lo/b7;->c()I

    .line 14
    move-result p2

    .line 15
    :goto_0
    sub-int/2addr p1, p2

    .line 16
    return p1

    .line 17
    :cond_0
    if-eqz p2, :cond_1

    .line 19
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getPrefixText()Ljava/lang/CharSequence;

    .line 22
    move-result-object p2

    .line 23
    if-eqz p2, :cond_1

    .line 25
    iget-object p2, p0, Lcom/google/android/material/textfield/TextInputLayout;->b:Lo/if;

    .line 27
    invoke-virtual {p2}, Lo/if;->a()I

    .line 30
    move-result p2

    .line 31
    goto :goto_0

    .line 32
    :cond_1
    iget-object p2, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    .line 34
    invoke-virtual {p2}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    .line 37
    move-result p2

    .line 38
    goto :goto_0
.end method

.method public final i()V
    .locals 8

    .line 1
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->O:I

    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x1

    .line 5
    const/4 v3, 0x0

    .line 6
    if-eqz v0, :cond_4

    .line 8
    if-eq v0, v2, :cond_3

    .line 10
    if-ne v0, v1, :cond_2

    .line 12
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->C:Z

    .line 14
    if-eqz v0, :cond_1

    .line 16
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->F:Lo/eb;

    .line 18
    instance-of v0, v0, Lo/j5;

    .line 20
    if-nez v0, :cond_1

    .line 22
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->L:Lo/Ae;

    .line 24
    sget v4, Lo/j5;->y:I

    .line 26
    new-instance v4, Lo/i5;

    .line 28
    if-eqz v0, :cond_0

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    new-instance v0, Lo/Ae;

    .line 33
    invoke-direct {v0}, Lo/Ae;-><init>()V

    .line 36
    :goto_0
    new-instance v5, Landroid/graphics/RectF;

    .line 38
    invoke-direct {v5}, Landroid/graphics/RectF;-><init>()V

    .line 41
    invoke-direct {v4, v0, v5}, Lo/i5;-><init>(Lo/Ae;Landroid/graphics/RectF;)V

    .line 44
    new-instance v0, Lo/j5;

    .line 46
    invoke-direct {v0, v4}, Lo/eb;-><init>(Lo/db;)V

    .line 49
    iput-object v4, v0, Lo/j5;->x:Lo/i5;

    .line 51
    iput-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->F:Lo/eb;

    .line 53
    goto :goto_1

    .line 54
    :cond_1
    new-instance v0, Lo/eb;

    .line 56
    iget-object v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->L:Lo/Ae;

    .line 58
    invoke-direct {v0, v4}, Lo/eb;-><init>(Lo/Ae;)V

    .line 61
    iput-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->F:Lo/eb;

    .line 63
    :goto_1
    iput-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->J:Lo/eb;

    .line 65
    iput-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->K:Lo/eb;

    .line 67
    goto :goto_2

    .line 68
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 70
    new-instance v1, Ljava/lang/StringBuilder;

    .line 72
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 75
    iget v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->O:I

    .line 77
    const-string v3, " is illegal; only @BoxBackgroundMode constants are supported."

    .line 79
    invoke-static {v1, v2, v3}, Lo/Ve;->j(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 82
    move-result-object v1

    .line 83
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 86
    throw v0

    .line 87
    :cond_3
    new-instance v0, Lo/eb;

    .line 89
    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->L:Lo/Ae;

    .line 91
    invoke-direct {v0, v3}, Lo/eb;-><init>(Lo/Ae;)V

    .line 94
    iput-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->F:Lo/eb;

    .line 96
    new-instance v0, Lo/eb;

    .line 98
    invoke-direct {v0}, Lo/eb;-><init>()V

    .line 101
    iput-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->J:Lo/eb;

    .line 103
    new-instance v0, Lo/eb;

    .line 105
    invoke-direct {v0}, Lo/eb;-><init>()V

    .line 108
    iput-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->K:Lo/eb;

    .line 110
    goto :goto_2

    .line 111
    :cond_4
    iput-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->F:Lo/eb;

    .line 113
    iput-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->J:Lo/eb;

    .line 115
    iput-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->K:Lo/eb;

    .line 117
    :goto_2
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->s()V

    .line 120
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->x()V

    .line 123
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->O:I

    .line 125
    const/high16 v3, 0x40000000    # 2.0f

    .line 127
    if-ne v0, v2, :cond_6

    .line 129
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 132
    move-result-object v0

    .line 133
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 136
    move-result-object v0

    .line 137
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 140
    move-result-object v0

    .line 141
    iget v0, v0, Landroid/content/res/Configuration;->fontScale:F

    .line 143
    cmpl-float v0, v0, v3

    .line 145
    if-ltz v0, :cond_5

    .line 147
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 150
    move-result-object v0

    .line 151
    const v4, 0x7f06023c

    .line 154
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 157
    move-result v0

    .line 158
    iput v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->P:I

    .line 160
    goto :goto_3

    .line 161
    :cond_5
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 164
    move-result-object v0

    .line 165
    invoke-static {v0}, Lo/Ha;->a0(Landroid/content/Context;)Z

    .line 168
    move-result v0

    .line 169
    if-eqz v0, :cond_6

    .line 171
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 174
    move-result-object v0

    .line 175
    const v4, 0x7f06023b

    .line 178
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 181
    move-result v0

    .line 182
    iput v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->P:I

    .line 184
    :cond_6
    :goto_3
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    .line 186
    if-eqz v0, :cond_9

    .line 188
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->O:I

    .line 190
    if-eq v0, v2, :cond_7

    .line 192
    goto :goto_4

    .line 193
    :cond_7
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 196
    move-result-object v0

    .line 197
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 200
    move-result-object v0

    .line 201
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 204
    move-result-object v0

    .line 205
    iget v0, v0, Landroid/content/res/Configuration;->fontScale:F

    .line 207
    cmpl-float v0, v0, v3

    .line 209
    if-ltz v0, :cond_8

    .line 211
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    .line 213
    sget-object v3, Lo/Dh;->a:Ljava/util/WeakHashMap;

    .line 215
    invoke-virtual {v0}, Landroid/view/View;->getPaddingStart()I

    .line 218
    move-result v3

    .line 219
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 222
    move-result-object v4

    .line 223
    const v5, 0x7f06023a

    .line 226
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 229
    move-result v4

    .line 230
    iget-object v5, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    .line 232
    invoke-virtual {v5}, Landroid/view/View;->getPaddingEnd()I

    .line 235
    move-result v5

    .line 236
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 239
    move-result-object v6

    .line 240
    const v7, 0x7f060239

    .line 243
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 246
    move-result v6

    .line 247
    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 250
    goto :goto_4

    .line 251
    :cond_8
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 254
    move-result-object v0

    .line 255
    invoke-static {v0}, Lo/Ha;->a0(Landroid/content/Context;)Z

    .line 258
    move-result v0

    .line 259
    if-eqz v0, :cond_9

    .line 261
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    .line 263
    sget-object v3, Lo/Dh;->a:Ljava/util/WeakHashMap;

    .line 265
    invoke-virtual {v0}, Landroid/view/View;->getPaddingStart()I

    .line 268
    move-result v3

    .line 269
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 272
    move-result-object v4

    .line 273
    const v5, 0x7f060238

    .line 276
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 279
    move-result v4

    .line 280
    iget-object v5, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    .line 282
    invoke-virtual {v5}, Landroid/view/View;->getPaddingEnd()I

    .line 285
    move-result v5

    .line 286
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 289
    move-result-object v6

    .line 290
    const v7, 0x7f060237

    .line 293
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 296
    move-result v6

    .line 297
    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 300
    :cond_9
    :goto_4
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->O:I

    .line 302
    if-eqz v0, :cond_a

    .line 304
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->t()V

    .line 307
    :cond_a
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    .line 309
    instance-of v3, v0, Landroid/widget/AutoCompleteTextView;

    .line 311
    if-nez v3, :cond_b

    .line 313
    goto :goto_5

    .line 314
    :cond_b
    check-cast v0, Landroid/widget/AutoCompleteTextView;

    .line 316
    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getDropDownBackground()Landroid/graphics/drawable/Drawable;

    .line 319
    move-result-object v3

    .line 320
    if-nez v3, :cond_d

    .line 322
    iget v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->O:I

    .line 324
    if-ne v3, v1, :cond_c

    .line 326
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getOrCreateOutlinedDropDownMenuBackground()Landroid/graphics/drawable/Drawable;

    .line 329
    move-result-object v1

    .line 330
    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setDropDownBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 333
    goto :goto_5

    .line 334
    :cond_c
    if-ne v3, v2, :cond_d

    .line 336
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getOrCreateFilledDropDownMenuBackground()Landroid/graphics/drawable/Drawable;

    .line 339
    move-result-object v1

    .line 340
    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setDropDownBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 343
    :cond_d
    :goto_5
    return-void
.end method

.method public final j()V
    .locals 12

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->e()Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    .line 10
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 13
    move-result v0

    .line 14
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    .line 16
    invoke-virtual {v1}, Landroid/widget/TextView;->getGravity()I

    .line 19
    move-result v1

    .line 20
    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->v0:Lo/d4;

    .line 22
    iget-object v3, v2, Lo/d4;->A:Ljava/lang/CharSequence;

    .line 24
    invoke-virtual {v2, v3}, Lo/d4;->b(Ljava/lang/CharSequence;)Z

    .line 27
    move-result v3

    .line 28
    iput-boolean v3, v2, Lo/d4;->C:Z

    .line 30
    const/4 v4, 0x5

    .line 31
    const/high16 v5, 0x40000000    # 2.0f

    .line 33
    const v6, 0x800005

    .line 36
    const/4 v7, 0x1

    .line 37
    const/16 v8, 0x11

    .line 39
    iget-object v9, v2, Lo/d4;->d:Landroid/graphics/Rect;

    .line 41
    if-eq v1, v8, :cond_6

    .line 43
    and-int/lit8 v10, v1, 0x7

    .line 45
    if-ne v10, v7, :cond_1

    .line 47
    goto :goto_2

    .line 48
    :cond_1
    and-int v10, v1, v6

    .line 50
    if-eq v10, v6, :cond_4

    .line 52
    and-int/lit8 v10, v1, 0x5

    .line 54
    if-ne v10, v4, :cond_2

    .line 56
    goto :goto_1

    .line 57
    :cond_2
    if-eqz v3, :cond_3

    .line 59
    iget v3, v9, Landroid/graphics/Rect;->right:I

    .line 61
    int-to-float v3, v3

    .line 62
    iget v10, v2, Lo/d4;->Z:F

    .line 64
    goto :goto_3

    .line 65
    :cond_3
    iget v3, v9, Landroid/graphics/Rect;->left:I

    .line 67
    :goto_0
    int-to-float v3, v3

    .line 68
    goto :goto_4

    .line 69
    :cond_4
    :goto_1
    if-eqz v3, :cond_5

    .line 71
    iget v3, v9, Landroid/graphics/Rect;->left:I

    .line 73
    goto :goto_0

    .line 74
    :cond_5
    iget v3, v9, Landroid/graphics/Rect;->right:I

    .line 76
    int-to-float v3, v3

    .line 77
    iget v10, v2, Lo/d4;->Z:F

    .line 79
    goto :goto_3

    .line 80
    :cond_6
    :goto_2
    int-to-float v3, v0

    .line 81
    div-float/2addr v3, v5

    .line 82
    iget v10, v2, Lo/d4;->Z:F

    .line 84
    div-float/2addr v10, v5

    .line 85
    :goto_3
    sub-float/2addr v3, v10

    .line 86
    :goto_4
    iget v10, v9, Landroid/graphics/Rect;->left:I

    .line 88
    int-to-float v10, v10

    .line 89
    invoke-static {v3, v10}, Ljava/lang/Math;->max(FF)F

    .line 92
    move-result v3

    .line 93
    iget-object v10, p0, Lcom/google/android/material/textfield/TextInputLayout;->a0:Landroid/graphics/RectF;

    .line 95
    iput v3, v10, Landroid/graphics/RectF;->left:F

    .line 97
    iget v11, v9, Landroid/graphics/Rect;->top:I

    .line 99
    int-to-float v11, v11

    .line 100
    iput v11, v10, Landroid/graphics/RectF;->top:F

    .line 102
    if-eq v1, v8, :cond_c

    .line 104
    and-int/lit8 v8, v1, 0x7

    .line 106
    if-ne v8, v7, :cond_7

    .line 108
    goto :goto_7

    .line 109
    :cond_7
    and-int v0, v1, v6

    .line 111
    if-eq v0, v6, :cond_a

    .line 113
    and-int/lit8 v0, v1, 0x5

    .line 115
    if-ne v0, v4, :cond_8

    .line 117
    goto :goto_6

    .line 118
    :cond_8
    iget-boolean v0, v2, Lo/d4;->C:Z

    .line 120
    if-eqz v0, :cond_9

    .line 122
    iget v0, v9, Landroid/graphics/Rect;->right:I

    .line 124
    :goto_5
    int-to-float v0, v0

    .line 125
    goto :goto_8

    .line 126
    :cond_9
    iget v0, v2, Lo/d4;->Z:F

    .line 128
    add-float/2addr v0, v3

    .line 129
    goto :goto_8

    .line 130
    :cond_a
    :goto_6
    iget-boolean v0, v2, Lo/d4;->C:Z

    .line 132
    if-eqz v0, :cond_b

    .line 134
    iget v0, v2, Lo/d4;->Z:F

    .line 136
    add-float/2addr v3, v0

    .line 137
    move v0, v3

    .line 138
    goto :goto_8

    .line 139
    :cond_b
    iget v0, v9, Landroid/graphics/Rect;->right:I

    .line 141
    goto :goto_5

    .line 142
    :cond_c
    :goto_7
    int-to-float v0, v0

    .line 143
    div-float/2addr v0, v5

    .line 144
    iget v1, v2, Lo/d4;->Z:F

    .line 146
    div-float/2addr v1, v5

    .line 147
    add-float/2addr v0, v1

    .line 148
    :goto_8
    iget v1, v9, Landroid/graphics/Rect;->right:I

    .line 150
    int-to-float v1, v1

    .line 151
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    .line 154
    move-result v0

    .line 155
    iput v0, v10, Landroid/graphics/RectF;->right:F

    .line 157
    iget v0, v9, Landroid/graphics/Rect;->top:I

    .line 159
    int-to-float v0, v0

    .line 160
    invoke-virtual {v2}, Lo/d4;->d()F

    .line 163
    move-result v1

    .line 164
    add-float/2addr v1, v0

    .line 165
    iput v1, v10, Landroid/graphics/RectF;->bottom:F

    .line 167
    invoke-virtual {v10}, Landroid/graphics/RectF;->width()F

    .line 170
    move-result v0

    .line 171
    const/4 v1, 0x0

    .line 172
    cmpg-float v0, v0, v1

    .line 174
    if-lez v0, :cond_e

    .line 176
    invoke-virtual {v10}, Landroid/graphics/RectF;->height()F

    .line 179
    move-result v0

    .line 180
    cmpg-float v0, v0, v1

    .line 182
    if-gtz v0, :cond_d

    .line 184
    goto :goto_9

    .line 185
    :cond_d
    iget v0, v10, Landroid/graphics/RectF;->left:F

    .line 187
    iget v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->N:I

    .line 189
    int-to-float v1, v1

    .line 190
    sub-float/2addr v0, v1

    .line 191
    iput v0, v10, Landroid/graphics/RectF;->left:F

    .line 193
    iget v0, v10, Landroid/graphics/RectF;->right:F

    .line 195
    add-float/2addr v0, v1

    .line 196
    iput v0, v10, Landroid/graphics/RectF;->right:F

    .line 198
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 201
    move-result v0

    .line 202
    neg-int v0, v0

    .line 203
    int-to-float v0, v0

    .line 204
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 207
    move-result v1

    .line 208
    neg-int v1, v1

    .line 209
    int-to-float v1, v1

    .line 210
    invoke-virtual {v10}, Landroid/graphics/RectF;->height()F

    .line 213
    move-result v2

    .line 214
    div-float/2addr v2, v5

    .line 215
    sub-float/2addr v1, v2

    .line 216
    iget v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->Q:I

    .line 218
    int-to-float v2, v2

    .line 219
    add-float/2addr v1, v2

    .line 220
    invoke-virtual {v10, v0, v1}, Landroid/graphics/RectF;->offset(FF)V

    .line 223
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->F:Lo/eb;

    .line 225
    check-cast v0, Lo/j5;

    .line 227
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 230
    iget v1, v10, Landroid/graphics/RectF;->left:F

    .line 232
    iget v2, v10, Landroid/graphics/RectF;->top:F

    .line 234
    iget v3, v10, Landroid/graphics/RectF;->right:F

    .line 236
    iget v4, v10, Landroid/graphics/RectF;->bottom:F

    .line 238
    invoke-virtual {v0, v1, v2, v3, v4}, Lo/j5;->q(FFFF)V

    .line 241
    :cond_e
    :goto_9
    return-void
.end method

.method public final l(Lo/j2;I)V
    .locals 1

    .line 1
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 4
    invoke-virtual {p1}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    .line 7
    move-result-object p2

    .line 8
    invoke-virtual {p2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    .line 11
    move-result p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    const v0, -0xff01

    .line 15
    if-ne p2, v0, :cond_0

    .line 17
    :catch_0
    const p2, 0x7f0f0197

    .line 20
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 23
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 26
    move-result-object p2

    .line 27
    const v0, 0x7f05004f

    .line 30
    invoke-virtual {p2, v0}, Landroid/content/Context;->getColor(I)I

    .line 33
    move-result p2

    .line 34
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 37
    :cond_0
    return-void
.end method

.method public final m()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->j:Lo/m9;

    .line 3
    iget v1, v0, Lo/m9;->o:I

    .line 5
    const/4 v2, 0x1

    .line 6
    if-ne v1, v2, :cond_0

    .line 8
    iget-object v1, v0, Lo/m9;->r:Lo/j2;

    .line 10
    if-eqz v1, :cond_0

    .line 12
    iget-object v0, v0, Lo/m9;->p:Ljava/lang/CharSequence;

    .line 14
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_0

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v2, 0x0

    .line 22
    :goto_0
    return v2
.end method

.method public final n(Landroid/text/Editable;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->n:Lo/Of;

    .line 3
    check-cast v0, Lo/Y5;

    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    const/4 v0, 0x0

    .line 9
    if-eqz p1, :cond_0

    .line 11
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 14
    move-result p1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move p1, v0

    .line 17
    :goto_0
    iget-boolean v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->m:Z

    .line 19
    iget v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->l:I

    .line 21
    const/4 v3, -0x1

    .line 22
    const/4 v4, 0x0

    .line 23
    if-ne v2, v3, :cond_1

    .line 25
    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->o:Lo/j2;

    .line 27
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 34
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->o:Lo/j2;

    .line 36
    invoke-virtual {p1, v4}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 39
    iput-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->m:Z

    .line 41
    goto/16 :goto_5

    .line 43
    :cond_1
    const/4 v3, 0x1

    .line 44
    if-le p1, v2, :cond_2

    .line 46
    move v2, v3

    .line 47
    goto :goto_1

    .line 48
    :cond_2
    move v2, v0

    .line 49
    :goto_1
    iput-boolean v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->m:Z

    .line 51
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 54
    move-result-object v2

    .line 55
    iget-object v5, p0, Lcom/google/android/material/textfield/TextInputLayout;->o:Lo/j2;

    .line 57
    iget v6, p0, Lcom/google/android/material/textfield/TextInputLayout;->l:I

    .line 59
    iget-boolean v7, p0, Lcom/google/android/material/textfield/TextInputLayout;->m:Z

    .line 61
    if-eqz v7, :cond_3

    .line 63
    const v7, 0x7f0e002f

    .line 66
    goto :goto_2

    .line 67
    :cond_3
    const v7, 0x7f0e002e

    .line 70
    :goto_2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 73
    move-result-object v8

    .line 74
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 77
    move-result-object v6

    .line 78
    filled-new-array {v8, v6}, [Ljava/lang/Object;

    .line 81
    move-result-object v6

    .line 82
    invoke-virtual {v2, v7, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 85
    move-result-object v2

    .line 86
    invoke-virtual {v5, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 89
    iget-boolean v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->m:Z

    .line 91
    if-eq v1, v2, :cond_4

    .line 93
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->o()V

    .line 96
    :cond_4
    sget-object v2, Lo/e3;->b:Ljava/lang/String;

    .line 98
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 101
    move-result-object v2

    .line 102
    invoke-static {v2}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    .line 105
    move-result v2

    .line 106
    if-ne v2, v3, :cond_5

    .line 108
    sget-object v2, Lo/e3;->e:Lo/e3;

    .line 110
    goto :goto_3

    .line 111
    :cond_5
    sget-object v2, Lo/e3;->d:Lo/e3;

    .line 113
    :goto_3
    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->o:Lo/j2;

    .line 115
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 118
    move-result-object v5

    .line 119
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 122
    move-result-object p1

    .line 123
    iget v6, p0, Lcom/google/android/material/textfield/TextInputLayout;->l:I

    .line 125
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 128
    move-result-object v6

    .line 129
    filled-new-array {p1, v6}, [Ljava/lang/Object;

    .line 132
    move-result-object p1

    .line 133
    const v6, 0x7f0e0030

    .line 136
    invoke-virtual {v5, v6, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 139
    move-result-object p1

    .line 140
    if-nez p1, :cond_6

    .line 142
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 145
    goto :goto_4

    .line 146
    :cond_6
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 149
    sget-object v4, Lo/Jf;->a:Lo/h3;

    .line 151
    invoke-virtual {v2, p1}, Lo/e3;->c(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 154
    move-result-object p1

    .line 155
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    .line 158
    move-result-object v4

    .line 159
    :goto_4
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 162
    :goto_5
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    .line 164
    if-eqz p1, :cond_7

    .line 166
    iget-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->m:Z

    .line 168
    if-eq v1, p1, :cond_7

    .line 170
    invoke-virtual {p0, v0, v0}, Lcom/google/android/material/textfield/TextInputLayout;->u(ZZ)V

    .line 173
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->x()V

    .line 176
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->r()V

    .line 179
    :cond_7
    return-void
.end method

.method public final o()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->o:Lo/j2;

    .line 3
    if-eqz v0, :cond_2

    .line 5
    iget-boolean v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->m:Z

    .line 7
    if-eqz v1, :cond_0

    .line 9
    iget v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->p:I

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->q:I

    .line 14
    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->l(Lo/j2;I)V

    .line 17
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->m:Z

    .line 19
    if-nez v0, :cond_1

    .line 21
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->y:Landroid/content/res/ColorStateList;

    .line 23
    if-eqz v0, :cond_1

    .line 25
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->o:Lo/j2;

    .line 27
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 30
    :cond_1
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->m:Z

    .line 32
    if-eqz v0, :cond_2

    .line 34
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->z:Landroid/content/res/ColorStateList;

    .line 36
    if-eqz v0, :cond_2

    .line 38
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->o:Lo/j2;

    .line 40
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 43
    :cond_2
    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 4
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->v0:Lo/d4;

    .line 6
    invoke-virtual {v0, p1}, Lo/d4;->g(Landroid/content/res/Configuration;)V

    .line 9
    return-void
.end method

.method public final onGlobalLayout()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->c:Lo/b7;

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 10
    const/4 v1, 0x0

    .line 11
    iput-boolean v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->B0:Z

    .line 13
    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    .line 15
    if-nez v2, :cond_0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    .line 21
    move-result v0

    .line 22
    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->b:Lo/if;

    .line 24
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    .line 27
    move-result v2

    .line 28
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    .line 31
    move-result v0

    .line 32
    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    .line 34
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    .line 37
    move-result v2

    .line 38
    if-ge v2, v0, :cond_1

    .line 40
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    .line 42
    invoke-virtual {v1, v0}, Landroid/view/View;->setMinimumHeight(I)V

    .line 45
    const/4 v1, 0x1

    .line 46
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->q()Z

    .line 49
    move-result v0

    .line 50
    if-nez v1, :cond_2

    .line 52
    if-eqz v0, :cond_3

    .line 54
    :cond_2
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    .line 56
    new-instance v1, Lo/i0;

    .line 58
    const/16 v2, 0xd

    .line 60
    invoke-direct {v1, v2, p0}, Lo/i0;-><init>(ILjava/lang/Object;)V

    .line 63
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 66
    :cond_3
    return-void
.end method

.method public final onLayout(ZIIII)V
    .locals 6

    .line 1
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 4
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    .line 6
    if-eqz p1, :cond_d

    .line 8
    sget-object p2, Lo/Q5;->a:Ljava/lang/ThreadLocal;

    .line 10
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 13
    move-result p2

    .line 14
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 17
    move-result p3

    .line 18
    iget-object p4, p0, Lcom/google/android/material/textfield/TextInputLayout;->V:Landroid/graphics/Rect;

    .line 20
    const/4 p5, 0x0

    .line 21
    invoke-virtual {p4, p5, p5, p2, p3}, Landroid/graphics/Rect;->set(IIII)V

    .line 24
    invoke-static {p0, p1, p4}, Lo/Q5;->b(Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;)V

    .line 27
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->J:Lo/eb;

    .line 29
    if-eqz p1, :cond_0

    .line 31
    iget p2, p4, Landroid/graphics/Rect;->bottom:I

    .line 33
    iget p3, p0, Lcom/google/android/material/textfield/TextInputLayout;->R:I

    .line 35
    sub-int p3, p2, p3

    .line 37
    iget v0, p4, Landroid/graphics/Rect;->left:I

    .line 39
    iget v1, p4, Landroid/graphics/Rect;->right:I

    .line 41
    invoke-virtual {p1, v0, p3, v1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 44
    :cond_0
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->K:Lo/eb;

    .line 46
    if-eqz p1, :cond_1

    .line 48
    iget p2, p4, Landroid/graphics/Rect;->bottom:I

    .line 50
    iget p3, p0, Lcom/google/android/material/textfield/TextInputLayout;->S:I

    .line 52
    sub-int p3, p2, p3

    .line 54
    iget v0, p4, Landroid/graphics/Rect;->left:I

    .line 56
    iget v1, p4, Landroid/graphics/Rect;->right:I

    .line 58
    invoke-virtual {p1, v0, p3, v1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 61
    :cond_1
    iget-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->C:Z

    .line 63
    if-eqz p1, :cond_d

    .line 65
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    .line 67
    invoke-virtual {p1}, Landroid/widget/TextView;->getTextSize()F

    .line 70
    move-result p1

    .line 71
    iget-object p2, p0, Lcom/google/android/material/textfield/TextInputLayout;->v0:Lo/d4;

    .line 73
    iget p3, p2, Lo/d4;->h:F

    .line 75
    cmpl-float p3, p3, p1

    .line 77
    if-eqz p3, :cond_2

    .line 79
    iput p1, p2, Lo/d4;->h:F

    .line 81
    invoke-virtual {p2, p5}, Lo/d4;->h(Z)V

    .line 84
    :cond_2
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    .line 86
    invoke-virtual {p1}, Landroid/widget/TextView;->getGravity()I

    .line 89
    move-result p1

    .line 90
    and-int/lit8 p3, p1, -0x71

    .line 92
    or-int/lit8 p3, p3, 0x30

    .line 94
    iget v0, p2, Lo/d4;->g:I

    .line 96
    if-eq v0, p3, :cond_3

    .line 98
    iput p3, p2, Lo/d4;->g:I

    .line 100
    invoke-virtual {p2, p5}, Lo/d4;->h(Z)V

    .line 103
    :cond_3
    iget p3, p2, Lo/d4;->f:I

    .line 105
    if-eq p3, p1, :cond_4

    .line 107
    iput p1, p2, Lo/d4;->f:I

    .line 109
    invoke-virtual {p2, p5}, Lo/d4;->h(Z)V

    .line 112
    :cond_4
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    .line 114
    if-eqz p1, :cond_c

    .line 116
    invoke-static {p0}, Lo/Ng;->l(Landroid/view/View;)Z

    .line 119
    move-result p1

    .line 120
    iget p3, p4, Landroid/graphics/Rect;->bottom:I

    .line 122
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->W:Landroid/graphics/Rect;

    .line 124
    iput p3, v0, Landroid/graphics/Rect;->bottom:I

    .line 126
    iget p3, p0, Lcom/google/android/material/textfield/TextInputLayout;->O:I

    .line 128
    const/4 v1, 0x1

    .line 129
    if-eq p3, v1, :cond_6

    .line 131
    const/4 v2, 0x2

    .line 132
    if-eq p3, v2, :cond_5

    .line 134
    iget p3, p4, Landroid/graphics/Rect;->left:I

    .line 136
    invoke-virtual {p0, p3, p1}, Lcom/google/android/material/textfield/TextInputLayout;->g(IZ)I

    .line 139
    move-result p3

    .line 140
    iput p3, v0, Landroid/graphics/Rect;->left:I

    .line 142
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 145
    move-result p3

    .line 146
    iput p3, v0, Landroid/graphics/Rect;->top:I

    .line 148
    iget p3, p4, Landroid/graphics/Rect;->right:I

    .line 150
    invoke-virtual {p0, p3, p1}, Lcom/google/android/material/textfield/TextInputLayout;->h(IZ)I

    .line 153
    move-result p1

    .line 154
    iput p1, v0, Landroid/graphics/Rect;->right:I

    .line 156
    goto :goto_0

    .line 157
    :cond_5
    iget p1, p4, Landroid/graphics/Rect;->left:I

    .line 159
    iget-object p3, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    .line 161
    invoke-virtual {p3}, Landroid/view/View;->getPaddingLeft()I

    .line 164
    move-result p3

    .line 165
    add-int/2addr p3, p1

    .line 166
    iput p3, v0, Landroid/graphics/Rect;->left:I

    .line 168
    iget p1, p4, Landroid/graphics/Rect;->top:I

    .line 170
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->c()I

    .line 173
    move-result p3

    .line 174
    sub-int/2addr p1, p3

    .line 175
    iput p1, v0, Landroid/graphics/Rect;->top:I

    .line 177
    iget p1, p4, Landroid/graphics/Rect;->right:I

    .line 179
    iget-object p3, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    .line 181
    invoke-virtual {p3}, Landroid/view/View;->getPaddingRight()I

    .line 184
    move-result p3

    .line 185
    sub-int/2addr p1, p3

    .line 186
    iput p1, v0, Landroid/graphics/Rect;->right:I

    .line 188
    goto :goto_0

    .line 189
    :cond_6
    iget p3, p4, Landroid/graphics/Rect;->left:I

    .line 191
    invoke-virtual {p0, p3, p1}, Lcom/google/android/material/textfield/TextInputLayout;->g(IZ)I

    .line 194
    move-result p3

    .line 195
    iput p3, v0, Landroid/graphics/Rect;->left:I

    .line 197
    iget p3, p4, Landroid/graphics/Rect;->top:I

    .line 199
    iget v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->P:I

    .line 201
    add-int/2addr p3, v2

    .line 202
    iput p3, v0, Landroid/graphics/Rect;->top:I

    .line 204
    iget p3, p4, Landroid/graphics/Rect;->right:I

    .line 206
    invoke-virtual {p0, p3, p1}, Lcom/google/android/material/textfield/TextInputLayout;->h(IZ)I

    .line 209
    move-result p1

    .line 210
    iput p1, v0, Landroid/graphics/Rect;->right:I

    .line 212
    :goto_0
    iget p1, v0, Landroid/graphics/Rect;->left:I

    .line 214
    iget p3, v0, Landroid/graphics/Rect;->top:I

    .line 216
    iget v2, v0, Landroid/graphics/Rect;->right:I

    .line 218
    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    .line 220
    iget-object v4, p2, Lo/d4;->d:Landroid/graphics/Rect;

    .line 222
    iget v5, v4, Landroid/graphics/Rect;->left:I

    .line 224
    if-ne v5, p1, :cond_7

    .line 226
    iget v5, v4, Landroid/graphics/Rect;->top:I

    .line 228
    if-ne v5, p3, :cond_7

    .line 230
    iget v5, v4, Landroid/graphics/Rect;->right:I

    .line 232
    if-ne v5, v2, :cond_7

    .line 234
    iget v5, v4, Landroid/graphics/Rect;->bottom:I

    .line 236
    if-ne v5, v3, :cond_7

    .line 238
    goto :goto_1

    .line 239
    :cond_7
    invoke-virtual {v4, p1, p3, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 242
    iput-boolean v1, p2, Lo/d4;->M:Z

    .line 244
    :goto_1
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    .line 246
    if-eqz p1, :cond_b

    .line 248
    iget-object p1, p2, Lo/d4;->O:Landroid/text/TextPaint;

    .line 250
    iget p3, p2, Lo/d4;->h:F

    .line 252
    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 255
    iget-object p3, p2, Lo/d4;->u:Landroid/graphics/Typeface;

    .line 257
    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 260
    iget p3, p2, Lo/d4;->W:F

    .line 262
    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setLetterSpacing(F)V

    .line 265
    invoke-virtual {p1}, Landroid/graphics/Paint;->ascent()F

    .line 268
    move-result p1

    .line 269
    neg-float p1, p1

    .line 270
    iget p3, p4, Landroid/graphics/Rect;->left:I

    .line 272
    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    .line 274
    invoke-virtual {v2}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    .line 277
    move-result v2

    .line 278
    add-int/2addr v2, p3

    .line 279
    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 281
    iget p3, p0, Lcom/google/android/material/textfield/TextInputLayout;->O:I

    .line 283
    if-ne p3, v1, :cond_8

    .line 285
    iget-object p3, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    .line 287
    invoke-virtual {p3}, Landroid/widget/TextView;->getMinLines()I

    .line 290
    move-result p3

    .line 291
    if-gt p3, v1, :cond_8

    .line 293
    invoke-virtual {p4}, Landroid/graphics/Rect;->centerY()I

    .line 296
    move-result p3

    .line 297
    int-to-float p3, p3

    .line 298
    const/high16 v2, 0x40000000    # 2.0f

    .line 300
    div-float v2, p1, v2

    .line 302
    sub-float/2addr p3, v2

    .line 303
    float-to-int p3, p3

    .line 304
    goto :goto_2

    .line 305
    :cond_8
    iget p3, p4, Landroid/graphics/Rect;->top:I

    .line 307
    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    .line 309
    invoke-virtual {v2}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    .line 312
    move-result v2

    .line 313
    add-int/2addr p3, v2

    .line 314
    :goto_2
    iput p3, v0, Landroid/graphics/Rect;->top:I

    .line 316
    iget p3, p4, Landroid/graphics/Rect;->right:I

    .line 318
    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    .line 320
    invoke-virtual {v2}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    .line 323
    move-result v2

    .line 324
    sub-int/2addr p3, v2

    .line 325
    iput p3, v0, Landroid/graphics/Rect;->right:I

    .line 327
    iget p3, p0, Lcom/google/android/material/textfield/TextInputLayout;->O:I

    .line 329
    if-ne p3, v1, :cond_9

    .line 331
    iget-object p3, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    .line 333
    invoke-virtual {p3}, Landroid/widget/TextView;->getMinLines()I

    .line 336
    move-result p3

    .line 337
    if-gt p3, v1, :cond_9

    .line 339
    iget p3, v0, Landroid/graphics/Rect;->top:I

    .line 341
    int-to-float p3, p3

    .line 342
    add-float/2addr p3, p1

    .line 343
    float-to-int p1, p3

    .line 344
    goto :goto_3

    .line 345
    :cond_9
    iget p1, p4, Landroid/graphics/Rect;->bottom:I

    .line 347
    iget-object p3, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    .line 349
    invoke-virtual {p3}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    .line 352
    move-result p3

    .line 353
    sub-int/2addr p1, p3

    .line 354
    :goto_3
    iput p1, v0, Landroid/graphics/Rect;->bottom:I

    .line 356
    iget p3, v0, Landroid/graphics/Rect;->left:I

    .line 358
    iget p4, v0, Landroid/graphics/Rect;->top:I

    .line 360
    iget v0, v0, Landroid/graphics/Rect;->right:I

    .line 362
    iget-object v2, p2, Lo/d4;->c:Landroid/graphics/Rect;

    .line 364
    iget v3, v2, Landroid/graphics/Rect;->left:I

    .line 366
    if-ne v3, p3, :cond_a

    .line 368
    iget v3, v2, Landroid/graphics/Rect;->top:I

    .line 370
    if-ne v3, p4, :cond_a

    .line 372
    iget v3, v2, Landroid/graphics/Rect;->right:I

    .line 374
    if-ne v3, v0, :cond_a

    .line 376
    iget v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 378
    if-ne v3, p1, :cond_a

    .line 380
    goto :goto_4

    .line 381
    :cond_a
    invoke-virtual {v2, p3, p4, v0, p1}, Landroid/graphics/Rect;->set(IIII)V

    .line 384
    iput-boolean v1, p2, Lo/d4;->M:Z

    .line 386
    :goto_4
    invoke-virtual {p2, p5}, Lo/d4;->h(Z)V

    .line 389
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->e()Z

    .line 392
    move-result p1

    .line 393
    if-eqz p1, :cond_d

    .line 395
    iget-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->u0:Z

    .line 397
    if-nez p1, :cond_d

    .line 399
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->j()V

    .line 402
    goto :goto_5

    .line 403
    :cond_b
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 405
    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 408
    throw p1

    .line 409
    :cond_c
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 411
    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 414
    throw p1

    .line 415
    :cond_d
    :goto_5
    return-void
.end method

.method public final onMeasure(II)V
    .locals 4

    .line 1
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 4
    iget-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->B0:Z

    .line 6
    iget-object p2, p0, Lcom/google/android/material/textfield/TextInputLayout;->c:Lo/b7;

    .line 8
    if-nez p1, :cond_0

    .line 10
    invoke-virtual {p2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {p1, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 17
    const/4 p1, 0x1

    .line 18
    iput-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->B0:Z

    .line 20
    :cond_0
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->t:Lo/j2;

    .line 22
    if-eqz p1, :cond_1

    .line 24
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    .line 26
    if-eqz p1, :cond_1

    .line 28
    invoke-virtual {p1}, Landroid/widget/TextView;->getGravity()I

    .line 31
    move-result p1

    .line 32
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->t:Lo/j2;

    .line 34
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setGravity(I)V

    .line 37
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->t:Lo/j2;

    .line 39
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    .line 41
    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    .line 44
    move-result v0

    .line 45
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    .line 47
    invoke-virtual {v1}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    .line 50
    move-result v1

    .line 51
    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    .line 53
    invoke-virtual {v2}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    .line 56
    move-result v2

    .line 57
    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    .line 59
    invoke-virtual {v3}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    .line 62
    move-result v3

    .line 63
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 66
    :cond_1
    invoke-virtual {p2}, Lo/b7;->m()V

    .line 69
    return-void
.end method

.method public final onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 1
    instance-of v0, p1, Lo/Pf;

    .line 3
    if-nez v0, :cond_0

    .line 5
    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 8
    return-void

    .line 9
    :cond_0
    check-cast p1, Lo/Pf;

    .line 11
    iget-object v0, p1, Lo/f;->a:Landroid/os/Parcelable;

    .line 13
    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 16
    iget-object v0, p1, Lo/Pf;->c:Ljava/lang/CharSequence;

    .line 18
    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 21
    iget-boolean p1, p1, Lo/Pf;->d:Z

    .line 23
    if-eqz p1, :cond_1

    .line 25
    new-instance p1, Lo/J2;

    .line 27
    const/16 v0, 0xb

    .line 29
    invoke-direct {p1, v0, p0}, Lo/J2;-><init>(ILjava/lang/Object;)V

    .line 32
    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 35
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 38
    return-void
.end method

.method public final onRtlPropertiesChanged(I)V
    .locals 13

    .line 1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onRtlPropertiesChanged(I)V

    .line 4
    const/4 v0, 0x1

    .line 5
    if-ne p1, v0, :cond_0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    iget-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->M:Z

    .line 11
    if-eq v0, p1, :cond_1

    .line 13
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->L:Lo/Ae;

    .line 15
    iget-object p1, p1, Lo/Ae;->e:Lo/d5;

    .line 17
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->a0:Landroid/graphics/RectF;

    .line 19
    invoke-interface {p1, v1}, Lo/d5;->a(Landroid/graphics/RectF;)F

    .line 22
    move-result p1

    .line 23
    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->L:Lo/Ae;

    .line 25
    iget-object v2, v2, Lo/Ae;->f:Lo/d5;

    .line 27
    invoke-interface {v2, v1}, Lo/d5;->a(Landroid/graphics/RectF;)F

    .line 30
    move-result v2

    .line 31
    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->L:Lo/Ae;

    .line 33
    iget-object v3, v3, Lo/Ae;->h:Lo/d5;

    .line 35
    invoke-interface {v3, v1}, Lo/d5;->a(Landroid/graphics/RectF;)F

    .line 38
    move-result v3

    .line 39
    iget-object v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->L:Lo/Ae;

    .line 41
    iget-object v4, v4, Lo/Ae;->g:Lo/d5;

    .line 43
    invoke-interface {v4, v1}, Lo/d5;->a(Landroid/graphics/RectF;)F

    .line 46
    move-result v1

    .line 47
    iget-object v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->L:Lo/Ae;

    .line 49
    iget-object v5, v4, Lo/Ae;->a:Lo/L1;

    .line 51
    iget-object v6, v4, Lo/Ae;->b:Lo/L1;

    .line 53
    iget-object v7, v4, Lo/Ae;->d:Lo/L1;

    .line 55
    iget-object v4, v4, Lo/Ae;->c:Lo/L1;

    .line 57
    new-instance v8, Lo/u6;

    .line 59
    const/4 v9, 0x0

    .line 60
    invoke-direct {v8, v9}, Lo/u6;-><init>(I)V

    .line 63
    new-instance v9, Lo/u6;

    .line 65
    const/4 v10, 0x0

    .line 66
    invoke-direct {v9, v10}, Lo/u6;-><init>(I)V

    .line 69
    new-instance v10, Lo/u6;

    .line 71
    const/4 v11, 0x0

    .line 72
    invoke-direct {v10, v11}, Lo/u6;-><init>(I)V

    .line 75
    new-instance v11, Lo/u6;

    .line 77
    const/4 v12, 0x0

    .line 78
    invoke-direct {v11, v12}, Lo/u6;-><init>(I)V

    .line 81
    invoke-static {v6}, Lo/ze;->b(Lo/L1;)V

    .line 84
    invoke-static {v5}, Lo/ze;->b(Lo/L1;)V

    .line 87
    invoke-static {v4}, Lo/ze;->b(Lo/L1;)V

    .line 90
    invoke-static {v7}, Lo/ze;->b(Lo/L1;)V

    .line 93
    new-instance v12, Lo/g;

    .line 95
    invoke-direct {v12, v2}, Lo/g;-><init>(F)V

    .line 98
    new-instance v2, Lo/g;

    .line 100
    invoke-direct {v2, p1}, Lo/g;-><init>(F)V

    .line 103
    new-instance p1, Lo/g;

    .line 105
    invoke-direct {p1, v1}, Lo/g;-><init>(F)V

    .line 108
    new-instance v1, Lo/g;

    .line 110
    invoke-direct {v1, v3}, Lo/g;-><init>(F)V

    .line 113
    new-instance v3, Lo/Ae;

    .line 115
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 118
    iput-object v6, v3, Lo/Ae;->a:Lo/L1;

    .line 120
    iput-object v5, v3, Lo/Ae;->b:Lo/L1;

    .line 122
    iput-object v7, v3, Lo/Ae;->c:Lo/L1;

    .line 124
    iput-object v4, v3, Lo/Ae;->d:Lo/L1;

    .line 126
    iput-object v12, v3, Lo/Ae;->e:Lo/d5;

    .line 128
    iput-object v2, v3, Lo/Ae;->f:Lo/d5;

    .line 130
    iput-object v1, v3, Lo/Ae;->g:Lo/d5;

    .line 132
    iput-object p1, v3, Lo/Ae;->h:Lo/d5;

    .line 134
    iput-object v8, v3, Lo/Ae;->i:Lo/u6;

    .line 136
    iput-object v9, v3, Lo/Ae;->j:Lo/u6;

    .line 138
    iput-object v10, v3, Lo/Ae;->k:Lo/u6;

    .line 140
    iput-object v11, v3, Lo/Ae;->l:Lo/u6;

    .line 142
    iput-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->M:Z

    .line 144
    invoke-virtual {p0, v3}, Lcom/google/android/material/textfield/TextInputLayout;->setShapeAppearanceModel(Lo/Ae;)V

    .line 147
    :cond_1
    return-void
.end method

.method public final onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lo/Pf;

    .line 7
    invoke-direct {v1, v0}, Lo/f;-><init>(Landroid/os/Parcelable;)V

    .line 10
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->m()Z

    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 16
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getError()Ljava/lang/CharSequence;

    .line 19
    move-result-object v0

    .line 20
    iput-object v0, v1, Lo/Pf;->c:Ljava/lang/CharSequence;

    .line 22
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->c:Lo/b7;

    .line 24
    iget v2, v0, Lo/b7;->i:I

    .line 26
    if-eqz v2, :cond_1

    .line 28
    iget-object v0, v0, Lo/b7;->g:Lcom/google/android/material/internal/CheckableImageButton;

    .line 30
    iget-boolean v0, v0, Lcom/google/android/material/internal/CheckableImageButton;->d:Z

    .line 32
    if-eqz v0, :cond_1

    .line 34
    const/4 v0, 0x1

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    const/4 v0, 0x0

    .line 37
    :goto_0
    iput-boolean v0, v1, Lo/Pf;->d:Z

    .line 39
    return-object v1
.end method

.method public final p()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->A:Landroid/content/res/ColorStateList;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 9
    move-result-object v0

    .line 10
    const v1, 0x7f0300f7

    .line 13
    invoke-static {v0, v1}, Lo/Ha;->m0(Landroid/content/Context;I)Landroid/util/TypedValue;

    .line 16
    move-result-object v1

    .line 17
    const/4 v2, 0x0

    .line 18
    if-nez v1, :cond_2

    .line 20
    :cond_1
    move-object v0, v2

    .line 21
    goto :goto_0

    .line 22
    :cond_2
    iget v3, v1, Landroid/util/TypedValue;->resourceId:I

    .line 24
    if-eqz v3, :cond_3

    .line 26
    invoke-static {v0, v3}, Lo/L1;->v(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 29
    move-result-object v0

    .line 30
    goto :goto_0

    .line 31
    :cond_3
    iget v0, v1, Landroid/util/TypedValue;->data:I

    .line 33
    if-eqz v0, :cond_1

    .line 35
    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 38
    move-result-object v0

    .line 39
    :goto_0
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    .line 41
    if-eqz v1, :cond_7

    .line 43
    invoke-static {v1}, Lo/u;->e(Landroid/widget/EditText;)Landroid/graphics/drawable/Drawable;

    .line 46
    move-result-object v1

    .line 47
    if-nez v1, :cond_4

    .line 49
    goto :goto_1

    .line 50
    :cond_4
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    .line 52
    invoke-static {v1}, Lo/u;->e(Landroid/widget/EditText;)Landroid/graphics/drawable/Drawable;

    .line 55
    move-result-object v1

    .line 56
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 59
    move-result-object v1

    .line 60
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->m()Z

    .line 63
    move-result v2

    .line 64
    if-nez v2, :cond_5

    .line 66
    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->o:Lo/j2;

    .line 68
    if-eqz v2, :cond_6

    .line 70
    iget-boolean v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->m:Z

    .line 72
    if-eqz v2, :cond_6

    .line 74
    :cond_5
    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->B:Landroid/content/res/ColorStateList;

    .line 76
    if-eqz v2, :cond_6

    .line 78
    move-object v0, v2

    .line 79
    :cond_6
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 82
    :cond_7
    :goto_1
    return-void
.end method

.method public final q()Z
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 6
    return v1

    .line 7
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getStartIconDrawable()Landroid/graphics/drawable/Drawable;

    .line 10
    move-result-object v0

    .line 11
    const/4 v2, 0x0

    .line 12
    const/4 v3, 0x2

    .line 13
    const/4 v4, 0x3

    .line 14
    const/4 v5, 0x1

    .line 15
    if-nez v0, :cond_1

    .line 17
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getPrefixText()Ljava/lang/CharSequence;

    .line 20
    move-result-object v0

    .line 21
    if-eqz v0, :cond_4

    .line 23
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getPrefixTextView()Landroid/widget/TextView;

    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 30
    move-result v0

    .line 31
    if-nez v0, :cond_4

    .line 33
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->b:Lo/if;

    .line 35
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    .line 38
    move-result v6

    .line 39
    if-lez v6, :cond_4

    .line 41
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    .line 44
    move-result v0

    .line 45
    iget-object v6, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    .line 47
    invoke-virtual {v6}, Landroid/view/View;->getPaddingLeft()I

    .line 50
    move-result v6

    .line 51
    sub-int/2addr v0, v6

    .line 52
    iget-object v6, p0, Lcom/google/android/material/textfield/TextInputLayout;->c0:Landroid/graphics/drawable/ColorDrawable;

    .line 54
    if-eqz v6, :cond_2

    .line 56
    iget v6, p0, Lcom/google/android/material/textfield/TextInputLayout;->d0:I

    .line 58
    if-eq v6, v0, :cond_3

    .line 60
    :cond_2
    new-instance v6, Landroid/graphics/drawable/ColorDrawable;

    .line 62
    invoke-direct {v6}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    .line 65
    iput-object v6, p0, Lcom/google/android/material/textfield/TextInputLayout;->c0:Landroid/graphics/drawable/ColorDrawable;

    .line 67
    iput v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->d0:I

    .line 69
    invoke-virtual {v6, v1, v1, v0, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 72
    :cond_3
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    .line 74
    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    .line 77
    move-result-object v0

    .line 78
    aget-object v6, v0, v1

    .line 80
    iget-object v7, p0, Lcom/google/android/material/textfield/TextInputLayout;->c0:Landroid/graphics/drawable/ColorDrawable;

    .line 82
    if-eq v6, v7, :cond_5

    .line 84
    iget-object v6, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    .line 86
    aget-object v8, v0, v5

    .line 88
    aget-object v9, v0, v3

    .line 90
    aget-object v0, v0, v4

    .line 92
    invoke-virtual {v6, v7, v8, v9, v0}, Landroid/widget/TextView;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 95
    goto :goto_0

    .line 96
    :cond_4
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->c0:Landroid/graphics/drawable/ColorDrawable;

    .line 98
    if-eqz v0, :cond_5

    .line 100
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    .line 102
    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    .line 105
    move-result-object v0

    .line 106
    iget-object v6, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    .line 108
    aget-object v7, v0, v5

    .line 110
    aget-object v8, v0, v3

    .line 112
    aget-object v0, v0, v4

    .line 114
    invoke-virtual {v6, v2, v7, v8, v0}, Landroid/widget/TextView;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 117
    iput-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->c0:Landroid/graphics/drawable/ColorDrawable;

    .line 119
    :goto_0
    move v0, v5

    .line 120
    goto :goto_1

    .line 121
    :cond_5
    move v0, v1

    .line 122
    :goto_1
    iget-object v6, p0, Lcom/google/android/material/textfield/TextInputLayout;->c:Lo/b7;

    .line 124
    invoke-virtual {v6}, Lo/b7;->e()Z

    .line 127
    move-result v7

    .line 128
    if-nez v7, :cond_7

    .line 130
    iget v7, v6, Lo/b7;->i:I

    .line 132
    if-eqz v7, :cond_6

    .line 134
    invoke-virtual {v6}, Lo/b7;->d()Z

    .line 137
    move-result v7

    .line 138
    if-nez v7, :cond_7

    .line 140
    :cond_6
    iget-object v7, v6, Lo/b7;->p:Ljava/lang/CharSequence;

    .line 142
    if-eqz v7, :cond_e

    .line 144
    :cond_7
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    .line 147
    move-result v7

    .line 148
    if-lez v7, :cond_e

    .line 150
    iget-object v7, v6, Lo/b7;->q:Lo/j2;

    .line 152
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    .line 155
    move-result v7

    .line 156
    iget-object v8, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    .line 158
    invoke-virtual {v8}, Landroid/view/View;->getPaddingRight()I

    .line 161
    move-result v8

    .line 162
    sub-int/2addr v7, v8

    .line 163
    invoke-virtual {v6}, Lo/b7;->e()Z

    .line 166
    move-result v8

    .line 167
    if-eqz v8, :cond_8

    .line 169
    iget-object v2, v6, Lo/b7;->c:Lcom/google/android/material/internal/CheckableImageButton;

    .line 171
    goto :goto_2

    .line 172
    :cond_8
    iget v8, v6, Lo/b7;->i:I

    .line 174
    if-eqz v8, :cond_9

    .line 176
    invoke-virtual {v6}, Lo/b7;->d()Z

    .line 179
    move-result v8

    .line 180
    if-eqz v8, :cond_9

    .line 182
    iget-object v2, v6, Lo/b7;->g:Lcom/google/android/material/internal/CheckableImageButton;

    .line 184
    :cond_9
    :goto_2
    if-eqz v2, :cond_a

    .line 186
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    .line 189
    move-result v6

    .line 190
    add-int/2addr v6, v7

    .line 191
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 194
    move-result-object v2

    .line 195
    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 197
    invoke-virtual {v2}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    .line 200
    move-result v2

    .line 201
    add-int v7, v2, v6

    .line 203
    :cond_a
    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    .line 205
    invoke-virtual {v2}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    .line 208
    move-result-object v2

    .line 209
    iget-object v6, p0, Lcom/google/android/material/textfield/TextInputLayout;->f0:Landroid/graphics/drawable/ColorDrawable;

    .line 211
    if-eqz v6, :cond_b

    .line 213
    iget v8, p0, Lcom/google/android/material/textfield/TextInputLayout;->g0:I

    .line 215
    if-eq v8, v7, :cond_b

    .line 217
    iput v7, p0, Lcom/google/android/material/textfield/TextInputLayout;->g0:I

    .line 219
    invoke-virtual {v6, v1, v1, v7, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 222
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    .line 224
    aget-object v1, v2, v1

    .line 226
    aget-object v3, v2, v5

    .line 228
    iget-object v6, p0, Lcom/google/android/material/textfield/TextInputLayout;->f0:Landroid/graphics/drawable/ColorDrawable;

    .line 230
    aget-object v2, v2, v4

    .line 232
    invoke-virtual {v0, v1, v3, v6, v2}, Landroid/widget/TextView;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 235
    goto :goto_3

    .line 236
    :cond_b
    if-nez v6, :cond_c

    .line 238
    new-instance v6, Landroid/graphics/drawable/ColorDrawable;

    .line 240
    invoke-direct {v6}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    .line 243
    iput-object v6, p0, Lcom/google/android/material/textfield/TextInputLayout;->f0:Landroid/graphics/drawable/ColorDrawable;

    .line 245
    iput v7, p0, Lcom/google/android/material/textfield/TextInputLayout;->g0:I

    .line 247
    invoke-virtual {v6, v1, v1, v7, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 250
    :cond_c
    aget-object v3, v2, v3

    .line 252
    iget-object v6, p0, Lcom/google/android/material/textfield/TextInputLayout;->f0:Landroid/graphics/drawable/ColorDrawable;

    .line 254
    if-eq v3, v6, :cond_d

    .line 256
    iput-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->h0:Landroid/graphics/drawable/Drawable;

    .line 258
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    .line 260
    aget-object v1, v2, v1

    .line 262
    aget-object v3, v2, v5

    .line 264
    aget-object v2, v2, v4

    .line 266
    invoke-virtual {v0, v1, v3, v6, v2}, Landroid/widget/TextView;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 269
    goto :goto_3

    .line 270
    :cond_d
    move v5, v0

    .line 271
    :goto_3
    move v0, v5

    .line 272
    goto :goto_5

    .line 273
    :cond_e
    iget-object v6, p0, Lcom/google/android/material/textfield/TextInputLayout;->f0:Landroid/graphics/drawable/ColorDrawable;

    .line 275
    if-eqz v6, :cond_10

    .line 277
    iget-object v6, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    .line 279
    invoke-virtual {v6}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    .line 282
    move-result-object v6

    .line 283
    aget-object v3, v6, v3

    .line 285
    iget-object v7, p0, Lcom/google/android/material/textfield/TextInputLayout;->f0:Landroid/graphics/drawable/ColorDrawable;

    .line 287
    if-ne v3, v7, :cond_f

    .line 289
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    .line 291
    aget-object v1, v6, v1

    .line 293
    aget-object v3, v6, v5

    .line 295
    iget-object v7, p0, Lcom/google/android/material/textfield/TextInputLayout;->h0:Landroid/graphics/drawable/Drawable;

    .line 297
    aget-object v4, v6, v4

    .line 299
    invoke-virtual {v0, v1, v3, v7, v4}, Landroid/widget/TextView;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 302
    goto :goto_4

    .line 303
    :cond_f
    move v5, v0

    .line 304
    :goto_4
    iput-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->f0:Landroid/graphics/drawable/ColorDrawable;

    .line 306
    goto :goto_3

    .line 307
    :cond_10
    :goto_5
    return v0
.end method

.method public final r()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    .line 3
    if-eqz v0, :cond_4

    .line 5
    iget v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->O:I

    .line 7
    if-eqz v1, :cond_0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 13
    move-result-object v0

    .line 14
    if-nez v0, :cond_1

    .line 16
    return-void

    .line 17
    :cond_1
    sget-object v1, Lo/h6;->a:[I

    .line 19
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->m()Z

    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_2

    .line 29
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getErrorCurrentTextColors()I

    .line 32
    move-result v1

    .line 33
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 35
    invoke-static {v1, v2}, Lo/y1;->c(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 42
    goto :goto_0

    .line 43
    :cond_2
    iget-boolean v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->m:Z

    .line 45
    if-eqz v1, :cond_3

    .line 47
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->o:Lo/j2;

    .line 49
    if-eqz v1, :cond_3

    .line 51
    invoke-virtual {v1}, Landroid/widget/TextView;->getCurrentTextColor()I

    .line 54
    move-result v1

    .line 55
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 57
    invoke-static {v1, v2}, Lo/y1;->c(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    .line 60
    move-result-object v1

    .line 61
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 64
    goto :goto_0

    .line 65
    :cond_3
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    .line 68
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    .line 70
    invoke-virtual {v0}, Landroid/view/View;->refreshDrawableState()V

    .line 73
    :cond_4
    :goto_0
    return-void
.end method

.method public final s()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    .line 3
    if-eqz v0, :cond_2

    .line 5
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->F:Lo/eb;

    .line 7
    if-eqz v1, :cond_2

    .line 9
    iget-boolean v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->I:Z

    .line 11
    if-nez v1, :cond_0

    .line 13
    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 16
    move-result-object v0

    .line 17
    if-nez v0, :cond_2

    .line 19
    :cond_0
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->O:I

    .line 21
    if-nez v0, :cond_1

    .line 23
    goto :goto_0

    .line 24
    :cond_1
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditTextBoxBackground()Landroid/graphics/drawable/Drawable;

    .line 27
    move-result-object v0

    .line 28
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    .line 30
    sget-object v2, Lo/Dh;->a:Ljava/util/WeakHashMap;

    .line 32
    invoke-virtual {v1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 35
    const/4 v0, 0x1

    .line 36
    iput-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->I:Z

    .line 38
    :cond_2
    :goto_0
    return-void
.end method

.method public setBoxBackgroundColor(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->U:I

    .line 3
    if-eq v0, p1, :cond_0

    .line 5
    iput p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->U:I

    .line 7
    iput p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->o0:I

    .line 9
    iput p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->q0:I

    .line 11
    iput p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->r0:I

    .line 13
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->b()V

    .line 16
    :cond_0
    return-void
.end method

.method public setBoxBackgroundColorResource(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Landroid/content/Context;->getColor(I)I

    .line 8
    move-result p1

    .line 9
    invoke-virtual {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setBoxBackgroundColor(I)V

    .line 12
    return-void
.end method

.method public setBoxBackgroundColorStateList(Landroid/content/res/ColorStateList;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    .line 4
    move-result v0

    .line 5
    iput v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->o0:I

    .line 7
    iput v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->U:I

    .line 9
    const v0, -0x101009e

    .line 12
    filled-new-array {v0}, [I

    .line 15
    move-result-object v0

    .line 16
    const/4 v1, -0x1

    .line 17
    invoke-virtual {p1, v0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    .line 20
    move-result v0

    .line 21
    iput v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->p0:I

    .line 23
    const v0, 0x101009c

    .line 26
    const v2, 0x101009e

    .line 29
    filled-new-array {v0, v2}, [I

    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {p1, v0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    .line 36
    move-result v0

    .line 37
    iput v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->q0:I

    .line 39
    const v0, 0x1010367

    .line 42
    filled-new-array {v0, v2}, [I

    .line 45
    move-result-object v0

    .line 46
    invoke-virtual {p1, v0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    .line 49
    move-result p1

    .line 50
    iput p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->r0:I

    .line 52
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->b()V

    .line 55
    return-void
.end method

.method public setBoxBackgroundMode(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->O:I

    .line 3
    if-ne p1, v0, :cond_0

    .line 5
    return-void

    .line 6
    :cond_0
    iput p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->O:I

    .line 8
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    .line 10
    if-eqz p1, :cond_1

    .line 12
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->i()V

    .line 15
    :cond_1
    return-void
.end method

.method public setBoxCollapsedPaddingTop(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->P:I

    .line 3
    return-void
.end method

.method public setBoxCornerFamily(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->L:Lo/Ae;

    .line 3
    invoke-virtual {v0}, Lo/Ae;->e()Lo/ze;

    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->L:Lo/Ae;

    .line 9
    iget-object v1, v1, Lo/Ae;->e:Lo/d5;

    .line 11
    invoke-static {p1}, Lo/Ha;->s(I)Lo/L1;

    .line 14
    move-result-object v2

    .line 15
    iput-object v2, v0, Lo/ze;->a:Lo/L1;

    .line 17
    invoke-static {v2}, Lo/ze;->b(Lo/L1;)V

    .line 20
    iput-object v1, v0, Lo/ze;->e:Lo/d5;

    .line 22
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->L:Lo/Ae;

    .line 24
    iget-object v1, v1, Lo/Ae;->f:Lo/d5;

    .line 26
    invoke-static {p1}, Lo/Ha;->s(I)Lo/L1;

    .line 29
    move-result-object v2

    .line 30
    iput-object v2, v0, Lo/ze;->b:Lo/L1;

    .line 32
    invoke-static {v2}, Lo/ze;->b(Lo/L1;)V

    .line 35
    iput-object v1, v0, Lo/ze;->f:Lo/d5;

    .line 37
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->L:Lo/Ae;

    .line 39
    iget-object v1, v1, Lo/Ae;->h:Lo/d5;

    .line 41
    invoke-static {p1}, Lo/Ha;->s(I)Lo/L1;

    .line 44
    move-result-object v2

    .line 45
    iput-object v2, v0, Lo/ze;->d:Lo/L1;

    .line 47
    invoke-static {v2}, Lo/ze;->b(Lo/L1;)V

    .line 50
    iput-object v1, v0, Lo/ze;->h:Lo/d5;

    .line 52
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->L:Lo/Ae;

    .line 54
    iget-object v1, v1, Lo/Ae;->g:Lo/d5;

    .line 56
    invoke-static {p1}, Lo/Ha;->s(I)Lo/L1;

    .line 59
    move-result-object p1

    .line 60
    iput-object p1, v0, Lo/ze;->c:Lo/L1;

    .line 62
    invoke-static {p1}, Lo/ze;->b(Lo/L1;)V

    .line 65
    iput-object v1, v0, Lo/ze;->g:Lo/d5;

    .line 67
    invoke-virtual {v0}, Lo/ze;->a()Lo/Ae;

    .line 70
    move-result-object p1

    .line 71
    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->L:Lo/Ae;

    .line 73
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->b()V

    .line 76
    return-void
.end method

.method public setBoxStrokeColor(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->m0:I

    .line 3
    if-eq v0, p1, :cond_0

    .line 5
    iput p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->m0:I

    .line 7
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->x()V

    .line 10
    :cond_0
    return-void
.end method

.method public setBoxStrokeColorStateList(Landroid/content/res/ColorStateList;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->isStateful()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    .line 10
    move-result v0

    .line 11
    iput v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->k0:I

    .line 13
    const v0, -0x101009e

    .line 16
    filled-new-array {v0}, [I

    .line 19
    move-result-object v0

    .line 20
    const/4 v1, -0x1

    .line 21
    invoke-virtual {p1, v0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    .line 24
    move-result v0

    .line 25
    iput v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->s0:I

    .line 27
    const v0, 0x1010367

    .line 30
    const v2, 0x101009e

    .line 33
    filled-new-array {v0, v2}, [I

    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {p1, v0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    .line 40
    move-result v0

    .line 41
    iput v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->l0:I

    .line 43
    const v0, 0x101009c

    .line 46
    filled-new-array {v0, v2}, [I

    .line 49
    move-result-object v0

    .line 50
    invoke-virtual {p1, v0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    .line 53
    move-result p1

    .line 54
    iput p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->m0:I

    .line 56
    goto :goto_0

    .line 57
    :cond_0
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->m0:I

    .line 59
    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    .line 62
    move-result v1

    .line 63
    if-eq v0, v1, :cond_1

    .line 65
    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    .line 68
    move-result p1

    .line 69
    iput p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->m0:I

    .line 71
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->x()V

    .line 74
    return-void
.end method

.method public setBoxStrokeErrorColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->n0:Landroid/content/res/ColorStateList;

    .line 3
    if-eq v0, p1, :cond_0

    .line 5
    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->n0:Landroid/content/res/ColorStateList;

    .line 7
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->x()V

    .line 10
    :cond_0
    return-void
.end method

.method public setBoxStrokeWidth(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->R:I

    .line 3
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->x()V

    .line 6
    return-void
.end method

.method public setBoxStrokeWidthFocused(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->S:I

    .line 3
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->x()V

    .line 6
    return-void
.end method

.method public setBoxStrokeWidthFocusedResource(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 8
    move-result p1

    .line 9
    invoke-virtual {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setBoxStrokeWidthFocused(I)V

    .line 12
    return-void
.end method

.method public setBoxStrokeWidthResource(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 8
    move-result p1

    .line 9
    invoke-virtual {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setBoxStrokeWidth(I)V

    .line 12
    return-void
.end method

.method public setCounterEnabled(Z)V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->k:Z

    .line 3
    if-eq v0, p1, :cond_4

    .line 5
    const/4 v0, 0x0

    .line 6
    const/4 v1, 0x2

    .line 7
    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->j:Lo/m9;

    .line 9
    if-eqz p1, :cond_2

    .line 11
    new-instance v3, Lo/j2;

    .line 13
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 16
    move-result-object v4

    .line 17
    invoke-direct {v3, v4, v0}, Lo/j2;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    iput-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->o:Lo/j2;

    .line 22
    const v4, 0x7f0801d7

    .line 25
    invoke-virtual {v3, v4}, Landroid/view/View;->setId(I)V

    .line 28
    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->b0:Landroid/graphics/Typeface;

    .line 30
    if-eqz v3, :cond_0

    .line 32
    iget-object v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->o:Lo/j2;

    .line 34
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 37
    :cond_0
    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->o:Lo/j2;

    .line 39
    const/4 v4, 0x1

    .line 40
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 43
    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->o:Lo/j2;

    .line 45
    invoke-virtual {v2, v3, v1}, Lo/m9;->a(Lo/j2;I)V

    .line 48
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->o:Lo/j2;

    .line 50
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 53
    move-result-object v1

    .line 54
    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 56
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 59
    move-result-object v2

    .line 60
    const v3, 0x7f060301

    .line 63
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 66
    move-result v2

    .line 67
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 70
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->o()V

    .line 73
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->o:Lo/j2;

    .line 75
    if-eqz v1, :cond_3

    .line 77
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    .line 79
    if-nez v1, :cond_1

    .line 81
    goto :goto_0

    .line 82
    :cond_1
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 85
    move-result-object v0

    .line 86
    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/TextInputLayout;->n(Landroid/text/Editable;)V

    .line 89
    goto :goto_1

    .line 90
    :cond_2
    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->o:Lo/j2;

    .line 92
    invoke-virtual {v2, v3, v1}, Lo/m9;->g(Lo/j2;I)V

    .line 95
    iput-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->o:Lo/j2;

    .line 97
    :cond_3
    :goto_1
    iput-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->k:Z

    .line 99
    :cond_4
    return-void
.end method

.method public setCounterMaxLength(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->l:I

    .line 3
    if-eq v0, p1, :cond_2

    .line 5
    if-lez p1, :cond_0

    .line 7
    iput p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->l:I

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p1, -0x1

    .line 11
    iput p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->l:I

    .line 13
    :goto_0
    iget-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->k:Z

    .line 15
    if-eqz p1, :cond_2

    .line 17
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->o:Lo/j2;

    .line 19
    if-eqz p1, :cond_2

    .line 21
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    .line 23
    if-nez p1, :cond_1

    .line 25
    const/4 p1, 0x0

    .line 26
    goto :goto_1

    .line 27
    :cond_1
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 30
    move-result-object p1

    .line 31
    :goto_1
    invoke-virtual {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->n(Landroid/text/Editable;)V

    .line 34
    :cond_2
    return-void
.end method

.method public setCounterOverflowTextAppearance(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->p:I

    .line 3
    if-eq v0, p1, :cond_0

    .line 5
    iput p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->p:I

    .line 7
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->o()V

    .line 10
    :cond_0
    return-void
.end method

.method public setCounterOverflowTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->z:Landroid/content/res/ColorStateList;

    .line 3
    if-eq v0, p1, :cond_0

    .line 5
    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->z:Landroid/content/res/ColorStateList;

    .line 7
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->o()V

    .line 10
    :cond_0
    return-void
.end method

.method public setCounterTextAppearance(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->q:I

    .line 3
    if-eq v0, p1, :cond_0

    .line 5
    iput p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->q:I

    .line 7
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->o()V

    .line 10
    :cond_0
    return-void
.end method

.method public setCounterTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->y:Landroid/content/res/ColorStateList;

    .line 3
    if-eq v0, p1, :cond_0

    .line 5
    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->y:Landroid/content/res/ColorStateList;

    .line 7
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->o()V

    .line 10
    :cond_0
    return-void
.end method

.method public setCursorColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->A:Landroid/content/res/ColorStateList;

    .line 3
    if-eq v0, p1, :cond_0

    .line 5
    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->A:Landroid/content/res/ColorStateList;

    .line 7
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->p()V

    .line 10
    :cond_0
    return-void
.end method

.method public setCursorErrorColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->B:Landroid/content/res/ColorStateList;

    .line 3
    if-eq v0, p1, :cond_1

    .line 5
    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->B:Landroid/content/res/ColorStateList;

    .line 7
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->m()Z

    .line 10
    move-result p1

    .line 11
    if-nez p1, :cond_0

    .line 13
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->o:Lo/j2;

    .line 15
    if-eqz p1, :cond_1

    .line 17
    iget-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->m:Z

    .line 19
    if-eqz p1, :cond_1

    .line 21
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->p()V

    .line 24
    :cond_1
    return-void
.end method

.method public setDefaultHintTextColor(Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->i0:Landroid/content/res/ColorStateList;

    .line 3
    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->j0:Landroid/content/res/ColorStateList;

    .line 5
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    .line 7
    if-eqz p1, :cond_0

    .line 9
    const/4 p1, 0x0

    .line 10
    invoke-virtual {p0, p1, p1}, Lcom/google/android/material/textfield/TextInputLayout;->u(ZZ)V

    .line 13
    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->k(Landroid/view/ViewGroup;Z)V

    .line 4
    invoke-super {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 7
    return-void
.end method

.method public setEndIconActivated(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->c:Lo/b7;

    .line 3
    iget-object v0, v0, Lo/b7;->g:Lcom/google/android/material/internal/CheckableImageButton;

    .line 5
    invoke-virtual {v0, p1}, Landroid/view/View;->setActivated(Z)V

    .line 8
    return-void
.end method

.method public setEndIconCheckable(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->c:Lo/b7;

    .line 3
    iget-object v0, v0, Lo/b7;->g:Lcom/google/android/material/internal/CheckableImageButton;

    .line 5
    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/CheckableImageButton;->setCheckable(Z)V

    .line 8
    return-void
.end method

.method public setEndIconContentDescription(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->c:Lo/b7;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 3
    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 4
    :goto_0
    iget-object v0, v0, Lo/b7;->g:Lcom/google/android/material/internal/CheckableImageButton;

    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    if-eq v1, p1, :cond_1

    .line 6
    invoke-virtual {v0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public setEndIconContentDescription(Ljava/lang/CharSequence;)V
    .locals 2

    .line 7
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->c:Lo/b7;

    iget-object v0, v0, Lo/b7;->g:Lcom/google/android/material/internal/CheckableImageButton;

    .line 8
    invoke-virtual {v0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    if-eq v1, p1, :cond_0

    .line 9
    invoke-virtual {v0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setEndIconDrawable(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->c:Lo/b7;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 3
    invoke-static {v1, p1}, Lo/L1;->z(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 4
    :goto_0
    iget-object v1, v0, Lo/b7;->g:Lcom/google/android/material/internal/CheckableImageButton;

    .line 5
    invoke-virtual {v1, p1}, Lo/C1;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    if-eqz p1, :cond_1

    .line 6
    iget-object p1, v0, Lo/b7;->k:Landroid/content/res/ColorStateList;

    iget-object v2, v0, Lo/b7;->l:Landroid/graphics/PorterDuff$Mode;

    iget-object v3, v0, Lo/b7;->a:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-static {v3, v1, p1, v2}, Lo/L1;->g(Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/internal/CheckableImageButton;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)V

    .line 7
    iget-object p1, v0, Lo/b7;->k:Landroid/content/res/ColorStateList;

    invoke-static {v3, v1, p1}, Lo/L1;->V(Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/internal/CheckableImageButton;Landroid/content/res/ColorStateList;)V

    :cond_1
    return-void
.end method

.method public setEndIconDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    .line 8
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->c:Lo/b7;

    iget-object v1, v0, Lo/b7;->g:Lcom/google/android/material/internal/CheckableImageButton;

    .line 9
    invoke-virtual {v1, p1}, Lo/C1;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    if-eqz p1, :cond_0

    .line 10
    iget-object p1, v0, Lo/b7;->k:Landroid/content/res/ColorStateList;

    iget-object v2, v0, Lo/b7;->l:Landroid/graphics/PorterDuff$Mode;

    iget-object v3, v0, Lo/b7;->a:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-static {v3, v1, p1, v2}, Lo/L1;->g(Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/internal/CheckableImageButton;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)V

    .line 11
    iget-object p1, v0, Lo/b7;->k:Landroid/content/res/ColorStateList;

    invoke-static {v3, v1, p1}, Lo/L1;->V(Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/internal/CheckableImageButton;Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setEndIconMinSize(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->c:Lo/b7;

    .line 3
    if-ltz p1, :cond_1

    .line 5
    iget v1, v0, Lo/b7;->m:I

    .line 7
    if-eq p1, v1, :cond_0

    .line 9
    iput p1, v0, Lo/b7;->m:I

    .line 11
    iget-object v1, v0, Lo/b7;->g:Lcom/google/android/material/internal/CheckableImageButton;

    .line 13
    invoke-virtual {v1, p1}, Landroid/view/View;->setMinimumWidth(I)V

    .line 16
    invoke-virtual {v1, p1}, Landroid/view/View;->setMinimumHeight(I)V

    .line 19
    iget-object v0, v0, Lo/b7;->c:Lcom/google/android/material/internal/CheckableImageButton;

    .line 21
    invoke-virtual {v0, p1}, Landroid/view/View;->setMinimumWidth(I)V

    .line 24
    invoke-virtual {v0, p1}, Landroid/view/View;->setMinimumHeight(I)V

    .line 27
    :cond_0
    return-void

    .line 28
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 33
    const-string v0, "endIconSize cannot be less than 0"

    .line 35
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 38
    throw p1
.end method

.method public setEndIconMode(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->c:Lo/b7;

    .line 3
    invoke-virtual {v0, p1}, Lo/b7;->g(I)V

    .line 6
    return-void
.end method

.method public setEndIconOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->c:Lo/b7;

    .line 3
    iget-object v1, v0, Lo/b7;->o:Landroid/view/View$OnLongClickListener;

    .line 5
    iget-object v0, v0, Lo/b7;->g:Lcom/google/android/material/internal/CheckableImageButton;

    .line 7
    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    invoke-static {v0, v1}, Lo/L1;->Z(Lcom/google/android/material/internal/CheckableImageButton;Landroid/view/View$OnLongClickListener;)V

    .line 13
    return-void
.end method

.method public setEndIconOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->c:Lo/b7;

    .line 3
    iput-object p1, v0, Lo/b7;->o:Landroid/view/View$OnLongClickListener;

    .line 5
    iget-object v0, v0, Lo/b7;->g:Lcom/google/android/material/internal/CheckableImageButton;

    .line 7
    invoke-virtual {v0, p1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 10
    invoke-static {v0, p1}, Lo/L1;->Z(Lcom/google/android/material/internal/CheckableImageButton;Landroid/view/View$OnLongClickListener;)V

    .line 13
    return-void
.end method

.method public setEndIconScaleType(Landroid/widget/ImageView$ScaleType;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->c:Lo/b7;

    .line 3
    iput-object p1, v0, Lo/b7;->n:Landroid/widget/ImageView$ScaleType;

    .line 5
    iget-object v1, v0, Lo/b7;->g:Lcom/google/android/material/internal/CheckableImageButton;

    .line 7
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 10
    iget-object v0, v0, Lo/b7;->c:Lcom/google/android/material/internal/CheckableImageButton;

    .line 12
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 15
    return-void
.end method

.method public setEndIconTintList(Landroid/content/res/ColorStateList;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->c:Lo/b7;

    .line 3
    iget-object v1, v0, Lo/b7;->k:Landroid/content/res/ColorStateList;

    .line 5
    if-eq v1, p1, :cond_0

    .line 7
    iput-object p1, v0, Lo/b7;->k:Landroid/content/res/ColorStateList;

    .line 9
    iget-object v1, v0, Lo/b7;->l:Landroid/graphics/PorterDuff$Mode;

    .line 11
    iget-object v2, v0, Lo/b7;->a:Lcom/google/android/material/textfield/TextInputLayout;

    .line 13
    iget-object v0, v0, Lo/b7;->g:Lcom/google/android/material/internal/CheckableImageButton;

    .line 15
    invoke-static {v2, v0, p1, v1}, Lo/L1;->g(Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/internal/CheckableImageButton;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)V

    .line 18
    :cond_0
    return-void
.end method

.method public setEndIconTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->c:Lo/b7;

    .line 3
    iget-object v1, v0, Lo/b7;->l:Landroid/graphics/PorterDuff$Mode;

    .line 5
    if-eq v1, p1, :cond_0

    .line 7
    iput-object p1, v0, Lo/b7;->l:Landroid/graphics/PorterDuff$Mode;

    .line 9
    iget-object v1, v0, Lo/b7;->k:Landroid/content/res/ColorStateList;

    .line 11
    iget-object v2, v0, Lo/b7;->a:Lcom/google/android/material/textfield/TextInputLayout;

    .line 13
    iget-object v0, v0, Lo/b7;->g:Lcom/google/android/material/internal/CheckableImageButton;

    .line 15
    invoke-static {v2, v0, v1, p1}, Lo/L1;->g(Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/internal/CheckableImageButton;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)V

    .line 18
    :cond_0
    return-void
.end method

.method public setEndIconVisible(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->c:Lo/b7;

    .line 3
    invoke-virtual {v0, p1}, Lo/b7;->h(Z)V

    .line 6
    return-void
.end method

.method public setError(Ljava/lang/CharSequence;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->j:Lo/m9;

    .line 3
    iget-boolean v1, v0, Lo/m9;->q:Z

    .line 5
    const/4 v2, 0x1

    .line 6
    if-nez v1, :cond_1

    .line 8
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_0

    .line 14
    return-void

    .line 15
    :cond_0
    invoke-virtual {p0, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorEnabled(Z)V

    .line 18
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 21
    move-result v1

    .line 22
    if-nez v1, :cond_3

    .line 24
    invoke-virtual {v0}, Lo/m9;->c()V

    .line 27
    iput-object p1, v0, Lo/m9;->p:Ljava/lang/CharSequence;

    .line 29
    iget-object v1, v0, Lo/m9;->r:Lo/j2;

    .line 31
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 34
    iget v1, v0, Lo/m9;->n:I

    .line 36
    if-eq v1, v2, :cond_2

    .line 38
    iput v2, v0, Lo/m9;->o:I

    .line 40
    :cond_2
    iget v2, v0, Lo/m9;->o:I

    .line 42
    iget-object v3, v0, Lo/m9;->r:Lo/j2;

    .line 44
    invoke-virtual {v0, v3, p1}, Lo/m9;->h(Lo/j2;Ljava/lang/CharSequence;)Z

    .line 47
    move-result p1

    .line 48
    invoke-virtual {v0, v1, v2, p1}, Lo/m9;->i(IIZ)V

    .line 51
    goto :goto_0

    .line 52
    :cond_3
    invoke-virtual {v0}, Lo/m9;->f()V

    .line 55
    :goto_0
    return-void
.end method

.method public setErrorAccessibilityLiveRegion(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->j:Lo/m9;

    .line 3
    iput p1, v0, Lo/m9;->t:I

    .line 5
    iget-object v0, v0, Lo/m9;->r:Lo/j2;

    .line 7
    if-eqz v0, :cond_0

    .line 9
    sget-object v1, Lo/Dh;->a:Ljava/util/WeakHashMap;

    .line 11
    invoke-virtual {v0, p1}, Landroid/view/View;->setAccessibilityLiveRegion(I)V

    .line 14
    :cond_0
    return-void
.end method

.method public setErrorContentDescription(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->j:Lo/m9;

    .line 3
    iput-object p1, v0, Lo/m9;->s:Ljava/lang/CharSequence;

    .line 5
    iget-object v0, v0, Lo/m9;->r:Lo/j2;

    .line 7
    if-eqz v0, :cond_0

    .line 9
    invoke-virtual {v0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 12
    :cond_0
    return-void
.end method

.method public setErrorEnabled(Z)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->j:Lo/m9;

    .line 3
    iget-boolean v1, v0, Lo/m9;->q:Z

    .line 5
    if-ne v1, p1, :cond_0

    .line 7
    goto/16 :goto_1

    .line 9
    :cond_0
    invoke-virtual {v0}, Lo/m9;->c()V

    .line 12
    iget-object v1, v0, Lo/m9;->h:Lcom/google/android/material/textfield/TextInputLayout;

    .line 14
    const/4 v2, 0x0

    .line 15
    const/4 v3, 0x0

    .line 16
    if-eqz p1, :cond_6

    .line 18
    new-instance v4, Lo/j2;

    .line 20
    iget-object v5, v0, Lo/m9;->g:Landroid/content/Context;

    .line 22
    invoke-direct {v4, v5, v3}, Lo/j2;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    iput-object v4, v0, Lo/m9;->r:Lo/j2;

    .line 27
    const v3, 0x7f0801d8

    .line 30
    invoke-virtual {v4, v3}, Landroid/view/View;->setId(I)V

    .line 33
    iget-object v3, v0, Lo/m9;->r:Lo/j2;

    .line 35
    const/4 v4, 0x5

    .line 36
    invoke-virtual {v3, v4}, Landroid/view/View;->setTextAlignment(I)V

    .line 39
    iget-object v3, v0, Lo/m9;->B:Landroid/graphics/Typeface;

    .line 41
    if-eqz v3, :cond_1

    .line 43
    iget-object v4, v0, Lo/m9;->r:Lo/j2;

    .line 45
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 48
    :cond_1
    iget v3, v0, Lo/m9;->u:I

    .line 50
    iput v3, v0, Lo/m9;->u:I

    .line 52
    iget-object v4, v0, Lo/m9;->r:Lo/j2;

    .line 54
    if-eqz v4, :cond_2

    .line 56
    invoke-virtual {v1, v4, v3}, Lcom/google/android/material/textfield/TextInputLayout;->l(Lo/j2;I)V

    .line 59
    :cond_2
    iget-object v1, v0, Lo/m9;->v:Landroid/content/res/ColorStateList;

    .line 61
    iput-object v1, v0, Lo/m9;->v:Landroid/content/res/ColorStateList;

    .line 63
    iget-object v3, v0, Lo/m9;->r:Lo/j2;

    .line 65
    if-eqz v3, :cond_3

    .line 67
    if-eqz v1, :cond_3

    .line 69
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 72
    :cond_3
    iget-object v1, v0, Lo/m9;->s:Ljava/lang/CharSequence;

    .line 74
    iput-object v1, v0, Lo/m9;->s:Ljava/lang/CharSequence;

    .line 76
    iget-object v3, v0, Lo/m9;->r:Lo/j2;

    .line 78
    if-eqz v3, :cond_4

    .line 80
    invoke-virtual {v3, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 83
    :cond_4
    iget v1, v0, Lo/m9;->t:I

    .line 85
    iput v1, v0, Lo/m9;->t:I

    .line 87
    iget-object v3, v0, Lo/m9;->r:Lo/j2;

    .line 89
    if-eqz v3, :cond_5

    .line 91
    sget-object v4, Lo/Dh;->a:Ljava/util/WeakHashMap;

    .line 93
    invoke-virtual {v3, v1}, Landroid/view/View;->setAccessibilityLiveRegion(I)V

    .line 96
    :cond_5
    iget-object v1, v0, Lo/m9;->r:Lo/j2;

    .line 98
    const/4 v3, 0x4

    .line 99
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 102
    iget-object v1, v0, Lo/m9;->r:Lo/j2;

    .line 104
    invoke-virtual {v0, v1, v2}, Lo/m9;->a(Lo/j2;I)V

    .line 107
    goto :goto_0

    .line 108
    :cond_6
    invoke-virtual {v0}, Lo/m9;->f()V

    .line 111
    iget-object v4, v0, Lo/m9;->r:Lo/j2;

    .line 113
    invoke-virtual {v0, v4, v2}, Lo/m9;->g(Lo/j2;I)V

    .line 116
    iput-object v3, v0, Lo/m9;->r:Lo/j2;

    .line 118
    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputLayout;->r()V

    .line 121
    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputLayout;->x()V

    .line 124
    :goto_0
    iput-boolean p1, v0, Lo/m9;->q:Z

    .line 126
    :goto_1
    return-void
.end method

.method public setErrorIconDrawable(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->c:Lo/b7;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 3
    invoke-static {v1, p1}, Lo/L1;->z(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 4
    :goto_0
    invoke-virtual {v0, p1}, Lo/b7;->i(Landroid/graphics/drawable/Drawable;)V

    .line 5
    iget-object p1, v0, Lo/b7;->d:Landroid/content/res/ColorStateList;

    iget-object v1, v0, Lo/b7;->a:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object v0, v0, Lo/b7;->c:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-static {v1, v0, p1}, Lo/L1;->V(Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/internal/CheckableImageButton;Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setErrorIconDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->c:Lo/b7;

    invoke-virtual {v0, p1}, Lo/b7;->i(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setErrorIconOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->c:Lo/b7;

    .line 3
    iget-object v1, v0, Lo/b7;->c:Lcom/google/android/material/internal/CheckableImageButton;

    .line 5
    iget-object v0, v0, Lo/b7;->f:Landroid/view/View$OnLongClickListener;

    .line 7
    invoke-virtual {v1, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    invoke-static {v1, v0}, Lo/L1;->Z(Lcom/google/android/material/internal/CheckableImageButton;Landroid/view/View$OnLongClickListener;)V

    .line 13
    return-void
.end method

.method public setErrorIconOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->c:Lo/b7;

    .line 3
    iput-object p1, v0, Lo/b7;->f:Landroid/view/View$OnLongClickListener;

    .line 5
    iget-object v0, v0, Lo/b7;->c:Lcom/google/android/material/internal/CheckableImageButton;

    .line 7
    invoke-virtual {v0, p1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 10
    invoke-static {v0, p1}, Lo/L1;->Z(Lcom/google/android/material/internal/CheckableImageButton;Landroid/view/View$OnLongClickListener;)V

    .line 13
    return-void
.end method

.method public setErrorIconTintList(Landroid/content/res/ColorStateList;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->c:Lo/b7;

    .line 3
    iget-object v1, v0, Lo/b7;->d:Landroid/content/res/ColorStateList;

    .line 5
    if-eq v1, p1, :cond_0

    .line 7
    iput-object p1, v0, Lo/b7;->d:Landroid/content/res/ColorStateList;

    .line 9
    iget-object v1, v0, Lo/b7;->e:Landroid/graphics/PorterDuff$Mode;

    .line 11
    iget-object v2, v0, Lo/b7;->a:Lcom/google/android/material/textfield/TextInputLayout;

    .line 13
    iget-object v0, v0, Lo/b7;->c:Lcom/google/android/material/internal/CheckableImageButton;

    .line 15
    invoke-static {v2, v0, p1, v1}, Lo/L1;->g(Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/internal/CheckableImageButton;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)V

    .line 18
    :cond_0
    return-void
.end method

.method public setErrorIconTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->c:Lo/b7;

    .line 3
    iget-object v1, v0, Lo/b7;->e:Landroid/graphics/PorterDuff$Mode;

    .line 5
    if-eq v1, p1, :cond_0

    .line 7
    iput-object p1, v0, Lo/b7;->e:Landroid/graphics/PorterDuff$Mode;

    .line 9
    iget-object v1, v0, Lo/b7;->d:Landroid/content/res/ColorStateList;

    .line 11
    iget-object v2, v0, Lo/b7;->a:Lcom/google/android/material/textfield/TextInputLayout;

    .line 13
    iget-object v0, v0, Lo/b7;->c:Lcom/google/android/material/internal/CheckableImageButton;

    .line 15
    invoke-static {v2, v0, v1, p1}, Lo/L1;->g(Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/internal/CheckableImageButton;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)V

    .line 18
    :cond_0
    return-void
.end method

.method public setErrorTextAppearance(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->j:Lo/m9;

    .line 3
    iput p1, v0, Lo/m9;->u:I

    .line 5
    iget-object v1, v0, Lo/m9;->r:Lo/j2;

    .line 7
    if-eqz v1, :cond_0

    .line 9
    iget-object v0, v0, Lo/m9;->h:Lcom/google/android/material/textfield/TextInputLayout;

    .line 11
    invoke-virtual {v0, v1, p1}, Lcom/google/android/material/textfield/TextInputLayout;->l(Lo/j2;I)V

    .line 14
    :cond_0
    return-void
.end method

.method public setErrorTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->j:Lo/m9;

    .line 3
    iput-object p1, v0, Lo/m9;->v:Landroid/content/res/ColorStateList;

    .line 5
    iget-object v0, v0, Lo/m9;->r:Lo/j2;

    .line 7
    if-eqz v0, :cond_0

    .line 9
    if-eqz p1, :cond_0

    .line 11
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 14
    :cond_0
    return-void
.end method

.method public setExpandedHintEnabled(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->w0:Z

    .line 3
    if-eq v0, p1, :cond_0

    .line 5
    iput-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->w0:Z

    .line 7
    const/4 p1, 0x0

    .line 8
    invoke-virtual {p0, p1, p1}, Lcom/google/android/material/textfield/TextInputLayout;->u(ZZ)V

    .line 11
    :cond_0
    return-void
.end method

.method public setHelperText(Ljava/lang/CharSequence;)V
    .locals 4

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->j:Lo/m9;

    .line 7
    if-eqz v0, :cond_0

    .line 9
    iget-boolean p1, v1, Lo/m9;->x:Z

    .line 11
    if-eqz p1, :cond_3

    .line 13
    const/4 p1, 0x0

    .line 14
    invoke-virtual {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setHelperTextEnabled(Z)V

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget-boolean v0, v1, Lo/m9;->x:Z

    .line 20
    if-nez v0, :cond_1

    .line 22
    const/4 v0, 0x1

    .line 23
    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setHelperTextEnabled(Z)V

    .line 26
    :cond_1
    invoke-virtual {v1}, Lo/m9;->c()V

    .line 29
    iput-object p1, v1, Lo/m9;->w:Ljava/lang/CharSequence;

    .line 31
    iget-object v0, v1, Lo/m9;->y:Lo/j2;

    .line 33
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 36
    iget v0, v1, Lo/m9;->n:I

    .line 38
    const/4 v2, 0x2

    .line 39
    if-eq v0, v2, :cond_2

    .line 41
    iput v2, v1, Lo/m9;->o:I

    .line 43
    :cond_2
    iget v2, v1, Lo/m9;->o:I

    .line 45
    iget-object v3, v1, Lo/m9;->y:Lo/j2;

    .line 47
    invoke-virtual {v1, v3, p1}, Lo/m9;->h(Lo/j2;Ljava/lang/CharSequence;)Z

    .line 50
    move-result p1

    .line 51
    invoke-virtual {v1, v0, v2, p1}, Lo/m9;->i(IIZ)V

    .line 54
    :cond_3
    :goto_0
    return-void
.end method

.method public setHelperTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->j:Lo/m9;

    .line 3
    iput-object p1, v0, Lo/m9;->A:Landroid/content/res/ColorStateList;

    .line 5
    iget-object v0, v0, Lo/m9;->y:Lo/j2;

    .line 7
    if-eqz v0, :cond_0

    .line 9
    if-eqz p1, :cond_0

    .line 11
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 14
    :cond_0
    return-void
.end method

.method public setHelperTextEnabled(Z)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->j:Lo/m9;

    .line 3
    iget-boolean v1, v0, Lo/m9;->x:Z

    .line 5
    if-ne v1, p1, :cond_0

    .line 7
    goto/16 :goto_1

    .line 9
    :cond_0
    invoke-virtual {v0}, Lo/m9;->c()V

    .line 12
    const/4 v1, 0x0

    .line 13
    const/4 v2, 0x1

    .line 14
    if-eqz p1, :cond_4

    .line 16
    new-instance v3, Lo/j2;

    .line 18
    iget-object v4, v0, Lo/m9;->g:Landroid/content/Context;

    .line 20
    invoke-direct {v3, v4, v1}, Lo/j2;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    iput-object v3, v0, Lo/m9;->y:Lo/j2;

    .line 25
    const v1, 0x7f0801d9

    .line 28
    invoke-virtual {v3, v1}, Landroid/view/View;->setId(I)V

    .line 31
    iget-object v1, v0, Lo/m9;->y:Lo/j2;

    .line 33
    const/4 v3, 0x5

    .line 34
    invoke-virtual {v1, v3}, Landroid/view/View;->setTextAlignment(I)V

    .line 37
    iget-object v1, v0, Lo/m9;->B:Landroid/graphics/Typeface;

    .line 39
    if-eqz v1, :cond_1

    .line 41
    iget-object v3, v0, Lo/m9;->y:Lo/j2;

    .line 43
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 46
    :cond_1
    iget-object v1, v0, Lo/m9;->y:Lo/j2;

    .line 48
    const/4 v3, 0x4

    .line 49
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 52
    iget-object v1, v0, Lo/m9;->y:Lo/j2;

    .line 54
    invoke-virtual {v1, v2}, Landroid/view/View;->setAccessibilityLiveRegion(I)V

    .line 57
    iget v1, v0, Lo/m9;->z:I

    .line 59
    iput v1, v0, Lo/m9;->z:I

    .line 61
    iget-object v3, v0, Lo/m9;->y:Lo/j2;

    .line 63
    if-eqz v3, :cond_2

    .line 65
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 68
    :cond_2
    iget-object v1, v0, Lo/m9;->A:Landroid/content/res/ColorStateList;

    .line 70
    iput-object v1, v0, Lo/m9;->A:Landroid/content/res/ColorStateList;

    .line 72
    iget-object v3, v0, Lo/m9;->y:Lo/j2;

    .line 74
    if-eqz v3, :cond_3

    .line 76
    if-eqz v1, :cond_3

    .line 78
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 81
    :cond_3
    iget-object v1, v0, Lo/m9;->y:Lo/j2;

    .line 83
    invoke-virtual {v0, v1, v2}, Lo/m9;->a(Lo/j2;I)V

    .line 86
    iget-object v1, v0, Lo/m9;->y:Lo/j2;

    .line 88
    new-instance v2, Lo/l9;

    .line 90
    invoke-direct {v2, v0}, Lo/l9;-><init>(Lo/m9;)V

    .line 93
    invoke-virtual {v1, v2}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 96
    goto :goto_0

    .line 97
    :cond_4
    invoke-virtual {v0}, Lo/m9;->c()V

    .line 100
    iget v3, v0, Lo/m9;->n:I

    .line 102
    const/4 v4, 0x2

    .line 103
    if-ne v3, v4, :cond_5

    .line 105
    const/4 v4, 0x0

    .line 106
    iput v4, v0, Lo/m9;->o:I

    .line 108
    :cond_5
    iget v4, v0, Lo/m9;->o:I

    .line 110
    iget-object v5, v0, Lo/m9;->y:Lo/j2;

    .line 112
    const-string v6, ""

    .line 114
    invoke-virtual {v0, v5, v6}, Lo/m9;->h(Lo/j2;Ljava/lang/CharSequence;)Z

    .line 117
    move-result v5

    .line 118
    invoke-virtual {v0, v3, v4, v5}, Lo/m9;->i(IIZ)V

    .line 121
    iget-object v3, v0, Lo/m9;->y:Lo/j2;

    .line 123
    invoke-virtual {v0, v3, v2}, Lo/m9;->g(Lo/j2;I)V

    .line 126
    iput-object v1, v0, Lo/m9;->y:Lo/j2;

    .line 128
    iget-object v1, v0, Lo/m9;->h:Lcom/google/android/material/textfield/TextInputLayout;

    .line 130
    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputLayout;->r()V

    .line 133
    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputLayout;->x()V

    .line 136
    :goto_0
    iput-boolean p1, v0, Lo/m9;->x:Z

    .line 138
    :goto_1
    return-void
.end method

.method public setHelperTextTextAppearance(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->j:Lo/m9;

    .line 3
    iput p1, v0, Lo/m9;->z:I

    .line 5
    iget-object v0, v0, Lo/m9;->y:Lo/j2;

    .line 7
    if-eqz v0, :cond_0

    .line 9
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 12
    :cond_0
    return-void
.end method

.method public setHint(I)V
    .locals 1

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setHint(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->C:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setHintInternal(Ljava/lang/CharSequence;)V

    const/16 p1, 0x800

    .line 3
    invoke-virtual {p0, p1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    :cond_0
    return-void
.end method

.method public setHintAnimationEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->x0:Z

    .line 3
    return-void
.end method

.method public setHintEnabled(Z)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->C:Z

    .line 3
    if-eq p1, v0, :cond_4

    .line 5
    iput-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->C:Z

    .line 7
    const/4 v0, 0x0

    .line 8
    if-nez p1, :cond_1

    .line 10
    const/4 p1, 0x0

    .line 11
    iput-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->E:Z

    .line 13
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->D:Ljava/lang/CharSequence;

    .line 15
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 18
    move-result p1

    .line 19
    if-nez p1, :cond_0

    .line 21
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    .line 23
    invoke-virtual {p1}, Landroid/widget/TextView;->getHint()Ljava/lang/CharSequence;

    .line 26
    move-result-object p1

    .line 27
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 30
    move-result p1

    .line 31
    if-eqz p1, :cond_0

    .line 33
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    .line 35
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->D:Ljava/lang/CharSequence;

    .line 37
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 40
    :cond_0
    invoke-direct {p0, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setHintInternal(Ljava/lang/CharSequence;)V

    .line 43
    goto :goto_0

    .line 44
    :cond_1
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    .line 46
    invoke-virtual {p1}, Landroid/widget/TextView;->getHint()Ljava/lang/CharSequence;

    .line 49
    move-result-object p1

    .line 50
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 53
    move-result v1

    .line 54
    if-nez v1, :cond_3

    .line 56
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->D:Ljava/lang/CharSequence;

    .line 58
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 61
    move-result v1

    .line 62
    if-eqz v1, :cond_2

    .line 64
    invoke-virtual {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    .line 67
    :cond_2
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    .line 69
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 72
    :cond_3
    const/4 p1, 0x1

    .line 73
    iput-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->E:Z

    .line 75
    :goto_0
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    .line 77
    if-eqz p1, :cond_4

    .line 79
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->t()V

    .line 82
    :cond_4
    return-void
.end method

.method public setHintTextAppearance(I)V
    .locals 5

    .line 1
    new-instance v0, Lo/If;

    .line 3
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->v0:Lo/d4;

    .line 5
    iget-object v2, v1, Lo/d4;->a:Lcom/google/android/material/textfield/TextInputLayout;

    .line 7
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 10
    move-result-object v3

    .line 11
    invoke-direct {v0, v3, p1}, Lo/If;-><init>(Landroid/content/Context;I)V

    .line 14
    iget-object p1, v0, Lo/If;->j:Landroid/content/res/ColorStateList;

    .line 16
    if-eqz p1, :cond_0

    .line 18
    iput-object p1, v1, Lo/d4;->k:Landroid/content/res/ColorStateList;

    .line 20
    :cond_0
    iget p1, v0, Lo/If;->k:F

    .line 22
    const/4 v3, 0x0

    .line 23
    cmpl-float v3, p1, v3

    .line 25
    if-eqz v3, :cond_1

    .line 27
    iput p1, v1, Lo/d4;->i:F

    .line 29
    :cond_1
    iget-object p1, v0, Lo/If;->a:Landroid/content/res/ColorStateList;

    .line 31
    if-eqz p1, :cond_2

    .line 33
    iput-object p1, v1, Lo/d4;->U:Landroid/content/res/ColorStateList;

    .line 35
    :cond_2
    iget p1, v0, Lo/If;->e:F

    .line 37
    iput p1, v1, Lo/d4;->S:F

    .line 39
    iget p1, v0, Lo/If;->f:F

    .line 41
    iput p1, v1, Lo/d4;->T:F

    .line 43
    iget p1, v0, Lo/If;->g:F

    .line 45
    iput p1, v1, Lo/d4;->R:F

    .line 47
    iget p1, v0, Lo/If;->i:F

    .line 49
    iput p1, v1, Lo/d4;->V:F

    .line 51
    iget-object p1, v1, Lo/d4;->y:Lo/p3;

    .line 53
    if-eqz p1, :cond_3

    .line 55
    const/4 v3, 0x1

    .line 56
    iput-boolean v3, p1, Lo/p3;->m:Z

    .line 58
    :cond_3
    new-instance p1, Lo/p3;

    .line 60
    new-instance v3, Lo/C;

    .line 62
    const/4 v4, 0x6

    .line 63
    invoke-direct {v3, v4, v1}, Lo/C;-><init>(ILjava/lang/Object;)V

    .line 66
    invoke-virtual {v0}, Lo/If;->a()V

    .line 69
    iget-object v4, v0, Lo/If;->n:Landroid/graphics/Typeface;

    .line 71
    invoke-direct {p1, v3, v4}, Lo/p3;-><init>(Lo/C;Landroid/graphics/Typeface;)V

    .line 74
    iput-object p1, v1, Lo/d4;->y:Lo/p3;

    .line 76
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 79
    move-result-object p1

    .line 80
    iget-object v2, v1, Lo/d4;->y:Lo/p3;

    .line 82
    invoke-virtual {v0, p1, v2}, Lo/If;->c(Landroid/content/Context;Lo/Ha;)V

    .line 85
    const/4 p1, 0x0

    .line 86
    invoke-virtual {v1, p1}, Lo/d4;->h(Z)V

    .line 89
    iget-object v0, v1, Lo/d4;->k:Landroid/content/res/ColorStateList;

    .line 91
    iput-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->j0:Landroid/content/res/ColorStateList;

    .line 93
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    .line 95
    if-eqz v0, :cond_4

    .line 97
    invoke-virtual {p0, p1, p1}, Lcom/google/android/material/textfield/TextInputLayout;->u(ZZ)V

    .line 100
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->t()V

    .line 103
    :cond_4
    return-void
.end method

.method public setHintTextColor(Landroid/content/res/ColorStateList;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->j0:Landroid/content/res/ColorStateList;

    .line 3
    if-eq v0, p1, :cond_1

    .line 5
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->i0:Landroid/content/res/ColorStateList;

    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_0

    .line 10
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->v0:Lo/d4;

    .line 12
    iget-object v2, v0, Lo/d4;->k:Landroid/content/res/ColorStateList;

    .line 14
    if-eq v2, p1, :cond_0

    .line 16
    iput-object p1, v0, Lo/d4;->k:Landroid/content/res/ColorStateList;

    .line 18
    invoke-virtual {v0, v1}, Lo/d4;->h(Z)V

    .line 21
    :cond_0
    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->j0:Landroid/content/res/ColorStateList;

    .line 23
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    .line 25
    if-eqz p1, :cond_1

    .line 27
    invoke-virtual {p0, v1, v1}, Lcom/google/android/material/textfield/TextInputLayout;->u(ZZ)V

    .line 30
    :cond_1
    return-void
.end method

.method public setLengthCounter(Lo/Of;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->n:Lo/Of;

    .line 3
    return-void
.end method

.method public setMaxEms(I)V
    .locals 2

    .line 1
    iput p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->g:I

    .line 3
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    .line 5
    if-eqz v0, :cond_0

    .line 7
    const/4 v1, -0x1

    .line 8
    if-eq p1, v1, :cond_0

    .line 10
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setMaxEms(I)V

    .line 13
    :cond_0
    return-void
.end method

.method public setMaxWidth(I)V
    .locals 2

    .line 1
    iput p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->i:I

    .line 3
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    .line 5
    if-eqz v0, :cond_0

    .line 7
    const/4 v1, -0x1

    .line 8
    if-eq p1, v1, :cond_0

    .line 10
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 13
    :cond_0
    return-void
.end method

.method public setMaxWidthResource(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 12
    move-result p1

    .line 13
    invoke-virtual {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setMaxWidth(I)V

    .line 16
    return-void
.end method

.method public setMinEms(I)V
    .locals 2

    .line 1
    iput p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->f:I

    .line 3
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    .line 5
    if-eqz v0, :cond_0

    .line 7
    const/4 v1, -0x1

    .line 8
    if-eq p1, v1, :cond_0

    .line 10
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setMinEms(I)V

    .line 13
    :cond_0
    return-void
.end method

.method public setMinWidth(I)V
    .locals 2

    .line 1
    iput p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->h:I

    .line 3
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    .line 5
    if-eqz v0, :cond_0

    .line 7
    const/4 v1, -0x1

    .line 8
    if-eq p1, v1, :cond_0

    .line 10
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setMinWidth(I)V

    .line 13
    :cond_0
    return-void
.end method

.method public setMinWidthResource(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 12
    move-result p1

    .line 13
    invoke-virtual {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setMinWidth(I)V

    .line 16
    return-void
.end method

.method public setPasswordVisibilityToggleContentDescription(I)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->c:Lo/b7;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 3
    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 4
    :goto_0
    iget-object v0, v0, Lo/b7;->g:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setPasswordVisibilityToggleContentDescription(Ljava/lang/CharSequence;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->c:Lo/b7;

    iget-object v0, v0, Lo/b7;->g:Lcom/google/android/material/internal/CheckableImageButton;

    .line 6
    invoke-virtual {v0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setPasswordVisibilityToggleDrawable(I)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->c:Lo/b7;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 3
    invoke-static {v1, p1}, Lo/L1;->z(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 4
    :goto_0
    iget-object v0, v0, Lo/b7;->g:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v0, p1}, Lo/C1;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setPasswordVisibilityToggleDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->c:Lo/b7;

    iget-object v0, v0, Lo/b7;->g:Lcom/google/android/material/internal/CheckableImageButton;

    .line 6
    invoke-virtual {v0, p1}, Lo/C1;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setPasswordVisibilityToggleEnabled(Z)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->c:Lo/b7;

    .line 3
    if-eqz p1, :cond_0

    .line 5
    iget v1, v0, Lo/b7;->i:I

    .line 7
    const/4 v2, 0x1

    .line 8
    if-eq v1, v2, :cond_0

    .line 10
    invoke-virtual {v0, v2}, Lo/b7;->g(I)V

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    if-nez p1, :cond_1

    .line 16
    const/4 p1, 0x0

    .line 17
    invoke-virtual {v0, p1}, Lo/b7;->g(I)V

    .line 20
    goto :goto_0

    .line 21
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    :goto_0
    return-void
.end method

.method public setPasswordVisibilityToggleTintList(Landroid/content/res/ColorStateList;)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->c:Lo/b7;

    .line 3
    iput-object p1, v0, Lo/b7;->k:Landroid/content/res/ColorStateList;

    .line 5
    iget-object v1, v0, Lo/b7;->l:Landroid/graphics/PorterDuff$Mode;

    .line 7
    iget-object v2, v0, Lo/b7;->a:Lcom/google/android/material/textfield/TextInputLayout;

    .line 9
    iget-object v0, v0, Lo/b7;->g:Lcom/google/android/material/internal/CheckableImageButton;

    .line 11
    invoke-static {v2, v0, p1, v1}, Lo/L1;->g(Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/internal/CheckableImageButton;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)V

    .line 14
    return-void
.end method

.method public setPasswordVisibilityToggleTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->c:Lo/b7;

    .line 3
    iput-object p1, v0, Lo/b7;->l:Landroid/graphics/PorterDuff$Mode;

    .line 5
    iget-object v1, v0, Lo/b7;->k:Landroid/content/res/ColorStateList;

    .line 7
    iget-object v2, v0, Lo/b7;->a:Lcom/google/android/material/textfield/TextInputLayout;

    .line 9
    iget-object v0, v0, Lo/b7;->g:Lcom/google/android/material/internal/CheckableImageButton;

    .line 11
    invoke-static {v2, v0, v1, p1}, Lo/L1;->g(Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/internal/CheckableImageButton;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)V

    .line 14
    return-void
.end method

.method public setPlaceholderText(Ljava/lang/CharSequence;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->t:Lo/j2;

    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 6
    new-instance v0, Lo/j2;

    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 11
    move-result-object v2

    .line 12
    invoke-direct {v0, v2, v1}, Lo/j2;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 15
    iput-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->t:Lo/j2;

    .line 17
    const v2, 0x7f0801da

    .line 20
    invoke-virtual {v0, v2}, Landroid/view/View;->setId(I)V

    .line 23
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->t:Lo/j2;

    .line 25
    const/4 v2, 0x2

    .line 26
    invoke-virtual {v0, v2}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 29
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->d()Lo/l7;

    .line 32
    move-result-object v0

    .line 33
    iput-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->w:Lo/l7;

    .line 35
    const-wide/16 v2, 0x43

    .line 37
    iput-wide v2, v0, Lo/ug;->b:J

    .line 39
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->d()Lo/l7;

    .line 42
    move-result-object v0

    .line 43
    iput-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->x:Lo/l7;

    .line 45
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->v:I

    .line 47
    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setPlaceholderTextAppearance(I)V

    .line 50
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->u:Landroid/content/res/ColorStateList;

    .line 52
    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setPlaceholderTextColor(Landroid/content/res/ColorStateList;)V

    .line 55
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 58
    move-result v0

    .line 59
    if-eqz v0, :cond_1

    .line 61
    const/4 p1, 0x0

    .line 62
    invoke-direct {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setPlaceholderTextEnabled(Z)V

    .line 65
    goto :goto_0

    .line 66
    :cond_1
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->s:Z

    .line 68
    if-nez v0, :cond_2

    .line 70
    const/4 v0, 0x1

    .line 71
    invoke-direct {p0, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setPlaceholderTextEnabled(Z)V

    .line 74
    :cond_2
    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->r:Ljava/lang/CharSequence;

    .line 76
    :goto_0
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    .line 78
    if-nez p1, :cond_3

    .line 80
    goto :goto_1

    .line 81
    :cond_3
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 84
    move-result-object v1

    .line 85
    :goto_1
    invoke-virtual {p0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->v(Landroid/text/Editable;)V

    .line 88
    return-void
.end method

.method public setPlaceholderTextAppearance(I)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->v:I

    .line 3
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->t:Lo/j2;

    .line 5
    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 10
    :cond_0
    return-void
.end method

.method public setPlaceholderTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->u:Landroid/content/res/ColorStateList;

    .line 3
    if-eq v0, p1, :cond_0

    .line 5
    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->u:Landroid/content/res/ColorStateList;

    .line 7
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->t:Lo/j2;

    .line 9
    if-eqz v0, :cond_0

    .line 11
    if-eqz p1, :cond_0

    .line 13
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 16
    :cond_0
    return-void
.end method

.method public setPrefixText(Ljava/lang/CharSequence;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->b:Lo/if;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_0

    .line 12
    const/4 v1, 0x0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    move-object v1, p1

    .line 15
    :goto_0
    iput-object v1, v0, Lo/if;->c:Ljava/lang/CharSequence;

    .line 17
    iget-object v1, v0, Lo/if;->b:Lo/j2;

    .line 19
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 22
    invoke-virtual {v0}, Lo/if;->e()V

    .line 25
    return-void
.end method

.method public setPrefixTextAppearance(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->b:Lo/if;

    .line 3
    iget-object v0, v0, Lo/if;->b:Lo/j2;

    .line 5
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 8
    return-void
.end method

.method public setPrefixTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->b:Lo/if;

    .line 3
    iget-object v0, v0, Lo/if;->b:Lo/j2;

    .line 5
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 8
    return-void
.end method

.method public setShapeAppearanceModel(Lo/Ae;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->F:Lo/eb;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    iget-object v0, v0, Lo/eb;->a:Lo/db;

    .line 7
    iget-object v0, v0, Lo/db;->a:Lo/Ae;

    .line 9
    if-eq v0, p1, :cond_0

    .line 11
    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->L:Lo/Ae;

    .line 13
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->b()V

    .line 16
    :cond_0
    return-void
.end method

.method public setStartIconCheckable(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->b:Lo/if;

    .line 3
    iget-object v0, v0, Lo/if;->d:Lcom/google/android/material/internal/CheckableImageButton;

    .line 5
    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/CheckableImageButton;->setCheckable(Z)V

    .line 8
    return-void
.end method

.method public setStartIconContentDescription(I)V
    .locals 1

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setStartIconContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setStartIconContentDescription(Ljava/lang/CharSequence;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->b:Lo/if;

    iget-object v0, v0, Lo/if;->d:Lcom/google/android/material/internal/CheckableImageButton;

    .line 2
    invoke-virtual {v0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    if-eq v1, p1, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setStartIconDrawable(I)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lo/L1;->z(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setStartIconDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setStartIconDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->b:Lo/if;

    invoke-virtual {v0, p1}, Lo/if;->b(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setStartIconMinSize(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->b:Lo/if;

    .line 3
    if-ltz p1, :cond_1

    .line 5
    iget v1, v0, Lo/if;->g:I

    .line 7
    if-eq p1, v1, :cond_0

    .line 9
    iput p1, v0, Lo/if;->g:I

    .line 11
    iget-object v0, v0, Lo/if;->d:Lcom/google/android/material/internal/CheckableImageButton;

    .line 13
    invoke-virtual {v0, p1}, Landroid/view/View;->setMinimumWidth(I)V

    .line 16
    invoke-virtual {v0, p1}, Landroid/view/View;->setMinimumHeight(I)V

    .line 19
    :cond_0
    return-void

    .line 20
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 25
    const-string v0, "startIconSize cannot be less than 0"

    .line 27
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 30
    throw p1
.end method

.method public setStartIconOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->b:Lo/if;

    .line 3
    iget-object v1, v0, Lo/if;->i:Landroid/view/View$OnLongClickListener;

    .line 5
    iget-object v0, v0, Lo/if;->d:Lcom/google/android/material/internal/CheckableImageButton;

    .line 7
    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    invoke-static {v0, v1}, Lo/L1;->Z(Lcom/google/android/material/internal/CheckableImageButton;Landroid/view/View$OnLongClickListener;)V

    .line 13
    return-void
.end method

.method public setStartIconOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->b:Lo/if;

    .line 3
    iput-object p1, v0, Lo/if;->i:Landroid/view/View$OnLongClickListener;

    .line 5
    iget-object v0, v0, Lo/if;->d:Lcom/google/android/material/internal/CheckableImageButton;

    .line 7
    invoke-virtual {v0, p1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 10
    invoke-static {v0, p1}, Lo/L1;->Z(Lcom/google/android/material/internal/CheckableImageButton;Landroid/view/View$OnLongClickListener;)V

    .line 13
    return-void
.end method

.method public setStartIconScaleType(Landroid/widget/ImageView$ScaleType;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->b:Lo/if;

    .line 3
    iput-object p1, v0, Lo/if;->h:Landroid/widget/ImageView$ScaleType;

    .line 5
    iget-object v0, v0, Lo/if;->d:Lcom/google/android/material/internal/CheckableImageButton;

    .line 7
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 10
    return-void
.end method

.method public setStartIconTintList(Landroid/content/res/ColorStateList;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->b:Lo/if;

    .line 3
    iget-object v1, v0, Lo/if;->e:Landroid/content/res/ColorStateList;

    .line 5
    if-eq v1, p1, :cond_0

    .line 7
    iput-object p1, v0, Lo/if;->e:Landroid/content/res/ColorStateList;

    .line 9
    iget-object v1, v0, Lo/if;->f:Landroid/graphics/PorterDuff$Mode;

    .line 11
    iget-object v2, v0, Lo/if;->a:Lcom/google/android/material/textfield/TextInputLayout;

    .line 13
    iget-object v0, v0, Lo/if;->d:Lcom/google/android/material/internal/CheckableImageButton;

    .line 15
    invoke-static {v2, v0, p1, v1}, Lo/L1;->g(Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/internal/CheckableImageButton;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)V

    .line 18
    :cond_0
    return-void
.end method

.method public setStartIconTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->b:Lo/if;

    .line 3
    iget-object v1, v0, Lo/if;->f:Landroid/graphics/PorterDuff$Mode;

    .line 5
    if-eq v1, p1, :cond_0

    .line 7
    iput-object p1, v0, Lo/if;->f:Landroid/graphics/PorterDuff$Mode;

    .line 9
    iget-object v1, v0, Lo/if;->e:Landroid/content/res/ColorStateList;

    .line 11
    iget-object v2, v0, Lo/if;->a:Lcom/google/android/material/textfield/TextInputLayout;

    .line 13
    iget-object v0, v0, Lo/if;->d:Lcom/google/android/material/internal/CheckableImageButton;

    .line 15
    invoke-static {v2, v0, v1, p1}, Lo/L1;->g(Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/internal/CheckableImageButton;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)V

    .line 18
    :cond_0
    return-void
.end method

.method public setStartIconVisible(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->b:Lo/if;

    .line 3
    invoke-virtual {v0, p1}, Lo/if;->c(Z)V

    .line 6
    return-void
.end method

.method public setSuffixText(Ljava/lang/CharSequence;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->c:Lo/b7;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_0

    .line 12
    const/4 v1, 0x0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    move-object v1, p1

    .line 15
    :goto_0
    iput-object v1, v0, Lo/b7;->p:Ljava/lang/CharSequence;

    .line 17
    iget-object v1, v0, Lo/b7;->q:Lo/j2;

    .line 19
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 22
    invoke-virtual {v0}, Lo/b7;->n()V

    .line 25
    return-void
.end method

.method public setSuffixTextAppearance(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->c:Lo/b7;

    .line 3
    iget-object v0, v0, Lo/b7;->q:Lo/j2;

    .line 5
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 8
    return-void
.end method

.method public setSuffixTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->c:Lo/b7;

    .line 3
    iget-object v0, v0, Lo/b7;->q:Lo/j2;

    .line 5
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 8
    return-void
.end method

.method public setTextInputAccessibilityDelegate(Lo/Nf;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    invoke-static {v0, p1}, Lo/Dh;->l(Landroid/view/View;Lo/r;)V

    .line 8
    :cond_0
    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->b0:Landroid/graphics/Typeface;

    .line 3
    if-eq p1, v0, :cond_2

    .line 5
    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->b0:Landroid/graphics/Typeface;

    .line 7
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->v0:Lo/d4;

    .line 9
    invoke-virtual {v0, p1}, Lo/d4;->m(Landroid/graphics/Typeface;)V

    .line 12
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->j:Lo/m9;

    .line 14
    iget-object v1, v0, Lo/m9;->B:Landroid/graphics/Typeface;

    .line 16
    if-eq p1, v1, :cond_1

    .line 18
    iput-object p1, v0, Lo/m9;->B:Landroid/graphics/Typeface;

    .line 20
    iget-object v1, v0, Lo/m9;->r:Lo/j2;

    .line 22
    if-eqz v1, :cond_0

    .line 24
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 27
    :cond_0
    iget-object v0, v0, Lo/m9;->y:Lo/j2;

    .line 29
    if-eqz v0, :cond_1

    .line 31
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 34
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->o:Lo/j2;

    .line 36
    if-eqz v0, :cond_2

    .line 38
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 41
    :cond_2
    return-void
.end method

.method public final t()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->O:I

    .line 3
    const/4 v1, 0x1

    .line 4
    if-eq v0, v1, :cond_0

    .line 6
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/FrameLayout;

    .line 8
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 11
    move-result-object v1

    .line 12
    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 14
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->c()I

    .line 17
    move-result v2

    .line 18
    iget v3, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 20
    if-eq v2, v3, :cond_0

    .line 22
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 24
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 27
    :cond_0
    return-void
.end method

.method public final u(ZZ)V
    .locals 9

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x1

    .line 9
    if-eqz v1, :cond_0

    .line 11
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 14
    move-result-object v1

    .line 15
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 18
    move-result v1

    .line 19
    if-nez v1, :cond_0

    .line 21
    move v1, v3

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    move v1, v2

    .line 24
    :goto_0
    iget-object v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    .line 26
    if-eqz v4, :cond_1

    .line 28
    invoke-virtual {v4}, Landroid/view/View;->hasFocus()Z

    .line 31
    move-result v4

    .line 32
    if-eqz v4, :cond_1

    .line 34
    move v4, v3

    .line 35
    goto :goto_1

    .line 36
    :cond_1
    move v4, v2

    .line 37
    :goto_1
    iget-object v5, p0, Lcom/google/android/material/textfield/TextInputLayout;->i0:Landroid/content/res/ColorStateList;

    .line 39
    iget-object v6, p0, Lcom/google/android/material/textfield/TextInputLayout;->v0:Lo/d4;

    .line 41
    if-eqz v5, :cond_2

    .line 43
    invoke-virtual {v6, v5}, Lo/d4;->i(Landroid/content/res/ColorStateList;)V

    .line 46
    :cond_2
    const/4 v5, 0x0

    .line 47
    if-nez v0, :cond_4

    .line 49
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->i0:Landroid/content/res/ColorStateList;

    .line 51
    if-eqz v0, :cond_3

    .line 53
    const v7, -0x101009e

    .line 56
    filled-new-array {v7}, [I

    .line 59
    move-result-object v7

    .line 60
    iget v8, p0, Lcom/google/android/material/textfield/TextInputLayout;->s0:I

    .line 62
    invoke-virtual {v0, v7, v8}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    .line 65
    move-result v0

    .line 66
    goto :goto_2

    .line 67
    :cond_3
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->s0:I

    .line 69
    :goto_2
    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 72
    move-result-object v0

    .line 73
    invoke-virtual {v6, v0}, Lo/d4;->i(Landroid/content/res/ColorStateList;)V

    .line 76
    goto :goto_4

    .line 77
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->m()Z

    .line 80
    move-result v0

    .line 81
    if-eqz v0, :cond_6

    .line 83
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->j:Lo/m9;

    .line 85
    iget-object v0, v0, Lo/m9;->r:Lo/j2;

    .line 87
    if-eqz v0, :cond_5

    .line 89
    invoke-virtual {v0}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    .line 92
    move-result-object v0

    .line 93
    goto :goto_3

    .line 94
    :cond_5
    move-object v0, v5

    .line 95
    :goto_3
    invoke-virtual {v6, v0}, Lo/d4;->i(Landroid/content/res/ColorStateList;)V

    .line 98
    goto :goto_4

    .line 99
    :cond_6
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->m:Z

    .line 101
    if-eqz v0, :cond_7

    .line 103
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->o:Lo/j2;

    .line 105
    if-eqz v0, :cond_7

    .line 107
    invoke-virtual {v0}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    .line 110
    move-result-object v0

    .line 111
    invoke-virtual {v6, v0}, Lo/d4;->i(Landroid/content/res/ColorStateList;)V

    .line 114
    goto :goto_4

    .line 115
    :cond_7
    if-eqz v4, :cond_8

    .line 117
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->j0:Landroid/content/res/ColorStateList;

    .line 119
    if-eqz v0, :cond_8

    .line 121
    iget-object v7, v6, Lo/d4;->k:Landroid/content/res/ColorStateList;

    .line 123
    if-eq v7, v0, :cond_8

    .line 125
    iput-object v0, v6, Lo/d4;->k:Landroid/content/res/ColorStateList;

    .line 127
    invoke-virtual {v6, v2}, Lo/d4;->h(Z)V

    .line 130
    :cond_8
    :goto_4
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->c:Lo/b7;

    .line 132
    iget-object v7, p0, Lcom/google/android/material/textfield/TextInputLayout;->b:Lo/if;

    .line 134
    if-nez v1, :cond_f

    .line 136
    iget-boolean v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->w0:Z

    .line 138
    if-eqz v1, :cond_f

    .line 140
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    .line 143
    move-result v1

    .line 144
    if-eqz v1, :cond_9

    .line 146
    if-eqz v4, :cond_9

    .line 148
    goto :goto_6

    .line 149
    :cond_9
    if-nez p2, :cond_a

    .line 151
    iget-boolean p2, p0, Lcom/google/android/material/textfield/TextInputLayout;->u0:Z

    .line 153
    if-nez p2, :cond_15

    .line 155
    :cond_a
    iget-object p2, p0, Lcom/google/android/material/textfield/TextInputLayout;->y0:Landroid/animation/ValueAnimator;

    .line 157
    if-eqz p2, :cond_b

    .line 159
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->isRunning()Z

    .line 162
    move-result p2

    .line 163
    if-eqz p2, :cond_b

    .line 165
    iget-object p2, p0, Lcom/google/android/material/textfield/TextInputLayout;->y0:Landroid/animation/ValueAnimator;

    .line 167
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->cancel()V

    .line 170
    :cond_b
    const/4 p2, 0x0

    .line 171
    if-eqz p1, :cond_c

    .line 173
    iget-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->x0:Z

    .line 175
    if-eqz p1, :cond_c

    .line 177
    invoke-virtual {p0, p2}, Lcom/google/android/material/textfield/TextInputLayout;->a(F)V

    .line 180
    goto :goto_5

    .line 181
    :cond_c
    invoke-virtual {v6, p2}, Lo/d4;->k(F)V

    .line 184
    :goto_5
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->e()Z

    .line 187
    move-result p1

    .line 188
    if-eqz p1, :cond_d

    .line 190
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->F:Lo/eb;

    .line 192
    check-cast p1, Lo/j5;

    .line 194
    iget-object p1, p1, Lo/j5;->x:Lo/i5;

    .line 196
    iget-object p1, p1, Lo/i5;->r:Landroid/graphics/RectF;

    .line 198
    invoke-virtual {p1}, Landroid/graphics/RectF;->isEmpty()Z

    .line 201
    move-result p1

    .line 202
    if-nez p1, :cond_d

    .line 204
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->e()Z

    .line 207
    move-result p1

    .line 208
    if-eqz p1, :cond_d

    .line 210
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->F:Lo/eb;

    .line 212
    check-cast p1, Lo/j5;

    .line 214
    invoke-virtual {p1, p2, p2, p2, p2}, Lo/j5;->q(FFFF)V

    .line 217
    :cond_d
    iput-boolean v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->u0:Z

    .line 219
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->t:Lo/j2;

    .line 221
    if-eqz p1, :cond_e

    .line 223
    iget-boolean p2, p0, Lcom/google/android/material/textfield/TextInputLayout;->s:Z

    .line 225
    if-eqz p2, :cond_e

    .line 227
    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 230
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/FrameLayout;

    .line 232
    iget-object p2, p0, Lcom/google/android/material/textfield/TextInputLayout;->x:Lo/l7;

    .line 234
    invoke-static {p1, p2}, Lo/yg;->a(Landroid/widget/FrameLayout;Lo/ug;)V

    .line 237
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->t:Lo/j2;

    .line 239
    const/4 p2, 0x4

    .line 240
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 243
    :cond_e
    iput-boolean v3, v7, Lo/if;->j:Z

    .line 245
    invoke-virtual {v7}, Lo/if;->e()V

    .line 248
    iput-boolean v3, v0, Lo/b7;->r:Z

    .line 250
    invoke-virtual {v0}, Lo/b7;->n()V

    .line 253
    goto :goto_9

    .line 254
    :cond_f
    :goto_6
    if-nez p2, :cond_10

    .line 256
    iget-boolean p2, p0, Lcom/google/android/material/textfield/TextInputLayout;->u0:Z

    .line 258
    if-eqz p2, :cond_15

    .line 260
    :cond_10
    iget-object p2, p0, Lcom/google/android/material/textfield/TextInputLayout;->y0:Landroid/animation/ValueAnimator;

    .line 262
    if-eqz p2, :cond_11

    .line 264
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->isRunning()Z

    .line 267
    move-result p2

    .line 268
    if-eqz p2, :cond_11

    .line 270
    iget-object p2, p0, Lcom/google/android/material/textfield/TextInputLayout;->y0:Landroid/animation/ValueAnimator;

    .line 272
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->cancel()V

    .line 275
    :cond_11
    const/high16 p2, 0x3f800000    # 1.0f

    .line 277
    if-eqz p1, :cond_12

    .line 279
    iget-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->x0:Z

    .line 281
    if-eqz p1, :cond_12

    .line 283
    invoke-virtual {p0, p2}, Lcom/google/android/material/textfield/TextInputLayout;->a(F)V

    .line 286
    goto :goto_7

    .line 287
    :cond_12
    invoke-virtual {v6, p2}, Lo/d4;->k(F)V

    .line 290
    :goto_7
    iput-boolean v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->u0:Z

    .line 292
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->e()Z

    .line 295
    move-result p1

    .line 296
    if-eqz p1, :cond_13

    .line 298
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->j()V

    .line 301
    :cond_13
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    .line 303
    if-nez p1, :cond_14

    .line 305
    goto :goto_8

    .line 306
    :cond_14
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 309
    move-result-object v5

    .line 310
    :goto_8
    invoke-virtual {p0, v5}, Lcom/google/android/material/textfield/TextInputLayout;->v(Landroid/text/Editable;)V

    .line 313
    iput-boolean v2, v7, Lo/if;->j:Z

    .line 315
    invoke-virtual {v7}, Lo/if;->e()V

    .line 318
    iput-boolean v2, v0, Lo/b7;->r:Z

    .line 320
    invoke-virtual {v0}, Lo/b7;->n()V

    .line 323
    :cond_15
    :goto_9
    return-void
.end method

.method public final v(Landroid/text/Editable;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->n:Lo/Of;

    .line 3
    check-cast v0, Lo/Y5;

    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    const/4 v0, 0x0

    .line 9
    if-eqz p1, :cond_0

    .line 11
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 14
    move-result p1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move p1, v0

    .line 17
    :goto_0
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/FrameLayout;

    .line 19
    if-nez p1, :cond_1

    .line 21
    iget-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->u0:Z

    .line 23
    if-nez p1, :cond_1

    .line 25
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->t:Lo/j2;

    .line 27
    if-eqz p1, :cond_2

    .line 29
    iget-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->s:Z

    .line 31
    if-eqz p1, :cond_2

    .line 33
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->r:Ljava/lang/CharSequence;

    .line 35
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 38
    move-result p1

    .line 39
    if-nez p1, :cond_2

    .line 41
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->t:Lo/j2;

    .line 43
    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->r:Ljava/lang/CharSequence;

    .line 45
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->w:Lo/l7;

    .line 50
    invoke-static {v1, p1}, Lo/yg;->a(Landroid/widget/FrameLayout;Lo/ug;)V

    .line 53
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->t:Lo/j2;

    .line 55
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 58
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->t:Lo/j2;

    .line 60
    invoke-virtual {p1}, Landroid/view/View;->bringToFront()V

    .line 63
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->r:Ljava/lang/CharSequence;

    .line 65
    invoke-virtual {p0, p1}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 68
    goto :goto_1

    .line 69
    :cond_1
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->t:Lo/j2;

    .line 71
    if-eqz p1, :cond_2

    .line 73
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->s:Z

    .line 75
    if-eqz v0, :cond_2

    .line 77
    const/4 v0, 0x0

    .line 78
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->x:Lo/l7;

    .line 83
    invoke-static {v1, p1}, Lo/yg;->a(Landroid/widget/FrameLayout;Lo/ug;)V

    .line 86
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->t:Lo/j2;

    .line 88
    const/4 v0, 0x4

    .line 89
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 92
    :cond_2
    :goto_1
    return-void
.end method

.method public final w(ZZ)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->n0:Landroid/content/res/ColorStateList;

    .line 3
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->n0:Landroid/content/res/ColorStateList;

    .line 9
    const v2, 0x1010367

    .line 12
    const v3, 0x101009e

    .line 15
    filled-new-array {v2, v3}, [I

    .line 18
    move-result-object v2

    .line 19
    invoke-virtual {v1, v2, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    .line 22
    move-result v1

    .line 23
    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->n0:Landroid/content/res/ColorStateList;

    .line 25
    const v4, 0x10102fe

    .line 28
    filled-new-array {v4, v3}, [I

    .line 31
    move-result-object v3

    .line 32
    invoke-virtual {v2, v3, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    .line 35
    move-result v2

    .line 36
    if-eqz p1, :cond_0

    .line 38
    iput v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->T:I

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    if-eqz p2, :cond_1

    .line 43
    iput v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->T:I

    .line 45
    goto :goto_0

    .line 46
    :cond_1
    iput v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->T:I

    .line 48
    :goto_0
    return-void
.end method

.method public final x()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->F:Lo/eb;

    .line 3
    if-eqz v0, :cond_16

    .line 5
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->O:I

    .line 7
    if-nez v0, :cond_0

    .line 9
    goto/16 :goto_6

    .line 11
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    .line 14
    move-result v0

    .line 15
    const/4 v1, 0x0

    .line 16
    const/4 v2, 0x1

    .line 17
    if-nez v0, :cond_2

    .line 19
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    .line 21
    if-eqz v0, :cond_1

    .line 23
    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_1

    .line 29
    goto :goto_0

    .line 30
    :cond_1
    move v0, v1

    .line 31
    goto :goto_1

    .line 32
    :cond_2
    :goto_0
    move v0, v2

    .line 33
    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->isHovered()Z

    .line 36
    move-result v3

    .line 37
    if-nez v3, :cond_3

    .line 39
    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    .line 41
    if-eqz v3, :cond_4

    .line 43
    invoke-virtual {v3}, Landroid/view/View;->isHovered()Z

    .line 46
    move-result v3

    .line 47
    if-eqz v3, :cond_4

    .line 49
    :cond_3
    move v1, v2

    .line 50
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    .line 53
    move-result v3

    .line 54
    if-nez v3, :cond_5

    .line 56
    iget v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->s0:I

    .line 58
    iput v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->T:I

    .line 60
    goto :goto_2

    .line 61
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->m()Z

    .line 64
    move-result v3

    .line 65
    if-eqz v3, :cond_7

    .line 67
    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->n0:Landroid/content/res/ColorStateList;

    .line 69
    if-eqz v3, :cond_6

    .line 71
    invoke-virtual {p0, v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->w(ZZ)V

    .line 74
    goto :goto_2

    .line 75
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getErrorCurrentTextColors()I

    .line 78
    move-result v3

    .line 79
    iput v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->T:I

    .line 81
    goto :goto_2

    .line 82
    :cond_7
    iget-boolean v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->m:Z

    .line 84
    if-eqz v3, :cond_9

    .line 86
    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->o:Lo/j2;

    .line 88
    if-eqz v3, :cond_9

    .line 90
    iget-object v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->n0:Landroid/content/res/ColorStateList;

    .line 92
    if-eqz v4, :cond_8

    .line 94
    invoke-virtual {p0, v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->w(ZZ)V

    .line 97
    goto :goto_2

    .line 98
    :cond_8
    invoke-virtual {v3}, Landroid/widget/TextView;->getCurrentTextColor()I

    .line 101
    move-result v3

    .line 102
    iput v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->T:I

    .line 104
    goto :goto_2

    .line 105
    :cond_9
    if-eqz v0, :cond_a

    .line 107
    iget v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->m0:I

    .line 109
    iput v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->T:I

    .line 111
    goto :goto_2

    .line 112
    :cond_a
    if-eqz v1, :cond_b

    .line 114
    iget v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->l0:I

    .line 116
    iput v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->T:I

    .line 118
    goto :goto_2

    .line 119
    :cond_b
    iget v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->k0:I

    .line 121
    iput v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->T:I

    .line 123
    :goto_2
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 125
    const/16 v4, 0x1d

    .line 127
    if-lt v3, v4, :cond_c

    .line 129
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->p()V

    .line 132
    :cond_c
    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->c:Lo/b7;

    .line 134
    invoke-virtual {v3}, Lo/b7;->l()V

    .line 137
    iget-object v4, v3, Lo/b7;->c:Lcom/google/android/material/internal/CheckableImageButton;

    .line 139
    iget-object v5, v3, Lo/b7;->d:Landroid/content/res/ColorStateList;

    .line 141
    iget-object v6, v3, Lo/b7;->a:Lcom/google/android/material/textfield/TextInputLayout;

    .line 143
    invoke-static {v6, v4, v5}, Lo/L1;->V(Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/internal/CheckableImageButton;Landroid/content/res/ColorStateList;)V

    .line 146
    iget-object v4, v3, Lo/b7;->k:Landroid/content/res/ColorStateList;

    .line 148
    iget-object v5, v3, Lo/b7;->g:Lcom/google/android/material/internal/CheckableImageButton;

    .line 150
    invoke-static {v6, v5, v4}, Lo/L1;->V(Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/internal/CheckableImageButton;Landroid/content/res/ColorStateList;)V

    .line 153
    invoke-virtual {v3}, Lo/b7;->b()Lo/c7;

    .line 156
    move-result-object v4

    .line 157
    instance-of v4, v4, Lo/r6;

    .line 159
    if-eqz v4, :cond_e

    .line 161
    invoke-virtual {v6}, Lcom/google/android/material/textfield/TextInputLayout;->m()Z

    .line 164
    move-result v4

    .line 165
    if-eqz v4, :cond_d

    .line 167
    invoke-virtual {v5}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 170
    move-result-object v4

    .line 171
    if-eqz v4, :cond_d

    .line 173
    invoke-virtual {v5}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 176
    move-result-object v3

    .line 177
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 180
    move-result-object v3

    .line 181
    invoke-virtual {v6}, Lcom/google/android/material/textfield/TextInputLayout;->getErrorCurrentTextColors()I

    .line 184
    move-result v4

    .line 185
    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 188
    invoke-virtual {v5, v3}, Lo/C1;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 191
    goto :goto_3

    .line 192
    :cond_d
    iget-object v4, v3, Lo/b7;->k:Landroid/content/res/ColorStateList;

    .line 194
    iget-object v3, v3, Lo/b7;->l:Landroid/graphics/PorterDuff$Mode;

    .line 196
    invoke-static {v6, v5, v4, v3}, Lo/L1;->g(Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/internal/CheckableImageButton;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)V

    .line 199
    :cond_e
    :goto_3
    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->b:Lo/if;

    .line 201
    iget-object v4, v3, Lo/if;->d:Lcom/google/android/material/internal/CheckableImageButton;

    .line 203
    iget-object v5, v3, Lo/if;->e:Landroid/content/res/ColorStateList;

    .line 205
    iget-object v3, v3, Lo/if;->a:Lcom/google/android/material/textfield/TextInputLayout;

    .line 207
    invoke-static {v3, v4, v5}, Lo/L1;->V(Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/internal/CheckableImageButton;Landroid/content/res/ColorStateList;)V

    .line 210
    iget v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->O:I

    .line 212
    const/4 v4, 0x2

    .line 213
    if-ne v3, v4, :cond_11

    .line 215
    iget v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->Q:I

    .line 217
    if-eqz v0, :cond_f

    .line 219
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    .line 222
    move-result v4

    .line 223
    if-eqz v4, :cond_f

    .line 225
    iget v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->S:I

    .line 227
    iput v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->Q:I

    .line 229
    goto :goto_4

    .line 230
    :cond_f
    iget v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->R:I

    .line 232
    iput v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->Q:I

    .line 234
    :goto_4
    iget v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->Q:I

    .line 236
    if-eq v4, v3, :cond_11

    .line 238
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->e()Z

    .line 241
    move-result v3

    .line 242
    if-eqz v3, :cond_11

    .line 244
    iget-boolean v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->u0:Z

    .line 246
    if-nez v3, :cond_11

    .line 248
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->e()Z

    .line 251
    move-result v3

    .line 252
    if-eqz v3, :cond_10

    .line 254
    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->F:Lo/eb;

    .line 256
    check-cast v3, Lo/j5;

    .line 258
    const/4 v4, 0x0

    .line 259
    invoke-virtual {v3, v4, v4, v4, v4}, Lo/j5;->q(FFFF)V

    .line 262
    :cond_10
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->j()V

    .line 265
    :cond_11
    iget v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->O:I

    .line 267
    if-ne v3, v2, :cond_15

    .line 269
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    .line 272
    move-result v2

    .line 273
    if-nez v2, :cond_12

    .line 275
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->p0:I

    .line 277
    iput v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->U:I

    .line 279
    goto :goto_5

    .line 280
    :cond_12
    if-eqz v1, :cond_13

    .line 282
    if-nez v0, :cond_13

    .line 284
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->r0:I

    .line 286
    iput v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->U:I

    .line 288
    goto :goto_5

    .line 289
    :cond_13
    if-eqz v0, :cond_14

    .line 291
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->q0:I

    .line 293
    iput v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->U:I

    .line 295
    goto :goto_5

    .line 296
    :cond_14
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->o0:I

    .line 298
    iput v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->U:I

    .line 300
    :cond_15
    :goto_5
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->b()V

    .line 303
    :cond_16
    :goto_6
    return-void
.end method
