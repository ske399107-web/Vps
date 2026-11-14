.class public final Lo/Pg;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:[I

.field public b:I

.field public volatile c:I

.field public volatile d:Z

.field public final e:Ljava/util/ArrayList;

.field public volatile f:[B

.field public volatile g:Ljava/lang/String;

.field public h:Z

.field public i:I

.field public j:I

.field public k:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/16 v0, 0x100

    .line 6
    new-array v0, v0, [I

    .line 8
    iput-object v0, p0, Lo/Pg;->a:[I

    .line 10
    const/4 v0, -0x1

    .line 11
    iput v0, p0, Lo/Pg;->c:I

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    .line 15
    const/16 v1, 0x8

    .line 17
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 20
    iput-object v0, p0, Lo/Pg;->e:Ljava/util/ArrayList;

    .line 22
    const/4 v0, 0x0

    .line 23
    new-array v0, v0, [B

    .line 25
    iput-object v0, p0, Lo/Pg;->f:[B

    .line 27
    const-string v0, ""

    .line 29
    iput-object v0, p0, Lo/Pg;->g:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public static b(Lo/Pg;[BIILjava/lang/StringBuilder;)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 3
    move-object/from16 v1, p4

    .line 5
    const/4 v2, 0x4

    .line 6
    invoke-static/range {p1 .. p3}, Lo/H2;->n0([BII)[B

    .line 9
    move-result-object v3

    .line 10
    sget-object v4, Lo/Tg;->a:Lo/Tg;

    .line 12
    invoke-virtual {v4}, Lo/Tg;->g()Ljava/util/List;

    .line 15
    move-result-object v4

    .line 16
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 19
    move-result-object v4

    .line 20
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    move-result v5

    .line 24
    const/4 v8, 0x0

    .line 25
    const-string v9, "ffrt-moco"

    .line 27
    const/16 v10, 0x7f

    .line 29
    const/16 v11, 0x20

    .line 31
    const-string v12, "copyOf(...)"

    .line 33
    if-eqz v5, :cond_6

    .line 35
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 38
    move-result-object v5

    .line 39
    check-cast v5, [B

    .line 41
    invoke-virtual {v0, v5}, Lo/Pg;->a([B)V

    .line 44
    array-length v13, v3

    .line 45
    new-array v14, v13, [B

    .line 47
    array-length v15, v5

    .line 48
    array-length v6, v3

    .line 49
    invoke-static {v15, v6}, Ljava/lang/Math;->min(II)I

    .line 52
    move-result v6

    .line 53
    move v15, v8

    .line 54
    :goto_1
    if-ge v15, v6, :cond_1

    .line 56
    aget-byte v16, v3, v15

    .line 58
    aget-byte v17, v5, v15

    .line 60
    xor-int v7, v16, v17

    .line 62
    int-to-byte v7, v7

    .line 63
    aput-byte v7, v14, v15

    .line 65
    add-int/lit8 v15, v15, 0x1

    .line 67
    goto :goto_1

    .line 68
    :cond_1
    array-length v5, v3

    .line 69
    if-ge v6, v5, :cond_2

    .line 71
    array-length v5, v3

    .line 72
    invoke-static {v3, v14, v6, v6, v5}, Lo/H2;->j0([B[BIII)V

    .line 75
    :cond_2
    invoke-static {v14, v8}, Lo/Tg;->a([BI)I

    .line 78
    move-result v5

    .line 79
    if-gt v2, v5, :cond_0

    .line 81
    const/16 v6, 0x41

    .line 83
    if-ge v5, v6, :cond_0

    .line 85
    add-int/2addr v5, v2

    .line 86
    if-gt v5, v13, :cond_0

    .line 88
    invoke-static {v14, v2, v5}, Lo/H2;->n0([BII)[B

    .line 91
    move-result-object v5

    .line 92
    array-length v6, v5

    .line 93
    :goto_2
    if-ge v8, v6, :cond_5

    .line 95
    aget-byte v7, v5, v8

    .line 97
    and-int/lit16 v7, v7, 0xff

    .line 99
    if-gt v11, v7, :cond_3

    .line 101
    if-ge v7, v10, :cond_3

    .line 103
    add-int/lit8 v8, v8, 0x1

    .line 105
    goto :goto_2

    .line 106
    :cond_3
    array-length v6, v5

    .line 107
    const/16 v7, 0x10

    .line 109
    if-lt v6, v7, :cond_0

    .line 111
    invoke-virtual {v0, v5}, Lo/Pg;->a([B)V

    .line 114
    iget-object v6, v0, Lo/Pg;->f:[B

    .line 116
    array-length v6, v6

    .line 117
    if-eq v6, v7, :cond_4

    .line 119
    invoke-static {v5, v7}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 122
    move-result-object v6

    .line 123
    invoke-static {v6, v12}, Lo/x9;->n(Ljava/lang/Object;Ljava/lang/String;)V

    .line 126
    iput-object v6, v0, Lo/Pg;->f:[B

    .line 128
    sget-object v6, Lo/Tg;->a:Lo/Tg;

    .line 130
    iget-object v6, v0, Lo/Pg;->f:[B

    .line 132
    const/16 v7, 0x8

    .line 134
    invoke-static {v6, v7}, Lo/Tg;->h([BI)Ljava/lang/String;

    .line 137
    move-result-object v6

    .line 138
    const-string v7, "hello zipsess="

    .line 140
    invoke-virtual {v7, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 143
    move-result-object v6

    .line 144
    invoke-static {v9, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    :cond_4
    const-string v6, " zipsess="

    .line 149
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    sget-object v6, Lo/Tg;->a:Lo/Tg;

    .line 154
    const/16 v6, 0x10

    .line 156
    invoke-static {v5, v6}, Lo/Tg;->h([BI)Ljava/lang/String;

    .line 159
    move-result-object v5

    .line 160
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    goto/16 :goto_0

    .line 165
    :cond_5
    const-string v6, " zipid="

    .line 167
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    new-instance v6, Ljava/lang/String;

    .line 172
    sget-object v7, Lo/I3;->a:Ljava/nio/charset/Charset;

    .line 174
    invoke-direct {v6, v5, v7}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 177
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    goto/16 :goto_0

    .line 182
    :cond_6
    move v4, v8

    .line 183
    move v5, v4

    .line 184
    :goto_3
    add-int/lit8 v6, v4, 0x4

    .line 186
    array-length v7, v3

    .line 187
    if-gt v6, v7, :cond_17

    .line 189
    if-ge v5, v2, :cond_17

    .line 191
    invoke-static {v3, v4}, Lo/Tg;->a([BI)I

    .line 194
    move-result v7

    .line 195
    if-ltz v7, :cond_17

    .line 197
    const/16 v13, 0x80

    .line 199
    if-gt v7, v13, :cond_17

    .line 201
    add-int v13, v6, v7

    .line 203
    array-length v14, v3

    .line 204
    if-le v13, v14, :cond_7

    .line 206
    goto/16 :goto_b

    .line 208
    :cond_7
    invoke-static {v3, v6, v13}, Lo/H2;->n0([BII)[B

    .line 211
    move-result-object v6

    .line 212
    add-int/2addr v7, v2

    .line 213
    add-int/2addr v7, v4

    .line 214
    array-length v4, v6

    .line 215
    move v13, v8

    .line 216
    :goto_4
    if-ge v13, v4, :cond_8

    .line 218
    aget-byte v14, v6, v13

    .line 220
    and-int/lit16 v14, v14, 0xff

    .line 222
    if-gt v11, v14, :cond_9

    .line 224
    if-ge v14, v10, :cond_9

    .line 226
    add-int/lit8 v13, v13, 0x1

    .line 228
    goto :goto_4

    .line 229
    :cond_8
    array-length v4, v6

    .line 230
    if-nez v4, :cond_e

    .line 232
    :cond_9
    array-length v4, v6

    .line 233
    const/16 v13, 0x10

    .line 235
    if-lt v4, v13, :cond_c

    .line 237
    invoke-virtual {v0, v6}, Lo/Pg;->a([B)V

    .line 240
    iget-object v4, v0, Lo/Pg;->f:[B

    .line 242
    array-length v4, v4

    .line 243
    if-eq v4, v13, :cond_a

    .line 245
    invoke-static {v6, v13}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 248
    move-result-object v4

    .line 249
    invoke-static {v4, v12}, Lo/x9;->n(Ljava/lang/Object;Ljava/lang/String;)V

    .line 252
    iput-object v4, v0, Lo/Pg;->f:[B

    .line 254
    sget-object v4, Lo/Tg;->a:Lo/Tg;

    .line 256
    iget-object v4, v0, Lo/Pg;->f:[B

    .line 258
    const/16 v14, 0x8

    .line 260
    invoke-static {v4, v14}, Lo/Tg;->h([BI)Ljava/lang/String;

    .line 263
    move-result-object v4

    .line 264
    const-string v14, "hello session="

    .line 266
    invoke-virtual {v14, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 269
    move-result-object v4

    .line 270
    invoke-static {v9, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    const-string v4, " session="

    .line 275
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    invoke-static {v6, v13}, Lo/Tg;->h([BI)Ljava/lang/String;

    .line 281
    move-result-object v4

    .line 282
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    goto/16 :goto_8

    .line 287
    :cond_a
    const-string v4, " k="

    .line 289
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    sget-object v4, Lo/Tg;->a:Lo/Tg;

    .line 294
    array-length v4, v6

    .line 295
    if-le v13, v4, :cond_b

    .line 297
    goto :goto_5

    .line 298
    :cond_b
    const/16 v4, 0x10

    .line 300
    :goto_5
    invoke-static {v6, v4}, Lo/Tg;->h([BI)Ljava/lang/String;

    .line 303
    move-result-object v4

    .line 304
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    goto/16 :goto_8

    .line 309
    :cond_c
    array-length v4, v6

    .line 310
    if-nez v4, :cond_d

    .line 312
    goto/16 :goto_8

    .line 314
    :cond_d
    const-string v4, " b"

    .line 316
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 322
    const-string v4, "="

    .line 324
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    sget-object v4, Lo/Tg;->a:Lo/Tg;

    .line 329
    array-length v4, v6

    .line 330
    invoke-static {v6, v4}, Lo/Tg;->h([BI)Ljava/lang/String;

    .line 333
    move-result-object v4

    .line 334
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    array-length v4, v6

    .line 338
    const/16 v13, 0x8

    .line 340
    if-lt v4, v13, :cond_13

    .line 342
    const/16 v4, 0x10

    .line 344
    invoke-static {v6, v4}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 347
    move-result-object v13

    .line 348
    invoke-static {v13, v12}, Lo/x9;->n(Ljava/lang/Object;Ljava/lang/String;)V

    .line 351
    array-length v4, v6

    .line 352
    invoke-static {v6, v13, v8, v8, v4}, Lo/H2;->j0([B[BIII)V

    .line 355
    invoke-virtual {v0, v13}, Lo/Pg;->a([B)V

    .line 358
    goto/16 :goto_8

    .line 360
    :cond_e
    new-instance v4, Ljava/lang/String;

    .line 362
    sget-object v13, Lo/I3;->a:Ljava/nio/charset/Charset;

    .line 364
    invoke-direct {v4, v6, v13}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 367
    iget-object v13, v0, Lo/Pg;->g:Ljava/lang/String;

    .line 369
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    .line 372
    move-result v13

    .line 373
    if-nez v13, :cond_f

    .line 375
    iput-object v4, v0, Lo/Pg;->g:Ljava/lang/String;

    .line 377
    :cond_f
    const-string v13, " id="

    .line 379
    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 382
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 385
    invoke-virtual {v0, v6}, Lo/Pg;->a([B)V

    .line 388
    new-instance v6, Ljava/lang/StringBuilder;

    .line 390
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 393
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 396
    move-result v13

    .line 397
    move v14, v8

    .line 398
    :goto_6
    if-ge v14, v13, :cond_11

    .line 400
    invoke-virtual {v4, v14}, Ljava/lang/String;->charAt(I)C

    .line 403
    move-result v15

    .line 404
    const-string v10, "0123456789abcdefABCDEF"

    .line 406
    invoke-virtual {v10, v15, v8}, Ljava/lang/String;->indexOf(II)I

    .line 409
    move-result v10

    .line 410
    if-ltz v10, :cond_10

    .line 412
    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/Appendable;

    .line 415
    :cond_10
    add-int/lit8 v14, v14, 0x1

    .line 417
    const/16 v10, 0x7f

    .line 419
    goto :goto_6

    .line 420
    :cond_11
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 423
    move-result-object v4

    .line 424
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 427
    move-result v6

    .line 428
    if-lt v6, v11, :cond_13

    .line 430
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 433
    move-result v6

    .line 434
    rem-int/lit8 v6, v6, 0x2

    .line 436
    if-nez v6, :cond_13

    .line 438
    sget-object v6, Lo/Tg;->a:Lo/Tg;

    .line 440
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 443
    move-result v6

    .line 444
    div-int/lit8 v6, v6, 0x2

    .line 446
    new-array v6, v6, [B

    .line 448
    move v10, v8

    .line 449
    :goto_7
    add-int/lit8 v13, v10, 0x1

    .line 451
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 454
    move-result v14

    .line 455
    if-ge v13, v14, :cond_12

    .line 457
    div-int/lit8 v13, v10, 0x2

    .line 459
    add-int/lit8 v14, v10, 0x2

    .line 461
    invoke-virtual {v4, v10, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 464
    move-result-object v10

    .line 465
    const-string v15, "substring(...)"

    .line 467
    invoke-static {v10, v15}, Lo/x9;->n(Ljava/lang/Object;Ljava/lang/String;)V

    .line 470
    const/16 v15, 0x10

    .line 472
    invoke-static {v15}, Lo/L1;->j(I)V

    .line 475
    invoke-static {v10, v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    .line 478
    move-result v10

    .line 479
    int-to-byte v10, v10

    .line 480
    aput-byte v10, v6, v13

    .line 482
    move v10, v14

    .line 483
    goto :goto_7

    .line 484
    :cond_12
    invoke-virtual {v0, v6}, Lo/Pg;->a([B)V

    .line 487
    :cond_13
    :goto_8
    add-int/lit8 v4, v7, 0x4

    .line 489
    array-length v6, v3

    .line 490
    if-gt v4, v6, :cond_15

    .line 492
    aget-byte v6, v3, v7

    .line 494
    and-int/lit16 v6, v6, 0xff

    .line 496
    add-int/lit8 v10, v7, 0x1

    .line 498
    aget-byte v10, v3, v10

    .line 500
    and-int/lit16 v10, v10, 0xff

    .line 502
    const/16 v13, 0x8

    .line 504
    shl-int/2addr v10, v13

    .line 505
    or-int/2addr v6, v10

    .line 506
    array-length v10, v3

    .line 507
    if-gt v4, v10, :cond_14

    .line 509
    add-int/lit8 v10, v7, 0x2

    .line 511
    aget-byte v10, v3, v10

    .line 513
    and-int/lit16 v10, v10, 0xff

    .line 515
    add-int/lit8 v13, v7, 0x3

    .line 517
    aget-byte v13, v3, v13

    .line 519
    and-int/lit16 v13, v13, 0xff

    .line 521
    const/16 v14, 0x8

    .line 523
    shl-int/2addr v13, v14

    .line 524
    or-int/2addr v10, v13

    .line 525
    goto :goto_9

    .line 526
    :cond_14
    const/16 v14, 0x8

    .line 528
    const/4 v10, -0x1

    .line 529
    :goto_9
    if-ltz v6, :cond_16

    .line 531
    const/16 v13, 0x1001

    .line 533
    if-ge v6, v13, :cond_16

    .line 535
    if-ltz v10, :cond_16

    .line 537
    if-ge v10, v13, :cond_16

    .line 539
    const-string v7, " ord="

    .line 541
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 544
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 547
    const-string v6, "/"

    .line 549
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 552
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 555
    goto :goto_a

    .line 556
    :cond_15
    const/16 v14, 0x8

    .line 558
    :cond_16
    move v4, v7

    .line 559
    :goto_a
    add-int/lit8 v5, v5, 0x1

    .line 561
    const/16 v10, 0x7f

    .line 563
    goto/16 :goto_3

    .line 565
    :cond_17
    :goto_b
    array-length v1, v3

    .line 566
    const/16 v2, 0x10

    .line 568
    if-lt v1, v2, :cond_18

    .line 570
    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 573
    move-result-object v1

    .line 574
    invoke-static {v1, v12}, Lo/x9;->n(Ljava/lang/Object;Ljava/lang/String;)V

    .line 577
    invoke-virtual {v0, v1}, Lo/Pg;->a([B)V

    .line 580
    :cond_18
    iget v1, v0, Lo/Pg;->c:I

    .line 582
    if-ltz v1, :cond_1a

    .line 584
    const/16 v3, 0x100

    .line 586
    if-ge v1, v3, :cond_1a

    .line 588
    new-array v1, v2, [B

    .line 590
    :goto_c
    if-ge v8, v2, :cond_19

    .line 592
    iget v3, v0, Lo/Pg;->c:I

    .line 594
    int-to-byte v3, v3

    .line 595
    aput-byte v3, v1, v8

    .line 597
    add-int/lit8 v8, v8, 0x1

    .line 599
    goto :goto_c

    .line 600
    :cond_19
    invoke-virtual {v0, v1}, Lo/Pg;->a([B)V

    .line 603
    :cond_1a
    return-void
.end method

.method public static final e([BILo/Pg;I)I
    .locals 0

    .line 1
    add-int/2addr p1, p3

    .line 2
    aget-byte p0, p0, p1

    .line 4
    and-int/lit16 p0, p0, 0xff

    .line 6
    iget p1, p2, Lo/Pg;->c:I

    .line 8
    xor-int/2addr p0, p1

    .line 9
    return p0
.end method


# virtual methods
.method public final a([B)V
    .locals 3

    .line 1
    array-length v0, p1

    .line 2
    const/16 v1, 0x10

    .line 4
    if-ge v0, v1, :cond_0

    .line 6
    return-void

    .line 7
    :cond_0
    array-length v0, p1

    .line 8
    if-ne v0, v1, :cond_1

    .line 10
    goto :goto_0

    .line 11
    :cond_1
    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 14
    move-result-object p1

    .line 15
    const-string v0, "copyOf(...)"

    .line 17
    invoke-static {p1, v0}, Lo/x9;->n(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    :goto_0
    iget-object v0, p0, Lo/Pg;->e:Ljava/util/ArrayList;

    .line 22
    monitor-enter v0

    .line 23
    :try_start_0
    iget-object v1, p0, Lo/Pg;->e:Ljava/util/ArrayList;

    .line 25
    if-eqz v1, :cond_2

    .line 27
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 30
    move-result v2

    .line 31
    if-eqz v2, :cond_2

    .line 33
    goto :goto_1

    .line 34
    :catchall_0
    move-exception p1

    .line 35
    goto :goto_3

    .line 36
    :cond_2
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 39
    move-result-object v1

    .line 40
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 43
    move-result v2

    .line 44
    if-eqz v2, :cond_4

    .line 46
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 49
    move-result-object v2

    .line 50
    check-cast v2, [B

    .line 52
    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([B[B)Z

    .line 55
    move-result v2

    .line 56
    if-eqz v2, :cond_3

    .line 58
    goto :goto_2

    .line 59
    :cond_4
    :goto_1
    iget-object v1, p0, Lo/Pg;->e:Ljava/util/ArrayList;

    .line 61
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    sget p1, Lo/Tg;->p:I

    .line 66
    sget-object v1, Lo/Tg;->a:Lo/Tg;

    .line 68
    add-int/lit8 p1, p1, 0x1

    .line 70
    sput p1, Lo/Tg;->p:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    :goto_2
    monitor-exit v0

    .line 73
    return-void

    .line 74
    :goto_3
    monitor-exit v0

    .line 75
    throw p1
.end method

.method public final c([BII)V
    .locals 6

    .line 1
    const/16 v0, 0x8

    .line 3
    iget v1, p0, Lo/Pg;->c:I

    .line 5
    if-ltz v1, :cond_3

    .line 7
    if-ge p2, v0, :cond_0

    .line 9
    goto/16 :goto_0

    .line 11
    :cond_0
    iget v1, p0, Lo/Pg;->c:I

    .line 13
    add-int/lit8 v2, p3, 0x2

    .line 15
    aget-byte v3, p1, v2

    .line 17
    and-int/lit16 v3, v3, 0xff

    .line 19
    xor-int/2addr v1, v3

    .line 20
    const/4 v3, 0x1

    .line 21
    if-nez v1, :cond_1

    .line 23
    iget v1, p0, Lo/Pg;->c:I

    .line 25
    add-int/lit8 v4, p3, 0x6

    .line 27
    aget-byte v4, p1, v4

    .line 29
    and-int/lit16 v4, v4, 0xff

    .line 31
    xor-int/2addr v4, v1

    .line 32
    add-int/lit8 v5, p3, 0x7

    .line 34
    aget-byte v5, p1, v5

    .line 36
    and-int/lit16 v5, v5, 0xff

    .line 38
    xor-int/2addr v1, v5

    .line 39
    shl-int/2addr v1, v0

    .line 40
    or-int/2addr v1, v4

    .line 41
    add-int/lit8 v4, p2, -0x8

    .line 43
    if-ne v1, v4, :cond_1

    .line 45
    iget v1, p0, Lo/Pg;->i:I

    .line 47
    add-int/2addr v1, v3

    .line 48
    iput v1, p0, Lo/Pg;->i:I

    .line 50
    :cond_1
    iget v1, p0, Lo/Pg;->c:I

    .line 52
    xor-int/2addr v1, v3

    .line 53
    aget-byte v2, p1, v2

    .line 55
    and-int/lit16 v2, v2, 0xff

    .line 57
    xor-int/2addr v2, v1

    .line 58
    if-nez v2, :cond_2

    .line 60
    add-int/lit8 v2, p3, 0x6

    .line 62
    aget-byte v2, p1, v2

    .line 64
    and-int/lit16 v2, v2, 0xff

    .line 66
    xor-int/2addr v2, v1

    .line 67
    add-int/lit8 p3, p3, 0x7

    .line 69
    aget-byte p1, p1, p3

    .line 71
    and-int/lit16 p1, p1, 0xff

    .line 73
    xor-int/2addr p1, v1

    .line 74
    shl-int/2addr p1, v0

    .line 75
    or-int/2addr p1, v2

    .line 76
    sub-int/2addr p2, v0

    .line 77
    if-ne p1, p2, :cond_2

    .line 79
    iget p1, p0, Lo/Pg;->j:I

    .line 81
    add-int/2addr p1, v3

    .line 82
    iput p1, p0, Lo/Pg;->j:I

    .line 84
    :cond_2
    iget p1, p0, Lo/Pg;->j:I

    .line 86
    const/16 p2, 0xa

    .line 88
    if-lt p1, p2, :cond_3

    .line 90
    iget p2, p0, Lo/Pg;->i:I

    .line 92
    add-int/lit8 p2, p2, 0x4

    .line 94
    if-le p1, p2, :cond_3

    .line 96
    iget p1, p0, Lo/Pg;->c:I

    .line 98
    iput v1, p0, Lo/Pg;->c:I

    .line 100
    iput-boolean v3, p0, Lo/Pg;->d:Z

    .line 102
    iget p2, p0, Lo/Pg;->j:I

    .line 104
    iput p2, p0, Lo/Pg;->i:I

    .line 106
    const/4 p2, 0x0

    .line 107
    iput p2, p0, Lo/Pg;->j:I

    .line 109
    iget-boolean p2, p0, Lo/Pg;->h:Z

    .line 111
    if-nez p2, :cond_3

    .line 113
    iput-boolean v3, p0, Lo/Pg;->h:Z

    .line 115
    sget p2, Lo/ta;->a:I

    .line 117
    const/16 p2, 0x10

    .line 119
    invoke-static {p2}, Lo/L1;->j(I)V

    .line 122
    invoke-static {p1, p2}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    .line 125
    move-result-object p1

    .line 126
    const-string p3, "toString(...)"

    .line 128
    invoke-static {p1, p3}, Lo/x9;->n(Ljava/lang/Object;Ljava/lang/String;)V

    .line 131
    invoke-static {p2}, Lo/L1;->j(I)V

    .line 134
    invoke-static {v1, p2}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    .line 137
    move-result-object p2

    .line 138
    invoke-static {p2, p3}, Lo/x9;->n(Ljava/lang/Object;Ljava/lang/String;)V

    .line 141
    new-instance p3, Ljava/lang/StringBuilder;

    .line 143
    const-string v0, "xor s\u1eeda 0x"

    .line 145
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 148
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    const-string p1, " \u2192 0x"

    .line 153
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    const-string p1, " (NONE length)"

    .line 161
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 167
    move-result-object p1

    .line 168
    invoke-static {p1}, Lo/ta;->a(Ljava/lang/String;)V

    .line 171
    :cond_3
    :goto_0
    return-void
.end method

.method public final declared-synchronized d([BII)Lo/Og;
    .locals 18

    .line 1
    move-object/from16 v1, p0

    .line 3
    move-object/from16 v0, p1

    .line 5
    move/from16 v2, p2

    .line 7
    move/from16 v3, p3

    .line 9
    monitor-enter p0

    .line 10
    const/16 v4, 0x8

    .line 12
    const/4 v5, 0x0

    .line 13
    if-lt v2, v4, :cond_15

    .line 15
    if-ltz v3, :cond_15

    .line 17
    add-int v6, v3, v2

    .line 19
    :try_start_0
    array-length v7, v0

    .line 20
    if-le v6, v7, :cond_0

    .line 22
    goto/16 :goto_c

    .line 24
    :cond_0
    aget-byte v6, v0, v3

    .line 26
    and-int/lit16 v8, v6, 0xff

    .line 28
    add-int/lit8 v6, v3, 0x1

    .line 30
    aget-byte v6, v0, v6

    .line 32
    and-int/lit16 v9, v6, 0xff

    .line 34
    add-int/lit8 v6, v3, 0x2

    .line 36
    aget-byte v6, v0, v6

    .line 38
    and-int/lit16 v6, v6, 0xff

    .line 40
    iget-boolean v7, v1, Lo/Pg;->d:Z

    .line 42
    const/4 v10, 0x2

    .line 43
    const/4 v11, 0x1

    .line 44
    const/16 v12, 0x10

    .line 46
    const/4 v13, 0x0

    .line 47
    if-eqz v7, :cond_1

    .line 49
    goto :goto_1

    .line 50
    :cond_1
    iget-object v7, v1, Lo/Pg;->a:[I

    .line 52
    aget v14, v7, v6

    .line 54
    add-int/2addr v14, v11

    .line 55
    aput v14, v7, v6

    .line 57
    iget v7, v1, Lo/Pg;->b:I

    .line 59
    add-int/2addr v7, v11

    .line 60
    iput v7, v1, Lo/Pg;->b:I

    .line 62
    iget v7, v1, Lo/Pg;->c:I

    .line 64
    if-gez v7, :cond_2

    .line 66
    xor-int/lit8 v7, v6, 0x1

    .line 68
    iput v7, v1, Lo/Pg;->c:I

    .line 70
    :cond_2
    iget v7, v1, Lo/Pg;->b:I

    .line 72
    if-ge v7, v12, :cond_3

    .line 74
    goto :goto_1

    .line 75
    :cond_3
    move v14, v6

    .line 76
    move v7, v13

    .line 77
    move v15, v7

    .line 78
    :goto_0
    const/16 v4, 0x100

    .line 80
    if-ge v7, v4, :cond_5

    .line 82
    iget-object v4, v1, Lo/Pg;->a:[I

    .line 84
    aget v4, v4, v7

    .line 86
    if-le v4, v15, :cond_4

    .line 88
    move v15, v4

    .line 89
    move v14, v7

    .line 90
    :cond_4
    add-int/lit8 v7, v7, 0x1

    .line 92
    goto :goto_0

    .line 93
    :cond_5
    iget v4, v1, Lo/Pg;->c:I

    .line 95
    if-ne v14, v4, :cond_6

    .line 97
    mul-int/2addr v15, v10

    .line 98
    iget v4, v1, Lo/Pg;->b:I

    .line 100
    if-lt v15, v4, :cond_6

    .line 102
    iput-boolean v11, v1, Lo/Pg;->d:Z

    .line 104
    :cond_6
    :goto_1
    invoke-virtual/range {p0 .. p3}, Lo/Pg;->c([BII)V

    .line 107
    iget v4, v1, Lo/Pg;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    if-gez v4, :cond_7

    .line 111
    monitor-exit p0

    .line 112
    return-object v5

    .line 113
    :cond_7
    :try_start_1
    iget v4, v1, Lo/Pg;->c:I

    .line 115
    xor-int/2addr v4, v6

    .line 116
    const/4 v7, 0x6

    .line 117
    const/4 v14, 0x5

    .line 118
    if-le v4, v14, :cond_a

    .line 120
    iget v4, v1, Lo/Pg;->k:I

    .line 122
    add-int/2addr v4, v11

    .line 123
    iput v4, v1, Lo/Pg;->k:I

    .line 125
    const/16 v15, 0xc

    .line 127
    if-lt v4, v15, :cond_9

    .line 129
    xor-int/lit8 v4, v6, 0x1

    .line 131
    if-ltz v4, :cond_8

    .line 133
    if-ge v4, v7, :cond_8

    .line 135
    iput v4, v1, Lo/Pg;->c:I

    .line 137
    iput-boolean v13, v1, Lo/Pg;->d:Z

    .line 139
    iput v13, v1, Lo/Pg;->k:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 141
    goto :goto_2

    .line 142
    :catchall_0
    move-exception v0

    .line 143
    goto/16 :goto_b

    .line 145
    :cond_8
    monitor-exit p0

    .line 146
    return-object v5

    .line 147
    :cond_9
    monitor-exit p0

    .line 148
    return-object v5

    .line 149
    :cond_a
    :try_start_2
    iput v13, v1, Lo/Pg;->k:I

    .line 151
    :goto_2
    if-eq v4, v11, :cond_c

    .line 153
    if-eq v4, v10, :cond_c

    .line 155
    if-ne v4, v14, :cond_b

    .line 157
    goto :goto_3

    .line 158
    :cond_b
    move v6, v13

    .line 159
    goto :goto_4

    .line 160
    :cond_c
    :goto_3
    move v6, v11

    .line 161
    :goto_4
    const/16 v10, 0xa

    .line 163
    if-eqz v6, :cond_d

    .line 165
    if-lt v2, v10, :cond_d

    .line 167
    move v15, v10

    .line 168
    goto :goto_5

    .line 169
    :cond_d
    const/16 v15, 0x8

    .line 171
    :goto_5
    if-lt v2, v12, :cond_12

    .line 173
    add-int/lit8 v12, v2, -0x8

    .line 175
    const/16 v16, 0x8

    .line 177
    rem-int/lit8 v12, v12, 0x8

    .line 179
    if-nez v12, :cond_e

    .line 181
    move v12, v11

    .line 182
    goto :goto_6

    .line 183
    :cond_e
    move v12, v13

    .line 184
    :goto_6
    if-lt v2, v10, :cond_f

    .line 186
    add-int/lit8 v17, v2, -0xa

    .line 188
    rem-int/lit8 v17, v17, 0x8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 190
    if-nez v17, :cond_f

    .line 192
    goto :goto_7

    .line 193
    :cond_f
    move v11, v13

    .line 194
    :goto_7
    if-eqz v6, :cond_10

    .line 196
    if-eqz v11, :cond_10

    .line 198
    :goto_8
    move v15, v10

    .line 199
    goto :goto_9

    .line 200
    :cond_10
    if-eqz v12, :cond_11

    .line 202
    const/16 v15, 0x8

    .line 204
    goto :goto_9

    .line 205
    :cond_11
    if-eqz v11, :cond_12

    .line 207
    goto :goto_8

    .line 208
    :cond_12
    :goto_9
    move v6, v15

    .line 209
    if-ge v2, v6, :cond_13

    .line 211
    monitor-exit p0

    .line 212
    return-object v5

    .line 213
    :cond_13
    const/4 v2, 0x3

    .line 214
    :try_start_3
    invoke-static {v0, v3, v1, v2}, Lo/Pg;->e([BILo/Pg;I)I

    .line 217
    move-result v2

    .line 218
    const/4 v5, 0x4

    .line 219
    invoke-static {v0, v3, v1, v5}, Lo/Pg;->e([BILo/Pg;I)I

    .line 222
    move-result v5

    .line 223
    const/16 v11, 0x8

    .line 225
    shl-int/2addr v5, v11

    .line 226
    or-int v12, v2, v5

    .line 228
    const/4 v2, 0x7

    .line 229
    if-ne v6, v10, :cond_14

    .line 231
    invoke-static {v0, v3, v1, v14}, Lo/Pg;->e([BILo/Pg;I)I

    .line 234
    move-result v5

    .line 235
    invoke-static {v0, v3, v1, v7}, Lo/Pg;->e([BILo/Pg;I)I

    .line 238
    move-result v7

    .line 239
    shl-int/2addr v7, v11

    .line 240
    or-int/2addr v5, v7

    .line 241
    invoke-static {v0, v3, v1, v2}, Lo/Pg;->e([BILo/Pg;I)I

    .line 244
    move-result v2

    .line 245
    invoke-static {v0, v3, v1, v11}, Lo/Pg;->e([BILo/Pg;I)I

    .line 248
    move-result v7

    .line 249
    const/16 v10, 0x9

    .line 251
    invoke-static {v0, v3, v1, v10}, Lo/Pg;->e([BILo/Pg;I)I

    .line 254
    move-result v0

    .line 255
    shl-int/2addr v0, v11

    .line 256
    or-int/2addr v0, v7

    .line 257
    move v15, v0

    .line 258
    move v14, v2

    .line 259
    move v13, v5

    .line 260
    goto :goto_a

    .line 261
    :cond_14
    invoke-static {v0, v3, v1, v14}, Lo/Pg;->e([BILo/Pg;I)I

    .line 264
    move-result v5

    .line 265
    invoke-static {v0, v3, v1, v7}, Lo/Pg;->e([BILo/Pg;I)I

    .line 268
    move-result v7

    .line 269
    invoke-static {v0, v3, v1, v2}, Lo/Pg;->e([BILo/Pg;I)I

    .line 272
    move-result v0

    .line 273
    const/16 v2, 0x8

    .line 275
    shl-int/2addr v0, v2

    .line 276
    or-int/2addr v0, v7

    .line 277
    const/4 v2, -0x1

    .line 278
    move v15, v0

    .line 279
    move v13, v2

    .line 280
    move v14, v5

    .line 281
    :goto_a
    new-instance v0, Lo/Og;

    .line 283
    sget-object v2, Lo/Tg;->b:[Ljava/lang/String;

    .line 285
    aget-object v11, v2, v4

    .line 287
    iget v2, v1, Lo/Pg;->c:I

    .line 289
    move-object v7, v0

    .line 290
    move v10, v4

    .line 291
    move/from16 v16, v6

    .line 293
    move/from16 v17, v2

    .line 295
    invoke-direct/range {v7 .. v17}, Lo/Og;-><init>(IIILjava/lang/String;IIIIII)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 298
    monitor-exit p0

    .line 299
    return-object v0

    .line 300
    :goto_b
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 301
    throw v0

    .line 302
    :cond_15
    :goto_c
    monitor-exit p0

    .line 303
    return-object v5
.end method
