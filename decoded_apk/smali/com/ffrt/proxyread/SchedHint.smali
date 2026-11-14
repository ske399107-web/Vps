.class public final Lcom/ffrt/proxyread/SchedHint;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/ffrt/proxyread/SchedHint;

.field private static volatile app:Landroid/content/Context;

.field private static volatile hooked:Z

.field public static volatile q:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/ffrt/proxyread/SchedHint;

    .line 3
    invoke-direct {v0}, Lcom/ffrt/proxyread/SchedHint;-><init>()V

    .line 6
    sput-object v0, Lcom/ffrt/proxyread/SchedHint;->INSTANCE:Lcom/ffrt/proxyread/SchedHint;

    .line 8
    :try_start_0
    const-string v0, "tune"

    .line 10
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    :catchall_0
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method public static synthetic a(ZLjava/lang/String;)Lo/Ug;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/ffrt/proxyread/SchedHint;->r$lambda$2(ZLjava/lang/String;)Lo/Ug;

    move-result-object p0

    return-object p0
.end method

.method public static final k()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    sput-boolean v0, Lo/x9;->T:Z

    .line 4
    :try_start_0
    sget-object v0, Lo/B0;->d:Lo/B0;

    .line 6
    if-eqz v0, :cond_0

    .line 8
    invoke-virtual {v0}, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->disconnect()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    :catchall_0
    :cond_0
    sget-object v0, Lcom/ffrt/proxyread/SchedHint;->app:Landroid/content/Context;

    .line 13
    if-nez v0, :cond_1

    .line 15
    return-void

    .line 16
    :cond_1
    sget-object v1, Lcom/ffrt/proxyread/VpnCaptureService;->Companion:Lo/ji;

    .line 18
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    invoke-static {v0}, Lo/ji;->a(Landroid/content/Context;)V

    .line 24
    sget-object v0, Lcom/ffrt/proxyread/WirelessPair;->INSTANCE:Lcom/ffrt/proxyread/WirelessPair;

    .line 26
    invoke-virtual {v0}, Lcom/ffrt/proxyread/WirelessPair;->resetPaint()V

    .line 29
    return-void
.end method

.method public static final native n(II)I
.end method

