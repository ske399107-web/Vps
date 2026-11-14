.class public final Lo/g7;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field public final A:Landroid/graphics/RectF;

.field public final B:Landroid/graphics/Path;

.field public final C:Landroid/graphics/Paint;

.field public final D:Landroid/graphics/Paint;

.field public final E:Landroid/graphics/Paint;

.field public final F:Landroid/graphics/RectF;

.field public final G:Landroid/graphics/Path;

.field public H:F

.field public final I:Lo/e7;

.field public final a:F

.field public volatile b:Z

.field public volatile c:I

.field public volatile d:Z

.field public volatile e:Z

.field public f:Z

.field public g:J

.field public h:F

.field public i:F

.field public j:F

.field public final k:Ljava/util/HashMap;

.field public final l:Ljava/util/HashMap;

.field public final m:Ljava/util/HashMap;

.field public final n:Landroid/graphics/Paint;

.field public final o:Landroid/graphics/Paint;

.field public final p:Landroid/graphics/Paint;

.field public final q:Landroid/graphics/Paint;

.field public final r:Landroid/graphics/Paint;

.field public final s:Landroid/graphics/Paint;

.field public final t:Landroid/graphics/Paint;

.field public final u:Landroid/graphics/Paint;

.field public final v:Landroid/graphics/Paint;

.field public final w:Landroid/graphics/Paint;

.field public final x:Landroid/graphics/Paint;

.field public final y:Landroid/graphics/Paint;

