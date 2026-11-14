.class public final Lo/bc;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/app/Notification$Builder;

.field public final b:Lo/Zb;

.field public final c:Landroid/os/Bundle;

.field public final d:I


# direct methods
.method public constructor <init>(Lo/Zb;)V
    .locals 23

    .line 1
    move-object/from16 v1, p0

    .line 3
    move-object/from16 v2, p1

    .line 5
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    .line 10
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 13
    new-instance v0, Landroid/os/Bundle;

    .line 15
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 18
    iput-object v0, v1, Lo/bc;->c:Landroid/os/Bundle;

    .line 20
    iput-object v2, v1, Lo/bc;->b:Lo/Zb;

    .line 22
    iget-object v0, v2, Lo/Zb;->a:Landroid/content/Context;

    .line 24
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 26
    iget-object v4, v2, Lo/Zb;->n:Ljava/lang/String;

    .line 28
    const/16 v5, 0x1a

    .line 30
    if-lt v3, v5, :cond_0

    .line 32
    invoke-static {v0, v4}, Lo/j9;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 35
    move-result-object v0

    .line 36
    iput-object v0, v1, Lo/bc;->a:Landroid/app/Notification$Builder;

    .line 38
    goto :goto_0

    .line 39
    :cond_0
    new-instance v0, Landroid/app/Notification$Builder;

    .line 41
    iget-object v3, v2, Lo/Zb;->a:Landroid/content/Context;

    .line 43
    invoke-direct {v0, v3}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 46
    iput-object v0, v1, Lo/bc;->a:Landroid/app/Notification$Builder;

    .line 48
    :goto_0
    iget-object v3, v2, Lo/Zb;->p:Landroid/app/Notification;

    .line 50
    iget-object v0, v1, Lo/bc;->a:Landroid/app/Notification$Builder;

    .line 52
    iget-wide v6, v3, Landroid/app/Notification;->when:J

    .line 54
    invoke-virtual {v0, v6, v7}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    .line 57
    move-result-object v0

    .line 58
    iget v6, v3, Landroid/app/Notification;->icon:I

    .line 60
    iget v7, v3, Landroid/app/Notification;->iconLevel:I

    .line 62
    invoke-virtual {v0, v6, v7}, Landroid/app/Notification$Builder;->setSmallIcon(II)Landroid/app/Notification$Builder;

    .line 65
    move-result-object v0

    .line 66
    iget-object v6, v3, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 68
    invoke-virtual {v0, v6}, Landroid/app/Notification$Builder;->setContent(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    .line 71
    move-result-object v0

    .line 72
    iget-object v6, v3, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 74
    const/4 v7, 0x0

    .line 75
    invoke-virtual {v0, v6, v7}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    .line 78
    move-result-object v0

    .line 79
    iget-object v6, v3, Landroid/app/Notification;->vibrate:[J

    .line 81
    invoke-virtual {v0, v6}, Landroid/app/Notification$Builder;->setVibrate([J)Landroid/app/Notification$Builder;

    .line 84
    move-result-object v0

    .line 85
    iget v6, v3, Landroid/app/Notification;->ledARGB:I

    .line 87
    iget v8, v3, Landroid/app/Notification;->ledOnMS:I

    .line 89
    iget v9, v3, Landroid/app/Notification;->ledOffMS:I

    .line 91
    invoke-virtual {v0, v6, v8, v9}, Landroid/app/Notification$Builder;->setLights(III)Landroid/app/Notification$Builder;

    .line 94
    move-result-object v0

    .line 95
    iget v6, v3, Landroid/app/Notification;->flags:I

    .line 97
    const/4 v8, 0x2

    .line 98
    and-int/2addr v6, v8

    .line 99
    const/4 v9, 0x0

    .line 100
    if-eqz v6, :cond_1

    .line 102
    const/4 v6, 0x1

    .line 103
    goto :goto_1

    .line 104
    :cond_1
    move v6, v9

    .line 105
    :goto_1
    invoke-virtual {v0, v6}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 108
    move-result-object v0

    .line 109
    iget v6, v3, Landroid/app/Notification;->flags:I

    .line 111
    and-int/lit8 v6, v6, 0x8

    .line 113
    if-eqz v6, :cond_2

    .line 115
    const/4 v6, 0x1

    .line 116
    goto :goto_2

    .line 117
    :cond_2
    move v6, v9

    .line 118
    :goto_2
    invoke-virtual {v0, v6}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    .line 121
    move-result-object v0

    .line 122
    iget v6, v3, Landroid/app/Notification;->flags:I

    .line 124
    and-int/lit8 v6, v6, 0x10

    .line 126
    if-eqz v6, :cond_3

    .line 128
    const/4 v6, 0x1

    .line 129
    goto :goto_3

    .line 130
    :cond_3
    move v6, v9

    .line 131
    :goto_3
    invoke-virtual {v0, v6}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 134
    move-result-object v0

    .line 135
    iget v6, v3, Landroid/app/Notification;->defaults:I

    .line 137
    invoke-virtual {v0, v6}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    .line 140
    move-result-object v0

    .line 141
    iget-object v6, v2, Lo/Zb;->e:Ljava/lang/CharSequence;

    .line 143
    invoke-virtual {v0, v6}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 146
    move-result-object v0

    .line 147
    iget-object v6, v2, Lo/Zb;->f:Ljava/lang/CharSequence;

    .line 149
    invoke-virtual {v0, v6}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 152
    move-result-object v0

    .line 153
    invoke-virtual {v0, v7}, Landroid/app/Notification$Builder;->setContentInfo(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 156
    move-result-object v0

    .line 157
    iget-object v6, v2, Lo/Zb;->g:Landroid/app/PendingIntent;

    .line 159
    invoke-virtual {v0, v6}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 162
    move-result-object v0

    .line 163
    iget-object v6, v3, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 165
    invoke-virtual {v0, v6}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 168
    move-result-object v0

    .line 169
    iget v6, v3, Landroid/app/Notification;->flags:I

    .line 171
    and-int/lit16 v6, v6, 0x80

    .line 173
    if-eqz v6, :cond_4

    .line 175
    const/4 v6, 0x1

    .line 176
    goto :goto_4

    .line 177
    :cond_4
    move v6, v9

    .line 178
    :goto_4
    invoke-virtual {v0, v7, v6}, Landroid/app/Notification$Builder;->setFullScreenIntent(Landroid/app/PendingIntent;Z)Landroid/app/Notification$Builder;

    .line 181
    move-result-object v0

    .line 182
    invoke-virtual {v0, v9}, Landroid/app/Notification$Builder;->setNumber(I)Landroid/app/Notification$Builder;

    .line 185
    move-result-object v0

    .line 186
    invoke-virtual {v0, v9, v9, v9}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    .line 189
    iget-object v0, v1, Lo/bc;->a:Landroid/app/Notification$Builder;

    .line 191
    invoke-virtual {v0, v7}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$Builder;

    .line 194
    iget-object v0, v1, Lo/bc;->a:Landroid/app/Notification$Builder;

    .line 196
    invoke-virtual {v0, v7}, Landroid/app/Notification$Builder;->setSubText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 199
    move-result-object v0

    .line 200
    invoke-virtual {v0, v9}, Landroid/app/Notification$Builder;->setUsesChronometer(Z)Landroid/app/Notification$Builder;

    .line 203
    move-result-object v0

    .line 204
    iget v6, v2, Lo/Zb;->h:I

    .line 206
    invoke-virtual {v0, v6}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    .line 209
    iget-object v0, v2, Lo/Zb;->b:Ljava/util/ArrayList;

    .line 211
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 214
    move-result-object v6

    .line 215
    :goto_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 218
    move-result v0

    .line 219
    const-string v11, "android.support.allowGeneratedReplies"

    .line 221
    const-string v12, "adb_pair_code"

    .line 223
    if-eqz v0, :cond_18

    .line 225
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 228
    move-result-object v0

    .line 229
    move-object v15, v0

    .line 230
    check-cast v15, Lo/Xb;

    .line 232
    iget-object v0, v15, Lo/Xb;->b:Landroidx/core/graphics/drawable/IconCompat;

    .line 234
    if-nez v0, :cond_5

    .line 236
    iget v0, v15, Lo/Xb;->g:I

    .line 238
    if-eqz v0, :cond_5

    .line 240
    invoke-static {v0}, Landroidx/core/graphics/drawable/IconCompat;->a(I)Landroidx/core/graphics/drawable/IconCompat;

    .line 243
    move-result-object v0

    .line 244
    iput-object v0, v15, Lo/Xb;->b:Landroidx/core/graphics/drawable/IconCompat;

    .line 246
    :cond_5
    iget-object v13, v15, Lo/Xb;->b:Landroidx/core/graphics/drawable/IconCompat;

    .line 248
    if-eqz v13, :cond_e

    .line 250
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 252
    iget v10, v13, Landroidx/core/graphics/drawable/IconCompat;->a:I

    .line 254
    const-string v7, "IconCompat"

    .line 256
    packed-switch v10, :pswitch_data_0

    .line 259
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 261
    const-string v2, "Unknown type"

    .line 263
    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 266
    throw v0

    .line 267
    :pswitch_1
    const/16 v7, 0x1e

    .line 269
    if-lt v0, v7, :cond_6

    .line 271
    invoke-virtual {v13}, Landroidx/core/graphics/drawable/IconCompat;->c()Landroid/net/Uri;

    .line 274
    move-result-object v0

    .line 275
    invoke-static {v0}, Lo/z;->a(Landroid/net/Uri;)Landroid/graphics/drawable/Icon;

    .line 278
    move-result-object v0

    .line 279
    :goto_6
    move-object/from16 v20, v3

    .line 281
    move-object/from16 v18, v4

    .line 283
    move-object/from16 v17, v6

    .line 285
    move v4, v8

    .line 286
    goto/16 :goto_f

    .line 288
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 290
    new-instance v2, Ljava/lang/StringBuilder;

    .line 292
    const-string v3, "Context is required to resolve the file uri of the icon: "

    .line 294
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 297
    invoke-virtual {v13}, Landroidx/core/graphics/drawable/IconCompat;->c()Landroid/net/Uri;

    .line 300
    move-result-object v3

    .line 301
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 304
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 307
    move-result-object v2

    .line 308
    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 311
    throw v0

    .line 312
    :pswitch_2
    if-lt v0, v5, :cond_7

    .line 314
    iget-object v0, v13, Landroidx/core/graphics/drawable/IconCompat;->b:Ljava/lang/Object;

    .line 316
    check-cast v0, Landroid/graphics/Bitmap;

    .line 318
    invoke-static {v0}, Lo/j9;->b(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    .line 321
    move-result-object v0

    .line 322
    goto :goto_6

    .line 323
    :cond_7
    iget-object v0, v13, Landroidx/core/graphics/drawable/IconCompat;->b:Ljava/lang/Object;

    .line 325
    check-cast v0, Landroid/graphics/Bitmap;

    .line 327
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 330
    move-result v7

    .line 331
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    .line 334
    move-result v10

    .line 335
    invoke-static {v7, v10}, Ljava/lang/Math;->min(II)I

    .line 338
    move-result v7

    .line 339
    int-to-float v7, v7

    .line 340
    const v10, 0x3f2aaaab

    .line 343
    mul-float/2addr v7, v10

    .line 344
    float-to-int v7, v7

    .line 345
    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 347
    invoke-static {v7, v7, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 350
    move-result-object v10

    .line 351
    new-instance v5, Landroid/graphics/Canvas;

    .line 353
    invoke-direct {v5, v10}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 356
    new-instance v8, Landroid/graphics/Paint;

    .line 358
    const/4 v9, 0x3

    .line 359
    invoke-direct {v8, v9}, Landroid/graphics/Paint;-><init>(I)V

    .line 362
    int-to-float v9, v7

    .line 363
    const/high16 v17, 0x3f000000    # 0.5f

    .line 365
    mul-float v9, v9, v17

    .line 367
    const v17, 0x3f6aaaab

    .line 370
    mul-float v14, v9, v17

    .line 372
    move-object/from16 v17, v6

    .line 374
    const/high16 v6, -0x1000000

    .line 376
    invoke-virtual {v8, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 379
    new-instance v6, Landroid/graphics/BitmapShader;

    .line 381
    move-object/from16 v18, v4

    .line 383
    sget-object v4, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 385
    invoke-direct {v6, v0, v4, v4}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 388
    new-instance v4, Landroid/graphics/Matrix;

    .line 390
    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    .line 393
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 396
    move-result v19

    .line 397
    move-object/from16 v20, v3

    .line 399
    sub-int v3, v19, v7

    .line 401
    neg-int v3, v3

    .line 402
    int-to-float v3, v3

    .line 403
    const/high16 v19, 0x40000000    # 2.0f

    .line 405
    div-float v3, v3, v19

    .line 407
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    .line 410
    move-result v0

    .line 411
    sub-int/2addr v0, v7

    .line 412
    neg-int v0, v0

    .line 413
    int-to-float v0, v0

    .line 414
    div-float v0, v0, v19

    .line 416
    invoke-virtual {v4, v3, v0}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 419
    invoke-virtual {v6, v4}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 422
    invoke-virtual {v8, v6}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 425
    invoke-virtual {v5, v9, v9, v14, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 428
    const/4 v0, 0x0

    .line 429
    invoke-virtual {v5, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 432
    invoke-static {v10}, Landroid/graphics/drawable/Icon;->createWithBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    .line 435
    move-result-object v0

    .line 436
    :goto_7
    const/4 v4, 0x2

    .line 437
    goto/16 :goto_f

    .line 439
    :pswitch_3
    move-object/from16 v20, v3

    .line 441
    move-object/from16 v18, v4

    .line 443
    move-object/from16 v17, v6

    .line 445
    iget-object v0, v13, Landroidx/core/graphics/drawable/IconCompat;->b:Ljava/lang/Object;

    .line 447
    check-cast v0, Ljava/lang/String;

    .line 449
    invoke-static {v0}, Landroid/graphics/drawable/Icon;->createWithContentUri(Ljava/lang/String;)Landroid/graphics/drawable/Icon;

    .line 452
    move-result-object v0

    .line 453
    goto :goto_7

    .line 454
    :pswitch_4
    move-object/from16 v20, v3

    .line 456
    move-object/from16 v18, v4

    .line 458
    move-object/from16 v17, v6

    .line 460
    iget-object v0, v13, Landroidx/core/graphics/drawable/IconCompat;->b:Ljava/lang/Object;

    .line 462
    check-cast v0, [B

    .line 464
    iget v3, v13, Landroidx/core/graphics/drawable/IconCompat;->e:I

    .line 466
    iget v4, v13, Landroidx/core/graphics/drawable/IconCompat;->f:I

    .line 468
    invoke-static {v0, v3, v4}, Landroid/graphics/drawable/Icon;->createWithData([BII)Landroid/graphics/drawable/Icon;

    .line 471
    move-result-object v0

    .line 472
    goto :goto_7

    .line 473
    :pswitch_5
    move-object/from16 v20, v3

    .line 475
    move-object/from16 v18, v4

    .line 477
    move-object/from16 v17, v6

    .line 479
    const/4 v3, -0x1

    .line 480
    if-ne v10, v3, :cond_9

    .line 482
    iget-object v3, v13, Landroidx/core/graphics/drawable/IconCompat;->b:Ljava/lang/Object;

    .line 484
    const-string v4, "Unable to get icon package"

    .line 486
    const/16 v5, 0x1c

    .line 488
    if-lt v0, v5, :cond_8

    .line 490
    invoke-static {v3}, Lo/b6;->c(Ljava/lang/Object;)Ljava/lang/String;

    .line 493
    move-result-object v0

    .line 494
    goto :goto_c

    .line 495
    :cond_8
    :try_start_0
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 498
    move-result-object v0

    .line 499
    const-string v5, "getResPackage"

    .line 501
    const/4 v6, 0x0

    .line 502
    new-array v8, v6, [Ljava/lang/Class;

    .line 504
    invoke-virtual {v0, v5, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 507
    move-result-object v0

    .line 508
    new-array v5, v6, [Ljava/lang/Object;

    .line 510
    invoke-virtual {v0, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 513
    move-result-object v0

    .line 514
    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 516
    goto :goto_c

    .line 517
    :catch_0
    move-exception v0

    .line 518
    goto :goto_8

    .line 519
    :catch_1
    move-exception v0

    .line 520
    goto :goto_a

    .line 521
    :catch_2
    move-exception v0

    .line 522
    goto :goto_b

    .line 523
    :goto_8
    invoke-static {v7, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 526
    :goto_9
    const/4 v0, 0x0

    .line 527
    goto :goto_c

    .line 528
    :goto_a
    invoke-static {v7, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 531
    goto :goto_9

    .line 532
    :goto_b
    invoke-static {v7, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 535
    goto :goto_9

    .line 536
    :goto_c
    const/4 v4, 0x2

    .line 537
    goto :goto_e

    .line 538
    :cond_9
    const/4 v4, 0x2

    .line 539
    if-ne v10, v4, :cond_c

    .line 541
    iget-object v0, v13, Landroidx/core/graphics/drawable/IconCompat;->j:Ljava/lang/String;

    .line 543
    if-eqz v0, :cond_b

    .line 545
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 548
    move-result v0

    .line 549
    if-eqz v0, :cond_a

    .line 551
    goto :goto_d

    .line 552
    :cond_a
    iget-object v0, v13, Landroidx/core/graphics/drawable/IconCompat;->j:Ljava/lang/String;

    .line 554
    goto :goto_e

    .line 555
    :cond_b
    :goto_d
    iget-object v0, v13, Landroidx/core/graphics/drawable/IconCompat;->b:Ljava/lang/Object;

    .line 557
    check-cast v0, Ljava/lang/String;

    .line 559
    const-string v5, ":"

    .line 561
    invoke-virtual {v0, v5, v3}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    .line 564
    move-result-object v0

    .line 565
    const/4 v3, 0x0

    .line 566
    aget-object v0, v0, v3

    .line 568
    :goto_e
    iget v3, v13, Landroidx/core/graphics/drawable/IconCompat;->e:I

    .line 570
    invoke-static {v0, v3}, Landroid/graphics/drawable/Icon;->createWithResource(Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    .line 573
    move-result-object v0

    .line 574
    goto :goto_f

    .line 575
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 577
    new-instance v2, Ljava/lang/StringBuilder;

    .line 579
    const-string v3, "called getResPackage() on "

    .line 581
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 584
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 587
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 590
    move-result-object v2

    .line 591
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 594
    throw v0

    .line 595
    :pswitch_6
    move-object/from16 v20, v3

    .line 597
    move-object/from16 v18, v4

    .line 599
    move-object/from16 v17, v6

    .line 601
    move v4, v8

    .line 602
    iget-object v0, v13, Landroidx/core/graphics/drawable/IconCompat;->b:Ljava/lang/Object;

    .line 604
    check-cast v0, Landroid/graphics/Bitmap;

    .line 606
    invoke-static {v0}, Landroid/graphics/drawable/Icon;->createWithBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    .line 609
    move-result-object v0

    .line 610
    :goto_f
    iget-object v3, v13, Landroidx/core/graphics/drawable/IconCompat;->g:Landroid/content/res/ColorStateList;

    .line 612
    if-eqz v3, :cond_d

    .line 614
    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Icon;->setTintList(Landroid/content/res/ColorStateList;)Landroid/graphics/drawable/Icon;

    .line 617
    :cond_d
    iget-object v3, v13, Landroidx/core/graphics/drawable/IconCompat;->h:Landroid/graphics/PorterDuff$Mode;

    .line 619
    sget-object v5, Landroidx/core/graphics/drawable/IconCompat;->k:Landroid/graphics/PorterDuff$Mode;

    .line 621
    if-eq v3, v5, :cond_f

    .line 623
    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Icon;->setTintMode(Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/drawable/Icon;

    .line 626
    goto :goto_10

    .line 627
    :pswitch_7
    move-object/from16 v20, v3

    .line 629
    move-object/from16 v18, v4

    .line 631
    move-object/from16 v17, v6

    .line 633
    move v4, v8

    .line 634
    iget-object v0, v13, Landroidx/core/graphics/drawable/IconCompat;->b:Ljava/lang/Object;

    .line 636
    check-cast v0, Landroid/graphics/drawable/Icon;

    .line 638
    goto :goto_10

    .line 639
    :cond_e
    move-object/from16 v20, v3

    .line 641
    move-object/from16 v18, v4

    .line 643
    move-object/from16 v17, v6

    .line 645
    move v4, v8

    .line 646
    const/4 v0, 0x0

    .line 647
    :cond_f
    :goto_10
    new-instance v3, Landroid/app/Notification$Action$Builder;

    .line 649
    iget-object v5, v15, Lo/Xb;->h:Ljava/lang/CharSequence;

    .line 651
    iget-object v6, v15, Lo/Xb;->i:Landroid/app/PendingIntent;

    .line 653
    invoke-direct {v3, v0, v5, v6}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 656
    iget-object v0, v15, Lo/Xb;->c:[Lo/Od;

    .line 658
    if-eqz v0, :cond_13

    .line 660
    array-length v5, v0

    .line 661
    new-array v6, v5, [Landroid/app/RemoteInput;

    .line 663
    const/4 v7, 0x0

    .line 664
    :goto_11
    array-length v8, v0

    .line 665
    if-ge v7, v8, :cond_12

    .line 667
    aget-object v8, v0, v7

    .line 669
    new-instance v9, Landroid/app/RemoteInput$Builder;

    .line 671
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 674
    invoke-direct {v9, v12}, Landroid/app/RemoteInput$Builder;-><init>(Ljava/lang/String;)V

    .line 677
    iget-object v10, v8, Lo/Od;->a:Ljava/lang/String;

    .line 679
    invoke-virtual {v9, v10}, Landroid/app/RemoteInput$Builder;->setLabel(Ljava/lang/CharSequence;)Landroid/app/RemoteInput$Builder;

    .line 682
    move-result-object v9

    .line 683
    const/4 v10, 0x0

    .line 684
    invoke-virtual {v9, v10}, Landroid/app/RemoteInput$Builder;->setChoices([Ljava/lang/CharSequence;)Landroid/app/RemoteInput$Builder;

    .line 687
    move-result-object v9

    .line 688
    const/4 v10, 0x1

    .line 689
    invoke-virtual {v9, v10}, Landroid/app/RemoteInput$Builder;->setAllowFreeFormInput(Z)Landroid/app/RemoteInput$Builder;

    .line 692
    move-result-object v9

    .line 693
    iget-object v10, v8, Lo/Od;->b:Landroid/os/Bundle;

    .line 695
    invoke-virtual {v9, v10}, Landroid/app/RemoteInput$Builder;->addExtras(Landroid/os/Bundle;)Landroid/app/RemoteInput$Builder;

    .line 698
    move-result-object v9

    .line 699
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 701
    const/16 v13, 0x1a

    .line 703
    if-lt v10, v13, :cond_10

    .line 705
    iget-object v8, v8, Lo/Od;->c:Ljava/util/HashSet;

    .line 707
    invoke-virtual {v8}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 710
    move-result-object v8

    .line 711
    :goto_12
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 714
    move-result v10

    .line 715
    if-eqz v10, :cond_10

    .line 717
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 720
    move-result-object v10

    .line 721
    check-cast v10, Ljava/lang/String;

    .line 723
    invoke-static {v9, v10}, Lo/j9;->e(Landroid/app/RemoteInput$Builder;Ljava/lang/String;)V

    .line 726
    goto :goto_12

    .line 727
    :cond_10
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 729
    const/16 v10, 0x1d

    .line 731
    if-lt v8, v10, :cond_11

    .line 733
    invoke-static {v9}, Lo/v2;->g(Landroid/app/RemoteInput$Builder;)V

    .line 736
    :cond_11
    invoke-virtual {v9}, Landroid/app/RemoteInput$Builder;->build()Landroid/app/RemoteInput;

    .line 739
    move-result-object v8

    .line 740
    aput-object v8, v6, v7

    .line 742
    add-int/lit8 v7, v7, 0x1

    .line 744
    goto :goto_11

    .line 745
    :cond_12
    const/4 v0, 0x0

    .line 746
    :goto_13
    if-ge v0, v5, :cond_13

    .line 748
    aget-object v7, v6, v0

    .line 750
    invoke-virtual {v3, v7}, Landroid/app/Notification$Action$Builder;->addRemoteInput(Landroid/app/RemoteInput;)Landroid/app/Notification$Action$Builder;

    .line 753
    add-int/lit8 v0, v0, 0x1

    .line 755
    goto :goto_13

    .line 756
    :cond_13
    iget-object v0, v15, Lo/Xb;->a:Landroid/os/Bundle;

    .line 758
    if-eqz v0, :cond_14

    .line 760
    new-instance v5, Landroid/os/Bundle;

    .line 762
    invoke-direct {v5, v0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 765
    goto :goto_14

    .line 766
    :cond_14
    new-instance v5, Landroid/os/Bundle;

    .line 768
    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 771
    :goto_14
    iget-boolean v0, v15, Lo/Xb;->d:Z

    .line 773
    invoke-virtual {v5, v11, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 776
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 778
    invoke-virtual {v3, v0}, Landroid/app/Notification$Action$Builder;->setAllowGeneratedReplies(Z)Landroid/app/Notification$Action$Builder;

    .line 781
    const-string v0, "android.support.action.semanticAction"

    .line 783
    iget v7, v15, Lo/Xb;->f:I

    .line 785
    invoke-virtual {v5, v0, v7}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 788
    const/16 v8, 0x1c

    .line 790
    if-lt v6, v8, :cond_15

    .line 792
    invoke-static {v3, v7}, Lo/b6;->m(Landroid/app/Notification$Action$Builder;I)V

    .line 795
    :cond_15
    const/16 v7, 0x1d

    .line 797
    if-lt v6, v7, :cond_16

    .line 799
    invoke-static {v3}, Lo/v2;->f(Landroid/app/Notification$Action$Builder;)V

    .line 802
    :cond_16
    const/16 v0, 0x1f

    .line 804
    if-lt v6, v0, :cond_17

    .line 806
    invoke-static {v3}, Lo/ac;->a(Landroid/app/Notification$Action$Builder;)V

    .line 809
    :cond_17
    const-string v0, "android.support.action.showsUserInterface"

    .line 811
    iget-boolean v6, v15, Lo/Xb;->e:Z

    .line 813
    invoke-virtual {v5, v0, v6}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 816
    invoke-virtual {v3, v5}, Landroid/app/Notification$Action$Builder;->addExtras(Landroid/os/Bundle;)Landroid/app/Notification$Action$Builder;

    .line 819
    invoke-virtual {v3}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    .line 822
    move-result-object v0

    .line 823
    iget-object v3, v1, Lo/bc;->a:Landroid/app/Notification$Builder;

    .line 825
    invoke-virtual {v3, v0}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    .line 828
    move v8, v4

    .line 829
    move-object/from16 v6, v17

    .line 831
    move-object/from16 v4, v18

    .line 833
    move-object/from16 v3, v20

    .line 835
    const/16 v5, 0x1a

    .line 837
    const/4 v7, 0x0

    .line 838
    const/4 v9, 0x0

    .line 839
    goto/16 :goto_5

    .line 841
    :cond_18
    move-object/from16 v20, v3

    .line 843
    move-object/from16 v18, v4

    .line 845
    iget-object v0, v2, Lo/Zb;->k:Landroid/os/Bundle;

    .line 847
    if-eqz v0, :cond_19

    .line 849
    iget-object v3, v1, Lo/bc;->c:Landroid/os/Bundle;

    .line 851
    invoke-virtual {v3, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 854
    :cond_19
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 856
    iget-object v3, v1, Lo/bc;->a:Landroid/app/Notification$Builder;

    .line 858
    iget-boolean v4, v2, Lo/Zb;->i:Z

    .line 860
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    .line 863
    iget-object v3, v1, Lo/bc;->a:Landroid/app/Notification$Builder;

    .line 865
    const/4 v4, 0x0

    .line 866
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setLocalOnly(Z)Landroid/app/Notification$Builder;

    .line 869
    iget-object v3, v1, Lo/bc;->a:Landroid/app/Notification$Builder;

    .line 871
    const/4 v4, 0x0

    .line 872
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setGroup(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 875
    iget-object v3, v1, Lo/bc;->a:Landroid/app/Notification$Builder;

    .line 877
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setSortKey(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 880
    iget-object v3, v1, Lo/bc;->a:Landroid/app/Notification$Builder;

    .line 882
    const/4 v4, 0x0

    .line 883
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setGroupSummary(Z)Landroid/app/Notification$Builder;

    .line 886
    iput v4, v1, Lo/bc;->d:I

    .line 888
    iget-object v3, v1, Lo/bc;->a:Landroid/app/Notification$Builder;

    .line 890
    iget-object v4, v2, Lo/Zb;->j:Ljava/lang/String;

    .line 892
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 895
    iget-object v3, v1, Lo/bc;->a:Landroid/app/Notification$Builder;

    .line 897
    iget v4, v2, Lo/Zb;->l:I

    .line 899
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    .line 902
    iget-object v3, v1, Lo/bc;->a:Landroid/app/Notification$Builder;

    .line 904
    iget v4, v2, Lo/Zb;->m:I

    .line 906
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    .line 909
    iget-object v3, v1, Lo/bc;->a:Landroid/app/Notification$Builder;

    .line 911
    const/4 v4, 0x0

    .line 912
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setPublicVersion(Landroid/app/Notification;)Landroid/app/Notification$Builder;

    .line 915
    iget-object v3, v1, Lo/bc;->a:Landroid/app/Notification$Builder;

    .line 917
    move-object/from16 v4, v20

    .line 919
    iget-object v5, v4, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 921
    iget-object v6, v4, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    .line 923
    invoke-virtual {v3, v5, v6}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)Landroid/app/Notification$Builder;

    .line 926
    iget-object v3, v2, Lo/Zb;->r:Ljava/util/ArrayList;

    .line 928
    iget-object v5, v2, Lo/Zb;->c:Ljava/util/ArrayList;

    .line 930
    const/16 v6, 0x1c

    .line 932
    if-ge v0, v6, :cond_1e

    .line 934
    if-nez v5, :cond_1a

    .line 936
    const/4 v0, 0x0

    .line 937
    goto :goto_15

    .line 938
    :cond_1a
    new-instance v0, Ljava/util/ArrayList;

    .line 940
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 943
    move-result v6

    .line 944
    invoke-direct {v0, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 947
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 950
    move-result-object v6

    .line 951
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 954
    move-result v7

    .line 955
    if-nez v7, :cond_1d

    .line 957
    :goto_15
    if-nez v0, :cond_1b

    .line 959
    goto :goto_16

    .line 960
    :cond_1b
    if-nez v3, :cond_1c

    .line 962
    move-object v3, v0

    .line 963
    goto :goto_16

    .line 964
    :cond_1c
    new-instance v6, Lo/G2;

    .line 966
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 969
    move-result v7

    .line 970
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 973
    move-result v8

    .line 974
    add-int/2addr v8, v7

    .line 975
    invoke-direct {v6, v8}, Lo/G2;-><init>(I)V

    .line 978
    invoke-virtual {v6, v0}, Lo/G2;->addAll(Ljava/util/Collection;)Z

    .line 981
    invoke-virtual {v6, v3}, Lo/G2;->addAll(Ljava/util/Collection;)Z

    .line 984
    new-instance v3, Ljava/util/ArrayList;

    .line 986
    invoke-direct {v3, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 989
    goto :goto_16

    .line 990
    :cond_1d
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 993
    move-result-object v0

    .line 994
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 997
    new-instance v0, Ljava/lang/ClassCastException;

    .line 999
    invoke-direct {v0}, Ljava/lang/ClassCastException;-><init>()V

    .line 1002
    throw v0

    .line 1003
    :cond_1e
    :goto_16
    if-eqz v3, :cond_1f

    .line 1005
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    .line 1008
    move-result v0

    .line 1009
    if-nez v0, :cond_1f

    .line 1011
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 1014
    move-result-object v0

    .line 1015
    :goto_17
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 1018
    move-result v3

    .line 1019
    if-eqz v3, :cond_1f

    .line 1021
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1024
    move-result-object v3

    .line 1025
    check-cast v3, Ljava/lang/String;

    .line 1027
    iget-object v6, v1, Lo/bc;->a:Landroid/app/Notification$Builder;

    .line 1029
    invoke-virtual {v6, v3}, Landroid/app/Notification$Builder;->addPerson(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 1032
    goto :goto_17

    .line 1033
    :cond_1f
    iget-object v0, v2, Lo/Zb;->d:Ljava/util/ArrayList;

    .line 1035
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 1038
    move-result v3

    .line 1039
    if-lez v3, :cond_2b

    .line 1041
    iget-object v3, v2, Lo/Zb;->k:Landroid/os/Bundle;

    .line 1043
    if-nez v3, :cond_20

    .line 1045
    new-instance v3, Landroid/os/Bundle;

    .line 1047
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 1050
    iput-object v3, v2, Lo/Zb;->k:Landroid/os/Bundle;

    .line 1052
    :cond_20
    iget-object v3, v2, Lo/Zb;->k:Landroid/os/Bundle;

    .line 1054
    const-string v6, "android.car.EXTENSIONS"

    .line 1056
    invoke-virtual {v3, v6}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 1059
    move-result-object v3

    .line 1060
    if-nez v3, :cond_21

    .line 1062
    new-instance v3, Landroid/os/Bundle;

    .line 1064
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 1067
    :cond_21
    new-instance v7, Landroid/os/Bundle;

    .line 1069
    invoke-direct {v7, v3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 1072
    new-instance v8, Landroid/os/Bundle;

    .line 1074
    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 1077
    const/4 v9, 0x0

    .line 1078
    :goto_18
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 1081
    move-result v10

    .line 1082
    if-ge v9, v10, :cond_29

    .line 1084
    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 1087
    move-result-object v10

    .line 1088
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1091
    move-result-object v13

    .line 1092
    check-cast v13, Lo/Xb;

    .line 1094
    new-instance v14, Landroid/os/Bundle;

    .line 1096
    invoke-direct {v14}, Landroid/os/Bundle;-><init>()V

    .line 1099
    iget-object v15, v13, Lo/Xb;->b:Landroidx/core/graphics/drawable/IconCompat;

    .line 1101
    if-nez v15, :cond_22

    .line 1103
    iget v15, v13, Lo/Xb;->g:I

    .line 1105
    if-eqz v15, :cond_22

    .line 1107
    invoke-static {v15}, Landroidx/core/graphics/drawable/IconCompat;->a(I)Landroidx/core/graphics/drawable/IconCompat;

    .line 1110
    move-result-object v15

    .line 1111
    iput-object v15, v13, Lo/Xb;->b:Landroidx/core/graphics/drawable/IconCompat;

    .line 1113
    :cond_22
    iget-object v15, v13, Lo/Xb;->b:Landroidx/core/graphics/drawable/IconCompat;

    .line 1115
    if-eqz v15, :cond_23

    .line 1117
    invoke-virtual {v15}, Landroidx/core/graphics/drawable/IconCompat;->b()I

    .line 1120
    move-result v15

    .line 1121
    move-object/from16 v16, v0

    .line 1123
    goto :goto_19

    .line 1124
    :cond_23
    move-object/from16 v16, v0

    .line 1126
    const/4 v15, 0x0

    .line 1127
    :goto_19
    const-string v0, "icon"

    .line 1129
    invoke-virtual {v14, v0, v15}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 1132
    const-string v0, "title"

    .line 1134
    iget-object v15, v13, Lo/Xb;->h:Ljava/lang/CharSequence;

    .line 1136
    invoke-virtual {v14, v0, v15}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 1139
    const-string v0, "actionIntent"

    .line 1141
    iget-object v15, v13, Lo/Xb;->i:Landroid/app/PendingIntent;

    .line 1143
    invoke-virtual {v14, v0, v15}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1146
    iget-object v0, v13, Lo/Xb;->a:Landroid/os/Bundle;

    .line 1148
    if-eqz v0, :cond_24

    .line 1150
    new-instance v15, Landroid/os/Bundle;

    .line 1152
    invoke-direct {v15, v0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 1155
    goto :goto_1a

    .line 1156
    :cond_24
    new-instance v15, Landroid/os/Bundle;

    .line 1158
    invoke-direct {v15}, Landroid/os/Bundle;-><init>()V

    .line 1161
    :goto_1a
    iget-boolean v0, v13, Lo/Xb;->d:Z

    .line 1163
    invoke-virtual {v15, v11, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1166
    const-string v0, "extras"

    .line 1168
    invoke-virtual {v14, v0, v15}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1171
    iget-object v15, v13, Lo/Xb;->c:[Lo/Od;

    .line 1173
    if-nez v15, :cond_25

    .line 1175
    move-object/from16 v20, v4

    .line 1177
    move-object/from16 v19, v5

    .line 1179
    move-object/from16 v17, v11

    .line 1181
    move-object/from16 v22, v12

    .line 1183
    const/4 v11, 0x0

    .line 1184
    goto/16 :goto_1d

    .line 1186
    :cond_25
    move-object/from16 v17, v11

    .line 1188
    array-length v11, v15

    .line 1189
    new-array v11, v11, [Landroid/os/Bundle;

    .line 1191
    move-object/from16 v20, v4

    .line 1193
    move-object/from16 v19, v5

    .line 1195
    const/4 v4, 0x0

    .line 1196
    :goto_1b
    array-length v5, v15

    .line 1197
    if-ge v4, v5, :cond_28

    .line 1199
    aget-object v5, v15, v4

    .line 1201
    move-object/from16 v21, v15

    .line 1203
    new-instance v15, Landroid/os/Bundle;

    .line 1205
    invoke-direct {v15}, Landroid/os/Bundle;-><init>()V

    .line 1208
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1211
    const-string v1, "resultKey"

    .line 1213
    invoke-virtual {v15, v1, v12}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1216
    const-string v1, "label"

    .line 1218
    move-object/from16 v22, v12

    .line 1220
    iget-object v12, v5, Lo/Od;->a:Ljava/lang/String;

    .line 1222
    invoke-virtual {v15, v1, v12}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 1225
    const-string v1, "choices"

    .line 1227
    const/4 v12, 0x0

    .line 1228
    invoke-virtual {v15, v1, v12}, Landroid/os/Bundle;->putCharSequenceArray(Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 1231
    const-string v1, "allowFreeFormInput"

    .line 1233
    const/4 v12, 0x1

    .line 1234
    invoke-virtual {v15, v1, v12}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1237
    iget-object v1, v5, Lo/Od;->b:Landroid/os/Bundle;

    .line 1239
    invoke-virtual {v15, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1242
    iget-object v1, v5, Lo/Od;->c:Ljava/util/HashSet;

    .line 1244
    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    .line 1247
    move-result v5

    .line 1248
    if-nez v5, :cond_27

    .line 1250
    new-instance v5, Ljava/util/ArrayList;

    .line 1252
    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    .line 1255
    move-result v12

    .line 1256
    invoke-direct {v5, v12}, Ljava/util/ArrayList;-><init>(I)V

    .line 1259
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 1262
    move-result-object v1

    .line 1263
    :goto_1c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 1266
    move-result v12

    .line 1267
    if-eqz v12, :cond_26

    .line 1269
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1272
    move-result-object v12

    .line 1273
    check-cast v12, Ljava/lang/String;

    .line 1275
    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1278
    goto :goto_1c

    .line 1279
    :cond_26
    const-string v1, "allowedDataTypes"

    .line 1281
    invoke-virtual {v15, v1, v5}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1284
    :cond_27
    aput-object v15, v11, v4

    .line 1286
    add-int/lit8 v4, v4, 0x1

    .line 1288
    move-object/from16 v1, p0

    .line 1290
    move-object/from16 v15, v21

    .line 1292
    move-object/from16 v12, v22

    .line 1294
    goto :goto_1b

    .line 1295
    :cond_28
    move-object/from16 v22, v12

    .line 1297
    :goto_1d
    const-string v0, "remoteInputs"

    .line 1299
    invoke-virtual {v14, v0, v11}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 1302
    const-string v0, "showsUserInterface"

    .line 1304
    iget-boolean v1, v13, Lo/Xb;->e:Z

    .line 1306
    invoke-virtual {v14, v0, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1309
    const-string v0, "semanticAction"

    .line 1311
    iget v1, v13, Lo/Xb;->f:I

    .line 1313
    invoke-virtual {v14, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 1316
    invoke-virtual {v8, v10, v14}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1319
    add-int/lit8 v9, v9, 0x1

    .line 1321
    move-object/from16 v1, p0

    .line 1323
    move-object/from16 v0, v16

    .line 1325
    move-object/from16 v11, v17

    .line 1327
    move-object/from16 v5, v19

    .line 1329
    move-object/from16 v4, v20

    .line 1331
    move-object/from16 v12, v22

    .line 1333
    goto/16 :goto_18

    .line 1335
    :cond_29
    move-object/from16 v20, v4

    .line 1337
    move-object/from16 v19, v5

    .line 1339
    const-string v0, "invisible_actions"

    .line 1341
    invoke-virtual {v3, v0, v8}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1344
    invoke-virtual {v7, v0, v8}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1347
    iget-object v0, v2, Lo/Zb;->k:Landroid/os/Bundle;

    .line 1349
    if-nez v0, :cond_2a

    .line 1351
    new-instance v0, Landroid/os/Bundle;

    .line 1353
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1356
    iput-object v0, v2, Lo/Zb;->k:Landroid/os/Bundle;

    .line 1358
    :cond_2a
    iget-object v0, v2, Lo/Zb;->k:Landroid/os/Bundle;

    .line 1360
    invoke-virtual {v0, v6, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1363
    move-object/from16 v1, p0

    .line 1365
    iget-object v0, v1, Lo/bc;->c:Landroid/os/Bundle;

    .line 1367
    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1370
    goto :goto_1e

    .line 1371
    :cond_2b
    move-object/from16 v20, v4

    .line 1373
    move-object/from16 v19, v5

    .line 1375
    :goto_1e
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 1377
    iget-object v3, v1, Lo/bc;->a:Landroid/app/Notification$Builder;

    .line 1379
    iget-object v4, v2, Lo/Zb;->k:Landroid/os/Bundle;

    .line 1381
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    .line 1384
    iget-object v3, v1, Lo/bc;->a:Landroid/app/Notification$Builder;

    .line 1386
    const/4 v4, 0x0

    .line 1387
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setRemoteInputHistory([Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1390
    const/16 v3, 0x1a

    .line 1392
    if-lt v0, v3, :cond_2c

    .line 1394
    iget-object v3, v1, Lo/bc;->a:Landroid/app/Notification$Builder;

    .line 1396
    invoke-static {v3}, Lo/j9;->g(Landroid/app/Notification$Builder;)V

    .line 1399
    iget-object v3, v1, Lo/bc;->a:Landroid/app/Notification$Builder;

    .line 1401
    invoke-static {v3}, Lo/j9;->m(Landroid/app/Notification$Builder;)V

    .line 1404
    iget-object v3, v1, Lo/bc;->a:Landroid/app/Notification$Builder;

    .line 1406
    invoke-static {v3}, Lo/j9;->n(Landroid/app/Notification$Builder;)V

    .line 1409
    iget-object v3, v1, Lo/bc;->a:Landroid/app/Notification$Builder;

    .line 1411
    invoke-static {v3}, Lo/j9;->o(Landroid/app/Notification$Builder;)V

    .line 1414
    iget-object v3, v1, Lo/bc;->a:Landroid/app/Notification$Builder;

    .line 1416
    const/4 v4, 0x0

    .line 1417
    invoke-static {v3, v4}, Lo/j9;->i(Landroid/app/Notification$Builder;I)V

    .line 1420
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 1423
    move-result v3

    .line 1424
    if-nez v3, :cond_2c

    .line 1426
    iget-object v3, v1, Lo/bc;->a:Landroid/app/Notification$Builder;

    .line 1428
    const/4 v5, 0x0

    .line 1429
    invoke-virtual {v3, v5}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;)Landroid/app/Notification$Builder;

    .line 1432
    move-result-object v3

    .line 1433
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    .line 1436
    move-result-object v3

    .line 1437
    invoke-virtual {v3, v4, v4, v4}, Landroid/app/Notification$Builder;->setLights(III)Landroid/app/Notification$Builder;

    .line 1440
    move-result-object v3

    .line 1441
    invoke-virtual {v3, v5}, Landroid/app/Notification$Builder;->setVibrate([J)Landroid/app/Notification$Builder;

    .line 1444
    :cond_2c
    const/16 v3, 0x1c

    .line 1446
    if-lt v0, v3, :cond_2d

    .line 1448
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1451
    move-result-object v3

    .line 1452
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 1455
    move-result v4

    .line 1456
    if-nez v4, :cond_2e

    .line 1458
    :cond_2d
    const/16 v3, 0x1d

    .line 1460
    goto :goto_1f

    .line 1461
    :cond_2e
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1464
    move-result-object v0

    .line 1465
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1468
    new-instance v0, Ljava/lang/ClassCastException;

    .line 1470
    invoke-direct {v0}, Ljava/lang/ClassCastException;-><init>()V

    .line 1473
    throw v0

    .line 1474
    :goto_1f
    if-lt v0, v3, :cond_2f

    .line 1476
    iget-object v3, v1, Lo/bc;->a:Landroid/app/Notification$Builder;

    .line 1478
    iget-boolean v4, v2, Lo/Zb;->o:Z

    .line 1480
    invoke-static {v3, v4}, Lo/v2;->d(Landroid/app/Notification$Builder;Z)V

    .line 1483
    iget-object v3, v1, Lo/bc;->a:Landroid/app/Notification$Builder;

    .line 1485
    invoke-static {v3}, Lo/v2;->e(Landroid/app/Notification$Builder;)V

    .line 1488
    :cond_2f
    iget-boolean v2, v2, Lo/Zb;->q:Z

    .line 1490
    if-eqz v2, :cond_31

    .line 1492
    iget-object v2, v1, Lo/bc;->b:Lo/Zb;

    .line 1494
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1497
    const/4 v2, 0x1

    .line 1498
    iput v2, v1, Lo/bc;->d:I

    .line 1500
    iget-object v2, v1, Lo/bc;->a:Landroid/app/Notification$Builder;

    .line 1502
    const/4 v3, 0x0

    .line 1503
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setVibrate([J)Landroid/app/Notification$Builder;

    .line 1506
    iget-object v2, v1, Lo/bc;->a:Landroid/app/Notification$Builder;

    .line 1508
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;)Landroid/app/Notification$Builder;

    .line 1511
    move-object/from16 v2, v20

    .line 1513
    iget v4, v2, Landroid/app/Notification;->defaults:I

    .line 1515
    and-int/lit8 v4, v4, -0x4

    .line 1517
    iput v4, v2, Landroid/app/Notification;->defaults:I

    .line 1519
    iget-object v2, v1, Lo/bc;->a:Landroid/app/Notification$Builder;

    .line 1521
    invoke-virtual {v2, v4}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    .line 1524
    const/16 v2, 0x1a

    .line 1526
    if-lt v0, v2, :cond_31

    .line 1528
    iget-object v0, v1, Lo/bc;->b:Lo/Zb;

    .line 1530
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1533
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 1536
    move-result v0

    .line 1537
    if-eqz v0, :cond_30

    .line 1539
    iget-object v0, v1, Lo/bc;->a:Landroid/app/Notification$Builder;

    .line 1541
    const-string v2, "silent"

    .line 1543
    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setGroup(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 1546
    :cond_30
    iget-object v0, v1, Lo/bc;->a:Landroid/app/Notification$Builder;

    .line 1548
    const/4 v2, 0x1

    .line 1549
    invoke-static {v0, v2}, Lo/j9;->i(Landroid/app/Notification$Builder;I)V

    .line 1552
    :cond_31
    return-void

    .line 1553
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
