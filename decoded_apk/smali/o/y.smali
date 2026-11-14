.class public final Lo/y;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final e:Lo/y;

.field public static final f:Lo/y;

.field public static final g:Lo/y;

.field public static final h:Lo/y;

.field public static final i:Lo/y;

.field public static final j:Lo/y;

.field public static final k:Lo/y;

.field public static final l:Lo/y;

.field public static final m:Lo/y;


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:I

.field public final c:Ljava/lang/Class;

.field public final d:Lo/N;


# direct methods
.method static constructor <clinit>()V
    .locals 21

    .line 1
    new-instance v0, Lo/y;

    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, v1}, Lo/y;-><init>(I)V

    .line 7
    new-instance v0, Lo/y;

    .line 9
    const/4 v1, 0x2

    .line 10
    invoke-direct {v0, v1}, Lo/y;-><init>(I)V

    .line 13
    new-instance v0, Lo/y;

    .line 15
    const/4 v1, 0x4

    .line 16
    invoke-direct {v0, v1}, Lo/y;-><init>(I)V

    .line 19
    new-instance v0, Lo/y;

    .line 21
    const/16 v1, 0x8

    .line 23
    invoke-direct {v0, v1}, Lo/y;-><init>(I)V

    .line 26
    new-instance v0, Lo/y;

    .line 28
    const/16 v1, 0x10

    .line 30
    invoke-direct {v0, v1}, Lo/y;-><init>(I)V

    .line 33
    sput-object v0, Lo/y;->e:Lo/y;

    .line 35
    new-instance v0, Lo/y;

    .line 37
    const/16 v1, 0x20

    .line 39
    invoke-direct {v0, v1}, Lo/y;-><init>(I)V

    .line 42
    new-instance v0, Lo/y;

    .line 44
    const/16 v2, 0x40

    .line 46
    invoke-direct {v0, v2}, Lo/y;-><init>(I)V

    .line 49
    new-instance v0, Lo/y;

    .line 51
    const/16 v2, 0x80

    .line 53
    invoke-direct {v0, v2}, Lo/y;-><init>(I)V

    .line 56
    new-instance v0, Lo/y;

    .line 58
    const/16 v2, 0x100

    .line 60
    const-class v3, Lo/G;

    .line 62
    invoke-direct {v0, v3, v2}, Lo/y;-><init>(Ljava/lang/Class;I)V

    .line 65
    new-instance v0, Lo/y;

    .line 67
    const/16 v2, 0x200

    .line 69
    invoke-direct {v0, v3, v2}, Lo/y;-><init>(Ljava/lang/Class;I)V

    .line 72
    new-instance v0, Lo/y;

    .line 74
    const/16 v2, 0x400

    .line 76
    const-class v3, Lo/H;

    .line 78
    invoke-direct {v0, v3, v2}, Lo/y;-><init>(Ljava/lang/Class;I)V

    .line 81
    new-instance v0, Lo/y;

    .line 83
    const/16 v2, 0x800

    .line 85
    invoke-direct {v0, v3, v2}, Lo/y;-><init>(Ljava/lang/Class;I)V

    .line 88
    new-instance v0, Lo/y;

    .line 90
    const/16 v2, 0x1000

    .line 92
    invoke-direct {v0, v2}, Lo/y;-><init>(I)V

    .line 95
    sput-object v0, Lo/y;->f:Lo/y;

    .line 97
    new-instance v0, Lo/y;

    .line 99
    const/16 v2, 0x2000

    .line 101
    invoke-direct {v0, v2}, Lo/y;-><init>(I)V

    .line 104
    sput-object v0, Lo/y;->g:Lo/y;

    .line 106
    new-instance v0, Lo/y;

    .line 108
    const/16 v2, 0x4000

    .line 110
    invoke-direct {v0, v2}, Lo/y;-><init>(I)V

    .line 113
    new-instance v0, Lo/y;

    .line 115
    const v2, 0x8000

    .line 118
    invoke-direct {v0, v2}, Lo/y;-><init>(I)V

    .line 121
    new-instance v0, Lo/y;

    .line 123
    const/high16 v2, 0x10000

    .line 125
    invoke-direct {v0, v2}, Lo/y;-><init>(I)V

    .line 128
    new-instance v0, Lo/y;

    .line 130
    const/high16 v2, 0x20000

    .line 132
    const-class v3, Lo/L;

    .line 134
    invoke-direct {v0, v3, v2}, Lo/y;-><init>(Ljava/lang/Class;I)V

    .line 137
    new-instance v0, Lo/y;

    .line 139
    const/high16 v2, 0x40000

    .line 141
    invoke-direct {v0, v2}, Lo/y;-><init>(I)V

    .line 144
    sput-object v0, Lo/y;->h:Lo/y;

    .line 146
    new-instance v0, Lo/y;

    .line 148
    const/high16 v2, 0x80000

    .line 150
    invoke-direct {v0, v2}, Lo/y;-><init>(I)V

    .line 153
    sput-object v0, Lo/y;->i:Lo/y;

    .line 155
    new-instance v0, Lo/y;

    .line 157
    const/high16 v2, 0x100000

    .line 159
    invoke-direct {v0, v2}, Lo/y;-><init>(I)V

    .line 162
    sput-object v0, Lo/y;->j:Lo/y;

    .line 164
    new-instance v0, Lo/y;

    .line 166
    const/high16 v2, 0x200000

    .line 168
    const-class v3, Lo/M;

    .line 170
    invoke-direct {v0, v3, v2}, Lo/y;-><init>(Ljava/lang/Class;I)V

    .line 173
    new-instance v4, Lo/y;

    .line 175
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 177
    sget-object v5, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SHOW_ON_SCREEN:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 179
    const v6, 0x1020036

    .line 182
    const/4 v7, 0x0

    .line 183
    const/4 v8, 0x0

    .line 184
    const/4 v9, 0x0

    .line 185
    invoke-direct/range {v4 .. v9}, Lo/y;-><init>(Ljava/lang/Object;ILjava/lang/String;Lo/N;Ljava/lang/Class;)V

    .line 188
    new-instance v10, Lo/y;

    .line 190
    sget-object v11, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_TO_POSITION:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 192
    const v12, 0x1020037

    .line 195
    const/4 v13, 0x0

    .line 196
    const/4 v14, 0x0

    .line 197
    const-class v15, Lo/J;

    .line 199
    invoke-direct/range {v10 .. v15}, Lo/y;-><init>(Ljava/lang/Object;ILjava/lang/String;Lo/N;Ljava/lang/Class;)V

    .line 202
    new-instance v8, Lo/y;

    .line 204
    sget-object v3, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_UP:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 206
    const v4, 0x1020038

    .line 209
    const/4 v5, 0x0

    .line 210
    const/4 v6, 0x0

    .line 211
    const/4 v7, 0x0

    .line 212
    move-object v2, v8

    .line 213
    invoke-direct/range {v2 .. v7}, Lo/y;-><init>(Ljava/lang/Object;ILjava/lang/String;Lo/N;Ljava/lang/Class;)V

    .line 216
    sput-object v8, Lo/y;->k:Lo/y;

    .line 218
    new-instance v9, Lo/y;

    .line 220
    sget-object v10, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_LEFT:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 222
    const v11, 0x1020039

    .line 225
    const/4 v12, 0x0

    .line 226
    const/4 v13, 0x0

    .line 227
    const/4 v14, 0x0

    .line 228
    invoke-direct/range {v9 .. v14}, Lo/y;-><init>(Ljava/lang/Object;ILjava/lang/String;Lo/N;Ljava/lang/Class;)V

    .line 231
    new-instance v8, Lo/y;

    .line 233
    sget-object v3, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_DOWN:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 235
    const v4, 0x102003a

    .line 238
    const/4 v5, 0x0

    .line 239
    const/4 v6, 0x0

    .line 240
    const/4 v7, 0x0

    .line 241
    move-object v2, v8

    .line 242
    invoke-direct/range {v2 .. v7}, Lo/y;-><init>(Ljava/lang/Object;ILjava/lang/String;Lo/N;Ljava/lang/Class;)V

    .line 245
    sput-object v8, Lo/y;->l:Lo/y;

    .line 247
    new-instance v9, Lo/y;

    .line 249
    sget-object v10, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_RIGHT:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 251
    const v11, 0x102003b

    .line 254
    const/4 v12, 0x0

    .line 255
    const/4 v13, 0x0

    .line 256
    const/4 v14, 0x0

    .line 257
    invoke-direct/range {v9 .. v14}, Lo/y;-><init>(Ljava/lang/Object;ILjava/lang/String;Lo/N;Ljava/lang/Class;)V

    .line 260
    new-instance v2, Lo/y;

    .line 262
    const/4 v8, 0x0

    .line 263
    const/16 v9, 0x1d

    .line 265
    if-lt v0, v9, :cond_0

    .line 267
    invoke-static {}, Lo/u;->h()Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 270
    move-result-object v3

    .line 271
    goto :goto_0

    .line 272
    :cond_0
    move-object v3, v8

    .line 273
    :goto_0
    const v4, 0x1020046

    .line 276
    const/4 v5, 0x0

    .line 277
    const/4 v6, 0x0

    .line 278
    const/4 v7, 0x0

    .line 279
    invoke-direct/range {v2 .. v7}, Lo/y;-><init>(Ljava/lang/Object;ILjava/lang/String;Lo/N;Ljava/lang/Class;)V

    .line 282
    new-instance v10, Lo/y;

    .line 284
    if-lt v0, v9, :cond_1

    .line 286
    invoke-static {}, Lo/u;->u()Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 289
    move-result-object v2

    .line 290
    move-object v11, v2

    .line 291
    goto :goto_1

    .line 292
    :cond_1
    move-object v11, v8

    .line 293
    :goto_1
    const v12, 0x1020047

    .line 296
    const/4 v13, 0x0

    .line 297
    const/4 v14, 0x0

    .line 298
    const/4 v15, 0x0

    .line 299
    invoke-direct/range {v10 .. v15}, Lo/y;-><init>(Ljava/lang/Object;ILjava/lang/String;Lo/N;Ljava/lang/Class;)V

    .line 302
    new-instance v2, Lo/y;

    .line 304
    if-lt v0, v9, :cond_2

    .line 306
    invoke-static {}, Lo/u;->y()Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 309
    move-result-object v3

    .line 310
    goto :goto_2

    .line 311
    :cond_2
    move-object v3, v8

    .line 312
    :goto_2
    const v4, 0x1020048

    .line 315
    const/4 v5, 0x0

    .line 316
    const/4 v6, 0x0

    .line 317
    const/4 v7, 0x0

    .line 318
    invoke-direct/range {v2 .. v7}, Lo/y;-><init>(Ljava/lang/Object;ILjava/lang/String;Lo/N;Ljava/lang/Class;)V

    .line 321
    new-instance v10, Lo/y;

    .line 323
    if-lt v0, v9, :cond_3

    .line 325
    invoke-static {}, Lo/u;->C()Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 328
    move-result-object v2

    .line 329
    move-object v11, v2

    .line 330
    goto :goto_3

    .line 331
    :cond_3
    move-object v11, v8

    .line 332
    :goto_3
    const v12, 0x1020049

    .line 335
    const/4 v13, 0x0

    .line 336
    const/4 v14, 0x0

    .line 337
    const/4 v15, 0x0

    .line 338
    invoke-direct/range {v10 .. v15}, Lo/y;-><init>(Ljava/lang/Object;ILjava/lang/String;Lo/N;Ljava/lang/Class;)V

    .line 341
    new-instance v2, Lo/y;

    .line 343
    sget-object v3, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_CONTEXT_CLICK:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 345
    const v4, 0x102003c

    .line 348
    const/4 v5, 0x0

    .line 349
    const/4 v6, 0x0

    .line 350
    const/4 v7, 0x0

    .line 351
    invoke-direct/range {v2 .. v7}, Lo/y;-><init>(Ljava/lang/Object;ILjava/lang/String;Lo/N;Ljava/lang/Class;)V

    .line 354
    new-instance v2, Lo/y;

    .line 356
    sget-object v10, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SET_PROGRESS:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 358
    const v11, 0x102003d

    .line 361
    const/4 v12, 0x0

    .line 362
    const/4 v13, 0x0

    .line 363
    const-class v14, Lo/K;

    .line 365
    move-object v9, v2

    .line 366
    invoke-direct/range {v9 .. v14}, Lo/y;-><init>(Ljava/lang/Object;ILjava/lang/String;Lo/N;Ljava/lang/Class;)V

    .line 369
    sput-object v2, Lo/y;->m:Lo/y;

    .line 371
    new-instance v15, Lo/y;

    .line 373
    const/16 v2, 0x1a

    .line 375
    if-lt v0, v2, :cond_4

    .line 377
    invoke-static {}, Lo/b;->d()Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 380
    move-result-object v2

    .line 381
    move-object/from16 v16, v2

    .line 383
    goto :goto_4

    .line 384
    :cond_4
    move-object/from16 v16, v8

    .line 386
    :goto_4
    const v17, 0x1020042

    .line 389
    const/16 v18, 0x0

    .line 391
    const/16 v19, 0x0

    .line 393
    const-class v20, Lo/I;

    .line 395
    invoke-direct/range {v15 .. v20}, Lo/y;-><init>(Ljava/lang/Object;ILjava/lang/String;Lo/N;Ljava/lang/Class;)V

    .line 398
    new-instance v2, Lo/y;

    .line 400
    const/16 v9, 0x1c

    .line 402
    if-lt v0, v9, :cond_5

    .line 404
    invoke-static {}, Lo/t;->n()Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 407
    move-result-object v3

    .line 408
    goto :goto_5

    .line 409
    :cond_5
    move-object v3, v8

    .line 410
    :goto_5
    const v4, 0x1020044

    .line 413
    const/4 v5, 0x0

    .line 414
    const/4 v6, 0x0

    .line 415
    const/4 v7, 0x0

    .line 416
    invoke-direct/range {v2 .. v7}, Lo/y;-><init>(Ljava/lang/Object;ILjava/lang/String;Lo/N;Ljava/lang/Class;)V

    .line 419
    new-instance v10, Lo/y;

    .line 421
    if-lt v0, v9, :cond_6

    .line 423
    invoke-static {}, Lo/t;->x()Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 426
    move-result-object v2

    .line 427
    move-object v11, v2

    .line 428
    goto :goto_6

    .line 429
    :cond_6
    move-object v11, v8

    .line 430
    :goto_6
    const v12, 0x1020045

    .line 433
    const/4 v13, 0x0

    .line 434
    const/4 v14, 0x0

    .line 435
    const/4 v15, 0x0

    .line 436
    invoke-direct/range {v10 .. v15}, Lo/y;-><init>(Ljava/lang/Object;ILjava/lang/String;Lo/N;Ljava/lang/Class;)V

    .line 439
    new-instance v2, Lo/y;

    .line 441
    const/16 v9, 0x1e

    .line 443
    if-lt v0, v9, :cond_7

    .line 445
    invoke-static {}, Lo/v;->l()Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 448
    move-result-object v3

    .line 449
    goto :goto_7

    .line 450
    :cond_7
    move-object v3, v8

    .line 451
    :goto_7
    const v4, 0x102004a

    .line 454
    const/4 v5, 0x0

    .line 455
    const/4 v6, 0x0

    .line 456
    const/4 v7, 0x0

    .line 457
    invoke-direct/range {v2 .. v7}, Lo/y;-><init>(Ljava/lang/Object;ILjava/lang/String;Lo/N;Ljava/lang/Class;)V

    .line 460
    new-instance v10, Lo/y;

    .line 462
    if-lt v0, v9, :cond_8

    .line 464
    invoke-static {}, Lo/v;->v()Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 467
    move-result-object v2

    .line 468
    move-object v11, v2

    .line 469
    goto :goto_8

    .line 470
    :cond_8
    move-object v11, v8

    .line 471
    :goto_8
    const v12, 0x1020054

    .line 474
    const/4 v13, 0x0

    .line 475
    const/4 v14, 0x0

    .line 476
    const/4 v15, 0x0

    .line 477
    invoke-direct/range {v10 .. v15}, Lo/y;-><init>(Ljava/lang/Object;ILjava/lang/String;Lo/N;Ljava/lang/Class;)V

    .line 480
    new-instance v2, Lo/y;

    .line 482
    if-lt v0, v1, :cond_9

    .line 484
    invoke-static {}, Lo/w;->a()Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 487
    move-result-object v3

    .line 488
    goto :goto_9

    .line 489
    :cond_9
    move-object v3, v8

    .line 490
    :goto_9
    const v4, 0x1020055

    .line 493
    const/4 v5, 0x0

    .line 494
    const/4 v6, 0x0

    .line 495
    const/4 v7, 0x0

    .line 496
    invoke-direct/range {v2 .. v7}, Lo/y;-><init>(Ljava/lang/Object;ILjava/lang/String;Lo/N;Ljava/lang/Class;)V

    .line 499
    new-instance v9, Lo/y;

    .line 501
    if-lt v0, v1, :cond_a

    .line 503
    invoke-static {}, Lo/w;->b()Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 506
    move-result-object v2

    .line 507
    move-object v10, v2

    .line 508
    goto :goto_a

    .line 509
    :cond_a
    move-object v10, v8

    .line 510
    :goto_a
    const v11, 0x1020056

    .line 513
    const/4 v12, 0x0

    .line 514
    const/4 v13, 0x0

    .line 515
    const/4 v14, 0x0

    .line 516
    invoke-direct/range {v9 .. v14}, Lo/y;-><init>(Ljava/lang/Object;ILjava/lang/String;Lo/N;Ljava/lang/Class;)V

    .line 519
    new-instance v2, Lo/y;

    .line 521
    if-lt v0, v1, :cond_b

    .line 523
    invoke-static {}, Lo/w;->c()Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 526
    move-result-object v1

    .line 527
    move-object v3, v1

    .line 528
    goto :goto_b

    .line 529
    :cond_b
    move-object v3, v8

    .line 530
    :goto_b
    const v4, 0x1020057

    .line 533
    const/4 v5, 0x0

    .line 534
    const/4 v6, 0x0

    .line 535
    const/4 v7, 0x0

    .line 536
    invoke-direct/range {v2 .. v7}, Lo/y;-><init>(Ljava/lang/Object;ILjava/lang/String;Lo/N;Ljava/lang/Class;)V

    .line 539
    new-instance v9, Lo/y;

    .line 541
    const/16 v1, 0x21

    .line 543
    if-lt v0, v1, :cond_c

    .line 545
    invoke-static {}, Lo/x;->a()Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 548
    move-result-object v1

    .line 549
    move-object v10, v1

    .line 550
    goto :goto_c

    .line 551
    :cond_c
    move-object v10, v8

    .line 552
    :goto_c
    const v11, 0x1020058

    .line 555
    const/4 v12, 0x0

    .line 556
    const/4 v13, 0x0

    .line 557
    const/4 v14, 0x0

    .line 558
    invoke-direct/range {v9 .. v14}, Lo/y;-><init>(Ljava/lang/Object;ILjava/lang/String;Lo/N;Ljava/lang/Class;)V

    .line 561
    new-instance v1, Lo/y;

    .line 563
    const/16 v2, 0x22

    .line 565
    if-lt v0, v2, :cond_d

    .line 567
    invoke-static {}, Lo/B;->a()Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 570
    move-result-object v8

    .line 571
    :cond_d
    move-object v2, v8

    .line 572
    const v3, 0x102005e

    .line 575
    const/4 v4, 0x0

    .line 576
    const/4 v5, 0x0

    .line 577
    const/4 v6, 0x0

    .line 578
    invoke-direct/range {v1 .. v6}, Lo/y;-><init>(Ljava/lang/Object;ILjava/lang/String;Lo/N;Ljava/lang/Class;)V

    .line 581
    return-void