.method public static final r(Ljava/lang/String;)V
    .locals 11

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    const-string v2, "s"

    .line 5
    invoke-static {p0, v2}, Lo/x9;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    sget-object v2, Lcom/ffrt/proxyread/SchedHint;->app:Landroid/content/Context;

    .line 10
    if-nez v2, :cond_0

    .line 12
    return-void

    .line 13
    :cond_0
    sget-boolean v3, Lcom/ffrt/proxyread/SchedHint;->hooked:Z

    .line 15
    if-nez v3, :cond_1

    .line 17
    sput-boolean v1, Lcom/ffrt/proxyread/SchedHint;->hooked:Z

    .line 19
    new-instance v3, Lo/ue;

    .line 21
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 24
    sget-object v4, Lo/w0;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 26
    invoke-virtual {v4, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 29
    sget-boolean v4, Lo/x9;->T:Z

    .line 31
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 34
    move-result-object v4

    .line 35
    sget-object v5, Lo/w0;->g:Ljava/lang/String;

    .line 37
    invoke-virtual {v3, v4, v5}, Lo/ue;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 43
    move-result v3

    .line 44
    if-nez v3, :cond_2

    .line 46
    invoke-static {v2}, Lo/w0;->b(Landroid/content/Context;)V

    .line 49
    goto/16 :goto_7

    .line 51
    :cond_2
    sget-object v3, Lo/w0;->a:Landroid/os/Handler;

    .line 53
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 56
    move-result-object v2

    .line 57
    sput-object v2, Lo/w0;->d:Landroid/content/Context;

    .line 59
    invoke-static {v2}, Lo/x9;->l(Ljava/lang/Object;)V

    .line 62
    invoke-static {v2}, Lo/w0;->b(Landroid/content/Context;)V

    .line 65
    invoke-static {p0}, Lo/tf;->L0(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 68
    move-result-object p0

    .line 69
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 72
    move-result-object p0

    .line 73
    const/16 v3, 0xa

    .line 75
    invoke-static {p0, v3}, Lo/tf;->H0(Ljava/lang/String;C)Ljava/lang/String;

    .line 78
    move-result-object p0

    .line 79
    const/16 v4, 0x9

    .line 81
    invoke-static {p0, v4}, Lo/tf;->H0(Ljava/lang/String;C)Ljava/lang/String;

    .line 84
    move-result-object p0

    .line 85
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 88
    move-result v4

    .line 89
    const/4 v5, 0x0

    .line 90
    if-nez v4, :cond_3

    .line 92
    goto/16 :goto_6

    .line 94
    :cond_3
    const-string v4, "[\\s,;/]+"

    .line 96
    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 99
    move-result-object v4

    .line 100
    const-string v6, "compile(...)"

    .line 102
    invoke-static {v4, v6}, Lo/x9;->n(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    invoke-virtual {v4, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 108
    move-result-object v4

    .line 109
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    .line 112
    move-result v7

    .line 113
    if-nez v7, :cond_4

    .line 115
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 118
    move-result-object v3

    .line 119
    invoke-static {v3}, Lo/L1;->H(Ljava/lang/Object;)Ljava/util/List;

    .line 122
    move-result-object v3

    .line 123
    goto :goto_0

    .line 124
    :cond_4
    new-instance v7, Ljava/util/ArrayList;

    .line 126
    invoke-direct {v7, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 129
    move v3, v0

    .line 130
    :cond_5
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->start()I

    .line 133
    move-result v8

    .line 134
    invoke-virtual {p0, v3, v8}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    .line 137
    move-result-object v3

    .line 138
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 141
    move-result-object v3

    .line 142
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 145
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->end()I

    .line 148
    move-result v3

    .line 149
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    .line 152
    move-result v8

    .line 153
    if-nez v8, :cond_5

    .line 155
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 158
    move-result v4

    .line 159
    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    .line 162
    move-result-object v3

    .line 163
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 166
    move-result-object v3

    .line 167
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 170
    move-object v3, v7

    .line 171
    :goto_0
    new-instance v4, Ljava/util/ArrayList;

    .line 173
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 176
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 179
    move-result-object v3

    .line 180
    :cond_6
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 183
    move-result v7

    .line 184
    if-eqz v7, :cond_7

    .line 186
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 189
    move-result-object v7

    .line 190
    move-object v8, v7

    .line 191
    check-cast v8, Ljava/lang/String;

    .line 193
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    .line 196
    move-result v8

    .line 197
    if-lez v8, :cond_6

    .line 199
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 202
    goto :goto_1

    .line 203
    :cond_7
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 206
    move-result v3

    .line 207
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->listIterator(I)Ljava/util/ListIterator;

    .line 210
    move-result-object v3

    .line 211
    :cond_8
    invoke-interface {v3}, Ljava/util/ListIterator;->hasPrevious()Z

    .line 214
    move-result v7

    .line 215
    if-eqz v7, :cond_9

    .line 217
    invoke-interface {v3}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 220
    move-result-object v7

    .line 221
    move-object v8, v7

    .line 222
    check-cast v8, Ljava/lang/String;

    .line 224
    const-string v9, "\\d{6}"

    .line 226
    invoke-static {v9}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 229
    move-result-object v9

    .line 230
    invoke-static {v9, v6}, Lo/x9;->n(Ljava/lang/Object;Ljava/lang/String;)V

    .line 233
    const-string v10, "input"

    .line 235
    invoke-static {v8, v10}, Lo/x9;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 238
    invoke-virtual {v9, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 241
    move-result-object v8

    .line 242
    invoke-virtual {v8}, Ljava/util/regex/Matcher;->matches()Z

    .line 245
    move-result v8

    .line 246
    if-eqz v8, :cond_8

    .line 248
    goto :goto_2

    .line 249
    :cond_9
    move-object v7, v5

    .line 250
    :goto_2
    check-cast v7, Ljava/lang/String;

    .line 252
    const/4 v3, 0x6

    .line 253
    if-nez v7, :cond_c

    .line 255
    new-instance v6, Ljava/lang/StringBuilder;

    .line 257
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 260
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 263
    move-result v7

    .line 264
    move v8, v0

    .line 265
    :goto_3
    if-ge v8, v7, :cond_b

    .line 267
    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    .line 270
    move-result v9

    .line 271
    invoke-static {v9}, Ljava/lang/Character;->isDigit(C)Z

    .line 274
    move-result v10

    .line 275
    if-eqz v10, :cond_a

    .line 277
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/Appendable;

    .line 280
    :cond_a
    add-int/2addr v8, v1

    .line 281
    goto :goto_3

    .line 282
    :cond_b
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 285
    move-result-object v7

    .line 286
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    .line 289
    move-result p0

    .line 290
    if-ne p0, v3, :cond_11

    .line 292
    :cond_c
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 295
    move-result-object p0

    .line 296
    move v4, v0

    .line 297
    :cond_d
    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 300
    move-result v5

    .line 301
    if-eqz v5, :cond_10

    .line 303
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 306
    move-result-object v5

    .line 307
    check-cast v5, Ljava/lang/String;

    .line 309
    invoke-static {v5, v7}, Lo/x9;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 312
    move-result v6

    .line 313
    if-nez v6, :cond_d

    .line 315
    const-string v6, "<this>"

    .line 317
    invoke-static {v5, v6}, Lo/x9;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 320
    const/16 v6, 0x3a

    .line 322
    invoke-virtual {v5, v6, v0}, Ljava/lang/String;->indexOf(II)I

    .line 325
    move-result v8

    .line 326
    if-ltz v8, :cond_e

    .line 328
    move v8, v1

    .line 329
    goto :goto_5

    .line 330
    :cond_e
    move v8, v0

    .line 331
    :goto_5
    const v9, 0xffff

    .line 334
    if-eqz v8, :cond_f

    .line 336
    invoke-static {v5, v6}, Lo/tf;->J0(Ljava/lang/String;C)Ljava/lang/String;

    .line 339
    move-result-object v5

    .line 340
    invoke-static {v5}, Lo/tf;->K0(Ljava/lang/String;)Ljava/lang/Integer;

    .line 343
    move-result-object v5

    .line 344
    if-eqz v5, :cond_d

    .line 346
    new-instance v6, Lo/w9;

    .line 348
    invoke-direct {v6, v1, v9, v1}, Lo/u9;-><init>(III)V

    .line 351
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 354
    move-result v8

    .line 355
    if-gt v1, v8, :cond_d

    .line 357
    iget v6, v6, Lo/u9;->b:I

    .line 359
    if-gt v8, v6, :cond_d

    .line 361
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 364
    move-result v4

    .line 365
    goto :goto_4

    .line 366
    :cond_f
    invoke-static {v5}, Lo/tf;->K0(Ljava/lang/String;)Ljava/lang/Integer;

    .line 369
    move-result-object v6

    .line 370
    if-eqz v6, :cond_d

    .line 372
    new-instance v8, Lo/w9;

    .line 374
    invoke-direct {v8, v1, v9, v1}, Lo/u9;-><init>(III)V

    .line 377
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 380
    move-result v9

    .line 381
    if-gt v1, v9, :cond_d

    .line 383
    iget v8, v8, Lo/u9;->b:I

    .line 385
    if-gt v9, v8, :cond_d

    .line 387
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 390
    move-result v5

    .line 391
    if-eq v5, v3, :cond_d

    .line 393
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 396
    move-result v4

    .line 397
    goto :goto_4

    .line 398
    :cond_10
    new-instance v5, Lo/v0;

    .line 400
    invoke-direct {v5, v7, v4}, Lo/v0;-><init>(Ljava/lang/String;I)V

    .line 403
    :cond_11
    :goto_6
    if-nez v5, :cond_13

    .line 405
    const-string p0, "adb_session"

    .line 407
    invoke-virtual {v2, p0, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 410
    move-result-object p0

    .line 411
    const-string v1, "paired"

    .line 413
    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 416
    move-result p0

    .line 417
    if-eqz p0, :cond_12

    .line 419
    invoke-static {v2}, Lo/w0;->c(Landroid/content/Context;)V

    .line 422
    goto :goto_7

    .line 423
    :cond_12
    const-string p0, "Introduce los 6 d\u00edgitos y pulsa Vincular."

    .line 425
    sput-object p0, Lo/w0;->g:Ljava/lang/String;

    .line 427
    invoke-static {}, Lo/w0;->a()V

    .line 430
    goto :goto_7

    .line 431
    :cond_13
    sget-boolean p0, Lo/w0;->h:Z

    .line 433
    if-nez p0, :cond_15

    .line 435
    sget-boolean p0, Lo/x9;->T:Z

    .line 437
    if-eqz p0, :cond_14

    .line 439
    goto :goto_7

    .line 440
    :cond_14
    sput-boolean v1, Lo/w0;->h:Z

    .line 442
    const-string p0, "Vinculando\u2026"

    .line 444
    sput-object p0, Lo/w0;->g:Ljava/lang/String;

    .line 446
    invoke-static {}, Lo/w0;->a()V

    .line 449
    new-instance p0, Lo/t0;

    .line 451
    invoke-direct {p0, v5, v2, v0}, Lo/t0;-><init>(Ljava/lang/Object;Landroid/content/Context;I)V

    .line 454
    const-string v0, "pr-adb-pair"

    .line 456
    const/16 v1, 0x17

    .line 458
    invoke-static {v0, p0, v1}, Lo/Ha;->y0(Ljava/lang/String;Lo/u8;I)Lo/Uf;

    .line 461
    :cond_15
    :goto_7
    return-void
.end method

.method private static final r$lambda$2(ZLjava/lang/String;)Lo/Ug;
    .locals 0

    .line 1
    const-string p0, "t"

    .line 3
    invoke-static {p1, p0}, Lo/x9;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    sget-object p0, Lcom/ffrt/proxyread/WirelessPair;->INSTANCE:Lcom/ffrt/proxyread/WirelessPair;

    .line 8
    invoke-virtual {p0, p1}, Lcom/ffrt/proxyread/WirelessPair;->push(Ljava/lang/String;)V

    .line 11
    sget-object p0, Lo/Ug;->a:Lo/Ug;

    .line 13
    return-object p0
.end method


# virtual methods
.method public final bind(Landroid/content/Context;)V
    .locals 1

    .line 1
    const-string v0, "ctx"

    .line 3
    invoke-static {p1, v0}, Lo/x9;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 9
    move-result-object p1

    .line 10
    sput-object p1, Lcom/ffrt/proxyread/SchedHint;->app:Landroid/content/Context;

    .line 12
    const/4 p1, 0x1

    .line 13
    const/4 v0, 0x0

    .line 14
    :try_start_0
    invoke-static {p1, v0}, Lcom/ffrt/proxyread/SchedHint;->n(II)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    :catchall_0
    return-void
.end method

.method public final feed(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "s"

    .line 3
    invoke-static {p1, v0}, Lo/x9;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    sput-object p1, Lcom/ffrt/proxyread/SchedHint;->q:Ljava/lang/String;

    .line 8
    return-void
.end method

.method public final getApp()Landroid/content/Context;
    .locals 1

    .line 1
    sget-object v0, Lcom/ffrt/proxyread/SchedHint;->app:Landroid/content/Context;

    .line 3
    return-object v0
.end method

.method public final setApp(Landroid/content/Context;)V
    .locals 0

    .line 1
    sput-object p1, Lcom/ffrt/proxyread/SchedHint;->app:Landroid/content/Context;

    .line 3
    return-void
.end method
