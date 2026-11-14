.class public final Lo/xg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;
.implements Landroid/view/View$OnAttachStateChangeListener;


# instance fields
.field public a:Lo/ug;

.field public b:Landroid/widget/FrameLayout;


# virtual methods
.method public final onPreDraw()Z
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 3
    iget-object v1, v0, Lo/xg;->b:Landroid/widget/FrameLayout;

    .line 5
    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 8
    move-result-object v2

    .line 9
    invoke-virtual {v2, v0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 12
    invoke-virtual {v1, v0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 15
    sget-object v1, Lo/yg;->c:Ljava/util/ArrayList;

    .line 17
    iget-object v3, v0, Lo/xg;->b:Landroid/widget/FrameLayout;

    .line 19
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 22
    move-result v1

    .line 23
    const/4 v8, 0x1

    .line 24
    if-nez v1, :cond_0

    .line 26
    return v8

    .line 27
    :cond_0
    invoke-static {}, Lo/yg;->b()Lo/E2;

    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {v1, v3}, Lo/Qe;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    move-result-object v2

    .line 35
    check-cast v2, Ljava/util/ArrayList;

    .line 37
    if-nez v2, :cond_2

    .line 39
    new-instance v2, Ljava/util/ArrayList;

    .line 41
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 44
    invoke-virtual {v1, v3, v2}, Lo/Qe;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    :cond_1
    const/4 v5, 0x0

    .line 48
    goto :goto_0

    .line 49
    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 52
    move-result v5

    .line 53
    if-lez v5, :cond_1

    .line 55
    new-instance v5, Ljava/util/ArrayList;

    .line 57
    invoke-direct {v5, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 60
    :goto_0
    iget-object v9, v0, Lo/xg;->a:Lo/ug;

    .line 62
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    new-instance v2, Lo/wg;

    .line 67
    invoke-direct {v2, v0, v1}, Lo/wg;-><init>(Lo/xg;Lo/E2;)V

    .line 70
    invoke-virtual {v9, v2}, Lo/ug;->a(Lo/tg;)V

    .line 73
    const/4 v1, 0x0

    .line 74
    invoke-virtual {v9, v3, v1}, Lo/ug;->h(Landroid/widget/FrameLayout;Z)V

    .line 77
    if-eqz v5, :cond_3

    .line 79
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 82
    move-result-object v2

    .line 83
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 86
    move-result v5

    .line 87
    if-eqz v5, :cond_3

    .line 89
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 92
    move-result-object v5

    .line 93
    check-cast v5, Lo/ug;

    .line 95
    invoke-virtual {v5, v3}, Lo/ug;->y(Landroid/widget/FrameLayout;)V

    .line 98
    goto :goto_1

    .line 99
    :cond_3
    new-instance v2, Ljava/util/ArrayList;

    .line 101
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 104
    iput-object v2, v9, Lo/ug;->k:Ljava/util/ArrayList;

    .line 106
    new-instance v2, Ljava/util/ArrayList;

    .line 108
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 111
    iput-object v2, v9, Lo/ug;->l:Ljava/util/ArrayList;

    .line 113
    iget-object v2, v9, Lo/ug;->g:Lo/H5;

    .line 115
    iget-object v5, v9, Lo/ug;->h:Lo/H5;

    .line 117
    new-instance v6, Lo/E2;

    .line 119
    iget-object v7, v2, Lo/H5;->a:Ljava/lang/Object;

    .line 121
    check-cast v7, Lo/E2;

    .line 123
    invoke-direct {v6, v7}, Lo/E2;-><init>(Lo/Qe;)V

    .line 126
    new-instance v7, Lo/E2;

    .line 128
    iget-object v10, v5, Lo/H5;->a:Ljava/lang/Object;

    .line 130
    check-cast v10, Lo/E2;

    .line 132
    invoke-direct {v7, v10}, Lo/E2;-><init>(Lo/Qe;)V

    .line 135
    move v10, v1

    .line 136
    :goto_2
    iget-object v11, v9, Lo/ug;->j:[I

    .line 138
    array-length v12, v11

    .line 139
    if-ge v10, v12, :cond_f

    .line 141
    aget v11, v11, v10

    .line 143
    if-eq v11, v8, :cond_c

    .line 145
    const/4 v12, 0x2

    .line 146
    if-eq v11, v12, :cond_a

    .line 148
    const/4 v12, 0x3

    .line 149
    if-eq v11, v12, :cond_8

    .line 151
    const/4 v12, 0x4

    .line 152
    if-eq v11, v12, :cond_5

    .line 154
    :cond_4
    move-object v1, v2

    .line 155
    goto/16 :goto_8

    .line 157
    :cond_5
    iget-object v11, v2, Lo/H5;->c:Ljava/lang/Object;

    .line 159
    check-cast v11, Lo/za;

    .line 161
    invoke-virtual {v11}, Lo/za;->e()I

    .line 164
    move-result v12

    .line 165
    move v13, v1

    .line 166
    :goto_3
    if-ge v13, v12, :cond_4

    .line 168
    invoke-virtual {v11, v13}, Lo/za;->f(I)Ljava/lang/Object;

    .line 171
    move-result-object v14

    .line 172
    check-cast v14, Landroid/view/View;

    .line 174
    if-eqz v14, :cond_6

    .line 176
    invoke-virtual {v9, v14}, Lo/ug;->t(Landroid/view/View;)Z

    .line 179
    move-result v15

    .line 180
    if-eqz v15, :cond_6

    .line 182
    move-object/from16 v16, v2

    .line 184
    invoke-virtual {v11, v13}, Lo/za;->c(I)J

    .line 187
    move-result-wide v1

    .line 188
    iget-object v15, v5, Lo/H5;->c:Ljava/lang/Object;

    .line 190
    check-cast v15, Lo/za;

    .line 192
    invoke-virtual {v15, v1, v2}, Lo/za;->b(J)Ljava/lang/Object;

    .line 195
    move-result-object v1

    .line 196
    check-cast v1, Landroid/view/View;

    .line 198
    if-eqz v1, :cond_7

    .line 200
    invoke-virtual {v9, v1}, Lo/ug;->t(Landroid/view/View;)Z

    .line 203
    move-result v2

    .line 204
    if-eqz v2, :cond_7

    .line 206
    invoke-virtual {v6, v14}, Lo/Qe;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    move-result-object v2

    .line 210
    check-cast v2, Lo/Cg;

    .line 212
    invoke-virtual {v7, v1}, Lo/Qe;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    move-result-object v15

    .line 216
    check-cast v15, Lo/Cg;

    .line 218
    if-eqz v2, :cond_7

    .line 220
    if-eqz v15, :cond_7

    .line 222
    iget-object v4, v9, Lo/ug;->k:Ljava/util/ArrayList;

    .line 224
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 227
    iget-object v2, v9, Lo/ug;->l:Ljava/util/ArrayList;

    .line 229
    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 232
    invoke-virtual {v6, v14}, Lo/Qe;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    invoke-virtual {v7, v1}, Lo/Qe;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    goto :goto_4

    .line 239
    :cond_6
    move-object/from16 v16, v2

    .line 241
    :cond_7
    :goto_4
    add-int/lit8 v13, v13, 0x1

    .line 243
    move-object/from16 v2, v16

    .line 245
    const/4 v1, 0x0

    .line 246
    goto :goto_3

    .line 247
    :cond_8
    move-object v1, v2

    .line 248
    iget-object v2, v1, Lo/H5;->b:Ljava/lang/Object;

    .line 250
    check-cast v2, Landroid/util/SparseArray;

    .line 252
    iget-object v4, v5, Lo/H5;->b:Ljava/lang/Object;

    .line 254
    check-cast v4, Landroid/util/SparseArray;

    .line 256
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    .line 259
    move-result v11

    .line 260
    const/4 v12, 0x0

    .line 261
    :goto_5
    if-ge v12, v11, :cond_e

    .line 263
    invoke-virtual {v2, v12}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 266
    move-result-object v13

    .line 267
    check-cast v13, Landroid/view/View;

    .line 269
    if-eqz v13, :cond_9

    .line 271
    invoke-virtual {v9, v13}, Lo/ug;->t(Landroid/view/View;)Z

    .line 274
    move-result v14

    .line 275
    if-eqz v14, :cond_9

    .line 277
    invoke-virtual {v2, v12}, Landroid/util/SparseArray;->keyAt(I)I

    .line 280
    move-result v14

    .line 281
    invoke-virtual {v4, v14}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 284
    move-result-object v14

    .line 285
    check-cast v14, Landroid/view/View;

    .line 287
    if-eqz v14, :cond_9

    .line 289
    invoke-virtual {v9, v14}, Lo/ug;->t(Landroid/view/View;)Z

    .line 292
    move-result v15

    .line 293
    if-eqz v15, :cond_9

    .line 295
    invoke-virtual {v6, v13}, Lo/Qe;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    move-result-object v15

    .line 299
    check-cast v15, Lo/Cg;

    .line 301
    invoke-virtual {v7, v14}, Lo/Qe;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    move-result-object v16

    .line 305
    move-object/from16 v8, v16

    .line 307
    check-cast v8, Lo/Cg;

    .line 309
    if-eqz v15, :cond_9

    .line 311
    if-eqz v8, :cond_9

    .line 313
    iget-object v0, v9, Lo/ug;->k:Ljava/util/ArrayList;

    .line 315
    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 318
    iget-object v0, v9, Lo/ug;->l:Ljava/util/ArrayList;

    .line 320
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 323
    invoke-virtual {v6, v13}, Lo/Qe;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    invoke-virtual {v7, v14}, Lo/Qe;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    :cond_9
    add-int/lit8 v12, v12, 0x1

    .line 331
    move-object/from16 v0, p0

    .line 333
    const/4 v8, 0x1

    .line 334
    goto :goto_5

    .line 335
    :cond_a
    move-object v1, v2

    .line 336
    iget-object v0, v1, Lo/H5;->d:Ljava/lang/Object;

    .line 338
    check-cast v0, Lo/E2;

    .line 340
    iget v2, v0, Lo/Qe;->c:I

    .line 342
    const/4 v4, 0x0

    .line 343
    :goto_6
    if-ge v4, v2, :cond_e

    .line 345
    invoke-virtual {v0, v4}, Lo/Qe;->i(I)Ljava/lang/Object;

    .line 348
    move-result-object v8

    .line 349
    check-cast v8, Landroid/view/View;

    .line 351
    if-eqz v8, :cond_b

    .line 353
    invoke-virtual {v9, v8}, Lo/ug;->t(Landroid/view/View;)Z

    .line 356
    move-result v11

    .line 357
    if-eqz v11, :cond_b

    .line 359
    invoke-virtual {v0, v4}, Lo/Qe;->f(I)Ljava/lang/Object;

    .line 362
    move-result-object v11

    .line 363
    iget-object v12, v5, Lo/H5;->d:Ljava/lang/Object;

    .line 365
    check-cast v12, Lo/E2;

    .line 367
    invoke-virtual {v12, v11}, Lo/Qe;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    move-result-object v11

    .line 371
    check-cast v11, Landroid/view/View;

    .line 373
    if-eqz v11, :cond_b

    .line 375
    invoke-virtual {v9, v11}, Lo/ug;->t(Landroid/view/View;)Z

    .line 378
    move-result v12

    .line 379
    if-eqz v12, :cond_b

    .line 381
    invoke-virtual {v6, v8}, Lo/Qe;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    move-result-object v12

    .line 385
    check-cast v12, Lo/Cg;

    .line 387
    invoke-virtual {v7, v11}, Lo/Qe;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 390
    move-result-object v13

    .line 391
    check-cast v13, Lo/Cg;

    .line 393
    if-eqz v12, :cond_b

    .line 395
    if-eqz v13, :cond_b

    .line 397
    iget-object v14, v9, Lo/ug;->k:Ljava/util/ArrayList;

    .line 399
    invoke-virtual {v14, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 402
    iget-object v12, v9, Lo/ug;->l:Ljava/util/ArrayList;

    .line 404
    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 407
    invoke-virtual {v6, v8}, Lo/Qe;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 410
    invoke-virtual {v7, v11}, Lo/Qe;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 413
    :cond_b
    add-int/lit8 v4, v4, 0x1

    .line 415
    goto :goto_6

    .line 416
    :cond_c
    move-object v1, v2

    .line 417
    iget v0, v6, Lo/Qe;->c:I

    .line 419
    const/4 v2, 0x1

    .line 420
    sub-int/2addr v0, v2

    .line 421
    :goto_7
    if-ltz v0, :cond_e

    .line 423
    invoke-virtual {v6, v0}, Lo/Qe;->f(I)Ljava/lang/Object;

    .line 426
    move-result-object v2

    .line 427
    check-cast v2, Landroid/view/View;

    .line 429
    if-eqz v2, :cond_d

    .line 431
    invoke-virtual {v9, v2}, Lo/ug;->t(Landroid/view/View;)Z

    .line 434
    move-result v4

    .line 435
    if-eqz v4, :cond_d

    .line 437
    invoke-virtual {v7, v2}, Lo/Qe;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 440
    move-result-object v2

    .line 441
    check-cast v2, Lo/Cg;

    .line 443
    if-eqz v2, :cond_d

    .line 445
    iget-object v4, v2, Lo/Cg;->b:Landroid/view/View;

    .line 447
    invoke-virtual {v9, v4}, Lo/ug;->t(Landroid/view/View;)Z

    .line 450
    move-result v4

    .line 451
    if-eqz v4, :cond_d

    .line 453
    invoke-virtual {v6, v0}, Lo/Qe;->g(I)Ljava/lang/Object;

    .line 456
    move-result-object v4

    .line 457
    check-cast v4, Lo/Cg;

    .line 459
    iget-object v8, v9, Lo/ug;->k:Ljava/util/ArrayList;

    .line 461
    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 464
    iget-object v4, v9, Lo/ug;->l:Ljava/util/ArrayList;

    .line 466
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 469
    :cond_d
    add-int/lit8 v0, v0, -0x1

    .line 471
    goto :goto_7

    .line 472
    :cond_e
    :goto_8
    add-int/lit8 v10, v10, 0x1

    .line 474
    move-object/from16 v0, p0

    .line 476
    move-object v2, v1

    .line 477
    const/4 v1, 0x0

    .line 478
    const/4 v8, 0x1

    .line 479
    goto/16 :goto_2

    .line 481
    :cond_f
    const/4 v0, 0x0

    .line 482
    :goto_9
    iget v1, v6, Lo/Qe;->c:I

    .line 484
    if-ge v0, v1, :cond_11

    .line 486
    invoke-virtual {v6, v0}, Lo/Qe;->i(I)Ljava/lang/Object;

    .line 489
    move-result-object v1

    .line 490
    check-cast v1, Lo/Cg;

    .line 492
    iget-object v2, v1, Lo/Cg;->b:Landroid/view/View;

    .line 494
    invoke-virtual {v9, v2}, Lo/ug;->t(Landroid/view/View;)Z

    .line 497
    move-result v2

    .line 498
    if-eqz v2, :cond_10

    .line 500
    iget-object v2, v9, Lo/ug;->k:Ljava/util/ArrayList;

    .line 502
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 505
    iget-object v1, v9, Lo/ug;->l:Ljava/util/ArrayList;

    .line 507
    const/4 v2, 0x0

    .line 508
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 511
    :cond_10
    add-int/lit8 v0, v0, 0x1

    .line 513
    goto :goto_9

    .line 514
    :cond_11
    const/4 v1, 0x0

    .line 515
    :goto_a
    iget v0, v7, Lo/Qe;->c:I

    .line 517
    if-ge v1, v0, :cond_13

    .line 519
    invoke-virtual {v7, v1}, Lo/Qe;->i(I)Ljava/lang/Object;

    .line 522
    move-result-object v0

    .line 523
    check-cast v0, Lo/Cg;

    .line 525
    iget-object v2, v0, Lo/Cg;->b:Landroid/view/View;

    .line 527
    invoke-virtual {v9, v2}, Lo/ug;->t(Landroid/view/View;)Z

    .line 530
    move-result v2

    .line 531
    if-eqz v2, :cond_12

    .line 533
    iget-object v2, v9, Lo/ug;->l:Ljava/util/ArrayList;

    .line 535
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 538
    iget-object v0, v9, Lo/ug;->k:Ljava/util/ArrayList;

    .line 540
    const/4 v2, 0x0

    .line 541
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 544
    goto :goto_b

    .line 545
    :cond_12
    const/4 v2, 0x0

    .line 546
    :goto_b
    add-int/lit8 v1, v1, 0x1

    .line 548
    goto :goto_a

    .line 549
    :cond_13
    invoke-static {}, Lo/ug;->p()Lo/E2;

    .line 552
    move-result-object v0

    .line 553
    iget v1, v0, Lo/Qe;->c:I

    .line 555
    invoke-virtual {v3}, Landroid/view/View;->getWindowId()Landroid/view/WindowId;

    .line 558
    move-result-object v2

    .line 559
    const/4 v4, 0x1

    .line 560
    sub-int/2addr v1, v4

    .line 561
    :goto_c
    if-ltz v1, :cond_19

    .line 563
    invoke-virtual {v0, v1}, Lo/Qe;->f(I)Ljava/lang/Object;

    .line 566
    move-result-object v4

    .line 567
    check-cast v4, Landroid/animation/Animator;

    .line 569
    if-eqz v4, :cond_18

    .line 571
    invoke-virtual {v0, v4}, Lo/Qe;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 574
    move-result-object v5

    .line 575
    check-cast v5, Lo/sg;

    .line 577
    if-eqz v5, :cond_18

    .line 579
    iget-object v6, v5, Lo/sg;->a:Landroid/view/View;

    .line 581
    if-eqz v6, :cond_18

    .line 583
    iget-object v7, v5, Lo/sg;->d:Landroid/view/WindowId;

    .line 585
    invoke-virtual {v2, v7}, Landroid/view/WindowId;->equals(Ljava/lang/Object;)Z

    .line 588
    move-result v7

    .line 589
    if-eqz v7, :cond_18

    .line 591
    const/4 v7, 0x1

    .line 592
    invoke-virtual {v9, v6, v7}, Lo/ug;->r(Landroid/view/View;Z)Lo/Cg;

    .line 595
    move-result-object v8

    .line 596
    invoke-virtual {v9, v6, v7}, Lo/ug;->n(Landroid/view/View;Z)Lo/Cg;

    .line 599
    move-result-object v10

    .line 600
    if-nez v8, :cond_14

    .line 602
    if-nez v10, :cond_14

    .line 604
    iget-object v7, v9, Lo/ug;->h:Lo/H5;

    .line 606
    iget-object v7, v7, Lo/H5;->a:Ljava/lang/Object;

    .line 608
    check-cast v7, Lo/E2;

    .line 610
    invoke-virtual {v7, v6}, Lo/Qe;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 613
    move-result-object v6

    .line 614
    move-object v10, v6

    .line 615
    check-cast v10, Lo/Cg;

    .line 617
    :cond_14
    if-nez v8, :cond_15

    .line 619
    if-eqz v10, :cond_18

    .line 621
    :cond_15
    iget-object v6, v5, Lo/sg;->c:Lo/Cg;

    .line 623
    iget-object v5, v5, Lo/sg;->e:Lo/ug;

    .line 625
    invoke-virtual {v5, v6, v10}, Lo/ug;->s(Lo/Cg;Lo/Cg;)Z

    .line 628
    move-result v6

    .line 629
    if-eqz v6, :cond_18

    .line 631
    invoke-virtual {v5}, Lo/ug;->o()Lo/ug;

    .line 634
    move-result-object v5

    .line 635
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 638
    invoke-virtual {v4}, Landroid/animation/Animator;->isRunning()Z

    .line 641
    move-result v5

    .line 642
    if-nez v5, :cond_17

    .line 644
    invoke-virtual {v4}, Landroid/animation/Animator;->isStarted()Z

    .line 647
    move-result v5

    .line 648
    if-eqz v5, :cond_16

    .line 650
    goto :goto_d

    .line 651
    :cond_16
    invoke-virtual {v0, v4}, Lo/Qe;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 654
    goto :goto_e

    .line 655
    :cond_17
    :goto_d
    invoke-virtual {v4}, Landroid/animation/Animator;->cancel()V

    .line 658
    :cond_18
    :goto_e
    add-int/lit8 v1, v1, -0x1

    .line 660
    goto :goto_c

    .line 661
    :cond_19
    iget-object v4, v9, Lo/ug;->g:Lo/H5;

    .line 663
    iget-object v5, v9, Lo/ug;->h:Lo/H5;

    .line 665
    iget-object v6, v9, Lo/ug;->k:Ljava/util/ArrayList;

    .line 667
    iget-object v7, v9, Lo/ug;->l:Ljava/util/ArrayList;

    .line 669
    move-object v2, v9

    .line 670
    invoke-virtual/range {v2 .. v7}, Lo/ug;->l(Landroid/widget/FrameLayout;Lo/H5;Lo/H5;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 673
    invoke-virtual {v9}, Lo/ug;->z()V

    .line 676
    const/4 v0, 0x1

    .line 677
    return v0
.end method

.method public final onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lo/xg;->b:Landroid/widget/FrameLayout;

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 10
    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 13
    sget-object p1, Lo/yg;->c:Ljava/util/ArrayList;

    .line 15
    iget-object v0, p0, Lo/xg;->b:Landroid/widget/FrameLayout;

    .line 17
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 20
    invoke-static {}, Lo/yg;->b()Lo/E2;

    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {p1, v0}, Lo/Qe;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    move-result-object p1

    .line 28
    check-cast p1, Ljava/util/ArrayList;

    .line 30
    if-eqz p1, :cond_0

    .line 32
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 35
    move-result v1

    .line 36
    if-lez v1, :cond_0

    .line 38
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 41
    move-result-object p1

    .line 42
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 45
    move-result v1

    .line 46
    if-eqz v1, :cond_0

    .line 48
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 51
    move-result-object v1

    .line 52
    check-cast v1, Lo/ug;

    .line 54
    invoke-virtual {v1, v0}, Lo/ug;->y(Landroid/widget/FrameLayout;)V

    .line 57
    goto :goto_0

    .line 58
    :cond_0
    iget-object p1, p0, Lo/xg;->a:Lo/ug;

    .line 60
    const/4 v0, 0x1

    .line 61
    invoke-virtual {p1, v0}, Lo/ug;->i(Z)V

    .line 64
    return-void
.end method
