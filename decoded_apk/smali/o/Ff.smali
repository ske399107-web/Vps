.class public abstract Lo/Ff;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/HashSet;

.field public static final b:Ljava/util/concurrent/ConcurrentHashMap;

.field public static final c:Ljava/util/HashSet;

.field public static final d:[B

.field public static volatile e:I

.field public static volatile f:J

.field public static volatile g:Z

.field public static final h:Ljava/lang/Object;

.field public static volatile i:I

.field public static volatile j:J

.field public static volatile k:J

.field public static volatile l:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashSet;

    .line 3
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 6
    sput-object v0, Lo/Ff;->a:Ljava/util/HashSet;

    .line 8
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 10
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 13
    sput-object v0, Lo/Ff;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 15
    new-instance v0, Ljava/util/HashSet;

    .line 17
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 20
    sput-object v0, Lo/Ff;->c:Ljava/util/HashSet;

    .line 22
    const v0, 0x18000

    .line 25
    new-array v0, v0, [B

    .line 27
    sput-object v0, Lo/Ff;->d:[B

    .line 29
    new-instance v0, Ljava/lang/Object;

    .line 31
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 34
    sput-object v0, Lo/Ff;->h:Ljava/lang/Object;

    .line 36
    return-void
.end method

.method public static a(II[B[B)I
    .locals 4

    .line 1
    array-length v0, p3

    .line 2
    sub-int/2addr p0, v0

    .line 3
    const/4 v0, 0x0

    .line 4
    if-gez p1, :cond_0

    .line 6
    move p1, v0

    .line 7
    :cond_0
    :goto_0
    if-gt p1, p0, :cond_3

    .line 9
    move v1, v0

    .line 10
    :goto_1
    array-length v2, p3

    .line 11
    if-ge v1, v2, :cond_2

    .line 13
    add-int v2, p1, v1

    .line 15
    aget-byte v2, p2, v2

    .line 17
    aget-byte v3, p3, v1

    .line 19
    if-eq v2, v3, :cond_1

    .line 21
    add-int/lit8 p1, p1, 0x1

    .line 23
    goto :goto_0

    .line 24
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 26
    goto :goto_1

    .line 27
    :cond_2
    return p1

    .line 28
    :cond_3
    const/4 p0, -0x1

    .line 29
    return p0
.end method

.method public static b([B)V
    .locals 27

    .line 1
    move-object/from16 v0, p0

    .line 3
    array-length v1, v0

    .line 4
    const/16 v2, 0x10

    .line 6
    if-ge v1, v2, :cond_0

    .line 8
    return-void

    .line 9
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    .line 11
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 14
    array-length v2, v0

    .line 15
    const/4 v4, 0x0

    .line 16
    :goto_0
    add-int/lit8 v5, v4, 0x2

    .line 18
    const/4 v6, 0x2

    .line 19
    const/4 v7, 0x1

    .line 20
    const/4 v8, 0x5

    .line 21
    if-ge v5, v2, :cond_19

    .line 23
    invoke-static {v0, v4}, Lo/Ff;->h([BI)Lo/Cc;

    .line 26
    move-result-object v5

    .line 27
    if-nez v5, :cond_1

    .line 29
    :goto_1
    add-int/lit8 v4, v4, 0x1

    .line 31
    goto :goto_0

    .line 32
    :cond_1
    iget-object v11, v5, Lo/Cc;->a:Ljava/lang/Object;

    .line 34
    check-cast v11, Ljava/lang/Number;

    .line 36
    invoke-virtual {v11}, Ljava/lang/Number;->longValue()J

    .line 39
    move-result-wide v11

    .line 40
    const/4 v13, 0x3

    .line 41
    shr-long/2addr v11, v13

    .line 42
    long-to-int v11, v11

    .line 43
    iget-object v12, v5, Lo/Cc;->a:Ljava/lang/Object;

    .line 45
    check-cast v12, Ljava/lang/Number;

    .line 47
    invoke-virtual {v12}, Ljava/lang/Number;->longValue()J

    .line 50
    move-result-wide v14

    .line 51
    const-wide/16 v16, 0x7

    .line 53
    and-long v14, v14, v16

    .line 55
    long-to-int v12, v14

    .line 56
    if-eq v12, v6, :cond_2

    .line 58
    goto :goto_1

    .line 59
    :cond_2
    iget-object v5, v5, Lo/Cc;->b:Ljava/lang/Object;

    .line 61
    check-cast v5, Ljava/lang/Number;

    .line 63
    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    .line 66
    move-result v5

    .line 67
    invoke-static {v0, v5}, Lo/Ff;->h([BI)Lo/Cc;

    .line 70
    move-result-object v5

    .line 71
    if-nez v5, :cond_3

    .line 73
    goto :goto_1

    .line 74
    :cond_3
    iget-object v12, v5, Lo/Cc;->a:Ljava/lang/Object;

    .line 76
    check-cast v12, Ljava/lang/Number;

    .line 78
    invoke-virtual {v12}, Ljava/lang/Number;->longValue()J

    .line 81
    move-result-wide v14

    .line 82
    long-to-int v12, v14

    .line 83
    iget-object v5, v5, Lo/Cc;->b:Ljava/lang/Object;

    .line 85
    check-cast v5, Ljava/lang/Number;

    .line 87
    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    .line 90
    move-result v5

    .line 91
    const/16 v14, 0x28

    .line 93
    if-gt v14, v12, :cond_17

    .line 95
    const/16 v14, 0x321

    .line 97
    if-ge v12, v14, :cond_17

    .line 99
    add-int/2addr v12, v5

    .line 100
    if-gt v12, v2, :cond_17

    .line 102
    const/4 v14, 0x0

    .line 103
    const-wide/16 v18, 0x0

    .line 105
    :goto_2
    if-ge v5, v12, :cond_14

    .line 107
    invoke-static {v0, v5}, Lo/Ff;->h([BI)Lo/Cc;

    .line 110
    move-result-object v5

    .line 111
    if-nez v5, :cond_5

    .line 113
    move/from16 v22, v4

    .line 115
    :cond_4
    :goto_3
    const-wide/16 v3, 0x0

    .line 117
    const-wide/16 v23, 0x0

    .line 119
    goto/16 :goto_9

    .line 121
    :cond_5
    iget-object v15, v5, Lo/Cc;->b:Ljava/lang/Object;

    .line 123
    check-cast v15, Ljava/lang/Number;

    .line 125
    invoke-virtual {v15}, Ljava/lang/Number;->intValue()I

    .line 128
    move-result v15

    .line 129
    iget-object v5, v5, Lo/Cc;->a:Ljava/lang/Object;

    .line 131
    check-cast v5, Ljava/lang/Number;

    .line 133
    invoke-virtual {v5}, Ljava/lang/Number;->longValue()J

    .line 136
    move-result-wide v20

    .line 137
    move/from16 v22, v4

    .line 139
    shr-long v3, v20, v13

    .line 141
    long-to-int v3, v3

    .line 142
    invoke-virtual {v5}, Ljava/lang/Number;->longValue()J

    .line 145
    move-result-wide v4

    .line 146
    and-long v4, v4, v16

    .line 148
    long-to-int v4, v4

    .line 149
    if-eqz v4, :cond_12

    .line 151
    if-eq v4, v7, :cond_11

    .line 153
    if-eq v4, v6, :cond_7

    .line 155
    if-eq v4, v8, :cond_6

    .line 157
    :goto_4
    goto :goto_3

    .line 158
    :cond_6
    add-int/lit8 v5, v15, 0x4

    .line 160
    move/from16 v4, v22

    .line 162
    goto :goto_2

    .line 163
    :cond_7
    invoke-static {v0, v15}, Lo/Ff;->h([BI)Lo/Cc;

    .line 166
    move-result-object v4

    .line 167
    if-nez v4, :cond_8

    .line 169
    goto :goto_4

    .line 170
    :cond_8
    iget-object v5, v4, Lo/Cc;->b:Ljava/lang/Object;

    .line 172
    check-cast v5, Ljava/lang/Number;

    .line 174
    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    .line 177
    move-result v5

    .line 178
    iget-object v4, v4, Lo/Cc;->a:Ljava/lang/Object;

    .line 180
    check-cast v4, Ljava/lang/Number;

    .line 182
    invoke-virtual {v4}, Ljava/lang/Number;->longValue()J

    .line 185
    move-result-wide v8

    .line 186
    long-to-int v4, v8

    .line 187
    if-ltz v4, :cond_4

    .line 189
    add-int v8, v5, v4

    .line 191
    if-le v8, v12, :cond_9

    .line 193
    goto :goto_3

    .line 194
    :cond_9
    if-ne v3, v6, :cond_f

    .line 196
    if-gt v13, v4, :cond_f

    .line 198
    const/16 v3, 0x11

    .line 200
    if-ge v4, v3, :cond_f

    .line 202
    const/4 v3, 0x0

    .line 203
    const/4 v9, 0x0

    .line 204
    :goto_5
    if-ge v3, v4, :cond_e

    .line 206
    add-int v10, v5, v3

    .line 208
    aget-byte v10, v0, v10

    .line 210
    and-int/lit16 v10, v10, 0xff

    .line 212
    const/16 v15, 0x30

    .line 214
    if-gt v15, v10, :cond_a

    .line 216
    const/16 v15, 0x3a

    .line 218
    if-ge v10, v15, :cond_a

    .line 220
    goto :goto_6

    .line 221
    :cond_a
    const/16 v15, 0x41

    .line 223
    if-gt v15, v10, :cond_b

    .line 225
    const/16 v15, 0x5b

    .line 227
    if-ge v10, v15, :cond_b

    .line 229
    goto :goto_6

    .line 230
    :cond_b
    const/16 v15, 0x61

    .line 232
    if-gt v15, v10, :cond_c

    .line 234
    const/16 v15, 0x7b

    .line 236
    if-ge v10, v15, :cond_c

    .line 238
    goto :goto_6

    .line 239
    :cond_c
    const/16 v15, 0x5f

    .line 241
    if-ne v10, v15, :cond_d

    .line 243
    :goto_6
    add-int/lit8 v9, v9, 0x1

    .line 245
    :cond_d
    add-int/lit8 v3, v3, 0x1

    .line 247
    goto :goto_5

    .line 248
    :cond_e
    if-lt v9, v13, :cond_f

    .line 250
    move v14, v7

    .line 251
    :cond_f
    move v5, v8

    .line 252
    :cond_10
    :goto_7
    move/from16 v4, v22

    .line 254
    const/4 v8, 0x5

    .line 255
    goto/16 :goto_2

    .line 257
    :cond_11
    add-int/lit8 v5, v15, 0x8

    .line 259
    goto :goto_7

    .line 260
    :cond_12
    invoke-static {v0, v15}, Lo/Ff;->h([BI)Lo/Cc;

    .line 263
    move-result-object v4

    .line 264
    if-nez v4, :cond_13

    .line 266
    goto :goto_4

    .line 267
    :cond_13
    iget-object v5, v4, Lo/Cc;->b:Ljava/lang/Object;

    .line 269
    check-cast v5, Ljava/lang/Number;

    .line 271
    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    .line 274
    move-result v5

    .line 275
    if-ne v3, v7, :cond_10

    .line 277
    iget-object v3, v4, Lo/Cc;->a:Ljava/lang/Object;

    .line 279
    check-cast v3, Ljava/lang/Number;

    .line 281
    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    .line 284
    move-result-wide v8

    .line 285
    const-wide v25, 0x2540be400L

    .line 290
    cmp-long v4, v8, v25

    .line 292
    if-lez v4, :cond_10

    .line 294
    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    .line 297
    move-result-wide v18

    .line 298
    goto :goto_7

    .line 299
    :cond_14
    move/from16 v22, v4

    .line 301
    const-wide/16 v3, 0x0

    .line 303
    if-eqz v14, :cond_15

    .line 305
    cmp-long v5, v18, v3

    .line 307
    if-lez v5, :cond_15

    .line 309
    goto :goto_8

    .line 310
    :cond_15
    move-wide/from16 v18, v3

    .line 312
    :goto_8
    move-wide/from16 v23, v18

    .line 314
    :goto_9
    cmp-long v3, v23, v3

    .line 316
    if-lez v3, :cond_18

    .line 318
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 321
    move-result-object v3

    .line 322
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    move-result-object v4

    .line 326
    if-nez v4, :cond_16

    .line 328
    new-instance v4, Ljava/util/HashSet;

    .line 330
    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 333
    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    :cond_16
    check-cast v4, Ljava/util/HashSet;

    .line 338
    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 341
    move-result-object v3

    .line 342
    invoke-virtual {v4, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 345
    goto :goto_a

    .line 346
    :cond_17
    move/from16 v22, v4

    .line 348
    :cond_18
    :goto_a
    add-int/lit8 v4, v22, 0x1

    .line 350
    goto/16 :goto_0

    .line 352
    :cond_19
    sget-wide v2, Lo/Ff;->f:J

    .line 354
    const-wide/16 v4, 0x0

    .line 356
    cmp-long v0, v2, v4

    .line 358
    if-nez v0, :cond_1a

    .line 360
    return-void

    .line 361
    :cond_1a
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 364
    move-result-object v0

    .line 365
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 368
    move-result-object v0

    .line 369
    const/4 v1, 0x0

    .line 370
    :cond_1b
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 373
    move-result v4

    .line 374
    if-eqz v4, :cond_1e

    .line 376
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 379
    move-result-object v4

    .line 380
    const-string v5, "next(...)"

    .line 382
    invoke-static {v4, v5}, Lo/x9;->n(Ljava/lang/Object;Ljava/lang/String;)V

    .line 385
    check-cast v4, Ljava/util/HashSet;

    .line 387
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 390
    move-result-object v5

    .line 391
    invoke-virtual {v4, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 394
    move-result v5

    .line 395
    if-eqz v5, :cond_1d

    .line 397
    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    .line 400
    move-result v5

    .line 401
    if-gt v6, v5, :cond_1d

    .line 403
    const/4 v8, 0x5

    .line 404
    if-ge v5, v8, :cond_1b

    .line 406
    if-eqz v1, :cond_1c

    .line 408
    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    .line 411
    move-result v5

    .line 412
    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    .line 415
    move-result v9

    .line 416
    if-le v5, v9, :cond_1b

    .line 418
    :cond_1c
    move-object v1, v4

    .line 419
    goto :goto_b

    .line 420
    :cond_1d
    const/4 v8, 0x5

    .line 421
    goto :goto_b

    .line 422
    :cond_1e
    if-nez v1, :cond_1f

    .line 424
    return-void

    .line 425
    :cond_1f
    new-instance v0, Ljava/util/HashSet;

    .line 427
    const/4 v2, 0x4

    .line 428
    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(I)V

    .line 431
    sget-wide v2, Lo/Ff;->f:J

    .line 433
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 436
    move-result-object v1

    .line 437
    const-string v4, "iterator(...)"

    .line 439
    invoke-static {v1, v4}, Lo/x9;->n(Ljava/lang/Object;Ljava/lang/String;)V

    .line 442
    :cond_20
    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 445
    move-result v4

    .line 446
    if-eqz v4, :cond_21

    .line 448
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 451
    move-result-object v4

    .line 452
    const-string v5, "next(...)"

    .line 454
    invoke-static {v4, v5}, Lo/x9;->n(Ljava/lang/Object;Ljava/lang/String;)V

    .line 457
    check-cast v4, Ljava/lang/Number;

    .line 459
    invoke-virtual {v4}, Ljava/lang/Number;->longValue()J

    .line 462
    move-result-wide v4

    .line 463
    cmp-long v6, v4, v2

    .line 465
    if-eqz v6, :cond_20

    .line 467
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 470
    move-result-object v4

    .line 471
    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 474
    goto :goto_c

    .line 475
    :cond_21
    sget-object v1, Lo/Ff;->a:Ljava/util/HashSet;

    .line 477
    monitor-enter v1

    .line 478
    :try_start_0
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 481
    move-result v2

    .line 482
    if-eqz v2, :cond_22

    .line 484
    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    .line 487
    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 488
    if-nez v2, :cond_22

    .line 490
    move v3, v7

    .line 491
    goto :goto_d

    .line 492
    :catchall_0
    move-exception v0

    .line 493
    goto :goto_10

    .line 494
    :cond_22
    const/4 v3, 0x0

    .line 495
    :goto_d
    monitor-exit v1

    .line 496
    if-eqz v3, :cond_23

    .line 498
    invoke-static {}, Lo/Ff;->f()V

    .line 501
    goto :goto_f

    .line 502
    :cond_23
    monitor-enter v1

    .line 503
    :try_start_1
    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    .line 506
    invoke-virtual {v1, v0}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 509
    monitor-exit v1

    .line 510
    invoke-static {}, Lo/Ff;->f()V

    .line 513
    sget-object v0, Lo/i9;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 515
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    .line 518
    move-result-object v0

    .line 519
    const-string v1, "<get-keys>(...)"

    .line 521
    invoke-static {v0, v1}, Lo/x9;->n(Ljava/lang/Object;Ljava/lang/String;)V

    .line 524
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 527
    move-result-object v0

    .line 528
    :cond_24
    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 531
    move-result v1

    .line 532
    if-eqz v1, :cond_25

    .line 534
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 537
    move-result-object v1

    .line 538
    check-cast v1, Ljava/lang/Integer;

    .line 540
    const-string v2, "it"

    .line 542
    invoke-static {v1, v2}, Lo/x9;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 545
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 548
    move-result v1

    .line 549
    invoke-static {v1}, Lo/Ff;->c(I)Z

    .line 552
    move-result v1

    .line 553
    xor-int/2addr v1, v7

    .line 554
    xor-int/lit8 v1, v1, 0x1

    .line 556
    if-ne v1, v7, :cond_24

    .line 558
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 561
    goto :goto_e

    .line 562
    :cond_25
    :goto_f
    return-void

    .line 563
    :catchall_1
    move-exception v0

    .line 564
    monitor-exit v1

    .line 565
    throw v0

    .line 566
    :goto_10
    monitor-exit v1

    .line 567
    throw v0
.end method

.method public static c(I)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    if-gt v1, p0, :cond_1

    .line 5
    const/16 v2, 0x9

    .line 7
    if-ge p0, v2, :cond_1

    .line 9
    sget-object v2, Lo/Ff;->c:Ljava/util/HashSet;

    .line 11
    monitor-enter v2

    .line 12
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 15
    move-result-object p0

    .line 16
    invoke-virtual {v2, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 19
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    monitor-exit v2

    .line 21
    if-eqz p0, :cond_0

    .line 23
    return v1

    .line 24
    :cond_0
    return v0

    .line 25
    :catchall_0
    move-exception p0

    .line 26
    monitor-exit v2

    .line 27
    throw p0

    .line 28
    :cond_1
    return v0
.end method

.method public static d([B)V
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x1

    .line 5
    array-length v3, v0

    .line 6
    const/4 v4, 0x3

    .line 7
    if-ge v3, v4, :cond_0

    .line 9
    return-void

    .line 10
    :cond_0
    sget-object v3, Lo/Hb;->a:[B

    .line 12
    invoke-static/range {p0 .. p0}, Lo/Hb;->a([B)V

    .line 15
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 18
    move-result-wide v5

    .line 19
    const/4 v3, 0x0

    .line 20
    aget-byte v7, v0, v3

    .line 22
    and-int/lit16 v8, v7, 0xff

    .line 24
    array-length v9, v0

    .line 25
    const/16 v10, 0x89

    .line 27
    const/16 v11, 0x81

    .line 29
    const/16 v12, 0x80

    .line 31
    if-lt v9, v4, :cond_1

    .line 33
    if-gt v11, v8, :cond_1

    .line 35
    if-ge v8, v10, :cond_1

    .line 37
    aget-byte v8, v0, v2

    .line 39
    and-int/lit16 v8, v8, 0xff

    .line 41
    if-ne v8, v12, :cond_1

    .line 43
    aget-byte v8, v0, v1

    .line 45
    and-int/lit16 v8, v8, 0xff

    .line 47
    if-ne v8, v12, :cond_1

    .line 49
    and-int/lit8 v7, v7, 0x7f

    .line 51
    invoke-static {v3, v0, v3}, Lo/Hb;->d(I[BZ)V

    .line 54
    goto :goto_0

    .line 55
    :cond_1
    move v7, v3

    .line 56
    :goto_0
    invoke-static {v0, v3}, Lo/Ff;->h([BI)Lo/Cc;

    .line 59
    move-result-object v8

    .line 60
    const-wide/16 v13, 0x0

    .line 62
    if-nez v8, :cond_2

    .line 64
    move-wide v8, v13

    .line 65
    goto :goto_1

    .line 66
    :cond_2
    iget-object v8, v8, Lo/Cc;->a:Ljava/lang/Object;

    .line 68
    check-cast v8, Ljava/lang/Number;

    .line 70
    invoke-virtual {v8}, Ljava/lang/Number;->longValue()J

    .line 73
    move-result-wide v8

    .line 74
    :goto_1
    cmp-long v15, v8, v13

    .line 76
    if-lez v15, :cond_5

    .line 78
    if-gtz v15, :cond_3

    .line 80
    goto :goto_2

    .line 81
    :cond_3
    sget-wide v15, Lo/Ff;->f:J

    .line 83
    cmp-long v15, v8, v15

    .line 85
    if-nez v15, :cond_4

    .line 87
    move v3, v2

    .line 88
    goto :goto_2

    .line 89
    :cond_4
    sget-object v15, Lo/Ff;->a:Ljava/util/HashSet;

    .line 91
    monitor-enter v15

    .line 92
    :try_start_0
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 95
    move-result-object v3

    .line 96
    invoke-virtual {v15, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 99
    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    monitor-exit v15

    .line 101
    :goto_2
    if-eqz v3, :cond_5

    .line 103
    goto :goto_3

    .line 104
    :catchall_0
    move-exception v0

    .line 105
    monitor-exit v15

    .line 106
    throw v0

    .line 107
    :cond_5
    move-wide v8, v13

    .line 108
    :goto_3
    const/4 v3, 0x0

    .line 109
    const/4 v15, 0x0

    .line 110
    :goto_4
    add-int/lit8 v13, v3, 0x5

    .line 112
    array-length v14, v0

    .line 113
    if-gt v13, v14, :cond_12

    .line 115
    add-int/lit8 v13, v3, 0x1

    .line 117
    aget-byte v14, v0, v13

    .line 119
    and-int/lit16 v14, v14, 0xff

    .line 121
    add-int/lit8 v2, v3, 0x2

    .line 123
    aget-byte v1, v0, v2

    .line 125
    and-int/lit16 v12, v1, 0xff

    .line 127
    add-int/lit8 v18, v3, 0x3

    .line 129
    aget-byte v4, v0, v18

    .line 131
    and-int/lit16 v4, v4, 0xff

    .line 133
    add-int/lit8 v18, v3, 0x4

    .line 135
    aget-byte v10, v0, v18

    .line 137
    and-int/lit16 v10, v10, 0xff

    .line 139
    if-nez v14, :cond_e

    .line 141
    if-gt v11, v12, :cond_6

    .line 143
    const/16 v14, 0x89

    .line 145
    if-ge v12, v14, :cond_6

    .line 147
    const/4 v12, 0x1

    .line 148
    goto :goto_5

    .line 149
    :cond_6
    const/4 v12, 0x0

    .line 150
    :goto_5
    if-eqz v12, :cond_e

    .line 152
    const/16 v12, 0x80

    .line 154
    if-ne v4, v12, :cond_e

    .line 156
    if-ne v10, v12, :cond_e

    .line 158
    and-int/lit8 v1, v1, 0x7f

    .line 160
    if-gez v3, :cond_7

    .line 162
    move-wide/from16 v21, v5

    .line 164
    move-wide/from16 v19, v8

    .line 166
    :goto_6
    const-wide/16 v4, 0x0

    .line 168
    const-wide/16 v11, 0x0

    .line 170
    goto :goto_9

    .line 171
    :cond_7
    move v10, v3

    .line 172
    const/4 v4, 0x0

    .line 173
    :goto_7
    if-lez v10, :cond_8

    .line 175
    const/16 v14, 0x8

    .line 177
    if-ge v4, v14, :cond_8

    .line 179
    const/4 v14, 0x1

    .line 180
    add-int/lit8 v17, v10, -0x1

    .line 182
    aget-byte v11, v0, v17

    .line 184
    and-int/2addr v11, v12

    .line 185
    if-eqz v11, :cond_8

    .line 187
    add-int/lit8 v10, v10, -0x1

    .line 189
    add-int/2addr v4, v14

    .line 190
    const/16 v11, 0x81

    .line 192
    const/16 v12, 0x80

    .line 194
    goto :goto_7

    .line 195
    :cond_8
    const/4 v4, 0x0

    .line 196
    const-wide/16 v11, 0x0

    .line 198
    :goto_8
    if-ge v10, v13, :cond_a

    .line 200
    aget-byte v14, v0, v10

    .line 202
    move-wide/from16 v19, v8

    .line 204
    and-int/lit16 v8, v14, 0xff

    .line 206
    and-int/lit8 v9, v14, 0x7f

    .line 208
    move-wide/from16 v21, v5

    .line 210
    int-to-long v5, v9

    .line 211
    shl-long/2addr v5, v4

    .line 212
    or-long/2addr v11, v5

    .line 213
    const/4 v5, 0x1

    .line 214
    add-int/2addr v10, v5

    .line 215
    const/16 v5, 0x80

    .line 217
    if-lt v8, v5, :cond_b

    .line 219
    add-int/lit8 v4, v4, 0x7

    .line 221
    const/16 v5, 0x38

    .line 223
    if-le v4, v5, :cond_9

    .line 225
    goto :goto_6

    .line 226
    :cond_9
    move-wide/from16 v8, v19

    .line 228
    move-wide/from16 v5, v21

    .line 230
    goto :goto_8

    .line 231
    :cond_a
    move-wide/from16 v21, v5

    .line 233
    move-wide/from16 v19, v8

    .line 235
    :cond_b
    const-wide/16 v4, 0x0

    .line 237
    :goto_9
    cmp-long v6, v11, v4

    .line 239
    if-lez v6, :cond_c

    .line 241
    invoke-static {v1, v11, v12}, Lo/Ff;->g(IJ)V

    .line 244
    const/4 v15, 0x1

    .line 245
    :cond_c
    if-nez v7, :cond_d

    .line 247
    move v7, v1

    .line 248
    :cond_d
    sget-object v1, Lo/Hb;->a:[B

    .line 250
    const/4 v1, 0x0

    .line 251
    invoke-static {v2, v0, v1}, Lo/Hb;->d(I[BZ)V

    .line 254
    goto :goto_a

    .line 255
    :cond_e
    move-wide/from16 v21, v5

    .line 257
    move-wide/from16 v19, v8

    .line 259
    :goto_a
    aget-byte v1, v0, v3

    .line 261
    and-int/lit16 v3, v1, 0xff

    .line 263
    const/16 v4, 0x81

    .line 265
    const/16 v5, 0x89

    .line 267
    if-gt v4, v3, :cond_f

    .line 269
    if-ge v3, v5, :cond_f

    .line 271
    const/4 v3, 0x1

    .line 272
    goto :goto_b

    .line 273
    :cond_f
    const/4 v3, 0x0

    .line 274
    :goto_b
    if-eqz v3, :cond_10

    .line 276
    aget-byte v3, v0, v13

    .line 278
    and-int/lit16 v3, v3, 0xff

    .line 280
    const/16 v6, 0x80

    .line 282
    if-ne v3, v6, :cond_11

    .line 284
    aget-byte v2, v0, v2

    .line 286
    and-int/lit16 v2, v2, 0xff

    .line 288
    if-ne v2, v6, :cond_11

    .line 290
    if-nez v7, :cond_11

    .line 292
    and-int/lit8 v1, v1, 0x7f

    .line 294
    move v7, v1

    .line 295
    goto :goto_c

    .line 296
    :cond_10
    const/16 v6, 0x80

    .line 298
    :cond_11
    :goto_c
    move v11, v4

    .line 299
    move v10, v5

    .line 300
    move v12, v6

    .line 301
    move v3, v13

    .line 302
    move-wide/from16 v8, v19

    .line 304
    move-wide/from16 v5, v21

    .line 306
    const/4 v1, 0x2

    .line 307
    const/4 v2, 0x1

    .line 308
    const/4 v4, 0x3

    .line 309
    const-wide/16 v13, 0x0

    .line 311
    goto/16 :goto_4

    .line 313
    :cond_12
    move-wide/from16 v21, v5

    .line 315
    move-wide/from16 v19, v8

    .line 317
    if-eqz v15, :cond_13

    .line 319
    sget-object v1, Lo/Ff;->h:Ljava/lang/Object;

    .line 321
    monitor-enter v1

    .line 322
    const/4 v0, 0x0

    .line 323
    :try_start_1
    sput v0, Lo/Ff;->i:I

    .line 325
    const-wide/16 v2, 0x0

    .line 327
    sput-wide v2, Lo/Ff;->k:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 329
    monitor-exit v1

    .line 330
    return-void

    .line 331
    :catchall_1
    move-exception v0

    .line 332
    monitor-exit v1

    .line 333
    throw v0

    .line 334
    :cond_13
    sget-object v1, Lo/Ff;->h:Ljava/lang/Object;

    .line 336
    monitor-enter v1

    .line 337
    const/16 v0, 0x9

    .line 339
    const/4 v2, 0x1

    .line 340
    if-gt v2, v7, :cond_14

    .line 342
    if-ge v7, v0, :cond_14

    .line 344
    const/4 v14, 0x1

    .line 345
    goto :goto_d

    .line 346
    :cond_14
    const/4 v14, 0x0

    .line 347
    :goto_d
    if-eqz v14, :cond_15

    .line 349
    :try_start_2
    sput v7, Lo/Ff;->i:I

    .line 351
    sput-wide v21, Lo/Ff;->j:J

    .line 353
    :cond_15
    const-wide/16 v2, 0x0

    .line 355
    goto :goto_e

    .line 356
    :catchall_2
    move-exception v0

    .line 357
    goto :goto_10

    .line 358
    :goto_e
    cmp-long v4, v19, v2

    .line 360
    if-lez v4, :cond_16

    .line 362
    sput-wide v19, Lo/Ff;->k:J

    .line 364
    sput-wide v21, Lo/Ff;->l:J

    .line 366
    :cond_16
    sget v2, Lo/Ff;->i:I

    .line 368
    const/4 v3, 0x1

    .line 369
    if-gt v3, v2, :cond_19

    .line 371
    if-ge v2, v0, :cond_19

    .line 373
    sget-wide v2, Lo/Ff;->k:J

    .line 375
    const-wide/16 v4, 0x0

    .line 377
    cmp-long v0, v2, v4

    .line 379
    if-gtz v0, :cond_17

    .line 381
    goto :goto_f

    .line 382
    :cond_17
    sget-wide v2, Lo/Ff;->j:J

    .line 384
    sub-long v5, v21, v2

    .line 386
    const-wide/16 v2, 0x50

    .line 388
    cmp-long v0, v5, v2

    .line 390
    if-gtz v0, :cond_19

    .line 392
    sget-wide v4, Lo/Ff;->l:J

    .line 394
    sub-long v5, v21, v4

    .line 396
    cmp-long v0, v5, v2

    .line 398
    if-lez v0, :cond_18

    .line 400
    goto :goto_f

    .line 401
    :cond_18
    sget-wide v2, Lo/Ff;->k:J

    .line 403
    sget v0, Lo/Ff;->i:I

    .line 405
    invoke-static {v0, v2, v3}, Lo/Ff;->g(IJ)V

    .line 408
    const/4 v0, 0x0

    .line 409
    sput v0, Lo/Ff;->i:I

    .line 411
    const-wide/16 v2, 0x0

    .line 413
    sput-wide v2, Lo/Ff;->k:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 415
    :cond_19
    :goto_f
    monitor-exit v1

    .line 416
    return-void

    .line 417
    :goto_10
    monitor-exit v1

    .line 418
    throw v0
.end method

.method public static e(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 4
    move-result v0

    .line 5
    rem-int/lit8 v0, v0, 0x4

    .line 7
    if-nez v0, :cond_0

    .line 9
    goto :goto_2

    .line 10
    :cond_0
    rsub-int/lit8 v0, v0, 0x4

    .line 12
    if-ltz v0, :cond_4

    .line 14
    if-eqz v0, :cond_2

    .line 16
    const/4 v1, 0x1

    .line 17
    const-string v2, "="

    .line 19
    if-eq v0, v1, :cond_3

    .line 21
    const/4 v1, 0x0

    .line 22
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    .line 25
    move-result v2

    .line 26
    new-array v3, v0, [C

    .line 28
    :goto_0
    if-ge v1, v0, :cond_1

    .line 30
    aput-char v2, v3, v1

    .line 32
    add-int/lit8 v1, v1, 0x1

    .line 34
    goto :goto_0

    .line 35
    :cond_1
    new-instance v2, Ljava/lang/String;

    .line 37
    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([C)V

    .line 40
    goto :goto_1

    .line 41
    :cond_2
    const-string v2, ""

    .line 43
    :cond_3
    :goto_1
    invoke-virtual {p0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 46
    move-result-object p0

    .line 47
    :goto_2
    return-object p0

    .line 48
    :cond_4
    new-instance p0, Ljava/lang/StringBuilder;

    .line 50
    const-string v1, "Count \'n\' must be non-negative, but was "

    .line 52
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 55
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 58
    const/16 v0, 0x2e

    .line 60
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 63
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    move-result-object p0

    .line 67
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 69
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 72
    move-result-object p0

    .line 73
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 76
    throw v0
.end method

.method public static f()V
    .locals 6

    .line 1
    sget-object v0, Lo/Ff;->a:Ljava/util/HashSet;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    new-instance v1, Ljava/util/HashSet;

    .line 6
    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 9
    monitor-exit v0

    .line 10
    sget-object v0, Lo/Ff;->c:Ljava/util/HashSet;

    .line 12
    monitor-enter v0

    .line 13
    :try_start_1
    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 16
    sget-object v2, Lo/Ff;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 18
    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    .line 21
    move-result-object v2

    .line 22
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 25
    move-result-object v2

    .line 26
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 29
    move-result v3

    .line 30
    if-eqz v3, :cond_1

    .line 32
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 35
    move-result-object v3

    .line 36
    check-cast v3, Ljava/util/Map$Entry;

    .line 38
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 41
    move-result-object v4

    .line 42
    check-cast v4, Ljava/lang/Number;

    .line 44
    invoke-virtual {v4}, Ljava/lang/Number;->longValue()J

    .line 47
    move-result-wide v4

    .line 48
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 51
    move-result-object v3

    .line 52
    check-cast v3, Ljava/lang/Number;

    .line 54
    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    .line 57
    move-result v3

    .line 58
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 61
    move-result-object v4

    .line 62
    invoke-virtual {v1, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 65
    move-result v4

    .line 66
    if-eqz v4, :cond_0

    .line 68
    sget-object v4, Lo/Ff;->c:Ljava/util/HashSet;

    .line 70
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 73
    move-result-object v3

    .line 74
    invoke-virtual {v4, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 77
    goto :goto_0

    .line 78
    :catchall_0
    move-exception v1

    .line 79
    goto :goto_1

    .line 80
    :cond_1
    monitor-exit v0

    .line 81
    return-void

    .line 82
    :goto_1
    monitor-exit v0

    .line 83
    throw v1

    .line 84
    :catchall_1
    move-exception v1

    .line 85
    monitor-exit v0

    .line 86
    throw v1
.end method

.method public static g(IJ)V
    .locals 3

    .line 1
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 4
    move-result-object v0

    .line 5
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    move-result-object v1

    .line 9
    sget-object v2, Lo/Ff;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 11
    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    sget-object v0, Lo/Ff;->a:Ljava/util/HashSet;

    .line 16
    monitor-enter v0

    .line 17
    :try_start_0
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 24
    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 25
    monitor-exit v0

    .line 26
    if-eqz p1, :cond_1

    .line 28
    sget-object p1, Lo/Ff;->c:Ljava/util/HashSet;

    .line 30
    monitor-enter p1

    .line 31
    :try_start_1
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 34
    move-result-object p0

    .line 35
    invoke-virtual {p1, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 38
    monitor-exit p1

    .line 39
    sget-object p0, Lo/i9;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 41
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    .line 44
    move-result-object p0

    .line 45
    const-string p1, "<get-keys>(...)"

    .line 47
    invoke-static {p0, p1}, Lo/x9;->n(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 53
    move-result-object p0

    .line 54
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 57
    move-result p1

    .line 58
    if-eqz p1, :cond_1

    .line 60
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 63
    move-result-object p1

    .line 64
    check-cast p1, Ljava/lang/Integer;

    .line 66
    const-string p2, "it"

    .line 68
    invoke-static {p1, p2}, Lo/x9;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 74
    move-result p1

    .line 75
    invoke-static {p1}, Lo/Ff;->c(I)Z

    .line 78
    move-result p1

    .line 79
    const/4 p2, 0x1

    .line 80
    xor-int/2addr p1, p2

    .line 81
    xor-int/lit8 p1, p1, 0x1

    .line 83
    if-ne p1, p2, :cond_0

    .line 85
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    .line 88
    goto :goto_0

    .line 89
    :catchall_0
    move-exception p0

    .line 90
    monitor-exit p1

    .line 91
    throw p0

    .line 92
    :cond_1
    return-void

    .line 93
    :catchall_1
    move-exception p0

    .line 94
    monitor-exit v0

    .line 95
    throw p0
.end method

.method public static h([BI)Lo/Cc;
    .locals 8

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
    and-int/lit16 v5, v4, 0xff

    .line 18
    add-int/lit8 p1, p1, 0x1

    .line 20
    and-int/lit8 v4, v4, 0x7f

    .line 22
    int-to-long v6, v4

    .line 23
    shl-long/2addr v6, v3

    .line 24
    or-long/2addr v1, v6

    .line 25
    const/16 v4, 0x80

    .line 27
    if-ge v5, v4, :cond_2

    .line 29
    new-instance p0, Lo/Cc;

    .line 31
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 34
    move-result-object v0

    .line 35
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 38
    move-result-object p1

    .line 39
    invoke-direct {p0, v0, p1}, Lo/Cc;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 42
    return-object p0

    .line 43
    :cond_2
    add-int/lit8 v3, v3, 0x7

    .line 45
    const/16 v4, 0x38

    .line 47
    if-le v3, v4, :cond_1

    .line 49
    :cond_3
    :goto_0
    return-object v0
.end method

.method public static i([B)V
    .locals 13

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    array-length v2, p0

    .line 4
    sget-object v3, Lo/I3;->a:Ljava/nio/charset/Charset;

    .line 6
    const-string v4, "eyJ"

    .line 8
    invoke-virtual {v4, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 11
    move-result-object v4

    .line 12
    const-string v5, "getBytes(...)"

    .line 14
    invoke-static {v4, v5}, Lo/x9;->n(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-static {v2, v1, p0, v4}, Lo/Ff;->a(II[B[B)I

    .line 20
    move-result v4

    .line 21
    if-gez v4, :cond_0

    .line 23
    return-void

    .line 24
    :cond_0
    const-string v6, "."

    .line 26
    invoke-virtual {v6, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 29
    move-result-object v7

    .line 30
    invoke-static {v7, v5}, Lo/x9;->n(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    add-int/lit8 v8, v4, 0x4

    .line 35
    invoke-static {v2, v8, p0, v7}, Lo/Ff;->a(II[B[B)I

    .line 38
    move-result v7

    .line 39
    if-gez v7, :cond_1

    .line 41
    return-void

    .line 42
    :cond_1
    invoke-virtual {v6, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 45
    move-result-object v6

    .line 46
    invoke-static {v6, v5}, Lo/x9;->n(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    add-int/2addr v7, v0

    .line 50
    invoke-static {v2, v7, p0, v6}, Lo/Ff;->a(II[B[B)I

    .line 53
    move-result v2

    .line 54
    if-gez v2, :cond_2

    .line 56
    return-void

    .line 57
    :cond_2
    :try_start_0
    new-instance v5, Ljava/lang/String;

    .line 59
    sub-int/2addr v2, v4

    .line 60
    sget-object v6, Lo/I3;->b:Ljava/nio/charset/Charset;

    .line 62
    invoke-direct {v5, p0, v4, v2, v6}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    .line 65
    new-array p0, v0, [C

    .line 67
    const/16 v2, 0x2e

    .line 69
    aput-char v2, p0, v1

    .line 71
    invoke-static {v5, p0}, Lo/tf;->I0(Ljava/lang/String;[C)Ljava/util/List;

    .line 74
    move-result-object p0

    .line 75
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 78
    move-result v2

    .line 79
    const/4 v4, 0x2

    .line 80
    if-ge v2, v4, :cond_3

    .line 82
    return-void

    .line 83
    :cond_3
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 86
    move-result-object p0

    .line 87
    check-cast p0, Ljava/lang/String;

    .line 89
    invoke-static {p0}, Lo/Ff;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 92
    move-result-object p0

    .line 93
    const/4 v2, 0x0

    .line 94
    const/16 v5, 0xa

    .line 96
    :try_start_1
    invoke-static {p0, v5}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    .line 99
    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 100
    goto :goto_0

    .line 101
    :catch_0
    :try_start_2
    invoke-static {p0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    .line 104
    move-result-object p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 105
    goto :goto_0

    .line 106
    :catch_1
    move-object p0, v2

    .line 107
    :goto_0
    if-nez p0, :cond_4

    .line 109
    return-void

    .line 110
    :cond_4
    :try_start_3
    new-instance v6, Lorg/json/JSONObject;

    .line 112
    new-instance v7, Ljava/lang/String;

    .line 114
    invoke-direct {v7, p0, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 117
    invoke-direct {v6, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    .line 120
    const-string p0, "MatchPrepareInfo"

    .line 122
    invoke-virtual {v6, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 125
    move-result v3

    .line 126
    if-nez v3, :cond_5

    .line 128
    return-void

    .line 129
    :cond_5
    invoke-virtual {v6, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 132
    move-result-object p0

    .line 133
    invoke-static {p0}, Lo/x9;->l(Ljava/lang/Object;)V

    .line 136
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 139
    move-result v3

    .line 140
    if-nez v3, :cond_6

    .line 142
    return-void

    .line 143
    :cond_6
    invoke-static {p0}, Lo/Ff;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 146
    move-result-object p0

    .line 147
    :try_start_4
    invoke-static {p0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    .line 150
    move-result-object p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 151
    goto :goto_1

    .line 152
    :catch_2
    invoke-static {p0}, Lo/Ff;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 155
    move-result-object p0

    .line 156
    :try_start_5
    invoke-static {p0, v5}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    .line 159
    move-result-object p0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 160
    goto :goto_1

    .line 161
    :catch_3
    :try_start_6
    invoke-static {p0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    .line 164
    move-result-object v2
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    .line 165
    :catch_4
    move-object p0, v2

    .line 166
    :goto_1
    if-nez p0, :cond_7

    .line 168
    return-void

    .line 169
    :cond_7
    const-wide/16 v2, 0x0

    .line 171
    move-wide v5, v2

    .line 172
    :cond_8
    :goto_2
    array-length v7, p0

    .line 173
    if-ge v1, v7, :cond_11

    .line 175
    invoke-static {p0, v1}, Lo/Ff;->h([BI)Lo/Cc;

    .line 178
    move-result-object v1

    .line 179
    if-nez v1, :cond_9

    .line 181
    goto/16 :goto_3

    .line 183
    :cond_9
    iget-object v7, v1, Lo/Cc;->b:Ljava/lang/Object;

    .line 185
    check-cast v7, Ljava/lang/Number;

    .line 187
    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    .line 190
    move-result v7

    .line 191
    iget-object v8, v1, Lo/Cc;->a:Ljava/lang/Object;

    .line 193
    check-cast v8, Ljava/lang/Number;

    .line 195
    invoke-virtual {v8}, Ljava/lang/Number;->longValue()J

    .line 198
    move-result-wide v8

    .line 199
    const/4 v10, 0x3

    .line 200
    shr-long/2addr v8, v10

    .line 201
    long-to-int v8, v8

    .line 202
    iget-object v1, v1, Lo/Cc;->a:Ljava/lang/Object;

    .line 204
    check-cast v1, Ljava/lang/Number;

    .line 206
    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    .line 209
    move-result-wide v9

    .line 210
    const-wide/16 v11, 0x7

    .line 212
    and-long/2addr v9, v11

    .line 213
    long-to-int v1, v9

    .line 214
    if-eqz v1, :cond_e

    .line 216
    if-eq v1, v0, :cond_d

    .line 218
    if-eq v1, v4, :cond_b

    .line 220
    const/4 v8, 0x5

    .line 221
    if-eq v1, v8, :cond_a

    .line 223
    goto :goto_3

    .line 224
    :cond_a
    add-int/lit8 v1, v7, 0x4

    .line 226
    goto :goto_2

    .line 227
    :cond_b
    invoke-static {p0, v7}, Lo/Ff;->h([BI)Lo/Cc;

    .line 230
    move-result-object v1

    .line 231
    if-nez v1, :cond_c

    .line 233
    goto :goto_3

    .line 234
    :cond_c
    iget-object v7, v1, Lo/Cc;->b:Ljava/lang/Object;

    .line 236
    check-cast v7, Ljava/lang/Number;

    .line 238
    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    .line 241
    move-result v7

    .line 242
    iget-object v1, v1, Lo/Cc;->a:Ljava/lang/Object;

    .line 244
    check-cast v1, Ljava/lang/Number;

    .line 246
    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    .line 249
    move-result-wide v8

    .line 250
    long-to-int v1, v8

    .line 251
    if-ltz v1, :cond_11

    .line 253
    add-int/2addr v1, v7

    .line 254
    array-length v7, p0

    .line 255
    if-le v1, v7, :cond_8

    .line 257
    goto :goto_3

    .line 258
    :cond_d
    add-int/lit8 v1, v7, 0x8

    .line 260
    goto :goto_2

    .line 261
    :cond_e
    invoke-static {p0, v7}, Lo/Ff;->h([BI)Lo/Cc;

    .line 264
    move-result-object v1

    .line 265
    if-nez v1, :cond_f

    .line 267
    goto :goto_3

    .line 268
    :cond_f
    iget-object v7, v1, Lo/Cc;->b:Ljava/lang/Object;

    .line 270
    check-cast v7, Ljava/lang/Number;

    .line 272
    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    .line 275
    move-result v7

    .line 276
    if-ne v8, v0, :cond_10

    .line 278
    cmp-long v8, v5, v2

    .line 280
    if-nez v8, :cond_10

    .line 282
    iget-object v1, v1, Lo/Cc;->a:Ljava/lang/Object;

    .line 284
    check-cast v1, Ljava/lang/Number;

    .line 286
    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    .line 289
    move-result-wide v5

    .line 290
    :cond_10
    move v1, v7

    .line 291
    goto :goto_2

    .line 292
    :cond_11
    :goto_3
    cmp-long p0, v5, v2

    .line 294
    if-lez p0, :cond_12

    .line 296
    sput-wide v5, Lo/Ff;->f:J

    .line 298
    sput-boolean v0, Lo/Ff;->g:Z

    .line 300
    :catch_5
    :cond_12
    return-void
.end method
