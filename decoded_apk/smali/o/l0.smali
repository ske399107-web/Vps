.class public final Lo/l0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lo/l0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 8

    .line 1
    iget v0, p0, Lo/l0;->a:I

    .line 3
    packed-switch v0, :pswitch_data_0

    .line 6
    new-instance v0, Lo/ff;

    .line 8
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 14
    move-result v1

    .line 15
    iput v1, v0, Lo/ff;->a:I

    .line 17
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 20
    move-result v1

    .line 21
    iput v1, v0, Lo/ff;->b:I

    .line 23
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 26
    move-result v1

    .line 27
    iput v1, v0, Lo/ff;->c:I

    .line 29
    if-lez v1, :cond_0

    .line 31
    new-array v1, v1, [I

    .line 33
    iput-object v1, v0, Lo/ff;->d:[I

    .line 35
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readIntArray([I)V

    .line 38
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 41
    move-result v1

    .line 42
    iput v1, v0, Lo/ff;->e:I

    .line 44
    if-lez v1, :cond_1

    .line 46
    new-array v1, v1, [I

    .line 48
    iput-object v1, v0, Lo/ff;->f:[I

    .line 50
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readIntArray([I)V

    .line 53
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 56
    move-result v1

    .line 57
    const/4 v2, 0x0

    .line 58
    const/4 v3, 0x1

    .line 59
    if-ne v1, v3, :cond_2

    .line 61
    move v1, v3

    .line 62
    goto :goto_0

    .line 63
    :cond_2
    move v1, v2

    .line 64
    :goto_0
    iput-boolean v1, v0, Lo/ff;->h:Z

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 69
    move-result v1

    .line 70
    if-ne v1, v3, :cond_3

    .line 72
    move v1, v3

    .line 73
    goto :goto_1

    .line 74
    :cond_3
    move v1, v2

    .line 75
    :goto_1
    iput-boolean v1, v0, Lo/ff;->i:Z

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 80
    move-result v1

    .line 81
    if-ne v1, v3, :cond_4

    .line 83
    move v2, v3

    .line 84
    :cond_4
    iput-boolean v2, v0, Lo/ff;->j:Z

    .line 86
    const-class v1, Lo/ef;

    .line 88
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 91
    move-result-object v1

    .line 92
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    .line 95
    move-result-object p1

    .line 96
    iput-object p1, v0, Lo/ff;->g:Ljava/util/ArrayList;

    .line 98
    return-object v0

    .line 99
    :pswitch_0
    new-instance v0, Lo/ef;

    .line 101
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 104
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 107
    move-result v1

    .line 108
    iput v1, v0, Lo/ef;->a:I

    .line 110
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 113
    move-result v1

    .line 114
    iput v1, v0, Lo/ef;->b:I

    .line 116
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 119
    move-result v1

    .line 120
    const/4 v2, 0x1

    .line 121
    if-ne v1, v2, :cond_5

    .line 123
    goto :goto_2

    .line 124
    :cond_5
    const/4 v2, 0x0

    .line 125
    :goto_2
    iput-boolean v2, v0, Lo/ef;->d:Z

    .line 127
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 130
    move-result v1

    .line 131
    if-lez v1, :cond_6

    .line 133
    new-array v1, v1, [I

    .line 135
    iput-object v1, v0, Lo/ef;->c:[I

    .line 137
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readIntArray([I)V

    .line 140
    :cond_6
    return-object v0

    .line 141
    :pswitch_1
    new-instance v0, Landroidx/versionedparcelable/ParcelImpl;

    .line 143
    invoke-direct {v0, p1}, Landroidx/versionedparcelable/ParcelImpl;-><init>(Landroid/os/Parcel;)V

    .line 146
    return-object v0

    .line 147
    :pswitch_2
    new-instance v0, Lo/Sb;

    .line 149
    invoke-direct {v0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 152
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 155
    move-result p1

    .line 156
    iput p1, v0, Lo/Sb;->a:I

    .line 158
    return-object v0

    .line 159
    :pswitch_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 162
    move-result v0

    .line 163
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 166
    move-result p1

    .line 167
    invoke-static {v0, p1}, Lo/Ib;->a(II)Lo/Ib;

    .line 170
    move-result-object p1

    .line 171
    return-object p1

    .line 172
    :pswitch_4
    new-instance v0, Lo/Xa;

    .line 174
    invoke-direct {v0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 177
    const-class v1, Lo/Xa;

    .line 179
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 182
    move-result-object v1

    .line 183
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    .line 186
    move-result-object p1

    .line 187
    check-cast p1, Ljava/lang/Integer;

    .line 189
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 192
    move-result p1

    .line 193
    iput p1, v0, Lo/Xa;->a:I

    .line 195
    return-object v0

    .line 196
    :pswitch_5
    new-instance v0, Lo/Z9;

    .line 198
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 201
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 204
    move-result v1

    .line 205
    iput v1, v0, Lo/Z9;->a:I

    .line 207
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 210
    move-result v1

    .line 211
    iput v1, v0, Lo/Z9;->b:I

    .line 213
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 216
    move-result p1

    .line 217
    const/4 v1, 0x1

    .line 218
    if-ne p1, v1, :cond_7

    .line 220
    goto :goto_3

    .line 221
    :cond_7
    const/4 v1, 0x0

    .line 222
    :goto_3
    iput-boolean v1, v0, Lo/Z9;->c:Z

    .line 224
    return-object v0

    .line 225
    :pswitch_6
    new-instance v0, Lo/n8;

    .line 227
    invoke-direct {v0, p1}, Lo/n8;-><init>(Landroid/os/Parcel;)V

    .line 230
    return-object v0

    .line 231
    :pswitch_7
    new-instance v0, Lo/j8;

    .line 233
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 236
    const/4 v1, 0x0

    .line 237
    iput-object v1, v0, Lo/j8;->e:Ljava/lang/String;

    .line 239
    new-instance v1, Ljava/util/ArrayList;

    .line 241
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 244
    iput-object v1, v0, Lo/j8;->f:Ljava/util/ArrayList;

    .line 246
    new-instance v1, Ljava/util/ArrayList;

    .line 248
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 251
    iput-object v1, v0, Lo/j8;->g:Ljava/util/ArrayList;

    .line 253
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    .line 256
    move-result-object v1

    .line 257
    iput-object v1, v0, Lo/j8;->a:Ljava/util/ArrayList;

    .line 259
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    .line 262
    move-result-object v1

    .line 263
    iput-object v1, v0, Lo/j8;->b:Ljava/util/ArrayList;

    .line 265
    sget-object v1, Lo/N2;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 267
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    .line 270
    move-result-object v1

    .line 271
    check-cast v1, [Lo/N2;

    .line 273
    iput-object v1, v0, Lo/j8;->c:[Lo/N2;

    .line 275
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 278
    move-result v1

    .line 279
    iput v1, v0, Lo/j8;->d:I

    .line 281
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 284
    move-result-object v1

    .line 285
    iput-object v1, v0, Lo/j8;->e:Ljava/lang/String;

    .line 287
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    .line 290
    move-result-object v1

    .line 291
    iput-object v1, v0, Lo/j8;->f:Ljava/util/ArrayList;

    .line 293
    sget-object v1, Lo/O2;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 295
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    .line 298
    move-result-object v1

    .line 299
    iput-object v1, v0, Lo/j8;->g:Ljava/util/ArrayList;

    .line 301
    sget-object v1, Lo/f8;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 303
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    .line 306
    move-result-object p1

    .line 307
    iput-object p1, v0, Lo/j8;->h:Ljava/util/ArrayList;

    .line 309
    return-object v0

    .line 310
    :pswitch_8
    new-instance v0, Lo/f8;

    .line 312
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 315
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 318
    move-result-object v1

    .line 319
    iput-object v1, v0, Lo/f8;->a:Ljava/lang/String;

    .line 321
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 324
    move-result p1

    .line 325
    iput p1, v0, Lo/f8;->b:I

    .line 327
    return-object v0

    .line 328
    :pswitch_9
    new-instance v0, Lo/p5;

    .line 330
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    .line 333
    move-result-wide v1

    .line 334
    invoke-direct {v0, v1, v2}, Lo/p5;-><init>(J)V

    .line 337
    return-object v0

    .line 338
    :pswitch_a
    const-class v0, Lo/Ib;

    .line 340
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 343
    move-result-object v1

    .line 344
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    .line 347
    move-result-object v1

    .line 348
    move-object v3, v1

    .line 349
    check-cast v3, Lo/Ib;

    .line 351
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 354
    move-result-object v1

    .line 355
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    .line 358
    move-result-object v1

    .line 359
    move-object v4, v1

    .line 360
    check-cast v4, Lo/Ib;

    .line 362
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 365
    move-result-object v0

    .line 366
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    .line 369
    move-result-object v0

    .line 370
    move-object v6, v0

    .line 371
    check-cast v6, Lo/Ib;

    .line 373
    const-class v0, Lo/p5;

    .line 375
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 378
    move-result-object v0

    .line 379
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    .line 382
    move-result-object v0

    .line 383
    move-object v5, v0

    .line 384
    check-cast v5, Lo/p5;

    .line 386
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 389
    move-result v7

    .line 390
    new-instance p1, Lo/n3;

    .line 392
    move-object v2, p1

    .line 393
    invoke-direct/range {v2 .. v7}, Lo/n3;-><init>(Lo/Ib;Lo/Ib;Lo/p5;Lo/Ib;I)V

    .line 396
    return-object p1

    .line 397
    :pswitch_b
    new-instance v0, Lo/V2;

    .line 399
    invoke-direct {v0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 402
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    .line 405
    move-result v1

    .line 406
    iput v1, v0, Lo/V2;->a:F

    .line 408
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    .line 411
    move-result v1

    .line 412
    iput v1, v0, Lo/V2;->b:F

    .line 414
    new-instance v1, Ljava/util/ArrayList;

    .line 416
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 419
    iput-object v1, v0, Lo/V2;->c:Ljava/util/ArrayList;

    .line 421
    const-class v2, Ljava/lang/Float;

    .line 423
    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 426
    move-result-object v2

    .line 427
    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 430
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    .line 433
    move-result v1

    .line 434
    iput v1, v0, Lo/V2;->d:F

    .line 436
    invoke-virtual {p1}, Landroid/os/Parcel;->createBooleanArray()[Z

    .line 439
    move-result-object p1

    .line 440
    const/4 v1, 0x0

    .line 441
    aget-boolean p1, p1, v1

    .line 443
    iput-boolean p1, v0, Lo/V2;->e:Z

    .line 445
    return-object v0

    .line 446
    :pswitch_c
    new-instance v0, Lo/O2;

    .line 448
    invoke-direct {v0, p1}, Lo/O2;-><init>(Landroid/os/Parcel;)V

    .line 451
    return-object v0

    .line 452
    :pswitch_d
    new-instance v0, Lo/N2;

    .line 454
    invoke-direct {v0, p1}, Lo/N2;-><init>(Landroid/os/Parcel;)V

    .line 457
    return-object v0

    .line 458
    :pswitch_e
    new-instance v0, Lo/W1;

    .line 460
    invoke-direct {v0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 463
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    .line 466
    move-result p1

    .line 467
    if-eqz p1, :cond_8

    .line 469
    const/4 p1, 0x1

    .line 470
    goto :goto_4

    .line 471
    :cond_8
    const/4 p1, 0x0

    .line 472
    :goto_4
    iput-boolean p1, v0, Lo/W1;->a:Z

    .line 474
    return-object v0

    .line 475
    :pswitch_f
    new-instance v0, Lo/m0;

    .line 477
    invoke-direct {v0, p1}, Lo/m0;-><init>(Landroid/os/Parcel;)V

    .line 480
    return-object v0

    .line 481
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_f
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

.method public final newArray(I)[Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, Lo/l0;->a:I

    .line 3
    packed-switch v0, :pswitch_data_0

    .line 6
    new-array p1, p1, [Lo/ff;

    .line 8
    return-object p1

    .line 9
    :pswitch_0
    new-array p1, p1, [Lo/ef;

    .line 11
    return-object p1

    .line 12
    :pswitch_1
    new-array p1, p1, [Landroidx/versionedparcelable/ParcelImpl;

    .line 14
    return-object p1

    .line 15
    :pswitch_2
    new-array p1, p1, [Lo/Sb;

    .line 17
    return-object p1

    .line 18
    :pswitch_3
    new-array p1, p1, [Lo/Ib;

    .line 20
    return-object p1

    .line 21
    :pswitch_4
    new-array p1, p1, [Lo/Xa;

    .line 23
    return-object p1

    .line 24
    :pswitch_5
    new-array p1, p1, [Lo/Z9;

    .line 26
    return-object p1

    .line 27
    :pswitch_6
    new-array p1, p1, [Lo/n8;

    .line 29
    return-object p1

    .line 30
    :pswitch_7
    new-array p1, p1, [Lo/j8;

    .line 32
    return-object p1

    .line 33
    :pswitch_8
    new-array p1, p1, [Lo/f8;

    .line 35
    return-object p1

    .line 36
    :pswitch_9
    new-array p1, p1, [Lo/p5;

    .line 38
    return-object p1

    .line 39
    :pswitch_a
    new-array p1, p1, [Lo/n3;

    .line 41
    return-object p1

    .line 42
    :pswitch_b
    new-array p1, p1, [Lo/V2;

    .line 44
    return-object p1

    .line 45
    :pswitch_c
    new-array p1, p1, [Lo/O2;

    .line 47
    return-object p1

    .line 48
    :pswitch_d
    new-array p1, p1, [Lo/N2;

    .line 50
    return-object p1

    .line 51
    :pswitch_e
    new-array p1, p1, [Lo/W1;

    .line 53
    return-object p1

    .line 54
    :pswitch_f
    new-array p1, p1, [Lo/m0;

    .line 56
    return-object p1

    .line 57
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_f
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
