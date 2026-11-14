.class public final Lo/yc;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:I

.field public final c:Ljava/lang/String;

.field public final d:I

.field public final e:Ljava/util/concurrent/LinkedBlockingQueue;

.field public f:J

.field public volatile g:J

.field public h:Ljava/net/Socket;

.field public volatile i:Z

.field public volatile j:Z

.field public volatile k:Z

.field public volatile l:Z

.field public m:I

.field public n:[B

.field public o:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;IJ)V
    .locals 1

    .line 1
    const-string v0, "srcIp"

    .line 3
    invoke-static {p1, v0}, Lo/x9;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    const-string v0, "dstIp"

    .line 8
    invoke-static {p3, v0}, Lo/x9;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lo/yc;->a:Ljava/lang/String;

    .line 16
    iput p2, p0, Lo/yc;->b:I

    .line 18
    iput-object p3, p0, Lo/yc;->c:Ljava/lang/String;

    .line 20
    iput p4, p0, Lo/yc;->d:I

    .line 22
    new-instance p1, Ljava/util/concurrent/LinkedBlockingQueue;

    .line 24
    const/16 p2, 0x800

    .line 26
    invoke-direct {p1, p2}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    .line 29
    iput-object p1, p0, Lo/yc;->e:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 31
    const-wide/16 p1, 0x1

    .line 33
    add-long/2addr p5, p1

    .line 34
    const-wide p1, 0xffffffffL

    .line 39
    and-long/2addr p1, p5

    .line 40
    iput-wide p1, p0, Lo/yc;->g:J

    .line 42
    const/16 p1, 0x5b4

    .line 44
    iput p1, p0, Lo/yc;->m:I

    .line 46
    const/4 p1, 0x0

    .line 47
    new-array p2, p1, [B

    .line 49
    iput-object p2, p0, Lo/yc;->n:[B

    .line 51
    new-array p1, p1, [B

    .line 53
    iput-object p1, p0, Lo/yc;->o:[B

    .line 55
    return-void
.end method

.method public static a([B[B)[B
    .locals 3

    .line 1
    array-length v0, p0

    .line 2
    if-nez v0, :cond_0

    .line 4
    array-length p0, p1

    .line 5
    invoke-static {p1, p0}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 8
    move-result-object p0

    .line 9
    const-string p1, "copyOf(...)"

    .line 11
    invoke-static {p0, p1}, Lo/x9;->n(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    return-object p0

    .line 15
    :cond_0
    array-length v0, p0

    .line 16
    array-length v1, p1

    .line 17
    add-int/2addr v0, v1

    .line 18
    new-array v0, v0, [B

    .line 20
    const/16 v1, 0xe

    .line 22
    const/4 v2, 0x0

    .line 23
    invoke-static {v2, v1, p0, v0}, Lo/H2;->l0(II[B[B)V

    .line 26
    array-length p0, p0

    .line 27
    const/16 v1, 0xc

    .line 29
    invoke-static {p0, v1, p1, v0}, Lo/H2;->l0(II[B[B)V

    .line 32
    return-object v0
.end method

.method public static c(C)Z
    .locals 1

    .line 1
    const/16 v0, 0x30

    .line 3
    if-gt v0, p0, :cond_0

    .line 5
    const/16 v0, 0x3a

    .line 7
    if-ge p0, v0, :cond_0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/16 v0, 0x61

    .line 12
    if-gt v0, p0, :cond_1

    .line 14
    const/16 v0, 0x67

    .line 16
    if-ge p0, v0, :cond_1

    .line 18
    goto :goto_0

    .line 19
    :cond_1
    const/16 v0, 0x41

    .line 21
    if-gt v0, p0, :cond_2

    .line 23
    const/16 v0, 0x47

    .line 25
    if-ge p0, v0, :cond_2

    .line 27
    :goto_0
    const/4 p0, 0x1

    .line 28
    goto :goto_1

    .line 29
    :cond_2
    const/4 p0, 0x0

    .line 30
    :goto_1
    return p0
.end method

.method public static d(Ljava/lang/String;)[B
    .locals 6

    .line 1
    const/16 v0, 0x10

    .line 3
    new-array v1, v0, [B

    .line 5
    const/4 v2, 0x0

    .line 6
    :goto_0
    const/16 v3, 0x20

    .line 8
    if-ge v2, v3, :cond_0

    .line 10
    div-int/lit8 v3, v2, 0x2

    .line 12
    add-int/lit8 v4, v2, 0x2

    .line 14
    invoke-virtual {p0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 17
    move-result-object v2

    .line 18
    const-string v5, "substring(...)"

    .line 20
    invoke-static {v2, v5}, Lo/x9;->n(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-static {v0}, Lo/L1;->j(I)V

    .line 26
    invoke-static {v2, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    .line 29
    move-result v2

    .line 30
    int-to-byte v2, v2

    .line 31
    aput-byte v2, v1, v3

    .line 33
    move v2, v4

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    return-object v1
.end method


# virtual methods
.method public final b()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lo/yc;->l:Z

    .line 4
    :try_start_0
    iget-object v0, p0, Lo/yc;->h:Ljava/net/Socket;

    .line 6
    if-eqz v0, :cond_0

    .line 8
    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    :catchall_0
    :cond_0
    return-void
.end method

.method public final e(Ljava/lang/String;[B)V
    .locals 18

    .line 1
    move-object/from16 v1, p0

    .line 3
    move-object/from16 v2, p2

    .line 5
    const/4 v0, 0x4

    .line 6
    const/4 v3, 0x3

    .line 7
    const/4 v4, 0x2

    .line 8
    const/16 v5, 0x16

    .line 10
    const/16 v6, 0x20

    .line 12
    const/16 v7, 0x26

    .line 14
    const/4 v8, 0x5

    .line 15
    const/4 v9, 0x6

    .line 16
    iget v10, v1, Lo/yc;->d:I

    .line 18
    const/16 v11, 0x1bb

    .line 20
    if-eq v10, v11, :cond_28

    .line 22
    const/16 v11, 0x50

    .line 24
    if-eq v10, v11, :cond_28

    .line 26
    const/16 v11, 0x355

    .line 28
    if-ne v10, v11, :cond_0

    .line 30
    goto/16 :goto_19

    .line 32
    :cond_0
    array-length v10, v2

    .line 33
    const/16 v11, 0x8

    .line 35
    const/16 v12, 0x10

    .line 37
    if-eq v10, v5, :cond_1

    .line 39
    array-length v10, v2

    .line 40
    if-ne v10, v7, :cond_3

    .line 42
    :cond_1
    aget-byte v10, v2, v4

    .line 44
    and-int/lit16 v10, v10, 0xff

    .line 46
    shl-int/lit8 v10, v10, 0x18

    .line 48
    aget-byte v13, v2, v3

    .line 50
    and-int/lit16 v13, v13, 0xff

    .line 52
    shl-int/2addr v13, v12

    .line 53
    or-int/2addr v10, v13

    .line 54
    aget-byte v13, v2, v0

    .line 56
    and-int/lit16 v13, v13, 0xff

    .line 58
    shl-int/2addr v13, v11

    .line 59
    or-int/2addr v10, v13

    .line 60
    aget-byte v13, v2, v8

    .line 62
    and-int/lit16 v13, v13, 0xff

    .line 64
    or-int/2addr v10, v13

    .line 65
    if-ne v10, v12, :cond_2

    .line 67
    array-length v13, v2

    .line 68
    if-lt v13, v5, :cond_2

    .line 70
    sget-object v10, Lo/Tg;->a:Lo/Tg;

    .line 72
    invoke-static {v2, v9, v5}, Lo/H2;->n0([BII)[B

    .line 75
    move-result-object v13

    .line 76
    const-string v14, "tcp16"

    .line 78
    invoke-virtual {v10, v14, v13}, Lo/Tg;->b(Ljava/lang/String;[B)V

    .line 81
    goto :goto_0

    .line 82
    :cond_2
    if-ne v10, v6, :cond_3

    .line 84
    array-length v10, v2

    .line 85
    if-lt v10, v7, :cond_3

    .line 87
    sget-object v10, Lo/Tg;->a:Lo/Tg;

    .line 89
    invoke-static {v2, v9, v5}, Lo/H2;->n0([BII)[B

    .line 92
    move-result-object v13

    .line 93
    const-string v14, "tcp32a"

    .line 95
    invoke-virtual {v10, v14, v13}, Lo/Tg;->b(Ljava/lang/String;[B)V

    .line 98
    invoke-static {v2, v5, v7}, Lo/H2;->n0([BII)[B

    .line 101
    move-result-object v13

    .line 102
    const-string v14, "tcp32b"

    .line 104
    invoke-virtual {v10, v14, v13}, Lo/Tg;->b(Ljava/lang/String;[B)V

    .line 107
    :cond_3
    :goto_0
    array-length v10, v2

    .line 108
    if-ne v10, v12, :cond_4

    .line 110
    sget-object v10, Lo/Tg;->a:Lo/Tg;

    .line 112
    const-string v13, "tcpraw16"

    .line 114
    invoke-virtual {v10, v13, v2}, Lo/Tg;->b(Ljava/lang/String;[B)V

    .line 117
    :cond_4
    const-string v10, "C2S"

    .line 119
    move-object/from16 v13, p1

    .line 121
    invoke-virtual {v13, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 124
    move-result v10

    .line 125
    if-eqz v10, :cond_6

    .line 127
    iget-object v10, v1, Lo/yc;->n:[B

    .line 129
    invoke-static {v10, v2}, Lo/yc;->a([B[B)[B

    .line 132
    move-result-object v10

    .line 133
    array-length v14, v10

    .line 134
    add-int/lit16 v14, v14, -0x1000

    .line 136
    if-gez v14, :cond_5

    .line 138
    const/4 v14, 0x0

    .line 139
    :cond_5
    array-length v15, v10

    .line 140
    invoke-static {v10, v14, v15}, Lo/H2;->n0([BII)[B

    .line 143
    move-result-object v14

    .line 144
    iput-object v14, v1, Lo/yc;->n:[B

    .line 146
    goto :goto_1

    .line 147
    :cond_6
    iget-object v10, v1, Lo/yc;->o:[B

    .line 149
    invoke-static {v10, v2}, Lo/yc;->a([B[B)[B

    .line 152
    move-result-object v10

    .line 153
    array-length v14, v10

    .line 154
    add-int/lit16 v14, v14, -0x1000

    .line 156
    if-gez v14, :cond_7

    .line 158
    const/4 v14, 0x0

    .line 159
    :cond_7
    array-length v15, v10

    .line 160
    invoke-static {v10, v14, v15}, Lo/H2;->n0([BII)[B

    .line 163
    move-result-object v14

    .line 164
    iput-object v14, v1, Lo/yc;->o:[B

    .line 166
    :goto_1
    const/4 v14, 0x0

    .line 167
    :goto_2
    add-int/lit8 v15, v14, 0x16

    .line 169
    array-length v5, v10

    .line 170
    if-gt v15, v5, :cond_a

    .line 172
    add-int/lit8 v5, v14, 0x2

    .line 174
    aget-byte v5, v10, v5

    .line 176
    and-int/lit16 v5, v5, 0xff

    .line 178
    shl-int/lit8 v5, v5, 0x18

    .line 180
    add-int/lit8 v16, v14, 0x3

    .line 182
    aget-byte v3, v10, v16

    .line 184
    and-int/lit16 v3, v3, 0xff

    .line 186
    shl-int/2addr v3, v12

    .line 187
    or-int/2addr v3, v5

    .line 188
    add-int/lit8 v5, v14, 0x4

    .line 190
    aget-byte v5, v10, v5

    .line 192
    and-int/lit16 v5, v5, 0xff

    .line 194
    shl-int/2addr v5, v11

    .line 195
    or-int/2addr v3, v5

    .line 196
    add-int/lit8 v5, v14, 0x5

    .line 198
    aget-byte v5, v10, v5

    .line 200
    and-int/lit16 v5, v5, 0xff

    .line 202
    or-int/2addr v3, v5

    .line 203
    if-ne v3, v12, :cond_8

    .line 205
    sget-object v3, Lo/Tg;->a:Lo/Tg;

    .line 207
    add-int/lit8 v5, v14, 0x6

    .line 209
    invoke-static {v10, v5, v15}, Lo/H2;->n0([BII)[B

    .line 212
    move-result-object v5

    .line 213
    const-string v15, "tcp-stream16"

    .line 215
    invoke-virtual {v3, v15, v5}, Lo/Tg;->b(Ljava/lang/String;[B)V

    .line 218
    goto :goto_3

    .line 219
    :cond_8
    if-ne v3, v6, :cond_9

    .line 221
    add-int/lit8 v3, v14, 0x26

    .line 223
    array-length v5, v10

    .line 224
    if-gt v3, v5, :cond_9

    .line 226
    sget-object v5, Lo/Tg;->a:Lo/Tg;

    .line 228
    add-int/lit8 v0, v14, 0x6

    .line 230
    invoke-static {v10, v0, v15}, Lo/H2;->n0([BII)[B

    .line 233
    move-result-object v0

    .line 234
    const-string v4, "tcp-stream32a"

    .line 236
    invoke-virtual {v5, v4, v0}, Lo/Tg;->b(Ljava/lang/String;[B)V

    .line 239
    invoke-static {v10, v15, v3}, Lo/H2;->n0([BII)[B

    .line 242
    move-result-object v0

    .line 243
    const-string v3, "tcp-stream32b"

    .line 245
    invoke-virtual {v5, v3, v0}, Lo/Tg;->b(Ljava/lang/String;[B)V

    .line 248
    :cond_9
    :goto_3
    add-int/lit8 v14, v14, 0x1

    .line 250
    const/4 v0, 0x4

    .line 251
    const/4 v3, 0x3

    .line 252
    const/4 v4, 0x2

    .line 253
    const/16 v5, 0x16

    .line 255
    goto :goto_2

    .line 256
    :cond_a
    array-length v0, v10

    .line 257
    new-instance v3, Ljava/lang/StringBuilder;

    .line 259
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 262
    array-length v0, v10

    .line 263
    const/4 v4, 0x0

    .line 264
    :goto_4
    if-ge v4, v0, :cond_c

    .line 266
    aget-byte v5, v10, v4

    .line 268
    and-int/lit16 v5, v5, 0xff

    .line 270
    if-gt v6, v5, :cond_b

    .line 272
    const/16 v7, 0x7f

    .line 274
    if-ge v5, v7, :cond_b

    .line 276
    int-to-char v5, v5

    .line 277
    goto :goto_5

    .line 278
    :cond_b
    move v5, v6

    .line 279
    :goto_5
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 282
    add-int/lit8 v4, v4, 0x1

    .line 284
    goto :goto_4

    .line 285
    :cond_c
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 288
    move-result-object v3

    .line 289
    new-instance v4, Ljava/util/ArrayList;

    .line 291
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 294
    const/4 v0, 0x0

    .line 295
    :goto_6
    add-int/lit8 v5, v0, 0x20

    .line 297
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 300
    move-result v7

    .line 301
    const/16 v14, 0x30

    .line 303
    if-gt v5, v7, :cond_11

    .line 305
    const/4 v7, 0x0

    .line 306
    :goto_7
    if-ge v7, v6, :cond_10

    .line 308
    add-int v15, v0, v7

    .line 310
    invoke-virtual {v3, v15}, Ljava/lang/String;->charAt(I)C

    .line 313
    move-result v15

    .line 314
    if-gt v14, v15, :cond_d

    .line 316
    const/16 v11, 0x3a

    .line 318
    if-ge v15, v11, :cond_d

    .line 320
    goto :goto_8

    .line 321
    :cond_d
    const/16 v11, 0x61

    .line 323
    if-gt v11, v15, :cond_e

    .line 325
    const/16 v11, 0x67

    .line 327
    if-ge v15, v11, :cond_e

    .line 329
    goto :goto_8

    .line 330
    :cond_e
    const/16 v11, 0x41

    .line 332
    if-gt v11, v15, :cond_f

    .line 334
    const/16 v11, 0x47

    .line 336
    if-ge v15, v11, :cond_f

    .line 338
    :goto_8
    add-int/lit8 v7, v7, 0x1

    .line 340
    const/16 v11, 0x8

    .line 342
    goto :goto_7

    .line 343
    :cond_f
    add-int/lit8 v0, v0, 0x1

    .line 345
    :goto_9
    const/16 v11, 0x8

    .line 347
    goto :goto_6

    .line 348
    :cond_10
    invoke-virtual {v3, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 351
    move-result-object v7

    .line 352
    const-string v11, "substring(...)"

    .line 354
    invoke-static {v7, v11}, Lo/x9;->n(Ljava/lang/Object;Ljava/lang/String;)V

    .line 357
    new-instance v11, Lo/Cc;

    .line 359
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 362
    move-result-object v0

    .line 363
    invoke-direct {v11, v0, v7}, Lo/Cc;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 366
    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 369
    sget-object v0, Lo/Tg;->a:Lo/Tg;

    .line 371
    invoke-static {v7}, Lo/yc;->d(Ljava/lang/String;)[B

    .line 374
    move-result-object v7

    .line 375
    const-string v11, "tcp-hex"

    .line 377
    invoke-virtual {v0, v11, v7}, Lo/Tg;->b(Ljava/lang/String;[B)V

    .line 380
    move v0, v5

    .line 381
    goto :goto_9

    .line 382
    :cond_11
    const/4 v5, 0x0

    .line 383
    :goto_a
    add-int/lit8 v7, v5, 0x6

    .line 385
    array-length v0, v10

    .line 386
    if-gt v7, v0, :cond_1d

    .line 388
    aget-byte v0, v10, v5

    .line 390
    and-int/lit16 v0, v0, 0xff

    .line 392
    if-eq v0, v8, :cond_12

    .line 394
    add-int/lit8 v5, v5, 0x1

    .line 396
    goto :goto_a

    .line 397
    :cond_12
    :try_start_0
    new-instance v0, Ljava/lang/String;

    .line 399
    add-int/lit8 v15, v5, 0x1

    .line 401
    sget-object v9, Lo/I3;->b:Ljava/nio/charset/Charset;

    .line 403
    invoke-direct {v0, v10, v15, v8, v9}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 406
    goto :goto_b

    .line 407
    :catchall_0
    move-exception v0

    .line 408
    new-instance v9, Lo/de;

    .line 410
    invoke-direct {v9, v0}, Lo/de;-><init>(Ljava/lang/Throwable;)V

    .line 413
    move-object v0, v9

    .line 414
    :goto_b
    nop

    .line 415
    instance-of v9, v0, Lo/de;

    .line 417
    if-eqz v9, :cond_13

    .line 419
    const/4 v0, 0x0

    .line 420
    :cond_13
    check-cast v0, Ljava/lang/String;

    .line 422
    if-eqz v0, :cond_14

    .line 424
    sget-object v9, Lo/Tg;->a:Lo/Tg;

    .line 426
    invoke-static {v0}, Lo/Tg;->l(Ljava/lang/String;)Z

    .line 429
    move-result v9

    .line 430
    if-nez v9, :cond_15

    .line 432
    :cond_14
    const/16 v13, 0x8

    .line 434
    goto/16 :goto_12

    .line 436
    :cond_15
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 439
    move-result-object v9

    .line 440
    const/4 v15, 0x0

    .line 441
    :goto_c
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 444
    move-result v17

    .line 445
    if-eqz v17, :cond_18

    .line 447
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 450
    move-result-object v17

    .line 451
    move-object/from16 v11, v17

    .line 453
    check-cast v11, Lo/Cc;

    .line 455
    iget-object v13, v11, Lo/Cc;->a:Ljava/lang/Object;

    .line 457
    check-cast v13, Ljava/lang/Number;

    .line 459
    invoke-virtual {v13}, Ljava/lang/Number;->intValue()I

    .line 462
    move-result v13

    .line 463
    add-int/2addr v13, v6

    .line 464
    sub-int v13, v5, v13

    .line 466
    if-ltz v13, :cond_17

    .line 468
    const/16 v6, 0x1001

    .line 470
    if-ge v13, v6, :cond_17

    .line 472
    if-eqz v15, :cond_16

    .line 474
    iget-object v6, v11, Lo/Cc;->a:Ljava/lang/Object;

    .line 476
    check-cast v6, Ljava/lang/Number;

    .line 478
    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    .line 481
    move-result v6

    .line 482
    iget-object v13, v15, Lo/Cc;->a:Ljava/lang/Object;

    .line 484
    check-cast v13, Ljava/lang/Number;

    .line 486
    invoke-virtual {v13}, Ljava/lang/Number;->intValue()I

    .line 489
    move-result v13

    .line 490
    if-le v6, v13, :cond_17

    .line 492
    :cond_16
    move-object v15, v11

    .line 493
    :cond_17
    const/16 v6, 0x20

    .line 495
    goto :goto_c

    .line 496
    :cond_18
    if-eqz v15, :cond_1c

    .line 498
    sget-object v5, Lo/Tg;->a:Lo/Tg;

    .line 500
    iget-object v6, v15, Lo/Cc;->b:Ljava/lang/Object;

    .line 502
    check-cast v6, Ljava/lang/String;

    .line 504
    invoke-static {v6}, Lo/yc;->d(Ljava/lang/String;)[B

    .line 507
    move-result-object v6

    .line 508
    monitor-enter v5

    .line 509
    :try_start_1
    invoke-static {v0}, Lo/Tg;->l(Ljava/lang/String;)Z

    .line 512
    move-result v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 513
    if-nez v9, :cond_19

    .line 515
    monitor-exit v5

    .line 516
    goto/16 :goto_f

    .line 518
    :cond_19
    :try_start_2
    invoke-static {v6, v12}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 521
    move-result-object v6

    .line 522
    const-string v9, "copyOf(...)"

    .line 524
    invoke-static {v6, v9}, Lo/x9;->n(Ljava/lang/Object;Ljava/lang/String;)V

    .line 527
    invoke-static {v6, v12}, Lo/Tg;->h([BI)Ljava/lang/String;

    .line 530
    move-result-object v9

    .line 531
    new-instance v11, Ljava/lang/StringBuilder;

    .line 533
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 536
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 539
    const-string v9, ":"

    .line 541
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 544
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 547
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 550
    move-result-object v9

    .line 551
    sget-object v11, Lo/Tg;->s:Ljava/lang/String;

    .line 553
    invoke-static {v11, v9}, Lo/x9;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 556
    move-result v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 557
    if-eqz v11, :cond_1a

    .line 559
    monitor-exit v5

    .line 560
    goto/16 :goto_f

    .line 562
    :cond_1a
    :try_start_3
    sput-object v9, Lo/Tg;->s:Ljava/lang/String;

    .line 564
    new-array v9, v8, [I

    .line 566
    const/4 v11, 0x0

    .line 567
    :goto_d
    if-ge v11, v8, :cond_1b

    .line 569
    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    .line 572
    move-result v13

    .line 573
    sub-int/2addr v13, v14

    .line 574
    aput v13, v9, v11

    .line 576
    add-int/lit8 v11, v11, 0x1

    .line 578
    goto :goto_d

    .line 579
    :catchall_1
    move-exception v0

    .line 580
    goto :goto_e

    .line 581
    :cond_1b
    sput-object v9, Lo/Tg;->e:[I

    .line 583
    sget-object v9, Lo/Tg;->j:Ljava/util/HashMap;

    .line 585
    invoke-virtual {v9}, Ljava/util/HashMap;->clear()V

    .line 588
    const/4 v9, 0x0

    .line 589
    sput v9, Lo/Tg;->k:I

    .line 591
    const/16 v11, 0x69

    .line 593
    sput v11, Lo/Tg;->f:I

    .line 595
    sget-object v11, Lo/Tg;->g:Ljava/util/ArrayList;

    .line 597
    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 600
    sput v9, Lo/Tg;->h:I

    .line 602
    const/4 v11, 0x0

    .line 603
    sput-object v11, Lo/Tg;->i:[B

    .line 605
    sput v9, Lo/Tg;->l:I

    .line 607
    sput v9, Lo/Tg;->m:I

    .line 609
    sget-object v9, Lo/Tg;->n:Ljava/lang/Object;

    .line 611
    monitor-enter v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 612
    :try_start_4
    sget-object v11, Lo/Tg;->o:Ljava/util/ArrayList;

    .line 614
    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 617
    const/4 v11, -0x1

    .line 618
    sput v11, Lo/Tg;->q:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 620
    :try_start_5
    monitor-exit v9

    .line 621
    sget v9, Lo/Tg;->p:I

    .line 623
    add-int/lit8 v9, v9, 0x1

    .line 625
    sput v9, Lo/Tg;->p:I

    .line 627
    const/16 v9, 0x28

    .line 629
    sput v9, Lo/Tg;->r:I

    .line 631
    const-string v9, "match"

    .line 633
    invoke-virtual {v5, v9, v6}, Lo/Tg;->b(Ljava/lang/String;[B)V

    .line 636
    sget-object v9, Lo/Hb;->a:[B

    .line 638
    invoke-static {}, Lo/Hb;->j()V

    .line 641
    const-string v9, "ffrt-moco"

    .line 643
    const/16 v13, 0x8

    .line 645
    invoke-static {v6, v13}, Lo/Tg;->h([BI)Ljava/lang/String;

    .line 648
    move-result-object v6

    .line 649
    new-instance v11, Ljava/lang/StringBuilder;

    .line 651
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 654
    const-string v15, "session "

    .line 656
    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 659
    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 662
    const-string v6, " perm="

    .line 664
    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 667
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 670
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 673
    move-result-object v0

    .line 674
    invoke-static {v9, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 677
    monitor-exit v5

    .line 678
    goto :goto_10

    .line 679
    :catchall_2
    move-exception v0

    .line 680
    :try_start_6
    monitor-exit v9

    .line 681
    throw v0

    .line 682
    :goto_e
    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 683
    throw v0

    .line 684
    :cond_1c
    :goto_f
    const/16 v13, 0x8

    .line 686
    :goto_10
    move v5, v7

    .line 687
    :goto_11
    const/16 v6, 0x20

    .line 689
    const/4 v9, 0x6

    .line 690
    goto/16 :goto_a

    .line 692
    :goto_12
    add-int/lit8 v5, v5, 0x1

    .line 694
    goto :goto_11

    .line 695
    :cond_1d
    const/4 v11, 0x0

    .line 696
    move v4, v9

    .line 697
    const/4 v9, 0x0

    .line 698
    :goto_13
    add-int/lit8 v0, v9, 0x6

    .line 700
    array-length v5, v10

    .line 701
    if-gt v0, v5, :cond_20

    .line 703
    aget-byte v0, v10, v9

    .line 705
    and-int/lit16 v0, v0, 0xff

    .line 707
    if-ne v0, v8, :cond_1f

    .line 709
    :try_start_7
    new-instance v0, Ljava/lang/String;

    .line 711
    add-int/lit8 v5, v9, 0x1

    .line 713
    sget-object v6, Lo/I3;->b:Ljava/nio/charset/Charset;

    .line 715
    invoke-direct {v0, v10, v5, v8, v6}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 718
    goto :goto_14

    .line 719
    :catchall_3
    move-exception v0

    .line 720
    new-instance v5, Lo/de;

    .line 722
    invoke-direct {v5, v0}, Lo/de;-><init>(Ljava/lang/Throwable;)V

    .line 725
    move-object v0, v5

    .line 726
    :goto_14
    nop

    .line 727
    instance-of v5, v0, Lo/de;

    .line 729
    if-eqz v5, :cond_1e

    .line 731
    move-object v0, v11

    .line 732
    :cond_1e
    check-cast v0, Ljava/lang/String;

    .line 734
    if-eqz v0, :cond_1f

    .line 736
    sget-object v5, Lo/Tg;->a:Lo/Tg;

    .line 738
    invoke-static {v0}, Lo/Tg;->l(Ljava/lang/String;)Z

    .line 741
    move-result v6

    .line 742
    if-eqz v6, :cond_1f

    .line 744
    const-string v6, "tcp5"

    .line 746
    invoke-virtual {v5, v0, v6}, Lo/Tg;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 749
    :cond_1f
    add-int/lit8 v9, v9, 0x1

    .line 751
    goto :goto_13

    .line 752
    :cond_20
    const/4 v9, 0x0

    .line 753
    :goto_15
    add-int/lit8 v0, v9, 0x5

    .line 755
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 758
    move-result v4

    .line 759
    if-gt v0, v4, :cond_24

    .line 761
    invoke-virtual {v3, v9, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 764
    move-result-object v4

    .line 765
    const-string v5, "substring(...)"

    .line 767
    invoke-static {v4, v5}, Lo/x9;->n(Ljava/lang/Object;Ljava/lang/String;)V

    .line 770
    sget-object v5, Lo/Tg;->a:Lo/Tg;

    .line 772
    invoke-static {v4}, Lo/Tg;->l(Ljava/lang/String;)Z

    .line 775
    move-result v6

    .line 776
    if-eqz v6, :cond_23

    .line 778
    if-nez v9, :cond_21

    .line 780
    const/16 v6, 0x20

    .line 782
    goto :goto_16

    .line 783
    :cond_21
    add-int/lit8 v6, v9, -0x1

    .line 785
    invoke-virtual {v3, v6}, Ljava/lang/String;->charAt(I)C

    .line 788
    move-result v6

    .line 789
    :goto_16
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 792
    move-result v7

    .line 793
    if-lt v0, v7, :cond_22

    .line 795
    const/16 v0, 0x20

    .line 797
    goto :goto_17

    .line 798
    :cond_22
    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    .line 801
    move-result v0

    .line 802
    :goto_17
    invoke-static {v6}, Lo/yc;->c(C)Z

    .line 805
    move-result v6

    .line 806
    if-nez v6, :cond_23

    .line 808
    invoke-static {v0}, Lo/yc;->c(C)Z

    .line 811
    move-result v0

    .line 812
    if-nez v0, :cond_23

    .line 814
    const-string v0, "tcp"

    .line 816
    invoke-virtual {v5, v4, v0}, Lo/Tg;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 819
    :cond_23
    add-int/lit8 v9, v9, 0x1

    .line 821
    goto :goto_15

    .line 822
    :cond_24
    iget v0, v1, Lo/yc;->d:I

    .line 824
    const v3, 0x9b12

    .line 827
    if-ne v0, v3, :cond_28

    .line 829
    sget-object v0, Lo/Ff;->a:Ljava/util/HashSet;

    .line 831
    array-length v0, v2

    .line 832
    if-nez v0, :cond_25

    .line 834
    goto :goto_19

    .line 835
    :cond_25
    invoke-static/range {p2 .. p2}, Lo/Ff;->i([B)V

    .line 838
    invoke-static/range {p2 .. p2}, Lo/Ff;->b([B)V

    .line 841
    array-length v0, v2

    .line 842
    sget v3, Lo/Ff;->e:I

    .line 844
    add-int/2addr v3, v0

    .line 845
    sget-object v4, Lo/Ff;->d:[B

    .line 847
    array-length v5, v4

    .line 848
    if-le v3, v5, :cond_26

    .line 850
    sget v3, Lo/Ff;->e:I

    .line 852
    const/16 v5, 0x4000

    .line 854
    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    .line 857
    move-result v3

    .line 858
    sget v5, Lo/Ff;->e:I

    .line 860
    sub-int/2addr v5, v3

    .line 861
    const/4 v6, 0x0

    .line 862
    invoke-static {v4, v5, v4, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 865
    sput v3, Lo/Ff;->e:I

    .line 867
    goto :goto_18

    .line 868
    :cond_26
    const/4 v6, 0x0

    .line 869
    :goto_18
    sget v3, Lo/Ff;->e:I

    .line 871
    add-int/2addr v3, v0

    .line 872
    array-length v5, v4

    .line 873
    if-le v3, v5, :cond_27

    .line 875
    goto :goto_19

    .line 876
    :cond_27
    sget v3, Lo/Ff;->e:I

    .line 878
    invoke-static {v2, v6, v4, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 881
    sget v2, Lo/Ff;->e:I

    .line 883
    add-int/2addr v2, v0

    .line 884
    sput v2, Lo/Ff;->e:I

    .line 886
    sget v0, Lo/Ff;->e:I

    .line 888
    invoke-static {v4, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 891
    move-result-object v0

    .line 892
    const-string v2, "copyOf(...)"

    .line 894
    invoke-static {v0, v2}, Lo/x9;->n(Ljava/lang/Object;Ljava/lang/String;)V

    .line 897
    invoke-static {v0}, Lo/Ff;->i([B)V

    .line 900
    sget v0, Lo/Ff;->e:I

    .line 902
    invoke-static {v4, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 905
    move-result-object v0

    .line 906
    invoke-static {v0, v2}, Lo/x9;->n(Ljava/lang/Object;Ljava/lang/String;)V

    .line 909
    invoke-static {v0}, Lo/Ff;->b([B)V

    .line 912
    :cond_28
    :goto_19
    return-void
.end method
