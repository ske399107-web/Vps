.class public abstract Lo/Nc;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static volatile a:Ljava/lang/String; = ""

.field public static volatile b:F = NaNf

.field public static volatile c:F = NaNf

.field public static volatile d:J = 0x0L

.field public static final e:[F

.field public static final f:[I

.field public static volatile g:I = 0x0

.field public static volatile h:J = 0x0L

.field public static volatile i:I = 0x1

.field public static volatile j:I = 0x1

.field public static k:I = 0x1

.field public static final l:Ljava/util/HashSet;

.field public static final m:Ljava/util/HashSet;

.field public static final n:Ljava/lang/Object;

.field public static volatile o:J

.field public static volatile p:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const/16 v0, 0x10

    .line 3
    new-array v1, v0, [F

    .line 5
    sput-object v1, Lo/Nc;->e:[F

    .line 7
    new-array v0, v0, [I

    .line 9
    sput-object v0, Lo/Nc;->f:[I

    .line 11
    new-instance v0, Ljava/util/HashSet;

    .line 13
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 16
    sput-object v0, Lo/Nc;->l:Ljava/util/HashSet;

    .line 18
    new-instance v0, Ljava/util/HashSet;

    .line 20
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 23
    sput-object v0, Lo/Nc;->m:Ljava/util/HashSet;

    .line 25
    new-instance v0, Ljava/lang/Object;

    .line 27
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 30
    sput-object v0, Lo/Nc;->n:Ljava/lang/Object;

    .line 32
    return-void
.end method

.method public static a(ILo/Mc;)V
    .locals 25

    .line 1
    move/from16 v0, p0

    .line 3
    move-object/from16 v1, p1

    .line 5
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 8
    move-result-wide v2

    .line 9
    sget v4, Lo/Nc;->g:I

    .line 11
    const/4 v5, 0x0

    .line 12
    const/4 v6, 0x1

    .line 13
    if-eqz v4, :cond_0

    .line 15
    iget v4, v1, Lo/Mc;->e:I

    .line 17
    sget v7, Lo/Nc;->g:I

    .line 19
    if-ne v4, v7, :cond_0

    .line 21
    sget-wide v7, Lo/Nc;->h:J

    .line 23
    sub-long/2addr v2, v7

    .line 24
    const-wide/16 v7, 0x320

    .line 26
    cmp-long v2, v2, v7

    .line 28
    if-gez v2, :cond_0

    .line 30
    move v2, v6

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    move v2, v5

    .line 33
    :goto_0
    sget v3, Lo/Nc;->b:F

    .line 35
    invoke-static {v3}, Ljava/lang/Float;->isInfinite(F)Z

    .line 38
    move-result v4

    .line 39
    if-nez v4, :cond_1

    .line 41
    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    .line 44
    move-result v3

    .line 45
    if-nez v3, :cond_1

    .line 47
    iget v3, v1, Lo/Mc;->a:F

    .line 49
    sget v4, Lo/Nc;->b:F

    .line 51
    sub-float/2addr v3, v4

    .line 52
    float-to-double v3, v3

    .line 53
    iget v7, v1, Lo/Mc;->c:F

    .line 55
    sget v8, Lo/Nc;->c:F

    .line 57
    sub-float/2addr v7, v8

    .line 58
    float-to-double v7, v7

    .line 59
    invoke-static {v3, v4, v7, v8}, Ljava/lang/Math;->hypot(DD)D

    .line 62
    move-result-wide v3

    .line 63
    double-to-float v3, v3

    .line 64
    goto :goto_1

    .line 65
    :cond_1
    const/high16 v3, 0x7fc00000    # Float.NaN

    .line 67
    :goto_1
    if-eqz v2, :cond_2

    .line 69
    sput v0, Lo/Nc;->i:I

    .line 71
    return-void

    .line 72
    :cond_2
    invoke-static {v3}, Ljava/lang/Float;->isInfinite(F)Z

    .line 75
    move-result v2

    .line 76
    if-nez v2, :cond_3

    .line 78
    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    .line 81
    move-result v2

    .line 82
    if-nez v2, :cond_3

    .line 84
    const v2, 0x3ee66666    # 0.45f

    .line 87
    cmpg-float v2, v3, v2

    .line 89
    if-gez v2, :cond_3

    .line 91
    return-void

    .line 92
    :cond_3
    sget v2, Lo/Nc;->i:I

    .line 94
    if-ne v0, v2, :cond_4

    .line 96
    return-void

    .line 97
    :cond_4
    sget v2, Lo/Nc;->j:I

    .line 99
    if-le v0, v2, :cond_5

    .line 101
    sput v0, Lo/Nc;->j:I

    .line 103
    :cond_5
    sget-object v2, Lo/Nc;->l:Ljava/util/HashSet;

    .line 105
    invoke-static/range {p0 .. p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 108
    move-result-object v4

    .line 109
    invoke-virtual {v2, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 112
    sget v2, Lo/Nc;->k:I

    .line 114
    const/4 v4, 0x2

    .line 115
    const/4 v7, 0x4

    .line 116
    const/4 v8, 0x3

    .line 117
    if-ne v2, v8, :cond_8

    .line 119
    sget-object v2, Lo/Ff;->a:Ljava/util/HashSet;

    .line 121
    monitor-enter v2

    .line 122
    :try_start_0
    invoke-virtual {v2}, Ljava/util/HashSet;->isEmpty()Z

    .line 125
    move-result v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 126
    monitor-exit v2

    .line 127
    if-eqz v9, :cond_8

    .line 129
    invoke-static {v3}, Ljava/lang/Float;->isInfinite(F)Z

    .line 132
    move-result v9

    .line 133
    if-nez v9, :cond_8

    .line 135
    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    .line 138
    move-result v9

    .line 139
    if-nez v9, :cond_8

    .line 141
    const/high16 v9, 0x3f000000    # 0.5f

    .line 143
    cmpg-float v9, v9, v3

    .line 145
    if-gtz v9, :cond_8

    .line 147
    const/high16 v9, 0x41e00000    # 28.0f

    .line 149
    cmpg-float v3, v3, v9

    .line 151
    if-gtz v3, :cond_8

    .line 153
    sget-object v3, Lo/Nc;->m:Ljava/util/HashSet;

    .line 155
    invoke-static/range {p0 .. p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 158
    move-result-object v9

    .line 159
    invoke-virtual {v3, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 162
    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    .line 165
    move-result v9

    .line 166
    if-lt v9, v8, :cond_8

    .line 168
    monitor-enter v2

    .line 169
    :try_start_1
    invoke-virtual {v2}, Ljava/util/HashSet;->isEmpty()Z

    .line 172
    move-result v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 173
    monitor-exit v2

    .line 174
    if-nez v9, :cond_6

    .line 176
    goto :goto_3

    .line 177
    :cond_6
    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    .line 180
    move-result v2

    .line 181
    if-gt v4, v2, :cond_8

    .line 183
    if-ge v2, v7, :cond_8

    .line 185
    sget-object v2, Lo/Ff;->c:Ljava/util/HashSet;

    .line 187
    monitor-enter v2

    .line 188
    :try_start_2
    invoke-virtual {v2}, Ljava/util/HashSet;->clear()V

    .line 191
    invoke-virtual {v2, v3}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 194
    monitor-exit v2

    .line 195
    sget-object v2, Lo/i9;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 197
    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    .line 200
    move-result-object v2

    .line 201
    const-string v3, "<get-keys>(...)"

    .line 203
    invoke-static {v2, v3}, Lo/x9;->n(Ljava/lang/Object;Ljava/lang/String;)V

    .line 206
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 209
    move-result-object v2

    .line 210
    :cond_7
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 213
    move-result v3

    .line 214
    if-eqz v3, :cond_8

    .line 216
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 219
    move-result-object v3

    .line 220
    check-cast v3, Ljava/lang/Integer;

    .line 222
    const-string v9, "it"

    .line 224
    invoke-static {v3, v9}, Lo/x9;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 227
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 230
    move-result v3

    .line 231
    invoke-static {v3}, Lo/Ff;->c(I)Z

    .line 234
    move-result v3

    .line 235
    xor-int/2addr v3, v6

    .line 236
    xor-int/2addr v3, v6

    .line 237
    if-ne v3, v6, :cond_7

    .line 239
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 242
    goto :goto_2

    .line 243
    :catchall_0
    move-exception v0

    .line 244
    monitor-exit v2

    .line 245
    throw v0

    .line 246
    :catchall_1
    move-exception v0

    .line 247
    move-object v1, v0

    .line 248
    monitor-exit v2

    .line 249
    throw v1

    .line 250
    :catchall_2
    move-exception v0

    .line 251
    move-object v1, v0

    .line 252
    monitor-exit v2

    .line 253
    throw v1

    .line 254
    :cond_8
    :goto_3
    sget v2, Lo/Nc;->k:I

    .line 256
    if-eq v2, v7, :cond_9

    .line 258
    invoke-static/range {p0 .. p0}, Lo/Ff;->c(I)Z

    .line 261
    move-result v2

    .line 262
    if-eqz v2, :cond_9

    .line 264
    return-void

    .line 265
    :cond_9
    sget v2, Lo/Nc;->k:I

    .line 267
    if-ne v2, v4, :cond_b

    .line 269
    if-gt v6, v0, :cond_a

    .line 271
    if-ge v0, v8, :cond_a

    .line 273
    goto :goto_4

    .line 274
    :cond_a
    return-void

    .line 275
    :cond_b
    :goto_4
    if-ne v2, v6, :cond_d

    .line 277
    if-gt v6, v0, :cond_c

    .line 279
    if-ge v0, v8, :cond_c

    .line 281
    goto :goto_5

    .line 282
    :cond_c
    return-void

    .line 283
    :cond_d
    :goto_5
    sget-object v2, Lo/i9;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 285
    iget v3, v1, Lo/Mc;->a:F

    .line 287
    iget v15, v1, Lo/Mc;->b:F

    .line 289
    iget v14, v1, Lo/Mc;->c:F

    .line 291
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 294
    move-result-wide v21

    .line 295
    sget-object v1, Lo/i9;->c:Lo/d7;

    .line 297
    if-eqz v1, :cond_e

    .line 299
    iget v2, v1, Lo/d7;->b:F

    .line 301
    sub-float v2, v3, v2

    .line 303
    float-to-double v9, v2

    .line 304
    iget v1, v1, Lo/d7;->d:F

    .line 306
    sub-float v1, v14, v1

    .line 308
    float-to-double v1, v1

    .line 309
    invoke-static {v9, v10, v1, v2}, Ljava/lang/Math;->hypot(DD)D

    .line 312
    move-result-wide v1

    .line 313
    const-wide v9, 0x3fd6666666666666L    # 0.35

    .line 318
    cmpg-double v1, v1, v9

    .line 320
    if-gez v1, :cond_e

    .line 322
    goto/16 :goto_8

    .line 324
    :cond_e
    sget-object v13, Lo/i9;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 326
    invoke-static/range {p0 .. p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 329
    move-result-object v1

    .line 330
    invoke-virtual {v13, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    move-result-object v1

    .line 334
    check-cast v1, Lo/d7;

    .line 336
    if-eqz v1, :cond_11

    .line 338
    iget v2, v1, Lo/d7;->b:F

    .line 340
    sub-float v2, v3, v2

    .line 342
    float-to-double v7, v2

    .line 343
    iget v2, v1, Lo/d7;->d:F

    .line 345
    sub-float v2, v14, v2

    .line 347
    float-to-double v9, v2

    .line 348
    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->hypot(DD)D

    .line 351
    move-result-wide v7

    .line 352
    double-to-float v2, v7

    .line 353
    const/high16 v7, 0x41000000    # 8.0f

    .line 355
    cmpl-float v7, v2, v7

    .line 357
    if-lez v7, :cond_f

    .line 359
    invoke-static/range {p0 .. p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 362
    move-result-object v11

    .line 363
    new-instance v12, Lo/d7;

    .line 365
    const/4 v6, 0x0

    .line 366
    const/4 v7, 0x0

    .line 367
    const/4 v8, 0x0

    .line 368
    move-object v1, v12

    .line 369
    move/from16 v2, p0

    .line 371
    move v4, v15

    .line 372
    move v5, v14

    .line 373
    move-wide/from16 v9, v21

    .line 375
    invoke-direct/range {v1 .. v10}, Lo/d7;-><init>(IFFFFFFJ)V

    .line 378
    invoke-virtual {v13, v11, v12}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    sput-wide v21, Lo/i9;->a:J

    .line 383
    goto/16 :goto_8

    .line 385
    :cond_f
    iget-wide v7, v1, Lo/d7;->h:J

    .line 387
    sub-long v18, v21, v7

    .line 389
    const-wide/16 v7, 0x8

    .line 391
    cmp-long v7, v18, v7

    .line 393
    if-gez v7, :cond_10

    .line 395
    const v7, 0x3da3d70a    # 0.08f

    .line 398
    cmpg-float v7, v2, v7

    .line 400
    if-gez v7, :cond_10

    .line 402
    goto/16 :goto_8

    .line 404
    :cond_10
    iget v9, v1, Lo/d7;->b:F

    .line 406
    iget v10, v1, Lo/d7;->c:F

    .line 408
    iget v11, v1, Lo/d7;->d:F

    .line 410
    iget v12, v1, Lo/d7;->e:F

    .line 412
    iget v7, v1, Lo/d7;->f:F

    .line 414
    iget v1, v1, Lo/d7;->g:F

    .line 416
    move-object v8, v13

    .line 417
    move v13, v7

    .line 418
    move/from16 v23, v14

    .line 420
    move v14, v1

    .line 421
    move/from16 v24, v15

    .line 423
    move v15, v3

    .line 424
    move/from16 v16, v24

    .line 426
    move/from16 v17, v23

    .line 428
    move/from16 v20, v2

    .line 430
    invoke-static/range {v9 .. v20}, Lo/i9;->e(FFFFFFFFFJF)[F

    .line 433
    move-result-object v1

    .line 434
    aget v2, v1, v5

    .line 436
    aget v5, v1, v6

    .line 438
    aget v1, v1, v4

    .line 440
    move v6, v2

    .line 441
    move v7, v5

    .line 442
    move-object v11, v8

    .line 443
    move v8, v1

    .line 444
    goto :goto_7

    .line 445
    :cond_11
    move-object v11, v13

    .line 446
    move/from16 v23, v14

    .line 448
    move/from16 v24, v15

    .line 450
    invoke-virtual {v11}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    .line 453
    move-result v1

    .line 454
    sget v2, Lo/Nc;->k:I

    .line 456
    invoke-static {v2}, Lo/Ve;->C(I)I

    .line 459
    move-result v2

    .line 460
    if-eqz v2, :cond_14

    .line 462
    if-eq v2, v6, :cond_14

    .line 464
    if-eq v2, v4, :cond_13

    .line 466
    if-ne v2, v8, :cond_12

    .line 468
    const/16 v6, 0x32

    .line 470
    goto :goto_6

    .line 471
    :cond_12
    new-instance v0, Lo/S7;

    .line 473
    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    .line 476
    throw v0

    .line 477
    :cond_13
    move v6, v7

    .line 478
    :cond_14
    :goto_6
    if-lt v1, v6, :cond_15

    .line 480
    goto :goto_8

    .line 481
    :cond_15
    const/4 v1, 0x0

    .line 482
    move v6, v1

    .line 483
    move v7, v6

    .line 484
    move v8, v7

    .line 485
    :goto_7
    invoke-static/range {p0 .. p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 488
    move-result-object v12

    .line 489
    new-instance v13, Lo/d7;

    .line 491
    move-object v1, v13

    .line 492
    move/from16 v2, p0

    .line 494
    move/from16 v4, v24

    .line 496
    move/from16 v5, v23

    .line 498
    move-wide/from16 v9, v21

    .line 500
    invoke-direct/range {v1 .. v10}, Lo/d7;-><init>(IFFFFFFJ)V

    .line 503
    invoke-virtual {v11, v12, v13}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 506
    sput-wide v21, Lo/i9;->a:J

    .line 508
    :goto_8
    return-void
.end method

.method public static b([BI)Z
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 3
    add-int/lit8 v1, p1, 0x4

    .line 5
    array-length v2, v0

    .line 6
    const/4 v3, 0x0

    .line 7
    if-lt v1, v2, :cond_0

    .line 9
    return v3

    .line 10
    :cond_0
    aget-byte v1, v0, p1

    .line 12
    and-int/lit16 v1, v1, 0xff

    .line 14
    if-eqz v1, :cond_1

    .line 16
    return v3

    .line 17
    :cond_1
    add-int/lit8 v1, p1, 0x1

    .line 19
    aget-byte v1, v0, v1

    .line 21
    and-int/lit16 v1, v1, 0xff

    .line 23
    const/4 v2, 0x2

    .line 24
    if-gt v2, v1, :cond_14

    .line 26
    const/16 v4, 0x41

    .line 28
    if-ge v1, v4, :cond_14

    .line 30
    add-int/lit8 v4, p1, 0x2

    .line 32
    aget-byte v5, v0, v4

    .line 34
    and-int/lit16 v5, v5, 0xff

    .line 36
    const/4 v6, 0x3

    .line 37
    add-int/lit8 v7, p1, 0x3

    .line 39
    invoke-static {v0, v7}, Lo/Nc;->i([BI)Lo/Mc;

    .line 42
    move-result-object v7

    .line 43
    if-nez v7, :cond_2

    .line 45
    return v3

    .line 46
    :cond_2
    const/4 v8, 0x1

    .line 47
    const/4 v9, 0x4

    .line 48
    const/16 v10, 0x33

    .line 50
    const/16 v11, 0x9

    .line 52
    if-gt v11, v5, :cond_4

    .line 54
    if-ge v5, v10, :cond_4

    .line 56
    sget v0, Lo/Nc;->k:I

    .line 58
    if-ne v0, v9, :cond_3

    .line 60
    goto :goto_0

    .line 61
    :cond_3
    sput v9, Lo/Nc;->k:I

    .line 63
    new-instance v0, Lo/Y5;

    .line 65
    const/4 v1, 0x2

    .line 66
    invoke-direct {v0, v1}, Lo/Y5;-><init>(I)V

    .line 69
    invoke-static {v0}, Lo/i9;->d(Lo/F8;)V

    .line 72
    :goto_0
    invoke-static {v5, v7}, Lo/Nc;->a(ILo/Mc;)V

    .line 75
    return v8

    .line 76
    :cond_4
    const/16 v12, 0x10

    .line 78
    if-lt v1, v12, :cond_7

    .line 80
    sget v0, Lo/Nc;->k:I

    .line 82
    if-ne v0, v9, :cond_5

    .line 84
    goto :goto_1

    .line 85
    :cond_5
    sput v9, Lo/Nc;->k:I

    .line 87
    new-instance v0, Lo/Y5;

    .line 89
    const/4 v1, 0x2

    .line 90
    invoke-direct {v0, v1}, Lo/Y5;-><init>(I)V

    .line 93
    invoke-static {v0}, Lo/i9;->d(Lo/F8;)V

    .line 96
    :goto_1
    if-gt v8, v5, :cond_6

    .line 98
    if-ge v5, v10, :cond_6

    .line 100
    invoke-static {v5, v7}, Lo/Nc;->a(ILo/Mc;)V

    .line 103
    :cond_6
    return v8

    .line 104
    :cond_7
    rem-int/lit8 v10, v1, 0x2

    .line 106
    if-nez v10, :cond_14

    .line 108
    if-gt v8, v5, :cond_14

    .line 110
    if-ge v5, v11, :cond_14

    .line 112
    sget v10, Lo/Nc;->k:I

    .line 114
    if-eq v10, v9, :cond_a

    .line 116
    if-ge v1, v9, :cond_8

    .line 118
    if-gt v6, v5, :cond_a

    .line 120
    if-ge v5, v11, :cond_a

    .line 122
    :cond_8
    if-eq v10, v6, :cond_a

    .line 124
    if-ne v10, v9, :cond_9

    .line 126
    goto :goto_2

    .line 127
    :cond_9
    sput v6, Lo/Nc;->k:I

    .line 129
    :cond_a
    :goto_2
    sget v10, Lo/Nc;->k:I

    .line 131
    if-ne v10, v6, :cond_12

    .line 133
    div-int/2addr v1, v2

    .line 134
    const/16 v6, 0x8

    .line 136
    invoke-static {v1, v8, v6}, Lo/Ha;->l(III)I

    .line 139
    move-result v1

    .line 140
    move v10, v3

    .line 141
    :goto_3
    if-ge v10, v1, :cond_11

    .line 143
    add-int/lit8 v12, v4, 0x8

    .line 145
    array-length v13, v0

    .line 146
    sub-int/2addr v13, v2

    .line 147
    if-ge v12, v13, :cond_11

    .line 149
    aget-byte v12, v0, v4

    .line 151
    and-int/lit16 v12, v12, 0xff

    .line 153
    if-gt v8, v12, :cond_11

    .line 155
    if-ge v12, v11, :cond_11

    .line 157
    add-int/lit8 v4, v4, 0x1

    .line 159
    invoke-static {v0, v4}, Lo/Nc;->i([BI)Lo/Mc;

    .line 162
    move-result-object v4

    .line 163
    if-nez v4, :cond_b

    .line 165
    goto/16 :goto_7

    .line 167
    :cond_b
    invoke-static {v12, v4}, Lo/Nc;->a(ILo/Mc;)V

    .line 170
    add-int/lit8 v10, v10, 0x1

    .line 172
    array-length v12, v0

    .line 173
    sub-int/2addr v12, v9

    .line 174
    iget v4, v4, Lo/Mc;->d:I

    .line 176
    add-int/lit8 v13, v4, 0x24

    .line 178
    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    .line 181
    move-result v12

    .line 182
    if-gez v4, :cond_c

    .line 184
    move v4, v3

    .line 185
    :cond_c
    :goto_4
    if-gt v4, v12, :cond_10

    .line 187
    aget-byte v13, v0, v4

    .line 189
    and-int/lit16 v13, v13, 0xff

    .line 191
    add-int/lit8 v14, v4, 0x1

    .line 193
    aget-byte v15, v0, v14

    .line 195
    and-int/lit16 v15, v15, 0xff

    .line 197
    add-int/lit8 v16, v4, 0x2

    .line 199
    aget-byte v9, v0, v16

    .line 201
    and-int/lit16 v9, v9, 0xff

    .line 203
    add-int/lit8 v16, v4, 0x3

    .line 205
    aget-byte v11, v0, v16

    .line 207
    and-int/lit16 v11, v11, 0xff

    .line 209
    if-nez v13, :cond_e

    .line 211
    if-eqz v15, :cond_d

    .line 213
    if-eq v15, v8, :cond_d

    .line 215
    if-eq v15, v2, :cond_d

    .line 217
    const/4 v2, 0x6

    .line 218
    if-eq v15, v2, :cond_d

    .line 220
    if-ne v15, v6, :cond_e

    .line 222
    :cond_d
    if-nez v9, :cond_e

    .line 224
    if-nez v11, :cond_e

    .line 226
    goto :goto_5

    .line 227
    :cond_e
    if-ne v13, v8, :cond_f

    .line 229
    if-nez v15, :cond_f

    .line 231
    if-nez v9, :cond_f

    .line 233
    if-nez v11, :cond_f

    .line 235
    :goto_5
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 238
    move-result-object v2

    .line 239
    goto :goto_6

    .line 240
    :cond_f
    move v4, v14

    .line 241
    const/4 v2, 0x2

    .line 242
    const/4 v9, 0x4

    .line 243
    const/16 v11, 0x9

    .line 245
    goto :goto_4

    .line 246
    :cond_10
    const/4 v2, 0x0

    .line 247
    :goto_6
    if-eqz v2, :cond_11

    .line 249
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 252
    move-result v2

    .line 253
    add-int/lit8 v4, v2, 0x4

    .line 255
    add-int/lit8 v2, v2, 0x5

    .line 257
    array-length v9, v0

    .line 258
    if-ge v2, v9, :cond_11

    .line 260
    const/4 v2, 0x2

    .line 261
    const/4 v9, 0x4

    .line 262
    const/16 v11, 0x9

    .line 264
    goto :goto_3

    .line 265
    :cond_11
    :goto_7
    if-nez v10, :cond_13

    .line 267
    invoke-static {v5, v7}, Lo/Nc;->a(ILo/Mc;)V

    .line 270
    goto :goto_8

    .line 271
    :cond_12
    invoke-static {v5, v7}, Lo/Nc;->a(ILo/Mc;)V

    .line 274
    :cond_13
    :goto_8
    return v8

    .line 275
    :cond_14
    return v3
.end method

.method public static c(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    sget-object v0, Lo/Nc;->a:Ljava/lang/String;

    .line 10
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_1

    .line 16
    :goto_0
    return-void

    .line 17
    :cond_1
    sget-object v0, Lo/Nc;->n:Ljava/lang/Object;

    .line 19
    monitor-enter v0

    .line 20
    :try_start_0
    sget-object v1, Lo/Nc;->a:Ljava/lang/String;

    .line 22
    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 25
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    if-eqz v1, :cond_2

    .line 28
    monitor-exit v0

    .line 29
    return-void

    .line 30
    :cond_2
    :try_start_1
    sget-object v1, Lo/Nc;->a:Ljava/lang/String;

    .line 32
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 35
    move-result v1

    .line 36
    if-lez v1, :cond_3

    .line 38
    invoke-static {}, Lo/i9;->a()V

    .line 41
    sget-object v1, Lo/Hb;->a:[B

    .line 43
    invoke-static {}, Lo/Hb;->j()V

    .line 46
    goto :goto_1

    .line 47
    :catchall_0
    move-exception p0

    .line 48
    goto :goto_2

    .line 49
    :cond_3
    :goto_1
    sput-object p0, Lo/Nc;->a:Ljava/lang/String;

    .line 51
    const/high16 p0, 0x7fc00000    # Float.NaN

    .line 53
    sput p0, Lo/Nc;->b:F

    .line 55
    sput p0, Lo/Nc;->c:F

    .line 57
    const/4 p0, 0x0

    .line 58
    sput p0, Lo/Nc;->g:I

    .line 60
    const-wide/16 v1, 0x0

    .line 62
    sput-wide v1, Lo/Nc;->h:J

    .line 64
    const/4 p0, 0x1

    .line 65
    sput p0, Lo/Nc;->i:I

    .line 67
    sput p0, Lo/Nc;->j:I

    .line 69
    sput p0, Lo/Nc;->k:I

    .line 71
    sget-object p0, Lo/Nc;->l:Ljava/util/HashSet;

    .line 73
    invoke-virtual {p0}, Ljava/util/HashSet;->clear()V

    .line 76
    sget-object p0, Lo/Nc;->m:Ljava/util/HashSet;

    .line 78
    invoke-virtual {p0}, Ljava/util/HashSet;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 81
    monitor-exit v0

    .line 82
    return-void

    .line 83
    :goto_2
    monitor-exit v0

    .line 84
    throw p0
.end method

.method public static d([B)V
    .locals 35

    .line 1
    move-object/from16 v0, p0

    .line 3
    const/4 v2, 0x2

    .line 4
    const/4 v3, 0x1

    .line 5
    array-length v4, v0

    .line 6
    add-int/lit8 v4, v4, -0x8

    .line 8
    const/16 v5, 0x14

    .line 10
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    .line 13
    move-result v4

    .line 14
    const/4 v6, 0x0

    .line 15
    :goto_0
    if-gt v6, v4, :cond_1

    .line 17
    aget-byte v8, v0, v6

    .line 19
    and-int/lit16 v8, v8, 0xff

    .line 21
    const/16 v9, 0x81

    .line 23
    if-gt v9, v8, :cond_0

    .line 25
    const/16 v9, 0x89

    .line 27
    if-ge v8, v9, :cond_0

    .line 29
    add-int/lit8 v8, v6, 0x1

    .line 31
    aget-byte v8, v0, v8

    .line 33
    and-int/lit16 v8, v8, 0xff

    .line 35
    const/16 v9, 0x80

    .line 37
    if-ne v8, v9, :cond_0

    .line 39
    add-int/lit8 v8, v6, 0x2

    .line 41
    aget-byte v8, v0, v8

    .line 43
    and-int/lit16 v8, v8, 0xff

    .line 45
    if-ne v8, v9, :cond_0

    .line 47
    goto :goto_1

    .line 48
    :cond_0
    add-int/2addr v6, v3

    .line 49
    goto :goto_0

    .line 50
    :cond_1
    const/4 v6, -0x1

    .line 51
    :goto_1
    if-ltz v6, :cond_29

    .line 53
    array-length v4, v0

    .line 54
    add-int/lit8 v8, v6, 0xc

    .line 56
    if-ge v4, v8, :cond_2

    .line 58
    goto/16 :goto_17

    .line 60
    :cond_2
    aget-byte v4, v0, v6

    .line 62
    and-int/lit8 v4, v4, 0x7f

    .line 64
    if-gt v3, v4, :cond_3

    .line 66
    const/16 v8, 0x9

    .line 68
    if-ge v4, v8, :cond_3

    .line 70
    sput v4, Lo/Nc;->i:I

    .line 72
    :cond_3
    sget-object v4, Lo/Hb;->a:[B

    .line 74
    invoke-static {v6, v0, v3}, Lo/Hb;->d(I[BZ)V

    .line 77
    add-int/lit8 v6, v6, 0x4

    .line 79
    invoke-static {v0, v6}, Lo/Nc;->h([BI)Lo/Lc;

    .line 82
    move-result-object v4

    .line 83
    if-nez v4, :cond_4

    .line 85
    :goto_2
    const/4 v9, 0x0

    .line 86
    goto/16 :goto_14

    .line 88
    :cond_4
    iget v10, v4, Lo/Lc;->b:I

    .line 90
    invoke-static {v0, v10}, Lo/Nc;->h([BI)Lo/Lc;

    .line 93
    move-result-object v10

    .line 94
    if-nez v10, :cond_5

    .line 96
    goto :goto_2

    .line 97
    :cond_5
    iget v11, v10, Lo/Lc;->b:I

    .line 99
    invoke-static {v0, v11}, Lo/Nc;->h([BI)Lo/Lc;

    .line 102
    move-result-object v11

    .line 103
    if-nez v11, :cond_6

    .line 105
    goto :goto_2

    .line 106
    :cond_6
    iget v12, v11, Lo/Lc;->b:I

    .line 108
    iget-wide v13, v4, Lo/Lc;->a:J

    .line 110
    invoke-static {v13, v14}, Lo/Nc;->k(J)I

    .line 113
    move-result v4

    .line 114
    int-to-float v4, v4

    .line 115
    const v13, 0x3a83126f    # 0.001f

    .line 118
    mul-float v15, v4, v13

    .line 120
    iget-wide v9, v10, Lo/Lc;->a:J

    .line 122
    invoke-static {v9, v10}, Lo/Nc;->k(J)I

    .line 125
    move-result v9

    .line 126
    int-to-float v9, v9

    .line 127
    mul-float/2addr v9, v13

    .line 128
    iget-wide v10, v11, Lo/Lc;->a:J

    .line 130
    invoke-static {v10, v11}, Lo/Nc;->k(J)I

    .line 133
    move-result v10

    .line 134
    int-to-float v10, v10

    .line 135
    mul-float/2addr v10, v13

    .line 136
    invoke-static {v15, v10}, Lo/Nc;->g(FF)Z

    .line 139
    move-result v11

    .line 140
    if-nez v11, :cond_7

    .line 142
    goto :goto_2

    .line 143
    :cond_7
    const/high16 v11, -0x3f600000    # -5.0f

    .line 145
    cmpg-float v11, v11, v9

    .line 147
    if-gtz v11, :cond_8

    .line 149
    const/high16 v11, 0x43c80000    # 400.0f

    .line 151
    cmpg-float v11, v9, v11

    .line 153
    if-gtz v11, :cond_8

    .line 155
    :goto_3
    move/from16 v16, v9

    .line 157
    goto :goto_4

    .line 158
    :cond_8
    const v9, 0x3fcccccd    # 1.6f

    .line 161
    goto :goto_3

    .line 162
    :goto_4
    invoke-static {v0, v12}, Lo/Nc;->h([BI)Lo/Lc;

    .line 165
    move-result-object v9

    .line 166
    if-eqz v9, :cond_1b

    .line 168
    iget v11, v9, Lo/Lc;->b:I

    .line 170
    invoke-static {v0, v11}, Lo/Nc;->h([BI)Lo/Lc;

    .line 173
    move-result-object v11

    .line 174
    if-eqz v11, :cond_1b

    .line 176
    iget v13, v11, Lo/Lc;->b:I

    .line 178
    invoke-static {v0, v13}, Lo/Nc;->h([BI)Lo/Lc;

    .line 181
    move-result-object v13

    .line 182
    if-eqz v13, :cond_1b

    .line 184
    iget v14, v13, Lo/Lc;->b:I

    .line 186
    iget-wide v7, v9, Lo/Lc;->a:J

    .line 188
    invoke-static {v7, v8}, Lo/Nc;->k(J)I

    .line 191
    move-result v7

    .line 192
    const/16 v8, -0x78

    .line 194
    if-gt v8, v7, :cond_9

    .line 196
    const/16 v8, 0x79

    .line 198
    if-ge v7, v8, :cond_9

    .line 200
    int-to-float v7, v7

    .line 201
    const v8, 0x3c8efa35

    .line 204
    mul-float/2addr v7, v8

    .line 205
    goto :goto_5

    .line 206
    :cond_9
    const/high16 v7, 0x7fc00000    # Float.NaN

    .line 208
    :goto_5
    move v8, v14

    .line 209
    const/4 v9, 0x0

    .line 210
    :goto_6
    array-length v4, v0

    .line 211
    sget-object v19, Lo/Nc;->f:[I

    .line 213
    sget-object v20, Lo/Nc;->e:[F

    .line 215
    const/16 v5, 0x10

    .line 217
    if-ge v8, v4, :cond_b

    .line 219
    if-ge v9, v5, :cond_b

    .line 221
    invoke-static {v0, v8}, Lo/Nc;->h([BI)Lo/Lc;

    .line 224
    move-result-object v4

    .line 225
    if-nez v4, :cond_a

    .line 227
    goto :goto_7

    .line 228
    :cond_a
    iget-wide v1, v4, Lo/Lc;->a:J

    .line 230
    const-wide v21, 0xffffffffL

    .line 235
    and-long v1, v1, v21

    .line 237
    long-to-int v1, v1

    .line 238
    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 241
    move-result v1

    .line 242
    aput v1, v20, v9

    .line 244
    iget v1, v4, Lo/Lc;->b:I

    .line 246
    aput v1, v19, v9

    .line 248
    add-int/2addr v9, v3

    .line 249
    move v8, v1

    .line 250
    const/4 v2, 0x2

    .line 251
    goto :goto_6

    .line 252
    :cond_b
    :goto_7
    array-length v1, v0

    .line 253
    add-int/lit8 v1, v1, -0x6

    .line 255
    move v4, v14

    .line 256
    const/4 v2, -0x1

    .line 257
    :goto_8
    if-gt v4, v1, :cond_d

    .line 259
    aget-byte v17, v0, v4

    .line 261
    if-nez v17, :cond_c

    .line 263
    add-int/lit8 v17, v4, 0x1

    .line 265
    aget-byte v17, v0, v17

    .line 267
    if-nez v17, :cond_c

    .line 269
    const/16 v17, 0x2

    .line 271
    add-int/lit8 v21, v4, 0x2

    .line 273
    aget-byte v8, v0, v21

    .line 275
    and-int/lit16 v8, v8, 0xff

    .line 277
    const/16 v5, 0xe

    .line 279
    if-gt v5, v8, :cond_c

    .line 281
    const/16 v5, 0x21

    .line 283
    if-ge v8, v5, :cond_c

    .line 285
    const/4 v5, 0x3

    .line 286
    add-int/lit8 v17, v4, 0x3

    .line 288
    aget-byte v5, v0, v17

    .line 290
    if-nez v5, :cond_c

    .line 292
    add-int/lit8 v5, v4, 0x4

    .line 294
    aget-byte v5, v0, v5

    .line 296
    if-nez v5, :cond_c

    .line 298
    add-int/lit8 v5, v4, 0x5

    .line 300
    aget-byte v5, v0, v5

    .line 302
    if-nez v5, :cond_c

    .line 304
    move v2, v4

    .line 305
    :cond_c
    add-int/2addr v4, v3

    .line 306
    const/16 v5, 0x10

    .line 308
    goto :goto_8

    .line 309
    :cond_d
    if-gez v2, :cond_f

    .line 311
    :cond_e
    move/from16 v17, v6

    .line 313
    const/high16 v1, 0x7fc00000    # Float.NaN

    .line 315
    goto/16 :goto_d

    .line 317
    :cond_f
    const/4 v1, 0x0

    .line 318
    :goto_9
    const/4 v4, 0x2

    .line 319
    add-int/lit8 v5, v1, 0x2

    .line 321
    if-ge v5, v9, :cond_e

    .line 323
    aget v4, v19, v5

    .line 325
    if-ne v4, v2, :cond_16

    .line 327
    aget v4, v20, v1

    .line 329
    add-int/lit8 v17, v1, 0x1

    .line 331
    aget v17, v20, v17

    .line 333
    aget v5, v20, v5

    .line 335
    mul-float v22, v4, v4

    .line 337
    mul-float v23, v17, v17

    .line 339
    add-float v23, v23, v22

    .line 341
    mul-float v22, v5, v5

    .line 343
    add-float v8, v22, v23

    .line 345
    move/from16 v23, v4

    .line 347
    float-to-double v3, v8

    .line 348
    move/from16 v25, v9

    .line 350
    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    .line 353
    move-result-wide v8

    .line 354
    double-to-float v8, v8

    .line 355
    invoke-static/range {v23 .. v23}, Ljava/lang/Float;->isInfinite(F)Z

    .line 358
    move-result v9

    .line 359
    if-nez v9, :cond_15

    .line 361
    invoke-static/range {v23 .. v23}, Ljava/lang/Float;->isNaN(F)Z

    .line 364
    move-result v9

    .line 365
    if-nez v9, :cond_15

    .line 367
    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->isInfinite(F)Z

    .line 370
    move-result v9

    .line 371
    if-nez v9, :cond_15

    .line 373
    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->isNaN(F)Z

    .line 376
    move-result v9

    .line 377
    if-nez v9, :cond_15

    .line 379
    invoke-static {v5}, Ljava/lang/Float;->isInfinite(F)Z

    .line 382
    move-result v9

    .line 383
    if-nez v9, :cond_15

    .line 385
    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    .line 388
    move-result v9

    .line 389
    if-nez v9, :cond_15

    .line 391
    const v9, 0x3f1eb852    # 0.62f

    .line 394
    cmpg-float v9, v9, v8

    .line 396
    if-gtz v9, :cond_15

    .line 398
    const v9, 0x3fb0a3d7    # 1.38f

    .line 401
    cmpg-float v8, v8, v9

    .line 403
    if-gtz v8, :cond_15

    .line 405
    sget-object v1, Lo/i9;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 407
    invoke-static/range {v23 .. v23}, Ljava/lang/Float;->isInfinite(F)Z

    .line 410
    move-result v1

    .line 411
    const v2, 0x3df5c28f    # 0.12f

    .line 414
    if-nez v1, :cond_10

    .line 416
    invoke-static/range {v23 .. v23}, Ljava/lang/Float;->isNaN(F)Z

    .line 419
    move-result v1

    .line 420
    if-nez v1, :cond_10

    .line 422
    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->isInfinite(F)Z

    .line 425
    move-result v1

    .line 426
    if-nez v1, :cond_10

    .line 428
    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->isNaN(F)Z

    .line 431
    move-result v1

    .line 432
    if-nez v1, :cond_10

    .line 434
    invoke-static {v5}, Ljava/lang/Float;->isInfinite(F)Z

    .line 437
    move-result v1

    .line 438
    if-nez v1, :cond_10

    .line 440
    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    .line 443
    move-result v1

    .line 444
    if-nez v1, :cond_10

    .line 446
    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    .line 449
    move-result-wide v3

    .line 450
    double-to-float v1, v3

    .line 451
    cmpg-float v3, v1, v2

    .line 453
    if-gez v3, :cond_11

    .line 455
    :cond_10
    :goto_a
    move/from16 v1, v23

    .line 457
    goto :goto_b

    .line 458
    :cond_11
    const/high16 v3, 0x3f800000    # 1.0f

    .line 460
    div-float/2addr v3, v1

    .line 461
    mul-float v4, v23, v3

    .line 463
    sput v4, Lo/i9;->f:F

    .line 465
    mul-float v17, v17, v3

    .line 467
    sput v17, Lo/i9;->g:F

    .line 469
    mul-float/2addr v3, v5

    .line 470
    sput v3, Lo/i9;->h:F

    .line 472
    sget v1, Lo/i9;->f:F

    .line 474
    float-to-double v3, v1

    .line 475
    sget v1, Lo/i9;->h:F

    .line 477
    float-to-double v8, v1

    .line 478
    invoke-static {v3, v4, v8, v9}, Ljava/lang/Math;->hypot(DD)D

    .line 481
    move-result-wide v3

    .line 482
    double-to-float v1, v3

    .line 483
    cmpl-float v3, v1, v2

    .line 485
    if-ltz v3, :cond_12

    .line 487
    sget v3, Lo/i9;->f:F

    .line 489
    float-to-double v3, v3

    .line 490
    sget v8, Lo/i9;->h:F

    .line 492
    float-to-double v8, v8

    .line 493
    invoke-static {v3, v4, v8, v9}, Ljava/lang/Math;->atan2(DD)D

    .line 496
    move-result-wide v3

    .line 497
    double-to-float v3, v3

    .line 498
    sput v3, Lo/i9;->d:F

    .line 500
    :cond_12
    sget v3, Lo/i9;->g:F

    .line 502
    float-to-double v3, v3

    .line 503
    const v8, 0x38d1b717    # 1.0E-4f

    .line 506
    cmpg-float v9, v1, v8

    .line 508
    if-gez v9, :cond_13

    .line 510
    move v1, v8

    .line 511
    :cond_13
    float-to-double v8, v1

    .line 512
    invoke-static {v3, v4, v8, v9}, Ljava/lang/Math;->atan2(DD)D

    .line 515
    move-result-wide v3

    .line 516
    double-to-float v1, v3

    .line 517
    sput v1, Lo/i9;->e:F

    .line 519
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 522
    goto :goto_a

    .line 523
    :goto_b
    float-to-double v3, v1

    .line 524
    float-to-double v8, v5

    .line 525
    move/from16 v17, v6

    .line 527
    invoke-static {v3, v4, v8, v9}, Ljava/lang/Math;->hypot(DD)D

    .line 530
    move-result-wide v5

    .line 531
    double-to-float v1, v5

    .line 532
    cmpl-float v1, v1, v2

    .line 534
    if-ltz v1, :cond_14

    .line 536
    invoke-static {v3, v4, v8, v9}, Ljava/lang/Math;->atan2(DD)D

    .line 539
    move-result-wide v1

    .line 540
    double-to-float v1, v1

    .line 541
    goto :goto_d

    .line 542
    :cond_14
    sget v1, Lo/i9;->d:F

    .line 544
    goto :goto_d

    .line 545
    :cond_15
    move/from16 v17, v6

    .line 547
    const/4 v3, 0x1

    .line 548
    goto :goto_c

    .line 549
    :cond_16
    move/from16 v17, v6

    .line 551
    move/from16 v25, v9

    .line 553
    :goto_c
    add-int/2addr v1, v3

    .line 554
    move/from16 v6, v17

    .line 556
    move/from16 v9, v25

    .line 558
    goto/16 :goto_9

    .line 560
    :goto_d
    iget-wide v2, v11, Lo/Lc;->a:J

    .line 562
    iget-wide v4, v13, Lo/Lc;->a:J

    .line 564
    invoke-static {v4, v5}, Lo/Nc;->k(J)I

    .line 567
    move-result v4

    .line 568
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 571
    move-result-wide v5

    .line 572
    sget-wide v8, Lo/Nc;->d:J

    .line 574
    sub-long v8, v5, v8

    .line 576
    const-wide/16 v25, 0x5dc

    .line 578
    cmp-long v8, v8, v25

    .line 580
    if-gez v8, :cond_17

    .line 582
    goto/16 :goto_12

    .line 584
    :cond_17
    sput-wide v5, Lo/Nc;->d:J

    .line 586
    array-length v5, v0

    .line 587
    sub-int/2addr v5, v14

    .line 588
    const/16 v6, 0x30

    .line 590
    const/4 v8, 0x0

    .line 591
    invoke-static {v5, v8, v6}, Lo/Ha;->l(III)I

    .line 594
    move-result v5

    .line 595
    new-instance v6, Ljava/lang/StringBuilder;

    .line 597
    const/4 v8, 0x2

    .line 598
    mul-int/lit8 v9, v5, 0x2

    .line 600
    invoke-direct {v6, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 603
    add-int/2addr v5, v14

    .line 604
    :goto_e
    if-ge v14, v5, :cond_18

    .line 606
    aget-byte v8, v0, v14

    .line 608
    and-int/lit16 v9, v8, 0xff

    .line 610
    shr-int/lit8 v9, v9, 0x4

    .line 612
    const/16 v11, 0x10

    .line 614
    invoke-static {v9, v11}, Ljava/lang/Character;->forDigit(II)C

    .line 617
    move-result v9

    .line 618
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 621
    and-int/lit8 v8, v8, 0xf

    .line 623
    invoke-static {v8, v11}, Ljava/lang/Character;->forDigit(II)C

    .line 626
    move-result v8

    .line 627
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 630
    const/4 v8, 0x1

    .line 631
    add-int/2addr v14, v8

    .line 632
    goto :goto_e

    .line 633
    :cond_18
    invoke-static {v1}, Ljava/lang/Float;->isInfinite(F)Z

    .line 636
    move-result v5

    .line 637
    const v8, 0x40490fdb    # (float)Math.PI

    .line 640
    const/high16 v9, 0x43340000    # 180.0f

    .line 642
    if-nez v5, :cond_19

    .line 644
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    .line 647
    move-result v5

    .line 648
    if-nez v5, :cond_19

    .line 650
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 652
    mul-float v11, v1, v9

    .line 654
    div-float/2addr v11, v8

    .line 655
    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 658
    move-result-object v11

    .line 659
    filled-new-array {v11}, [Ljava/lang/Object;

    .line 662
    move-result-object v11

    .line 663
    const-string v13, "%.1f"

    .line 665
    invoke-static {v5, v13, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 668
    move-result-object v5

    .line 669
    :goto_f
    move-object/from16 v28, v5

    .line 671
    goto :goto_10

    .line 672
    :cond_19
    const-string v5, "NaN"

    .line 674
    goto :goto_f

    .line 675
    :goto_10
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 677
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 680
    move-result-object v25

    .line 681
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 684
    move-result-object v26

    .line 685
    sget v2, Lo/Nc;->p:F

    .line 687
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 690
    move-result-object v27

    .line 691
    sget-object v2, Lo/i9;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 693
    sget v2, Lo/i9;->g:F

    .line 695
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 698
    move-result-object v29

    .line 699
    invoke-static {v7}, Ljava/lang/Float;->isInfinite(F)Z

    .line 702
    move-result v2

    .line 703
    if-nez v2, :cond_1a

    .line 705
    invoke-static {v7}, Ljava/lang/Float;->isNaN(F)Z

    .line 708
    move-result v2

    .line 709
    if-nez v2, :cond_1a

    .line 711
    mul-float/2addr v7, v9

    .line 712
    div-float v2, v7, v8

    .line 714
    goto :goto_11

    .line 715
    :cond_1a
    const/high16 v2, 0x7fc00000    # Float.NaN

    .line 717
    :goto_11
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 720
    move-result-object v30

    .line 721
    array-length v2, v0

    .line 722
    sub-int/2addr v2, v12

    .line 723
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 726
    move-result-object v31

    .line 727
    move-object/from16 v32, v6

    .line 729
    filled-new-array/range {v25 .. v32}, [Ljava/lang/Object;

    .line 732
    move-result-object v2

    .line 733
    const-string v3, "mid=%d B=%d spd=%.1f yaw=%s ly=%.3f A=%.1f n=%d hx=%s"

    .line 735
    invoke-static {v5, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 738
    move-result-object v2

    .line 739
    const-string v3, "ffrt-cam"

    .line 741
    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 744
    :goto_12
    move/from16 v6, v17

    .line 746
    goto :goto_13

    .line 747
    :cond_1b
    move/from16 v17, v6

    .line 749
    move/from16 v6, v17

    .line 751
    const/high16 v1, 0x7fc00000    # Float.NaN

    .line 753
    :goto_13
    invoke-static {v0, v6}, Lo/Nc;->j([BI)I

    .line 756
    move-result v19

    .line 757
    if-nez v19, :cond_1c

    .line 759
    if-ne v12, v6, :cond_1c

    .line 761
    goto/16 :goto_2

    .line 763
    :cond_1c
    new-instance v9, Lo/D4;

    .line 765
    move-object v14, v9

    .line 766
    move/from16 v17, v10

    .line 768
    move/from16 v18, v1

    .line 770
    invoke-direct/range {v14 .. v19}, Lo/D4;-><init>(FFFFI)V

    .line 773
    :goto_14
    if-nez v9, :cond_1d

    .line 775
    return-void

    .line 776
    :cond_1d
    sget v0, Lo/Nc;->b:F

    .line 778
    invoke-static {v0}, Ljava/lang/Float;->isInfinite(F)Z

    .line 781
    move-result v1

    .line 782
    if-nez v1, :cond_1e

    .line 784
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    .line 787
    move-result v0

    .line 788
    if-nez v0, :cond_1e

    .line 790
    iget v0, v9, Lo/D4;->a:F

    .line 792
    sget v1, Lo/Nc;->b:F

    .line 794
    sub-float/2addr v0, v1

    .line 795
    float-to-double v0, v0

    .line 796
    iget v2, v9, Lo/D4;->c:F

    .line 798
    sget v3, Lo/Nc;->c:F

    .line 800
    sub-float/2addr v2, v3

    .line 801
    float-to-double v2, v2

    .line 802
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->hypot(DD)D

    .line 805
    move-result-wide v0

    .line 806
    double-to-float v0, v0

    .line 807
    const/high16 v1, 0x41a00000    # 20.0f

    .line 809
    cmpl-float v0, v0, v1

    .line 811
    if-lez v0, :cond_1e

    .line 813
    const/4 v0, 0x1

    .line 814
    sput v0, Lo/Nc;->j:I

    .line 816
    const/4 v0, 0x0

    .line 817
    sput v0, Lo/Nc;->g:I

    .line 819
    const-wide/16 v0, 0x0

    .line 821
    sput-wide v0, Lo/Nc;->h:J

    .line 823
    sget-object v0, Lo/Nc;->l:Ljava/util/HashSet;

    .line 825
    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 828
    sget v0, Lo/Nc;->k:I

    .line 830
    const/4 v1, 0x3

    .line 831
    if-ne v0, v1, :cond_1e

    .line 833
    sget-object v0, Lo/i9;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 835
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 838
    :cond_1e
    iget v0, v9, Lo/D4;->e:I

    .line 840
    sput v0, Lo/Nc;->g:I

    .line 842
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 845
    move-result-wide v0

    .line 846
    sput-wide v0, Lo/Nc;->h:J

    .line 848
    sget v0, Lo/Nc;->b:F

    .line 850
    invoke-static {v0}, Ljava/lang/Float;->isInfinite(F)Z

    .line 853
    move-result v1

    .line 854
    if-nez v1, :cond_20

    .line 856
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    .line 859
    move-result v0

    .line 860
    if-nez v0, :cond_20

    .line 862
    sget-wide v0, Lo/Nc;->h:J

    .line 864
    sget-wide v2, Lo/Nc;->o:J

    .line 866
    sub-long/2addr v0, v2

    .line 867
    const-wide/16 v2, 0x1

    .line 869
    cmp-long v4, v0, v2

    .line 871
    if-gez v4, :cond_1f

    .line 873
    move-wide v0, v2

    .line 874
    :cond_1f
    long-to-float v0, v0

    .line 875
    const/high16 v1, 0x447a0000    # 1000.0f

    .line 877
    div-float/2addr v0, v1

    .line 878
    iget v1, v9, Lo/D4;->a:F

    .line 880
    sget v2, Lo/Nc;->b:F

    .line 882
    sub-float/2addr v1, v2

    .line 883
    float-to-double v1, v1

    .line 884
    iget v3, v9, Lo/D4;->c:F

    .line 886
    sget v4, Lo/Nc;->c:F

    .line 888
    sub-float/2addr v3, v4

    .line 889
    float-to-double v3, v3

    .line 890
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->hypot(DD)D

    .line 893
    move-result-wide v1

    .line 894
    double-to-float v1, v1

    .line 895
    div-float/2addr v1, v0

    .line 896
    sput v1, Lo/Nc;->p:F

    .line 898
    :cond_20
    sget-wide v0, Lo/Nc;->h:J

    .line 900
    sput-wide v0, Lo/Nc;->o:J

    .line 902
    iget v0, v9, Lo/D4;->a:F

    .line 904
    sput v0, Lo/Nc;->b:F

    .line 906
    iget v0, v9, Lo/D4;->c:F

    .line 908
    sput v0, Lo/Nc;->c:F

    .line 910
    sget-object v0, Lo/i9;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 912
    iget v0, v9, Lo/D4;->a:F

    .line 914
    iget v13, v9, Lo/D4;->b:F

    .line 916
    iget v1, v9, Lo/D4;->c:F

    .line 918
    iget v2, v9, Lo/D4;->d:F

    .line 920
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 923
    move-result-wide v3

    .line 924
    invoke-static {v2}, Ljava/lang/Float;->isInfinite(F)Z

    .line 927
    move-result v5

    .line 928
    if-nez v5, :cond_21

    .line 930
    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    .line 933
    move-result v5

    .line 934
    if-nez v5, :cond_21

    .line 936
    sput v2, Lo/i9;->d:F

    .line 938
    :cond_21
    sget-object v5, Lo/i9;->c:Lo/d7;

    .line 940
    if-eqz v5, :cond_25

    .line 942
    iget v6, v5, Lo/d7;->b:F

    .line 944
    sub-float v6, v0, v6

    .line 946
    float-to-double v6, v6

    .line 947
    iget v8, v5, Lo/d7;->d:F

    .line 949
    sub-float v8, v1, v8

    .line 951
    float-to-double v8, v8

    .line 952
    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->hypot(DD)D

    .line 955
    move-result-wide v6

    .line 956
    double-to-float v6, v6

    .line 957
    const/high16 v7, 0x41000000    # 8.0f

    .line 959
    cmpl-float v7, v6, v7

    .line 961
    if-lez v7, :cond_22

    .line 963
    new-instance v5, Lo/d7;

    .line 965
    const/16 v16, 0x0

    .line 967
    const/16 v17, 0x0

    .line 969
    const/4 v11, 0x0

    .line 970
    const/4 v15, 0x0

    .line 971
    move-object v10, v5

    .line 972
    move v12, v0

    .line 973
    move v14, v1

    .line 974
    move-wide/from16 v18, v3

    .line 976
    invoke-direct/range {v10 .. v19}, Lo/d7;-><init>(IFFFFFFJ)V

    .line 979
    sput-object v5, Lo/i9;->c:Lo/d7;

    .line 981
    sput-wide v3, Lo/i9;->a:J

    .line 983
    invoke-static {v2}, Ljava/lang/Float;->isInfinite(F)Z

    .line 986
    move-result v0

    .line 987
    if-nez v0, :cond_29

    .line 989
    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    .line 992
    move-result v0

    .line 993
    if-nez v0, :cond_29

    .line 995
    sput v2, Lo/i9;->d:F

    .line 997
    goto/16 :goto_17

    .line 999
    :cond_22
    iget-wide v7, v5, Lo/d7;->h:J

    .line 1001
    sub-long v32, v3, v7

    .line 1003
    const-wide/16 v7, 0x8

    .line 1005
    cmp-long v7, v32, v7

    .line 1007
    if-gez v7, :cond_24

    .line 1009
    const v7, 0x3da3d70a    # 0.08f

    .line 1012
    cmpg-float v7, v6, v7

    .line 1014
    if-gez v7, :cond_24

    .line 1016
    sput-wide v3, Lo/i9;->a:J

    .line 1018
    invoke-static {v2}, Ljava/lang/Float;->isInfinite(F)Z

    .line 1021
    move-result v0

    .line 1022
    if-nez v0, :cond_23

    .line 1024
    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    .line 1027
    move-result v0

    .line 1028
    if-nez v0, :cond_23

    .line 1030
    sput v2, Lo/i9;->d:F

    .line 1032
    :cond_23
    const/high16 v0, 0x7fc00000    # Float.NaN

    .line 1034
    invoke-static {v0}, Ljava/lang/Float;->isInfinite(F)Z

    .line 1037
    move-result v1

    .line 1038
    if-nez v1, :cond_29

    .line 1040
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    .line 1043
    goto/16 :goto_17

    .line 1045
    :cond_24
    iget v7, v5, Lo/d7;->b:F

    .line 1047
    iget v8, v5, Lo/d7;->c:F

    .line 1049
    iget v9, v5, Lo/d7;->d:F

    .line 1051
    iget v10, v5, Lo/d7;->e:F

    .line 1053
    iget v11, v5, Lo/d7;->f:F

    .line 1055
    iget v5, v5, Lo/d7;->g:F

    .line 1057
    move/from16 v23, v7

    .line 1059
    move/from16 v24, v8

    .line 1061
    move/from16 v25, v9

    .line 1063
    move/from16 v26, v10

    .line 1065
    move/from16 v27, v11

    .line 1067
    move/from16 v28, v5

    .line 1069
    move/from16 v29, v0

    .line 1071
    move/from16 v30, v13

    .line 1073
    move/from16 v31, v1

    .line 1075
    move/from16 v34, v6

    .line 1077
    invoke-static/range {v23 .. v34}, Lo/i9;->e(FFFFFFFFFJF)[F

    .line 1080
    move-result-object v5

    .line 1081
    const/4 v6, 0x0

    .line 1082
    aget v6, v5, v6

    .line 1084
    const/4 v7, 0x1

    .line 1085
    aget v8, v5, v7

    .line 1087
    const/4 v7, 0x2

    .line 1088
    aget v5, v5, v7

    .line 1090
    move/from16 v17, v5

    .line 1092
    move v15, v6

    .line 1093
    move/from16 v16, v8

    .line 1095
    goto :goto_15

    .line 1096
    :cond_25
    const/4 v5, 0x0

    .line 1097
    move v15, v5

    .line 1098
    move/from16 v16, v15

    .line 1100
    move/from16 v17, v16

    .line 1102
    :goto_15
    invoke-static {v2}, Ljava/lang/Float;->isInfinite(F)Z

    .line 1105
    move-result v5

    .line 1106
    if-nez v5, :cond_26

    .line 1108
    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    .line 1111
    move-result v5

    .line 1112
    if-nez v5, :cond_26

    .line 1114
    sput v2, Lo/i9;->d:F

    .line 1116
    :cond_26
    const/high16 v2, 0x7fc00000    # Float.NaN

    .line 1118
    invoke-static {v2}, Ljava/lang/Float;->isInfinite(F)Z

    .line 1121
    move-result v5

    .line 1122
    if-nez v5, :cond_27

    .line 1124
    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    .line 1127
    :cond_27
    new-instance v2, Lo/d7;

    .line 1129
    const/4 v11, 0x0

    .line 1130
    move-object v10, v2

    .line 1131
    move v12, v0

    .line 1132
    move v14, v1

    .line 1133
    move-wide/from16 v18, v3

    .line 1135
    invoke-direct/range {v10 .. v19}, Lo/d7;-><init>(IFFFFFFJ)V

    .line 1138
    sput-object v2, Lo/i9;->c:Lo/d7;

    .line 1140
    sput-wide v3, Lo/i9;->a:J

    .line 1142
    sget-object v2, Lo/i9;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 1144
    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    .line 1147
    move-result v3

    .line 1148
    if-nez v3, :cond_29

    .line 1150
    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    .line 1153
    move-result-object v2

    .line 1154
    const-string v3, "<get-entries>(...)"

    .line 1156
    invoke-static {v2, v3}, Lo/x9;->n(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1159
    new-instance v3, Lo/h9;

    .line 1161
    invoke-direct {v3, v0, v1}, Lo/h9;-><init>(FF)V

    .line 1164
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 1167
    move-result-object v0

    .line 1168
    :cond_28
    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 1171
    move-result v1

    .line 1172
    if-eqz v1, :cond_29

    .line 1174
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1177
    move-result-object v1

    .line 1178
    invoke-interface {v3, v1}, Lo/F8;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1181
    move-result-object v1

    .line 1182
    check-cast v1, Ljava/lang/Boolean;

    .line 1184
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1187
    move-result v1

    .line 1188
    const/4 v2, 0x1

    .line 1189
    if-ne v1, v2, :cond_28

    .line 1191
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 1194
    goto :goto_16

    .line 1195
    :cond_29
    :goto_17
    return-void
.end method

.method public static e(Z[BLjava/lang/String;)V
    .locals 2

    .line 1
    const-string v0, "pkt"

    .line 3
    invoke-static {p1, v0}, Lo/x9;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    const-string v0, "flowId"

    .line 8
    invoke-static {p2, v0}, Lo/x9;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    array-length v0, p1

    .line 12
    if-nez p0, :cond_2

    .line 14
    invoke-static {p2}, Lo/Nc;->c(Ljava/lang/String;)V

    .line 17
    sget-object p0, Lo/Tg;->a:Lo/Tg;

    .line 19
    const/4 p0, 0x0

    .line 20
    invoke-static {p1, v0, p2, p0}, Lo/Tg;->i([BILjava/lang/String;Z)[B

    .line 23
    move-result-object p2

    .line 24
    array-length v1, p2

    .line 25
    if-nez v1, :cond_1

    .line 27
    array-length p2, p1

    .line 28
    if-ne v0, p2, :cond_0

    .line 30
    invoke-static {p1}, Lo/Nc;->d([B)V

    .line 33
    goto :goto_1

    .line 34
    :cond_0
    invoke-static {p1, p0, v0}, Lo/H2;->n0([BII)[B

    .line 37
    move-result-object p0

    .line 38
    invoke-static {p0}, Lo/Nc;->d([B)V

    .line 41
    goto :goto_1

    .line 42
    :cond_1
    invoke-static {p2}, Lo/Nc;->d([B)V

    .line 45
    goto :goto_1

    .line 46
    :cond_2
    sget-object p0, Lo/Nc;->n:Ljava/lang/Object;

    .line 48
    monitor-enter p0

    .line 49
    :try_start_0
    invoke-static {p2}, Lo/Nc;->c(Ljava/lang/String;)V

    .line 52
    sget-object v1, Lo/Tg;->a:Lo/Tg;

    .line 54
    const/4 v1, 0x1

    .line 55
    invoke-static {p1, v0, p2, v1}, Lo/Tg;->i([BILjava/lang/String;Z)[B

    .line 58
    move-result-object p1

    .line 59
    array-length p2, p1

    .line 60
    if-nez p2, :cond_3

    .line 62
    goto :goto_0

    .line 63
    :cond_3
    invoke-static {p1}, Lo/Nc;->f([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    :goto_0
    monitor-exit p0

    .line 67
    :goto_1
    return-void

    .line 68
    :catchall_0
    move-exception p1

    .line 69
    monitor-exit p0

    .line 70
    throw p1
.end method

.method public static f([B)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {p0, v0}, Lo/Nc;->b([BI)Z

    .line 5
    move-result v1

    .line 6
    if-eqz v1, :cond_0

    .line 8
    return-void

    .line 9
    :cond_0
    array-length v1, p0

    .line 10
    const/16 v2, 0xc

    .line 12
    if-le v1, v2, :cond_1

    .line 14
    aget-byte v0, p0, v0

    .line 16
    and-int/lit16 v0, v0, 0xff

    .line 18
    if-eqz v0, :cond_1

    .line 20
    const/4 v0, 0x2

    .line 21
    aget-byte v1, p0, v0

    .line 23
    and-int/lit16 v1, v1, 0xff

    .line 25
    if-nez v1, :cond_1

    .line 27
    invoke-static {p0, v0}, Lo/Nc;->b([BI)Z

    .line 30
    :cond_1
    return-void
.end method

.method public static g(FF)Z
    .locals 6

    .line 1
    invoke-static {p0}, Ljava/lang/Float;->isInfinite(F)Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_2

    .line 8
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_2

    .line 14
    invoke-static {p1}, Ljava/lang/Float;->isInfinite(F)Z

    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_2

    .line 20
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    .line 23
    move-result v0

    .line 24
    if-nez v0, :cond_2

    .line 26
    float-to-double v2, p0

    .line 27
    float-to-double v4, p1

    .line 28
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->hypot(DD)D

    .line 31
    move-result-wide v2

    .line 32
    const-wide v4, 0x3fd3333333333333L    # 0.3

    .line 37
    cmpg-double v0, v2, v4

    .line 39
    if-gez v0, :cond_0

    .line 41
    return v1

    .line 42
    :cond_0
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    .line 45
    move-result p0

    .line 46
    const/high16 v0, 0x45fa0000    # 8000.0f

    .line 48
    cmpl-float p0, p0, v0

    .line 50
    if-gtz p0, :cond_2

    .line 52
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 55
    move-result p0

    .line 56
    cmpl-float p0, p0, v0

    .line 58
    if-lez p0, :cond_1

    .line 60
    goto :goto_0

    .line 61
    :cond_1
    const/4 p0, 0x1

    .line 62
    return p0

    .line 63
    :cond_2
    :goto_0
    return v1
.end method

.method public static h([BI)Lo/Lc;
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    if-ltz p1, :cond_3

    .line 4
    array-length v1, p0

    .line 5
    if-lt p1, v1, :cond_0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const-wide/16 v1, 0x0

    .line 10
    const/4 v3, 0x0

    .line 11
    :cond_1
    array-length v4, p0

    .line 12
    if-ge p1, v4, :cond_3

    .line 14
    aget-byte v4, p0, p1

    .line 16
    and-int/lit16 v4, v4, 0xff

    .line 18
    add-int/lit8 p1, p1, 0x1

    .line 20
    int-to-long v5, v4

    .line 21
    const-wide/16 v7, 0x7f

    .line 23
    and-long/2addr v5, v7

    .line 24
    shl-long/2addr v5, v3

    .line 25
    or-long/2addr v1, v5

    .line 26
    const/16 v5, 0x80

    .line 28
    if-ge v4, v5, :cond_2

    .line 30
    new-instance p0, Lo/Lc;

    .line 32
    invoke-direct {p0, v1, v2, p1}, Lo/Lc;-><init>(JI)V

    .line 35
    return-object p0

    .line 36
    :cond_2
    add-int/lit8 v3, v3, 0x7

    .line 38
    const/16 v4, 0x23

    .line 40
    if-le v3, v4, :cond_1

    .line 42
    :cond_3
    :goto_0
    return-object v0
.end method

.method public static i([BI)Lo/Mc;
    .locals 11

    .line 1
    invoke-static {p0, p1}, Lo/Nc;->h([BI)Lo/Lc;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 8
    return-object v1

    .line 9
    :cond_0
    iget v2, v0, Lo/Lc;->b:I

    .line 11
    invoke-static {p0, v2}, Lo/Nc;->h([BI)Lo/Lc;

    .line 14
    move-result-object v2

    .line 15
    if-nez v2, :cond_1

    .line 17
    return-object v1

    .line 18
    :cond_1
    iget v3, v2, Lo/Lc;->b:I

    .line 20
    invoke-static {p0, v3}, Lo/Nc;->h([BI)Lo/Lc;

    .line 23
    move-result-object v3

    .line 24
    if-nez v3, :cond_2

    .line 26
    return-object v1

    .line 27
    :cond_2
    iget-wide v4, v0, Lo/Lc;->a:J

    .line 29
    invoke-static {v4, v5}, Lo/Nc;->k(J)I

    .line 32
    move-result v0

    .line 33
    int-to-float v0, v0

    .line 34
    const v4, 0x3a83126f    # 0.001f

    .line 37
    mul-float v6, v0, v4

    .line 39
    iget-wide v7, v2, Lo/Lc;->a:J

    .line 41
    invoke-static {v7, v8}, Lo/Nc;->k(J)I

    .line 44
    move-result v0

    .line 45
    int-to-float v0, v0

    .line 46
    mul-float v7, v0, v4

    .line 48
    iget-wide v8, v3, Lo/Lc;->a:J

    .line 50
    invoke-static {v8, v9}, Lo/Nc;->k(J)I

    .line 53
    move-result v0

    .line 54
    int-to-float v0, v0

    .line 55
    mul-float v8, v0, v4

    .line 57
    const/high16 v0, -0x3db80000    # -50.0f

    .line 59
    cmpg-float v0, v0, v7

    .line 61
    if-gtz v0, :cond_4

    .line 63
    const/high16 v0, 0x43fa0000    # 500.0f

    .line 65
    cmpg-float v0, v7, v0

    .line 67
    if-gtz v0, :cond_4

    .line 69
    invoke-static {v6, v8}, Lo/Nc;->g(FF)Z

    .line 72
    move-result v0

    .line 73
    if-nez v0, :cond_3

    .line 75
    return-object v1

    .line 76
    :cond_3
    new-instance v0, Lo/Mc;

    .line 78
    invoke-static {p0, p1}, Lo/Nc;->j([BI)I

    .line 81
    move-result v10

    .line 82
    iget v9, v3, Lo/Lc;->b:I

    .line 84
    move-object v5, v0

    .line 85
    invoke-direct/range {v5 .. v10}, Lo/Mc;-><init>(FFFII)V

    .line 88
    return-object v0

    .line 89
    :cond_4
    return-object v1
.end method

.method public static j([BI)I
    .locals 3

    .line 1
    add-int/lit8 v0, p1, 0x3

    .line 3
    array-length v1, p0

    .line 4
    if-lt v0, v1, :cond_0

    .line 6
    const/4 p0, 0x0

    .line 7
    return p0

    .line 8
    :cond_0
    aget-byte v1, p0, p1

    .line 10
    and-int/lit16 v1, v1, 0xff

    .line 12
    add-int/lit8 v2, p1, 0x1

    .line 14
    aget-byte v2, p0, v2

    .line 16
    and-int/lit16 v2, v2, 0xff

    .line 18
    shl-int/lit8 v2, v2, 0x8

    .line 20
    or-int/2addr v1, v2

    .line 21
    add-int/lit8 p1, p1, 0x2

    .line 23
    aget-byte p1, p0, p1

    .line 25
    and-int/lit16 p1, p1, 0xff

    .line 27
    shl-int/lit8 p1, p1, 0x10

    .line 29
    or-int/2addr p1, v1

    .line 30
    aget-byte p0, p0, v0

    .line 32
    and-int/lit16 p0, p0, 0xff

    .line 34
    shl-int/lit8 p0, p0, 0x18

    .line 36
    or-int/2addr p0, p1

    .line 37
    return p0
.end method

.method public static k(J)I
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    ushr-long v0, p0, v0

    .line 4
    const-wide/16 v2, 0x1

    .line 6
    and-long/2addr p0, v2

    .line 7
    neg-long p0, p0

    .line 8
    xor-long/2addr p0, v0

    .line 9
    long-to-int p0, p0

    .line 10
    return p0
.end method
