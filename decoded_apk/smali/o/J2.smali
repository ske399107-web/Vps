.class public final Lo/J2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lo/J2;->a:I

    iput-object p2, p0, Lo/J2;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 19

    .line 1
    move-object/from16 v1, p0

    .line 3
    const/4 v6, 0x0

    .line 4
    iget-object v7, v1, Lo/J2;->b:Ljava/lang/Object;

    .line 6
    iget v8, v1, Lo/J2;->a:I

    .line 8
    packed-switch v8, :pswitch_data_0

    .line 11
    check-cast v7, Lo/Fh;

    .line 13
    invoke-virtual {v7, v6}, Lo/Fh;->n(I)V

    .line 16
    return-void

    .line 17
    :pswitch_0
    check-cast v7, Landroidx/appcompat/widget/Toolbar;

    .line 19
    iget-object v0, v7, Landroidx/appcompat/widget/Toolbar;->a:Landroidx/appcompat/widget/ActionMenuView;

    .line 21
    if-eqz v0, :cond_0

    .line 23
    iget-object v0, v0, Landroidx/appcompat/widget/ActionMenuView;->t:Lo/d0;

    .line 25
    if-eqz v0, :cond_0

    .line 27
    invoke-virtual {v0}, Lo/d0;->l()Z

    .line 30
    :cond_0
    return-void

    .line 31
    :pswitch_1
    check-cast v7, Lcom/google/android/material/textfield/TextInputLayout;

    .line 33
    iget-object v0, v7, Lcom/google/android/material/textfield/TextInputLayout;->c:Lo/b7;

    .line 35
    iget-object v0, v0, Lo/b7;->g:Lcom/google/android/material/internal/CheckableImageButton;

    .line 37
    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    .line 40
    invoke-virtual {v0}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    .line 43
    return-void

    .line 44
    :pswitch_2
    check-cast v7, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    .line 46
    invoke-virtual {v7}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->B0()Z

    .line 49
    return-void

    .line 50
    :pswitch_3
    check-cast v7, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    .line 52
    iget-boolean v0, v7, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->f:Z

    .line 54
    if-eqz v0, :cond_1

    .line 56
    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 59
    move-result-object v0

    .line 60
    const-string v2, "input_method"

    .line 62
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 65
    move-result-object v0

    .line 66
    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 68
    invoke-virtual {v0, v7, v6}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 71
    iput-boolean v6, v7, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->f:Z

    .line 73
    :cond_1
    return-void

    .line 74
    :pswitch_4
    check-cast v7, Landroidx/recyclerview/widget/RecyclerView;

    .line 76
    iget-object v8, v7, Landroidx/recyclerview/widget/RecyclerView;->H:Lo/qd;

    .line 78
    if-eqz v8, :cond_e

    .line 80
    check-cast v8, Lo/B5;

    .line 82
    iget-object v9, v8, Lo/B5;->h:Ljava/util/ArrayList;

    .line 84
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    .line 87
    move-result v10

    .line 88
    iget-object v11, v8, Lo/B5;->j:Ljava/util/ArrayList;

    .line 90
    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    .line 93
    move-result v12

    .line 94
    iget-object v13, v8, Lo/B5;->k:Ljava/util/ArrayList;

    .line 96
    invoke-virtual {v13}, Ljava/util/ArrayList;->isEmpty()Z

    .line 99
    move-result v14

    .line 100
    iget-object v15, v8, Lo/B5;->i:Ljava/util/ArrayList;

    .line 102
    invoke-virtual {v15}, Ljava/util/ArrayList;->isEmpty()Z

    .line 105
    move-result v16

    .line 106
    if-eqz v10, :cond_2

    .line 108
    if-eqz v12, :cond_2

    .line 110
    if-eqz v16, :cond_2

    .line 112
    if-eqz v14, :cond_2

    .line 114
    goto/16 :goto_7

    .line 116
    :cond_2
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 119
    move-result-object v17

    .line 120
    :goto_0
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    .line 123
    move-result v18

    .line 124
    iget-wide v2, v8, Lo/qd;->d:J

    .line 126
    if-eqz v18, :cond_3

    .line 128
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 131
    move-result-object v18

    .line 132
    move-object/from16 v4, v18

    .line 134
    check-cast v4, Lo/Id;

    .line 136
    iget-object v5, v4, Lo/Id;->a:Landroid/view/View;

    .line 138
    invoke-virtual {v5}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 141
    move-result-object v6

    .line 142
    iget-object v0, v8, Lo/B5;->q:Ljava/util/ArrayList;

    .line 144
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    invoke-virtual {v6, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 150
    move-result-object v0

    .line 151
    const/4 v2, 0x0

    .line 152
    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 155
    move-result-object v0

    .line 156
    new-instance v2, Lo/w5;

    .line 158
    invoke-direct {v2, v8, v4, v6, v5}, Lo/w5;-><init>(Lo/B5;Lo/Id;Landroid/view/ViewPropertyAnimator;Landroid/view/View;)V

    .line 161
    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 164
    move-result-object v0

    .line 165
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 168
    const/4 v6, 0x0

    .line 169
    goto :goto_0

    .line 170
    :cond_3
    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 173
    if-nez v12, :cond_5

    .line 175
    new-instance v0, Ljava/util/ArrayList;

    .line 177
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 180
    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 183
    iget-object v4, v8, Lo/B5;->m:Ljava/util/ArrayList;

    .line 185
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 188
    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 191
    new-instance v4, Lo/v5;

    .line 193
    const/4 v5, 0x0

    .line 194
    invoke-direct {v4, v8, v0, v5}, Lo/v5;-><init>(Lo/B5;Ljava/util/ArrayList;I)V

    .line 197
    if-nez v10, :cond_4

    .line 199
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 202
    move-result-object v0

    .line 203
    check-cast v0, Lo/A5;

    .line 205
    iget-object v0, v0, Lo/A5;->a:Lo/Id;

    .line 207
    iget-object v0, v0, Lo/Id;->a:Landroid/view/View;

    .line 209
    sget-object v5, Lo/Dh;->a:Ljava/util/WeakHashMap;

    .line 211
    invoke-virtual {v0, v4, v2, v3}, Landroid/view/View;->postOnAnimationDelayed(Ljava/lang/Runnable;J)V

    .line 214
    goto :goto_1

    .line 215
    :cond_4
    invoke-virtual {v4}, Lo/v5;->run()V

    .line 218
    :cond_5
    :goto_1
    if-nez v14, :cond_7

    .line 220
    new-instance v0, Ljava/util/ArrayList;

    .line 222
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 225
    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 228
    iget-object v4, v8, Lo/B5;->n:Ljava/util/ArrayList;

    .line 230
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 233
    invoke-virtual {v13}, Ljava/util/ArrayList;->clear()V

    .line 236
    new-instance v4, Lo/v5;

    .line 238
    const/4 v5, 0x1

    .line 239
    invoke-direct {v4, v8, v0, v5}, Lo/v5;-><init>(Lo/B5;Ljava/util/ArrayList;I)V

    .line 242
    if-nez v10, :cond_6

    .line 244
    const/4 v5, 0x0

    .line 245
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 248
    move-result-object v0

    .line 249
    check-cast v0, Lo/z5;

    .line 251
    iget-object v0, v0, Lo/z5;->a:Lo/Id;

    .line 253
    iget-object v0, v0, Lo/Id;->a:Landroid/view/View;

    .line 255
    sget-object v5, Lo/Dh;->a:Ljava/util/WeakHashMap;

    .line 257
    invoke-virtual {v0, v4, v2, v3}, Landroid/view/View;->postOnAnimationDelayed(Ljava/lang/Runnable;J)V

    .line 260
    goto :goto_2

    .line 261
    :cond_6
    invoke-virtual {v4}, Lo/v5;->run()V

    .line 264
    :cond_7
    :goto_2
    if-nez v16, :cond_d

    .line 266
    new-instance v0, Ljava/util/ArrayList;

    .line 268
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 271
    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 274
    iget-object v4, v8, Lo/B5;->l:Ljava/util/ArrayList;

    .line 276
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 279
    invoke-virtual {v15}, Ljava/util/ArrayList;->clear()V

    .line 282
    new-instance v4, Lo/v5;

    .line 284
    const/4 v5, 0x2

    .line 285
    invoke-direct {v4, v8, v0, v5}, Lo/v5;-><init>(Lo/B5;Ljava/util/ArrayList;I)V

    .line 288
    if-eqz v10, :cond_9

    .line 290
    if-eqz v12, :cond_9

    .line 292
    if-nez v14, :cond_8

    .line 294
    goto :goto_3

    .line 295
    :cond_8
    invoke-virtual {v4}, Lo/v5;->run()V

    .line 298
    goto :goto_7

    .line 299
    :cond_9
    :goto_3
    if-nez v10, :cond_a

    .line 301
    goto :goto_4

    .line 302
    :cond_a
    const-wide/16 v2, 0x0

    .line 304
    :goto_4
    if-nez v12, :cond_b

    .line 306
    iget-wide v5, v8, Lo/qd;->e:J

    .line 308
    goto :goto_5

    .line 309
    :cond_b
    const-wide/16 v5, 0x0

    .line 311
    :goto_5
    if-nez v14, :cond_c

    .line 313
    iget-wide v8, v8, Lo/qd;->f:J

    .line 315
    goto :goto_6

    .line 316
    :cond_c
    const-wide/16 v8, 0x0

    .line 318
    :goto_6
    invoke-static {v5, v6, v8, v9}, Ljava/lang/Math;->max(JJ)J

    .line 321
    move-result-wide v5

    .line 322
    add-long/2addr v5, v2

    .line 323
    const/4 v2, 0x0

    .line 324
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 327
    move-result-object v0

    .line 328
    check-cast v0, Lo/Id;

    .line 330
    iget-object v0, v0, Lo/Id;->a:Landroid/view/View;

    .line 332
    sget-object v2, Lo/Dh;->a:Ljava/util/WeakHashMap;

    .line 334
    invoke-virtual {v0, v4, v5, v6}, Landroid/view/View;->postOnAnimationDelayed(Ljava/lang/Runnable;J)V

    .line 337
    :cond_d
    :goto_7
    const/4 v0, 0x0

    .line 338
    goto :goto_8

    .line 339
    :cond_e
    move v0, v6

    .line 340
    :goto_8
    iput-boolean v0, v7, Landroidx/recyclerview/widget/RecyclerView;->i0:Z

    .line 342
    return-void

    .line 343
    :pswitch_5
    check-cast v7, Lo/i8;

    .line 345
    const/4 v0, 0x1

    .line 346
    invoke-virtual {v7, v0}, Lo/i8;->z(Z)Z

    .line 349
    return-void

    .line 350
    :pswitch_6
    const/4 v0, 0x1

    .line 351
    check-cast v7, Lo/s7;

    .line 353
    iget v2, v7, Lo/s7;->A:I

    .line 355
    iget-object v3, v7, Lo/s7;->z:Landroid/animation/ValueAnimator;

    .line 357
    if-eq v2, v0, :cond_f

    .line 359
    const/4 v0, 0x2

    .line 360
    if-eq v2, v0, :cond_10

    .line 362
    goto :goto_9

    .line 363
    :cond_f
    const/4 v0, 0x2

    .line 364
    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->cancel()V

    .line 367
    :cond_10
    const/4 v2, 0x3

    .line 368
    iput v2, v7, Lo/s7;->A:I

    .line 370
    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 373
    move-result-object v2

    .line 374
    check-cast v2, Ljava/lang/Float;

    .line 376
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 379
    move-result v2

    .line 380
    new-array v0, v0, [F

    .line 382
    const/4 v4, 0x0

    .line 383
    aput v2, v0, v4

    .line 385
    const/4 v2, 0x1

    .line 386
    const/4 v4, 0x0

    .line 387
    aput v4, v0, v2

    .line 389
    invoke-virtual {v3, v0}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 392
    const/16 v0, 0x1f4

    .line 394
    int-to-long v4, v0

    .line 395
    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 398
    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->start()V

    .line 401
    :goto_9
    return-void

    .line 402
    :pswitch_7
    const/4 v0, 0x0

    .line 403
    check-cast v7, Lo/n6;

    .line 405
    iput-object v0, v7, Lo/n6;->l:Lo/J2;

    .line 407
    invoke-virtual {v7}, Lo/n6;->drawableStateChanged()V

    .line 410
    return-void

    .line 411
    :pswitch_8
    check-cast v7, Lo/X5;

    .line 413
    iget-object v0, v7, Lo/X5;->U:Lo/V5;

    .line 415
    iget-object v2, v7, Lo/X5;->c0:Landroid/app/Dialog;

    .line 417
    invoke-virtual {v0, v2}, Lo/V5;->onDismiss(Landroid/content/DialogInterface;)V

    .line 420
    return-void

    .line 421
    :pswitch_9
    check-cast v7, Lo/G5;

    .line 423
    iget-object v0, v7, Lo/G5;->b:Landroid/view/ViewGroup;

    .line 425
    iget-object v2, v7, Lo/G5;->c:Landroid/view/View;

    .line 427
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    .line 430
    iget-object v0, v7, Lo/G5;->d:Lo/I5;

    .line 432
    invoke-virtual {v0}, Lo/s1;->d()V

    .line 435
    return-void

    .line 436
    :pswitch_a
    :try_start_0
    check-cast v7, Landroidx/activity/a;

    .line 438
    invoke-static {v7}, Landroidx/activity/a;->f(Landroidx/activity/a;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 441
    goto :goto_c

    .line 442
    :catch_0
    move-exception v0

    .line 443
    goto :goto_a

    .line 444
    :catch_1
    move-exception v0

    .line 445
    goto :goto_b

    .line 446
    :goto_a
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 449
    move-result-object v2

    .line 450
    const-string v3, "Attempt to invoke virtual method \'android.os.Handler android.app.FragmentHostCallback.getHandler()\' on a null object reference"

    .line 452
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 455
    move-result v2

    .line 456
    if-eqz v2, :cond_11

    .line 458
    goto :goto_c

    .line 459
    :cond_11
    throw v0

    .line 460
    :goto_b
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 463
    move-result-object v2

    .line 464
    const-string v3, "Can not perform this action after onSaveInstanceState"

    .line 466
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 469
    move-result v2

    .line 470
    if-eqz v2, :cond_12

    .line 472
    :goto_c
    return-void

    .line 473
    :cond_12
    throw v0

    .line 474
    :pswitch_b
    check-cast v7, Lo/k3;

    .line 476
    const/4 v0, 0x0

    .line 477
    iput-boolean v0, v7, Lo/k3;->c:Z

    .line 479
    iget-object v0, v7, Lo/k3;->e:Lo/W4;

    .line 481
    check-cast v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 483
    iget-object v2, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->M:Lo/Fh;

    .line 485
    if-eqz v2, :cond_13

    .line 487
    invoke-virtual {v2}, Lo/Fh;->f()Z

    .line 490
    move-result v2

    .line 491
    if-eqz v2, :cond_13

    .line 493
    iget v0, v7, Lo/k3;->b:I

    .line 495
    invoke-virtual {v7, v0}, Lo/k3;->a(I)V

    .line 498
    goto :goto_d

    .line 499
    :cond_13
    iget v2, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->L:I

    .line 501
    const/4 v3, 0x2

    .line 502
    if-ne v2, v3, :cond_14

    .line 504
    iget v2, v7, Lo/k3;->b:I

    .line 506
    invoke-virtual {v0, v2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->C(I)V

    .line 509
    :cond_14
    :goto_d
    return-void

    .line 510
    :pswitch_c
    check-cast v7, Lo/ma;

    .line 512
    iget-boolean v0, v7, Lo/ma;->o:Z

    .line 514
    if-nez v0, :cond_15

    .line 516
    goto/16 :goto_10

    .line 518
    :cond_15
    iget-boolean v0, v7, Lo/ma;->m:Z

    .line 520
    iget-object v2, v7, Lo/ma;->a:Lo/I2;

    .line 522
    if-eqz v0, :cond_16

    .line 524
    const/4 v0, 0x0

    .line 525
    iput-boolean v0, v7, Lo/ma;->m:Z

    .line 527
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    .line 530
    move-result-wide v3

    .line 531
    iput-wide v3, v2, Lo/I2;->e:J

    .line 533
    const-wide/16 v5, -0x1

    .line 535
    iput-wide v5, v2, Lo/I2;->g:J

    .line 537
    iput-wide v3, v2, Lo/I2;->f:J

    .line 539
    const/high16 v0, 0x3f000000    # 0.5f

    .line 541
    iput v0, v2, Lo/I2;->h:F

    .line 543
    :cond_16
    iget-wide v3, v2, Lo/I2;->g:J

    .line 545
    const-wide/16 v5, 0x0

    .line 547
    cmp-long v0, v3, v5

    .line 549
    if-lez v0, :cond_17

    .line 551
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    .line 554
    move-result-wide v3

    .line 555
    iget-wide v5, v2, Lo/I2;->g:J

    .line 557
    iget v0, v2, Lo/I2;->i:I

    .line 559
    int-to-long v8, v0

    .line 560
    add-long/2addr v5, v8

    .line 561
    cmp-long v0, v3, v5

    .line 563
    if-lez v0, :cond_17

    .line 565
    :goto_e
    const/4 v0, 0x0

    .line 566
    goto :goto_f

    .line 567
    :cond_17
    invoke-virtual {v7}, Lo/ma;->e()Z

    .line 570
    move-result v0

    .line 571
    if-nez v0, :cond_18

    .line 573
    goto :goto_e

    .line 574
    :goto_f
    iput-boolean v0, v7, Lo/ma;->o:Z

    .line 576
    goto :goto_10

    .line 577
    :cond_18
    const/4 v0, 0x0

    .line 578
    iget-boolean v3, v7, Lo/ma;->n:Z

    .line 580
    iget-object v4, v7, Lo/ma;->c:Landroid/widget/ListView;

    .line 582
    if-eqz v3, :cond_19

    .line 584
    iput-boolean v0, v7, Lo/ma;->n:Z

    .line 586
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 589
    move-result-wide v10

    .line 590
    const/4 v14, 0x0

    .line 591
    const/4 v15, 0x0

    .line 592
    const/4 v12, 0x3

    .line 593
    const/4 v13, 0x0

    .line 594
    move-wide v8, v10

    .line 595
    invoke-static/range {v8 .. v15}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    .line 598
    move-result-object v0

    .line 599
    invoke-virtual {v4, v0}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 602
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 605
    :cond_19
    iget-wide v5, v2, Lo/I2;->f:J

    .line 607
    const-wide/16 v8, 0x0

    .line 609
    cmp-long v0, v5, v8

    .line 611
    if-eqz v0, :cond_1a

    .line 613
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    .line 616
    move-result-wide v5

    .line 617
    invoke-virtual {v2, v5, v6}, Lo/I2;->a(J)F

    .line 620
    move-result v0

    .line 621
    const/high16 v3, -0x3f800000    # -4.0f

    .line 623
    mul-float/2addr v3, v0

    .line 624
    mul-float/2addr v3, v0

    .line 625
    const/high16 v8, 0x40800000    # 4.0f

    .line 627
    mul-float/2addr v0, v8

    .line 628
    add-float/2addr v0, v3

    .line 629
    iget-wide v8, v2, Lo/I2;->f:J

    .line 631
    sub-long v8, v5, v8

    .line 633
    iput-wide v5, v2, Lo/I2;->f:J

    .line 635
    long-to-float v3, v8

    .line 636
    mul-float/2addr v3, v0

    .line 637
    iget v0, v2, Lo/I2;->d:F

    .line 639
    mul-float/2addr v3, v0

    .line 640
    float-to-int v0, v3

    .line 641
    iget-object v2, v7, Lo/ma;->q:Lo/n6;

    .line 643
    invoke-virtual {v2, v0}, Landroid/widget/AbsListView;->scrollListBy(I)V

    .line 646
    sget-object v0, Lo/Dh;->a:Ljava/util/WeakHashMap;

    .line 648
    invoke-virtual {v4, v1}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 651
    :goto_10
    return-void

    .line 652
    :cond_1a
    new-instance v0, Ljava/lang/RuntimeException;

    .line 654
    const-string v2, "Cannot compute scroll delta before calling start()"

    .line 656
    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 659
    throw v0

    nop

    .line 661
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
