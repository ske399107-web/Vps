.class public final Lo/Tg;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lo/Tg;

.field public static final b:[Ljava/lang/String;

.field public static final c:Ljava/util/concurrent/ConcurrentHashMap;

.field public static final d:Ljava/util/ArrayList;

.field public static volatile e:[I

.field public static volatile f:I

.field public static final g:Ljava/util/ArrayList;

.field public static h:I

.field public static volatile i:[B

.field public static final j:Ljava/util/HashMap;

.field public static k:I

.field public static l:I

.field public static m:I

.field public static final n:Ljava/lang/Object;

.field public static final o:Ljava/util/ArrayList;

.field public static volatile p:I

.field public static q:I

.field public static r:I

.field public static s:Ljava/lang/String;

.field public static final t:[[I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lo/Tg;

    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 6
    sput-object v0, Lo/Tg;->a:Lo/Tg;

    .line 8
    const-string v5, "VAR"

    .line 10
    const-string v6, "VAR_RELIABLE"

    .line 12
    const-string v1, "NONE"

    .line 14
    const-string v2, "HELLO"

    .line 16
    const-string v3, "RELIABLE"

    .line 18
    const-string v4, "BYEBYE"

    .line 20
    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    .line 23
    move-result-object v0

    .line 24
    sput-object v0, Lo/Tg;->b:[Ljava/lang/String;

    .line 26
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 28
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 31
    sput-object v0, Lo/Tg;->c:Ljava/util/concurrent/ConcurrentHashMap;

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    .line 35
    const/16 v1, 0x20

    .line 37
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 40
    sput-object v0, Lo/Tg;->d:Ljava/util/ArrayList;

    .line 42
    const/16 v0, 0x69

    .line 44
    sput v0, Lo/Tg;->f:I

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    .line 48
    const/16 v1, 0xa

    .line 50
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 53
    sput-object v0, Lo/Tg;->g:Ljava/util/ArrayList;

    .line 55
    new-instance v0, Ljava/util/HashMap;

    .line 57
    const/16 v1, 0x8

    .line 59
    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 62
    sput-object v0, Lo/Tg;->j:Ljava/util/HashMap;

    .line 64
    new-instance v0, Ljava/lang/Object;

    .line 66
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 69
    sput-object v0, Lo/Tg;->n:Ljava/lang/Object;

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    .line 73
    const/16 v1, 0x50

    .line 75
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 78
    sput-object v0, Lo/Tg;->o:Ljava/util/ArrayList;

    .line 80
    const/4 v0, -0x1

    .line 81
    sput v0, Lo/Tg;->q:I

    .line 83
    const/16 v0, 0x28

    .line 85
    sput v0, Lo/Tg;->r:I

    .line 87
    const-string v0, ""

    .line 89
    sput-object v0, Lo/Tg;->s:Ljava/lang/String;

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    .line 93
    const/16 v1, 0x78

    .line 95
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 98
    const/4 v1, 0x5

    .line 99
    new-array v2, v1, [Z

    .line 101
    new-array v1, v1, [I

    .line 103
    const/4 v3, 0x0

    .line 104
    invoke-static {v0, v1, v2, v3}, Lo/Tg;->d(Ljava/util/ArrayList;[I[ZI)V

    .line 107
    new-array v1, v3, [[I

    .line 109
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 112
    move-result-object v0

    .line 113
    check-cast v0, [[I

    .line 115
    sput-object v0, Lo/Tg;->t:[[I

    .line 117
    return-void
.end method

.method public static final a([BI)I
    .locals 2

    .line 1
    aget-byte v0, p0, p1

    .line 3
    and-int/lit16 v0, v0, 0xff

    .line 5
    add-int/lit8 v1, p1, 0x1

    .line 7
    aget-byte v1, p0, v1

    .line 9
    and-int/lit16 v1, v1, 0xff

    .line 11
    shl-int/lit8 v1, v1, 0x8

    .line 13
    or-int/2addr v0, v1

    .line 14
    add-int/lit8 v1, p1, 0x2

    .line 16
    aget-byte v1, p0, v1

    .line 18
    and-int/lit16 v1, v1, 0xff

    .line 20
    shl-int/lit8 v1, v1, 0x10

    .line 22
    or-int/2addr v0, v1

    .line 23
    add-int/lit8 p1, p1, 0x3

    .line 25
    aget-byte p0, p0, p1

    .line 27
    and-int/lit16 p0, p0, 0xff

    .line 29
    shl-int/lit8 p0, p0, 0x18

    .line 31
    or-int/2addr p0, v0

    .line 32
    return p0
.end method

.method public static final d(Ljava/util/ArrayList;[I[ZI)V
    .locals 4

    .line 1
    const/4 v0, 0x5

    .line 2
    if-ne p3, v0, :cond_0

    .line 4
    array-length p2, p1

    .line 5
    invoke-static {p1, p2}, Ljava/util/Arrays;->copyOf([II)[I

    .line 8
    move-result-object p1

    .line 9
    const-string p2, "copyOf(...)"

    .line 11
    invoke-static {p1, p2}, Lo/x9;->n(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 17
    return-void

    .line 18
    :cond_0
    const/4 v1, 0x0

    .line 19
    move v2, v1

    .line 20
    :goto_0
    if-ge v2, v0, :cond_2

    .line 22
    aget-boolean v3, p2, v2

    .line 24
    if-nez v3, :cond_1

    .line 26
    const/4 v3, 0x1

    .line 27
    aput-boolean v3, p2, v2

    .line 29
    aput v2, p1, p3

    .line 31
    add-int/2addr v3, p3

    .line 32
    invoke-static {p0, p1, p2, v3}, Lo/Tg;->d(Ljava/util/ArrayList;[I[ZI)V

    .line 35
    aput-boolean v1, p2, v2

    .line 37
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 39
    goto :goto_0

    .line 40
    :cond_2
    return-void
.end method

.method public static final f([BIII)I
    .locals 0

    .line 1
    add-int/2addr p1, p3

    .line 2
    aget-byte p0, p0, p1

    .line 4
    and-int/lit16 p0, p0, 0xff

    .line 6
    xor-int/2addr p0, p2

    .line 7
    and-int/lit16 p0, p0, 0xff

    .line 9
    return p0
.end method

.method public static h([BI)Ljava/lang/String;
    .locals 5

    .line 1
    const-string v0, "b"

    .line 3
    invoke-static {p0, v0}, Lo/x9;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    array-length v0, p0

    .line 7
    if-le p1, v0, :cond_0

    .line 9
    move p1, v0

    .line 10
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    mul-int/lit8 v1, p1, 0x2

    .line 14
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 17
    const/4 v1, 0x0

    .line 18
    :goto_0
    if-ge v1, p1, :cond_1

    .line 20
    aget-byte v2, p0, v1

    .line 22
    and-int/lit16 v3, v2, 0xff

    .line 24
    shr-int/lit8 v3, v3, 0x4

    .line 26
    const/16 v4, 0x10

    .line 28
    invoke-static {v3, v4}, Ljava/lang/Character;->forDigit(II)C

    .line 31
    move-result v3

    .line 32
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 35
    and-int/lit8 v2, v2, 0xf

    .line 37
    invoke-static {v2, v4}, Ljava/lang/Character;->forDigit(II)C

    .line 40
    move-result v2

    .line 41
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 44
    add-int/lit8 v1, v1, 0x1

    .line 46
    goto :goto_0

    .line 47
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    move-result-object p0

    .line 51
    const-string p1, "toString(...)"

    .line 53
    invoke-static {p0, p1}, Lo/x9;->n(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    return-object p0
.end method

.method public static i([BILjava/lang/String;Z)[B
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 3
    move/from16 v1, p1

    .line 5
    const/4 v3, 0x4

    .line 6
    const/4 v4, 0x1

    .line 7
    const-string v5, "payload"

    .line 9
    invoke-static {v0, v5}, Lo/x9;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    const-string v5, "flowId"

    .line 14
    move-object/from16 v6, p2

    .line 16
    invoke-static {v6, v5}, Lo/x9;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    const/4 v5, 0x0

    .line 20
    const/16 v7, 0x8

    .line 22
    if-lt v1, v7, :cond_23

    .line 24
    array-length v8, v0

    .line 25
    if-le v1, v8, :cond_0

    .line 27
    goto/16 :goto_13

    .line 29
    :cond_0
    sget-object v8, Lo/Tg;->c:Ljava/util/concurrent/ConcurrentHashMap;

    .line 31
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    .line 34
    move-result v9

    .line 35
    if-nez v9, :cond_1

    .line 37
    const-string v6, "_"

    .line 39
    :cond_1
    invoke-virtual {v8, v6}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    move-result-object v9

    .line 43
    if-nez v9, :cond_3

    .line 45
    new-instance v9, Lo/Pg;

    .line 47
    invoke-direct {v9}, Lo/Pg;-><init>()V

    .line 50
    invoke-virtual {v8, v6, v9}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    move-result-object v6

    .line 54
    if-nez v6, :cond_2

    .line 56
    goto :goto_0

    .line 57
    :cond_2
    move-object v9, v6

    .line 58
    :cond_3
    :goto_0
    check-cast v9, Lo/Pg;

    .line 60
    invoke-virtual {v9, v0, v1, v5}, Lo/Pg;->d([BII)Lo/Og;

    .line 63
    move-result-object v6

    .line 64
    if-nez v6, :cond_4

    .line 66
    invoke-static {v0, v5, v1}, Lo/H2;->n0([BII)[B

    .line 69
    move-result-object v0

    .line 70
    goto/16 :goto_12

    .line 72
    :cond_4
    iget v8, v6, Lo/Og;->c:I

    .line 74
    if-ne v8, v4, :cond_5

    .line 76
    iget v2, v6, Lo/Og;->i:I

    .line 78
    new-instance v3, Ljava/lang/StringBuilder;

    .line 80
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 83
    invoke-static {v9, v0, v2, v1, v3}, Lo/Pg;->b(Lo/Pg;[BIILjava/lang/StringBuilder;)V

    .line 86
    new-array v0, v5, [B

    .line 88
    goto/16 :goto_12

    .line 90
    :cond_5
    iget v6, v6, Lo/Og;->i:I

    .line 92
    if-gt v1, v6, :cond_6

    .line 94
    new-array v0, v5, [B

    .line 96
    goto/16 :goto_12

    .line 98
    :cond_6
    invoke-static {v0, v6, v1}, Lo/H2;->n0([BII)[B

    .line 101
    move-result-object v0

    .line 102
    sget-object v1, Lo/Tg;->a:Lo/Tg;

    .line 104
    array-length v6, v0

    .line 105
    invoke-static {v0, v5, v6}, Lo/Tg;->m([BII)Z

    .line 108
    move-result v6

    .line 109
    if-eqz v6, :cond_7

    .line 111
    goto/16 :goto_12

    .line 113
    :cond_7
    if-nez p3, :cond_8

    .line 115
    goto/16 :goto_12

    .line 117
    :cond_8
    array-length v6, v0

    .line 118
    const/16 v8, 0x10

    .line 120
    if-gt v8, v6, :cond_22

    .line 122
    const/16 v10, 0x101

    .line 124
    if-ge v6, v10, :cond_22

    .line 126
    array-length v6, v0

    .line 127
    rem-int/2addr v6, v7

    .line 128
    if-nez v6, :cond_22

    .line 130
    array-length v6, v0

    .line 131
    if-lt v6, v8, :cond_21

    .line 133
    array-length v6, v0

    .line 134
    rem-int/2addr v6, v7

    .line 135
    if-eqz v6, :cond_9

    .line 137
    goto/16 :goto_10

    .line 139
    :cond_9
    new-instance v6, Ljava/util/ArrayList;

    .line 141
    const/16 v11, 0xc

    .line 143
    invoke-direct {v6, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 146
    iget-object v11, v9, Lo/Pg;->f:[B

    .line 148
    array-length v11, v11

    .line 149
    if-ne v11, v8, :cond_a

    .line 151
    iget-object v11, v9, Lo/Pg;->f:[B

    .line 153
    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 156
    :cond_a
    iget-object v11, v9, Lo/Pg;->e:Ljava/util/ArrayList;

    .line 158
    monitor-enter v11

    .line 159
    :try_start_0
    iget-object v9, v9, Lo/Pg;->e:Ljava/util/ArrayList;

    .line 161
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 164
    monitor-exit v11

    .line 165
    invoke-virtual {v1}, Lo/Tg;->g()Ljava/util/List;

    .line 168
    move-result-object v1

    .line 169
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 172
    move-result-object v1

    .line 173
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 176
    move-result v9

    .line 177
    if-eqz v9, :cond_b

    .line 179
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 182
    move-result-object v9

    .line 183
    check-cast v9, [B

    .line 185
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 188
    goto :goto_1

    .line 189
    :cond_b
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 192
    move-result-object v1

    .line 193
    const-string v6, "iterator(...)"

    .line 195
    invoke-static {v1, v6}, Lo/x9;->n(Ljava/lang/Object;Ljava/lang/String;)V

    .line 198
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 201
    move-result v6

    .line 202
    if-eqz v6, :cond_21

    .line 204
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 207
    move-result-object v6

    .line 208
    const-string v9, "next(...)"

    .line 210
    invoke-static {v6, v9}, Lo/x9;->n(Ljava/lang/Object;Ljava/lang/String;)V

    .line 213
    check-cast v6, [B

    .line 215
    array-length v9, v6

    .line 216
    if-lt v9, v8, :cond_20

    .line 218
    array-length v9, v0

    .line 219
    if-lt v9, v8, :cond_13

    .line 221
    rem-int/lit8 v11, v9, 0x8

    .line 223
    if-nez v11, :cond_13

    .line 225
    array-length v11, v6

    .line 226
    if-ge v11, v8, :cond_c

    .line 228
    goto/16 :goto_7

    .line 230
    :cond_c
    new-array v11, v3, [I

    .line 232
    move v12, v5

    .line 233
    :goto_3
    if-ge v12, v3, :cond_d

    .line 235
    mul-int/lit8 v13, v12, 0x4

    .line 237
    invoke-static {v6, v13}, Lo/Ha;->z0([BI)I

    .line 240
    move-result v13

    .line 241
    aput v13, v11, v12

    .line 243
    add-int/2addr v12, v4

    .line 244
    goto :goto_3

    .line 245
    :cond_d
    const/16 v6, 0x30

    .line 247
    invoke-static {v9, v6}, Ljava/lang/Math;->min(II)I

    .line 250
    move-result v6

    .line 251
    new-array v9, v6, [B

    .line 253
    new-array v12, v7, [B

    .line 255
    new-array v13, v7, [B

    .line 257
    new-array v14, v7, [B

    .line 259
    new-array v15, v7, [B

    .line 261
    move v8, v5

    .line 262
    :goto_4
    if-ge v8, v6, :cond_11

    .line 264
    move v10, v5

    .line 265
    :goto_5
    if-ge v10, v7, :cond_e

    .line 267
    add-int v16, v8, v10

    .line 269
    aget-byte v16, v0, v16

    .line 271
    aget-byte v17, v14, v10

    .line 273
    xor-int v3, v16, v17

    .line 275
    int-to-byte v3, v3

    .line 276
    aput-byte v3, v12, v10

    .line 278
    add-int/2addr v10, v4

    .line 279
    const/4 v3, 0x4

    .line 280
    goto :goto_5

    .line 281
    :cond_e
    invoke-static {v11, v12, v13}, Lo/Ha;->A([I[B[B)V

    .line 284
    move v3, v5

    .line 285
    :goto_6
    if-ge v3, v7, :cond_10

    .line 287
    add-int v10, v8, v3

    .line 289
    if-ge v10, v6, :cond_f

    .line 291
    aget-byte v16, v13, v3

    .line 293
    aget-byte v17, v15, v3

    .line 295
    xor-int v2, v16, v17

    .line 297
    int-to-byte v2, v2

    .line 298
    aput-byte v2, v9, v10

    .line 300
    :cond_f
    add-int/2addr v3, v4

    .line 301
    goto :goto_6

    .line 302
    :cond_10
    const/16 v2, 0xe

    .line 304
    invoke-static {v5, v2, v13, v14}, Lo/H2;->l0(II[B[B)V

    .line 307
    add-int/lit8 v2, v8, 0x8

    .line 309
    invoke-static {v0, v15, v5, v8, v2}, Lo/H2;->j0([B[BIII)V

    .line 312
    move v8, v2

    .line 313
    const/4 v3, 0x4

    .line 314
    goto :goto_4

    .line 315
    :cond_11
    aget-byte v2, v9, v5

    .line 317
    and-int/lit8 v2, v2, 0x7

    .line 319
    const/4 v3, 0x3

    .line 320
    add-int/2addr v2, v3

    .line 321
    if-ltz v2, :cond_13

    .line 323
    if-lt v2, v6, :cond_12

    .line 325
    goto :goto_7

    .line 326
    :cond_12
    invoke-static {v9, v2, v6}, Lo/H2;->n0([BII)[B

    .line 329
    move-result-object v2

    .line 330
    goto :goto_8

    .line 331
    :cond_13
    :goto_7
    const/4 v2, 0x0

    .line 332
    :goto_8
    if-nez v2, :cond_14

    .line 334
    const/4 v3, 0x4

    .line 335
    :goto_9
    const/16 v8, 0x10

    .line 337
    goto/16 :goto_2

    .line 339
    :cond_14
    array-length v3, v2

    .line 340
    const/4 v6, 0x3

    .line 341
    if-lt v3, v6, :cond_1f

    .line 343
    move v3, v5

    .line 344
    :goto_a
    add-int/lit8 v6, v3, 0x2

    .line 346
    array-length v8, v2

    .line 347
    if-ge v6, v8, :cond_18

    .line 349
    aget-byte v8, v2, v3

    .line 351
    and-int/lit16 v8, v8, 0xff

    .line 353
    add-int/lit8 v9, v3, 0x1

    .line 355
    aget-byte v10, v2, v9

    .line 357
    and-int/lit16 v10, v10, 0xff

    .line 359
    aget-byte v6, v2, v6

    .line 361
    and-int/lit16 v6, v6, 0xff

    .line 363
    const/16 v11, 0x89

    .line 365
    const/16 v12, 0x81

    .line 367
    const/16 v13, 0x80

    .line 369
    if-gt v12, v8, :cond_15

    .line 371
    if-ge v8, v11, :cond_15

    .line 373
    if-ne v10, v13, :cond_15

    .line 375
    if-ne v6, v13, :cond_15

    .line 377
    goto/16 :goto_e

    .line 379
    :cond_15
    const/4 v14, 0x4

    .line 380
    add-int/lit8 v15, v3, 0x4

    .line 382
    array-length v4, v2

    .line 383
    if-ge v15, v4, :cond_17

    .line 385
    const/4 v4, 0x3

    .line 386
    add-int/2addr v3, v4

    .line 387
    aget-byte v3, v2, v3

    .line 389
    and-int/lit16 v3, v3, 0xff

    .line 391
    aget-byte v4, v2, v15

    .line 393
    and-int/lit16 v4, v4, 0xff

    .line 395
    if-nez v8, :cond_16

    .line 397
    if-gt v12, v10, :cond_16

    .line 399
    if-ge v10, v11, :cond_16

    .line 401
    if-ne v6, v13, :cond_16

    .line 403
    if-ne v3, v13, :cond_16

    .line 405
    goto :goto_e

    .line 406
    :cond_16
    if-nez v10, :cond_17

    .line 408
    if-gt v12, v6, :cond_17

    .line 410
    if-ge v6, v11, :cond_17

    .line 412
    if-ne v3, v13, :cond_17

    .line 414
    if-ne v4, v13, :cond_17

    .line 416
    goto :goto_e

    .line 417
    :cond_17
    move v3, v9

    .line 418
    const/4 v4, 0x1

    .line 419
    goto :goto_a

    .line 420
    :cond_18
    const/4 v14, 0x4

    .line 421
    sget-object v3, Lo/Ff;->a:Ljava/util/HashSet;

    .line 423
    sget-boolean v3, Lo/Ff;->g:Z

    .line 425
    if-eqz v3, :cond_1d

    .line 427
    array-length v3, v2

    .line 428
    const/4 v4, 0x3

    .line 429
    if-ge v3, v4, :cond_19

    .line 431
    goto :goto_c

    .line 432
    :cond_19
    invoke-static {v2, v5}, Lo/Ff;->h([BI)Lo/Cc;

    .line 435
    move-result-object v3

    .line 436
    const-wide/16 v8, 0x0

    .line 438
    if-nez v3, :cond_1a

    .line 440
    move-wide v10, v8

    .line 441
    goto :goto_b

    .line 442
    :cond_1a
    iget-object v3, v3, Lo/Cc;->a:Ljava/lang/Object;

    .line 444
    check-cast v3, Ljava/lang/Number;

    .line 446
    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    .line 449
    move-result-wide v10

    .line 450
    :goto_b
    cmp-long v3, v10, v8

    .line 452
    if-gtz v3, :cond_1b

    .line 454
    :goto_c
    move v6, v5

    .line 455
    goto :goto_d

    .line 456
    :cond_1b
    sget-wide v8, Lo/Ff;->f:J

    .line 458
    cmp-long v3, v10, v8

    .line 460
    if-nez v3, :cond_1c

    .line 462
    const/4 v6, 0x1

    .line 463
    goto :goto_d

    .line 464
    :cond_1c
    sget-object v3, Lo/Ff;->a:Ljava/util/HashSet;

    .line 466
    monitor-enter v3

    .line 467
    :try_start_1
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 470
    move-result-object v6

    .line 471
    invoke-virtual {v3, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 474
    move-result v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 475
    monitor-exit v3

    .line 476
    goto :goto_d

    .line 477
    :catchall_0
    move-exception v0

    .line 478
    monitor-exit v3

    .line 479
    throw v0

    .line 480
    :cond_1d
    const/4 v4, 0x3

    .line 481
    goto :goto_c

    .line 482
    :goto_d
    if-eqz v6, :cond_1e

    .line 484
    :goto_e
    move-object v10, v2

    .line 485
    goto :goto_11

    .line 486
    :cond_1e
    move v3, v14

    .line 487
    :goto_f
    const/4 v4, 0x1

    .line 488
    goto/16 :goto_9

    .line 490
    :cond_1f
    const/4 v3, 0x4

    .line 491
    goto :goto_f

    .line 492
    :cond_20
    const/4 v4, 0x1

    .line 493
    goto/16 :goto_2

    .line 495
    :cond_21
    :goto_10
    const/4 v10, 0x0

    .line 496
    goto :goto_11

    .line 497
    :catchall_1
    move-exception v0

    .line 498
    monitor-exit v11

    .line 499
    throw v0

    .line 500
    :goto_11
    if-eqz v10, :cond_22

    .line 502
    invoke-static {v10}, Lo/Ff;->d([B)V

    .line 505
    :cond_22
    :goto_12
    return-object v0

    .line 506
    :cond_23
    :goto_13
    new-array v0, v5, [B

    .line 508
    return-object v0
.end method

.method public static j(IILjava/lang/String;[B)[B
    .locals 5

    .line 1
    const/16 v0, 0x8

    .line 3
    const/4 v1, 0x0

    .line 4
    if-lt p1, v0, :cond_8

    .line 6
    if-ltz p0, :cond_8

    .line 8
    add-int v0, p0, p1

    .line 10
    array-length v2, p3

    .line 11
    if-le v0, v2, :cond_0

    .line 13
    goto :goto_2

    .line 14
    :cond_0
    sget-object v2, Lo/Tg;->c:Ljava/util/concurrent/ConcurrentHashMap;

    .line 16
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 19
    move-result v3

    .line 20
    if-nez v3, :cond_1

    .line 22
    const-string p2, "_"

    .line 24
    :cond_1
    invoke-virtual {v2, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    move-result-object v3

    .line 28
    if-nez v3, :cond_3

    .line 30
    new-instance v3, Lo/Pg;

    .line 32
    invoke-direct {v3}, Lo/Pg;-><init>()V

    .line 35
    invoke-virtual {v2, p2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    move-result-object p2

    .line 39
    if-nez p2, :cond_2

    .line 41
    goto :goto_0

    .line 42
    :cond_2
    move-object v3, p2

    .line 43
    :cond_3
    :goto_0
    check-cast v3, Lo/Pg;

    .line 45
    invoke-virtual {v3, p3, p1, p0}, Lo/Pg;->d([BII)Lo/Og;

    .line 48
    move-result-object p2

    .line 49
    if-nez p2, :cond_4

    .line 51
    new-array p0, v1, [B

    .line 53
    goto :goto_1

    .line 54
    :cond_4
    iget v2, p2, Lo/Og;->c:I

    .line 56
    const/4 v4, 0x1

    .line 57
    iget p2, p2, Lo/Og;->i:I

    .line 59
    if-ne v2, v4, :cond_5

    .line 61
    add-int/2addr p0, p2

    .line 62
    new-instance p1, Ljava/lang/StringBuilder;

    .line 64
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 67
    invoke-static {v3, p3, p0, v0, p1}, Lo/Pg;->b(Lo/Pg;[BIILjava/lang/StringBuilder;)V

    .line 70
    new-array p0, v1, [B

    .line 72
    goto :goto_1

    .line 73
    :cond_5
    if-gt p1, p2, :cond_6

    .line 75
    new-array p0, v1, [B

    .line 77
    goto :goto_1

    .line 78
    :cond_6
    add-int/2addr p0, p2

    .line 79
    invoke-static {p3, p0, v0}, Lo/Tg;->m([BII)Z

    .line 82
    move-result p1

    .line 83
    if-nez p1, :cond_7

    .line 85
    new-array p0, v1, [B

    .line 87
    goto :goto_1

    .line 88
    :cond_7
    invoke-static {p3, p0, v0}, Lo/H2;->n0([BII)[B

    .line 91
    move-result-object p0

    .line 92
    :goto_1
    return-object p0

    .line 93
    :cond_8
    :goto_2
    new-array p0, v1, [B

    .line 95
    return-object p0
.end method

.method public static l(Ljava/lang/String;)Z
    .locals 8

    .line 1
    const-string v0, "s"

    .line 3
    invoke-static {p0, v0}, Lo/x9;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    const/4 v2, 0x5

    .line 12
    if-eq v0, v2, :cond_0

    .line 14
    return v1

    .line 15
    :cond_0
    new-array v0, v2, [Z

    .line 17
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 20
    move-result v3

    .line 21
    move v4, v1

    .line 22
    :goto_0
    const/4 v5, 0x1

    .line 23
    if-ge v4, v3, :cond_3

    .line 25
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    .line 28
    move-result v6

    .line 29
    add-int/lit8 v6, v6, -0x30

    .line 31
    if-ltz v6, :cond_2

    .line 33
    if-ge v6, v2, :cond_2

    .line 35
    aget-boolean v7, v0, v6

    .line 37
    if-eqz v7, :cond_1

    .line 39
    goto :goto_1

    .line 40
    :cond_1
    aput-boolean v5, v0, v6

    .line 42
    add-int/lit8 v4, v4, 0x1

    .line 44
    goto :goto_0

    .line 45
    :cond_2
    :goto_1
    return v1

    .line 46
    :cond_3
    move p0, v1

    .line 47
    :goto_2
    if-ge p0, v2, :cond_5

    .line 49
    aget-boolean v3, v0, p0

    .line 51
    if-nez v3, :cond_4

    .line 53
    goto :goto_3

    .line 54
    :cond_4
    add-int/lit8 p0, p0, 0x1

    .line 56
    goto :goto_2

    .line 57
    :cond_5
    move v1, v5

    .line 58
    :goto_3
    return v1
.end method

.method public static m([BII)Z
    .locals 5

    .line 1
    sub-int/2addr p2, p1

    .line 2
    const/16 v0, 0x8

    .line 4
    const/4 v1, 0x0

    .line 5
    if-ge p2, v0, :cond_0

    .line 7
    return v1

    .line 8
    :cond_0
    aget-byte p2, p0, p1

    .line 10
    and-int/lit16 p2, p2, 0xff

    .line 12
    add-int/lit8 v0, p1, 0x1

    .line 14
    aget-byte v0, p0, v0

    .line 16
    and-int/lit16 v0, v0, 0xff

    .line 18
    const/4 v2, 0x1

    .line 19
    const/16 v3, 0x81

    .line 21
    const/4 v4, 0x2

    .line 22
    if-gt v3, p2, :cond_1

    .line 24
    const/16 v3, 0x89

    .line 26
    if-ge p2, v3, :cond_1

    .line 28
    const/16 v3, 0x80

    .line 30
    if-ne v0, v3, :cond_1

    .line 32
    add-int/2addr p1, v4

    .line 33
    aget-byte p0, p0, p1

    .line 35
    and-int/lit16 p0, p0, 0xff

    .line 37
    if-ne p0, v3, :cond_1

    .line 39
    return v2

    .line 40
    :cond_1
    if-nez p2, :cond_2

    .line 42
    if-gt v4, v0, :cond_2

    .line 44
    const/16 p0, 0x41

    .line 46
    if-ge v0, p0, :cond_2

    .line 48
    return v2

    .line 49
    :cond_2
    return v1
.end method

.method public static n()[I
    .locals 9

    .line 1
    sget-object v0, Lo/Tg;->e:[I

    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x4

    .line 5
    if-eqz v0, :cond_2

    .line 7
    new-array v3, v2, [I

    .line 9
    array-length v4, v0

    .line 10
    move v5, v1

    .line 11
    move v6, v5

    .line 12
    :goto_0
    if-ge v5, v4, :cond_1

    .line 14
    aget v7, v0, v5

    .line 16
    const/4 v8, 0x2

    .line 17
    if-eq v7, v8, :cond_0

    .line 19
    if-ge v6, v2, :cond_0

    .line 21
    add-int/lit8 v8, v6, 0x1

    .line 23
    aput v7, v3, v6

    .line 25
    move v6, v8

    .line 26
    :cond_0
    add-int/lit8 v5, v5, 0x1

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    if-ne v6, v2, :cond_2

    .line 31
    return-object v3

    .line 32
    :cond_2
    const/4 v0, 0x3

    .line 33
    const/4 v3, 0x1

    .line 34
    filled-new-array {v0, v1, v3, v2}, [I

    .line 37
    move-result-object v0

    .line 38
    return-object v0
.end method

.method public static p()Ljava/lang/String;
    .locals 5

    .line 1
    sget-object v0, Lo/Tg;->e:[I

    .line 3
    if-nez v0, :cond_0

    .line 5
    const-string v0, ""

    .line 7
    return-object v0

    .line 8
    :cond_0
    array-length v1, v0

    .line 9
    new-array v1, v1, [C

    .line 11
    array-length v2, v0

    .line 12
    const/4 v3, 0x0

    .line 13
    :goto_0
    if-ge v3, v2, :cond_1

    .line 15
    aget v4, v0, v3

    .line 17
    add-int/lit8 v4, v4, 0x30

    .line 19
    int-to-char v4, v4

    .line 20
    aput-char v4, v1, v3

    .line 22
    add-int/lit8 v3, v3, 0x1

    .line 24
    goto :goto_0

    .line 25
    :cond_1
    new-instance v0, Ljava/lang/String;

    .line 27
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    .line 30
    return-object v0
.end method

.method public static q([B)V
    .locals 1

    .line 1
    const/16 v0, 0x10

    .line 3
    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 6
    move-result-object p0

    .line 7
    const-string v0, "copyOf(...)"

    .line 9
    invoke-static {p0, v0}, Lo/x9;->n(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    sget-object v0, Lo/Tg;->i:[B

    .line 14
    if-eqz v0, :cond_0

    .line 16
    invoke-static {v0, p0}, Ljava/util/Arrays;->equals([B[B)Z

    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_1

    .line 22
    :cond_0
    sput-object p0, Lo/Tg;->i:[B

    .line 24
    sget p0, Lo/Tg;->p:I

    .line 26
    add-int/lit8 p0, p0, 0x1

    .line 28
    sput p0, Lo/Tg;->p:I

    .line 30
    :cond_1
    return-void
.end method

.method public static t(Lo/Rg;)V
    .locals 4

    .line 1
    sget-object v0, Lo/Tg;->n:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lo/Tg;->o:Ljava/util/ArrayList;

    .line 6
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 9
    move-result v2

    .line 10
    const/16 v3, 0x60

    .line 12
    if-lt v2, v3, :cond_0

    .line 14
    const/4 v2, 0x0

    .line 15
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 18
    goto :goto_0

    .line 19
    :catchall_0
    move-exception p0

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    :goto_0
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    monitor-exit v0

    .line 25
    return-void

    .line 26
    :goto_1
    monitor-exit v0

    .line 27
    throw p0
.end method

.method public static x(Ljava/lang/String;)I
    .locals 2

    .line 1
    const-string v0, "flowId"

    .line 3
    invoke-static {p0, v0}, Lo/x9;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    sget-object v0, Lo/Tg;->c:Ljava/util/concurrent/ConcurrentHashMap;

    .line 8
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 11
    move-result v1

    .line 12
    if-nez v1, :cond_0

    .line 14
    const-string p0, "_"

    .line 16
    :cond_0
    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    move-result-object p0

    .line 20
    check-cast p0, Lo/Pg;

    .line 22
    if-nez p0, :cond_1

    .line 24
    const/4 p0, -0x1

    .line 25
    return p0

    .line 26
    :cond_1
    iget p0, p0, Lo/Pg;->c:I

    .line 28
    return p0
.end method


# virtual methods
.method public final declared-synchronized b(Ljava/lang/String;[B)V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    array-length v0, p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    const/16 v1, 0x10

    .line 5
    if-ge v0, v1, :cond_0

    .line 7
    monitor-exit p0

    .line 8
    return-void

    .line 9
    :cond_0
    :try_start_1
    invoke-static {p2, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 12
    move-result-object p2

    .line 13
    const-string v0, "copyOf(...)"

    .line 15
    invoke-static {p2, v0}, Lo/x9;->n(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    sget-object v0, Lo/Tg;->d:Ljava/util/ArrayList;

    .line 20
    if-eqz v0, :cond_1

    .line 22
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 25
    move-result v2

    .line 26
    if-eqz v2, :cond_1

    .line 28
    goto :goto_0

    .line 29
    :catchall_0
    move-exception p1

    .line 30
    goto :goto_1

    .line 31
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 34
    move-result-object v0

    .line 35
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 38
    move-result v2

    .line 39
    if-eqz v2, :cond_3

    .line 41
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 44
    move-result-object v2

    .line 45
    check-cast v2, [B

    .line 47
    invoke-static {v2, p2}, Ljava/util/Arrays;->equals([B[B)Z

    .line 50
    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 51
    if-eqz v2, :cond_2

    .line 53
    monitor-exit p0

    .line 54
    return-void

    .line 55
    :cond_3
    :goto_0
    :try_start_2
    sget-object v0, Lo/Tg;->d:Ljava/util/ArrayList;

    .line 57
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    sget v0, Lo/Tg;->p:I

    .line 62
    add-int/lit8 v0, v0, 0x1

    .line 64
    sput v0, Lo/Tg;->p:I

    .line 66
    sget v0, Lo/ta;->a:I

    .line 68
    invoke-static {p2, v1}, Lo/Tg;->h([BI)Ljava/lang/String;

    .line 71
    move-result-object v0

    .line 72
    new-instance v1, Ljava/lang/StringBuilder;

    .line 74
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 77
    const-string v2, "key "

    .line 79
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    const-string v2, " "

    .line 87
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    move-result-object v0

    .line 97
    invoke-static {v0}, Lo/ta;->a(Ljava/lang/String;)V

    .line 100
    const-string v0, "ffrt-moco"

    .line 102
    const/4 v1, 0x4

    .line 103
    invoke-static {p2, v1}, Lo/Tg;->h([BI)Ljava/lang/String;

    .line 106
    move-result-object p2

    .line 107
    new-instance v1, Ljava/lang/StringBuilder;

    .line 109
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 112
    const-string v2, "key "

    .line 114
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    const-string p1, " "

    .line 122
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 131
    move-result-object p1

    .line 132
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 135
    monitor-exit p0

    .line 136
    return-void

    .line 137
    :goto_1
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 138
    throw p1
.end method

.method public final declared-synchronized c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    const-string v1, "ignore weak "

    .line 4
    monitor-enter p0

    .line 5
    :try_start_0
    const-string v2, "digits"

    .line 7
    invoke-static {p1, v2}, Lo/x9;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-static {p1}, Lo/Tg;->l(Ljava/lang/String;)Z

    .line 13
    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    if-nez v2, :cond_0

    .line 16
    monitor-exit p0

    .line 17
    return-void

    .line 18
    :cond_0
    :try_start_1
    const-string v2, "tcp"

    .line 20
    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 23
    move-result v2

    .line 24
    const/4 v3, 0x0

    .line 25
    if-eqz v2, :cond_1

    .line 27
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    .line 30
    move-result v2

    .line 31
    const/16 v4, 0x33

    .line 33
    if-eq v2, v4, :cond_1

    .line 35
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    .line 38
    move-result v2

    .line 39
    if-eq v2, v4, :cond_1

    .line 41
    const-string v0, "ffrt-moco"

    .line 43
    new-instance v2, Ljava/lang/StringBuilder;

    .line 45
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 48
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    const-string p2, " "

    .line 53
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    move-result-object p1

    .line 63
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 66
    monitor-exit p0

    .line 67
    return-void

    .line 68
    :catchall_0
    move-exception p1

    .line 69
    goto/16 :goto_2

    .line 71
    :cond_1
    :try_start_2
    invoke-static {}, Lo/Tg;->p()Ljava/lang/String;

    .line 74
    move-result-object v1

    .line 75
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 78
    move-result v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 79
    if-eqz v2, :cond_2

    .line 81
    monitor-exit p0

    .line 82
    return-void

    .line 83
    :cond_2
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 86
    move-result v1

    .line 87
    if-lez v1, :cond_3

    .line 89
    const-string v1, "tcp5"

    .line 91
    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 94
    move-result v1

    .line 95
    if-nez v1, :cond_3

    .line 97
    const-string v1, "udp"

    .line 99
    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 102
    move-result v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 103
    if-nez v1, :cond_3

    .line 105
    monitor-exit p0

    .line 106
    return-void

    .line 107
    :cond_3
    const/4 v1, 0x5

    .line 108
    :try_start_4
    new-array v2, v1, [I

    .line 110
    :goto_0
    if-ge v3, v1, :cond_4

    .line 112
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    .line 115
    move-result v4

    .line 116
    add-int/lit8 v4, v4, -0x30

    .line 118
    aput v4, v2, v3

    .line 120
    add-int/2addr v3, v0

    .line 121
    goto :goto_0

    .line 122
    :cond_4
    sput-object v2, Lo/Tg;->e:[I

    .line 124
    sget v0, Lo/ta;->a:I

    .line 126
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 129
    move-result v0

    .line 130
    if-lez v0, :cond_5

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    .line 134
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 137
    const-string v1, " "

    .line 139
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 148
    move-result-object v0

    .line 149
    goto :goto_1

    .line 150
    :cond_5
    const-string v0, ""

    .line 152
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 154
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 157
    const-string v2, "head perm "

    .line 159
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 171
    move-result-object v0

    .line 172
    invoke-static {v0}, Lo/ta;->a(Ljava/lang/String;)V

    .line 175
    const-string v0, "ffrt-moco"

    .line 177
    new-instance v1, Ljava/lang/StringBuilder;

    .line 179
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 182
    const-string v2, "head perm "

    .line 184
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    const-string p1, " "

    .line 192
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 201
    move-result-object p1

    .line 202
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 205
    monitor-exit p0

    .line 206
    return-void

    .line 207
    :goto_2
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 208
    throw p1
.end method

.method public final e(Ljava/lang/String;I[B)[B
    .locals 5

    .line 1
    and-int/lit8 v0, p2, 0x1

    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_6

    .line 6
    array-length v0, p3

    .line 7
    const/16 v2, 0x10

    .line 9
    if-lt v0, v2, :cond_5

    .line 11
    array-length v0, p3

    .line 12
    rem-int/lit8 v0, v0, 0x8

    .line 14
    if-eqz v0, :cond_0

    .line 16
    goto :goto_2

    .line 17
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 19
    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 22
    sget-object v3, Lo/Tg;->i:[B

    .line 24
    if-eqz v3, :cond_1

    .line 26
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 29
    :cond_1
    invoke-virtual {p0, p1}, Lo/Tg;->w(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 36
    invoke-virtual {p0}, Lo/Tg;->g()Ljava/util/List;

    .line 39
    move-result-object p1

    .line 40
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 43
    new-instance p1, Ljava/util/HashSet;

    .line 45
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 48
    move-result v3

    .line 49
    invoke-direct {p1, v3}, Ljava/util/HashSet;-><init>(I)V

    .line 52
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 55
    move-result-object v0

    .line 56
    const-string v3, "iterator(...)"

    .line 58
    invoke-static {v0, v3}, Lo/x9;->n(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 64
    move-result v3

    .line 65
    if-eqz v3, :cond_4

    .line 67
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 70
    move-result-object v3

    .line 71
    const-string v4, "next(...)"

    .line 73
    invoke-static {v3, v4}, Lo/x9;->n(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    check-cast v3, [B

    .line 78
    array-length v4, v3

    .line 79
    if-lt v4, v2, :cond_2

    .line 81
    invoke-static {v3, v2}, Lo/Tg;->h([BI)Ljava/lang/String;

    .line 84
    move-result-object v4

    .line 85
    invoke-virtual {p1, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 88
    move-result v4

    .line 89
    if-eqz v4, :cond_2

    .line 91
    invoke-static {p3, v3}, Lo/Ha;->z([B[B)[B

    .line 94
    move-result-object v4

    .line 95
    if-nez v4, :cond_3

    .line 97
    goto :goto_0

    .line 98
    :cond_3
    invoke-static {v3}, Lo/Tg;->q([B)V

    .line 101
    move-object p3, v4

    .line 102
    goto :goto_1

    .line 103
    :cond_4
    move-object p3, v1

    .line 104
    :goto_1
    if-nez p3, :cond_6

    .line 106
    :cond_5
    :goto_2
    return-object v1

    .line 107
    :cond_6
    const/4 p1, 0x2

    .line 108
    and-int/2addr p2, p1

    .line 109
    if-nez p2, :cond_7

    .line 111
    array-length p2, p3

    .line 112
    if-lt p2, p1, :cond_9

    .line 114
    const/4 p1, 0x0

    .line 115
    aget-byte p1, p3, p1

    .line 117
    const/16 p2, 0x1f

    .line 119
    if-ne p1, p2, :cond_9

    .line 121
    const/4 p1, 0x1

    .line 122
    aget-byte p1, p3, p1

    .line 124
    const/16 p2, -0x75

    .line 126
    if-ne p1, p2, :cond_9

    .line 128
    :cond_7
    :try_start_0
    new-instance p1, Ljava/util/zip/GZIPInputStream;

    .line 130
    new-instance p2, Ljava/io/ByteArrayInputStream;

    .line 132
    invoke-direct {p2, p3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 135
    invoke-direct {p1, p2}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 138
    :try_start_1
    invoke-static {p1}, Lo/L1;->R(Ljava/io/InputStream;)[B

    .line 141
    move-result-object p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 142
    :try_start_2
    invoke-static {p1, v1}, Lo/L1;->k(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 145
    goto :goto_3

    .line 146
    :catchall_0
    move-exception p2

    .line 147
    :try_start_3
    throw p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 148
    :catchall_1
    move-exception p3

    .line 149
    :try_start_4
    invoke-static {p1, p2}, Lo/L1;->k(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 152
    throw p3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 153
    :catchall_2
    move-exception p1

    .line 154
    new-instance p2, Lo/de;

    .line 156
    invoke-direct {p2, p1}, Lo/de;-><init>(Ljava/lang/Throwable;)V

    .line 159
    :goto_3
    instance-of p1, p2, Lo/de;

    .line 161
    if-eqz p1, :cond_8

    .line 163
    move-object p2, v1

    .line 164
    :cond_8
    move-object p3, p2

    .line 165
    check-cast p3, [B

    .line 167
    if-nez p3, :cond_9

    .line 169
    return-object v1

    .line 170
    :cond_9
    return-object p3
.end method

.method public final declared-synchronized g()Ljava/util/List;
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    sget-object v0, Lo/Tg;->d:Ljava/util/ArrayList;

    .line 4
    invoke-static {v0}, Lo/e4;->l0(Ljava/util/ArrayList;)Ljava/util/List;

    .line 7
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    monitor-exit p0

    .line 9
    return-object v0

    .line 10
    :catchall_0
    move-exception v0

    .line 11
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12
    throw v0
.end method

.method public final declared-synchronized k(IILjava/lang/String;[B)V
    .locals 23

    .line 1
    move-object/from16 v1, p0

    .line 3
    move/from16 v0, p2

    .line 5
    move-object/from16 v2, p4

    .line 7
    monitor-enter p0

    .line 8
    :try_start_0
    const-string v3, "flowId"

    .line 10
    move-object/from16 v4, p3

    .line 12
    invoke-static {v4, v3}, Lo/x9;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    sget-object v3, Lo/Tg;->e:[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    if-eqz v3, :cond_0

    .line 19
    monitor-exit p0

    .line 20
    return-void

    .line 21
    :cond_0
    const/16 v3, 0x12

    .line 23
    if-lt v0, v3, :cond_1b

    .line 25
    if-ltz p1, :cond_1b

    .line 27
    add-int v3, p1, v0

    .line 29
    :try_start_1
    array-length v5, v2

    .line 30
    if-le v3, v5, :cond_1

    .line 32
    goto/16 :goto_b

    .line 34
    :cond_1
    aget-byte v3, v2, p1

    .line 36
    and-int/lit16 v3, v3, 0xff

    .line 38
    const/16 v5, 0x5a

    .line 40
    if-gt v5, v3, :cond_1a

    .line 42
    const/16 v5, 0x64

    .line 44
    if-ge v3, v5, :cond_1a

    .line 46
    const/16 v3, 0xa

    .line 48
    sub-int/2addr v0, v3

    .line 49
    rem-int/lit8 v5, v0, 0x8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 51
    if-eqz v5, :cond_2

    .line 53
    monitor-exit p0

    .line 54
    return-void

    .line 55
    :cond_2
    :try_start_2
    invoke-static/range {p3 .. p3}, Lo/Tg;->x(Ljava/lang/String;)I

    .line 58
    move-result v4

    .line 59
    if-ltz v4, :cond_19

    .line 61
    const/16 v5, 0x100

    .line 63
    if-ge v4, v5, :cond_19

    .line 65
    new-instance v5, Ljava/util/HashSet;

    .line 67
    const/4 v6, 0x4

    .line 68
    invoke-direct {v5, v6}, Ljava/util/HashSet;-><init>(I)V

    .line 71
    sget-object v7, Lo/Tg;->t:[[I

    .line 73
    array-length v8, v7

    .line 74
    const/4 v10, 0x0

    .line 75
    :goto_0
    const/4 v11, 0x2

    .line 76
    const/4 v13, 0x1

    .line 77
    if-ge v10, v8, :cond_e

    .line 79
    aget-object v14, v7, v10

    .line 81
    array-length v15, v14

    .line 82
    const/16 v16, -0x1

    .line 84
    move v12, v11

    .line 85
    move/from16 v9, v16

    .line 87
    move/from16 v19, v9

    .line 89
    move/from16 v20, v19

    .line 91
    move/from16 v21, v20

    .line 93
    move/from16 v22, v21

    .line 95
    const/4 v3, 0x0

    .line 96
    :goto_1
    const/16 v17, 0x0

    .line 98
    if-ge v3, v15, :cond_8

    .line 100
    aget v6, v14, v3

    .line 102
    if-eqz v6, :cond_7

    .line 104
    if-eq v6, v13, :cond_6

    .line 106
    if-eq v6, v11, :cond_5

    .line 108
    const/4 v13, 0x3

    .line 109
    if-eq v6, v13, :cond_4

    .line 111
    const/4 v13, 0x4

    .line 112
    if-eq v6, v13, :cond_3

    .line 114
    move-object/from16 v6, v17

    .line 116
    const/16 v3, 0xa

    .line 118
    goto/16 :goto_3

    .line 120
    :cond_3
    add-int v6, p1, v12

    .line 122
    aget-byte v6, v2, v6

    .line 124
    and-int/lit16 v6, v6, 0xff

    .line 126
    xor-int/2addr v6, v4

    .line 127
    add-int/lit8 v13, v12, 0x1

    .line 129
    add-int v13, v13, p1

    .line 131
    aget-byte v13, v2, v13

    .line 133
    and-int/lit16 v13, v13, 0xff

    .line 135
    xor-int/2addr v13, v4

    .line 136
    const/16 v17, 0x8

    .line 138
    shl-int/lit8 v13, v13, 0x8

    .line 140
    or-int/2addr v6, v13

    .line 141
    add-int/lit8 v12, v12, 0x2

    .line 143
    move/from16 v22, v6

    .line 145
    goto :goto_2

    .line 146
    :cond_4
    add-int v6, p1, v12

    .line 148
    aget-byte v6, v2, v6

    .line 150
    and-int/lit16 v6, v6, 0xff

    .line 152
    xor-int/2addr v6, v4

    .line 153
    add-int/lit8 v12, v12, 0x1

    .line 155
    move/from16 v21, v6

    .line 157
    goto :goto_2

    .line 158
    :cond_5
    add-int v6, p1, v12

    .line 160
    aget-byte v6, v2, v6

    .line 162
    and-int/lit16 v6, v6, 0xff

    .line 164
    xor-int/2addr v6, v4

    .line 165
    add-int/lit8 v13, v12, 0x1

    .line 167
    add-int v13, v13, p1

    .line 169
    aget-byte v13, v2, v13

    .line 171
    and-int/lit16 v13, v13, 0xff

    .line 173
    xor-int/2addr v13, v4

    .line 174
    const/16 v17, 0x8

    .line 176
    shl-int/lit8 v13, v13, 0x8

    .line 178
    or-int/2addr v6, v13

    .line 179
    add-int/lit8 v12, v12, 0x2

    .line 181
    move/from16 v20, v6

    .line 183
    goto :goto_2

    .line 184
    :cond_6
    add-int v6, p1, v12

    .line 186
    aget-byte v6, v2, v6

    .line 188
    and-int/lit16 v6, v6, 0xff

    .line 190
    xor-int/2addr v6, v4

    .line 191
    add-int/lit8 v13, v12, 0x1

    .line 193
    add-int v13, v13, p1

    .line 195
    aget-byte v13, v2, v13

    .line 197
    and-int/lit16 v13, v13, 0xff

    .line 199
    xor-int/2addr v13, v4

    .line 200
    const/16 v17, 0x8

    .line 202
    shl-int/lit8 v13, v13, 0x8

    .line 204
    or-int/2addr v6, v13

    .line 205
    add-int/lit8 v12, v12, 0x2

    .line 207
    move/from16 v19, v6

    .line 209
    goto :goto_2

    .line 210
    :cond_7
    add-int v6, p1, v12

    .line 212
    aget-byte v6, v2, v6

    .line 214
    and-int/lit16 v6, v6, 0xff

    .line 216
    xor-int/2addr v6, v4

    .line 217
    add-int/lit8 v12, v12, 0x1

    .line 219
    move v9, v6

    .line 220
    :goto_2
    add-int/lit8 v3, v3, 0x1

    .line 222
    const/4 v6, 0x4

    .line 223
    const/4 v13, 0x1

    .line 224
    goto/16 :goto_1

    .line 226
    :cond_8
    const/16 v3, 0xa

    .line 228
    if-ne v12, v3, :cond_9

    .line 230
    if-ltz v9, :cond_9

    .line 232
    const/4 v6, 0x6

    .line 233
    if-ge v9, v6, :cond_9

    .line 235
    new-instance v6, Lo/Sg;

    .line 237
    move-object/from16 v17, v6

    .line 239
    move/from16 v18, v9

    .line 241
    invoke-direct/range {v17 .. v22}, Lo/Sg;-><init>(IIIII)V

    .line 244
    goto :goto_3

    .line 245
    :cond_9
    move-object/from16 v6, v17

    .line 247
    :goto_3
    if-nez v6, :cond_a

    .line 249
    goto :goto_5

    .line 250
    :cond_a
    iget v9, v6, Lo/Sg;->a:I

    .line 252
    if-ne v9, v11, :cond_d

    .line 254
    iget v9, v6, Lo/Sg;->d:I

    .line 256
    if-ltz v9, :cond_d

    .line 258
    if-ge v9, v11, :cond_d

    .line 260
    iget v9, v6, Lo/Sg;->e:I

    .line 262
    if-ne v9, v0, :cond_d

    .line 264
    iget v9, v6, Lo/Sg;->b:I

    .line 266
    const/4 v12, 0x1

    .line 267
    if-gt v12, v9, :cond_d

    .line 269
    const/16 v12, 0x9c5

    .line 271
    if-ge v9, v12, :cond_d

    .line 273
    iget v6, v6, Lo/Sg;->c:I

    .line 275
    if-ltz v6, :cond_d

    .line 277
    const/16 v9, 0x1000

    .line 279
    if-ge v6, v9, :cond_d

    .line 281
    const/4 v6, 0x4

    .line 282
    new-array v9, v6, [C

    .line 284
    array-length v12, v14

    .line 285
    const/4 v13, 0x0

    .line 286
    const/4 v15, 0x0

    .line 287
    :goto_4
    if-ge v13, v12, :cond_c

    .line 289
    aget v3, v14, v13

    .line 291
    if-eq v3, v11, :cond_b

    .line 293
    if-ge v15, v6, :cond_b

    .line 295
    add-int/lit8 v6, v15, 0x1

    .line 297
    add-int/lit8 v3, v3, 0x30

    .line 299
    int-to-char v3, v3

    .line 300
    aput-char v3, v9, v15

    .line 302
    move v15, v6

    .line 303
    :cond_b
    add-int/lit8 v13, v13, 0x1

    .line 305
    const/16 v3, 0xa

    .line 307
    const/4 v6, 0x4

    .line 308
    goto :goto_4

    .line 309
    :cond_c
    new-instance v3, Ljava/lang/String;

    .line 311
    const/4 v6, 0x0

    .line 312
    invoke-direct {v3, v9, v6, v15}, Ljava/lang/String;-><init>([CII)V

    .line 315
    invoke-virtual {v5, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 318
    goto :goto_5

    .line 319
    :catchall_0
    move-exception v0

    .line 320
    goto/16 :goto_c

    .line 322
    :cond_d
    :goto_5
    add-int/lit8 v10, v10, 0x1

    .line 324
    const/16 v3, 0xa

    .line 326
    const/4 v6, 0x4

    .line 327
    goto/16 :goto_0

    .line 329
    :cond_e
    invoke-virtual {v5}, Ljava/util/HashSet;->isEmpty()Z

    .line 332
    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 333
    if-eqz v0, :cond_f

    .line 335
    monitor-exit p0

    .line 336
    return-void

    .line 337
    :cond_f
    :try_start_3
    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 340
    move-result-object v0

    .line 341
    const-string v2, "iterator(...)"

    .line 343
    invoke-static {v0, v2}, Lo/x9;->n(Ljava/lang/Object;Ljava/lang/String;)V

    .line 346
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 349
    move-result v2

    .line 350
    if-eqz v2, :cond_11

    .line 352
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 355
    move-result-object v2

    .line 356
    const-string v3, "next(...)"

    .line 358
    invoke-static {v2, v3}, Lo/x9;->n(Ljava/lang/Object;Ljava/lang/String;)V

    .line 361
    check-cast v2, Ljava/lang/String;

    .line 363
    sget-object v3, Lo/Tg;->j:Ljava/util/HashMap;

    .line 365
    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    move-result-object v4

    .line 369
    check-cast v4, Ljava/lang/Integer;

    .line 371
    if-eqz v4, :cond_10

    .line 373
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 376
    move-result v6

    .line 377
    const/4 v4, 0x1

    .line 378
    goto :goto_7

    .line 379
    :cond_10
    const/4 v4, 0x1

    .line 380
    const/4 v6, 0x0

    .line 381
    :goto_7
    add-int/2addr v6, v4

    .line 382
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 385
    move-result-object v4

    .line 386
    invoke-virtual {v3, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 389
    goto :goto_6

    .line 390
    :cond_11
    sget v0, Lo/Tg;->k:I

    .line 392
    const/4 v2, 0x1

    .line 393
    add-int/2addr v0, v2

    .line 394
    sput v0, Lo/Tg;->k:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 396
    const/16 v2, 0xc

    .line 398
    if-ge v0, v2, :cond_12

    .line 400
    monitor-exit p0

    .line 401
    return-void

    .line 402
    :cond_12
    :try_start_4
    const-string v0, ""

    .line 404
    sget-object v2, Lo/Tg;->j:Ljava/util/HashMap;

    .line 406
    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 409
    move-result-object v2

    .line 410
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 413
    move-result-object v2

    .line 414
    const/4 v3, 0x0

    .line 415
    const/4 v6, 0x0

    .line 416
    :cond_13
    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 419
    move-result v4

    .line 420
    if-eqz v4, :cond_15

    .line 422
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 425
    move-result-object v4

    .line 426
    check-cast v4, Ljava/util/Map$Entry;

    .line 428
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 431
    move-result-object v5

    .line 432
    check-cast v5, Ljava/lang/String;

    .line 434
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 437
    move-result-object v4

    .line 438
    check-cast v4, Ljava/lang/Number;

    .line 440
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    .line 443
    move-result v4

    .line 444
    if-le v4, v6, :cond_14

    .line 446
    move-object v0, v5

    .line 447
    move v3, v6

    .line 448
    move v6, v4

    .line 449
    goto :goto_8

    .line 450
    :cond_14
    if-le v4, v3, :cond_13

    .line 452
    move v3, v4

    .line 453
    goto :goto_8

    .line 454
    :cond_15
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 457
    move-result v2

    .line 458
    const/4 v4, 0x4

    .line 459
    if-ne v2, v4, :cond_18

    .line 461
    const/16 v2, 0x8

    .line 463
    if-lt v6, v2, :cond_18

    .line 465
    if-lez v3, :cond_16

    .line 467
    mul-int/2addr v3, v11

    .line 468
    if-ge v6, v3, :cond_16

    .line 470
    goto :goto_a

    .line 471
    :cond_16
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 474
    move-result v2

    .line 475
    if-eq v2, v4, :cond_17

    .line 477
    goto :goto_9

    .line 478
    :cond_17
    const/4 v2, 0x0

    .line 479
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    .line 482
    move-result v2

    .line 483
    const/4 v3, 0x1

    .line 484
    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 487
    move-result-object v0

    .line 488
    const-string v3, "substring(...)"

    .line 490
    invoke-static {v0, v3}, Lo/x9;->n(Ljava/lang/Object;Ljava/lang/String;)V

    .line 493
    new-instance v3, Ljava/lang/StringBuilder;

    .line 495
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 498
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 501
    const-string v2, "2"

    .line 503
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 506
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 509
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 512
    move-result-object v0

    .line 513
    :goto_9
    const-string v2, "udp"

    .line 515
    invoke-virtual {v1, v0, v2}, Lo/Tg;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 518
    monitor-exit p0

    .line 519
    return-void

    .line 520
    :cond_18
    :goto_a
    monitor-exit p0

    .line 521
    return-void

    .line 522
    :cond_19
    monitor-exit p0

    .line 523
    return-void

    .line 524
    :cond_1a
    monitor-exit p0

    .line 525
    return-void

    .line 526
    :cond_1b
    :goto_b
    monitor-exit p0

    .line 527
    return-void

    .line 528
    :goto_c
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 529
    throw v0
.end method

.method public final declared-synchronized o(I)V
    .locals 3

    .line 1
    const-string v0, "mk_ring "

    .line 3
    monitor-enter p0

    .line 4
    const/16 v1, 0x64

    .line 6
    if-gt v1, p1, :cond_1

    .line 8
    const/16 v1, 0x6e

    .line 10
    if-ge p1, v1, :cond_1

    .line 12
    :try_start_0
    sput p1, Lo/Tg;->f:I

    .line 14
    sget-object v1, Lo/Tg;->g:Ljava/util/ArrayList;

    .line 16
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 19
    move-result-object v2

    .line 20
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 23
    move-result v2

    .line 24
    if-nez v2, :cond_0

    .line 26
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33
    const-string p1, "ffrt-moco"

    .line 35
    invoke-virtual {p0}, Lo/Tg;->v()Ljava/lang/String;

    .line 38
    move-result-object v1

    .line 39
    new-instance v2, Ljava/lang/StringBuilder;

    .line 41
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 44
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    move-result-object v0

    .line 51
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    goto :goto_0

    .line 55
    :catchall_0
    move-exception p1

    .line 56
    goto :goto_1

    .line 57
    :cond_0
    :goto_0
    monitor-exit p0

    .line 58
    return-void

    .line 59
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 60
    throw p1

    .line 61
    :cond_1
    monitor-exit p0

    .line 62
    return-void
.end method

.method public final r([BIILjava/lang/String;Z)V
    .locals 20

    .line 1
    move-object/from16 v1, p0

    .line 3
    move-object/from16 v0, p1

    .line 5
    move/from16 v2, p2

    .line 7
    move/from16 v3, p3

    .line 9
    move-object/from16 v4, p4

    .line 11
    move/from16 v5, p5

    .line 13
    const/4 v7, 0x1

    .line 14
    const-string v8, "flowId"

    .line 16
    invoke-static {v4, v8}, Lo/x9;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    sget v8, Lo/Tg;->p:I

    .line 21
    sget-object v9, Lo/Tg;->n:Ljava/lang/Object;

    .line 23
    monitor-enter v9

    .line 24
    :try_start_0
    sget-object v10, Lo/Tg;->o:Ljava/util/ArrayList;

    .line 26
    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    .line 29
    move-result v11

    .line 30
    if-nez v11, :cond_3

    .line 32
    sget v11, Lo/Tg;->q:I

    .line 34
    if-ne v11, v8, :cond_0

    .line 36
    goto :goto_1

    .line 37
    :cond_0
    sput v8, Lo/Tg;->q:I

    .line 39
    invoke-static {v10}, Lo/e4;->l0(Ljava/util/ArrayList;)Ljava/util/List;

    .line 42
    move-result-object v8

    .line 43
    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    monitor-exit v9

    .line 47
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 50
    move-result-object v9

    .line 51
    const/4 v10, 0x0

    .line 52
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 55
    move-result v11

    .line 56
    if-eqz v11, :cond_2

    .line 58
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 61
    move-result-object v11

    .line 62
    check-cast v11, Lo/Rg;

    .line 64
    iget-object v13, v11, Lo/Rg;->c:[B

    .line 66
    iget v14, v11, Lo/Rg;->b:I

    .line 68
    iget-object v15, v11, Lo/Rg;->d:Ljava/lang/String;

    .line 70
    invoke-virtual {v1, v15, v14, v13}, Lo/Tg;->e(Ljava/lang/String;I[B)[B

    .line 73
    move-result-object v13

    .line 74
    if-nez v13, :cond_1

    .line 76
    invoke-static {v11}, Lo/Tg;->t(Lo/Rg;)V

    .line 79
    goto :goto_0

    .line 80
    :cond_1
    sget-object v14, Lo/Hb;->a:[B

    .line 82
    iget v11, v11, Lo/Rg;->a:I

    .line 84
    invoke-static {v11, v13, v7}, Lo/Hb;->e(I[BZ)V

    .line 87
    add-int/2addr v10, v7

    .line 88
    goto :goto_0

    .line 89
    :cond_2
    if-lez v10, :cond_4

    .line 91
    const-string v9, "ffrt-moco"

    .line 93
    invoke-interface {v8}, Ljava/util/List;->size()I

    .line 96
    move-result v8

    .line 97
    sub-int/2addr v8, v10

    .line 98
    new-instance v11, Ljava/lang/StringBuilder;

    .line 100
    const-string v13, "game replayed="

    .line 102
    invoke-direct {v11, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 105
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 108
    const-string v10, " pending="

    .line 110
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 116
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 119
    move-result-object v8

    .line 120
    invoke-static {v9, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    goto :goto_2

    .line 124
    :catchall_0
    move-exception v0

    .line 125
    goto/16 :goto_b

    .line 127
    :cond_3
    :goto_1
    monitor-exit v9

    .line 128
    :cond_4
    :goto_2
    const/16 v8, 0x8

    .line 130
    if-lt v3, v8, :cond_6

    .line 132
    if-ltz v2, :cond_6

    .line 134
    add-int v10, v2, v3

    .line 136
    array-length v11, v0

    .line 137
    if-le v10, v11, :cond_5

    .line 139
    goto :goto_3

    .line 140
    :cond_5
    sget-object v10, Lo/Tg;->e:[I

    .line 142
    if-nez v10, :cond_7

    .line 144
    :cond_6
    :goto_3
    const/4 v9, 0x0

    .line 145
    goto/16 :goto_8

    .line 147
    :cond_7
    invoke-static/range {p4 .. p4}, Lo/Tg;->x(Ljava/lang/String;)I

    .line 150
    move-result v11

    .line 151
    if-ltz v11, :cond_6

    .line 153
    const/16 v13, 0x100

    .line 155
    if-ge v11, v13, :cond_6

    .line 157
    aget-byte v13, v0, v2

    .line 159
    and-int/lit16 v13, v13, 0xff

    .line 161
    const/16 v14, 0x5a

    .line 163
    const/16 v15, 0x64

    .line 165
    if-gt v14, v13, :cond_8

    .line 167
    if-ge v13, v15, :cond_8

    .line 169
    const/16 v13, 0xa

    .line 171
    goto :goto_4

    .line 172
    :cond_8
    if-gt v15, v13, :cond_6

    .line 174
    const/16 v10, 0x6e

    .line 176
    if-ge v13, v10, :cond_6

    .line 178
    invoke-static {}, Lo/Tg;->n()[I

    .line 181
    move-result-object v10

    .line 182
    move v13, v8

    .line 183
    :goto_4
    if-ge v3, v13, :cond_9

    .line 185
    goto :goto_3

    .line 186
    :cond_9
    array-length v14, v10

    .line 187
    const/4 v15, -0x1

    .line 188
    move v9, v15

    .line 189
    move v12, v9

    .line 190
    move/from16 v16, v12

    .line 192
    const/4 v8, 0x0

    .line 193
    const/16 v18, 0x2

    .line 195
    :goto_5
    if-ge v8, v14, :cond_f

    .line 197
    aget v6, v10, v8

    .line 199
    if-eqz v6, :cond_e

    .line 201
    if-eq v6, v7, :cond_d

    .line 203
    const/4 v7, 0x2

    .line 204
    if-eq v6, v7, :cond_c

    .line 206
    const/4 v7, 0x3

    .line 207
    if-eq v6, v7, :cond_b

    .line 209
    const/4 v7, 0x4

    .line 210
    if-eq v6, v7, :cond_a

    .line 212
    goto :goto_3

    .line 213
    :cond_a
    move/from16 v6, v18

    .line 215
    invoke-static {v0, v2, v11, v6}, Lo/Tg;->f([BIII)I

    .line 218
    move-result v7

    .line 219
    move-object/from16 v18, v10

    .line 221
    move/from16 v19, v14

    .line 223
    const/4 v10, 0x1

    .line 224
    add-int/lit8 v14, v6, 0x1

    .line 226
    invoke-static {v0, v2, v11, v14}, Lo/Tg;->f([BIII)I

    .line 229
    move-result v14

    .line 230
    const/16 v16, 0x8

    .line 232
    shl-int/lit8 v14, v14, 0x8

    .line 234
    or-int/2addr v7, v14

    .line 235
    const/4 v14, 0x2

    .line 236
    add-int/2addr v6, v14

    .line 237
    move/from16 v16, v7

    .line 239
    :goto_6
    const/16 v17, 0x8

    .line 241
    goto :goto_7

    .line 242
    :cond_b
    move/from16 v19, v14

    .line 244
    move/from16 v6, v18

    .line 246
    const/4 v14, 0x2

    .line 247
    move-object/from16 v18, v10

    .line 249
    const/4 v10, 0x1

    .line 250
    invoke-static {v0, v2, v11, v6}, Lo/Tg;->f([BIII)I

    .line 253
    move-result v7

    .line 254
    add-int/2addr v6, v10

    .line 255
    move v9, v7

    .line 256
    goto :goto_6

    .line 257
    :cond_c
    move/from16 v19, v14

    .line 259
    move/from16 v6, v18

    .line 261
    move v14, v7

    .line 262
    move-object/from16 v18, v10

    .line 264
    const/4 v10, 0x1

    .line 265
    add-int/2addr v6, v14

    .line 266
    goto :goto_6

    .line 267
    :cond_d
    move/from16 v19, v14

    .line 269
    move/from16 v6, v18

    .line 271
    const/4 v14, 0x2

    .line 272
    move-object/from16 v18, v10

    .line 274
    move v10, v7

    .line 275
    invoke-static {v0, v2, v11, v6}, Lo/Tg;->f([BIII)I

    .line 278
    move-result v7

    .line 279
    add-int/lit8 v12, v6, 0x1

    .line 281
    invoke-static {v0, v2, v11, v12}, Lo/Tg;->f([BIII)I

    .line 284
    move-result v12

    .line 285
    const/16 v17, 0x8

    .line 287
    shl-int/lit8 v12, v12, 0x8

    .line 289
    or-int/2addr v7, v12

    .line 290
    add-int/2addr v6, v14

    .line 291
    move v12, v7

    .line 292
    goto :goto_7

    .line 293
    :cond_e
    move/from16 v19, v14

    .line 295
    move/from16 v6, v18

    .line 297
    const/4 v14, 0x2

    .line 298
    const/16 v17, 0x8

    .line 300
    move-object/from16 v18, v10

    .line 302
    move v10, v7

    .line 303
    invoke-static {v0, v2, v11, v6}, Lo/Tg;->f([BIII)I

    .line 306
    move-result v7

    .line 307
    add-int/2addr v6, v10

    .line 308
    move v15, v7

    .line 309
    :goto_7
    add-int/2addr v8, v10

    .line 310
    move v7, v10

    .line 311
    move-object/from16 v10, v18

    .line 313
    move/from16 v14, v19

    .line 315
    move/from16 v18, v6

    .line 317
    goto :goto_5

    .line 318
    :cond_f
    move v10, v7

    .line 319
    move/from16 v6, v18

    .line 321
    if-ne v6, v13, :cond_6

    .line 323
    if-ltz v15, :cond_6

    .line 325
    const/4 v6, 0x6

    .line 326
    if-ge v15, v6, :cond_6

    .line 328
    if-ltz v9, :cond_6

    .line 330
    const/4 v6, 0x4

    .line 331
    if-ge v9, v6, :cond_6

    .line 333
    if-gt v10, v12, :cond_6

    .line 335
    const/16 v6, 0x9c5

    .line 337
    if-ge v12, v6, :cond_6

    .line 339
    sub-int/2addr v3, v13

    .line 340
    move/from16 v15, v16

    .line 342
    if-eq v15, v3, :cond_10

    .line 344
    goto/16 :goto_3

    .line 346
    :cond_10
    new-instance v3, Lo/Qg;

    .line 348
    invoke-direct {v3, v12, v9, v15, v13}, Lo/Qg;-><init>(IIII)V

    .line 351
    move-object v9, v3

    .line 352
    :goto_8
    if-nez v9, :cond_11

    .line 354
    return-void

    .line 355
    :cond_11
    if-eqz v5, :cond_12

    .line 357
    iget v3, v9, Lo/Qg;->a:I

    .line 359
    const/16 v6, 0x65

    .line 361
    if-gt v6, v3, :cond_19

    .line 363
    const/16 v6, 0x6a

    .line 365
    if-ge v3, v6, :cond_19

    .line 367
    goto :goto_9

    .line 368
    :cond_12
    iget v3, v9, Lo/Qg;->a:I

    .line 370
    const/16 v6, 0x7d1

    .line 372
    if-ne v3, v6, :cond_19

    .line 374
    :goto_9
    const/16 v3, 0x67

    .line 376
    if-eqz v5, :cond_13

    .line 378
    iget v6, v9, Lo/Qg;->a:I

    .line 380
    if-ne v6, v3, :cond_13

    .line 382
    sget-object v0, Lo/Hb;->a:[B

    .line 384
    const/4 v0, 0x0

    .line 385
    new-array v0, v0, [B

    .line 387
    const/4 v2, 0x1

    .line 388
    invoke-static {v6, v0, v2}, Lo/Hb;->e(I[BZ)V

    .line 391
    return-void

    .line 392
    :cond_13
    iget v6, v9, Lo/Qg;->d:I

    .line 394
    add-int/2addr v2, v6

    .line 395
    iget v6, v9, Lo/Qg;->c:I

    .line 397
    add-int/2addr v6, v2

    .line 398
    invoke-static {v0, v2, v6}, Lo/H2;->n0([BII)[B

    .line 401
    move-result-object v0

    .line 402
    iget v2, v9, Lo/Qg;->b:I

    .line 404
    invoke-virtual {v1, v4, v2, v0}, Lo/Tg;->e(Ljava/lang/String;I[B)[B

    .line 407
    move-result-object v2

    .line 408
    if-nez v2, :cond_18

    .line 410
    if-eqz v5, :cond_14

    .line 412
    iget v2, v9, Lo/Qg;->a:I

    .line 414
    if-eq v2, v3, :cond_14

    .line 416
    new-instance v3, Lo/Rg;

    .line 418
    iget v6, v9, Lo/Qg;->b:I

    .line 420
    invoke-direct {v3, v2, v6, v4, v0}, Lo/Rg;-><init>(IILjava/lang/String;[B)V

    .line 423
    invoke-static {v3}, Lo/Tg;->t(Lo/Rg;)V

    .line 426
    :cond_14
    sget v2, Lo/Tg;->m:I

    .line 428
    const/4 v3, 0x1

    .line 429
    add-int/2addr v2, v3

    .line 430
    sput v2, Lo/Tg;->m:I

    .line 432
    if-eq v2, v3, :cond_15

    .line 434
    rem-int/lit8 v2, v2, 0x14

    .line 436
    if-nez v2, :cond_17

    .line 438
    :cond_15
    const-string v2, "ffrt-moco"

    .line 440
    iget v3, v9, Lo/Qg;->a:I

    .line 442
    if-eqz v5, :cond_16

    .line 444
    const-string v5, "S2C"

    .line 446
    goto :goto_a

    .line 447
    :cond_16
    const-string v5, "C2S"

    .line 449
    :goto_a
    array-length v0, v0

    .line 450
    invoke-virtual {v1, v4}, Lo/Tg;->w(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 453
    move-result-object v4

    .line 454
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 457
    move-result v4

    .line 458
    invoke-virtual/range {p0 .. p0}, Lo/Tg;->g()Ljava/util/List;

    .line 461
    move-result-object v6

    .line 462
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 465
    move-result v6

    .line 466
    add-int/2addr v6, v4

    .line 467
    new-instance v4, Ljava/lang/StringBuilder;

    .line 469
    const-string v7, "game_miss cmd="

    .line 471
    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 474
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 477
    const-string v3, " dir="

    .line 479
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 482
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 485
    const-string v3, " body="

    .line 487
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 490
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 493
    const-string v0, " keys="

    .line 495
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 498
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 501
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 504
    move-result-object v0

    .line 505
    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    :cond_17
    return-void

    .line 509
    :cond_18
    sget-object v0, Lo/Hb;->a:[B

    .line 511
    iget v0, v9, Lo/Qg;->a:I

    .line 513
    invoke-static {v0, v2, v5}, Lo/Hb;->e(I[BZ)V

    .line 516
    :cond_19
    return-void

    .line 517
    :goto_b
    monitor-exit v9

    .line 518
    throw v0
.end method

.method public final s(IILjava/lang/String;[B)V
    .locals 9

    .line 1
    const/16 v0, 0x8

    .line 3
    if-lt p2, v0, :cond_c

    .line 5
    if-ltz p1, :cond_c

    .line 7
    add-int v1, p1, p2

    .line 9
    array-length v2, p4

    .line 10
    if-le v1, v2, :cond_0

    .line 12
    goto/16 :goto_2

    .line 14
    :cond_0
    const/16 v2, 0x18

    .line 16
    if-ge p2, v2, :cond_1

    .line 18
    return-void

    .line 19
    :cond_1
    aget-byte v2, p4, p1

    .line 21
    and-int/lit16 v2, v2, 0xff

    .line 23
    const/16 v3, 0x5a

    .line 25
    const/16 v4, 0x64

    .line 27
    if-gt v3, v2, :cond_2

    .line 29
    if-ge v2, v4, :cond_2

    .line 31
    const/16 v3, 0xa

    .line 33
    goto :goto_0

    .line 34
    :cond_2
    if-gt v4, v2, :cond_c

    .line 36
    const/16 v3, 0x6e

    .line 38
    if-ge v2, v3, :cond_c

    .line 40
    move v3, v0

    .line 41
    :goto_0
    if-le p2, v3, :cond_c

    .line 43
    sub-int v4, p2, v3

    .line 45
    rem-int/lit8 v5, v4, 0x8

    .line 47
    if-eqz v5, :cond_3

    .line 49
    goto/16 :goto_2

    .line 51
    :cond_3
    add-int/2addr p1, v3

    .line 52
    invoke-static {p4, p1, v4}, Lo/Tg;->m([BII)Z

    .line 55
    move-result v3

    .line 56
    if-eqz v3, :cond_4

    .line 58
    return-void

    .line 59
    :cond_4
    invoke-static {p4, p1, v1}, Lo/H2;->n0([BII)[B

    .line 62
    move-result-object p1

    .line 63
    sget-object p4, Lo/Tg;->i:[B

    .line 65
    const/16 v1, 0x10

    .line 67
    if-eqz p4, :cond_7

    .line 69
    array-length v3, p4

    .line 70
    if-lt v3, v1, :cond_7

    .line 72
    sget p2, Lo/Tg;->r:I

    .line 74
    if-gtz p2, :cond_5

    .line 76
    return-void

    .line 77
    :cond_5
    invoke-static {p1, p4}, Lo/Ha;->z([B[B)[B

    .line 80
    move-result-object p1

    .line 81
    if-nez p1, :cond_6

    .line 83
    return-void

    .line 84
    :cond_6
    sget p2, Lo/Tg;->r:I

    .line 86
    add-int/lit8 p2, p2, -0x1

    .line 88
    sput p2, Lo/Tg;->r:I

    .line 90
    invoke-static {p1}, Lo/Hb;->a([B)V

    .line 93
    return-void

    .line 94
    :cond_7
    invoke-static {p3}, Lo/Tg;->x(Ljava/lang/String;)I

    .line 97
    move-result p4

    .line 98
    new-instance v3, Ljava/util/HashSet;

    .line 100
    invoke-direct {v3, v0}, Ljava/util/HashSet;-><init>(I)V

    .line 103
    new-instance v4, Ljava/util/ArrayList;

    .line 105
    invoke-direct {v4, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 108
    invoke-virtual {p0, p3}, Lo/Tg;->w(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 111
    move-result-object p3

    .line 112
    invoke-virtual {v4, p3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 115
    invoke-virtual {p0}, Lo/Tg;->g()Ljava/util/List;

    .line 118
    move-result-object p3

    .line 119
    invoke-virtual {v4, p3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 122
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 125
    move-result-object p3

    .line 126
    const-string v4, "iterator(...)"

    .line 128
    invoke-static {p3, v4}, Lo/x9;->n(Ljava/lang/Object;Ljava/lang/String;)V

    .line 131
    :cond_8
    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 134
    move-result v4

    .line 135
    const-string v5, " mk="

    .line 137
    const-string v6, "ffrt-moco"

    .line 139
    if-eqz v4, :cond_a

    .line 141
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 144
    move-result-object v4

    .line 145
    const-string v7, "next(...)"

    .line 147
    invoke-static {v4, v7}, Lo/x9;->n(Ljava/lang/Object;Ljava/lang/String;)V

    .line 150
    check-cast v4, [B

    .line 152
    array-length v7, v4

    .line 153
    if-lt v7, v1, :cond_8

    .line 155
    invoke-static {v4, v0}, Lo/Tg;->h([BI)Ljava/lang/String;

    .line 158
    move-result-object v7

    .line 159
    invoke-virtual {v3, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 162
    move-result v8

    .line 163
    if-eqz v8, :cond_8

    .line 165
    invoke-static {p1, v4}, Lo/Ha;->z([B[B)[B

    .line 168
    move-result-object v8

    .line 169
    if-nez v8, :cond_9

    .line 171
    goto :goto_1

    .line 172
    :cond_9
    invoke-static {v4}, Lo/Tg;->q([B)V

    .line 175
    invoke-static {v8}, Lo/Hb;->a([B)V

    .line 178
    array-length p1, v8

    .line 179
    invoke-static {v1}, Lo/L1;->j(I)V

    .line 182
    invoke-static {p4, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    .line 185
    move-result-object p2

    .line 186
    const-string p3, "toString(...)"

    .line 188
    invoke-static {p2, p3}, Lo/x9;->n(Ljava/lang/Object;Ljava/lang/String;)V

    .line 191
    new-instance p3, Ljava/lang/StringBuilder;

    .line 193
    const-string p4, "tea_ok "

    .line 195
    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 198
    invoke-virtual {p3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    const-string p4, " pt="

    .line 203
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 209
    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 215
    const-string p1, " xor=0x"

    .line 217
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 226
    move-result-object p1

    .line 227
    invoke-static {v6, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    return-void

    .line 231
    :cond_a
    sget p1, Lo/Tg;->l:I

    .line 233
    const/4 p3, 0x1

    .line 234
    add-int/2addr p1, p3

    .line 235
    sput p1, Lo/Tg;->l:I

    .line 237
    if-eq p1, p3, :cond_b

    .line 239
    rem-int/lit8 p1, p1, 0x28

    .line 241
    if-nez p1, :cond_c

    .line 243
    :cond_b
    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    .line 246
    move-result p1

    .line 247
    new-instance p3, Ljava/lang/StringBuilder;

    .line 249
    const-string p4, "tea_miss n="

    .line 251
    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 254
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 257
    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 263
    const-string p2, " keys="

    .line 265
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 271
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 274
    move-result-object p1

    .line 275
    invoke-static {v6, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    :cond_c
    :goto_2
    return-void
.end method

.method public final declared-synchronized u()V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    const-string v0, ""

    .line 4
    sput-object v0, Lo/Tg;->s:Ljava/lang/String;

    .line 6
    const/4 v0, 0x0

    .line 7
    sput-object v0, Lo/Tg;->e:[I

    .line 9
    sget-object v1, Lo/Tg;->j:Ljava/util/HashMap;

    .line 11
    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 14
    const/4 v1, 0x0

    .line 15
    sput v1, Lo/Tg;->k:I

    .line 17
    const/16 v2, 0x69

    .line 19
    sput v2, Lo/Tg;->f:I

    .line 21
    sget-object v2, Lo/Tg;->g:Ljava/util/ArrayList;

    .line 23
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 26
    sput v1, Lo/Tg;->h:I

    .line 28
    sput-object v0, Lo/Tg;->i:[B

    .line 30
    sput v1, Lo/Tg;->l:I

    .line 32
    sput v1, Lo/Tg;->m:I

    .line 34
    sget-object v0, Lo/Tg;->n:Ljava/lang/Object;

    .line 36
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    :try_start_1
    sget-object v2, Lo/Tg;->o:Ljava/util/ArrayList;

    .line 39
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 42
    const/4 v2, -0x1

    .line 43
    sput v2, Lo/Tg;->q:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 45
    :try_start_2
    monitor-exit v0

    .line 46
    sput v1, Lo/Tg;->p:I

    .line 48
    const/16 v0, 0x28

    .line 50
    sput v0, Lo/Tg;->r:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 52
    monitor-exit p0

    .line 53
    return-void

    .line 54
    :catchall_0
    move-exception v0

    .line 55
    goto :goto_0

    .line 56
    :catchall_1
    move-exception v1

    .line 57
    :try_start_3
    monitor-exit v0

    .line 58
    throw v1

    .line 59
    :goto_0
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 60
    throw v0
.end method

.method public final declared-synchronized v()Ljava/lang/String;
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    sget-object v0, Lo/Tg;->g:Ljava/util/ArrayList;

    .line 4
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 7
    move-result v1

    .line 8
    if-eqz v1, :cond_0

    .line 10
    sget v0, Lo/Tg;->f:I

    .line 12
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 15
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    monitor-exit p0

    .line 17
    return-object v0

    .line 18
    :catchall_0
    move-exception v0

    .line 19
    goto :goto_1

    .line 20
    :cond_0
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 25
    move-result v2

    .line 26
    mul-int/lit8 v2, v2, 0x4

    .line 28
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 31
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    .line 34
    move-result v0

    .line 35
    const/4 v2, 0x0

    .line 36
    :goto_0
    if-ge v2, v0, :cond_2

    .line 38
    if-lez v2, :cond_1

    .line 40
    const/16 v3, 0x2c

    .line 42
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 45
    :cond_1
    sget-object v3, Lo/Tg;->g:Ljava/util/ArrayList;

    .line 47
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 50
    move-result-object v3

    .line 51
    const-string v4, "get(...)"

    .line 53
    invoke-static {v3, v4}, Lo/x9;->n(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    check-cast v3, Ljava/lang/Number;

    .line 58
    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    .line 61
    move-result v3

    .line 62
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 65
    add-int/lit8 v2, v2, 0x1

    .line 67
    goto :goto_0

    .line 68
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    move-result-object v0

    .line 72
    const-string v1, "toString(...)"

    .line 74
    invoke-static {v0, v1}, Lo/x9;->n(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 77
    monitor-exit p0

    .line 78
    return-object v0

    .line 79
    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 80
    throw v0
.end method

.method public final w(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 3

    .line 1
    const-string v0, "flowId"

    .line 3
    invoke-static {p1, v0}, Lo/x9;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    .line 8
    const/16 v1, 0xc

    .line 10
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 13
    sget-object v1, Lo/Tg;->c:Ljava/util/concurrent/ConcurrentHashMap;

    .line 15
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 18
    move-result v2

    .line 19
    if-nez v2, :cond_0

    .line 21
    const-string p1, "_"

    .line 23
    :cond_0
    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    move-result-object p1

    .line 27
    check-cast p1, Lo/Pg;

    .line 29
    if-eqz p1, :cond_1

    .line 31
    iget-object v1, p1, Lo/Pg;->f:[B

    .line 33
    array-length v1, v1

    .line 34
    const/16 v2, 0x10

    .line 36
    if-ne v1, v2, :cond_1

    .line 38
    iget-object p1, p1, Lo/Pg;->f:[B

    .line 40
    invoke-static {p1, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 43
    move-result-object p1

    .line 44
    const-string v1, "copyOf(...)"

    .line 46
    invoke-static {p1, v1}, Lo/x9;->n(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    :cond_1
    invoke-virtual {p0}, Lo/Tg;->g()Ljava/util/List;

    .line 55
    move-result-object p1

    .line 56
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 59
    return-object v0
.end method