.end method

.method public constructor <init>(I)V
    .locals 6

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move v2, p1

    .line 1
    invoke-direct/range {v0 .. v5}, Lo/y;-><init>(Ljava/lang/Object;ILjava/lang/String;Lo/N;Ljava/lang/Class;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;I)V
    .locals 6

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move v2, p2

    move-object v5, p1

    .line 2
    invoke-direct/range {v0 .. v5}, Lo/y;-><init>(Ljava/lang/Object;ILjava/lang/String;Lo/N;Ljava/lang/Class;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;ILjava/lang/String;Lo/N;Ljava/lang/Class;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput p2, p0, Lo/y;->b:I

    .line 5
    iput-object p4, p0, Lo/y;->d:Lo/N;

    if-nez p1, :cond_0

    .line 6
    new-instance p1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-direct {p1, p2, p3}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    iput-object p1, p0, Lo/y;->a:Ljava/lang/Object;

    goto :goto_0

    .line 7
    :cond_0
    iput-object p1, p0, Lo/y;->a:Ljava/lang/Object;

    .line 8
    :goto_0
    iput-object p5, p0, Lo/y;->c:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 1
    iget-object v0, p0, Lo/y;->a:Ljava/lang/Object;

    .line 3
    check-cast v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 5
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->getId()I

    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lo/y;

    .line 7
    if-nez v1, :cond_1

    .line 9
    return v0

    .line 10
    :cond_1
    check-cast p1, Lo/y;

    .line 12
    iget-object p1, p1, Lo/y;->a:Ljava/lang/Object;

    .line 14
    iget-object v1, p0, Lo/y;->a:Ljava/lang/Object;

    .line 16
    if-nez v1, :cond_2

    .line 18
    if-eqz p1, :cond_3

    .line 20
    return v0

    .line 21
    :cond_2
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 24
    move-result p1

    .line 25
    if-nez p1, :cond_3

    .line 27
    return v0

    .line 28
    :cond_3
    const/4 p1, 0x1

    .line 29
    return p1
.end method

.method public final hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lo/y;->a:Ljava/lang/Object;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 8
    move-result v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string v1, "AccessibilityActionCompat: "

    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    iget v1, p0, Lo/y;->b:I

    .line 10
    invoke-static {v1}, Lo/D;->d(I)Ljava/lang/String;

    .line 13
    move-result-object v1

    .line 14
    const-string v2, "ACTION_UNKNOWN"

    .line 16
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 19
    move-result v2

    .line 20
    if-eqz v2, :cond_0

    .line 22
    iget-object v2, p0, Lo/y;->a:Ljava/lang/Object;

    .line 24
    move-object v3, v2

    .line 25
    check-cast v3, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 27
    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->getLabel()Ljava/lang/CharSequence;

    .line 30
    move-result-object v3

    .line 31
    if-eqz v3, :cond_0

    .line 33
    check-cast v2, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 35
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->getLabel()Ljava/lang/CharSequence;

    .line 38
    move-result-object v1

    .line 39
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 42
    move-result-object v1

    .line 43
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    move-result-object v0

    .line 50
    return-object v0
.end method
