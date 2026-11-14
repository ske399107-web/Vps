.class public final synthetic Lo/i0;
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
    iput p1, p0, Lo/i0;->a:I

    iput-object p2, p0, Lo/i0;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 19

    .line 1
    move-object/from16 v1, p0

    .line 3
    const/4 v0, 0x0

    .line 4
    const/4 v2, 0x2

    .line 5
    const/4 v3, 0x1

    .line 6
    iget v4, v1, Lo/i0;->a:I

    .line 8
    packed-switch v4, :pswitch_data_0

    .line 11
    iget-object v0, v1, Lo/i0;->b:Ljava/lang/Object;

    .line 13
    check-cast v0, Ljava/lang/String;

    .line 15
    invoke-static {v0}, Lcom/ffrt/proxyread/WirelessPair;->b(Ljava/lang/String;)V

    .line 18
    return-void

    .line 19
    :pswitch_0
    iget-object v0, v1, Lo/i0;->b:Ljava/lang/Object;

    .line 21
    check-cast v0, Landroid/view/View;

    .line 23
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 26
    move-result-object v2

    .line 27
    const-class v4, Landroid/view/inputmethod/InputMethodManager;

    .line 29
    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 32
    move-result-object v2

    .line 33
    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    .line 35
    invoke-virtual {v2, v0, v3}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 38
    return-void

    .line 39
    :pswitch_1
    iget-object v0, v1, Lo/i0;->b:Ljava/lang/Object;

    .line 41
    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    .line 43
    iget-object v0, v0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    .line 45
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 48
    return-void

    .line 49
    :pswitch_2
    iget-object v3, v1, Lo/i0;->b:Ljava/lang/Object;

    .line 51
    check-cast v3, Lo/k3;

    .line 53
    iput-boolean v0, v3, Lo/k3;->c:Z

    .line 55
    iget-object v0, v3, Lo/k3;->e:Lo/W4;

    .line 57
    check-cast v0, Lcom/google/android/material/sidesheet/SideSheetBehavior;

    .line 59
    iget-object v4, v0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->i:Lo/Fh;

    .line 61
    if-eqz v4, :cond_0

    .line 63
    invoke-virtual {v4}, Lo/Fh;->f()Z

    .line 66
    move-result v4

    .line 67
    if-eqz v4, :cond_0

    .line 69
    iget v0, v3, Lo/k3;->b:I

    .line 71
    invoke-virtual {v3, v0}, Lo/k3;->a(I)V

    .line 74
    goto :goto_0

    .line 75
    :cond_0
    iget v4, v0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->h:I

    .line 77
    if-ne v4, v2, :cond_1

    .line 79
    iget v2, v3, Lo/k3;->b:I

    .line 81
    invoke-virtual {v0, v2}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->r(I)V

    .line 84
    :cond_1
    :goto_0
    return-void

    .line 85
    :pswitch_3
    iget-object v0, v1, Lo/i0;->b:Ljava/lang/Object;

    .line 87
    check-cast v0, Lo/hd;

    .line 89
    invoke-virtual {v0}, Lo/hd;->m()V

    .line 92
    return-void

    .line 93
    :pswitch_4
    iget-object v0, v1, Lo/i0;->b:Ljava/lang/Object;

    .line 95
    check-cast v0, Lo/Tc;

    .line 97
    const-string v2, "this$0"

    .line 99
    invoke-static {v0, v2}, Lo/x9;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    iget v2, v0, Lo/Tc;->b:I

    .line 104
    iget-object v4, v0, Lo/Tc;->f:Landroidx/lifecycle/a;

    .line 106
    if-nez v2, :cond_2

    .line 108
    iput-boolean v3, v0, Lo/Tc;->c:Z

    .line 110
    sget-object v2, Lo/L9;->ON_PAUSE:Lo/L9;

    .line 112
    invoke-virtual {v4, v2}, Landroidx/lifecycle/a;->d(Lo/L9;)V

    .line 115
    :cond_2
    iget v2, v0, Lo/Tc;->a:I

    .line 117
    if-nez v2, :cond_3

    .line 119
    iget-boolean v2, v0, Lo/Tc;->c:Z

    .line 121
    if-eqz v2, :cond_3

    .line 123
    sget-object v2, Lo/L9;->ON_STOP:Lo/L9;

    .line 125
    invoke-virtual {v4, v2}, Landroidx/lifecycle/a;->d(Lo/L9;)V

    .line 128
    iput-boolean v3, v0, Lo/Tc;->d:Z

    .line 130
    :cond_3
    return-void

    .line 131
    :pswitch_5
    sget-boolean v0, Lo/g9;->d:Z

    .line 133
    if-eqz v0, :cond_4

    .line 135
    invoke-static {}, Lo/g9;->b()V

    .line 138
    :cond_4
    iget-object v0, v1, Lo/i0;->b:Ljava/lang/Object;

    .line 140
    check-cast v0, Lcom/ffrt/proxyread/HudAccessService;

    .line 142
    invoke-static {v0}, Lo/g9;->a(Landroid/content/Context;)V

    .line 145
    return-void

    .line 146
    :pswitch_6
    iget-object v3, v1, Lo/i0;->b:Ljava/lang/Object;

    .line 148
    check-cast v3, Lo/B7;

    .line 150
    const-string v4, "fetchFonts result is not OK. ("

    .line 152
    iget-object v5, v3, Lo/B7;->d:Ljava/lang/Object;

    .line 154
    monitor-enter v5

    .line 155
    :try_start_0
    iget-object v6, v3, Lo/B7;->h:Lo/L1;

    .line 157
    if-nez v6, :cond_5

    .line 159
    monitor-exit v5

    .line 160
    goto/16 :goto_7

    .line 162
    :catchall_0
    move-exception v0

    .line 163
    goto/16 :goto_9

    .line 165
    :cond_5
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 166
    :try_start_1
    invoke-virtual {v3}, Lo/B7;->b()Lo/L7;

    .line 169
    move-result-object v5

    .line 170
    iget v6, v5, Lo/L7;->e:I

    .line 172
    if-ne v6, v2, :cond_6

    .line 174
    iget-object v2, v3, Lo/B7;->d:Ljava/lang/Object;

    .line 176
    monitor-enter v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 177
    :try_start_2
    monitor-exit v2

    .line 178
    goto :goto_1

    .line 179
    :catchall_1
    move-exception v0

    .line 180
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 181
    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 182
    :catchall_2
    move-exception v0

    .line 183
    goto/16 :goto_5

    .line 185
    :cond_6
    :goto_1
    if-nez v6, :cond_9

    .line 187
    :try_start_4
    const-string v2, "EmojiCompat.FontRequestEmojiCompatConfig.buildTypeface"

    .line 189
    sget v4, Lo/pg;->a:I

    .line 191
    invoke-static {v2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 194
    iget-object v2, v3, Lo/B7;->c:Lo/u6;

    .line 196
    iget-object v4, v3, Lo/B7;->a:Landroid/content/Context;

    .line 198
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 201
    filled-new-array {v5}, [Lo/L7;

    .line 204
    move-result-object v2

    .line 205
    sget-object v6, Lo/Fg;->a:Lo/Ha;

    .line 207
    const-string v6, "TypefaceCompat.createFromFontInfo"

    .line 209
    invoke-static {v6}, Lo/Ha;->a(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    .line 212
    :try_start_5
    sget-object v6, Lo/Fg;->a:Lo/Ha;

    .line 214
    invoke-virtual {v6, v4, v2, v0}, Lo/Ha;->u(Landroid/content/Context;[Lo/L7;I)Landroid/graphics/Typeface;

    .line 217
    move-result-object v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_6

    .line 218
    :try_start_6
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 221
    iget-object v2, v3, Lo/B7;->a:Landroid/content/Context;

    .line 223
    iget-object v4, v5, Lo/L7;->a:Landroid/net/Uri;

    .line 225
    invoke-static {v2, v4}, Lo/Ha;->f0(Landroid/content/Context;Landroid/net/Uri;)Ljava/nio/MappedByteBuffer;

    .line 228
    move-result-object v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    .line 229
    if-eqz v2, :cond_8

    .line 231
    if-eqz v0, :cond_8

    .line 233
    :try_start_7
    const-string v4, "EmojiCompat.MetadataRepo.create"

    .line 235
    invoke-static {v4}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 238
    new-instance v4, Lo/H5;

    .line 240
    invoke-static {v2}, Lo/Ha;->l0(Ljava/nio/MappedByteBuffer;)Lo/Fb;

    .line 243
    move-result-object v2

    .line 244
    invoke-direct {v4, v0, v2}, Lo/H5;-><init>(Landroid/graphics/Typeface;Lo/Fb;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 247
    :try_start_8
    invoke-static {}, Landroid/os/Trace;->endSection()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    .line 250
    :try_start_9
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 253
    iget-object v2, v3, Lo/B7;->d:Ljava/lang/Object;

    .line 255
    monitor-enter v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 256
    :try_start_a
    iget-object v0, v3, Lo/B7;->h:Lo/L1;

    .line 258
    if-eqz v0, :cond_7

    .line 260
    invoke-virtual {v0, v4}, Lo/L1;->N(Lo/H5;)V

    .line 263
    goto :goto_2

    .line 264
    :catchall_3
    move-exception v0

    .line 265
    goto :goto_3

    .line 266
    :cond_7
    :goto_2
    monitor-exit v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 267
    :try_start_b
    invoke-virtual {v3}, Lo/B7;->a()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 270
    goto :goto_7

    .line 271
    :goto_3
    :try_start_c
    monitor-exit v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 272
    :try_start_d
    throw v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    .line 273
    :catchall_4
    move-exception v0

    .line 274
    :try_start_e
    sget v2, Lo/pg;->a:I

    .line 276
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 279
    throw v0

    .line 280
    :cond_8
    new-instance v0, Ljava/lang/RuntimeException;

    .line 282
    const-string v2, "Unable to open file."

    .line 284
    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 287
    throw v0

    .line 288
    :catchall_5
    move-exception v0

    .line 289
    goto :goto_4

    .line 290
    :catchall_6
    move-exception v0

    .line 291
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 294
    throw v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    .line 295
    :goto_4
    :try_start_f
    sget v2, Lo/pg;->a:I

    .line 297
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 300
    throw v0

    .line 301
    :cond_9
    new-instance v0, Ljava/lang/RuntimeException;

    .line 303
    new-instance v2, Ljava/lang/StringBuilder;

    .line 305
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 308
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 311
    const-string v4, ")"

    .line 313
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 319
    move-result-object v2

    .line 320
    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 323
    throw v0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    .line 324
    :goto_5
    iget-object v2, v3, Lo/B7;->d:Ljava/lang/Object;

    .line 326
    monitor-enter v2

    .line 327
    :try_start_10
    iget-object v4, v3, Lo/B7;->h:Lo/L1;

    .line 329
    if-eqz v4, :cond_a

    .line 331
    invoke-virtual {v4, v0}, Lo/L1;->K(Ljava/lang/Throwable;)V

    .line 334
    goto :goto_6

    .line 335
    :catchall_7
    move-exception v0

    .line 336
    goto :goto_8

    .line 337
    :cond_a
    :goto_6
    monitor-exit v2
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_7

    .line 338
    invoke-virtual {v3}, Lo/B7;->a()V

    .line 341
    :goto_7
    return-void

    .line 342
    :goto_8
    :try_start_11
    monitor-exit v2
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_7

    .line 343
    throw v0

    .line 344
    :goto_9
    :try_start_12
    monitor-exit v5
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    .line 345
    throw v0

    .line 346
    :pswitch_7
    iget-object v0, v1, Lo/i0;->b:Ljava/lang/Object;

    .line 348
    check-cast v0, Lo/r6;

    .line 350
    iget-object v2, v0, Lo/r6;->h:Landroid/widget/AutoCompleteTextView;

    .line 352
    invoke-virtual {v2}, Landroid/widget/AutoCompleteTextView;->isPopupShowing()Z

    .line 355
    move-result v2

    .line 356
    invoke-virtual {v0, v2}, Lo/r6;->t(Z)V

    .line 359
    iput-boolean v2, v0, Lo/r6;->m:Z

    .line 361
    return-void

    .line 362
    :pswitch_8
    iget-object v0, v1, Lo/i0;->b:Ljava/lang/Object;

    .line 364
    check-cast v0, Lo/u4;

    .line 366
    invoke-static {v0}, Lo/u4;->a(Lo/u4;)V

    .line 369
    return-void

    .line 370
    :pswitch_9
    iget-object v0, v1, Lo/i0;->b:Ljava/lang/Object;

    .line 372
    check-cast v0, Lo/s4;

    .line 374
    iget-object v2, v0, Lo/s4;->b:Ljava/lang/Runnable;

    .line 376
    if-eqz v2, :cond_b

    .line 378
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 381
    const/4 v2, 0x0

    .line 382
    iput-object v2, v0, Lo/s4;->b:Ljava/lang/Runnable;

    .line 384
    :cond_b
    return-void

    .line 385
    :pswitch_a
    iget-object v0, v1, Lo/i0;->b:Ljava/lang/Object;

    .line 387
    check-cast v0, Lo/U0;

    .line 389
    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 392
    return-void

    .line 393
    :pswitch_b
    iget-object v0, v1, Lo/i0;->b:Ljava/lang/Object;

    .line 395
    check-cast v0, Lo/a4;

    .line 397
    invoke-virtual {v0, v3}, Lo/a4;->t(Z)V

    .line 400
    return-void

    .line 401
    :pswitch_c
    iget-object v0, v1, Lo/i0;->b:Ljava/lang/Object;

    .line 403
    check-cast v0, Lcom/google/android/material/carousel/CarouselLayoutManager;

    .line 405
    invoke-virtual {v0}, Lo/ud;->l0()V

    .line 408
    return-void

    .line 409
    :pswitch_d
    iget-object v0, v1, Lo/i0;->b:Ljava/lang/Object;

    .line 411
    check-cast v0, Lio/github/muntashirakon/adb/AdbConnection;

    .line 413
    invoke-static {v0}, Lio/github/muntashirakon/adb/AdbConnection;->a(Lio/github/muntashirakon/adb/AdbConnection;)V

    .line 416
    return-void

    .line 417
    :pswitch_e
    iget-object v4, v1, Lo/i0;->b:Ljava/lang/Object;

    .line 419
    check-cast v4, Landroid/app/Activity;

    .line 421
    invoke-virtual {v4}, Landroid/app/Activity;->isFinishing()Z

    .line 424
    move-result v5

    .line 425
    if-nez v5, :cond_16

    .line 427
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 429
    const/16 v6, 0x1c

    .line 431
    if-lt v5, v6, :cond_c

    .line 433
    sget-object v0, Lo/k0;->a:Ljava/lang/Class;

    .line 435
    invoke-virtual {v4}, Landroid/app/Activity;->recreate()V

    .line 438
    goto/16 :goto_10

    .line 440
    :cond_c
    sget-object v6, Lo/k0;->a:Ljava/lang/Class;

    .line 442
    const/16 v6, 0x1b

    .line 444
    const/16 v7, 0x1a

    .line 446
    if-eq v5, v7, :cond_e

    .line 448
    if-ne v5, v6, :cond_d

    .line 450
    goto :goto_a

    .line 451
    :cond_d
    move v8, v0

    .line 452
    goto :goto_b

    .line 453
    :cond_e
    :goto_a
    move v8, v3

    .line 454
    :goto_b
    sget-object v9, Lo/k0;->f:Ljava/lang/reflect/Method;

    .line 456
    if-eqz v8, :cond_f

    .line 458
    if-nez v9, :cond_f

    .line 460
    goto/16 :goto_f

    .line 462
    :cond_f
    sget-object v8, Lo/k0;->e:Ljava/lang/reflect/Method;

    .line 464
    if-nez v8, :cond_10

    .line 466
    sget-object v8, Lo/k0;->d:Ljava/lang/reflect/Method;

    .line 468
    if-nez v8, :cond_10

    .line 470
    goto/16 :goto_f

    .line 472
    :cond_10
    :try_start_13
    sget-object v8, Lo/k0;->c:Ljava/lang/reflect/Field;

    .line 474
    invoke-virtual {v8, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 477
    move-result-object v10

    .line 478
    if-nez v10, :cond_11

    .line 480
    goto/16 :goto_f

    .line 482
    :cond_11
    sget-object v8, Lo/k0;->b:Ljava/lang/reflect/Field;

    .line 484
    invoke-virtual {v8, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 487
    move-result-object v8

    .line 488
    if-nez v8, :cond_12

    .line 490
    goto/16 :goto_f

    .line 492
    :cond_12
    invoke-virtual {v4}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    .line 495
    move-result-object v15

    .line 496
    new-instance v14, Lo/j0;

    .line 498
    invoke-direct {v14, v4}, Lo/j0;-><init>(Landroid/app/Activity;)V

    .line 501
    invoke-virtual {v15, v14}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_a

    .line 504
    sget-object v13, Lo/k0;->g:Landroid/os/Handler;

    .line 506
    :try_start_14
    new-instance v11, Lo/b0;

    .line 508
    invoke-direct {v11, v14, v3, v10}, Lo/b0;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 511
    invoke-virtual {v13, v11}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_a

    .line 514
    if-eq v5, v7, :cond_14

    .line 516
    if-ne v5, v6, :cond_13

    .line 518
    goto :goto_c

    .line 519
    :cond_13
    move v3, v0

    .line 520
    :cond_14
    :goto_c
    if-eqz v3, :cond_15

    .line 522
    :try_start_15
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 525
    move-result-object v0

    .line 526
    sget-object v18, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_9

    .line 528
    const/4 v11, 0x0

    .line 529
    const/4 v12, 0x0

    .line 530
    const/4 v3, 0x0

    .line 531
    const/16 v16, 0x0

    .line 533
    move-object v5, v13

    .line 534
    move-object v13, v0

    .line 535
    move-object v6, v14

    .line 536
    move-object/from16 v14, v18

    .line 538
    move-object v7, v15

    .line 539
    move-object v15, v3

    .line 540
    move-object/from16 v17, v18

    .line 542
    :try_start_16
    filled-new-array/range {v10 .. v18}, [Ljava/lang/Object;

    .line 545
    move-result-object v0

    .line 546
    invoke-virtual {v9, v8, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 549
    goto :goto_d

    .line 550
    :catchall_8
    move-exception v0

    .line 551
    goto :goto_e

    .line 552
    :catchall_9
    move-exception v0

    .line 553
    move-object v5, v13

    .line 554
    move-object v6, v14

    .line 555
    move-object v7, v15

    .line 556
    goto :goto_e

    .line 557
    :cond_15
    move-object v5, v13

    .line 558
    move-object v6, v14

    .line 559
    move-object v7, v15

    .line 560
    invoke-virtual {v4}, Landroid/app/Activity;->recreate()V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_8

    .line 563
    :goto_d
    :try_start_17
    new-instance v0, Lo/b0;

    .line 565
    invoke-direct {v0, v7, v2, v6}, Lo/b0;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 568
    invoke-virtual {v5, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 571
    goto :goto_10

    .line 572
    :goto_e
    new-instance v3, Lo/b0;

    .line 574
    invoke-direct {v3, v7, v2, v6}, Lo/b0;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 577
    invoke-virtual {v5, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 580
    throw v0
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_a

    .line 581
    :catchall_a
    :goto_f
    invoke-virtual {v4}, Landroid/app/Activity;->recreate()V

    .line 584
    :cond_16
    :goto_10
    return-void

    .line 585
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_e
        :pswitch_d
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