.field public final z:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 14

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 11
    move-result-object v0

    .line 12
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 14
    iput v0, p0, Lo/g7;->a:F

    .line 16
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 19
    move-result-object v1

    .line 20
    const-string v2, "getApplicationContext(...)"

    .line 22
    invoke-static {v1, v2}, Lo/x9;->n(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    const-string v3, "proxy_read"

    .line 27
    const/4 v4, 0x0

    .line 28
    invoke-virtual {v1, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 31
    move-result-object v1

    .line 32
    const-string v5, "radar_size"

    .line 34
    const/16 v6, 0x64

    .line 36
    invoke-interface {v1, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 39
    move-result v1

    .line 40
    const/16 v5, 0x46

    .line 42
    const/16 v6, 0xb4

    .line 44
    invoke-static {v1, v5, v6}, Lo/Ha;->l(III)I

    .line 47
    move-result v1

    .line 48
    iput v1, p0, Lo/g7;->c:I

    .line 50
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 53
    move-result-object v1

    .line 54
    invoke-static {v1, v2}, Lo/x9;->n(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    invoke-virtual {v1, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 60
    move-result-object v1

    .line 61
    const-string v5, "radar_on"

    .line 63
    const/4 v6, 0x1

    .line 64
    invoke-interface {v1, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 67
    move-result v1

    .line 68
    iput-boolean v1, p0, Lo/g7;->d:Z

    .line 70
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 73
    move-result-object p1

    .line 74
    invoke-static {p1, v2}, Lo/x9;->n(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    invoke-virtual {p1, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 80
    move-result-object p1

    .line 81
    const-string v1, "esp_on"

    .line 83
    invoke-interface {p1, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 86
    move-result p1

    .line 87
    iput-boolean p1, p0, Lo/g7;->e:Z

    .line 89
    const/high16 p1, 0x7fc00000    # Float.NaN

    .line 91
    iput p1, p0, Lo/g7;->h:F

    .line 93
    iput p1, p0, Lo/g7;->i:F

    .line 95
    iput p1, p0, Lo/g7;->j:F

    .line 97
    new-instance v1, Ljava/util/HashMap;

    .line 99
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 102
    iput-object v1, p0, Lo/g7;->k:Ljava/util/HashMap;

    .line 104
    new-instance v1, Ljava/util/HashMap;

    .line 106
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 109
    iput-object v1, p0, Lo/g7;->l:Ljava/util/HashMap;

    .line 111
    new-instance v1, Ljava/util/HashMap;

    .line 113
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 116
    iput-object v1, p0, Lo/g7;->m:Ljava/util/HashMap;

    .line 118
    new-instance v1, Landroid/graphics/Paint;

    .line 120
    invoke-direct {v1, v6}, Landroid/graphics/Paint;-><init>(I)V

    .line 123
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 125
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 128
    const v3, -0x55f7efe8

    .line 131
    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 134
    iput-object v1, p0, Lo/g7;->n:Landroid/graphics/Paint;

    .line 136
    new-instance v1, Landroid/graphics/Paint;

    .line 138
    invoke-direct {v1, v6}, Landroid/graphics/Paint;-><init>(I)V

    .line 141
    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 143
    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 146
    const v5, 0x3fa66666    # 1.3f

    .line 149
    mul-float/2addr v5, v0

    .line 150
    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 153
    const v5, -0x44a3003c

    .line 156
    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 159
    iput-object v1, p0, Lo/g7;->o:Landroid/graphics/Paint;

    .line 161
    new-instance v1, Landroid/graphics/Paint;

    .line 163
    invoke-direct {v1, v6}, Landroid/graphics/Paint;-><init>(I)V

    .line 166
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 169
    const/4 v5, -0x1

    .line 170
    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 173
    iput-object v1, p0, Lo/g7;->p:Landroid/graphics/Paint;

    .line 175
    new-instance v1, Landroid/graphics/Paint;

    .line 177
    invoke-direct {v1, v6}, Landroid/graphics/Paint;-><init>(I)V

    .line 180
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 183
    const v5, -0xb5b6

    .line 186
    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 189
    iput-object v1, p0, Lo/g7;->q:Landroid/graphics/Paint;

    .line 191
    new-instance v1, Landroid/graphics/Paint;

    .line 193
    invoke-direct {v1, v6}, Landroid/graphics/Paint;-><init>(I)V

    .line 196
    const/16 v5, -0xe8a

    .line 198
    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 201
    const/high16 v7, 0x41400000    # 12.0f

    .line 203
    mul-float/2addr v7, v0

    .line 204
    invoke-virtual {v1, v7}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 207
    sget-object v7, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    .line 209
    invoke-virtual {v1, v7}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 212
    const/high16 v8, 0x40400000    # 3.0f

    .line 214
    mul-float/2addr v8, v0

    .line 215
    const/4 v9, 0x0

    .line 216
    const/high16 v10, 0x3f800000    # 1.0f

    .line 218
    const/high16 v11, -0x1000000

    .line 220
    invoke-virtual {v1, v8, v9, v10, v11}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 223
    iput-object v1, p0, Lo/g7;->r:Landroid/graphics/Paint;

    .line 225
    new-instance v1, Landroid/graphics/Paint;

    .line 227
    invoke-direct {v1, v6}, Landroid/graphics/Paint;-><init>(I)V

    .line 230
    const v12, -0x17000a

    .line 233
    invoke-virtual {v1, v12}, Landroid/graphics/Paint;->setColor(I)V

    .line 236
    const/high16 v12, 0x41100000    # 9.0f

    .line 238
    mul-float/2addr v12, v0

    .line 239
    invoke-virtual {v1, v12}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 242
    invoke-virtual {v1, v7}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 245
    sget-object v12, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    .line 247
    invoke-virtual {v1, v12}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 250
    const/high16 v13, 0x40000000    # 2.0f

    .line 252
    mul-float/2addr v13, v0

    .line 253
    invoke-virtual {v1, v13, v9, v10, v11}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 256
    iput-object v1, p0, Lo/g7;->s:Landroid/graphics/Paint;

    .line 258
    new-instance v1, Landroid/graphics/Paint;

    .line 260
    invoke-direct {v1, v6}, Landroid/graphics/Paint;-><init>(I)V

    .line 263
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 266
    const v13, 0x445cffc4

    .line 269
    invoke-virtual {v1, v13}, Landroid/graphics/Paint;->setColor(I)V

    .line 272
    iput-object v1, p0, Lo/g7;->t:Landroid/graphics/Paint;

    .line 274
    new-instance v1, Landroid/graphics/Paint;

    .line 276
    invoke-direct {v1, v6}, Landroid/graphics/Paint;-><init>(I)V

    .line 279
    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 282
    const v13, 0x3f8ccccd    # 1.1f

    .line 285
    mul-float/2addr v13, v0

    .line 286
    invoke-virtual {v1, v13}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 289
    const v13, -0x77a3003c

    .line 292
    invoke-virtual {v1, v13}, Landroid/graphics/Paint;->setColor(I)V

    .line 295
    iput-object v1, p0, Lo/g7;->u:Landroid/graphics/Paint;

    .line 297
    new-instance v1, Landroid/graphics/Paint;

    .line 299
    invoke-direct {v1, v6}, Landroid/graphics/Paint;-><init>(I)V

    .line 302
    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 305
    const v13, 0x3fcccccd    # 1.6f

    .line 308
    mul-float/2addr v13, v0

    .line 309
    invoke-virtual {v1, v13}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 312
    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 315
    iput-object v1, p0, Lo/g7;->v:Landroid/graphics/Paint;

    .line 317
    new-instance v1, Landroid/graphics/Paint;

    .line 319
    invoke-direct {v1, v6}, Landroid/graphics/Paint;-><init>(I)V

    .line 322
    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 325
    const v5, 0x3f933333    # 1.15f

    .line 328
    mul-float/2addr v5, v0

    .line 329
    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 332
    const v5, -0x3300b5b6

    .line 335
    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 338
    iput-object v1, p0, Lo/g7;->w:Landroid/graphics/Paint;

    .line 340
    new-instance v1, Landroid/graphics/Paint;

    .line 342
    invoke-direct {v1, v6}, Landroid/graphics/Paint;-><init>(I)V

    .line 345
    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 348
    const v3, 0x3faccccd    # 1.35f

    .line 351
    mul-float/2addr v3, v0

    .line 352
    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 355
    const v3, -0x1100b5b6

    .line 358
    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 361
    iput-object v1, p0, Lo/g7;->x:Landroid/graphics/Paint;

    .line 363
    new-instance v1, Landroid/graphics/Paint;

    .line 365
    invoke-direct {v1, v6}, Landroid/graphics/Paint;-><init>(I)V

    .line 368
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 371
    const v3, 0x22ff4a4a

    .line 374
    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 377
    iput-object v1, p0, Lo/g7;->y:Landroid/graphics/Paint;

    .line 379
    new-instance v1, Landroid/graphics/Paint;

    .line 381
    invoke-direct {v1, v6}, Landroid/graphics/Paint;-><init>(I)V

    .line 384
    const/16 v3, -0x1f7e

    .line 386
    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 389
    const/high16 v3, 0x41200000    # 10.0f

    .line 391
    mul-float/2addr v3, v0

    .line 392
    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 395
    invoke-virtual {v1, v7}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 398
    invoke-virtual {v1, v12}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 401
    const/high16 v3, 0x40200000    # 2.5f

    .line 403
    mul-float/2addr v3, v0

    .line 404
    invoke-virtual {v1, v3, v9, v10, v11}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 407
    iput-object v1, p0, Lo/g7;->z:Landroid/graphics/Paint;

    .line 409
    new-instance v1, Landroid/graphics/RectF;

    .line 411
    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    .line 414
    iput-object v1, p0, Lo/g7;->A:Landroid/graphics/RectF;

    .line 416
    new-instance v1, Landroid/graphics/Path;

    .line 418
    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 421
    iput-object v1, p0, Lo/g7;->B:Landroid/graphics/Path;

    .line 423
    new-instance v1, Landroid/graphics/Paint;

    .line 425
    invoke-direct {v1, v6}, Landroid/graphics/Paint;-><init>(I)V

    .line 428
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 431
    const v3, -0x33ebf7f8    # -3.8805536E7f

    .line 434
    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 437
    iput-object v1, p0, Lo/g7;->C:Landroid/graphics/Paint;

    .line 439
    new-instance v1, Landroid/graphics/Paint;

    .line 441
    invoke-direct {v1, v6}, Landroid/graphics/Paint;-><init>(I)V

    .line 444
    const v3, -0xc4d0

    .line 447
    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 450
    const/high16 v5, 0x41500000    # 13.0f

    .line 452
    mul-float/2addr v0, v5

    .line 453
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 456
    sget-object v0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    .line 458
    invoke-static {v0, v6}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    .line 461
    move-result-object v0

    .line 462
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 465
    invoke-virtual {v1, v8, v9, v10, v11}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 468
    iput-object v1, p0, Lo/g7;->D:Landroid/graphics/Paint;

    .line 470
    new-instance v0, Landroid/graphics/Paint;

    .line 472
    invoke-direct {v0, v6}, Landroid/graphics/Paint;-><init>(I)V

    .line 475
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 478
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 481
    iput-object v0, p0, Lo/g7;->E:Landroid/graphics/Paint;

    .line 483
    new-instance v0, Landroid/graphics/RectF;

    .line 485
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 488
    iput-object v0, p0, Lo/g7;->F:Landroid/graphics/RectF;

    .line 490
    new-instance v0, Landroid/graphics/Path;

    .line 492
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 495
    iput-object v0, p0, Lo/g7;->G:Landroid/graphics/Path;

    .line 497
    iput p1, p0, Lo/g7;->H:F

    .line 499
    new-instance p1, Lo/e7;

    .line 501
    invoke-direct {p1, p0}, Lo/e7;-><init>(Lo/g7;)V

    .line 504
    iput-object p1, p0, Lo/g7;->I:Lo/e7;

    .line 506
    invoke-virtual {p0, v4}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 509
    const/4 p1, 0x2

    .line 510
    const/4 v0, 0x0

    .line 511
    invoke-virtual {p0, p1, v0}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 514
    invoke-virtual {p0, v4}, Landroid/view/View;->setClickable(Z)V

    .line 517
    invoke-virtual {p0, v4}, Landroid/view/View;->setFocusable(Z)V

    .line 520
    invoke-virtual {p0, p1}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 523
    return-void
.end method

.method public static a(FFFFFFFFFFFFFFFFFF)[F
    .locals 7

    sub-float v0, p0, p3

    sub-float v1, p1, p4

    sub-float v2, p2, p5

    mul-float v3, v0, p11

    mul-float v4, v1, p12

    add-float/2addr v4, v3

    mul-float v3, v2, p13

    add-float/2addr v3, v4

    const/high16 v4, 0x3e800000    # 0.25f

    cmpg-float v4, v3, v4

    const/4 v5, 0x0

    if-gez v4, :cond_0

    return-object v5

    :cond_0
    mul-float v4, v0, p6

    const/4 v6, 0x0

    mul-float/2addr v6, v1

    add-float/2addr v6, v4

    mul-float v4, v2, p7

    add-float/2addr v4, v6

    mul-float/2addr v0, p8

    mul-float v1, v1, p9

    add-float/2addr v1, v0

    mul-float v2, v2, p10

    add-float/2addr v2, v1

    mul-float v0, v3, p14

    div-float/2addr v4, v0

    mul-float v3, v3, p15

    div-float/2addr v2, v3

    const/high16 v0, -0x3fe00000    # -2.5f

    cmpg-float v1, v4, v0

    if-ltz v1, :cond_2

    const/high16 v1, 0x40200000    # 2.5f

    cmpl-float v3, v4, v1

    if-gtz v3, :cond_2

    cmpg-float v0, v2, v0

    if-ltz v0, :cond_2

    cmpl-float v0, v2, v1

    if-lez v0, :cond_1

    goto :goto_0

    :cond_1
    const/high16 v0, 0x3f000000    # 0.5f

    mul-float/2addr v4, v0

    add-float/2addr v4, v0

    mul-float v4, v4, p16

    mul-float/2addr v2, v0

    sub-float/2addr v0, v2

    mul-float v0, v0, p17

    const/4 v1, 0x2

    .line 1
    new-array v1, v1, [F

    const/4 v2, 0x0

    aput v4, v1, v2

    const/4 v2, 0x1

    aput v0, v1, v2

    return-object v1

    :cond_2
    :goto_0
    return-object v5
.end method


# virtual methods
.method public final b()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lo/g7;->f:Z

    .line 3
    if-nez v0, :cond_1

    .line 5
    iget-boolean v0, p0, Lo/g7;->b:Z

    .line 7
    if-nez v0, :cond_0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x1

    .line 11
    iput-boolean v0, p0, Lo/g7;->f:Z

    .line 13
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    .line 16
    move-result-object v0

    .line 17
    iget-object v1, p0, Lo/g7;->I:Lo/e7;

    .line 19
    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 22
    :cond_1
    :goto_0
    return-void
.end method

.method public final dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    const-string v0, "event"

    invoke-static {p1, v0}, Lo/x9;->o(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public final onAttachedToWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lo/g7;->b:Z

    .line 7
    invoke-virtual {p0}, Lo/g7;->b()V

    .line 10
    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lo/g7;->b:Z

    .line 4
    iput-boolean v0, p0, Lo/g7;->f:Z

    .line 6
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    .line 9
    move-result-object v0

    .line 10
    iget-object v1, p0, Lo/g7;->I:Lo/e7;

    .line 12
    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 15
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 18
    return-void
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 61

    .line 1
    move-object/from16 v0, p0

    .line 3
    move-object/from16 v7, p1

    .line 5
    const/4 v1, 0x3

    .line 6
    const/4 v9, 0x1

    .line 7
    const-string v2, "canvas"

    .line 9
    invoke-static {v7, v2}, Lo/x9;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    .line 14
    const/4 v10, 0x0

    .line 15
    invoke-virtual {v7, v10, v2}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 18
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    .line 21
    move-result v2

    .line 22
    int-to-float v2, v2

    .line 23
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    .line 26
    move-result v3

    .line 27
    int-to-float v3, v3

    .line 28
    const/high16 v11, 0x41000000    # 8.0f

    .line 30
    cmpg-float v2, v2, v11

    .line 32
    if-ltz v2, :cond_0

    .line 34
    cmpg-float v2, v3, v11

    .line 36
    if-gez v2, :cond_1

    .line 38
    :cond_0
    move-object v9, v0

    .line 39
    goto/16 :goto_2e

    .line 41
    :cond_1
    iget-boolean v2, v0, Lo/g7;->d:Z

    .line 43
    if-nez v2, :cond_2

    .line 45
    iget-boolean v2, v0, Lo/g7;->e:Z

    .line 47
    if-nez v2, :cond_2

    .line 49
    return-void

    .line 50
    :cond_2
    iget-boolean v2, v0, Lo/g7;->e:Z

    .line 52
    const-string v15, "m"

    .line 54
    const/high16 v16, 0x42400000    # 48.0f

    .line 56
    const/high16 v17, 0x41100000    # 9.0f

    .line 58
    const v18, 0x3ed70a3d    # 0.42f

    .line 61
    const/high16 v19, 0x3f800000    # 1.0f

    .line 63
    const/high16 v20, 0x40c00000    # 6.0f

    .line 65
    const/high16 v21, 0x3f000000    # 0.5f

    .line 67
    const-string v4, "next(...)"

    .line 69
    const-wide/16 v22, 0xc80

    .line 71
    const/16 v24, 0x0

    .line 73
    if-eqz v2, :cond_1c

    .line 75
    sget-object v2, Lo/i9;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 77
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 80
    move-result-wide v2

    .line 81
    new-instance v14, Ljava/util/ArrayList;

    .line 83
    sget-object v25, Lo/i9;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 85
    invoke-virtual/range {v25 .. v25}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    .line 88
    move-result v13

    .line 89
    invoke-direct {v14, v13}, Ljava/util/ArrayList;-><init>(I)V

    .line 92
    invoke-virtual/range {v25 .. v25}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    .line 95
    move-result-object v13

    .line 96
    invoke-interface {v13}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 99
    move-result-object v13

    .line 100
    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    .line 103
    move-result v25

    .line 104
    if-eqz v25, :cond_4

    .line 106
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 109
    move-result-object v6

    .line 110
    invoke-static {v6, v4}, Lo/x9;->n(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    check-cast v6, Lo/d7;

    .line 115
    move-object/from16 v27, v13

    .line 117
    iget-wide v12, v6, Lo/d7;->h:J

    .line 119
    sub-long v12, v2, v12

    .line 121
    cmp-long v12, v12, v22

    .line 123
    if-gtz v12, :cond_3

    .line 125
    invoke-static {v6, v2, v3}, Lo/i9;->b(Lo/d7;J)Lo/d7;

    .line 128
    move-result-object v6

    .line 129
    invoke-virtual {v14, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 132
    :cond_3
    move-object/from16 v13, v27

    .line 134
    goto :goto_0

    .line 135
    :cond_4
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    .line 138
    move-result v2

    .line 139
    if-le v2, v9, :cond_5

    .line 141
    new-instance v2, Lo/c5;

    .line 143
    invoke-direct {v2, v1}, Lo/c5;-><init>(I)V

    .line 146
    invoke-static {v14, v2}, Lo/j4;->j0(Ljava/util/ArrayList;Ljava/util/Comparator;)V

    .line 149
    :cond_5
    sget-object v2, Lo/i9;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 151
    sget-object v2, Lo/i9;->c:Lo/d7;

    .line 153
    if-nez v2, :cond_6

    .line 155
    :goto_1
    move-object/from16 v12, v24

    .line 157
    goto :goto_2

    .line 158
    :cond_6
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 161
    move-result-wide v12

    .line 162
    iget-wide v5, v2, Lo/d7;->h:J

    .line 164
    sub-long v5, v12, v5

    .line 166
    cmp-long v3, v5, v22

    .line 168
    if-lez v3, :cond_7

    .line 170
    goto :goto_1

    .line 171
    :cond_7
    invoke-static {v2, v12, v13}, Lo/i9;->b(Lo/d7;J)Lo/d7;

    .line 174
    move-result-object v2

    .line 175
    move-object v12, v2

    .line 176
    :goto_2
    if-eqz v12, :cond_1c

    .line 178
    invoke-virtual {v14}, Ljava/util/ArrayList;->isEmpty()Z

    .line 181
    move-result v2

    .line 182
    if-eqz v2, :cond_8

    .line 184
    goto/16 :goto_c

    .line 186
    :cond_8
    sget v2, Lo/i9;->f:F

    .line 188
    sget v3, Lo/i9;->g:F

    .line 190
    sget v5, Lo/i9;->h:F

    .line 192
    invoke-static {v2}, Ljava/lang/Float;->isInfinite(F)Z

    .line 195
    move-result v6

    .line 196
    const v13, 0x3df5c28f    # 0.12f

    .line 199
    if-nez v6, :cond_c

    .line 201
    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    .line 204
    move-result v6

    .line 205
    if-nez v6, :cond_c

    .line 207
    invoke-static {v3}, Ljava/lang/Float;->isInfinite(F)Z

    .line 210
    move-result v6

    .line 211
    if-nez v6, :cond_c

    .line 213
    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    .line 216
    move-result v6

    .line 217
    if-nez v6, :cond_c

    .line 219
    invoke-static {v5}, Ljava/lang/Float;->isInfinite(F)Z

    .line 222
    move-result v6

    .line 223
    if-nez v6, :cond_c

    .line 225
    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    .line 228
    move-result v6

    .line 229
    if-nez v6, :cond_c

    .line 231
    iget v6, v0, Lo/g7;->h:F

    .line 233
    invoke-static {v6}, Ljava/lang/Float;->isInfinite(F)Z

    .line 236
    move-result v28

    .line 237
    if-nez v28, :cond_a

    .line 239
    invoke-static {v6}, Ljava/lang/Float;->isNaN(F)Z

    .line 242
    move-result v6

    .line 243
    if-nez v6, :cond_a

    .line 245
    iget v6, v0, Lo/g7;->h:F

    .line 247
    sub-float v6, v2, v6

    .line 249
    mul-float/2addr v6, v6

    .line 250
    iget v11, v0, Lo/g7;->i:F

    .line 252
    sub-float v11, v3, v11

    .line 254
    mul-float/2addr v11, v11

    .line 255
    add-float/2addr v11, v6

    .line 256
    iget v6, v0, Lo/g7;->j:F

    .line 258
    sub-float v6, v5, v6

    .line 260
    mul-float/2addr v6, v6

    .line 261
    add-float/2addr v6, v11

    .line 262
    float-to-double v8, v6

    .line 263
    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    .line 266
    move-result-wide v8

    .line 267
    double-to-float v6, v8

    .line 268
    mul-float v6, v6, v17

    .line 270
    add-float v6, v6, v18

    .line 272
    cmpl-float v8, v6, v19

    .line 274
    if-lez v8, :cond_9

    .line 276
    move/from16 v6, v19

    .line 278
    :cond_9
    iget v8, v0, Lo/g7;->h:F

    .line 280
    sub-float/2addr v2, v8

    .line 281
    mul-float/2addr v2, v6

    .line 282
    add-float/2addr v2, v8

    .line 283
    iput v2, v0, Lo/g7;->h:F

    .line 285
    iget v8, v0, Lo/g7;->i:F

    .line 287
    sub-float/2addr v3, v8

    .line 288
    mul-float/2addr v3, v6

    .line 289
    add-float/2addr v3, v8

    .line 290
    iput v3, v0, Lo/g7;->i:F

    .line 292
    iget v8, v0, Lo/g7;->j:F

    .line 294
    sub-float/2addr v5, v8

    .line 295
    mul-float/2addr v5, v6

    .line 296
    add-float/2addr v5, v8

    .line 297
    iput v5, v0, Lo/g7;->j:F

    .line 299
    mul-float/2addr v2, v2

    .line 300
    mul-float/2addr v3, v3

    .line 301
    add-float/2addr v3, v2

    .line 302
    mul-float/2addr v5, v5

    .line 303
    add-float/2addr v5, v3

    .line 304
    float-to-double v2, v5

    .line 305
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    .line 308
    move-result-wide v2

    .line 309
    double-to-float v2, v2

    .line 310
    cmpl-float v3, v2, v13

    .line 312
    if-ltz v3, :cond_b

    .line 314
    iget v3, v0, Lo/g7;->h:F

    .line 316
    div-float/2addr v3, v2

    .line 317
    iput v3, v0, Lo/g7;->h:F

    .line 319
    iget v3, v0, Lo/g7;->i:F

    .line 321
    div-float/2addr v3, v2

    .line 322
    iput v3, v0, Lo/g7;->i:F

    .line 324
    iget v3, v0, Lo/g7;->j:F

    .line 326
    div-float/2addr v3, v2

    .line 327
    iput v3, v0, Lo/g7;->j:F

    .line 329
    goto :goto_3

    .line 330
    :cond_a
    iput v2, v0, Lo/g7;->h:F

    .line 332
    iput v3, v0, Lo/g7;->i:F

    .line 334
    iput v5, v0, Lo/g7;->j:F

    .line 336
    :cond_b
    :goto_3
    iget v2, v0, Lo/g7;->h:F

    .line 338
    iget v3, v0, Lo/g7;->i:F

    .line 340
    iget v5, v0, Lo/g7;->j:F

    .line 342
    new-array v1, v1, [F

    .line 344
    aput v2, v1, v10

    .line 346
    const/4 v2, 0x1

    .line 347
    aput v3, v1, v2

    .line 349
    const/4 v2, 0x2

    .line 350
    aput v5, v1, v2

    .line 352
    goto :goto_4

    .line 353
    :cond_c
    move-object/from16 v1, v24

    .line 355
    :goto_4
    if-nez v1, :cond_d

    .line 357
    goto/16 :goto_c

    .line 359
    :cond_d
    aget v8, v1, v10

    .line 361
    const/4 v2, 0x1

    .line 362
    aget v9, v1, v2

    .line 364
    const/4 v2, 0x2

    .line 365
    aget v6, v1, v2

    .line 367
    float-to-double v1, v8

    .line 368
    float-to-double v10, v6

    .line 369
    invoke-static {v1, v2, v10, v11}, Ljava/lang/Math;->hypot(DD)D

    .line 372
    move-result-wide v1

    .line 373
    double-to-float v1, v1

    .line 374
    sget v2, Lo/i9;->d:F

    .line 376
    cmpl-float v3, v1, v13

    .line 378
    if-ltz v3, :cond_e

    .line 380
    div-float v2, v8, v1

    .line 382
    div-float v1, v6, v1

    .line 384
    move v10, v1

    .line 385
    goto :goto_5

    .line 386
    :cond_e
    invoke-static {v2}, Ljava/lang/Float;->isInfinite(F)Z

    .line 389
    move-result v1

    .line 390
    if-nez v1, :cond_1c

    .line 392
    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    .line 395
    move-result v1

    .line 396
    if-nez v1, :cond_1c

    .line 398
    float-to-double v1, v2

    .line 399
    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    .line 402
    move-result-wide v10

    .line 403
    double-to-float v3, v10

    .line 404
    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    .line 407
    move-result-wide v1

    .line 408
    double-to-float v1, v1

    .line 409
    move v10, v1

    .line 410
    move v2, v3

    .line 411
    :goto_5
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    .line 414
    move-result v1

    .line 415
    int-to-float v11, v1

    .line 416
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    .line 419
    move-result v1

    .line 420
    int-to-float v13, v1

    .line 421
    const/high16 v1, 0x41000000    # 8.0f

    .line 423
    cmpg-float v3, v11, v1

    .line 425
    if-ltz v3, :cond_1c

    .line 427
    cmpg-float v3, v13, v1

    .line 429
    if-gez v3, :cond_f

    .line 431
    goto/16 :goto_c

    .line 433
    :cond_f
    div-float v1, v11, v13

    .line 435
    const-wide v29, 0x3fd9b0f580000000L    # 0.40142571926116943

    .line 440
    move-object v5, v4

    .line 441
    invoke-static/range {v29 .. v30}, Ljava/lang/Math;->tan(D)D

    .line 444
    move-result-wide v3

    .line 445
    double-to-float v4, v3

    .line 446
    mul-float v47, v4, v1

    .line 448
    neg-float v3, v2

    .line 449
    mul-float v1, v9, v3

    .line 451
    const/16 v26, 0x0

    .line 453
    mul-float v29, v6, v26

    .line 455
    sub-float v1, v1, v29

    .line 457
    mul-float v29, v6, v10

    .line 459
    mul-float v30, v8, v3

    .line 461
    sub-float v29, v29, v30

    .line 463
    mul-float v30, v8, v26

    .line 465
    mul-float v31, v9, v10

    .line 467
    sub-float v30, v30, v31

    .line 469
    mul-float v31, v1, v1

    .line 471
    mul-float v32, v29, v29

    .line 473
    add-float v32, v32, v31

    .line 475
    mul-float v31, v30, v30

    .line 477
    move-object/from16 v48, v5

    .line 479
    add-float v5, v31, v32

    .line 481
    move/from16 v49, v4

    .line 483
    float-to-double v4, v5

    .line 484
    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    .line 487
    move-result-wide v4

    .line 488
    double-to-float v4, v4

    .line 489
    const v5, 0x38d1b717    # 1.0E-4f

    .line 492
    cmpg-float v5, v4, v5

    .line 494
    if-gez v5, :cond_11

    .line 496
    :cond_10
    move-object v9, v7

    .line 497
    move-object v1, v15

    .line 498
    move-object/from16 v7, v48

    .line 500
    const/high16 v10, 0x43340000    # 180.0f

    .line 502
    const/16 v26, 0x0

    .line 504
    goto/16 :goto_d

    .line 506
    :cond_11
    div-float v50, v1, v4

    .line 508
    div-float v51, v29, v4

    .line 510
    div-float v52, v30, v4

    .line 512
    iget v1, v12, Lo/d7;->b:F

    .line 514
    const v4, 0x40566666    # 3.35f

    .line 517
    mul-float/2addr v2, v4

    .line 518
    sub-float v53, v1, v2

    .line 520
    iget v1, v12, Lo/d7;->c:F

    .line 522
    const v2, 0x400b851f    # 2.18f

    .line 525
    add-float/2addr v1, v2

    .line 526
    const v2, 0x3f96147a

    .line 529
    mul-float/2addr v2, v9

    .line 530
    sub-float v54, v1, v2

    .line 532
    iget v1, v12, Lo/d7;->d:F

    .line 534
    mul-float/2addr v4, v10

    .line 535
    sub-float v55, v1, v4

    .line 537
    mul-float v56, v11, v21

    .line 539
    const/high16 v1, 0x41200000    # 10.0f

    .line 541
    iget v2, v0, Lo/g7;->a:F

    .line 543
    mul-float v57, v2, v1

    .line 545
    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 548
    move-result-object v14

    .line 549
    :goto_6
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    .line 552
    move-result v1

    .line 553
    if-eqz v1, :cond_10

    .line 555
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 558
    move-result-object v1

    .line 559
    move-object v5, v1

    .line 560
    check-cast v5, Lo/d7;

    .line 562
    iget v1, v5, Lo/d7;->b:F

    .line 564
    iget v2, v12, Lo/d7;->b:F

    .line 566
    sub-float/2addr v1, v2

    .line 567
    float-to-double v1, v1

    .line 568
    iget v4, v5, Lo/d7;->d:F

    .line 570
    move-object/from16 v58, v14

    .line 572
    iget v14, v12, Lo/d7;->d:F

    .line 574
    sub-float/2addr v4, v14

    .line 575
    move-object/from16 v59, v15

    .line 577
    float-to-double v14, v4

    .line 578
    invoke-static {v1, v2, v14, v15}, Ljava/lang/Math;->hypot(DD)D

    .line 581
    move-result-wide v1

    .line 582
    double-to-float v14, v1

    .line 583
    const v1, 0x3f4ccccd    # 0.8f

    .line 586
    cmpg-float v1, v14, v1

    .line 588
    if-ltz v1, :cond_1b

    .line 590
    const/high16 v15, 0x43340000    # 180.0f

    .line 592
    cmpl-float v1, v14, v15

    .line 594
    if-lez v1, :cond_12

    .line 596
    :goto_7
    move-object/from16 v14, v58

    .line 598
    move-object/from16 v15, v59

    .line 600
    goto :goto_6

    .line 601
    :cond_12
    iget v1, v5, Lo/d7;->c:F

    .line 603
    iget v2, v5, Lo/d7;->b:F

    .line 605
    iget v4, v5, Lo/d7;->d:F

    .line 607
    move/from16 v29, v2

    .line 609
    move/from16 v30, v1

    .line 611
    move/from16 v31, v4

    .line 613
    move/from16 v32, v53

    .line 615
    move/from16 v33, v54

    .line 617
    move/from16 v34, v55

    .line 619
    move/from16 v35, v10

    .line 621
    move/from16 v36, v3

    .line 623
    move/from16 v37, v50

    .line 625
    move/from16 v38, v51

    .line 627
    move/from16 v39, v52

    .line 629
    move/from16 v40, v8

    .line 631
    move/from16 v41, v9

    .line 633
    move/from16 v42, v6

    .line 635
    move/from16 v43, v47

    .line 637
    move/from16 v44, v49

    .line 639
    move/from16 v45, v11

    .line 641
    move/from16 v46, v13

    .line 643
    invoke-static/range {v29 .. v46}, Lo/g7;->a(FFFFFFFFFFFFFFFFFF)[F

    .line 646
    move-result-object v27

    .line 647
    iget v2, v5, Lo/d7;->b:F

    .line 649
    const v4, 0x3fe147ae    # 1.76f

    .line 652
    add-float v30, v1, v4

    .line 654
    iget v1, v5, Lo/d7;->d:F

    .line 656
    move/from16 v29, v2

    .line 658
    move/from16 v31, v1

    .line 660
    move/from16 v32, v53

    .line 662
    move/from16 v33, v54

    .line 664
    move/from16 v34, v55

    .line 666
    move/from16 v35, v10

    .line 668
    move/from16 v36, v3

    .line 670
    move/from16 v37, v50

    .line 672
    move/from16 v38, v51

    .line 674
    move/from16 v39, v52

    .line 676
    move/from16 v40, v8

    .line 678
    move/from16 v41, v9

    .line 680
    move/from16 v42, v6

    .line 682
    move/from16 v43, v47

    .line 684
    move/from16 v44, v49

    .line 686
    move/from16 v45, v11

    .line 688
    move/from16 v46, v13

    .line 690
    invoke-static/range {v29 .. v46}, Lo/g7;->a(FFFFFFFFFFFFFFFFFF)[F

    .line 693
    move-result-object v29

    .line 694
    if-eqz v27, :cond_1b

    .line 696
    if-nez v29, :cond_13

    .line 698
    goto :goto_7

    .line 699
    :cond_13
    const/4 v1, 0x1

    .line 700
    aget v2, v29, v1

    .line 702
    aget v4, v27, v1

    .line 704
    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    .line 707
    move-result v2

    .line 708
    aget v4, v29, v1

    .line 710
    aget v15, v27, v1

    .line 712
    invoke-static {v4, v15}, Ljava/lang/Math;->max(FF)F

    .line 715
    move-result v1

    .line 716
    const/4 v4, 0x0

    .line 717
    aget v15, v29, v4

    .line 719
    aget v31, v27, v4

    .line 721
    add-float v15, v15, v31

    .line 723
    mul-float v15, v15, v21

    .line 725
    iget-object v4, v0, Lo/g7;->k:Ljava/util/HashMap;

    .line 727
    move/from16 v31, v3

    .line 729
    iget v3, v5, Lo/d7;->a:I

    .line 731
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 734
    move-result-object v3

    .line 735
    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 738
    move-result-object v3

    .line 739
    check-cast v3, Ljava/lang/Float;

    .line 741
    if-eqz v3, :cond_15

    .line 743
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    .line 746
    move-result v4

    .line 747
    sub-float v4, v15, v4

    .line 749
    move/from16 v32, v8

    .line 751
    move/from16 v33, v9

    .line 753
    float-to-double v8, v4

    .line 754
    iget-object v4, v0, Lo/g7;->l:Ljava/util/HashMap;

    .line 756
    move/from16 v34, v6

    .line 758
    iget v6, v5, Lo/d7;->a:I

    .line 760
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 763
    move-result-object v6

    .line 764
    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 767
    move-result-object v4

    .line 768
    invoke-static {v4}, Lo/x9;->l(Ljava/lang/Object;)V

    .line 771
    check-cast v4, Ljava/lang/Number;

    .line 773
    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    .line 776
    move-result v4

    .line 777
    sub-float v4, v2, v4

    .line 779
    float-to-double v6, v4

    .line 780
    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->hypot(DD)D

    .line 783
    move-result-wide v6

    .line 784
    double-to-float v4, v6

    .line 785
    iget v6, v0, Lo/g7;->a:F

    .line 787
    const/high16 v7, 0x42000000    # 32.0f

    .line 789
    mul-float/2addr v6, v7

    .line 790
    cmpl-float v4, v4, v6

    .line 792
    if-lez v4, :cond_14

    .line 794
    move/from16 v4, v19

    .line 796
    goto :goto_8

    .line 797
    :cond_14
    const v4, 0x3f333333    # 0.7f

    .line 800
    :goto_8
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    .line 803
    move-result v6

    .line 804
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    .line 807
    move-result v3

    .line 808
    sub-float/2addr v15, v3

    .line 809
    mul-float/2addr v15, v4

    .line 810
    add-float/2addr v15, v6

    .line 811
    iget-object v3, v0, Lo/g7;->l:Ljava/util/HashMap;

    .line 813
    iget v6, v5, Lo/d7;->a:I

    .line 815
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 818
    move-result-object v6

    .line 819
    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 822
    move-result-object v3

    .line 823
    invoke-static {v3}, Lo/x9;->l(Ljava/lang/Object;)V

    .line 826
    check-cast v3, Ljava/lang/Number;

    .line 828
    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    .line 831
    move-result v3

    .line 832
    iget-object v6, v0, Lo/g7;->l:Ljava/util/HashMap;

    .line 834
    iget v8, v5, Lo/d7;->a:I

    .line 836
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 839
    move-result-object v8

    .line 840
    invoke-virtual {v6, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 843
    move-result-object v6

    .line 844
    invoke-static {v6}, Lo/x9;->l(Ljava/lang/Object;)V

    .line 847
    check-cast v6, Ljava/lang/Number;

    .line 849
    invoke-virtual {v6}, Ljava/lang/Number;->floatValue()F

    .line 852
    move-result v6

    .line 853
    sub-float/2addr v2, v6

    .line 854
    mul-float/2addr v2, v4

    .line 855
    add-float/2addr v2, v3

    .line 856
    iget-object v3, v0, Lo/g7;->m:Ljava/util/HashMap;

    .line 858
    iget v6, v5, Lo/d7;->a:I

    .line 860
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 863
    move-result-object v6

    .line 864
    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 867
    move-result-object v3

    .line 868
    invoke-static {v3}, Lo/x9;->l(Ljava/lang/Object;)V

    .line 871
    check-cast v3, Ljava/lang/Number;

    .line 873
    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    .line 876
    move-result v3

    .line 877
    iget-object v6, v0, Lo/g7;->m:Ljava/util/HashMap;

    .line 879
    iget v8, v5, Lo/d7;->a:I

    .line 881
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 884
    move-result-object v8

    .line 885
    invoke-virtual {v6, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 888
    move-result-object v6

    .line 889
    invoke-static {v6}, Lo/x9;->l(Ljava/lang/Object;)V

    .line 892
    check-cast v6, Ljava/lang/Number;

    .line 894
    invoke-virtual {v6}, Ljava/lang/Number;->floatValue()F

    .line 897
    move-result v6

    .line 898
    sub-float/2addr v1, v6

    .line 899
    mul-float/2addr v1, v4

    .line 900
    add-float/2addr v1, v3

    .line 901
    :goto_9
    move v8, v2

    .line 902
    goto :goto_a

    .line 903
    :cond_15
    move/from16 v34, v6

    .line 905
    move/from16 v32, v8

    .line 907
    move/from16 v33, v9

    .line 909
    const/high16 v7, 0x42000000    # 32.0f

    .line 911
    goto :goto_9

    .line 912
    :goto_a
    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 915
    move-result-object v2

    .line 916
    iget-object v3, v0, Lo/g7;->k:Ljava/util/HashMap;

    .line 918
    iget v4, v5, Lo/d7;->a:I

    .line 920
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 923
    move-result-object v4

    .line 924
    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 927
    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 930
    move-result-object v2

    .line 931
    iget-object v3, v0, Lo/g7;->l:Ljava/util/HashMap;

    .line 933
    iget v4, v5, Lo/d7;->a:I

    .line 935
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 938
    move-result-object v4

    .line 939
    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 942
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 945
    move-result-object v2

    .line 946
    iget-object v3, v0, Lo/g7;->m:Ljava/util/HashMap;

    .line 948
    iget v4, v5, Lo/d7;->a:I

    .line 950
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 953
    move-result-object v4

    .line 954
    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 957
    sub-float v2, v1, v8

    .line 959
    iget v3, v0, Lo/g7;->a:F

    .line 961
    const/high16 v4, 0x41000000    # 8.0f

    .line 963
    mul-float v6, v3, v4

    .line 965
    cmpg-float v4, v2, v6

    .line 967
    if-gez v4, :cond_16

    .line 969
    move v2, v6

    .line 970
    :cond_16
    mul-float v2, v2, v18

    .line 972
    mul-float v4, v3, v20

    .line 974
    mul-float v3, v3, v16

    .line 976
    invoke-static {v2, v4, v3}, Lo/Ha;->k(FFF)F

    .line 979
    move-result v2

    .line 980
    mul-float v2, v2, v21

    .line 982
    sub-float v3, v15, v2

    .line 984
    add-float/2addr v2, v15

    .line 985
    const/16 v26, 0x0

    .line 987
    cmpg-float v4, v2, v26

    .line 989
    if-ltz v4, :cond_1a

    .line 991
    cmpl-float v4, v3, v11

    .line 993
    if-gtz v4, :cond_1a

    .line 995
    cmpg-float v4, v1, v26

    .line 997
    if-ltz v4, :cond_1a

    .line 999
    cmpl-float v4, v8, v13

    .line 1001
    if-lez v4, :cond_17

    .line 1003
    move-object/from16 v7, p1

    .line 1005
    move/from16 v3, v31

    .line 1007
    move/from16 v8, v32

    .line 1009
    move/from16 v9, v33

    .line 1011
    move/from16 v6, v34

    .line 1013
    goto/16 :goto_7

    .line 1015
    :cond_17
    iget-object v4, v0, Lo/g7;->A:Landroid/graphics/RectF;

    .line 1017
    invoke-virtual {v4, v3, v8, v2, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1020
    iget-object v1, v0, Lo/g7;->A:Landroid/graphics/RectF;

    .line 1022
    iget-object v2, v0, Lo/g7;->y:Landroid/graphics/Paint;

    .line 1024
    move-object/from16 v9, p1

    .line 1026
    invoke-virtual {v9, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 1029
    iget-object v1, v0, Lo/g7;->A:Landroid/graphics/RectF;

    .line 1031
    iget-object v2, v0, Lo/g7;->x:Landroid/graphics/Paint;

    .line 1033
    invoke-virtual {v9, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 1036
    iget-object v6, v0, Lo/g7;->w:Landroid/graphics/Paint;

    .line 1038
    move-object/from16 v1, p1

    .line 1040
    move/from16 v2, v56

    .line 1042
    move/from16 v25, v31

    .line 1044
    move/from16 v3, v57

    .line 1046
    move-object/from16 v7, v48

    .line 1048
    move/from16 v35, v49

    .line 1050
    move v4, v15

    .line 1051
    move-object/from16 v60, v5

    .line 1053
    move/from16 v36, v10

    .line 1055
    const/high16 v10, 0x43340000    # 180.0f

    .line 1057
    move v5, v8

    .line 1058
    move/from16 v30, v34

    .line 1060
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1063
    float-to-int v1, v14

    .line 1064
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1066
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1069
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1072
    move-object/from16 v1, v59

    .line 1074
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1077
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1080
    move-result-object v2

    .line 1081
    const/high16 v3, 0x40400000    # 3.0f

    .line 1083
    iget v4, v0, Lo/g7;->a:F

    .line 1085
    mul-float/2addr v4, v3

    .line 1086
    sub-float/2addr v8, v4

    .line 1087
    iget-object v3, v0, Lo/g7;->z:Landroid/graphics/Paint;

    .line 1089
    invoke-virtual {v9, v2, v15, v8, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1092
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 1095
    move-result-wide v2

    .line 1096
    iget-wide v4, v0, Lo/g7;->g:J

    .line 1098
    sub-long v4, v2, v4

    .line 1100
    const-wide/16 v37, 0x2bc

    .line 1102
    cmp-long v4, v4, v37

    .line 1104
    if-lez v4, :cond_19

    .line 1106
    iput-wide v2, v0, Lo/g7;->g:J

    .line 1108
    sget-object v2, Lo/i9;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 1110
    sget v2, Lo/i9;->e:F

    .line 1112
    invoke-static {v2}, Ljava/lang/Float;->isInfinite(F)Z

    .line 1115
    move-result v3

    .line 1116
    if-nez v3, :cond_18

    .line 1118
    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    .line 1121
    move-result v2

    .line 1122
    if-nez v2, :cond_18

    .line 1124
    sget v2, Lo/i9;->e:F

    .line 1126
    mul-float/2addr v2, v10

    .line 1127
    const v3, 0x40490fdb    # (float)Math.PI

    .line 1130
    div-float/2addr v2, v3

    .line 1131
    goto :goto_b

    .line 1132
    :cond_18
    const/high16 v2, 0x7fc00000    # Float.NaN

    .line 1134
    :goto_b
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 1136
    invoke-static/range {v33 .. v33}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 1139
    move-result-object v37

    .line 1140
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 1143
    move-result-object v38

    .line 1144
    invoke-static/range {v54 .. v54}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 1147
    move-result-object v39

    .line 1148
    iget v2, v12, Lo/d7;->c:F

    .line 1150
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 1153
    move-result-object v40

    .line 1154
    move-object/from16 v2, v60

    .line 1156
    iget v2, v2, Lo/d7;->c:F

    .line 1158
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 1161
    move-result-object v41

    .line 1162
    const/4 v2, 0x1

    .line 1163
    aget v4, v27, v2

    .line 1165
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 1168
    move-result-object v42

    .line 1169
    aget v4, v29, v2

    .line 1171
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 1174
    move-result-object v43

    .line 1175
    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 1178
    move-result-object v44

    .line 1179
    filled-new-array/range {v37 .. v44}, [Ljava/lang/Object;

    .line 1182
    move-result-object v2

    .line 1183
    const-string v4, "ly=%.3f A=%.1f camY=%.2f meY=%.2f eY=%.2f feet=%.0f head=%.0f dist=%.1f"

    .line 1185
    invoke-static {v3, v4, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 1188
    move-result-object v2

    .line 1189
    const-string v3, "ffrt-esp"

    .line 1191
    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1194
    :cond_19
    move-object v15, v1

    .line 1195
    move-object/from16 v48, v7

    .line 1197
    move-object v7, v9

    .line 1198
    move/from16 v3, v25

    .line 1200
    move/from16 v6, v30

    .line 1202
    move/from16 v8, v32

    .line 1204
    move/from16 v9, v33

    .line 1206
    move/from16 v49, v35

    .line 1208
    move/from16 v10, v36

    .line 1210
    move-object/from16 v14, v58

    .line 1212
    goto/16 :goto_6

    .line 1214
    :cond_1a
    move/from16 v36, v10

    .line 1216
    const/high16 v10, 0x43340000    # 180.0f

    .line 1218
    move-object/from16 v7, p1

    .line 1220
    move/from16 v3, v31

    .line 1222
    move/from16 v8, v32

    .line 1224
    move/from16 v9, v33

    .line 1226
    move/from16 v6, v34

    .line 1228
    move/from16 v10, v36

    .line 1230
    goto/16 :goto_7

    .line 1232
    :cond_1b
    move/from16 v33, v9

    .line 1234
    const/16 v26, 0x0

    .line 1236
    move-object v9, v7

    .line 1237
    move/from16 v9, v33

    .line 1239
    goto/16 :goto_7

    .line 1241
    :cond_1c
    :goto_c
    move-object v9, v7

    .line 1242
    move-object v1, v15

    .line 1243
    const/high16 v10, 0x43340000    # 180.0f

    .line 1245
    const/16 v26, 0x0

    .line 1247
    move-object v7, v4

    .line 1248
    :goto_d
    iget-boolean v2, v0, Lo/g7;->d:Z

    .line 1250
    if-eqz v2, :cond_48

    .line 1252
    sget-object v2, Lo/i9;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 1254
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 1257
    move-result-wide v2

    .line 1258
    new-instance v4, Ljava/util/ArrayList;

    .line 1260
    sget-object v5, Lo/i9;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 1262
    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    .line 1265
    move-result v6

    .line 1266
    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 1269
    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    .line 1272
    move-result-object v5

    .line 1273
    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 1276
    move-result-object v5

    .line 1277
    :cond_1d
    :goto_e
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 1280
    move-result v6

    .line 1281
    if-eqz v6, :cond_1e

    .line 1283
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1286
    move-result-object v6

    .line 1287
    invoke-static {v6, v7}, Lo/x9;->n(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1290
    check-cast v6, Lo/d7;

    .line 1292
    iget-wide v11, v6, Lo/d7;->h:J

    .line 1294
    sub-long v11, v2, v11

    .line 1296
    cmp-long v8, v11, v22

    .line 1298
    if-gtz v8, :cond_1d

    .line 1300
    invoke-static {v6, v2, v3}, Lo/i9;->c(Lo/d7;J)Lo/d7;

    .line 1303
    move-result-object v6

    .line 1304
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1307
    goto :goto_e

    .line 1308
    :cond_1e
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 1311
    move-result v5

    .line 1312
    const/4 v6, 0x1

    .line 1313
    if-le v5, v6, :cond_1f

    .line 1315
    new-instance v5, Lo/c5;

    .line 1317
    const/4 v6, 0x2

    .line 1318
    invoke-direct {v5, v6}, Lo/c5;-><init>(I)V

    .line 1321
    invoke-static {v4, v5}, Lo/j4;->j0(Ljava/util/ArrayList;Ljava/util/Comparator;)V

    .line 1324
    :cond_1f
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 1327
    move-result v5

    .line 1328
    sget-object v6, Lo/i9;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 1330
    invoke-virtual {v6}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    .line 1333
    move-result v6

    .line 1334
    if-eq v5, v6, :cond_23

    .line 1336
    new-instance v5, Ljava/util/ArrayList;

    .line 1338
    invoke-interface {v4}, Ljava/util/Collection;->size()I

    .line 1341
    move-result v6

    .line 1342
    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 1345
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1348
    move-result-object v6

    .line 1349
    :goto_f
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 1352
    move-result v8

    .line 1353
    if-eqz v8, :cond_20

    .line 1355
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1358
    move-result-object v8

    .line 1359
    check-cast v8, Lo/d7;

    .line 1361
    iget v8, v8, Lo/d7;->a:I

    .line 1363
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1366
    move-result-object v8

    .line 1367
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1370
    goto :goto_f

    .line 1371
    :cond_20
    new-instance v6, Ljava/util/HashSet;

    .line 1373
    invoke-interface {v5}, Ljava/util/Collection;->size()I

    .line 1376
    move-result v8

    .line 1377
    invoke-static {v8}, Lo/Ia;->D0(I)I

    .line 1380
    move-result v8

    .line 1381
    invoke-direct {v6, v8}, Ljava/util/HashSet;-><init>(I)V

    .line 1384
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 1387
    move-result-object v5

    .line 1388
    :goto_10
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 1391
    move-result v8

    .line 1392
    if-eqz v8, :cond_21

    .line 1394
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1397
    move-result-object v8

    .line 1398
    invoke-interface {v6, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1401
    goto :goto_10

    .line 1402
    :cond_21
    sget-object v5, Lo/i9;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 1404
    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    .line 1407
    move-result-object v5

    .line 1408
    const-string v8, "<get-keys>(...)"

    .line 1410
    invoke-static {v5, v8}, Lo/x9;->n(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1413
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 1416
    move-result-object v5

    .line 1417
    :cond_22
    :goto_11
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 1420
    move-result v8

    .line 1421
    if-eqz v8, :cond_23

    .line 1423
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1426
    move-result-object v8

    .line 1427
    check-cast v8, Ljava/lang/Integer;

    .line 1429
    const-string v11, "it"

    .line 1431
    invoke-static {v8, v11}, Lo/x9;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1434
    invoke-virtual {v6, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 1437
    move-result v8

    .line 1438
    const/4 v11, 0x1

    .line 1439
    xor-int/2addr v8, v11

    .line 1440
    if-ne v8, v11, :cond_22

    .line 1442
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    .line 1445
    goto :goto_11

    .line 1446
    :cond_23
    sget-object v5, Lo/i9;->c:Lo/d7;

    .line 1448
    if-eqz v5, :cond_24

    .line 1450
    iget-wide v5, v5, Lo/d7;->h:J

    .line 1452
    sub-long/2addr v2, v5

    .line 1453
    cmp-long v2, v2, v22

    .line 1455
    if-lez v2, :cond_24

    .line 1457
    sput-object v24, Lo/i9;->c:Lo/d7;

    .line 1459
    :cond_24
    sget-object v2, Lo/i9;->c:Lo/d7;

    .line 1461
    if-nez v2, :cond_25

    .line 1463
    :goto_12
    move-object/from16 v2, v24

    .line 1465
    goto :goto_13

    .line 1466
    :cond_25
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 1469
    move-result-wide v5

    .line 1470
    iget-wide v11, v2, Lo/d7;->h:J

    .line 1472
    sub-long v11, v5, v11

    .line 1474
    cmp-long v3, v11, v22

    .line 1476
    if-lez v3, :cond_26

    .line 1478
    goto :goto_12

    .line 1479
    :cond_26
    invoke-static {v2, v5, v6}, Lo/i9;->c(Lo/d7;J)Lo/d7;

    .line 1482
    move-result-object v2

    .line 1483
    :goto_13
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 1486
    move-result-wide v5

    .line 1487
    sget-wide v11, Lo/i9;->a:J

    .line 1489
    const-wide/16 v13, 0x0

    .line 1491
    cmp-long v3, v11, v13

    .line 1493
    if-nez v3, :cond_27

    .line 1495
    const-wide/16 v5, -0x1

    .line 1497
    goto :goto_14

    .line 1498
    :cond_27
    sub-long/2addr v5, v11

    .line 1499
    :goto_14
    cmp-long v3, v5, v13

    .line 1501
    if-gez v3, :cond_28

    .line 1503
    const-string v3, ""

    .line 1505
    goto :goto_15

    .line 1506
    :cond_28
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1508
    const-string v8, "  "

    .line 1510
    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1513
    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1516
    const-string v5, "ms"

    .line 1518
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1521
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1524
    move-result-object v3

    .line 1525
    :goto_15
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 1528
    move-result v5

    .line 1529
    const-string v6, "\u0110\u1ecbch "

    .line 1531
    invoke-static {v6, v5, v3}, Lo/o5;->e(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 1534
    move-result-object v3

    .line 1535
    iget v5, v0, Lo/g7;->a:F

    .line 1537
    const/high16 v6, 0x41800000    # 16.0f

    .line 1539
    mul-float v8, v5, v6

    .line 1541
    const/high16 v11, 0x42080000    # 34.0f

    .line 1543
    mul-float/2addr v5, v11

    .line 1544
    iget-object v11, v0, Lo/g7;->r:Landroid/graphics/Paint;

    .line 1546
    invoke-virtual {v9, v3, v8, v5, v11}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1549
    sget v3, Lo/i9;->d:F

    .line 1551
    invoke-static {v3}, Ljava/lang/Float;->isInfinite(F)Z

    .line 1554
    move-result v5

    .line 1555
    if-nez v5, :cond_29

    .line 1557
    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    .line 1560
    move-result v5

    .line 1561
    if-nez v5, :cond_29

    .line 1563
    iput v3, v0, Lo/g7;->H:F

    .line 1565
    :cond_29
    iget v3, v0, Lo/g7;->c:I

    .line 1567
    int-to-float v3, v3

    .line 1568
    const/high16 v5, 0x42c80000    # 100.0f

    .line 1570
    div-float/2addr v3, v5

    .line 1571
    iget v8, v0, Lo/g7;->a:F

    .line 1573
    const/high16 v11, 0x42500000    # 52.0f

    .line 1575
    mul-float/2addr v11, v8

    .line 1576
    iget v12, v0, Lo/g7;->c:I

    .line 1578
    int-to-float v12, v12

    .line 1579
    div-float/2addr v12, v5

    .line 1580
    mul-float/2addr v12, v11

    .line 1581
    mul-float/2addr v6, v8

    .line 1582
    add-float/2addr v6, v12

    .line 1583
    const/high16 v5, 0x42300000    # 44.0f

    .line 1585
    mul-float/2addr v5, v8

    .line 1586
    add-float/2addr v5, v12

    .line 1587
    const/high16 v11, 0x40e00000    # 7.0f

    .line 1589
    mul-float/2addr v11, v8

    .line 1590
    mul-float/2addr v11, v3

    .line 1591
    const/high16 v13, 0x40800000    # 4.0f

    .line 1593
    mul-float/2addr v13, v8

    .line 1594
    cmpg-float v14, v11, v13

    .line 1596
    if-gez v14, :cond_2a

    .line 1598
    move v11, v13

    .line 1599
    :cond_2a
    const v14, 0x4059999a    # 3.4f

    .line 1602
    mul-float/2addr v14, v8

    .line 1603
    mul-float/2addr v14, v3

    .line 1604
    const v15, 0x40266666    # 2.6f

    .line 1607
    mul-float/2addr v15, v8

    .line 1608
    const v22, 0x40a66666    # 5.2f

    .line 1611
    mul-float v10, v8, v22

    .line 1613
    invoke-static {v14, v15, v10}, Lo/Ha;->k(FFF)F

    .line 1616
    move-result v10

    .line 1617
    const v14, 0x40666666    # 3.6f

    .line 1620
    mul-float/2addr v14, v8

    .line 1621
    mul-float/2addr v14, v3

    .line 1622
    const v3, 0x40333333    # 2.8f

    .line 1625
    mul-float/2addr v3, v8

    .line 1626
    const v15, 0x40accccd    # 5.4f

    .line 1629
    mul-float/2addr v15, v8

    .line 1630
    invoke-static {v14, v3, v15}, Lo/Ha;->k(FFF)F

    .line 1633
    move-result v3

    .line 1634
    add-float/2addr v11, v12

    .line 1635
    iget-object v14, v0, Lo/g7;->n:Landroid/graphics/Paint;

    .line 1637
    invoke-virtual {v9, v6, v5, v11, v14}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1640
    iget-object v11, v0, Lo/g7;->o:Landroid/graphics/Paint;

    .line 1642
    invoke-virtual {v9, v6, v5, v12, v11}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1645
    mul-float v14, v12, v21

    .line 1647
    invoke-virtual {v9, v6, v5, v14, v11}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1650
    iget v11, v0, Lo/g7;->H:F

    .line 1652
    invoke-static {v11}, Ljava/lang/Float;->isInfinite(F)Z

    .line 1655
    move-result v14

    .line 1656
    if-nez v14, :cond_2c

    .line 1658
    invoke-static {v11}, Ljava/lang/Float;->isNaN(F)Z

    .line 1661
    move-result v11

    .line 1662
    if-nez v11, :cond_2c

    .line 1664
    iget v11, v0, Lo/g7;->H:F

    .line 1666
    iget-object v14, v0, Lo/g7;->B:Landroid/graphics/Path;

    .line 1668
    invoke-virtual {v14}, Landroid/graphics/Path;->reset()V

    .line 1671
    invoke-virtual {v14, v6, v5}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1674
    move-object/from16 v59, v1

    .line 1676
    const/4 v15, 0x0

    .line 1677
    :goto_16
    const/16 v1, 0xa

    .line 1679
    if-gt v15, v1, :cond_2b

    .line 1681
    const v22, 0x3f0efa35

    .line 1684
    sub-float v23, v11, v22

    .line 1686
    const v25, 0x3f8efa35

    .line 1689
    move/from16 v29, v11

    .line 1691
    int-to-float v11, v15

    .line 1692
    mul-float v11, v11, v25

    .line 1694
    int-to-float v1, v1

    .line 1695
    div-float/2addr v11, v1

    .line 1696
    add-float v11, v11, v23

    .line 1698
    move/from16 v23, v3

    .line 1700
    move-object v1, v4

    .line 1701
    float-to-double v3, v11

    .line 1702
    move-object/from16 v25, v1

    .line 1704
    move-object v11, v2

    .line 1705
    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    .line 1708
    move-result-wide v1

    .line 1709
    double-to-float v1, v1

    .line 1710
    mul-float/2addr v1, v12

    .line 1711
    add-float/2addr v1, v6

    .line 1712
    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    .line 1715
    move-result-wide v2

    .line 1716
    double-to-float v2, v2

    .line 1717
    mul-float/2addr v2, v12

    .line 1718
    sub-float v2, v5, v2

    .line 1720
    invoke-virtual {v14, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1723
    const/4 v1, 0x1

    .line 1724
    add-int/2addr v15, v1

    .line 1725
    move-object v2, v11

    .line 1726
    move/from16 v3, v23

    .line 1728
    move-object/from16 v4, v25

    .line 1730
    move/from16 v11, v29

    .line 1732
    goto :goto_16

    .line 1733
    :cond_2b
    move-object v11, v2

    .line 1734
    move/from16 v23, v3

    .line 1736
    move-object/from16 v25, v4

    .line 1738
    invoke-virtual {v14}, Landroid/graphics/Path;->close()V

    .line 1741
    iget-object v1, v0, Lo/g7;->t:Landroid/graphics/Paint;

    .line 1743
    invoke-virtual {v9, v14, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1746
    iget-object v1, v0, Lo/g7;->u:Landroid/graphics/Paint;

    .line 1748
    invoke-virtual {v9, v14, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1751
    goto :goto_17

    .line 1752
    :cond_2c
    move-object/from16 v59, v1

    .line 1754
    move-object v11, v2

    .line 1755
    move/from16 v23, v3

    .line 1757
    move-object/from16 v25, v4

    .line 1759
    :goto_17
    iget-object v1, v0, Lo/g7;->p:Landroid/graphics/Paint;

    .line 1761
    invoke-virtual {v9, v6, v5, v10, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1764
    mul-float v1, v8, v20

    .line 1766
    sub-float v1, v6, v1

    .line 1768
    add-float v2, v13, v12

    .line 1770
    sub-float v2, v5, v2

    .line 1772
    add-float/2addr v2, v13

    .line 1773
    iget-object v3, v0, Lo/g7;->r:Landroid/graphics/Paint;

    .line 1775
    const-string v4, "N"

    .line 1777
    invoke-virtual {v9, v4, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1780
    if-eqz v11, :cond_2d

    .line 1782
    iget v1, v11, Lo/d7;->b:F

    .line 1784
    goto :goto_18

    .line 1785
    :cond_2d
    move/from16 v1, v26

    .line 1787
    :goto_18
    if-eqz v11, :cond_2e

    .line 1789
    iget v2, v11, Lo/d7;->d:F

    .line 1791
    goto :goto_19

    .line 1792
    :cond_2e
    move/from16 v2, v26

    .line 1794
    :goto_19
    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1797
    move-result-object v3

    .line 1798
    move/from16 v4, v16

    .line 1800
    :goto_1a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 1803
    move-result v10

    .line 1804
    if-eqz v10, :cond_30

    .line 1806
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1809
    move-result-object v10

    .line 1810
    check-cast v10, Lo/d7;

    .line 1812
    iget v13, v10, Lo/d7;->b:F

    .line 1814
    sub-float/2addr v13, v1

    .line 1815
    float-to-double v13, v13

    .line 1816
    iget v10, v10, Lo/d7;->d:F

    .line 1818
    sub-float/2addr v10, v2

    .line 1819
    move v15, v8

    .line 1820
    float-to-double v8, v10

    .line 1821
    invoke-static {v13, v14, v8, v9}, Ljava/lang/Math;->hypot(DD)D

    .line 1824
    move-result-wide v8

    .line 1825
    double-to-float v8, v8

    .line 1826
    cmpl-float v9, v8, v4

    .line 1828
    if-lez v9, :cond_2f

    .line 1830
    move-object/from16 v9, p1

    .line 1832
    move v4, v8

    .line 1833
    :goto_1b
    move v8, v15

    .line 1834
    goto :goto_1a

    .line 1835
    :cond_2f
    move-object/from16 v9, p1

    .line 1837
    goto :goto_1b

    .line 1838
    :cond_30
    move v15, v8

    .line 1839
    const/high16 v8, 0x42000000    # 32.0f

    .line 1841
    const/high16 v9, 0x43340000    # 180.0f

    .line 1843
    invoke-static {v4, v8, v9}, Lo/Ha;->k(FFF)F

    .line 1846
    move-result v3

    .line 1847
    const v4, 0x3f99999a    # 1.2f

    .line 1850
    mul-float/2addr v3, v4

    .line 1851
    if-nez v11, :cond_31

    .line 1853
    move/from16 v33, v1

    .line 1855
    move/from16 v30, v2

    .line 1857
    move/from16 v31, v3

    .line 1859
    move/from16 v27, v5

    .line 1861
    move-object/from16 v32, v11

    .line 1863
    move-object/from16 v4, v25

    .line 1865
    const/4 v10, -0x1

    .line 1866
    move/from16 v25, v12

    .line 1868
    goto/16 :goto_25

    .line 1870
    :cond_31
    iget v13, v11, Lo/d7;->e:F

    .line 1872
    float-to-double v9, v13

    .line 1873
    iget v14, v11, Lo/d7;->g:F

    .line 1875
    move/from16 v27, v5

    .line 1877
    float-to-double v4, v14

    .line 1878
    move/from16 v30, v2

    .line 1880
    move/from16 v31, v3

    .line 1882
    invoke-static {v9, v10, v4, v5}, Ljava/lang/Math;->hypot(DD)D

    .line 1885
    move-result-wide v2

    .line 1886
    double-to-float v2, v2

    .line 1887
    const v3, 0x3fa66666    # 1.3f

    .line 1890
    cmpg-float v2, v2, v3

    .line 1892
    if-gez v2, :cond_32

    .line 1894
    const/high16 v2, 0x7fc00000    # Float.NaN

    .line 1896
    goto :goto_1c

    .line 1897
    :cond_32
    invoke-static {v9, v10, v4, v5}, Ljava/lang/Math;->atan2(DD)D

    .line 1900
    move-result-wide v2

    .line 1901
    double-to-float v2, v2

    .line 1902
    :goto_1c
    invoke-static {v2}, Ljava/lang/Float;->isInfinite(F)Z

    .line 1905
    move-result v3

    .line 1906
    if-nez v3, :cond_3b

    .line 1908
    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    .line 1911
    move-result v3

    .line 1912
    if-nez v3, :cond_3b

    .line 1914
    new-instance v3, Ljava/util/ArrayList;

    .line 1916
    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    .line 1919
    move-result v4

    .line 1920
    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 1923
    move-object/from16 v4, v25

    .line 1925
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1928
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 1931
    move-result v5

    .line 1932
    const/4 v9, 0x1

    .line 1933
    if-le v5, v9, :cond_33

    .line 1935
    new-instance v5, Lo/f7;

    .line 1937
    const/4 v10, 0x0

    .line 1938
    invoke-direct {v5, v10, v11}, Lo/f7;-><init>(ILjava/lang/Object;)V

    .line 1941
    invoke-static {v3, v5}, Lo/j4;->j0(Ljava/util/ArrayList;Ljava/util/Comparator;)V

    .line 1944
    goto :goto_1d

    .line 1945
    :cond_33
    const/4 v10, 0x0

    .line 1946
    :goto_1d
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1949
    move-result-object v3

    .line 1950
    const-string v5, "iterator(...)"

    .line 1952
    invoke-static {v3, v5}, Lo/x9;->n(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1955
    :goto_1e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 1958
    move-result v5

    .line 1959
    if-eqz v5, :cond_3a

    .line 1961
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1964
    move-result-object v5

    .line 1965
    invoke-static {v5, v7}, Lo/x9;->n(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1968
    check-cast v5, Lo/d7;

    .line 1970
    iget v9, v5, Lo/d7;->b:F

    .line 1972
    iget v10, v11, Lo/d7;->b:F

    .line 1974
    sub-float/2addr v9, v10

    .line 1975
    iget v10, v5, Lo/d7;->d:F

    .line 1977
    iget v8, v11, Lo/d7;->d:F

    .line 1979
    sub-float/2addr v10, v8

    .line 1980
    move-object/from16 v48, v7

    .line 1982
    float-to-double v7, v9

    .line 1983
    move-object/from16 v32, v11

    .line 1985
    move/from16 v25, v12

    .line 1987
    float-to-double v11, v10

    .line 1988
    move/from16 v33, v1

    .line 1990
    invoke-static {v7, v8, v11, v12}, Ljava/lang/Math;->hypot(DD)D

    .line 1993
    move-result-wide v0

    .line 1994
    double-to-float v0, v0

    .line 1995
    cmpg-float v1, v0, v21

    .line 1997
    if-ltz v1, :cond_38

    .line 1999
    invoke-static {v7, v8, v11, v12}, Ljava/lang/Math;->atan2(DD)D

    .line 2002
    move-result-wide v7

    .line 2003
    double-to-float v1, v7

    .line 2004
    sub-float/2addr v1, v2

    .line 2005
    :goto_1f
    const v7, 0x40490fdb    # (float)Math.PI

    .line 2008
    cmpl-float v8, v1, v7

    .line 2010
    const v7, 0x40c90fdb

    .line 2013
    if-lez v8, :cond_34

    .line 2015
    sub-float/2addr v1, v7

    .line 2016
    goto :goto_1f

    .line 2017
    :cond_34
    :goto_20
    const v8, -0x3fb6f025

    .line 2020
    cmpg-float v11, v1, v8

    .line 2022
    if-gez v11, :cond_35

    .line 2024
    add-float/2addr v1, v7

    .line 2025
    goto :goto_20

    .line 2026
    :cond_35
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 2029
    move-result v1

    .line 2030
    const v7, 0x3f1c61aa

    .line 2033
    cmpl-float v1, v1, v7

    .line 2035
    if-gtz v1, :cond_38

    .line 2037
    div-float v0, v19, v0

    .line 2039
    mul-float/2addr v9, v0

    .line 2040
    mul-float/2addr v10, v0

    .line 2041
    iget v0, v5, Lo/d7;->e:F

    .line 2043
    sub-float v1, v0, v13

    .line 2045
    mul-float/2addr v1, v9

    .line 2046
    iget v7, v5, Lo/d7;->g:F

    .line 2048
    sub-float v8, v7, v14

    .line 2050
    mul-float/2addr v8, v10

    .line 2051
    add-float/2addr v8, v1

    .line 2052
    mul-float/2addr v9, v13

    .line 2053
    mul-float/2addr v10, v14

    .line 2054
    add-float/2addr v10, v9

    .line 2055
    neg-float v1, v10

    .line 2056
    sub-float v0, v13, v0

    .line 2058
    float-to-double v9, v0

    .line 2059
    sub-float v0, v14, v7

    .line 2061
    float-to-double v11, v0

    .line 2062
    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->hypot(DD)D

    .line 2065
    move-result-wide v9

    .line 2066
    double-to-float v0, v9

    .line 2067
    const v7, 0x3fe66666    # 1.8f

    .line 2070
    cmpg-float v0, v0, v7

    .line 2072
    if-gez v0, :cond_36

    .line 2074
    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    .line 2077
    move-result v0

    .line 2078
    const v9, 0x3f0ccccd    # 0.55f

    .line 2081
    cmpg-float v0, v0, v9

    .line 2083
    if-gez v0, :cond_36

    .line 2085
    const/4 v0, 0x1

    .line 2086
    goto :goto_21

    .line 2087
    :cond_36
    const/4 v0, 0x0

    .line 2088
    :goto_21
    const v9, -0x41333333    # -0.4f

    .line 2091
    cmpg-float v9, v8, v9

    .line 2093
    if-gez v9, :cond_37

    .line 2095
    const v9, 0x3ee66666    # 0.45f

    .line 2098
    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    .line 2101
    move-result v8

    .line 2102
    mul-float/2addr v8, v9

    .line 2103
    cmpl-float v1, v1, v8

    .line 2105
    if-lez v1, :cond_37

    .line 2107
    const/4 v1, 0x1

    .line 2108
    goto :goto_22

    .line 2109
    :cond_37
    const/4 v1, 0x0

    .line 2110
    :goto_22
    if-nez v0, :cond_39

    .line 2112
    if-eqz v1, :cond_38

    .line 2114
    goto :goto_23

    .line 2115
    :cond_38
    move-object/from16 v0, p0

    .line 2117
    move/from16 v12, v25

    .line 2119
    move-object/from16 v11, v32

    .line 2121
    move/from16 v1, v33

    .line 2123
    move-object/from16 v7, v48

    .line 2125
    const/4 v9, 0x1

    .line 2126
    const/4 v10, 0x0

    .line 2127
    goto/16 :goto_1e

    .line 2129
    :cond_39
    :goto_23
    iget v10, v5, Lo/d7;->a:I

    .line 2131
    goto :goto_25

    .line 2132
    :cond_3a
    move/from16 v33, v1

    .line 2134
    move-object/from16 v32, v11

    .line 2136
    :goto_24
    move/from16 v25, v12

    .line 2138
    const/4 v10, -0x1

    .line 2139
    goto :goto_25

    .line 2140
    :cond_3b
    move/from16 v33, v1

    .line 2142
    move-object/from16 v32, v11

    .line 2144
    move-object/from16 v4, v25

    .line 2146
    goto :goto_24

    .line 2147
    :goto_25
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 2150
    move-result-object v0

    .line 2151
    :goto_26
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 2154
    move-result v1

    .line 2155
    const/high16 v2, 0x40000000    # 2.0f

    .line 2157
    if-eqz v1, :cond_3e

    .line 2159
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 2162
    move-result-object v1

    .line 2163
    check-cast v1, Lo/d7;

    .line 2165
    iget v3, v1, Lo/d7;->b:F

    .line 2167
    sub-float v3, v3, v33

    .line 2169
    iget v5, v1, Lo/d7;->d:F

    .line 2171
    sub-float v5, v5, v30

    .line 2173
    float-to-double v8, v3

    .line 2174
    float-to-double v11, v5

    .line 2175
    invoke-static {v8, v9, v11, v12}, Ljava/lang/Math;->hypot(DD)D

    .line 2178
    move-result-wide v13

    .line 2179
    double-to-float v3, v13

    .line 2180
    const v5, 0x3eb33333    # 0.35f

    .line 2183
    cmpg-float v5, v3, v5

    .line 2185
    if-ltz v5, :cond_3d

    .line 2187
    invoke-static {v8, v9, v11, v12}, Ljava/lang/Math;->atan2(DD)D

    .line 2190
    move-result-wide v8

    .line 2191
    double-to-float v5, v8

    .line 2192
    const v8, 0x3f6b851f    # 0.92f

    .line 2195
    div-float v9, v3, v31

    .line 2197
    invoke-static {v8, v9}, Ljava/lang/Math;->min(FF)F

    .line 2200
    move-result v8

    .line 2201
    float-to-double v11, v5

    .line 2202
    invoke-static {v11, v12}, Ljava/lang/Math;->sin(D)D

    .line 2205
    move-result-wide v13

    .line 2206
    double-to-float v5, v13

    .line 2207
    mul-float/2addr v5, v8

    .line 2208
    mul-float v5, v5, v25

    .line 2210
    add-float/2addr v5, v6

    .line 2211
    invoke-static {v11, v12}, Ljava/lang/Math;->cos(D)D

    .line 2214
    move-result-wide v11

    .line 2215
    double-to-float v9, v11

    .line 2216
    mul-float/2addr v9, v8

    .line 2217
    mul-float v9, v9, v25

    .line 2219
    sub-float v8, v27, v9

    .line 2221
    move-object/from16 v9, p0

    .line 2223
    iget-object v11, v9, Lo/g7;->q:Landroid/graphics/Paint;

    .line 2225
    move-object/from16 v12, p1

    .line 2227
    move/from16 v13, v23

    .line 2229
    invoke-virtual {v12, v5, v8, v13, v11}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 2232
    iget v1, v1, Lo/d7;->a:I

    .line 2234
    if-ne v1, v10, :cond_3c

    .line 2236
    const v1, 0x3fe66666    # 1.8f

    .line 2239
    mul-float v7, v15, v1

    .line 2241
    add-float/2addr v7, v13

    .line 2242
    iget-object v11, v9, Lo/g7;->v:Landroid/graphics/Paint;

    .line 2244
    invoke-virtual {v12, v5, v8, v7, v11}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 2247
    goto :goto_27

    .line 2248
    :cond_3c
    const v1, 0x3fe66666    # 1.8f

    .line 2251
    :goto_27
    float-to-int v3, v3

    .line 2252
    new-instance v7, Ljava/lang/StringBuilder;

    .line 2254
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 2257
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2260
    move-object/from16 v3, v59

    .line 2262
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2265
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2268
    move-result-object v7

    .line 2269
    mul-float/2addr v2, v15

    .line 2270
    add-float/2addr v2, v13

    .line 2271
    sub-float/2addr v8, v2

    .line 2272
    iget-object v2, v9, Lo/g7;->s:Landroid/graphics/Paint;

    .line 2274
    invoke-virtual {v12, v7, v5, v8, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 2277
    move/from16 v23, v13

    .line 2279
    goto/16 :goto_26

    .line 2281
    :cond_3d
    move-object/from16 v9, p0

    .line 2283
    move-object/from16 v12, p1

    .line 2285
    goto/16 :goto_26

    .line 2287
    :cond_3e
    move-object/from16 v9, p0

    .line 2289
    move-object/from16 v12, p1

    .line 2291
    if-eqz v32, :cond_45

    .line 2293
    iget v0, v9, Lo/g7;->H:F

    .line 2295
    invoke-static {v0}, Ljava/lang/Float;->isInfinite(F)Z

    .line 2298
    move-result v1

    .line 2299
    if-nez v1, :cond_45

    .line 2301
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    .line 2304
    move-result v0

    .line 2305
    if-nez v0, :cond_45

    .line 2307
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    .line 2310
    move-result v0

    .line 2311
    if-eqz v0, :cond_3f

    .line 2313
    goto/16 :goto_2c

    .line 2315
    :cond_3f
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 2318
    move-result-object v0

    .line 2319
    const v1, 0x7f7fffff    # Float.MAX_VALUE

    .line 2322
    move-object/from16 v3, v24

    .line 2324
    :goto_28
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 2327
    move-result v4

    .line 2328
    if-eqz v4, :cond_44

    .line 2330
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 2333
    move-result-object v4

    .line 2334
    check-cast v4, Lo/d7;

    .line 2336
    iget v5, v4, Lo/d7;->b:F

    .line 2338
    move-object/from16 v6, v32

    .line 2340
    iget v7, v6, Lo/d7;->b:F

    .line 2342
    sub-float/2addr v5, v7

    .line 2343
    iget v7, v4, Lo/d7;->d:F

    .line 2345
    iget v8, v6, Lo/d7;->d:F

    .line 2347
    sub-float/2addr v7, v8

    .line 2348
    float-to-double v10, v5

    .line 2349
    float-to-double v7, v7

    .line 2350
    invoke-static {v10, v11, v7, v8}, Ljava/lang/Math;->hypot(DD)D

    .line 2353
    move-result-wide v13

    .line 2354
    double-to-float v5, v13

    .line 2355
    cmpg-float v13, v5, v21

    .line 2357
    if-ltz v13, :cond_43

    .line 2359
    invoke-static {v10, v11, v7, v8}, Ljava/lang/Math;->atan2(DD)D

    .line 2362
    move-result-wide v7

    .line 2363
    double-to-float v7, v7

    .line 2364
    iget v8, v9, Lo/g7;->H:F

    .line 2366
    sub-float/2addr v7, v8

    .line 2367
    const v8, 0x40490fdb    # (float)Math.PI

    .line 2370
    :goto_29
    cmpl-float v10, v7, v8

    .line 2372
    if-lez v10, :cond_40

    .line 2374
    const v10, 0x40c90fdb

    .line 2377
    sub-float/2addr v7, v10

    .line 2378
    goto :goto_29

    .line 2379
    :cond_40
    const v10, 0x40c90fdb

    .line 2382
    const v11, -0x3fb6f025

    .line 2385
    :goto_2a
    cmpg-float v13, v7, v11

    .line 2387
    if-gez v13, :cond_41

    .line 2389
    add-float/2addr v7, v10

    .line 2390
    goto :goto_2a

    .line 2391
    :cond_41
    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    .line 2394
    move-result v7

    .line 2395
    const v13, 0x3f0efa35

    .line 2398
    cmpl-float v7, v7, v13

    .line 2400
    if-gtz v7, :cond_42

    .line 2402
    cmpg-float v7, v5, v1

    .line 2404
    if-gez v7, :cond_42

    .line 2406
    move-object v3, v4

    .line 2407
    move v1, v5

    .line 2408
    :cond_42
    :goto_2b
    move-object/from16 v32, v6

    .line 2410
    goto :goto_28

    .line 2411
    :cond_43
    const v8, 0x40490fdb    # (float)Math.PI

    .line 2414
    const v10, 0x40c90fdb

    .line 2417
    const v11, -0x3fb6f025

    .line 2420
    const v13, 0x3f0efa35

    .line 2423
    goto :goto_2b

    .line 2424
    :cond_44
    if-nez v3, :cond_46

    .line 2426
    :cond_45
    :goto_2c
    move-object/from16 v1, v24

    .line 2428
    goto :goto_2d

    .line 2429
    :cond_46
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 2432
    move-result-object v0

    .line 2433
    new-instance v1, Lo/Cc;

    .line 2435
    invoke-direct {v1, v3, v0}, Lo/Cc;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2438
    :goto_2d
    if-nez v1, :cond_47

    .line 2440
    goto/16 :goto_2e

    .line 2442
    :cond_47
    iget-object v0, v1, Lo/Cc;->b:Ljava/lang/Object;

    .line 2444
    check-cast v0, Ljava/lang/Number;

    .line 2446
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    .line 2449
    move-result v0

    .line 2450
    float-to-int v0, v0

    .line 2451
    const-string v1, "\u0111\u1ecbch "

    .line 2453
    const-string v3, " m\u00e9t"

    .line 2455
    invoke-static {v1, v0, v3}, Lo/o5;->e(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 2458
    move-result-object v0

    .line 2459
    iget v1, v9, Lo/g7;->a:F

    .line 2461
    mul-float v17, v17, v1

    .line 2463
    mul-float v20, v20, v1

    .line 2465
    const/high16 v3, 0x41300000    # 11.0f

    .line 2467
    mul-float/2addr v3, v1

    .line 2468
    const/high16 v4, 0x40b00000    # 5.5f

    .line 2470
    mul-float/2addr v4, v1

    .line 2471
    iget-object v5, v9, Lo/g7;->D:Landroid/graphics/Paint;

    .line 2473
    const-string v6, "Ph\u00eda tr\u01b0\u1edbc"

    .line 2475
    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    .line 2478
    move-result v7

    .line 2479
    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    .line 2482
    move-result v8

    .line 2483
    add-float v7, v7, v20

    .line 2485
    add-float v10, v7, v17

    .line 2487
    add-float v10, v10, v20

    .line 2489
    add-float/2addr v10, v8

    .line 2490
    mul-float v8, v3, v2

    .line 2492
    add-float/2addr v8, v10

    .line 2493
    invoke-virtual {v5}, Landroid/graphics/Paint;->getTextSize()F

    .line 2496
    move-result v10

    .line 2497
    mul-float/2addr v4, v2

    .line 2498
    add-float/2addr v4, v10

    .line 2499
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    .line 2502
    move-result v2

    .line 2503
    int-to-float v2, v2

    .line 2504
    sub-float/2addr v2, v8

    .line 2505
    mul-float v2, v2, v21

    .line 2507
    const/high16 v10, 0x41000000    # 8.0f

    .line 2509
    mul-float/2addr v1, v10

    .line 2510
    iget-object v10, v9, Lo/g7;->F:Landroid/graphics/RectF;

    .line 2512
    add-float/2addr v8, v2

    .line 2513
    add-float/2addr v4, v1

    .line 2514
    invoke-virtual {v10, v2, v1, v8, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 2517
    iget-object v4, v9, Lo/g7;->C:Landroid/graphics/Paint;

    .line 2519
    invoke-virtual {v12, v10, v1, v1, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 2522
    invoke-virtual {v5}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    .line 2525
    move-result-object v1

    .line 2526
    invoke-virtual {v10}, Landroid/graphics/RectF;->centerY()F

    .line 2529
    move-result v4

    .line 2530
    iget v8, v1, Landroid/graphics/Paint$FontMetrics;->ascent:F

    .line 2532
    iget v1, v1, Landroid/graphics/Paint$FontMetrics;->descent:F

    .line 2534
    add-float/2addr v8, v1

    .line 2535
    mul-float v8, v8, v21

    .line 2537
    sub-float/2addr v4, v8

    .line 2538
    add-float/2addr v2, v3

    .line 2539
    invoke-virtual {v12, v6, v2, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 2542
    add-float/2addr v2, v7

    .line 2543
    invoke-virtual {v10}, Landroid/graphics/RectF;->centerY()F

    .line 2546
    move-result v1

    .line 2547
    iget-object v3, v9, Lo/g7;->G:Landroid/graphics/Path;

    .line 2549
    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    .line 2552
    mul-float v21, v21, v17

    .line 2554
    add-float v6, v21, v2

    .line 2556
    const v7, 0x3ef5c28f    # 0.48f

    .line 2559
    mul-float v7, v7, v17

    .line 2561
    sub-float v7, v1, v7

    .line 2563
    invoke-virtual {v3, v6, v7}, Landroid/graphics/Path;->moveTo(FF)V

    .line 2566
    mul-float v18, v18, v17

    .line 2568
    add-float v1, v18, v1

    .line 2570
    invoke-virtual {v3, v2, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 2573
    add-float v6, v2, v17

    .line 2575
    invoke-virtual {v3, v6, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 2578
    invoke-virtual {v3}, Landroid/graphics/Path;->close()V

    .line 2581
    iget-object v1, v9, Lo/g7;->E:Landroid/graphics/Paint;

    .line 2583
    invoke-virtual {v12, v3, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 2586
    add-float v17, v17, v20

    .line 2588
    add-float v1, v17, v2

    .line 2590
    invoke-virtual {v12, v0, v1, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 2593
    goto :goto_2e

    .line 2594
    :cond_48
    move-object v9, v0

    .line 2595
    :goto_2e
    return-void
.end method

.method public final onMeasure(II)V
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 4
    move-result p1

    .line 5
    if-lez p1, :cond_0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getSuggestedMinimumWidth()I

    .line 11
    move-result p1

    .line 12
    :goto_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 15
    move-result p2

    .line 16
    if-lez p2, :cond_1

    .line 18
    goto :goto_1

    .line 19
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 22
    move-result-object p2

    .line 23
    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 26
    move-result-object p2

    .line 27
    iget p2, p2, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 29
    :goto_1
    const/4 v0, 0x1

    .line 30
    if-ge p1, v0, :cond_2

    .line 32
    move p1, v0

    .line 33
    :cond_2
    if-ge p2, v0, :cond_3

    .line 35
    move p2, v0

    .line 36
    :cond_3
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 39
    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    const-string v0, "event"

    invoke-static {p1, v0}, Lo/x9;->o(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public final setEspEnabled(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lo/g7;->e:Z

    .line 3
    if-ne v0, p1, :cond_0

    .line 5
    invoke-virtual {p0}, Lo/g7;->b()V

    .line 8
    return-void

    .line 9
    :cond_0
    iput-boolean p1, p0, Lo/g7;->e:Z

    .line 11
    invoke-virtual {p0}, Lo/g7;->b()V

    .line 14
    return-void
.end method

.method public final setRadarEnabled(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lo/g7;->d:Z

    .line 3
    if-ne v0, p1, :cond_0

    .line 5
    invoke-virtual {p0}, Lo/g7;->b()V

    .line 8
    return-void

    .line 9
    :cond_0
    iput-boolean p1, p0, Lo/g7;->d:Z

    .line 11
    invoke-virtual {p0}, Lo/g7;->b()V

    .line 14
    return-void
.end method

.method public final setSizePercent(I)V
    .locals 2

    .line 1
    const/16 v0, 0x46

    .line 3
    const/16 v1, 0xb4

    .line 5
    invoke-static {p1, v0, v1}, Lo/Ha;->l(III)I

    .line 8
    move-result p1

    .line 9
    iget v0, p0, Lo/g7;->c:I

    .line 11
    if-ne p1, v0, :cond_0

    .line 13
    invoke-virtual {p0}, Lo/g7;->b()V

    .line 16
    return-void

    .line 17
    :cond_0
    iput p1, p0, Lo/g7;->c:I

    .line 19
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 22
    invoke-virtual {p0}, Lo/g7;->b()V

    .line 25
    return-void
.end method
