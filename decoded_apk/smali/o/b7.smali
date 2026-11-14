.class public final Lo/b7;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/android/material/textfield/TextInputLayout;

.field public final b:Landroid/widget/FrameLayout;

.field public final c:Lcom/google/android/material/internal/CheckableImageButton;

.field public d:Landroid/content/res/ColorStateList;

.field public e:Landroid/graphics/PorterDuff$Mode;

.field public f:Landroid/view/View$OnLongClickListener;

.field public final g:Lcom/google/android/material/internal/CheckableImageButton;

.field public final h:Lo/a7;

.field public i:I

.field public final j:Ljava/util/LinkedHashSet;

.field public k:Landroid/content/res/ColorStateList;

.field public l:Landroid/graphics/PorterDuff$Mode;

.field public m:I

.field public n:Landroid/widget/ImageView$ScaleType;

.field public o:Landroid/view/View$OnLongClickListener;

.field public p:Ljava/lang/CharSequence;

.field public final q:Lo/j2;

.field public r:Z

.field public s:Landroid/widget/EditText;

.field public final t:Landroid/view/accessibility/AccessibilityManager;

.field public u:Lo/s0;

.field public final v:Lo/Y6;


# direct methods
.method public constructor <init>(Lcom/google/android/material/textfield/TextInputLayout;Lo/s2;)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 3
    move-object/from16 v1, p1

    .line 5
    move-object/from16 v2, p2

    .line 7
    const/4 v3, 0x1

    .line 8
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 11
    move-result-object v4

    .line 12
    invoke-direct {v0, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 15
    const/4 v4, 0x0

    .line 16
    iput v4, v0, Lo/b7;->i:I

    .line 18
    new-instance v5, Ljava/util/LinkedHashSet;

    .line 20
    invoke-direct {v5}, Ljava/util/LinkedHashSet;-><init>()V

    .line 23
    iput-object v5, v0, Lo/b7;->j:Ljava/util/LinkedHashSet;

    .line 25
    new-instance v5, Lo/Y6;

    .line 27
    invoke-direct {v5, v0}, Lo/Y6;-><init>(Lo/b7;)V

    .line 30
    iput-object v5, v0, Lo/b7;->v:Lo/Y6;

    .line 32
    new-instance v5, Lo/Z6;

    .line 34
    invoke-direct {v5, v0}, Lo/Z6;-><init>(Lo/b7;)V

    .line 37
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 40
    move-result-object v6

    .line 41
    const-string v7, "accessibility"

    .line 43
    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 46
    move-result-object v6

    .line 47
    check-cast v6, Landroid/view/accessibility/AccessibilityManager;

    .line 49
    iput-object v6, v0, Lo/b7;->t:Landroid/view/accessibility/AccessibilityManager;

    .line 51
    iput-object v1, v0, Lo/b7;->a:Lcom/google/android/material/textfield/TextInputLayout;

    .line 53
    const/16 v6, 0x8

    .line 55
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 58
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 61
    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    .line 63
    const/4 v8, -0x2

    .line 64
    const/4 v9, -0x1

    .line 65
    const v10, 0x800005

    .line 68
    invoke-direct {v7, v8, v9, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 71
    invoke-virtual {v0, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 74
    new-instance v7, Landroid/widget/FrameLayout;

    .line 76
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 79
    move-result-object v10

    .line 80
    invoke-direct {v7, v10}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 83
    iput-object v7, v0, Lo/b7;->b:Landroid/widget/FrameLayout;

    .line 85
    invoke-virtual {v7, v6}, Landroid/view/View;->setVisibility(I)V

    .line 88
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    .line 90
    invoke-direct {v10, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 93
    invoke-virtual {v7, v10}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 96
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 99
    move-result-object v10

    .line 100
    invoke-static {v10}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 103
    move-result-object v10

    .line 104
    const v11, 0x7f0801d5

    .line 107
    invoke-virtual {v0, v0, v10, v11}, Lo/b7;->a(Landroid/view/ViewGroup;Landroid/view/LayoutInflater;I)Lcom/google/android/material/internal/CheckableImageButton;

    .line 110
    move-result-object v11

    .line 111
    iput-object v11, v0, Lo/b7;->c:Lcom/google/android/material/internal/CheckableImageButton;

    .line 113
    const v12, 0x7f0801d4

    .line 116
    invoke-virtual {v0, v7, v10, v12}, Lo/b7;->a(Landroid/view/ViewGroup;Landroid/view/LayoutInflater;I)Lcom/google/android/material/internal/CheckableImageButton;

    .line 119
    move-result-object v10

    .line 120
    iput-object v10, v0, Lo/b7;->g:Lcom/google/android/material/internal/CheckableImageButton;

    .line 122
    new-instance v12, Lo/a7;

    .line 124
    invoke-direct {v12, v0, v2}, Lo/a7;-><init>(Lo/b7;Lo/s2;)V

    .line 127
    iput-object v12, v0, Lo/b7;->h:Lo/a7;

    .line 129
    new-instance v12, Lo/j2;

    .line 131
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 134
    move-result-object v13

    .line 135
    const/4 v14, 0x0

    .line 136
    invoke-direct {v12, v13, v14}, Lo/j2;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 139
    iput-object v12, v0, Lo/b7;->q:Lo/j2;

    .line 141
    iget-object v13, v2, Lo/s2;->b:Ljava/lang/Object;

    .line 143
    check-cast v13, Landroid/content/res/TypedArray;

    .line 145
    const/16 v15, 0x26

    .line 147
    invoke-virtual {v13, v15}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 150
    move-result v16

    .line 151
    if-eqz v16, :cond_0

    .line 153
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 156
    move-result-object v8

    .line 157
    invoke-static {v8, v2, v15}, Lo/Ha;->G(Landroid/content/Context;Lo/s2;I)Landroid/content/res/ColorStateList;

    .line 160
    move-result-object v8

    .line 161
    iput-object v8, v0, Lo/b7;->d:Landroid/content/res/ColorStateList;

    .line 163
    :cond_0
    const/16 v8, 0x27

    .line 165
    invoke-virtual {v13, v8}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 168
    move-result v15

    .line 169
    if-eqz v15, :cond_1

    .line 171
    invoke-virtual {v13, v8, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 174
    move-result v8

    .line 175
    invoke-static {v8, v14}, Lo/Ng;->r(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    .line 178
    move-result-object v8

    .line 179
    iput-object v8, v0, Lo/b7;->e:Landroid/graphics/PorterDuff$Mode;

    .line 181
    :cond_1
    const/16 v8, 0x25

    .line 183
    invoke-virtual {v13, v8}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 186
    move-result v15

    .line 187
    if-eqz v15, :cond_2

    .line 189
    invoke-virtual {v2, v8}, Lo/s2;->o(I)Landroid/graphics/drawable/Drawable;

    .line 192
    move-result-object v8

    .line 193
    invoke-virtual {v0, v8}, Lo/b7;->i(Landroid/graphics/drawable/Drawable;)V

    .line 196
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 199
    move-result-object v8

    .line 200
    const v15, 0x7f0e0033

    .line 203
    invoke-virtual {v8, v15}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    .line 206
    move-result-object v8

    .line 207
    invoke-virtual {v11, v8}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 210
    sget-object v8, Lo/Dh;->a:Ljava/util/WeakHashMap;

    .line 212
    const/4 v8, 0x2

    .line 213
    invoke-virtual {v11, v8}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 216
    invoke-virtual {v11, v4}, Landroid/view/View;->setClickable(Z)V

    .line 219
    invoke-virtual {v11, v4}, Lcom/google/android/material/internal/CheckableImageButton;->setPressable(Z)V

    .line 222
    invoke-virtual {v11, v4}, Landroid/view/View;->setFocusable(Z)V

    .line 225
    const/16 v8, 0x35

    .line 227
    invoke-virtual {v13, v8}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 230
    move-result v15

    .line 231
    if-nez v15, :cond_4

    .line 233
    const/16 v15, 0x20

    .line 235
    invoke-virtual {v13, v15}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 238
    move-result v17

    .line 239
    if-eqz v17, :cond_3

    .line 241
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 244
    move-result-object v6

    .line 245
    invoke-static {v6, v2, v15}, Lo/Ha;->G(Landroid/content/Context;Lo/s2;I)Landroid/content/res/ColorStateList;

    .line 248
    move-result-object v6

    .line 249
    iput-object v6, v0, Lo/b7;->k:Landroid/content/res/ColorStateList;

    .line 251
    :cond_3
    const/16 v6, 0x21

    .line 253
    invoke-virtual {v13, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 256
    move-result v15

    .line 257
    if-eqz v15, :cond_4

    .line 259
    invoke-virtual {v13, v6, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 262
    move-result v6

    .line 263
    invoke-static {v6, v14}, Lo/Ng;->r(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    .line 266
    move-result-object v6

    .line 267
    iput-object v6, v0, Lo/b7;->l:Landroid/graphics/PorterDuff$Mode;

    .line 269
    :cond_4
    const/16 v6, 0x1e

    .line 271
    invoke-virtual {v13, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 274
    move-result v15

    .line 275
    if-eqz v15, :cond_6

    .line 277
    invoke-virtual {v13, v6, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 280
    move-result v6

    .line 281
    invoke-virtual {v0, v6}, Lo/b7;->g(I)V

    .line 284
    const/16 v6, 0x1b

    .line 286
    invoke-virtual {v13, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 289
    move-result v8

    .line 290
    if-eqz v8, :cond_5

    .line 292
    invoke-virtual {v13, v6}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    .line 295
    move-result-object v6

    .line 296
    invoke-virtual {v10}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    .line 299
    move-result-object v8

    .line 300
    if-eq v8, v6, :cond_5

    .line 302
    invoke-virtual {v10, v6}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 305
    :cond_5
    const/16 v6, 0x1a

    .line 307
    invoke-virtual {v13, v6, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 310
    move-result v6

    .line 311
    invoke-virtual {v10, v6}, Lcom/google/android/material/internal/CheckableImageButton;->setCheckable(Z)V

    .line 314
    goto :goto_0

    .line 315
    :cond_6
    invoke-virtual {v13, v8}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 318
    move-result v6

    .line 319
    if-eqz v6, :cond_9

    .line 321
    const/16 v6, 0x36

    .line 323
    invoke-virtual {v13, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 326
    move-result v15

    .line 327
    if-eqz v15, :cond_7

    .line 329
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 332
    move-result-object v15

    .line 333
    invoke-static {v15, v2, v6}, Lo/Ha;->G(Landroid/content/Context;Lo/s2;I)Landroid/content/res/ColorStateList;

    .line 336
    move-result-object v6

    .line 337
    iput-object v6, v0, Lo/b7;->k:Landroid/content/res/ColorStateList;

    .line 339
    :cond_7
    const/16 v6, 0x37

    .line 341
    invoke-virtual {v13, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 344
    move-result v15

    .line 345
    if-eqz v15, :cond_8

    .line 347
    invoke-virtual {v13, v6, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 350
    move-result v6

    .line 351
    invoke-static {v6, v14}, Lo/Ng;->r(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    .line 354
    move-result-object v6

    .line 355
    iput-object v6, v0, Lo/b7;->l:Landroid/graphics/PorterDuff$Mode;

    .line 357
    :cond_8
    invoke-virtual {v13, v8, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 360
    move-result v6

    .line 361
    invoke-virtual {v0, v6}, Lo/b7;->g(I)V

    .line 364
    const/16 v6, 0x33

    .line 366
    invoke-virtual {v13, v6}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    .line 369
    move-result-object v6

    .line 370
    invoke-virtual {v10}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    .line 373
    move-result-object v8

    .line 374
    if-eq v8, v6, :cond_9

    .line 376
    invoke-virtual {v10, v6}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 379
    :cond_9
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 382
    move-result-object v6

    .line 383
    const v8, 0x7f0602c2

    .line 386
    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 389
    move-result v6

    .line 390
    const/16 v8, 0x1d

    .line 392
    invoke-virtual {v13, v8, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 395
    move-result v6

    .line 396
    if-ltz v6, :cond_f

    .line 398
    iget v8, v0, Lo/b7;->m:I

    .line 400
    if-eq v6, v8, :cond_a

    .line 402
    iput v6, v0, Lo/b7;->m:I

    .line 404
    invoke-virtual {v10, v6}, Landroid/view/View;->setMinimumWidth(I)V

    .line 407
    invoke-virtual {v10, v6}, Landroid/view/View;->setMinimumHeight(I)V

    .line 410
    invoke-virtual {v11, v6}, Landroid/view/View;->setMinimumWidth(I)V

    .line 413
    invoke-virtual {v11, v6}, Landroid/view/View;->setMinimumHeight(I)V

    .line 416
    :cond_a
    const/16 v6, 0x1f

    .line 418
    invoke-virtual {v13, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 421
    move-result v8

    .line 422
    if-eqz v8, :cond_b

    .line 424
    invoke-virtual {v13, v6, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 427
    move-result v6

    .line 428
    invoke-static {v6}, Lo/L1;->m(I)Landroid/widget/ImageView$ScaleType;

    .line 431
    move-result-object v6

    .line 432
    iput-object v6, v0, Lo/b7;->n:Landroid/widget/ImageView$ScaleType;

    .line 434
    invoke-virtual {v10, v6}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 437
    invoke-virtual {v11, v6}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 440
    :cond_b
    const/16 v6, 0x8

    .line 442
    invoke-virtual {v12, v6}, Landroid/view/View;->setVisibility(I)V

    .line 445
    const v6, 0x7f0801dc

    .line 448
    invoke-virtual {v12, v6}, Landroid/view/View;->setId(I)V

    .line 451
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    .line 453
    const/high16 v8, 0x42a00000    # 80.0f

    .line 455
    const/4 v9, -0x2

    .line 456
    invoke-direct {v6, v9, v9, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 459
    invoke-virtual {v12, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 462
    invoke-virtual {v12, v3}, Landroid/view/View;->setAccessibilityLiveRegion(I)V

    .line 465
    const/16 v6, 0x48

    .line 467
    invoke-virtual {v13, v6, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 470
    move-result v4

    .line 471
    invoke-virtual {v12, v4}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 474
    const/16 v4, 0x49

    .line 476
    invoke-virtual {v13, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 479
    move-result v6

    .line 480
    if-eqz v6, :cond_c

    .line 482
    invoke-virtual {v2, v4}, Lo/s2;->n(I)Landroid/content/res/ColorStateList;

    .line 485
    move-result-object v2

    .line 486
    invoke-virtual {v12, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 489
    :cond_c
    const/16 v2, 0x47

    .line 491
    invoke-virtual {v13, v2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    .line 494
    move-result-object v2

    .line 495
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 498
    move-result v4

    .line 499
    if-eqz v4, :cond_d

    .line 501
    goto :goto_1

    .line 502
    :cond_d
    move-object v14, v2

    .line 503
    :goto_1
    iput-object v14, v0, Lo/b7;->p:Ljava/lang/CharSequence;

    .line 505
    invoke-virtual {v12, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 508
    invoke-virtual/range {p0 .. p0}, Lo/b7;->n()V

    .line 511
    invoke-virtual {v7, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 514
    invoke-virtual {v0, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 517
    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 520
    invoke-virtual {v0, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 523
    iget-object v2, v1, Lcom/google/android/material/textfield/TextInputLayout;->e0:Ljava/util/LinkedHashSet;

    .line 525
    invoke-virtual {v2, v5}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 528
    iget-object v2, v1, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    .line 530
    if-eqz v2, :cond_e

    .line 532
    invoke-virtual {v5, v1}, Lo/Z6;->a(Lcom/google/android/material/textfield/TextInputLayout;)V

    .line 535
    :cond_e
    new-instance v1, Lo/x3;

    .line 537
    invoke-direct {v1, v3, v0}, Lo/x3;-><init>(ILjava/lang/Object;)V

    .line 540
    invoke-virtual {v0, v1}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 543
    return-void

    .line 544
    :cond_f
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 546
    const-string v2, "endIconSize cannot be less than 0"

    .line 548
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 551
    throw v1
.end method


# virtual methods
.method public final a(Landroid/view/ViewGroup;Landroid/view/LayoutInflater;I)Lcom/google/android/material/internal/CheckableImageButton;
    .locals 2

    .line 1
    const v0, 0x7f0b002c

    .line 4
    const/4 v1, 0x0

    .line 5
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Lcom/google/android/material/internal/CheckableImageButton;

    .line 11
    invoke-virtual {p1, p3}, Landroid/view/View;->setId(I)V

    .line 14
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 17
    move-result-object p2

    .line 18
    invoke-static {p2}, Lo/Ha;->a0(Landroid/content/Context;)Z

    .line 21
    move-result p2

    .line 22
    if-eqz p2, :cond_0

    .line 24
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 27
    move-result-object p2

    .line 28
    check-cast p2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 30
    invoke-virtual {p2, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 33
    :cond_0
    return-object p1
.end method

.method public final b()Lo/c7;
    .locals 5

    .line 1
    iget v0, p0, Lo/b7;->i:I

    .line 3
    iget-object v1, p0, Lo/b7;->h:Lo/a7;

    .line 5
    iget-object v2, v1, Lo/a7;->a:Landroid/util/SparseArray;

    .line 7
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 10
    move-result-object v3

    .line 11
    check-cast v3, Lo/c7;

    .line 13
    if-nez v3, :cond_5

    .line 15
    const/4 v3, -0x1

    .line 16
    iget-object v4, v1, Lo/a7;->b:Lo/b7;

    .line 18
    if-eq v0, v3, :cond_4

    .line 20
    if-eqz v0, :cond_3

    .line 22
    const/4 v3, 0x1

    .line 23
    if-eq v0, v3, :cond_2

    .line 25
    const/4 v1, 0x2

    .line 26
    if-eq v0, v1, :cond_1

    .line 28
    const/4 v1, 0x3

    .line 29
    if-ne v0, v1, :cond_0

    .line 31
    new-instance v1, Lo/r6;

    .line 33
    invoke-direct {v1, v4}, Lo/r6;-><init>(Lo/b7;)V

    .line 36
    :goto_0
    move-object v3, v1

    .line 37
    goto :goto_1

    .line 38
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 40
    const-string v2, "Invalid end icon mode: "

    .line 42
    invoke-static {v0, v2}, Lo/jf;->a(ILjava/lang/String;)Ljava/lang/String;

    .line 45
    move-result-object v0

    .line 46
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 49
    throw v1

    .line 50
    :cond_1
    new-instance v1, Lo/a4;

    .line 52
    invoke-direct {v1, v4}, Lo/a4;-><init>(Lo/b7;)V

    .line 55
    goto :goto_0

    .line 56
    :cond_2
    new-instance v3, Lo/Dc;

    .line 58
    iget v1, v1, Lo/a7;->d:I

    .line 60
    invoke-direct {v3, v4, v1}, Lo/Dc;-><init>(Lo/b7;I)V

    .line 63
    goto :goto_1

    .line 64
    :cond_3
    new-instance v1, Lo/g5;

    .line 66
    const/4 v3, 0x1

    .line 67
    invoke-direct {v1, v4, v3}, Lo/g5;-><init>(Lo/b7;I)V

    .line 70
    goto :goto_0

    .line 71
    :cond_4
    new-instance v1, Lo/g5;

    .line 73
    const/4 v3, 0x0

    .line 74
    invoke-direct {v1, v4, v3}, Lo/g5;-><init>(Lo/b7;I)V

    .line 77
    goto :goto_0

    .line 78
    :goto_1
    invoke-virtual {v2, v0, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 81
    :cond_5
    return-object v3
.end method

.method public final c()I
    .locals 3

    .line 1
    invoke-virtual {p0}, Lo/b7;->d()Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 7
    invoke-virtual {p0}, Lo/b7;->e()Z

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    goto :goto_1

    .line 16
    :cond_1
    :goto_0
    iget-object v0, p0, Lo/b7;->g:Lcom/google/android/material/internal/CheckableImageButton;

    .line 18
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    .line 21
    move-result v1

    .line 22
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 28
    invoke-virtual {v0}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    .line 31
    move-result v0

    .line 32
    add-int/2addr v0, v1

    .line 33
    :goto_1
    sget-object v1, Lo/Dh;->a:Ljava/util/WeakHashMap;

    .line 35
    invoke-virtual {p0}, Landroid/view/View;->getPaddingEnd()I

    .line 38
    move-result v1

    .line 39
    iget-object v2, p0, Lo/b7;->q:Lo/j2;

    .line 41
    invoke-virtual {v2}, Landroid/view/View;->getPaddingEnd()I

    .line 44
    move-result v2

    .line 45
    add-int/2addr v2, v1

    .line 46
    add-int/2addr v2, v0

    .line 47
    return v2
.end method

.method public final d()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lo/b7;->b:Landroid/widget/FrameLayout;

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 9
    iget-object v0, p0, Lo/b7;->g:Lcom/google/android/material/internal/CheckableImageButton;

    .line 11
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 17
    const/4 v0, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    :goto_0
    return v0
.end method

.method public final e()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lo/b7;->c:Lcom/google/android/material/internal/CheckableImageButton;

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 9
    const/4 v0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    :goto_0
    return v0
.end method

.method public final f(Z)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lo/b7;->b()Lo/c7;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lo/c7;->k()Z

    .line 8
    move-result v1

    .line 9
    iget-object v2, p0, Lo/b7;->g:Lcom/google/android/material/internal/CheckableImageButton;

    .line 11
    const/4 v3, 0x1

    .line 12
    if-eqz v1, :cond_0

    .line 14
    iget-boolean v1, v2, Lcom/google/android/material/internal/CheckableImageButton;->d:Z

    .line 16
    invoke-virtual {v0}, Lo/c7;->l()Z

    .line 19
    move-result v4

    .line 20
    if-eq v1, v4, :cond_0

    .line 22
    xor-int/2addr v1, v3

    .line 23
    invoke-virtual {v2, v1}, Lcom/google/android/material/internal/CheckableImageButton;->setChecked(Z)V

    .line 26
    move v1, v3

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 v1, 0x0

    .line 29
    :goto_0
    instance-of v4, v0, Lo/r6;

    .line 31
    if-eqz v4, :cond_1

    .line 33
    invoke-virtual {v2}, Landroid/view/View;->isActivated()Z

    .line 36
    move-result v4

    .line 37
    invoke-virtual {v0}, Lo/c7;->j()Z

    .line 40
    move-result v0

    .line 41
    if-eq v4, v0, :cond_1

    .line 43
    xor-int/lit8 v0, v4, 0x1

    .line 45
    invoke-virtual {v2, v0}, Landroid/view/View;->setActivated(Z)V

    .line 48
    goto :goto_1

    .line 49
    :cond_1
    move v3, v1

    .line 50
    :goto_1
    if-nez p1, :cond_2

    .line 52
    if-eqz v3, :cond_3

    .line 54
    :cond_2
    iget-object p1, p0, Lo/b7;->k:Landroid/content/res/ColorStateList;

    .line 56
    iget-object v0, p0, Lo/b7;->a:Lcom/google/android/material/textfield/TextInputLayout;

    .line 58
    invoke-static {v0, v2, p1}, Lo/L1;->V(Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/internal/CheckableImageButton;Landroid/content/res/ColorStateList;)V

    .line 61
    :cond_3
    return-void
.end method

.method public final g(I)V
    .locals 8

    .line 1
    iget v0, p0, Lo/b7;->i:I

    .line 3
    if-ne v0, p1, :cond_0

    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {p0}, Lo/b7;->b()Lo/c7;

    .line 9
    move-result-object v0

    .line 10
    iget-object v1, p0, Lo/b7;->u:Lo/s0;

    .line 12
    iget-object v2, p0, Lo/b7;->t:Landroid/view/accessibility/AccessibilityManager;

    .line 14
    if-eqz v1, :cond_1

    .line 16
    if-eqz v2, :cond_1

    .line 18
    new-instance v3, Lo/s;

    .line 20
    invoke-direct {v3, v1}, Lo/s;-><init>(Lo/s0;)V

    .line 23
    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityManager;->removeTouchExplorationStateChangeListener(Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;)Z

    .line 26
    :cond_1
    const/4 v1, 0x0

    .line 27
    iput-object v1, p0, Lo/b7;->u:Lo/s0;

    .line 29
    invoke-virtual {v0}, Lo/c7;->s()V

    .line 32
    iput p1, p0, Lo/b7;->i:I

    .line 34
    iget-object v0, p0, Lo/b7;->j:Ljava/util/LinkedHashSet;

    .line 36
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 39
    move-result-object v0

    .line 40
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 43
    move-result v3

    .line 44
    if-nez v3, :cond_b

    .line 46
    const/4 v0, 0x1

    .line 47
    if-eqz p1, :cond_2

    .line 49
    move v3, v0

    .line 50
    goto :goto_0

    .line 51
    :cond_2
    const/4 v3, 0x0

    .line 52
    :goto_0
    invoke-virtual {p0, v3}, Lo/b7;->h(Z)V

    .line 55
    invoke-virtual {p0}, Lo/b7;->b()Lo/c7;

    .line 58
    move-result-object v3

    .line 59
    iget-object v4, p0, Lo/b7;->h:Lo/a7;

    .line 61
    iget v4, v4, Lo/a7;->c:I

    .line 63
    if-nez v4, :cond_3

    .line 65
    invoke-virtual {v3}, Lo/c7;->d()I

    .line 68
    move-result v4

    .line 69
    :cond_3
    if-eqz v4, :cond_4

    .line 71
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 74
    move-result-object v5

    .line 75
    invoke-static {v5, v4}, Lo/L1;->z(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 78
    move-result-object v4

    .line 79
    goto :goto_1

    .line 80
    :cond_4
    move-object v4, v1

    .line 81
    :goto_1
    iget-object v5, p0, Lo/b7;->g:Lcom/google/android/material/internal/CheckableImageButton;

    .line 83
    invoke-virtual {v5, v4}, Lo/C1;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 86
    iget-object v6, p0, Lo/b7;->a:Lcom/google/android/material/textfield/TextInputLayout;

    .line 88
    if-eqz v4, :cond_5

    .line 90
    iget-object v4, p0, Lo/b7;->k:Landroid/content/res/ColorStateList;

    .line 92
    iget-object v7, p0, Lo/b7;->l:Landroid/graphics/PorterDuff$Mode;

    .line 94
    invoke-static {v6, v5, v4, v7}, Lo/L1;->g(Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/internal/CheckableImageButton;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)V

    .line 97
    iget-object v4, p0, Lo/b7;->k:Landroid/content/res/ColorStateList;

    .line 99
    invoke-static {v6, v5, v4}, Lo/L1;->V(Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/internal/CheckableImageButton;Landroid/content/res/ColorStateList;)V

    .line 102
    :cond_5
    invoke-virtual {v3}, Lo/c7;->c()I

    .line 105
    move-result v4

    .line 106
    if-eqz v4, :cond_6

    .line 108
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 111
    move-result-object v1

    .line 112
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    .line 115
    move-result-object v1

    .line 116
    :cond_6
    invoke-virtual {v5}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    .line 119
    move-result-object v4

    .line 120
    if-eq v4, v1, :cond_7

    .line 122
    invoke-virtual {v5, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 125
    :cond_7
    invoke-virtual {v3}, Lo/c7;->k()Z

    .line 128
    move-result v1

    .line 129
    invoke-virtual {v5, v1}, Lcom/google/android/material/internal/CheckableImageButton;->setCheckable(Z)V

    .line 132
    invoke-virtual {v6}, Lcom/google/android/material/textfield/TextInputLayout;->getBoxBackgroundMode()I

    .line 135
    move-result v1

    .line 136
    invoke-virtual {v3, v1}, Lo/c7;->i(I)Z

    .line 139
    move-result v1

    .line 140
    if-eqz v1, :cond_a

    .line 142
    invoke-virtual {v3}, Lo/c7;->r()V

    .line 145
    invoke-virtual {v3}, Lo/c7;->h()Lo/s0;

    .line 148
    move-result-object p1

    .line 149
    iput-object p1, p0, Lo/b7;->u:Lo/s0;

    .line 151
    if-eqz p1, :cond_8

    .line 153
    if-eqz v2, :cond_8

    .line 155
    sget-object p1, Lo/Dh;->a:Ljava/util/WeakHashMap;

    .line 157
    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    .line 160
    move-result p1

    .line 161
    if-eqz p1, :cond_8

    .line 163
    iget-object p1, p0, Lo/b7;->u:Lo/s0;

    .line 165
    new-instance v1, Lo/s;

    .line 167
    invoke-direct {v1, p1}, Lo/s;-><init>(Lo/s0;)V

    .line 170
    invoke-virtual {v2, v1}, Landroid/view/accessibility/AccessibilityManager;->addTouchExplorationStateChangeListener(Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;)Z

    .line 173
    :cond_8
    invoke-virtual {v3}, Lo/c7;->f()Landroid/view/View$OnClickListener;

    .line 176
    move-result-object p1

    .line 177
    iget-object v1, p0, Lo/b7;->o:Landroid/view/View$OnLongClickListener;

    .line 179
    invoke-virtual {v5, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 182
    invoke-static {v5, v1}, Lo/L1;->Z(Lcom/google/android/material/internal/CheckableImageButton;Landroid/view/View$OnLongClickListener;)V

    .line 185
    iget-object p1, p0, Lo/b7;->s:Landroid/widget/EditText;

    .line 187
    if-eqz p1, :cond_9

    .line 189
    invoke-virtual {v3, p1}, Lo/c7;->m(Landroid/widget/EditText;)V

    .line 192
    invoke-virtual {p0, v3}, Lo/b7;->j(Lo/c7;)V

    .line 195
    :cond_9
    iget-object p1, p0, Lo/b7;->k:Landroid/content/res/ColorStateList;

    .line 197
    iget-object v1, p0, Lo/b7;->l:Landroid/graphics/PorterDuff$Mode;

    .line 199
    invoke-static {v6, v5, p1, v1}, Lo/L1;->g(Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/internal/CheckableImageButton;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)V

    .line 202
    invoke-virtual {p0, v0}, Lo/b7;->f(Z)V

    .line 205
    return-void

    .line 206
    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 208
    new-instance v1, Ljava/lang/StringBuilder;

    .line 210
    const-string v2, "The current box background mode "

    .line 212
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 215
    invoke-virtual {v6}, Lcom/google/android/material/textfield/TextInputLayout;->getBoxBackgroundMode()I

    .line 218
    move-result v2

    .line 219
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 222
    const-string v2, " is not supported by the end icon mode "

    .line 224
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 230
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 233
    move-result-object p1

    .line 234
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 237
    throw v0

    .line 238
    :cond_b
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 241
    move-result-object p1

    .line 242
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 245
    new-instance p1, Ljava/lang/ClassCastException;

    .line 247
    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    .line 250
    throw p1
.end method

.method public final h(Z)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lo/b7;->d()Z

    .line 4
    move-result v0

    .line 5
    if-eq v0, p1, :cond_1

    .line 7
    if-eqz p1, :cond_0

    .line 9
    const/4 p1, 0x0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/16 p1, 0x8

    .line 13
    :goto_0
    iget-object v0, p0, Lo/b7;->g:Lcom/google/android/material/internal/CheckableImageButton;

    .line 15
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 18
    invoke-virtual {p0}, Lo/b7;->k()V

    .line 21
    invoke-virtual {p0}, Lo/b7;->m()V

    .line 24
    iget-object p1, p0, Lo/b7;->a:Lcom/google/android/material/textfield/TextInputLayout;

    .line 26
    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputLayout;->q()Z

    .line 29
    :cond_1
    return-void
.end method

.method public final i(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lo/b7;->c:Lcom/google/android/material/internal/CheckableImageButton;

    .line 3
    invoke-virtual {v0, p1}, Lo/C1;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 6
    invoke-virtual {p0}, Lo/b7;->l()V

    .line 9
    iget-object p1, p0, Lo/b7;->d:Landroid/content/res/ColorStateList;

    .line 11
    iget-object v1, p0, Lo/b7;->e:Landroid/graphics/PorterDuff$Mode;

    .line 13
    iget-object v2, p0, Lo/b7;->a:Lcom/google/android/material/textfield/TextInputLayout;

    .line 15
    invoke-static {v2, v0, p1, v1}, Lo/L1;->g(Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/internal/CheckableImageButton;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)V

    .line 18
    return-void
.end method

.method public final j(Lo/c7;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lo/b7;->s:Landroid/widget/EditText;

    .line 3
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {p1}, Lo/c7;->e()Landroid/view/View$OnFocusChangeListener;

    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_1

    .line 12
    iget-object v0, p0, Lo/b7;->s:Landroid/widget/EditText;

    .line 14
    invoke-virtual {p1}, Lo/c7;->e()Landroid/view/View$OnFocusChangeListener;

    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 21
    :cond_1
    invoke-virtual {p1}, Lo/c7;->g()Landroid/view/View$OnFocusChangeListener;

    .line 24
    move-result-object v0

    .line 25
    if-eqz v0, :cond_2

    .line 27
    iget-object v0, p0, Lo/b7;->g:Lcom/google/android/material/internal/CheckableImageButton;

    .line 29
    invoke-virtual {p1}, Lo/c7;->g()Landroid/view/View$OnFocusChangeListener;

    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {v0, p1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 36
    :cond_2
    return-void
.end method

.method public final k()V
    .locals 4

    .line 1
    iget-object v0, p0, Lo/b7;->g:Lcom/google/android/material/internal/CheckableImageButton;

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 6
    move-result v0

    .line 7
    const/16 v1, 0x8

    .line 9
    const/4 v2, 0x0

    .line 10
    if-nez v0, :cond_0

    .line 12
    invoke-virtual {p0}, Lo/b7;->e()Z

    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_0

    .line 18
    move v0, v2

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    move v0, v1

    .line 21
    :goto_0
    iget-object v3, p0, Lo/b7;->b:Landroid/widget/FrameLayout;

    .line 23
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 26
    iget-object v0, p0, Lo/b7;->p:Ljava/lang/CharSequence;

    .line 28
    if-eqz v0, :cond_1

    .line 30
    iget-boolean v0, p0, Lo/b7;->r:Z

    .line 32
    if-nez v0, :cond_1

    .line 34
    move v0, v2

    .line 35
    goto :goto_1

    .line 36
    :cond_1
    move v0, v1

    .line 37
    :goto_1
    invoke-virtual {p0}, Lo/b7;->d()Z

    .line 40
    move-result v3

    .line 41
    if-nez v3, :cond_2

    .line 43
    invoke-virtual {p0}, Lo/b7;->e()Z

    .line 46
    move-result v3

    .line 47
    if-nez v3, :cond_2

    .line 49
    if-nez v0, :cond_3

    .line 51
    :cond_2
    move v1, v2

    .line 52
    :cond_3
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 55
    return-void
.end method

.method public final l()V
    .locals 3

    .line 1
    iget-object v0, p0, Lo/b7;->c:Lcom/google/android/material/internal/CheckableImageButton;

    .line 3
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 6
    move-result-object v1

    .line 7
    iget-object v2, p0, Lo/b7;->a:Lcom/google/android/material/textfield/TextInputLayout;

    .line 9
    if-eqz v1, :cond_0

    .line 11
    iget-object v1, v2, Lcom/google/android/material/textfield/TextInputLayout;->j:Lo/m9;

    .line 13
    iget-boolean v1, v1, Lo/m9;->q:Z

    .line 15
    if-eqz v1, :cond_0

    .line 17
    invoke-virtual {v2}, Lcom/google/android/material/textfield/TextInputLayout;->m()Z

    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_0

    .line 23
    const/4 v1, 0x0

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/16 v1, 0x8

    .line 27
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 30
    invoke-virtual {p0}, Lo/b7;->k()V

    .line 33
    invoke-virtual {p0}, Lo/b7;->m()V

    .line 36
    iget v0, p0, Lo/b7;->i:I

    .line 38
    if-eqz v0, :cond_1

    .line 40
    goto :goto_1

    .line 41
    :cond_1
    invoke-virtual {v2}, Lcom/google/android/material/textfield/TextInputLayout;->q()Z

    .line 44
    :goto_1
    return-void
.end method

.method public final m()V
    .locals 5

    .line 1
    iget-object v0, p0, Lo/b7;->a:Lcom/google/android/material/textfield/TextInputLayout;

    .line 3
    iget-object v1, v0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    .line 5
    if-nez v1, :cond_0

    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {p0}, Lo/b7;->d()Z

    .line 11
    move-result v1

    .line 12
    if-nez v1, :cond_2

    .line 14
    invoke-virtual {p0}, Lo/b7;->e()Z

    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_1

    .line 20
    goto :goto_0

    .line 21
    :cond_1
    iget-object v1, v0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    .line 23
    sget-object v2, Lo/Dh;->a:Ljava/util/WeakHashMap;

    .line 25
    invoke-virtual {v1}, Landroid/view/View;->getPaddingEnd()I

    .line 28
    move-result v1

    .line 29
    goto :goto_1

    .line 30
    :cond_2
    :goto_0
    const/4 v1, 0x0

    .line 31
    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 34
    move-result-object v2

    .line 35
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 38
    move-result-object v2

    .line 39
    const v3, 0x7f060240

    .line 42
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 45
    move-result v2

    .line 46
    iget-object v3, v0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    .line 48
    invoke-virtual {v3}, Landroid/view/View;->getPaddingTop()I

    .line 51
    move-result v3

    .line 52
    iget-object v0, v0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    .line 54
    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    .line 57
    move-result v0

    .line 58
    sget-object v4, Lo/Dh;->a:Ljava/util/WeakHashMap;

    .line 60
    iget-object v4, p0, Lo/b7;->q:Lo/j2;

    .line 62
    invoke-virtual {v4, v2, v3, v1, v0}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 65
    return-void
.end method

.method public final n()V
    .locals 4

    .line 1
    iget-object v0, p0, Lo/b7;->q:Lo/j2;

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 6
    move-result v1

    .line 7
    iget-object v2, p0, Lo/b7;->p:Ljava/lang/CharSequence;

    .line 9
    const/4 v3, 0x0

    .line 10
    if-eqz v2, :cond_0

    .line 12
    iget-boolean v2, p0, Lo/b7;->r:Z

    .line 14
    if-nez v2, :cond_0

    .line 16
    move v2, v3

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/16 v2, 0x8

    .line 20
    :goto_0
    if-eq v1, v2, :cond_2

    .line 22
    invoke-virtual {p0}, Lo/b7;->b()Lo/c7;

    .line 25
    move-result-object v1

    .line 26
    if-nez v2, :cond_1

    .line 28
    const/4 v3, 0x1

    .line 29
    :cond_1
    invoke-virtual {v1, v3}, Lo/c7;->p(Z)V

    .line 32
    :cond_2
    invoke-virtual {p0}, Lo/b7;->k()V

    .line 35
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 38
    iget-object v0, p0, Lo/b7;->a:Lcom/google/android/material/textfield/TextInputLayout;

    .line 40
    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->q()Z

    .line 43
    return-void
.end method
