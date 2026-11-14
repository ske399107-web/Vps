.class public final Lo/K4;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final d:[I

.field public static final e:Landroid/util/SparseIntArray;

.field public static final f:Landroid/util/SparseIntArray;


# instance fields
.field public final a:Ljava/util/HashMap;

.field public final b:Z

.field public final c:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x4

    .line 3
    const/16 v2, 0x8

    .line 5
    filled-new-array {v0, v1, v2}, [I

    .line 8
    move-result-object v0

    .line 9
    sput-object v0, Lo/K4;->d:[I

    .line 11
    new-instance v0, Landroid/util/SparseIntArray;

    .line 13
    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 16
    sput-object v0, Lo/K4;->e:Landroid/util/SparseIntArray;

    .line 18
    new-instance v3, Landroid/util/SparseIntArray;

    .line 20
    invoke-direct {v3}, Landroid/util/SparseIntArray;-><init>()V

    .line 23
    sput-object v3, Lo/K4;->f:Landroid/util/SparseIntArray;

    .line 25
    const/16 v4, 0x19

    .line 27
    const/16 v5, 0x52

    .line 29
    invoke-virtual {v0, v5, v4}, Landroid/util/SparseIntArray;->append(II)V

    .line 32
    const/16 v4, 0x1a

    .line 34
    const/16 v6, 0x53

    .line 36
    invoke-virtual {v0, v6, v4}, Landroid/util/SparseIntArray;->append(II)V

    .line 39
    const/16 v4, 0x1d

    .line 41
    const/16 v7, 0x55

    .line 43
    invoke-virtual {v0, v7, v4}, Landroid/util/SparseIntArray;->append(II)V

    .line 46
    const/16 v4, 0x56

    .line 48
    const/16 v8, 0x1e

    .line 50
    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    .line 53
    const/16 v4, 0x5c

    .line 55
    const/16 v8, 0x24

    .line 57
    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    .line 60
    const/16 v4, 0x5b

    .line 62
    const/16 v8, 0x23

    .line 64
    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    .line 67
    const/16 v4, 0x3f

    .line 69
    invoke-virtual {v0, v4, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 72
    const/16 v4, 0x3e

    .line 74
    const/4 v8, 0x3

    .line 75
    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    .line 78
    const/4 v4, 0x1

    .line 79
    const/16 v8, 0x3a

    .line 81
    invoke-virtual {v0, v8, v4}, Landroid/util/SparseIntArray;->append(II)V

    .line 84
    const/16 v4, 0x5b

    .line 86
    const/16 v9, 0x3c

    .line 88
    invoke-virtual {v0, v9, v4}, Landroid/util/SparseIntArray;->append(II)V

    .line 91
    const/16 v4, 0x5c

    .line 93
    const/16 v10, 0x3b

    .line 95
    invoke-virtual {v0, v10, v4}, Landroid/util/SparseIntArray;->append(II)V

    .line 98
    const/16 v4, 0x65

    .line 100
    const/4 v11, 0x6

    .line 101
    invoke-virtual {v0, v4, v11}, Landroid/util/SparseIntArray;->append(II)V

    .line 104
    const/16 v4, 0x66

    .line 106
    const/4 v12, 0x7

    .line 107
    invoke-virtual {v0, v4, v12}, Landroid/util/SparseIntArray;->append(II)V

    .line 110
    const/16 v4, 0x11

    .line 112
    const/16 v13, 0x46

    .line 114
    invoke-virtual {v0, v13, v4}, Landroid/util/SparseIntArray;->append(II)V

    .line 117
    const/16 v4, 0x12

    .line 119
    const/16 v14, 0x47

    .line 121
    invoke-virtual {v0, v14, v4}, Landroid/util/SparseIntArray;->append(II)V

    .line 124
    const/16 v4, 0x13

    .line 126
    const/16 v15, 0x48

    .line 128
    invoke-virtual {v0, v15, v4}, Landroid/util/SparseIntArray;->append(II)V

    .line 131
    const/16 v4, 0x63

    .line 133
    const/16 v7, 0x36

    .line 135
    invoke-virtual {v0, v7, v4}, Landroid/util/SparseIntArray;->append(II)V

    .line 138
    const/4 v4, 0x0

    .line 139
    const/16 v6, 0x1b

    .line 141
    invoke-virtual {v0, v4, v6}, Landroid/util/SparseIntArray;->append(II)V

    .line 144
    const/16 v4, 0x20

    .line 146
    const/16 v6, 0x57

    .line 148
    invoke-virtual {v0, v6, v4}, Landroid/util/SparseIntArray;->append(II)V

    .line 151
    const/16 v4, 0x58

    .line 153
    const/16 v5, 0x21

    .line 155
    invoke-virtual {v0, v4, v5}, Landroid/util/SparseIntArray;->append(II)V

    .line 158
    const/16 v4, 0xa

    .line 160
    const/16 v5, 0x45

    .line 162
    invoke-virtual {v0, v5, v4}, Landroid/util/SparseIntArray;->append(II)V

    .line 165
    const/16 v4, 0x9

    .line 167
    const/16 v15, 0x44

    .line 169
    invoke-virtual {v0, v15, v4}, Landroid/util/SparseIntArray;->append(II)V

    .line 172
    const/16 v4, 0x6a

    .line 174
    const/16 v14, 0xd

    .line 176
    invoke-virtual {v0, v4, v14}, Landroid/util/SparseIntArray;->append(II)V

    .line 179
    const/16 v4, 0x6d

    .line 181
    const/16 v13, 0x10

    .line 183
    invoke-virtual {v0, v4, v13}, Landroid/util/SparseIntArray;->append(II)V

    .line 186
    const/16 v4, 0x6b

    .line 188
    const/16 v5, 0xe

    .line 190
    invoke-virtual {v0, v4, v5}, Landroid/util/SparseIntArray;->append(II)V

    .line 193
    const/16 v4, 0x68

    .line 195
    const/16 v15, 0xb

    .line 197
    invoke-virtual {v0, v4, v15}, Landroid/util/SparseIntArray;->append(II)V

    .line 200
    const/16 v4, 0x6c

    .line 202
    const/16 v15, 0xf

    .line 204
    invoke-virtual {v0, v4, v15}, Landroid/util/SparseIntArray;->append(II)V

    .line 207
    const/16 v4, 0x69

    .line 209
    const/16 v10, 0xc

    .line 211
    invoke-virtual {v0, v4, v10}, Landroid/util/SparseIntArray;->append(II)V

    .line 214
    const/16 v4, 0x28

    .line 216
    const/16 v10, 0x5f

    .line 218
    invoke-virtual {v0, v10, v4}, Landroid/util/SparseIntArray;->append(II)V

    .line 221
    const/16 v4, 0x50

    .line 223
    const/16 v8, 0x27

    .line 225
    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    .line 228
    const/16 v4, 0x4f

    .line 230
    const/16 v8, 0x29

    .line 232
    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    .line 235
    const/16 v4, 0x5e

    .line 237
    const/16 v8, 0x2a

    .line 239
    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    .line 242
    const/16 v4, 0x4e

    .line 244
    const/16 v8, 0x14

    .line 246
    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    .line 249
    const/16 v4, 0x5d

    .line 251
    const/16 v8, 0x25

    .line 253
    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    .line 256
    const/16 v4, 0x43

    .line 258
    const/4 v8, 0x5

    .line 259
    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    .line 262
    const/16 v4, 0x51

    .line 264
    invoke-virtual {v0, v4, v6}, Landroid/util/SparseIntArray;->append(II)V

    .line 267
    const/16 v4, 0x5a

    .line 269
    invoke-virtual {v0, v4, v6}, Landroid/util/SparseIntArray;->append(II)V

    .line 272
    const/16 v4, 0x54

    .line 274
    invoke-virtual {v0, v4, v6}, Landroid/util/SparseIntArray;->append(II)V

    .line 277
    const/16 v4, 0x3d

    .line 279
    invoke-virtual {v0, v4, v6}, Landroid/util/SparseIntArray;->append(II)V

    .line 282
    const/16 v4, 0x39

    .line 284
    invoke-virtual {v0, v4, v6}, Landroid/util/SparseIntArray;->append(II)V

    .line 287
    const/4 v4, 0x5

    .line 288
    const/16 v8, 0x18

    .line 290
    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    .line 293
    const/16 v4, 0x1c

    .line 295
    invoke-virtual {v0, v12, v4}, Landroid/util/SparseIntArray;->append(II)V

    .line 298
    const/16 v4, 0x17

    .line 300
    const/16 v8, 0x1f

    .line 302
    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    .line 305
    const/16 v4, 0x18

    .line 307
    invoke-virtual {v0, v4, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 310
    const/16 v4, 0x22

    .line 312
    invoke-virtual {v0, v11, v4}, Landroid/util/SparseIntArray;->append(II)V

    .line 315
    const/4 v4, 0x2

    .line 316
    invoke-virtual {v0, v2, v4}, Landroid/util/SparseIntArray;->append(II)V

    .line 319
    const/4 v4, 0x3

    .line 320
    const/16 v8, 0x17

    .line 322
    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    .line 325
    const/16 v4, 0x15

    .line 327
    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->append(II)V

    .line 330
    const/16 v4, 0x60

    .line 332
    invoke-virtual {v0, v4, v10}, Landroid/util/SparseIntArray;->append(II)V

    .line 335
    const/16 v4, 0x49

    .line 337
    const/16 v8, 0x60

    .line 339
    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    .line 342
    const/4 v4, 0x2

    .line 343
    const/16 v8, 0x16

    .line 345
    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    .line 348
    const/16 v4, 0x2b

    .line 350
    invoke-virtual {v0, v14, v4}, Landroid/util/SparseIntArray;->append(II)V

    .line 353
    const/16 v4, 0x1a

    .line 355
    const/16 v8, 0x2c

    .line 357
    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    .line 360
    const/16 v4, 0x15

    .line 362
    const/16 v8, 0x2d

    .line 364
    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    .line 367
    const/16 v4, 0x16

    .line 369
    const/16 v8, 0x2e

    .line 371
    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    .line 374
    const/16 v4, 0x14

    .line 376
    invoke-virtual {v0, v4, v9}, Landroid/util/SparseIntArray;->append(II)V

    .line 379
    const/16 v4, 0x12

    .line 381
    const/16 v8, 0x2f

    .line 383
    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    .line 386
    const/16 v4, 0x13

    .line 388
    const/16 v8, 0x30

    .line 390
    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    .line 393
    const/16 v4, 0x31

    .line 395
    invoke-virtual {v0, v5, v4}, Landroid/util/SparseIntArray;->append(II)V

    .line 398
    const/16 v4, 0x32

    .line 400
    invoke-virtual {v0, v15, v4}, Landroid/util/SparseIntArray;->append(II)V

    .line 403
    const/16 v4, 0x33

    .line 405
    invoke-virtual {v0, v13, v4}, Landroid/util/SparseIntArray;->append(II)V

    .line 408
    const/16 v4, 0x11

    .line 410
    const/16 v8, 0x34

    .line 412
    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    .line 415
    const/16 v4, 0x19

    .line 417
    const/16 v8, 0x35

    .line 419
    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    .line 422
    const/16 v4, 0x61

    .line 424
    invoke-virtual {v0, v4, v7}, Landroid/util/SparseIntArray;->append(II)V

    .line 427
    const/16 v4, 0x4a

    .line 429
    const/16 v8, 0x37

    .line 431
    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    .line 434
    const/16 v4, 0x62

    .line 436
    const/16 v8, 0x38

    .line 438
    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    .line 441
    const/16 v4, 0x4b

    .line 443
    const/16 v8, 0x39

    .line 445
    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    .line 448
    const/16 v4, 0x63

    .line 450
    const/16 v8, 0x3a

    .line 452
    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    .line 455
    const/16 v4, 0x4c

    .line 457
    const/16 v8, 0x3b

    .line 459
    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    .line 462
    const/16 v4, 0x40

    .line 464
    const/16 v8, 0x3d

    .line 466
    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    .line 469
    const/16 v4, 0x42

    .line 471
    const/16 v8, 0x3e

    .line 473
    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    .line 476
    const/16 v4, 0x41

    .line 478
    const/16 v8, 0x3f

    .line 480
    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    .line 483
    const/16 v4, 0x1c

    .line 485
    const/16 v8, 0x40

    .line 487
    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    .line 490
    const/16 v4, 0x79

    .line 492
    const/16 v8, 0x41

    .line 494
    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    .line 497
    const/16 v4, 0x23

    .line 499
    const/16 v8, 0x42

    .line 501
    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    .line 504
    const/16 v4, 0x7a

    .line 506
    const/16 v8, 0x43

    .line 508
    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    .line 511
    const/16 v4, 0x71

    .line 513
    const/16 v8, 0x4f

    .line 515
    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    .line 518
    const/4 v4, 0x1

    .line 519
    const/16 v8, 0x26

    .line 521
    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    .line 524
    const/16 v4, 0x70

    .line 526
    const/16 v8, 0x44

    .line 528
    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    .line 531
    const/16 v4, 0x64

    .line 533
    const/16 v8, 0x45

    .line 535
    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    .line 538
    const/16 v4, 0x4d

    .line 540
    const/16 v8, 0x46

    .line 542
    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    .line 545
    const/16 v4, 0x6f

    .line 547
    const/16 v8, 0x61

    .line 549
    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    .line 552
    const/16 v4, 0x20

    .line 554
    const/16 v8, 0x47

    .line 556
    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    .line 559
    const/16 v4, 0x1e

    .line 561
    const/16 v8, 0x48

    .line 563
    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    .line 566
    const/16 v4, 0x1f

    .line 568
    const/16 v8, 0x49

    .line 570
    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    .line 573
    const/16 v4, 0x21

    .line 575
    const/16 v8, 0x4a

    .line 577
    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    .line 580
    const/16 v4, 0x1d

    .line 582
    const/16 v8, 0x4b

    .line 584
    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    .line 587
    const/16 v4, 0x72

    .line 589
    const/16 v8, 0x4c

    .line 591
    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    .line 594
    const/16 v4, 0x59

    .line 596
    const/16 v8, 0x4d

    .line 598
    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    .line 601
    const/16 v4, 0x7b

    .line 603
    const/16 v8, 0x4e

    .line 605
    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    .line 608
    const/16 v4, 0x38

    .line 610
    const/16 v8, 0x50

    .line 612
    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    .line 615
    const/16 v4, 0x37

    .line 617
    const/16 v8, 0x51

    .line 619
    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    .line 622
    const/16 v4, 0x74

    .line 624
    const/16 v8, 0x52

    .line 626
    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    .line 629
    const/16 v4, 0x78

    .line 631
    const/16 v8, 0x53

    .line 633
    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    .line 636
    const/16 v4, 0x77

    .line 638
    const/16 v8, 0x54

    .line 640
    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    .line 643
    const/16 v4, 0x76

    .line 645
    const/16 v8, 0x55

    .line 647
    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    .line 650
    const/16 v4, 0x75

    .line 652
    const/16 v7, 0x56

    .line 654
    invoke-virtual {v0, v4, v7}, Landroid/util/SparseIntArray;->append(II)V

    .line 657
    invoke-virtual {v3, v8, v11}, Landroid/util/SparseIntArray;->append(II)V

    .line 660
    invoke-virtual {v3, v8, v12}, Landroid/util/SparseIntArray;->append(II)V

    .line 663
    const/4 v0, 0x0

    .line 664
    const/16 v4, 0x1b

    .line 666
    invoke-virtual {v3, v0, v4}, Landroid/util/SparseIntArray;->append(II)V

    .line 669
    const/16 v0, 0x59

    .line 671
    invoke-virtual {v3, v0, v14}, Landroid/util/SparseIntArray;->append(II)V

    .line 674
    const/16 v0, 0x5c

    .line 676
    invoke-virtual {v3, v0, v13}, Landroid/util/SparseIntArray;->append(II)V

    .line 679
    const/16 v0, 0x5a

    .line 681
    invoke-virtual {v3, v0, v5}, Landroid/util/SparseIntArray;->append(II)V

    .line 684
    const/16 v0, 0xb

    .line 686
    invoke-virtual {v3, v6, v0}, Landroid/util/SparseIntArray;->append(II)V

    .line 689
    const/16 v0, 0x5b

    .line 691
    invoke-virtual {v3, v0, v15}, Landroid/util/SparseIntArray;->append(II)V

    .line 694
    const/16 v0, 0x58

    .line 696
    const/16 v4, 0xc

    .line 698
    invoke-virtual {v3, v0, v4}, Landroid/util/SparseIntArray;->append(II)V

    .line 701
    const/16 v0, 0x4e

    .line 703
    const/16 v4, 0x28

    .line 705
    invoke-virtual {v3, v0, v4}, Landroid/util/SparseIntArray;->append(II)V

    .line 708
    const/16 v0, 0x27

    .line 710
    const/16 v4, 0x47

    .line 712
    invoke-virtual {v3, v4, v0}, Landroid/util/SparseIntArray;->append(II)V

    .line 715
    const/16 v0, 0x29

    .line 717
    const/16 v4, 0x46

    .line 719
    invoke-virtual {v3, v4, v0}, Landroid/util/SparseIntArray;->append(II)V

    .line 722
    const/16 v0, 0x4d

    .line 724
    const/16 v4, 0x2a

    .line 726
    invoke-virtual {v3, v0, v4}, Landroid/util/SparseIntArray;->append(II)V

    .line 729
    const/16 v0, 0x14

    .line 731
    const/16 v4, 0x45

    .line 733
    invoke-virtual {v3, v4, v0}, Landroid/util/SparseIntArray;->append(II)V

    .line 736
    const/16 v0, 0x4c

    .line 738
    const/16 v4, 0x25

    .line 740
    invoke-virtual {v3, v0, v4}, Landroid/util/SparseIntArray;->append(II)V

    .line 743
    const/4 v0, 0x5

    .line 744
    invoke-virtual {v3, v9, v0}, Landroid/util/SparseIntArray;->append(II)V

    .line 747
    const/16 v0, 0x48

    .line 749
    invoke-virtual {v3, v0, v6}, Landroid/util/SparseIntArray;->append(II)V

    .line 752
    const/16 v0, 0x4b

    .line 754
    invoke-virtual {v3, v0, v6}, Landroid/util/SparseIntArray;->append(II)V

    .line 757
    const/16 v0, 0x49

    .line 759
    invoke-virtual {v3, v0, v6}, Landroid/util/SparseIntArray;->append(II)V

    .line 762
    const/16 v0, 0x39

    .line 764
    invoke-virtual {v3, v0, v6}, Landroid/util/SparseIntArray;->append(II)V

    .line 767
    const/16 v0, 0x38

    .line 769
    invoke-virtual {v3, v0, v6}, Landroid/util/SparseIntArray;->append(II)V

    .line 772
    const/4 v0, 0x5

    .line 773
    const/16 v4, 0x18

    .line 775
    invoke-virtual {v3, v0, v4}, Landroid/util/SparseIntArray;->append(II)V

    .line 778
    const/16 v0, 0x1c

    .line 780
    invoke-virtual {v3, v12, v0}, Landroid/util/SparseIntArray;->append(II)V

    .line 783
    const/16 v0, 0x17

    .line 785
    const/16 v4, 0x1f

    .line 787
    invoke-virtual {v3, v0, v4}, Landroid/util/SparseIntArray;->append(II)V

    .line 790
    const/16 v0, 0x18

    .line 792
    invoke-virtual {v3, v0, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 795
    const/16 v0, 0x22

    .line 797
    invoke-virtual {v3, v11, v0}, Landroid/util/SparseIntArray;->append(II)V

    .line 800
    const/4 v0, 0x2

    .line 801
    invoke-virtual {v3, v2, v0}, Landroid/util/SparseIntArray;->append(II)V

    .line 804
    const/4 v0, 0x3

    .line 805
    const/16 v2, 0x17

    .line 807
    invoke-virtual {v3, v0, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 810
    const/16 v0, 0x15

    .line 812
    invoke-virtual {v3, v1, v0}, Landroid/util/SparseIntArray;->append(II)V

    .line 815
    const/16 v0, 0x4f

    .line 817
    invoke-virtual {v3, v0, v10}, Landroid/util/SparseIntArray;->append(II)V

    .line 820
    const/16 v0, 0x40

    .line 822
    const/16 v1, 0x60

    .line 824
    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 827
    const/4 v0, 0x2

    .line 828
    const/16 v1, 0x16

    .line 830
    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 833
    const/16 v0, 0x2b

    .line 835
    invoke-virtual {v3, v14, v0}, Landroid/util/SparseIntArray;->append(II)V

    .line 838
    const/16 v0, 0x1a

    .line 840
    const/16 v1, 0x2c

    .line 842
    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 845
    const/16 v0, 0x15

    .line 847
    const/16 v1, 0x2d

    .line 849
    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 852
    const/16 v0, 0x16

    .line 854
    const/16 v1, 0x2e

    .line 856
    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 859
    const/16 v0, 0x14

    .line 861
    invoke-virtual {v3, v0, v9}, Landroid/util/SparseIntArray;->append(II)V

    .line 864
    const/16 v0, 0x12

    .line 866
    const/16 v1, 0x2f

    .line 868
    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 871
    const/16 v0, 0x13

    .line 873
    const/16 v1, 0x30

    .line 875
    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 878
    const/16 v0, 0x31

    .line 880
    invoke-virtual {v3, v5, v0}, Landroid/util/SparseIntArray;->append(II)V

    .line 883
    const/16 v0, 0x32

    .line 885
    invoke-virtual {v3, v15, v0}, Landroid/util/SparseIntArray;->append(II)V

    .line 888
    const/16 v0, 0x33

    .line 890
    invoke-virtual {v3, v13, v0}, Landroid/util/SparseIntArray;->append(II)V

    .line 893
    const/16 v0, 0x11

    .line 895
    const/16 v1, 0x34

    .line 897
    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 900
    const/16 v0, 0x19

    .line 902
    const/16 v1, 0x35

    .line 904
    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 907
    const/16 v0, 0x50

    .line 909
    const/16 v1, 0x36

    .line 911
    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 914
    const/16 v0, 0x41

    .line 916
    const/16 v1, 0x37

    .line 918
    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 921
    const/16 v0, 0x51

    .line 923
    const/16 v1, 0x38

    .line 925
    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 928
    const/16 v0, 0x42

    .line 930
    const/16 v1, 0x39

    .line 932
    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 935
    const/16 v0, 0x52

    .line 937
    const/16 v1, 0x3a

    .line 939
    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 942
    const/16 v0, 0x43

    .line 944
    const/16 v2, 0x3b

    .line 946
    invoke-virtual {v3, v0, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 949
    const/16 v0, 0x3e

    .line 951
    invoke-virtual {v3, v2, v0}, Landroid/util/SparseIntArray;->append(II)V

    .line 954
    const/16 v0, 0x3f

    .line 956
    invoke-virtual {v3, v1, v0}, Landroid/util/SparseIntArray;->append(II)V

    .line 959
    const/16 v0, 0x1c

    .line 961
    const/16 v1, 0x40

    .line 963
    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 966
    const/16 v0, 0x69

    .line 968
    const/16 v1, 0x41

    .line 970
    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 973
    const/16 v0, 0x22

    .line 975
    const/16 v1, 0x42

    .line 977
    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 980
    const/16 v0, 0x6a

    .line 982
    const/16 v1, 0x43

    .line 984
    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 987
    const/16 v0, 0x60

    .line 989
    const/16 v1, 0x4f

    .line 991
    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 994
    const/4 v0, 0x1

    .line 995
    const/16 v1, 0x26

    .line 997
    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 1000
    const/16 v0, 0x61

    .line 1002
    const/16 v1, 0x62

    .line 1004
    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 1007
    const/16 v0, 0x44

    .line 1009
    invoke-virtual {v3, v10, v0}, Landroid/util/SparseIntArray;->append(II)V

    .line 1012
    const/16 v1, 0x53

    .line 1014
    const/16 v2, 0x45

    .line 1016
    invoke-virtual {v3, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 1019
    const/16 v1, 0x46

    .line 1021
    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 1024
    const/16 v0, 0x20

    .line 1026
    const/16 v1, 0x47

    .line 1028
    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 1031
    const/16 v0, 0x1e

    .line 1033
    const/16 v1, 0x48

    .line 1035
    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 1038
    const/16 v0, 0x1f

    .line 1040
    const/16 v1, 0x49

    .line 1042
    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 1045
    const/16 v0, 0x21

    .line 1047
    const/16 v1, 0x4a

    .line 1049
    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 1052
    const/16 v0, 0x1d

    .line 1054
    const/16 v1, 0x4b

    .line 1056
    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 1059
    const/16 v0, 0x62

    .line 1061
    const/16 v1, 0x4c

    .line 1063
    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 1066
    const/16 v0, 0x4a

    .line 1068
    const/16 v1, 0x4d

    .line 1070
    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 1073
    const/16 v0, 0x6b

    .line 1075
    const/16 v1, 0x4e

    .line 1077
    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 1080
    const/16 v0, 0x37

    .line 1082
    const/16 v1, 0x50

    .line 1084
    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 1087
    const/16 v0, 0x51

    .line 1089
    const/16 v1, 0x36

    .line 1091
    invoke-virtual {v3, v1, v0}, Landroid/util/SparseIntArray;->append(II)V

    .line 1094
    const/16 v0, 0x64

    .line 1096
    const/16 v1, 0x52

    .line 1098
    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 1101
    const/16 v0, 0x68

    .line 1103
    const/16 v1, 0x53

    .line 1105
    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 1108
    const/16 v0, 0x67

    .line 1110
    const/16 v1, 0x54

    .line 1112
    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 1115
    const/16 v0, 0x66

    .line 1117
    const/16 v1, 0x55

    .line 1119
    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 1122
    const/16 v0, 0x65

    .line 1124
    const/16 v1, 0x56

    .line 1126
    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 1129
    const/16 v0, 0x5e

    .line 1131
    const/16 v1, 0x61

    .line 1133
    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 1136
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 9
    iput-object v0, p0, Lo/K4;->a:Ljava/util/HashMap;

    .line 11
    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Lo/K4;->b:Z

    .line 14
    new-instance v0, Ljava/util/HashMap;

    .line 16
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 19
    iput-object v0, p0, Lo/K4;->c:Ljava/util/HashMap;

    .line 21
    return-void
.end method

.method public static c(Lo/P2;Ljava/lang/String;)[I
    .locals 10

    .line 1
    const-string v0, ","

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 10
    move-result-object v0

    .line 11
    array-length v1, p1

    .line 12
    new-array v1, v1, [I

    .line 14
    const/4 v2, 0x0

    .line 15
    move v3, v2

    .line 16
    move v4, v3

    .line 17
    :goto_0
    array-length v5, p1

    .line 18
    if-ge v3, v5, :cond_4

    .line 20
    aget-object v5, p1, v3

    .line 22
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 25
    move-result-object v5

    .line 26
    const/4 v6, 0x0

    .line 27
    :try_start_0
    const-class v7, Lo/Zc;

    .line 29
    invoke-virtual {v7, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 32
    move-result-object v7

    .line 33
    invoke-virtual {v7, v6}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    .line 36
    move-result v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    goto :goto_1

    .line 38
    :catch_0
    move v7, v2

    .line 39
    :goto_1
    if-nez v7, :cond_0

    .line 41
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 44
    move-result-object v7

    .line 45
    const-string v8, "id"

    .line 47
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 50
    move-result-object v9

    .line 51
    invoke-virtual {v7, v5, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    move-result v7

    .line 55
    :cond_0
    if-nez v7, :cond_3

    .line 57
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    .line 60
    move-result v8

    .line 61
    if-eqz v8, :cond_3

    .line 63
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 66
    move-result-object v8

    .line 67
    instance-of v8, v8, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 69
    if-eqz v8, :cond_3

    .line 71
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 74
    move-result-object v8

    .line 75
    check-cast v8, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 77
    if-eqz v5, :cond_1

    .line 79
    iget-object v9, v8, Landroidx/constraintlayout/widget/ConstraintLayout;->m:Ljava/util/HashMap;

    .line 81
    if-eqz v9, :cond_2

    .line 83
    invoke-virtual {v9, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 86
    move-result v9

    .line 87
    if-eqz v9, :cond_2

    .line 89
    iget-object v6, v8, Landroidx/constraintlayout/widget/ConstraintLayout;->m:Ljava/util/HashMap;

    .line 91
    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    move-result-object v6

    .line 95
    goto :goto_2

    .line 96
    :cond_1
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 99
    :cond_2
    :goto_2
    if-eqz v6, :cond_3

    .line 101
    instance-of v5, v6, Ljava/lang/Integer;

    .line 103
    if-eqz v5, :cond_3

    .line 105
    check-cast v6, Ljava/lang/Integer;

    .line 107
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 110
    move-result v7

    .line 111
    :cond_3
    add-int/lit8 v5, v4, 0x1

    .line 113
    aput v7, v1, v4

    .line 115
    add-int/lit8 v3, v3, 0x1

    .line 117
    move v4, v5

    .line 118
    goto :goto_0

    .line 119
    :cond_4
    array-length p0, p1

    .line 120
    if-eq v4, p0, :cond_5

    .line 122
    invoke-static {v1, v4}, Ljava/util/Arrays;->copyOf([II)[I

    .line 125
    move-result-object v1

    .line 126
    :cond_5
    return-object v1
.end method

.method public static d(Landroid/content/Context;Landroid/util/AttributeSet;Z)Lo/F4;
    .locals 22

    .line 1
    new-instance v1, Lo/F4;

    .line 3
    invoke-direct {v1}, Lo/F4;-><init>()V

    .line 6
    if-eqz p2, :cond_0

    .line 8
    sget-object v2, Lo/ad;->c:[I

    .line 10
    :goto_0
    move-object/from16 v3, p0

    .line 12
    move-object/from16 v4, p1

    .line 14
    goto :goto_1

    .line 15
    :cond_0
    sget-object v2, Lo/ad;->a:[I

    .line 17
    goto :goto_0

    .line 18
    :goto_1
    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 21
    move-result-object v2

    .line 22
    sget-object v3, Lo/K4;->d:[I

    .line 24
    sget-object v4, Lo/K4;->e:Landroid/util/SparseIntArray;

    .line 26
    iget-object v5, v1, Lo/F4;->b:Lo/I4;

    .line 28
    sget-object v6, Lo/x9;->p:[Ljava/lang/String;

    .line 30
    iget-object v7, v1, Lo/F4;->e:Lo/J4;

    .line 32
    iget-object v8, v1, Lo/F4;->c:Lo/H4;

    .line 34
    iget-object v9, v1, Lo/F4;->d:Lo/G4;

    .line 36
    const-string v12, "CURRENTLY UNSUPPORTED"

    .line 38
    const-string v13, "/"

    .line 40
    const-string v14, "unused attribute 0x"

    .line 42
    const-string v15, "Unknown attribute 0x"

    .line 44
    const-string v11, "   "

    .line 46
    const-string v0, "ConstraintSet"

    .line 48
    if-eqz p2, :cond_7

    .line 50
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->getIndexCount()I

    .line 53
    move-result v10

    .line 54
    move-object/from16 v16, v3

    .line 56
    new-instance v3, Lo/E4;

    .line 58
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 61
    move-object/from16 v17, v6

    .line 63
    const/16 v6, 0xa

    .line 65
    move-object/from16 v18, v12

    .line 67
    new-array v12, v6, [I

    .line 69
    iput-object v12, v3, Lo/E4;->a:[I

    .line 71
    new-array v12, v6, [I

    .line 73
    iput-object v12, v3, Lo/E4;->b:[I

    .line 75
    const/4 v12, 0x0

    .line 76
    iput v12, v3, Lo/E4;->c:I

    .line 78
    new-array v12, v6, [I

    .line 80
    iput-object v12, v3, Lo/E4;->d:[I

    .line 82
    new-array v6, v6, [F

    .line 84
    iput-object v6, v3, Lo/E4;->e:[F

    .line 86
    const/4 v6, 0x0

    .line 87
    iput v6, v3, Lo/E4;->f:I

    .line 89
    const/4 v12, 0x5

    .line 90
    new-array v6, v12, [I

    .line 92
    iput-object v6, v3, Lo/E4;->g:[I

    .line 94
    new-array v6, v12, [Ljava/lang/String;

    .line 96
    iput-object v6, v3, Lo/E4;->h:[Ljava/lang/String;

    .line 98
    const/4 v6, 0x0

    .line 99
    iput v6, v3, Lo/E4;->i:I

    .line 101
    const/4 v12, 0x4

    .line 102
    new-array v6, v12, [I

    .line 104
    iput-object v6, v3, Lo/E4;->j:[I

    .line 106
    new-array v6, v12, [Z

    .line 108
    iput-object v6, v3, Lo/E4;->k:[Z

    .line 110
    const/4 v6, 0x0

    .line 111
    iput v6, v3, Lo/E4;->l:I

    .line 113
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 116
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 119
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 122
    const/4 v6, 0x0

    .line 123
    :goto_2
    if-ge v6, v10, :cond_f

    .line 125
    invoke-virtual {v2, v6}, Landroid/content/res/TypedArray;->getIndex(I)I

    .line 128
    move-result v12

    .line 129
    move/from16 v19, v10

    .line 131
    sget-object v10, Lo/K4;->f:Landroid/util/SparseIntArray;

    .line 133
    invoke-virtual {v10, v12}, Landroid/util/SparseIntArray;->get(I)I

    .line 136
    move-result v10

    .line 137
    packed-switch v10, :pswitch_data_0

    .line 140
    :pswitch_0
    new-instance v10, Ljava/lang/StringBuilder;

    .line 142
    invoke-direct {v10, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 145
    move-object/from16 v20, v15

    .line 147
    invoke-static {v12}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 150
    move-result-object v15

    .line 151
    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    invoke-virtual {v4, v12}, Landroid/util/SparseIntArray;->get(I)I

    .line 160
    move-result v12

    .line 161
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 164
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 167
    move-result-object v10

    .line 168
    invoke-static {v0, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    :cond_1
    :goto_3
    const/4 v10, 0x1

    .line 172
    :goto_4
    const/4 v15, 0x5

    .line 173
    goto/16 :goto_6

    .line 175
    :pswitch_1
    move-object/from16 v20, v15

    .line 177
    iget-boolean v10, v9, Lo/G4;->g:Z

    .line 179
    invoke-virtual {v2, v12, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 182
    move-result v10

    .line 183
    const/16 v12, 0x63

    .line 185
    invoke-virtual {v3, v12, v10}, Lo/E4;->d(IZ)V

    .line 188
    goto :goto_3

    .line 189
    :pswitch_2
    move-object/from16 v20, v15

    .line 191
    sget v10, Lo/Kb;->q:I

    .line 193
    invoke-virtual {v2, v12}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    .line 196
    move-result-object v10

    .line 197
    iget v10, v10, Landroid/util/TypedValue;->type:I

    .line 199
    const/4 v15, 0x3

    .line 200
    if-ne v10, v15, :cond_2

    .line 202
    invoke-virtual {v2, v12}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 205
    goto :goto_3

    .line 206
    :cond_2
    iget v10, v1, Lo/F4;->a:I

    .line 208
    invoke-virtual {v2, v12, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 211
    move-result v10

    .line 212
    iput v10, v1, Lo/F4;->a:I

    .line 214
    goto :goto_3

    .line 215
    :pswitch_3
    move-object/from16 v20, v15

    .line 217
    iget v10, v9, Lo/G4;->o0:I

    .line 219
    invoke-virtual {v2, v12, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 222
    move-result v10

    .line 223
    const/16 v12, 0x61

    .line 225
    invoke-virtual {v3, v12, v10}, Lo/E4;->b(II)V

    .line 228
    goto :goto_3

    .line 229
    :pswitch_4
    move-object/from16 v20, v15

    .line 231
    const/4 v10, 0x1

    .line 232
    invoke-static {v3, v2, v12, v10}, Lo/K4;->g(Ljava/lang/Object;Landroid/content/res/TypedArray;II)V

    .line 235
    goto :goto_4

    .line 236
    :pswitch_5
    move-object/from16 v20, v15

    .line 238
    const/4 v10, 0x0

    .line 239
    invoke-static {v3, v2, v12, v10}, Lo/K4;->g(Ljava/lang/Object;Landroid/content/res/TypedArray;II)V

    .line 242
    goto :goto_3

    .line 243
    :pswitch_6
    move-object/from16 v20, v15

    .line 245
    iget v10, v9, Lo/G4;->S:I

    .line 247
    invoke-virtual {v2, v12, v10}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 250
    move-result v10

    .line 251
    const/16 v12, 0x5e

    .line 253
    invoke-virtual {v3, v12, v10}, Lo/E4;->b(II)V

    .line 256
    goto :goto_3

    .line 257
    :pswitch_7
    move-object/from16 v20, v15

    .line 259
    iget v10, v9, Lo/G4;->L:I

    .line 261
    invoke-virtual {v2, v12, v10}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 264
    move-result v10

    .line 265
    const/16 v12, 0x5d

    .line 267
    invoke-virtual {v3, v12, v10}, Lo/E4;->b(II)V

    .line 270
    goto :goto_3

    .line 271
    :pswitch_8
    move-object/from16 v20, v15

    .line 273
    new-instance v10, Ljava/lang/StringBuilder;

    .line 275
    invoke-direct {v10, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 278
    invoke-static {v12}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 281
    move-result-object v15

    .line 282
    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    invoke-virtual {v4, v12}, Landroid/util/SparseIntArray;->get(I)I

    .line 291
    move-result v12

    .line 292
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 295
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 298
    move-result-object v10

    .line 299
    invoke-static {v0, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    goto/16 :goto_3

    .line 304
    :pswitch_9
    move-object/from16 v20, v15

    .line 306
    invoke-virtual {v2, v12}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    .line 309
    move-result-object v10

    .line 310
    iget v10, v10, Landroid/util/TypedValue;->type:I

    .line 312
    const/4 v15, 0x1

    .line 313
    if-ne v10, v15, :cond_3

    .line 315
    const/4 v15, -0x1

    .line 316
    invoke-virtual {v2, v12, v15}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 319
    move-result v10

    .line 320
    iput v10, v8, Lo/H4;->i:I

    .line 322
    const/16 v12, 0x59

    .line 324
    invoke-virtual {v3, v12, v10}, Lo/E4;->b(II)V

    .line 327
    iget v10, v8, Lo/H4;->i:I

    .line 329
    if-eq v10, v15, :cond_1

    .line 331
    const/4 v10, -0x2

    .line 332
    const/16 v12, 0x58

    .line 334
    invoke-virtual {v3, v12, v10}, Lo/E4;->b(II)V

    .line 337
    goto/16 :goto_3

    .line 339
    :cond_3
    const/4 v15, 0x3

    .line 340
    if-ne v10, v15, :cond_5

    .line 342
    invoke-virtual {v2, v12}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 345
    move-result-object v10

    .line 346
    iput-object v10, v8, Lo/H4;->h:Ljava/lang/String;

    .line 348
    const/16 v15, 0x5a

    .line 350
    invoke-virtual {v3, v15, v10}, Lo/E4;->c(ILjava/lang/String;)V

    .line 353
    iget-object v10, v8, Lo/H4;->h:Ljava/lang/String;

    .line 355
    invoke-virtual {v10, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 358
    move-result v10

    .line 359
    if-lez v10, :cond_4

    .line 361
    const/4 v10, -0x1

    .line 362
    invoke-virtual {v2, v12, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 365
    move-result v12

    .line 366
    iput v12, v8, Lo/H4;->i:I

    .line 368
    const/16 v15, 0x59

    .line 370
    invoke-virtual {v3, v15, v12}, Lo/E4;->b(II)V

    .line 373
    const/4 v12, -0x2

    .line 374
    const/16 v15, 0x58

    .line 376
    invoke-virtual {v3, v15, v12}, Lo/E4;->b(II)V

    .line 379
    goto/16 :goto_3

    .line 381
    :cond_4
    const/4 v10, -0x1

    .line 382
    const/16 v15, 0x58

    .line 384
    invoke-virtual {v3, v15, v10}, Lo/E4;->b(II)V

    .line 387
    goto/16 :goto_3

    .line 389
    :cond_5
    const/16 v15, 0x58

    .line 391
    iget v10, v8, Lo/H4;->i:I

    .line 393
    invoke-virtual {v2, v12, v10}, Landroid/content/res/TypedArray;->getInteger(II)I

    .line 396
    move-result v10

    .line 397
    invoke-virtual {v3, v15, v10}, Lo/E4;->b(II)V

    .line 400
    goto/16 :goto_3

    .line 402
    :pswitch_a
    move-object/from16 v20, v15

    .line 404
    iget v10, v8, Lo/H4;->f:F

    .line 406
    invoke-virtual {v2, v12, v10}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 409
    move-result v10

    .line 410
    const/16 v12, 0x55

    .line 412
    invoke-virtual {v3, v12, v10}, Lo/E4;->a(IF)V

    .line 415
    goto/16 :goto_3

    .line 417
    :pswitch_b
    move-object/from16 v20, v15

    .line 419
    iget v10, v8, Lo/H4;->g:I

    .line 421
    invoke-virtual {v2, v12, v10}, Landroid/content/res/TypedArray;->getInteger(II)I

    .line 424
    move-result v10

    .line 425
    const/16 v12, 0x54

    .line 427
    invoke-virtual {v3, v12, v10}, Lo/E4;->b(II)V

    .line 430
    goto/16 :goto_3

    .line 432
    :pswitch_c
    move-object/from16 v20, v15

    .line 434
    iget v10, v7, Lo/J4;->h:I

    .line 436
    invoke-static {v2, v12, v10}, Lo/K4;->f(Landroid/content/res/TypedArray;II)I

    .line 439
    move-result v10

    .line 440
    const/16 v12, 0x53

    .line 442
    invoke-virtual {v3, v12, v10}, Lo/E4;->b(II)V

    .line 445
    goto/16 :goto_3

    .line 447
    :pswitch_d
    move-object/from16 v20, v15

    .line 449
    iget v10, v8, Lo/H4;->b:I

    .line 451
    invoke-virtual {v2, v12, v10}, Landroid/content/res/TypedArray;->getInteger(II)I

    .line 454
    move-result v10

    .line 455
    const/16 v12, 0x52

    .line 457
    invoke-virtual {v3, v12, v10}, Lo/E4;->b(II)V

    .line 460
    goto/16 :goto_3

    .line 462
    :pswitch_e
    move-object/from16 v20, v15

    .line 464
    iget-boolean v10, v9, Lo/G4;->m0:Z

    .line 466
    invoke-virtual {v2, v12, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 469
    move-result v10

    .line 470
    const/16 v12, 0x51

    .line 472
    invoke-virtual {v3, v12, v10}, Lo/E4;->d(IZ)V

    .line 475
    goto/16 :goto_3

    .line 477
    :pswitch_f
    move-object/from16 v20, v15

    .line 479
    iget-boolean v10, v9, Lo/G4;->l0:Z

    .line 481
    invoke-virtual {v2, v12, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 484
    move-result v10

    .line 485
    const/16 v12, 0x50

    .line 487
    invoke-virtual {v3, v12, v10}, Lo/E4;->d(IZ)V

    .line 490
    goto/16 :goto_3

    .line 492
    :pswitch_10
    move-object/from16 v20, v15

    .line 494
    iget v10, v8, Lo/H4;->d:F

    .line 496
    invoke-virtual {v2, v12, v10}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 499
    move-result v10

    .line 500
    const/16 v12, 0x4f

    .line 502
    invoke-virtual {v3, v12, v10}, Lo/E4;->a(IF)V

    .line 505
    goto/16 :goto_3

    .line 507
    :pswitch_11
    move-object/from16 v20, v15

    .line 509
    iget v10, v5, Lo/I4;->b:I

    .line 511
    invoke-virtual {v2, v12, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 514
    move-result v10

    .line 515
    const/16 v12, 0x4e

    .line 517
    invoke-virtual {v3, v12, v10}, Lo/E4;->b(II)V

    .line 520
    goto/16 :goto_3

    .line 522
    :pswitch_12
    move-object/from16 v20, v15

    .line 524
    const/16 v10, 0x4d

    .line 526
    invoke-virtual {v2, v12}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 529
    move-result-object v12

    .line 530
    invoke-virtual {v3, v10, v12}, Lo/E4;->c(ILjava/lang/String;)V

    .line 533
    goto/16 :goto_3

    .line 535
    :pswitch_13
    move-object/from16 v20, v15

    .line 537
    iget v10, v8, Lo/H4;->c:I

    .line 539
    invoke-virtual {v2, v12, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 542
    move-result v10

    .line 543
    const/16 v12, 0x4c

    .line 545
    invoke-virtual {v3, v12, v10}, Lo/E4;->b(II)V

    .line 548
    goto/16 :goto_3

    .line 550
    :pswitch_14
    move-object/from16 v20, v15

    .line 552
    iget-boolean v10, v9, Lo/G4;->n0:Z

    .line 554
    invoke-virtual {v2, v12, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 557
    move-result v10

    .line 558
    const/16 v12, 0x4b

    .line 560
    invoke-virtual {v3, v12, v10}, Lo/E4;->d(IZ)V

    .line 563
    goto/16 :goto_3

    .line 565
    :pswitch_15
    move-object/from16 v20, v15

    .line 567
    const/16 v10, 0x4a

    .line 569
    invoke-virtual {v2, v12}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 572
    move-result-object v12

    .line 573
    invoke-virtual {v3, v10, v12}, Lo/E4;->c(ILjava/lang/String;)V

    .line 576
    goto/16 :goto_3

    .line 578
    :pswitch_16
    move-object/from16 v20, v15

    .line 580
    iget v10, v9, Lo/G4;->g0:I

    .line 582
    invoke-virtual {v2, v12, v10}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 585
    move-result v10

    .line 586
    const/16 v12, 0x49

    .line 588
    invoke-virtual {v3, v12, v10}, Lo/E4;->b(II)V

    .line 591
    goto/16 :goto_3

    .line 593
    :pswitch_17
    move-object/from16 v20, v15

    .line 595
    iget v10, v9, Lo/G4;->f0:I

    .line 597
    invoke-virtual {v2, v12, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 600
    move-result v10

    .line 601
    const/16 v12, 0x48

    .line 603
    invoke-virtual {v3, v12, v10}, Lo/E4;->b(II)V

    .line 606
    goto/16 :goto_3

    .line 608
    :pswitch_18
    move-object/from16 v20, v15

    .line 610
    move-object/from16 v10, v18

    .line 612
    invoke-static {v0, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    goto/16 :goto_3

    .line 617
    :pswitch_19
    move-object/from16 v20, v15

    .line 619
    move-object/from16 v10, v18

    .line 621
    const/16 v15, 0x46

    .line 623
    const/high16 v10, 0x3f800000    # 1.0f

    .line 625
    invoke-virtual {v2, v12, v10}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 628
    move-result v12

    .line 629
    invoke-virtual {v3, v15, v12}, Lo/E4;->a(IF)V

    .line 632
    goto/16 :goto_3

    .line 634
    :pswitch_1a
    move-object/from16 v20, v15

    .line 636
    const/high16 v10, 0x3f800000    # 1.0f

    .line 638
    const/16 v15, 0x45

    .line 640
    invoke-virtual {v2, v12, v10}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 643
    move-result v12

    .line 644
    invoke-virtual {v3, v15, v12}, Lo/E4;->a(IF)V

    .line 647
    goto/16 :goto_3

    .line 649
    :pswitch_1b
    move-object/from16 v20, v15

    .line 651
    iget v10, v5, Lo/I4;->d:F

    .line 653
    invoke-virtual {v2, v12, v10}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 656
    move-result v10

    .line 657
    const/16 v12, 0x44

    .line 659
    invoke-virtual {v3, v12, v10}, Lo/E4;->a(IF)V

    .line 662
    goto/16 :goto_3

    .line 664
    :pswitch_1c
    move-object/from16 v20, v15

    .line 666
    iget v10, v8, Lo/H4;->e:F

    .line 668
    invoke-virtual {v2, v12, v10}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 671
    move-result v10

    .line 672
    const/16 v12, 0x43

    .line 674
    invoke-virtual {v3, v12, v10}, Lo/E4;->a(IF)V

    .line 677
    goto/16 :goto_3

    .line 679
    :pswitch_1d
    move-object/from16 v20, v15

    .line 681
    const/16 v10, 0x42

    .line 683
    const/4 v15, 0x0

    .line 684
    invoke-virtual {v2, v12, v15}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 687
    move-result v12

    .line 688
    invoke-virtual {v3, v10, v12}, Lo/E4;->b(II)V

    .line 691
    goto/16 :goto_3

    .line 693
    :pswitch_1e
    move-object/from16 v20, v15

    .line 695
    const/4 v15, 0x0

    .line 696
    invoke-virtual {v2, v12}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    .line 699
    move-result-object v10

    .line 700
    iget v10, v10, Landroid/util/TypedValue;->type:I

    .line 702
    const/4 v15, 0x3

    .line 703
    if-ne v10, v15, :cond_6

    .line 705
    invoke-virtual {v2, v12}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 708
    move-result-object v10

    .line 709
    const/16 v15, 0x41

    .line 711
    invoke-virtual {v3, v15, v10}, Lo/E4;->c(ILjava/lang/String;)V

    .line 714
    goto/16 :goto_3

    .line 716
    :cond_6
    const/4 v10, 0x0

    .line 717
    const/16 v15, 0x41

    .line 719
    invoke-virtual {v2, v12, v10}, Landroid/content/res/TypedArray;->getInteger(II)I

    .line 722
    move-result v12

    .line 723
    aget-object v10, v17, v12

    .line 725
    invoke-virtual {v3, v15, v10}, Lo/E4;->c(ILjava/lang/String;)V

    .line 728
    goto/16 :goto_3

    .line 730
    :pswitch_1f
    move-object/from16 v20, v15

    .line 732
    iget v10, v8, Lo/H4;->a:I

    .line 734
    invoke-static {v2, v12, v10}, Lo/K4;->f(Landroid/content/res/TypedArray;II)I

    .line 737
    move-result v10

    .line 738
    const/16 v12, 0x40

    .line 740
    invoke-virtual {v3, v12, v10}, Lo/E4;->b(II)V

    .line 743
    goto/16 :goto_3

    .line 745
    :pswitch_20
    move-object/from16 v20, v15

    .line 747
    iget v10, v9, Lo/G4;->B:F

    .line 749
    invoke-virtual {v2, v12, v10}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 752
    move-result v10

    .line 753
    const/16 v12, 0x3f

    .line 755
    invoke-virtual {v3, v12, v10}, Lo/E4;->a(IF)V

    .line 758
    goto/16 :goto_3

    .line 760
    :pswitch_21
    move-object/from16 v20, v15

    .line 762
    iget v10, v9, Lo/G4;->A:I

    .line 764
    invoke-virtual {v2, v12, v10}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 767
    move-result v10

    .line 768
    const/16 v12, 0x3e

    .line 770
    invoke-virtual {v3, v12, v10}, Lo/E4;->b(II)V

    .line 773
    goto/16 :goto_3

    .line 775
    :pswitch_22
    move-object/from16 v20, v15

    .line 777
    iget v10, v7, Lo/J4;->a:F

    .line 779
    invoke-virtual {v2, v12, v10}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 782
    move-result v10

    .line 783
    const/16 v12, 0x3c

    .line 785
    invoke-virtual {v3, v12, v10}, Lo/E4;->a(IF)V

    .line 788
    goto/16 :goto_3

    .line 790
    :pswitch_23
    move-object/from16 v20, v15

    .line 792
    iget v10, v9, Lo/G4;->c0:I

    .line 794
    invoke-virtual {v2, v12, v10}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 797
    move-result v10

    .line 798
    const/16 v12, 0x3b

    .line 800
    invoke-virtual {v3, v12, v10}, Lo/E4;->b(II)V

    .line 803
    goto/16 :goto_3

    .line 805
    :pswitch_24
    move-object/from16 v20, v15

    .line 807
    iget v10, v9, Lo/G4;->b0:I

    .line 809
    invoke-virtual {v2, v12, v10}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 812
    move-result v10

    .line 813
    const/16 v12, 0x3a

    .line 815
    invoke-virtual {v3, v12, v10}, Lo/E4;->b(II)V

    .line 818
    goto/16 :goto_3

    .line 820
    :pswitch_25
    move-object/from16 v20, v15

    .line 822
    iget v10, v9, Lo/G4;->a0:I

    .line 824
    invoke-virtual {v2, v12, v10}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 827
    move-result v10

    .line 828
    const/16 v12, 0x39

    .line 830
    invoke-virtual {v3, v12, v10}, Lo/E4;->b(II)V

    .line 833
    goto/16 :goto_3

    .line 835
    :pswitch_26
    move-object/from16 v20, v15

    .line 837
    iget v10, v9, Lo/G4;->Z:I

    .line 839
    invoke-virtual {v2, v12, v10}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 842
    move-result v10

    .line 843
    const/16 v12, 0x38

    .line 845
    invoke-virtual {v3, v12, v10}, Lo/E4;->b(II)V

    .line 848
    goto/16 :goto_3

    .line 850
    :pswitch_27
    move-object/from16 v20, v15

    .line 852
    iget v10, v9, Lo/G4;->Y:I

    .line 854
    invoke-virtual {v2, v12, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 857
    move-result v10

    .line 858
    const/16 v12, 0x37

    .line 860
    invoke-virtual {v3, v12, v10}, Lo/E4;->b(II)V

    .line 863
    goto/16 :goto_3

    .line 865
    :pswitch_28
    move-object/from16 v20, v15

    .line 867
    iget v10, v9, Lo/G4;->X:I

    .line 869
    invoke-virtual {v2, v12, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 872
    move-result v10

    .line 873
    const/16 v12, 0x36

    .line 875
    invoke-virtual {v3, v12, v10}, Lo/E4;->b(II)V

    .line 878
    goto/16 :goto_3

    .line 880
    :pswitch_29
    move-object/from16 v20, v15

    .line 882
    iget v10, v7, Lo/J4;->k:F

    .line 884
    invoke-virtual {v2, v12, v10}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 887
    move-result v10

    .line 888
    const/16 v12, 0x35

    .line 890
    invoke-virtual {v3, v12, v10}, Lo/E4;->a(IF)V

    .line 893
    goto/16 :goto_3

    .line 895
    :pswitch_2a
    move-object/from16 v20, v15

    .line 897
    iget v10, v7, Lo/J4;->j:F

    .line 899
    invoke-virtual {v2, v12, v10}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 902
    move-result v10

    .line 903
    const/16 v12, 0x34

    .line 905
    invoke-virtual {v3, v12, v10}, Lo/E4;->a(IF)V

    .line 908
    goto/16 :goto_3

    .line 910
    :pswitch_2b
    move-object/from16 v20, v15

    .line 912
    iget v10, v7, Lo/J4;->i:F

    .line 914
    invoke-virtual {v2, v12, v10}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 917
    move-result v10

    .line 918
    const/16 v12, 0x33

    .line 920
    invoke-virtual {v3, v12, v10}, Lo/E4;->a(IF)V

    .line 923
    goto/16 :goto_3

    .line 925
    :pswitch_2c
    move-object/from16 v20, v15

    .line 927
    iget v10, v7, Lo/J4;->g:F

    .line 929
    invoke-virtual {v2, v12, v10}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 932
    move-result v10

    .line 933
    const/16 v12, 0x32

    .line 935
    invoke-virtual {v3, v12, v10}, Lo/E4;->a(IF)V

    .line 938
    goto/16 :goto_3

    .line 940
    :pswitch_2d
    move-object/from16 v20, v15

    .line 942
    iget v10, v7, Lo/J4;->f:F

    .line 944
    invoke-virtual {v2, v12, v10}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 947
    move-result v10

    .line 948
    const/16 v12, 0x31

    .line 950
    invoke-virtual {v3, v12, v10}, Lo/E4;->a(IF)V

    .line 953
    goto/16 :goto_3

    .line 955
    :pswitch_2e
    move-object/from16 v20, v15

    .line 957
    iget v10, v7, Lo/J4;->e:F

    .line 959
    invoke-virtual {v2, v12, v10}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 962
    move-result v10

    .line 963
    const/16 v12, 0x30

    .line 965
    invoke-virtual {v3, v12, v10}, Lo/E4;->a(IF)V

    .line 968
    goto/16 :goto_3

    .line 970
    :pswitch_2f
    move-object/from16 v20, v15

    .line 972
    iget v10, v7, Lo/J4;->d:F

    .line 974
    invoke-virtual {v2, v12, v10}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 977
    move-result v10

    .line 978
    const/16 v12, 0x2f

    .line 980
    invoke-virtual {v3, v12, v10}, Lo/E4;->a(IF)V

    .line 983
    goto/16 :goto_3

    .line 985
    :pswitch_30
    move-object/from16 v20, v15

    .line 987
    iget v10, v7, Lo/J4;->c:F

    .line 989
    invoke-virtual {v2, v12, v10}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 992
    move-result v10

    .line 993
    const/16 v12, 0x2e

    .line 995
    invoke-virtual {v3, v12, v10}, Lo/E4;->a(IF)V

    .line 998
    goto/16 :goto_3

    .line 1000
    :pswitch_31
    move-object/from16 v20, v15

    .line 1002
    iget v10, v7, Lo/J4;->b:F

    .line 1004
    invoke-virtual {v2, v12, v10}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 1007
    move-result v10

    .line 1008
    const/16 v12, 0x2d

    .line 1010
    invoke-virtual {v3, v12, v10}, Lo/E4;->a(IF)V

    .line 1013
    goto/16 :goto_3

    .line 1015
    :pswitch_32
    move-object/from16 v20, v15

    .line 1017
    const/16 v10, 0x2c

    .line 1019
    const/4 v15, 0x1

    .line 1020
    invoke-virtual {v3, v10, v15}, Lo/E4;->d(IZ)V

    .line 1023
    iget v15, v7, Lo/J4;->m:F

    .line 1025
    invoke-virtual {v2, v12, v15}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 1028
    move-result v12

    .line 1029
    invoke-virtual {v3, v10, v12}, Lo/E4;->a(IF)V

    .line 1032
    goto/16 :goto_3

    .line 1034
    :pswitch_33
    move-object/from16 v20, v15

    .line 1036
    iget v10, v5, Lo/I4;->c:F

    .line 1038
    invoke-virtual {v2, v12, v10}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 1041
    move-result v10

    .line 1042
    const/16 v12, 0x2b

    .line 1044
    invoke-virtual {v3, v12, v10}, Lo/E4;->a(IF)V

    .line 1047
    goto/16 :goto_3

    .line 1049
    :pswitch_34
    move-object/from16 v20, v15

    .line 1051
    iget v10, v9, Lo/G4;->W:I

    .line 1053
    invoke-virtual {v2, v12, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 1056
    move-result v10

    .line 1057
    const/16 v12, 0x2a

    .line 1059
    invoke-virtual {v3, v12, v10}, Lo/E4;->b(II)V

    .line 1062
    goto/16 :goto_3

    .line 1064
    :pswitch_35
    move-object/from16 v20, v15

    .line 1066
    iget v10, v9, Lo/G4;->V:I

    .line 1068
    invoke-virtual {v2, v12, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 1071
    move-result v10

    .line 1072
    const/16 v12, 0x29

    .line 1074
    invoke-virtual {v3, v12, v10}, Lo/E4;->b(II)V

    .line 1077
    goto/16 :goto_3

    .line 1079
    :pswitch_36
    move-object/from16 v20, v15

    .line 1081
    iget v10, v9, Lo/G4;->T:F

    .line 1083
    invoke-virtual {v2, v12, v10}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 1086
    move-result v10

    .line 1087
    const/16 v12, 0x28

    .line 1089
    invoke-virtual {v3, v12, v10}, Lo/E4;->a(IF)V

    .line 1092
    goto/16 :goto_3

    .line 1094
    :pswitch_37
    move-object/from16 v20, v15

    .line 1096
    iget v10, v9, Lo/G4;->U:F

    .line 1098
    invoke-virtual {v2, v12, v10}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 1101
    move-result v10

    .line 1102
    const/16 v12, 0x27

    .line 1104
    invoke-virtual {v3, v12, v10}, Lo/E4;->a(IF)V

    .line 1107
    goto/16 :goto_3

    .line 1109
    :pswitch_38
    move-object/from16 v20, v15

    .line 1111
    iget v10, v1, Lo/F4;->a:I

    .line 1113
    invoke-virtual {v2, v12, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 1116
    move-result v10

    .line 1117
    iput v10, v1, Lo/F4;->a:I

    .line 1119
    const/16 v12, 0x26

    .line 1121
    invoke-virtual {v3, v12, v10}, Lo/E4;->b(II)V

    .line 1124
    goto/16 :goto_3

    .line 1126
    :pswitch_39
    move-object/from16 v20, v15

    .line 1128
    iget v10, v9, Lo/G4;->x:F

    .line 1130
    invoke-virtual {v2, v12, v10}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 1133
    move-result v10

    .line 1134
    const/16 v12, 0x25

    .line 1136
    invoke-virtual {v3, v12, v10}, Lo/E4;->a(IF)V

    .line 1139
    goto/16 :goto_3

    .line 1141
    :pswitch_3a
    move-object/from16 v20, v15

    .line 1143
    iget v10, v9, Lo/G4;->H:I

    .line 1145
    invoke-virtual {v2, v12, v10}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 1148
    move-result v10

    .line 1149
    const/16 v12, 0x22

    .line 1151
    invoke-virtual {v3, v12, v10}, Lo/E4;->b(II)V

    .line 1154
    goto/16 :goto_3

    .line 1156
    :pswitch_3b
    move-object/from16 v20, v15

    .line 1158
    iget v10, v9, Lo/G4;->K:I

    .line 1160
    invoke-virtual {v2, v12, v10}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 1163
    move-result v10

    .line 1164
    const/16 v12, 0x1f

    .line 1166
    invoke-virtual {v3, v12, v10}, Lo/E4;->b(II)V

    .line 1169
    goto/16 :goto_3

    .line 1171
    :pswitch_3c
    move-object/from16 v20, v15

    .line 1173
    iget v10, v9, Lo/G4;->G:I

    .line 1175
    invoke-virtual {v2, v12, v10}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 1178
    move-result v10

    .line 1179
    const/16 v12, 0x1c

    .line 1181
    invoke-virtual {v3, v12, v10}, Lo/E4;->b(II)V

    .line 1184
    goto/16 :goto_3

    .line 1186
    :pswitch_3d
    move-object/from16 v20, v15

    .line 1188
    iget v10, v9, Lo/G4;->E:I

    .line 1190
    invoke-virtual {v2, v12, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 1193
    move-result v10

    .line 1194
    const/16 v12, 0x1b

    .line 1196
    invoke-virtual {v3, v12, v10}, Lo/E4;->b(II)V

    .line 1199
    goto/16 :goto_3

    .line 1201
    :pswitch_3e
    move-object/from16 v20, v15

    .line 1203
    iget v10, v9, Lo/G4;->F:I

    .line 1205
    invoke-virtual {v2, v12, v10}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 1208
    move-result v10

    .line 1209
    const/16 v12, 0x18

    .line 1211
    invoke-virtual {v3, v12, v10}, Lo/E4;->b(II)V

    .line 1214
    goto/16 :goto_3

    .line 1216
    :pswitch_3f
    move-object/from16 v20, v15

    .line 1218
    iget v10, v9, Lo/G4;->b:I

    .line 1220
    invoke-virtual {v2, v12, v10}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    .line 1223
    move-result v10

    .line 1224
    const/16 v12, 0x17

    .line 1226
    invoke-virtual {v3, v12, v10}, Lo/E4;->b(II)V

    .line 1229
    goto/16 :goto_3

    .line 1231
    :pswitch_40
    move-object/from16 v20, v15

    .line 1233
    iget v10, v5, Lo/I4;->a:I

    .line 1235
    invoke-virtual {v2, v12, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 1238
    move-result v10

    .line 1239
    aget v10, v16, v10

    .line 1241
    const/16 v12, 0x16

    .line 1243
    invoke-virtual {v3, v12, v10}, Lo/E4;->b(II)V

    .line 1246
    goto/16 :goto_3

    .line 1248
    :pswitch_41
    move-object/from16 v20, v15

    .line 1250
    iget v10, v9, Lo/G4;->c:I

    .line 1252
    invoke-virtual {v2, v12, v10}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    .line 1255
    move-result v10

    .line 1256
    const/16 v12, 0x15

    .line 1258
    invoke-virtual {v3, v12, v10}, Lo/E4;->b(II)V

    .line 1261
    goto/16 :goto_3

    .line 1263
    :pswitch_42
    move-object/from16 v20, v15

    .line 1265
    iget v10, v9, Lo/G4;->w:F

    .line 1267
    invoke-virtual {v2, v12, v10}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 1270
    move-result v10

    .line 1271
    const/16 v12, 0x14

    .line 1273
    invoke-virtual {v3, v12, v10}, Lo/E4;->a(IF)V

    .line 1276
    goto/16 :goto_3

    .line 1278
    :pswitch_43
    move-object/from16 v20, v15

    .line 1280
    iget v10, v9, Lo/G4;->f:F

    .line 1282
    invoke-virtual {v2, v12, v10}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 1285
    move-result v10

    .line 1286
    const/16 v12, 0x13

    .line 1288
    invoke-virtual {v3, v12, v10}, Lo/E4;->a(IF)V

    .line 1291
    goto/16 :goto_3

    .line 1293
    :pswitch_44
    move-object/from16 v20, v15

    .line 1295
    iget v10, v9, Lo/G4;->e:I

    .line 1297
    invoke-virtual {v2, v12, v10}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    .line 1300
    move-result v10

    .line 1301
    const/16 v12, 0x12

    .line 1303
    invoke-virtual {v3, v12, v10}, Lo/E4;->b(II)V

    .line 1306
    goto/16 :goto_3

    .line 1308
    :pswitch_45
    move-object/from16 v20, v15

    .line 1310
    iget v10, v9, Lo/G4;->d:I

    .line 1312
    invoke-virtual {v2, v12, v10}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    .line 1315
    move-result v10

    .line 1316
    const/16 v12, 0x11

    .line 1318
    invoke-virtual {v3, v12, v10}, Lo/E4;->b(II)V

    .line 1321
    goto/16 :goto_3

    .line 1323
    :pswitch_46
    move-object/from16 v20, v15

    .line 1325
    iget v10, v9, Lo/G4;->N:I

    .line 1327
    invoke-virtual {v2, v12, v10}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 1330
    move-result v10

    .line 1331
    const/16 v12, 0x10

    .line 1333
    invoke-virtual {v3, v12, v10}, Lo/E4;->b(II)V

    .line 1336
    goto/16 :goto_3

    .line 1338
    :pswitch_47
    move-object/from16 v20, v15

    .line 1340
    iget v10, v9, Lo/G4;->R:I

    .line 1342
    invoke-virtual {v2, v12, v10}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 1345
    move-result v10

    .line 1346
    const/16 v12, 0xf

    .line 1348
    invoke-virtual {v3, v12, v10}, Lo/E4;->b(II)V

    .line 1351
    goto/16 :goto_3

    .line 1353
    :pswitch_48
    move-object/from16 v20, v15

    .line 1355
    iget v10, v9, Lo/G4;->O:I

    .line 1357
    invoke-virtual {v2, v12, v10}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 1360
    move-result v10

    .line 1361
    const/16 v12, 0xe

    .line 1363
    invoke-virtual {v3, v12, v10}, Lo/E4;->b(II)V

    .line 1366
    goto/16 :goto_3

    .line 1368
    :pswitch_49
    move-object/from16 v20, v15

    .line 1370
    iget v10, v9, Lo/G4;->M:I

    .line 1372
    invoke-virtual {v2, v12, v10}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 1375
    move-result v10

    .line 1376
    const/16 v12, 0xd

    .line 1378
    invoke-virtual {v3, v12, v10}, Lo/E4;->b(II)V

    .line 1381
    goto/16 :goto_3

    .line 1383
    :pswitch_4a
    move-object/from16 v20, v15

    .line 1385
    iget v10, v9, Lo/G4;->Q:I

    .line 1387
    invoke-virtual {v2, v12, v10}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 1390
    move-result v10

    .line 1391
    const/16 v12, 0xc

    .line 1393
    invoke-virtual {v3, v12, v10}, Lo/E4;->b(II)V

    .line 1396
    goto/16 :goto_3

    .line 1398
    :pswitch_4b
    move-object/from16 v20, v15

    .line 1400
    iget v10, v9, Lo/G4;->P:I

    .line 1402
    invoke-virtual {v2, v12, v10}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 1405
    move-result v10

    .line 1406
    const/16 v12, 0xb

    .line 1408
    invoke-virtual {v3, v12, v10}, Lo/E4;->b(II)V

    .line 1411
    goto/16 :goto_3

    .line 1413
    :pswitch_4c
    move-object/from16 v20, v15

    .line 1415
    iget v10, v9, Lo/G4;->J:I

    .line 1417
    invoke-virtual {v2, v12, v10}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 1420
    move-result v10

    .line 1421
    const/16 v12, 0x8

    .line 1423
    invoke-virtual {v3, v12, v10}, Lo/E4;->b(II)V

    .line 1426
    goto/16 :goto_3

    .line 1428
    :pswitch_4d
    move-object/from16 v20, v15

    .line 1430
    iget v10, v9, Lo/G4;->D:I

    .line 1432
    invoke-virtual {v2, v12, v10}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    .line 1435
    move-result v10

    .line 1436
    const/4 v12, 0x7

    .line 1437
    invoke-virtual {v3, v12, v10}, Lo/E4;->b(II)V

    .line 1440
    goto/16 :goto_3

    .line 1442
    :pswitch_4e
    move-object/from16 v20, v15

    .line 1444
    iget v10, v9, Lo/G4;->C:I

    .line 1446
    invoke-virtual {v2, v12, v10}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    .line 1449
    move-result v10

    .line 1450
    const/4 v12, 0x6

    .line 1451
    invoke-virtual {v3, v12, v10}, Lo/E4;->b(II)V

    .line 1454
    goto/16 :goto_3

    .line 1456
    :pswitch_4f
    move-object/from16 v20, v15

    .line 1458
    invoke-virtual {v2, v12}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 1461
    move-result-object v10

    .line 1462
    const/4 v15, 0x5

    .line 1463
    invoke-virtual {v3, v15, v10}, Lo/E4;->c(ILjava/lang/String;)V

    .line 1466
    :goto_5
    const/4 v10, 0x1

    .line 1467
    goto :goto_6

    .line 1468
    :pswitch_50
    move-object/from16 v20, v15

    .line 1470
    const/4 v15, 0x5

    .line 1471
    iget v10, v9, Lo/G4;->I:I

    .line 1473
    invoke-virtual {v2, v12, v10}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 1476
    move-result v10

    .line 1477
    const/4 v12, 0x2

    .line 1478
    invoke-virtual {v3, v12, v10}, Lo/E4;->b(II)V

    .line 1481
    goto :goto_5

    .line 1482
    :goto_6
    add-int/2addr v6, v10

    .line 1483
    move/from16 v10, v19

    .line 1485
    move-object/from16 v15, v20

    .line 1487
    goto/16 :goto_2

    .line 1489
    :cond_7
    move-object/from16 v16, v3

    .line 1491
    move-object/from16 v17, v6

    .line 1493
    move-object/from16 v18, v12

    .line 1495
    move-object/from16 v20, v15

    .line 1497
    const/4 v10, 0x1

    .line 1498
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->getIndexCount()I

    .line 1501
    move-result v3

    .line 1502
    const/4 v12, 0x0

    .line 1503
    :goto_7
    if-ge v12, v3, :cond_e

    .line 1505
    invoke-virtual {v2, v12}, Landroid/content/res/TypedArray;->getIndex(I)I

    .line 1508
    move-result v6

    .line 1509
    if-eq v6, v10, :cond_8

    .line 1511
    const/16 v10, 0x17

    .line 1513
    const/16 v15, 0x18

    .line 1515
    if-eq v10, v6, :cond_9

    .line 1517
    if-eq v15, v6, :cond_9

    .line 1519
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1522
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1525
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1528
    goto :goto_8

    .line 1529
    :cond_8
    const/16 v10, 0x17

    .line 1531
    const/16 v15, 0x18

    .line 1533
    :cond_9
    :goto_8
    invoke-virtual {v4, v6}, Landroid/util/SparseIntArray;->get(I)I

    .line 1536
    move-result v19

    .line 1537
    packed-switch v19, :pswitch_data_1

    .line 1540
    :pswitch_51
    new-instance v10, Ljava/lang/StringBuilder;

    .line 1542
    move-object/from16 v15, v20

    .line 1544
    invoke-direct {v10, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1547
    move/from16 p2, v3

    .line 1549
    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 1552
    move-result-object v3

    .line 1553
    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1556
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1559
    invoke-virtual {v4, v6}, Landroid/util/SparseIntArray;->get(I)I

    .line 1562
    move-result v3

    .line 1563
    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1566
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1569
    move-result-object v3

    .line 1570
    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1573
    :cond_a
    :goto_9
    move-object/from16 v10, v18

    .line 1575
    const/4 v3, 0x0

    .line 1576
    :goto_a
    move-object/from16 v18, v0

    .line 1578
    :goto_b
    const/4 v0, 0x1

    .line 1579
    goto/16 :goto_f

    .line 1581
    :pswitch_52
    move/from16 p2, v3

    .line 1583
    move-object/from16 v15, v20

    .line 1585
    iget v3, v9, Lo/G4;->o0:I

    .line 1587
    invoke-virtual {v2, v6, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 1590
    move-result v3

    .line 1591
    iput v3, v9, Lo/G4;->o0:I

    .line 1593
    goto :goto_9

    .line 1594
    :pswitch_53
    move/from16 p2, v3

    .line 1596
    move-object/from16 v15, v20

    .line 1598
    const/4 v3, 0x1

    .line 1599
    invoke-static {v9, v2, v6, v3}, Lo/K4;->g(Ljava/lang/Object;Landroid/content/res/TypedArray;II)V

    .line 1602
    move-object/from16 v10, v18

    .line 1604
    move-object/from16 v18, v0

    .line 1606
    move v0, v3

    .line 1607
    :goto_c
    const/4 v3, 0x0

    .line 1608
    goto/16 :goto_f

    .line 1610
    :pswitch_54
    move/from16 p2, v3

    .line 1612
    move-object/from16 v15, v20

    .line 1614
    const/4 v3, 0x0

    .line 1615
    invoke-static {v9, v2, v6, v3}, Lo/K4;->g(Ljava/lang/Object;Landroid/content/res/TypedArray;II)V

    .line 1618
    move-object/from16 v10, v18

    .line 1620
    goto :goto_a

    .line 1621
    :pswitch_55
    move/from16 p2, v3

    .line 1623
    move-object/from16 v15, v20

    .line 1625
    iget v3, v9, Lo/G4;->S:I

    .line 1627
    invoke-virtual {v2, v6, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 1630
    move-result v3

    .line 1631
    iput v3, v9, Lo/G4;->S:I

    .line 1633
    goto :goto_9

    .line 1634
    :pswitch_56
    move/from16 p2, v3

    .line 1636
    move-object/from16 v15, v20

    .line 1638
    iget v3, v9, Lo/G4;->L:I

    .line 1640
    invoke-virtual {v2, v6, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 1643
    move-result v3

    .line 1644
    iput v3, v9, Lo/G4;->L:I

    .line 1646
    goto :goto_9

    .line 1647
    :pswitch_57
    move/from16 p2, v3

    .line 1649
    move-object/from16 v15, v20

    .line 1651
    iget v3, v9, Lo/G4;->r:I

    .line 1653
    invoke-static {v2, v6, v3}, Lo/K4;->f(Landroid/content/res/TypedArray;II)I

    .line 1656
    move-result v3

    .line 1657
    iput v3, v9, Lo/G4;->r:I

    .line 1659
    goto :goto_9

    .line 1660
    :pswitch_58
    move/from16 p2, v3

    .line 1662
    move-object/from16 v15, v20

    .line 1664
    iget v3, v9, Lo/G4;->q:I

    .line 1666
    invoke-static {v2, v6, v3}, Lo/K4;->f(Landroid/content/res/TypedArray;II)I

    .line 1669
    move-result v3

    .line 1670
    iput v3, v9, Lo/G4;->q:I

    .line 1672
    goto :goto_9

    .line 1673
    :pswitch_59
    move/from16 p2, v3

    .line 1675
    move-object/from16 v15, v20

    .line 1677
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1679
    invoke-direct {v3, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1682
    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 1685
    move-result-object v10

    .line 1686
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1689
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1692
    invoke-virtual {v4, v6}, Landroid/util/SparseIntArray;->get(I)I

    .line 1695
    move-result v6

    .line 1696
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1699
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1702
    move-result-object v3

    .line 1703
    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1706
    goto/16 :goto_9

    .line 1708
    :pswitch_5a
    move/from16 p2, v3

    .line 1710
    move-object/from16 v15, v20

    .line 1712
    invoke-virtual {v2, v6}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    .line 1715
    move-result-object v3

    .line 1716
    iget v3, v3, Landroid/util/TypedValue;->type:I

    .line 1718
    const/4 v10, 0x1

    .line 1719
    if-ne v3, v10, :cond_b

    .line 1721
    const/4 v10, -0x1

    .line 1722
    invoke-virtual {v2, v6, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 1725
    move-result v3

    .line 1726
    iput v3, v8, Lo/H4;->i:I

    .line 1728
    goto/16 :goto_9

    .line 1730
    :cond_b
    const/4 v10, 0x3

    .line 1731
    if-ne v3, v10, :cond_c

    .line 1733
    invoke-virtual {v2, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 1736
    move-result-object v3

    .line 1737
    iput-object v3, v8, Lo/H4;->h:Ljava/lang/String;

    .line 1739
    invoke-virtual {v3, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 1742
    move-result v3

    .line 1743
    if-lez v3, :cond_a

    .line 1745
    const/4 v3, -0x1

    .line 1746
    invoke-virtual {v2, v6, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 1749
    move-result v6

    .line 1750
    iput v6, v8, Lo/H4;->i:I

    .line 1752
    goto/16 :goto_9

    .line 1754
    :cond_c
    const/4 v3, -0x1

    .line 1755
    iget v10, v8, Lo/H4;->i:I

    .line 1757
    invoke-virtual {v2, v6, v10}, Landroid/content/res/TypedArray;->getInteger(II)I

    .line 1760
    goto/16 :goto_9

    .line 1762
    :pswitch_5b
    move/from16 p2, v3

    .line 1764
    move-object/from16 v15, v20

    .line 1766
    const/4 v3, -0x1

    .line 1767
    iget v10, v8, Lo/H4;->f:F

    .line 1769
    invoke-virtual {v2, v6, v10}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 1772
    move-result v6

    .line 1773
    iput v6, v8, Lo/H4;->f:F

    .line 1775
    goto/16 :goto_9

    .line 1777
    :pswitch_5c
    move/from16 p2, v3

    .line 1779
    move-object/from16 v15, v20

    .line 1781
    const/4 v3, -0x1

    .line 1782
    iget v10, v8, Lo/H4;->g:I

    .line 1784
    invoke-virtual {v2, v6, v10}, Landroid/content/res/TypedArray;->getInteger(II)I

    .line 1787
    move-result v6

    .line 1788
    iput v6, v8, Lo/H4;->g:I

    .line 1790
    goto/16 :goto_9

    .line 1792
    :pswitch_5d
    move/from16 p2, v3

    .line 1794
    move-object/from16 v15, v20

    .line 1796
    const/4 v3, -0x1

    .line 1797
    iget v10, v7, Lo/J4;->h:I

    .line 1799
    invoke-static {v2, v6, v10}, Lo/K4;->f(Landroid/content/res/TypedArray;II)I

    .line 1802
    move-result v6

    .line 1803
    iput v6, v7, Lo/J4;->h:I

    .line 1805
    goto/16 :goto_9

    .line 1807
    :pswitch_5e
    move/from16 p2, v3

    .line 1809
    move-object/from16 v15, v20

    .line 1811
    const/4 v3, -0x1

    .line 1812
    iget v10, v8, Lo/H4;->b:I

    .line 1814
    invoke-virtual {v2, v6, v10}, Landroid/content/res/TypedArray;->getInteger(II)I

    .line 1817
    move-result v6

    .line 1818
    iput v6, v8, Lo/H4;->b:I

    .line 1820
    goto/16 :goto_9

    .line 1822
    :pswitch_5f
    move/from16 p2, v3

    .line 1824
    move-object/from16 v15, v20

    .line 1826
    const/4 v3, -0x1

    .line 1827
    iget-boolean v10, v9, Lo/G4;->m0:Z

    .line 1829
    invoke-virtual {v2, v6, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 1832
    move-result v6

    .line 1833
    iput-boolean v6, v9, Lo/G4;->m0:Z

    .line 1835
    goto/16 :goto_9

    .line 1837
    :pswitch_60
    move/from16 p2, v3

    .line 1839
    move-object/from16 v15, v20

    .line 1841
    const/4 v3, -0x1

    .line 1842
    iget-boolean v10, v9, Lo/G4;->l0:Z

    .line 1844
    invoke-virtual {v2, v6, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 1847
    move-result v6

    .line 1848
    iput-boolean v6, v9, Lo/G4;->l0:Z

    .line 1850
    goto/16 :goto_9

    .line 1852
    :pswitch_61
    move/from16 p2, v3

    .line 1854
    move-object/from16 v15, v20

    .line 1856
    const/4 v3, -0x1

    .line 1857
    iget v10, v8, Lo/H4;->d:F

    .line 1859
    invoke-virtual {v2, v6, v10}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 1862
    move-result v6

    .line 1863
    iput v6, v8, Lo/H4;->d:F

    .line 1865
    goto/16 :goto_9

    .line 1867
    :pswitch_62
    move/from16 p2, v3

    .line 1869
    move-object/from16 v15, v20

    .line 1871
    const/4 v3, -0x1

    .line 1872
    iget v10, v5, Lo/I4;->b:I

    .line 1874
    invoke-virtual {v2, v6, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 1877
    move-result v6

    .line 1878
    iput v6, v5, Lo/I4;->b:I

    .line 1880
    goto/16 :goto_9

    .line 1882
    :pswitch_63
    move/from16 p2, v3

    .line 1884
    move-object/from16 v15, v20

    .line 1886
    const/4 v3, -0x1

    .line 1887
    invoke-virtual {v2, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 1890
    move-result-object v6

    .line 1891
    iput-object v6, v9, Lo/G4;->k0:Ljava/lang/String;

    .line 1893
    goto/16 :goto_9

    .line 1895
    :pswitch_64
    move/from16 p2, v3

    .line 1897
    move-object/from16 v15, v20

    .line 1899
    const/4 v3, -0x1

    .line 1900
    iget v10, v8, Lo/H4;->c:I

    .line 1902
    invoke-virtual {v2, v6, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 1905
    move-result v6

    .line 1906
    iput v6, v8, Lo/H4;->c:I

    .line 1908
    goto/16 :goto_9

    .line 1910
    :pswitch_65
    move/from16 p2, v3

    .line 1912
    move-object/from16 v15, v20

    .line 1914
    const/4 v3, -0x1

    .line 1915
    iget-boolean v10, v9, Lo/G4;->n0:Z

    .line 1917
    invoke-virtual {v2, v6, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 1920
    move-result v6

    .line 1921
    iput-boolean v6, v9, Lo/G4;->n0:Z

    .line 1923
    goto/16 :goto_9

    .line 1925
    :pswitch_66
    move/from16 p2, v3

    .line 1927
    move-object/from16 v15, v20

    .line 1929
    const/4 v3, -0x1

    .line 1930
    invoke-virtual {v2, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 1933
    move-result-object v6

    .line 1934
    iput-object v6, v9, Lo/G4;->j0:Ljava/lang/String;

    .line 1936
    goto/16 :goto_9

    .line 1938
    :pswitch_67
    move/from16 p2, v3

    .line 1940
    move-object/from16 v15, v20

    .line 1942
    const/4 v3, -0x1

    .line 1943
    iget v10, v9, Lo/G4;->g0:I

    .line 1945
    invoke-virtual {v2, v6, v10}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 1948
    move-result v6

    .line 1949
    iput v6, v9, Lo/G4;->g0:I

    .line 1951
    goto/16 :goto_9

    .line 1953
    :pswitch_68
    move/from16 p2, v3

    .line 1955
    move-object/from16 v15, v20

    .line 1957
    const/4 v3, -0x1

    .line 1958
    iget v10, v9, Lo/G4;->f0:I

    .line 1960
    invoke-virtual {v2, v6, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 1963
    move-result v6

    .line 1964
    iput v6, v9, Lo/G4;->f0:I

    .line 1966
    goto/16 :goto_9

    .line 1968
    :pswitch_69
    move/from16 p2, v3

    .line 1970
    move-object/from16 v10, v18

    .line 1972
    move-object/from16 v15, v20

    .line 1974
    const/4 v3, -0x1

    .line 1975
    invoke-static {v0, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1978
    :goto_d
    move-object/from16 v18, v0

    .line 1980
    :goto_e
    const/4 v0, 0x1

    .line 1981
    goto/16 :goto_c

    .line 1983
    :pswitch_6a
    move/from16 p2, v3

    .line 1985
    move-object/from16 v10, v18

    .line 1987
    move-object/from16 v15, v20

    .line 1989
    const/high16 v3, 0x3f800000    # 1.0f

    .line 1991
    invoke-virtual {v2, v6, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 1994
    move-result v6

    .line 1995
    iput v6, v9, Lo/G4;->e0:F

    .line 1997
    goto :goto_d

    .line 1998
    :pswitch_6b
    move/from16 p2, v3

    .line 2000
    move-object/from16 v10, v18

    .line 2002
    move-object/from16 v15, v20

    .line 2004
    const/high16 v3, 0x3f800000    # 1.0f

    .line 2006
    invoke-virtual {v2, v6, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 2009
    move-result v6

    .line 2010
    iput v6, v9, Lo/G4;->d0:F

    .line 2012
    goto :goto_d

    .line 2013
    :pswitch_6c
    move/from16 p2, v3

    .line 2015
    move-object/from16 v10, v18

    .line 2017
    move-object/from16 v15, v20

    .line 2019
    iget v3, v5, Lo/I4;->d:F

    .line 2021
    invoke-virtual {v2, v6, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 2024
    move-result v3

    .line 2025
    iput v3, v5, Lo/I4;->d:F

    .line 2027
    goto :goto_d

    .line 2028
    :pswitch_6d
    move/from16 p2, v3

    .line 2030
    move-object/from16 v10, v18

    .line 2032
    move-object/from16 v15, v20

    .line 2034
    iget v3, v8, Lo/H4;->e:F

    .line 2036
    invoke-virtual {v2, v6, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 2039
    move-result v3

    .line 2040
    iput v3, v8, Lo/H4;->e:F

    .line 2042
    goto :goto_d

    .line 2043
    :pswitch_6e
    move/from16 p2, v3

    .line 2045
    move-object/from16 v10, v18

    .line 2047
    move-object/from16 v15, v20

    .line 2049
    const/4 v3, 0x0

    .line 2050
    invoke-virtual {v2, v6, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 2053
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2056
    goto/16 :goto_a

    .line 2058
    :pswitch_6f
    move/from16 p2, v3

    .line 2060
    move-object/from16 v10, v18

    .line 2062
    move-object/from16 v15, v20

    .line 2064
    invoke-virtual {v2, v6}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    .line 2067
    move-result-object v3

    .line 2068
    iget v3, v3, Landroid/util/TypedValue;->type:I

    .line 2070
    move-object/from16 v18, v0

    .line 2072
    const/4 v0, 0x3

    .line 2073
    if-ne v3, v0, :cond_d

    .line 2075
    invoke-virtual {v2, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 2078
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2081
    goto :goto_e

    .line 2082
    :cond_d
    const/4 v3, 0x0

    .line 2083
    invoke-virtual {v2, v6, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    .line 2086
    move-result v6

    .line 2087
    aget-object v6, v17, v6

    .line 2089
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2092
    goto/16 :goto_b

    .line 2094
    :pswitch_70
    move/from16 p2, v3

    .line 2096
    move-object/from16 v10, v18

    .line 2098
    move-object/from16 v15, v20

    .line 2100
    const/4 v3, 0x0

    .line 2101
    move-object/from16 v18, v0

    .line 2103
    iget v0, v8, Lo/H4;->a:I

    .line 2105
    invoke-static {v2, v6, v0}, Lo/K4;->f(Landroid/content/res/TypedArray;II)I

    .line 2108
    move-result v0

    .line 2109
    iput v0, v8, Lo/H4;->a:I

    .line 2111
    goto/16 :goto_b

    .line 2113
    :pswitch_71
    move/from16 p2, v3

    .line 2115
    move-object/from16 v10, v18

    .line 2117
    move-object/from16 v15, v20

    .line 2119
    const/4 v3, 0x0

    .line 2120
    move-object/from16 v18, v0

    .line 2122
    iget v0, v9, Lo/G4;->B:F

    .line 2124
    invoke-virtual {v2, v6, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 2127
    move-result v0

    .line 2128
    iput v0, v9, Lo/G4;->B:F

    .line 2130
    goto/16 :goto_b

    .line 2132
    :pswitch_72
    move/from16 p2, v3

    .line 2134
    move-object/from16 v10, v18

    .line 2136
    move-object/from16 v15, v20

    .line 2138
    const/4 v3, 0x0

    .line 2139
    move-object/from16 v18, v0

    .line 2141
    iget v0, v9, Lo/G4;->A:I

    .line 2143
    invoke-virtual {v2, v6, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 2146
    move-result v0

    .line 2147
    iput v0, v9, Lo/G4;->A:I

    .line 2149
    goto/16 :goto_b

    .line 2151
    :pswitch_73
    move/from16 p2, v3

    .line 2153
    move-object/from16 v10, v18

    .line 2155
    move-object/from16 v15, v20

    .line 2157
    const/4 v3, 0x0

    .line 2158
    move-object/from16 v18, v0

    .line 2160
    iget v0, v9, Lo/G4;->z:I

    .line 2162
    invoke-static {v2, v6, v0}, Lo/K4;->f(Landroid/content/res/TypedArray;II)I

    .line 2165
    move-result v0

    .line 2166
    iput v0, v9, Lo/G4;->z:I

    .line 2168
    goto/16 :goto_b

    .line 2170
    :pswitch_74
    move/from16 p2, v3

    .line 2172
    move-object/from16 v10, v18

    .line 2174
    move-object/from16 v15, v20

    .line 2176
    const/4 v3, 0x0

    .line 2177
    move-object/from16 v18, v0

    .line 2179
    iget v0, v7, Lo/J4;->a:F

    .line 2181
    invoke-virtual {v2, v6, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 2184
    move-result v0

    .line 2185
    iput v0, v7, Lo/J4;->a:F

    .line 2187
    goto/16 :goto_b

    .line 2189
    :pswitch_75
    move/from16 p2, v3

    .line 2191
    move-object/from16 v10, v18

    .line 2193
    move-object/from16 v15, v20

    .line 2195
    const/4 v3, 0x0

    .line 2196
    move-object/from16 v18, v0

    .line 2198
    iget v0, v9, Lo/G4;->c0:I

    .line 2200
    invoke-virtual {v2, v6, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 2203
    move-result v0

    .line 2204
    iput v0, v9, Lo/G4;->c0:I

    .line 2206
    goto/16 :goto_b

    .line 2208
    :pswitch_76
    move/from16 p2, v3

    .line 2210
    move-object/from16 v10, v18

    .line 2212
    move-object/from16 v15, v20

    .line 2214
    const/4 v3, 0x0

    .line 2215
    move-object/from16 v18, v0

    .line 2217
    iget v0, v9, Lo/G4;->b0:I

    .line 2219
    invoke-virtual {v2, v6, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 2222
    move-result v0

    .line 2223
    iput v0, v9, Lo/G4;->b0:I

    .line 2225
    goto/16 :goto_b

    .line 2227
    :pswitch_77
    move/from16 p2, v3

    .line 2229
    move-object/from16 v10, v18

    .line 2231
    move-object/from16 v15, v20

    .line 2233
    const/4 v3, 0x0

    .line 2234
    move-object/from16 v18, v0

    .line 2236
    iget v0, v9, Lo/G4;->a0:I

    .line 2238
    invoke-virtual {v2, v6, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 2241
    move-result v0

    .line 2242
    iput v0, v9, Lo/G4;->a0:I

    .line 2244
    goto/16 :goto_b

    .line 2246
    :pswitch_78
    move/from16 p2, v3

    .line 2248
    move-object/from16 v10, v18

    .line 2250
    move-object/from16 v15, v20

    .line 2252
    const/4 v3, 0x0

    .line 2253
    move-object/from16 v18, v0

    .line 2255
    iget v0, v9, Lo/G4;->Z:I

    .line 2257
    invoke-virtual {v2, v6, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 2260
    move-result v0

    .line 2261
    iput v0, v9, Lo/G4;->Z:I

    .line 2263
    goto/16 :goto_b

    .line 2265
    :pswitch_79
    move/from16 p2, v3

    .line 2267
    move-object/from16 v10, v18

    .line 2269
    move-object/from16 v15, v20

    .line 2271
    const/4 v3, 0x0

    .line 2272
    move-object/from16 v18, v0

    .line 2274
    iget v0, v9, Lo/G4;->Y:I

    .line 2276
    invoke-virtual {v2, v6, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 2279
    move-result v0

    .line 2280
    iput v0, v9, Lo/G4;->Y:I

    .line 2282
    goto/16 :goto_b

    .line 2284
    :pswitch_7a
    move/from16 p2, v3

    .line 2286
    move-object/from16 v10, v18

    .line 2288
    move-object/from16 v15, v20

    .line 2290
    const/4 v3, 0x0

    .line 2291
    move-object/from16 v18, v0

    .line 2293
    iget v0, v9, Lo/G4;->X:I

    .line 2295
    invoke-virtual {v2, v6, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 2298
    move-result v0

    .line 2299
    iput v0, v9, Lo/G4;->X:I

    .line 2301
    goto/16 :goto_b

    .line 2303
    :pswitch_7b
    move/from16 p2, v3

    .line 2305
    move-object/from16 v10, v18

    .line 2307
    move-object/from16 v15, v20

    .line 2309
    const/4 v3, 0x0

    .line 2310
    move-object/from16 v18, v0

    .line 2312
    iget v0, v7, Lo/J4;->k:F

    .line 2314
    invoke-virtual {v2, v6, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 2317
    move-result v0

    .line 2318
    iput v0, v7, Lo/J4;->k:F

    .line 2320
    goto/16 :goto_b

    .line 2322
    :pswitch_7c
    move/from16 p2, v3

    .line 2324
    move-object/from16 v10, v18

    .line 2326
    move-object/from16 v15, v20

    .line 2328
    const/4 v3, 0x0

    .line 2329
    move-object/from16 v18, v0

    .line 2331
    iget v0, v7, Lo/J4;->j:F

    .line 2333
    invoke-virtual {v2, v6, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 2336
    move-result v0

    .line 2337
    iput v0, v7, Lo/J4;->j:F

    .line 2339
    goto/16 :goto_b

    .line 2341
    :pswitch_7d
    move/from16 p2, v3

    .line 2343
    move-object/from16 v10, v18

    .line 2345
    move-object/from16 v15, v20

    .line 2347
    const/4 v3, 0x0

    .line 2348
    move-object/from16 v18, v0

    .line 2350
    iget v0, v7, Lo/J4;->i:F

    .line 2352
    invoke-virtual {v2, v6, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 2355
    move-result v0

    .line 2356
    iput v0, v7, Lo/J4;->i:F

    .line 2358
    goto/16 :goto_b

    .line 2360
    :pswitch_7e
    move/from16 p2, v3

    .line 2362
    move-object/from16 v10, v18

    .line 2364
    move-object/from16 v15, v20

    .line 2366
    const/4 v3, 0x0

    .line 2367
    move-object/from16 v18, v0

    .line 2369
    iget v0, v7, Lo/J4;->g:F

    .line 2371
    invoke-virtual {v2, v6, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 2374
    move-result v0

    .line 2375
    iput v0, v7, Lo/J4;->g:F

    .line 2377
    goto/16 :goto_b

    .line 2379
    :pswitch_7f
    move/from16 p2, v3

    .line 2381
    move-object/from16 v10, v18

    .line 2383
    move-object/from16 v15, v20

    .line 2385
    const/4 v3, 0x0

    .line 2386
    move-object/from16 v18, v0

    .line 2388
    iget v0, v7, Lo/J4;->f:F

    .line 2390
    invoke-virtual {v2, v6, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 2393
    move-result v0

    .line 2394
    iput v0, v7, Lo/J4;->f:F

    .line 2396
    goto/16 :goto_b

    .line 2398
    :pswitch_80
    move/from16 p2, v3

    .line 2400
    move-object/from16 v10, v18

    .line 2402
    move-object/from16 v15, v20

    .line 2404
    const/4 v3, 0x0

    .line 2405
    move-object/from16 v18, v0

    .line 2407
    iget v0, v7, Lo/J4;->e:F

    .line 2409
    invoke-virtual {v2, v6, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 2412
    move-result v0

    .line 2413
    iput v0, v7, Lo/J4;->e:F

    .line 2415
    goto/16 :goto_b

    .line 2417
    :pswitch_81
    move/from16 p2, v3

    .line 2419
    move-object/from16 v10, v18

    .line 2421
    move-object/from16 v15, v20

    .line 2423
    const/4 v3, 0x0

    .line 2424
    move-object/from16 v18, v0

    .line 2426
    iget v0, v7, Lo/J4;->d:F

    .line 2428
    invoke-virtual {v2, v6, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 2431
    move-result v0

    .line 2432
    iput v0, v7, Lo/J4;->d:F

    .line 2434
    goto/16 :goto_b

    .line 2436
    :pswitch_82
    move/from16 p2, v3

    .line 2438
    move-object/from16 v10, v18

    .line 2440
    move-object/from16 v15, v20

    .line 2442
    const/4 v3, 0x0

    .line 2443
    move-object/from16 v18, v0

    .line 2445
    iget v0, v7, Lo/J4;->c:F

    .line 2447
    invoke-virtual {v2, v6, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 2450
    move-result v0

    .line 2451
    iput v0, v7, Lo/J4;->c:F

    .line 2453
    goto/16 :goto_b

    .line 2455
    :pswitch_83
    move/from16 p2, v3

    .line 2457
    move-object/from16 v10, v18

    .line 2459
    move-object/from16 v15, v20

    .line 2461
    const/4 v3, 0x0

    .line 2462
    move-object/from16 v18, v0

    .line 2464
    iget v0, v7, Lo/J4;->b:F

    .line 2466
    invoke-virtual {v2, v6, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 2469
    move-result v0

    .line 2470
    iput v0, v7, Lo/J4;->b:F

    .line 2472
    goto/16 :goto_b

    .line 2474
    :pswitch_84
    move/from16 p2, v3

    .line 2476
    move-object/from16 v10, v18

    .line 2478
    move-object/from16 v15, v20

    .line 2480
    const/4 v3, 0x0

    .line 2481
    move-object/from16 v18, v0

    .line 2483
    const/4 v0, 0x1

    .line 2484
    iput-boolean v0, v7, Lo/J4;->l:Z

    .line 2486
    iget v0, v7, Lo/J4;->m:F

    .line 2488
    invoke-virtual {v2, v6, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 2491
    move-result v0

    .line 2492
    iput v0, v7, Lo/J4;->m:F

    .line 2494
    goto/16 :goto_b

    .line 2496
    :pswitch_85
    move/from16 p2, v3

    .line 2498
    move-object/from16 v10, v18

    .line 2500
    move-object/from16 v15, v20

    .line 2502
    const/4 v3, 0x0

    .line 2503
    move-object/from16 v18, v0

    .line 2505
    iget v0, v5, Lo/I4;->c:F

    .line 2507
    invoke-virtual {v2, v6, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 2510
    move-result v0

    .line 2511
    iput v0, v5, Lo/I4;->c:F

    .line 2513
    goto/16 :goto_b

    .line 2515
    :pswitch_86
    move/from16 p2, v3

    .line 2517
    move-object/from16 v10, v18

    .line 2519
    move-object/from16 v15, v20

    .line 2521
    const/4 v3, 0x0

    .line 2522
    move-object/from16 v18, v0

    .line 2524
    iget v0, v9, Lo/G4;->W:I

    .line 2526
    invoke-virtual {v2, v6, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 2529
    move-result v0

    .line 2530
    iput v0, v9, Lo/G4;->W:I

    .line 2532
    goto/16 :goto_b

    .line 2534
    :pswitch_87
    move/from16 p2, v3

    .line 2536
    move-object/from16 v10, v18

    .line 2538
    move-object/from16 v15, v20

    .line 2540
    const/4 v3, 0x0

    .line 2541
    move-object/from16 v18, v0

    .line 2543
    iget v0, v9, Lo/G4;->V:I

    .line 2545
    invoke-virtual {v2, v6, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 2548
    move-result v0

    .line 2549
    iput v0, v9, Lo/G4;->V:I

    .line 2551
    goto/16 :goto_b

    .line 2553
    :pswitch_88
    move/from16 p2, v3

    .line 2555
    move-object/from16 v10, v18

    .line 2557
    move-object/from16 v15, v20

    .line 2559
    const/4 v3, 0x0

    .line 2560
    move-object/from16 v18, v0

    .line 2562
    iget v0, v9, Lo/G4;->T:F

    .line 2564
    invoke-virtual {v2, v6, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 2567
    move-result v0

    .line 2568
    iput v0, v9, Lo/G4;->T:F

    .line 2570
    goto/16 :goto_b

    .line 2572
    :pswitch_89
    move/from16 p2, v3

    .line 2574
    move-object/from16 v10, v18

    .line 2576
    move-object/from16 v15, v20

    .line 2578
    const/4 v3, 0x0

    .line 2579
    move-object/from16 v18, v0

    .line 2581
    iget v0, v9, Lo/G4;->U:F

    .line 2583
    invoke-virtual {v2, v6, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 2586
    move-result v0

    .line 2587
    iput v0, v9, Lo/G4;->U:F

    .line 2589
    goto/16 :goto_b

    .line 2591
    :pswitch_8a
    move/from16 p2, v3

    .line 2593
    move-object/from16 v10, v18

    .line 2595
    move-object/from16 v15, v20

    .line 2597
    const/4 v3, 0x0

    .line 2598
    move-object/from16 v18, v0

    .line 2600
    iget v0, v1, Lo/F4;->a:I

    .line 2602
    invoke-virtual {v2, v6, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 2605
    move-result v0

    .line 2606
    iput v0, v1, Lo/F4;->a:I

    .line 2608
    goto/16 :goto_b

    .line 2610
    :pswitch_8b
    move/from16 p2, v3

    .line 2612
    move-object/from16 v10, v18

    .line 2614
    move-object/from16 v15, v20

    .line 2616
    const/4 v3, 0x0

    .line 2617
    move-object/from16 v18, v0

    .line 2619
    iget v0, v9, Lo/G4;->x:F

    .line 2621
    invoke-virtual {v2, v6, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 2624
    move-result v0

    .line 2625
    iput v0, v9, Lo/G4;->x:F

    .line 2627
    goto/16 :goto_b

    .line 2629
    :pswitch_8c
    move/from16 p2, v3

    .line 2631
    move-object/from16 v10, v18

    .line 2633
    move-object/from16 v15, v20

    .line 2635
    const/4 v3, 0x0

    .line 2636
    move-object/from16 v18, v0

    .line 2638
    iget v0, v9, Lo/G4;->l:I

    .line 2640
    invoke-static {v2, v6, v0}, Lo/K4;->f(Landroid/content/res/TypedArray;II)I

    .line 2643
    move-result v0

    .line 2644
    iput v0, v9, Lo/G4;->l:I

    .line 2646
    goto/16 :goto_b

    .line 2648
    :pswitch_8d
    move/from16 p2, v3

    .line 2650
    move-object/from16 v10, v18

    .line 2652
    move-object/from16 v15, v20

    .line 2654
    const/4 v3, 0x0

    .line 2655
    move-object/from16 v18, v0

    .line 2657
    iget v0, v9, Lo/G4;->m:I

    .line 2659
    invoke-static {v2, v6, v0}, Lo/K4;->f(Landroid/content/res/TypedArray;II)I

    .line 2662
    move-result v0

    .line 2663
    iput v0, v9, Lo/G4;->m:I

    .line 2665
    goto/16 :goto_b

    .line 2667
    :pswitch_8e
    move/from16 p2, v3

    .line 2669
    move-object/from16 v10, v18

    .line 2671
    move-object/from16 v15, v20

    .line 2673
    const/4 v3, 0x0

    .line 2674
    move-object/from16 v18, v0

    .line 2676
    iget v0, v9, Lo/G4;->H:I

    .line 2678
    invoke-virtual {v2, v6, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 2681
    move-result v0

    .line 2682
    iput v0, v9, Lo/G4;->H:I

    .line 2684
    goto/16 :goto_b

    .line 2686
    :pswitch_8f
    move/from16 p2, v3

    .line 2688
    move-object/from16 v10, v18

    .line 2690
    move-object/from16 v15, v20

    .line 2692
    const/4 v3, 0x0

    .line 2693
    move-object/from16 v18, v0

    .line 2695
    iget v0, v9, Lo/G4;->t:I

    .line 2697
    invoke-static {v2, v6, v0}, Lo/K4;->f(Landroid/content/res/TypedArray;II)I

    .line 2700
    move-result v0

    .line 2701
    iput v0, v9, Lo/G4;->t:I

    .line 2703
    goto/16 :goto_b

    .line 2705
    :pswitch_90
    move/from16 p2, v3

    .line 2707
    move-object/from16 v10, v18

    .line 2709
    move-object/from16 v15, v20

    .line 2711
    const/4 v3, 0x0

    .line 2712
    move-object/from16 v18, v0

    .line 2714
    iget v0, v9, Lo/G4;->s:I

    .line 2716
    invoke-static {v2, v6, v0}, Lo/K4;->f(Landroid/content/res/TypedArray;II)I

    .line 2719
    move-result v0

    .line 2720
    iput v0, v9, Lo/G4;->s:I

    .line 2722
    goto/16 :goto_b

    .line 2724
    :pswitch_91
    move/from16 p2, v3

    .line 2726
    move-object/from16 v10, v18

    .line 2728
    move-object/from16 v15, v20

    .line 2730
    const/4 v3, 0x0

    .line 2731
    move-object/from16 v18, v0

    .line 2733
    iget v0, v9, Lo/G4;->K:I

    .line 2735
    invoke-virtual {v2, v6, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 2738
    move-result v0

    .line 2739
    iput v0, v9, Lo/G4;->K:I

    .line 2741
    goto/16 :goto_b

    .line 2743
    :pswitch_92
    move/from16 p2, v3

    .line 2745
    move-object/from16 v10, v18

    .line 2747
    move-object/from16 v15, v20

    .line 2749
    const/4 v3, 0x0

    .line 2750
    move-object/from16 v18, v0

    .line 2752
    iget v0, v9, Lo/G4;->k:I

    .line 2754
    invoke-static {v2, v6, v0}, Lo/K4;->f(Landroid/content/res/TypedArray;II)I

    .line 2757
    move-result v0

    .line 2758
    iput v0, v9, Lo/G4;->k:I

    .line 2760
    goto/16 :goto_b

    .line 2762
    :pswitch_93
    move/from16 p2, v3

    .line 2764
    move-object/from16 v10, v18

    .line 2766
    move-object/from16 v15, v20

    .line 2768
    const/4 v3, 0x0

    .line 2769
    move-object/from16 v18, v0

    .line 2771
    iget v0, v9, Lo/G4;->j:I

    .line 2773
    invoke-static {v2, v6, v0}, Lo/K4;->f(Landroid/content/res/TypedArray;II)I

    .line 2776
    move-result v0

    .line 2777
    iput v0, v9, Lo/G4;->j:I

    .line 2779
    goto/16 :goto_b

    .line 2781
    :pswitch_94
    move/from16 p2, v3

    .line 2783
    move-object/from16 v10, v18

    .line 2785
    move-object/from16 v15, v20

    .line 2787
    const/4 v3, 0x0

    .line 2788
    move-object/from16 v18, v0

    .line 2790
    iget v0, v9, Lo/G4;->G:I

    .line 2792
    invoke-virtual {v2, v6, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 2795
    move-result v0

    .line 2796
    iput v0, v9, Lo/G4;->G:I

    .line 2798
    goto/16 :goto_b

    .line 2800
    :pswitch_95
    move/from16 p2, v3

    .line 2802
    move-object/from16 v10, v18

    .line 2804
    move-object/from16 v15, v20

    .line 2806
    const/4 v3, 0x0

    .line 2807
    move-object/from16 v18, v0

    .line 2809
    iget v0, v9, Lo/G4;->E:I

    .line 2811
    invoke-virtual {v2, v6, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 2814
    move-result v0

    .line 2815
    iput v0, v9, Lo/G4;->E:I

    .line 2817
    goto/16 :goto_b

    .line 2819
    :pswitch_96
    move/from16 p2, v3

    .line 2821
    move-object/from16 v10, v18

    .line 2823
    move-object/from16 v15, v20

    .line 2825
    const/4 v3, 0x0

    .line 2826
    move-object/from16 v18, v0

    .line 2828
    iget v0, v9, Lo/G4;->i:I

    .line 2830
    invoke-static {v2, v6, v0}, Lo/K4;->f(Landroid/content/res/TypedArray;II)I

    .line 2833
    move-result v0

    .line 2834
    iput v0, v9, Lo/G4;->i:I

    .line 2836
    goto/16 :goto_b

    .line 2838
    :pswitch_97
    move/from16 p2, v3

    .line 2840
    move-object/from16 v10, v18

    .line 2842
    move-object/from16 v15, v20

    .line 2844
    const/4 v3, 0x0

    .line 2845
    move-object/from16 v18, v0

    .line 2847
    iget v0, v9, Lo/G4;->h:I

    .line 2849
    invoke-static {v2, v6, v0}, Lo/K4;->f(Landroid/content/res/TypedArray;II)I

    .line 2852
    move-result v0

    .line 2853
    iput v0, v9, Lo/G4;->h:I

    .line 2855
    goto/16 :goto_b

    .line 2857
    :pswitch_98
    move/from16 p2, v3

    .line 2859
    move-object/from16 v10, v18

    .line 2861
    move-object/from16 v15, v20

    .line 2863
    const/4 v3, 0x0

    .line 2864
    move-object/from16 v18, v0

    .line 2866
    iget v0, v9, Lo/G4;->F:I

    .line 2868
    invoke-virtual {v2, v6, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 2871
    move-result v0

    .line 2872
    iput v0, v9, Lo/G4;->F:I

    .line 2874
    goto/16 :goto_b

    .line 2876
    :pswitch_99
    move/from16 p2, v3

    .line 2878
    move-object/from16 v10, v18

    .line 2880
    move-object/from16 v15, v20

    .line 2882
    const/4 v3, 0x0

    .line 2883
    move-object/from16 v18, v0

    .line 2885
    iget v0, v9, Lo/G4;->b:I

    .line 2887
    invoke-virtual {v2, v6, v0}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    .line 2890
    move-result v0

    .line 2891
    iput v0, v9, Lo/G4;->b:I

    .line 2893
    goto/16 :goto_b

    .line 2895
    :pswitch_9a
    move/from16 p2, v3

    .line 2897
    move-object/from16 v10, v18

    .line 2899
    move-object/from16 v15, v20

    .line 2901
    const/4 v3, 0x0

    .line 2902
    move-object/from16 v18, v0

    .line 2904
    iget v0, v5, Lo/I4;->a:I

    .line 2906
    invoke-virtual {v2, v6, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 2909
    move-result v0

    .line 2910
    iput v0, v5, Lo/I4;->a:I

    .line 2912
    aget v0, v16, v0

    .line 2914
    iput v0, v5, Lo/I4;->a:I

    .line 2916
    goto/16 :goto_b

    .line 2918
    :pswitch_9b
    move/from16 p2, v3

    .line 2920
    move-object/from16 v10, v18

    .line 2922
    move-object/from16 v15, v20

    .line 2924
    const/4 v3, 0x0

    .line 2925
    move-object/from16 v18, v0

    .line 2927
    iget v0, v9, Lo/G4;->c:I

    .line 2929
    invoke-virtual {v2, v6, v0}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    .line 2932
    move-result v0

    .line 2933
    iput v0, v9, Lo/G4;->c:I

    .line 2935
    goto/16 :goto_b

    .line 2937
    :pswitch_9c
    move/from16 p2, v3

    .line 2939
    move-object/from16 v10, v18

    .line 2941
    move-object/from16 v15, v20

    .line 2943
    const/4 v3, 0x0

    .line 2944
    move-object/from16 v18, v0

    .line 2946
    iget v0, v9, Lo/G4;->w:F

    .line 2948
    invoke-virtual {v2, v6, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 2951
    move-result v0

    .line 2952
    iput v0, v9, Lo/G4;->w:F

    .line 2954
    goto/16 :goto_b

    .line 2956
    :pswitch_9d
    move/from16 p2, v3

    .line 2958
    move-object/from16 v10, v18

    .line 2960
    move-object/from16 v15, v20

    .line 2962
    const/4 v3, 0x0

    .line 2963
    move-object/from16 v18, v0

    .line 2965
    iget v0, v9, Lo/G4;->f:F

    .line 2967
    invoke-virtual {v2, v6, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 2970
    move-result v0

    .line 2971
    iput v0, v9, Lo/G4;->f:F

    .line 2973
    goto/16 :goto_b

    .line 2975
    :pswitch_9e
    move/from16 p2, v3

    .line 2977
    move-object/from16 v10, v18

    .line 2979
    move-object/from16 v15, v20

    .line 2981
    const/4 v3, 0x0

    .line 2982
    move-object/from16 v18, v0

    .line 2984
    iget v0, v9, Lo/G4;->e:I

    .line 2986
    invoke-virtual {v2, v6, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    .line 2989
    move-result v0

    .line 2990
    iput v0, v9, Lo/G4;->e:I

    .line 2992
    goto/16 :goto_b

    .line 2994
    :pswitch_9f
    move/from16 p2, v3

    .line 2996
    move-object/from16 v10, v18

    .line 2998
    move-object/from16 v15, v20

    .line 3000
    const/4 v3, 0x0

    .line 3001
    move-object/from16 v18, v0

    .line 3003
    iget v0, v9, Lo/G4;->d:I

    .line 3005
    invoke-virtual {v2, v6, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    .line 3008
    move-result v0

    .line 3009
    iput v0, v9, Lo/G4;->d:I

    .line 3011
    goto/16 :goto_b

    .line 3013
    :pswitch_a0
    move/from16 p2, v3

    .line 3015
    move-object/from16 v10, v18

    .line 3017
    move-object/from16 v15, v20

    .line 3019
    const/4 v3, 0x0

    .line 3020
    move-object/from16 v18, v0

    .line 3022
    iget v0, v9, Lo/G4;->N:I

    .line 3024
    invoke-virtual {v2, v6, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 3027
    move-result v0

    .line 3028
    iput v0, v9, Lo/G4;->N:I

    .line 3030
    goto/16 :goto_b

    .line 3032
    :pswitch_a1
    move/from16 p2, v3

    .line 3034
    move-object/from16 v10, v18

    .line 3036
    move-object/from16 v15, v20

    .line 3038
    const/4 v3, 0x0

    .line 3039
    move-object/from16 v18, v0

    .line 3041
    iget v0, v9, Lo/G4;->R:I

    .line 3043
    invoke-virtual {v2, v6, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 3046
    move-result v0

    .line 3047
    iput v0, v9, Lo/G4;->R:I

    .line 3049
    goto/16 :goto_b

    .line 3051
    :pswitch_a2
    move/from16 p2, v3

    .line 3053
    move-object/from16 v10, v18

    .line 3055
    move-object/from16 v15, v20

    .line 3057
    const/4 v3, 0x0

    .line 3058
    move-object/from16 v18, v0

    .line 3060
    iget v0, v9, Lo/G4;->O:I

    .line 3062
    invoke-virtual {v2, v6, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 3065
    move-result v0

    .line 3066
    iput v0, v9, Lo/G4;->O:I

    .line 3068
    goto/16 :goto_b

    .line 3070
    :pswitch_a3
    move/from16 p2, v3

    .line 3072
    move-object/from16 v10, v18

    .line 3074
    move-object/from16 v15, v20

    .line 3076
    const/4 v3, 0x0

    .line 3077
    move-object/from16 v18, v0

    .line 3079
    iget v0, v9, Lo/G4;->M:I

    .line 3081
    invoke-virtual {v2, v6, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 3084
    move-result v0

    .line 3085
    iput v0, v9, Lo/G4;->M:I

    .line 3087
    goto/16 :goto_b

    .line 3089
    :pswitch_a4
    move/from16 p2, v3

    .line 3091
    move-object/from16 v10, v18

    .line 3093
    move-object/from16 v15, v20

    .line 3095
    const/4 v3, 0x0

    .line 3096
    move-object/from16 v18, v0

    .line 3098
    iget v0, v9, Lo/G4;->Q:I

    .line 3100
    invoke-virtual {v2, v6, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 3103
    move-result v0

    .line 3104
    iput v0, v9, Lo/G4;->Q:I

    .line 3106
    goto/16 :goto_b

    .line 3108
    :pswitch_a5
    move/from16 p2, v3

    .line 3110
    move-object/from16 v10, v18

    .line 3112
    move-object/from16 v15, v20

    .line 3114
    const/4 v3, 0x0

    .line 3115
    move-object/from16 v18, v0

    .line 3117
    iget v0, v9, Lo/G4;->P:I

    .line 3119
    invoke-virtual {v2, v6, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 3122
    move-result v0

    .line 3123
    iput v0, v9, Lo/G4;->P:I

    .line 3125
    goto/16 :goto_b

    .line 3127
    :pswitch_a6
    move/from16 p2, v3

    .line 3129
    move-object/from16 v10, v18

    .line 3131
    move-object/from16 v15, v20

    .line 3133
    const/4 v3, 0x0

    .line 3134
    move-object/from16 v18, v0

    .line 3136
    iget v0, v9, Lo/G4;->u:I

    .line 3138
    invoke-static {v2, v6, v0}, Lo/K4;->f(Landroid/content/res/TypedArray;II)I

    .line 3141
    move-result v0

    .line 3142
    iput v0, v9, Lo/G4;->u:I

    .line 3144
    goto/16 :goto_b

    .line 3146
    :pswitch_a7
    move/from16 p2, v3

    .line 3148
    move-object/from16 v10, v18

    .line 3150
    move-object/from16 v15, v20

    .line 3152
    const/4 v3, 0x0

    .line 3153
    move-object/from16 v18, v0

    .line 3155
    iget v0, v9, Lo/G4;->v:I

    .line 3157
    invoke-static {v2, v6, v0}, Lo/K4;->f(Landroid/content/res/TypedArray;II)I

    .line 3160
    move-result v0

    .line 3161
    iput v0, v9, Lo/G4;->v:I

    .line 3163
    goto/16 :goto_b

    .line 3165
    :pswitch_a8
    move/from16 p2, v3

    .line 3167
    move-object/from16 v10, v18

    .line 3169
    move-object/from16 v15, v20

    .line 3171
    const/4 v3, 0x0

    .line 3172
    move-object/from16 v18, v0

    .line 3174
    iget v0, v9, Lo/G4;->J:I

    .line 3176
    invoke-virtual {v2, v6, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 3179
    move-result v0

    .line 3180
    iput v0, v9, Lo/G4;->J:I

    .line 3182
    goto/16 :goto_b

    .line 3184
    :pswitch_a9
    move/from16 p2, v3

    .line 3186
    move-object/from16 v10, v18

    .line 3188
    move-object/from16 v15, v20

    .line 3190
    const/4 v3, 0x0

    .line 3191
    move-object/from16 v18, v0

    .line 3193
    iget v0, v9, Lo/G4;->D:I

    .line 3195
    invoke-virtual {v2, v6, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    .line 3198
    move-result v0

    .line 3199
    iput v0, v9, Lo/G4;->D:I

    .line 3201
    goto/16 :goto_b

    .line 3203
    :pswitch_aa
    move/from16 p2, v3

    .line 3205
    move-object/from16 v10, v18

    .line 3207
    move-object/from16 v15, v20

    .line 3209
    const/4 v3, 0x0

    .line 3210
    move-object/from16 v18, v0

    .line 3212
    iget v0, v9, Lo/G4;->C:I

    .line 3214
    invoke-virtual {v2, v6, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    .line 3217
    move-result v0

    .line 3218
    iput v0, v9, Lo/G4;->C:I

    .line 3220
    goto/16 :goto_b

    .line 3222
    :pswitch_ab
    move/from16 p2, v3

    .line 3224
    move-object/from16 v10, v18

    .line 3226
    move-object/from16 v15, v20

    .line 3228
    const/4 v3, 0x0

    .line 3229
    move-object/from16 v18, v0

    .line 3231
    invoke-virtual {v2, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 3234
    move-result-object v0

    .line 3235
    iput-object v0, v9, Lo/G4;->y:Ljava/lang/String;

    .line 3237
    goto/16 :goto_b

    .line 3239
    :pswitch_ac
    move/from16 p2, v3

    .line 3241
    move-object/from16 v10, v18

    .line 3243
    move-object/from16 v15, v20

    .line 3245
    const/4 v3, 0x0

    .line 3246
    move-object/from16 v18, v0

    .line 3248
    iget v0, v9, Lo/G4;->n:I

    .line 3250
    invoke-static {v2, v6, v0}, Lo/K4;->f(Landroid/content/res/TypedArray;II)I

    .line 3253
    move-result v0

    .line 3254
    iput v0, v9, Lo/G4;->n:I

    .line 3256
    goto/16 :goto_b

    .line 3258
    :pswitch_ad
    move/from16 p2, v3

    .line 3260
    move-object/from16 v10, v18

    .line 3262
    move-object/from16 v15, v20

    .line 3264
    const/4 v3, 0x0

    .line 3265
    move-object/from16 v18, v0

    .line 3267
    iget v0, v9, Lo/G4;->o:I

    .line 3269
    invoke-static {v2, v6, v0}, Lo/K4;->f(Landroid/content/res/TypedArray;II)I

    .line 3272
    move-result v0

    .line 3273
    iput v0, v9, Lo/G4;->o:I

    .line 3275
    goto/16 :goto_b

    .line 3277
    :pswitch_ae
    move/from16 p2, v3

    .line 3279
    move-object/from16 v10, v18

    .line 3281
    move-object/from16 v15, v20

    .line 3283
    const/4 v3, 0x0

    .line 3284
    move-object/from16 v18, v0

    .line 3286
    iget v0, v9, Lo/G4;->I:I

    .line 3288
    invoke-virtual {v2, v6, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 3291
    move-result v0

    .line 3292
    iput v0, v9, Lo/G4;->I:I

    .line 3294
    goto/16 :goto_b

    .line 3296
    :pswitch_af
    move/from16 p2, v3

    .line 3298
    move-object/from16 v10, v18

    .line 3300
    move-object/from16 v15, v20

    .line 3302
    const/4 v3, 0x0

    .line 3303
    move-object/from16 v18, v0

    .line 3305
    iget v0, v9, Lo/G4;->p:I

    .line 3307
    invoke-static {v2, v6, v0}, Lo/K4;->f(Landroid/content/res/TypedArray;II)I

    .line 3310
    move-result v0

    .line 3311
    iput v0, v9, Lo/G4;->p:I

    .line 3313
    goto/16 :goto_b

    .line 3315
    :goto_f
    add-int/2addr v12, v0

    .line 3316
    move/from16 v3, p2

    .line 3318
    move-object/from16 v20, v15

    .line 3320
    move-object/from16 v21, v10

    .line 3322
    move v10, v0

    .line 3323
    move-object/from16 v0, v18

    .line 3325
    move-object/from16 v18, v21

    .line 3327
    goto/16 :goto_7

    .line 3329
    :cond_e
    iget-object v0, v9, Lo/G4;->j0:Ljava/lang/String;

    .line 3331
    if-eqz v0, :cond_f

    .line 3333
    const/4 v0, 0x0

    .line 3334
    iput-object v0, v9, Lo/G4;->i0:[I

    .line 3336
    :cond_f
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 3339
    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_50
        :pswitch_0
        :pswitch_0
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_0
        :pswitch_0
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_0
        :pswitch_0
        :pswitch_3d
        :pswitch_3c
        :pswitch_0
        :pswitch_0
        :pswitch_3b
        :pswitch_0
        :pswitch_0
        :pswitch_3a
        :pswitch_0
        :pswitch_0
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_0
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_af
        :pswitch_ae
        :pswitch_ad
        :pswitch_ac
        :pswitch_ab
        :pswitch_aa
        :pswitch_a9
        :pswitch_a8
        :pswitch_a7
        :pswitch_a6
        :pswitch_a5
        :pswitch_a4
        :pswitch_a3
        :pswitch_a2
        :pswitch_a1
        :pswitch_a0
        :pswitch_9f
        :pswitch_9e
        :pswitch_9d
        :pswitch_9c
        :pswitch_9b
        :pswitch_9a
        :pswitch_99
        :pswitch_98
        :pswitch_97
        :pswitch_96
        :pswitch_95
        :pswitch_94
        :pswitch_93
        :pswitch_92
        :pswitch_91
        :pswitch_90
        :pswitch_8f
        :pswitch_8e
        :pswitch_8d
        :pswitch_8c
        :pswitch_8b
        :pswitch_8a
        :pswitch_89
        :pswitch_88
        :pswitch_87
        :pswitch_86
        :pswitch_85
        :pswitch_84
        :pswitch_83
        :pswitch_82
        :pswitch_81
        :pswitch_80
        :pswitch_7f
        :pswitch_7e
        :pswitch_7d
        :pswitch_7c
        :pswitch_7b
        :pswitch_7a
        :pswitch_79
        :pswitch_78
        :pswitch_77
        :pswitch_76
        :pswitch_75
        :pswitch_74
        :pswitch_73
        :pswitch_72
        :pswitch_71
        :pswitch_70
        :pswitch_6f
        :pswitch_6e
        :pswitch_6d
        :pswitch_6c
        :pswitch_6b
        :pswitch_6a
        :pswitch_69
        :pswitch_68
        :pswitch_67
        :pswitch_66
        :pswitch_65
        :pswitch_64
        :pswitch_63
        :pswitch_62
        :pswitch_61
        :pswitch_60
        :pswitch_5f
        :pswitch_5e
        :pswitch_5d
        :pswitch_5c
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_51
        :pswitch_51
        :pswitch_51
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
    .end packed-switch
.end method

.method public static f(Landroid/content/res/TypedArray;II)I
    .locals 1

    .line 1
    invoke-virtual {p0, p1, p2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 4
    move-result p2

    .line 5
    const/4 v0, -0x1

    .line 6
    if-ne p2, v0, :cond_0

    .line 8
    invoke-virtual {p0, p1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 11
    move-result p2

    .line 12
    :cond_0
    return p2
.end method

.method public static g(Ljava/lang/Object;Landroid/content/res/TypedArray;II)V
    .locals 7

    .line 1
    if-nez p0, :cond_0

    .line 3
    return-void

    .line 4
    :cond_0
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    .line 7
    move-result-object v0

    .line 8
    iget v0, v0, Landroid/util/TypedValue;->type:I

    .line 10
    const/4 v1, 0x3

    .line 11
    const/16 v2, 0x17

    .line 13
    const/16 v3, 0x15

    .line 15
    const/4 v4, 0x1

    .line 16
    const/4 v5, 0x5

    .line 17
    const/4 v6, 0x0

    .line 18
    if-eq v0, v1, :cond_b

    .line 20
    if-eq v0, v5, :cond_4

    .line 22
    invoke-virtual {p1, p2, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 25
    move-result p1

    .line 26
    const/4 p2, -0x4

    .line 27
    const/4 v0, -0x2

    .line 28
    if-eq p1, p2, :cond_3

    .line 30
    const/4 p2, -0x3

    .line 31
    if-eq p1, p2, :cond_1

    .line 33
    if-eq p1, v0, :cond_2

    .line 35
    const/4 p2, -0x1

    .line 36
    if-eq p1, p2, :cond_2

    .line 38
    :cond_1
    move v4, v6

    .line 39
    goto :goto_1

    .line 40
    :cond_2
    :goto_0
    move v4, v6

    .line 41
    move v6, p1

    .line 42
    goto :goto_1

    .line 43
    :cond_3
    move v6, v0

    .line 44
    goto :goto_1

    .line 45
    :cond_4
    invoke-virtual {p1, p2, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 48
    move-result p1

    .line 49
    goto :goto_0

    .line 50
    :goto_1
    instance-of p1, p0, Lo/B4;

    .line 52
    if-eqz p1, :cond_6

    .line 54
    check-cast p0, Lo/B4;

    .line 56
    if-nez p3, :cond_5

    .line 58
    iput v6, p0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 60
    iput-boolean v4, p0, Lo/B4;->W:Z

    .line 62
    goto :goto_2

    .line 63
    :cond_5
    iput v6, p0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 65
    iput-boolean v4, p0, Lo/B4;->X:Z

    .line 67
    goto :goto_2

    .line 68
    :cond_6
    instance-of p1, p0, Lo/G4;

    .line 70
    if-eqz p1, :cond_8

    .line 72
    check-cast p0, Lo/G4;

    .line 74
    if-nez p3, :cond_7

    .line 76
    iput v6, p0, Lo/G4;->b:I

    .line 78
    iput-boolean v4, p0, Lo/G4;->l0:Z

    .line 80
    goto :goto_2

    .line 81
    :cond_7
    iput v6, p0, Lo/G4;->c:I

    .line 83
    iput-boolean v4, p0, Lo/G4;->m0:Z

    .line 85
    goto :goto_2

    .line 86
    :cond_8
    instance-of p1, p0, Lo/E4;

    .line 88
    if-eqz p1, :cond_a

    .line 90
    check-cast p0, Lo/E4;

    .line 92
    if-nez p3, :cond_9

    .line 94
    invoke-virtual {p0, v2, v6}, Lo/E4;->b(II)V

    .line 97
    const/16 p1, 0x50

    .line 99
    invoke-virtual {p0, p1, v4}, Lo/E4;->d(IZ)V

    .line 102
    goto :goto_2

    .line 103
    :cond_9
    invoke-virtual {p0, v3, v6}, Lo/E4;->b(II)V

    .line 106
    const/16 p1, 0x51

    .line 108
    invoke-virtual {p0, p1, v4}, Lo/E4;->d(IZ)V

    .line 111
    :cond_a
    :goto_2
    return-void

    .line 112
    :cond_b
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 115
    move-result-object p1

    .line 116
    if-nez p1, :cond_c

    .line 118
    goto/16 :goto_4

    .line 120
    :cond_c
    const/16 p2, 0x3d

    .line 122
    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(I)I

    .line 125
    move-result p2

    .line 126
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 129
    move-result v0

    .line 130
    if-lez p2, :cond_1c

    .line 132
    sub-int/2addr v0, v4

    .line 133
    if-ge p2, v0, :cond_1c

    .line 135
    invoke-virtual {p1, v6, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 138
    move-result-object v0

    .line 139
    add-int/2addr p2, v4

    .line 140
    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 143
    move-result-object p1

    .line 144
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 147
    move-result p2

    .line 148
    if-lez p2, :cond_1c

    .line 150
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 153
    move-result-object p2

    .line 154
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 157
    move-result-object p1

    .line 158
    const-string v0, "ratio"

    .line 160
    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 163
    move-result v0

    .line 164
    if-eqz v0, :cond_10

    .line 166
    instance-of p2, p0, Lo/B4;

    .line 168
    if-eqz p2, :cond_e

    .line 170
    check-cast p0, Lo/B4;

    .line 172
    if-nez p3, :cond_d

    .line 174
    iput v6, p0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 176
    goto :goto_3

    .line 177
    :cond_d
    iput v6, p0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 179
    :goto_3
    invoke-static {p0, p1}, Lo/K4;->h(Lo/B4;Ljava/lang/String;)V

    .line 182
    goto/16 :goto_4

    .line 184
    :cond_e
    instance-of p2, p0, Lo/G4;

    .line 186
    if-eqz p2, :cond_f

    .line 188
    check-cast p0, Lo/G4;

    .line 190
    iput-object p1, p0, Lo/G4;->y:Ljava/lang/String;

    .line 192
    goto/16 :goto_4

    .line 194
    :cond_f
    instance-of p2, p0, Lo/E4;

    .line 196
    if-eqz p2, :cond_1c

    .line 198
    check-cast p0, Lo/E4;

    .line 200
    invoke-virtual {p0, v5, p1}, Lo/E4;->c(ILjava/lang/String;)V

    .line 203
    goto/16 :goto_4

    .line 205
    :cond_10
    const-string v0, "weight"

    .line 207
    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 210
    move-result v0

    .line 211
    if-eqz v0, :cond_16

    .line 213
    :try_start_0
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 216
    move-result p1

    .line 217
    instance-of p2, p0, Lo/B4;

    .line 219
    if-eqz p2, :cond_12

    .line 221
    check-cast p0, Lo/B4;

    .line 223
    if-nez p3, :cond_11

    .line 225
    iput v6, p0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 227
    iput p1, p0, Lo/B4;->H:F

    .line 229
    goto/16 :goto_4

    .line 231
    :cond_11
    iput v6, p0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 233
    iput p1, p0, Lo/B4;->I:F

    .line 235
    goto/16 :goto_4

    .line 237
    :cond_12
    instance-of p2, p0, Lo/G4;

    .line 239
    if-eqz p2, :cond_14

    .line 241
    check-cast p0, Lo/G4;

    .line 243
    if-nez p3, :cond_13

    .line 245
    iput v6, p0, Lo/G4;->b:I

    .line 247
    iput p1, p0, Lo/G4;->U:F

    .line 249
    goto/16 :goto_4

    .line 251
    :cond_13
    iput v6, p0, Lo/G4;->c:I

    .line 253
    iput p1, p0, Lo/G4;->T:F

    .line 255
    goto/16 :goto_4

    .line 257
    :cond_14
    instance-of p2, p0, Lo/E4;

    .line 259
    if-eqz p2, :cond_1c

    .line 261
    check-cast p0, Lo/E4;

    .line 263
    if-nez p3, :cond_15

    .line 265
    invoke-virtual {p0, v2, v6}, Lo/E4;->b(II)V

    .line 268
    const/16 p2, 0x27

    .line 270
    invoke-virtual {p0, p2, p1}, Lo/E4;->a(IF)V

    .line 273
    goto :goto_4

    .line 274
    :cond_15
    invoke-virtual {p0, v3, v6}, Lo/E4;->b(II)V

    .line 277
    const/16 p2, 0x28

    .line 279
    invoke-virtual {p0, p2, p1}, Lo/E4;->a(IF)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 282
    goto :goto_4

    .line 283
    :cond_16
    const-string v0, "parent"

    .line 285
    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 288
    move-result p2

    .line 289
    if-eqz p2, :cond_1c

    .line 291
    :try_start_1
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 294
    move-result p1

    .line 295
    const/high16 p2, 0x3f800000    # 1.0f

    .line 297
    invoke-static {p2, p1}, Ljava/lang/Math;->min(FF)F

    .line 300
    move-result p1

    .line 301
    const/4 p2, 0x0

    .line 302
    invoke-static {p2, p1}, Ljava/lang/Math;->max(FF)F

    .line 305
    move-result p1

    .line 306
    instance-of p2, p0, Lo/B4;

    .line 308
    const/4 v0, 0x2

    .line 309
    if-eqz p2, :cond_18

    .line 311
    check-cast p0, Lo/B4;

    .line 313
    if-nez p3, :cond_17

    .line 315
    iput v6, p0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 317
    iput p1, p0, Lo/B4;->R:F

    .line 319
    iput v0, p0, Lo/B4;->L:I

    .line 321
    goto :goto_4

    .line 322
    :cond_17
    iput v6, p0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 324
    iput p1, p0, Lo/B4;->S:F

    .line 326
    iput v0, p0, Lo/B4;->M:I

    .line 328
    goto :goto_4

    .line 329
    :cond_18
    instance-of p2, p0, Lo/G4;

    .line 331
    if-eqz p2, :cond_1a

    .line 333
    check-cast p0, Lo/G4;

    .line 335
    if-nez p3, :cond_19

    .line 337
    iput v6, p0, Lo/G4;->b:I

    .line 339
    iput p1, p0, Lo/G4;->d0:F

    .line 341
    iput v0, p0, Lo/G4;->X:I

    .line 343
    goto :goto_4

    .line 344
    :cond_19
    iput v6, p0, Lo/G4;->c:I

    .line 346
    iput p1, p0, Lo/G4;->e0:F

    .line 348
    iput v0, p0, Lo/G4;->Y:I

    .line 350
    goto :goto_4

    .line 351
    :cond_1a
    instance-of p1, p0, Lo/E4;

    .line 353
    if-eqz p1, :cond_1c

    .line 355
    check-cast p0, Lo/E4;

    .line 357
    if-nez p3, :cond_1b

    .line 359
    invoke-virtual {p0, v2, v6}, Lo/E4;->b(II)V

    .line 362
    const/16 p1, 0x36

    .line 364
    invoke-virtual {p0, p1, v0}, Lo/E4;->b(II)V

    .line 367
    goto :goto_4

    .line 368
    :cond_1b
    invoke-virtual {p0, v3, v6}, Lo/E4;->b(II)V

    .line 371
    const/16 p1, 0x37

    .line 373
    invoke-virtual {p0, p1, v0}, Lo/E4;->b(II)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    .line 376
    :catch_0
    :cond_1c
    :goto_4
    return-void
.end method

.method public static h(Lo/B4;Ljava/lang/String;)V
    .locals 7

    .line 1
    if-eqz p1, :cond_5

    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 6
    move-result v0

    .line 7
    const/16 v1, 0x2c

    .line 9
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    .line 12
    move-result v1

    .line 13
    const/4 v2, 0x1

    .line 14
    const/4 v3, -0x1

    .line 15
    const/4 v4, 0x0

    .line 16
    if-lez v1, :cond_2

    .line 18
    add-int/lit8 v5, v0, -0x1

    .line 20
    if-ge v1, v5, :cond_2

    .line 22
    invoke-virtual {p1, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 25
    move-result-object v5

    .line 26
    const-string v6, "W"

    .line 28
    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 31
    move-result v6

    .line 32
    if-eqz v6, :cond_0

    .line 34
    move v3, v4

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    const-string v4, "H"

    .line 38
    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 41
    move-result v4

    .line 42
    if-eqz v4, :cond_1

    .line 44
    move v3, v2

    .line 45
    :cond_1
    :goto_0
    add-int/lit8 v4, v1, 0x1

    .line 47
    :cond_2
    const/16 v1, 0x3a

    .line 49
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    .line 52
    move-result v1

    .line 53
    if-ltz v1, :cond_4

    .line 55
    sub-int/2addr v0, v2

    .line 56
    if-ge v1, v0, :cond_4

    .line 58
    invoke-virtual {p1, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 61
    move-result-object v0

    .line 62
    add-int/2addr v1, v2

    .line 63
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 66
    move-result-object v1

    .line 67
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 70
    move-result v4

    .line 71
    if-lez v4, :cond_5

    .line 73
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 76
    move-result v4

    .line 77
    if-lez v4, :cond_5

    .line 79
    :try_start_0
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 82
    move-result v0

    .line 83
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 86
    move-result v1

    .line 87
    const/4 v4, 0x0

    .line 88
    cmpl-float v5, v0, v4

    .line 90
    if-lez v5, :cond_5

    .line 92
    cmpl-float v4, v1, v4

    .line 94
    if-lez v4, :cond_5

    .line 96
    if-ne v3, v2, :cond_3

    .line 98
    div-float/2addr v1, v0

    .line 99
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 102
    goto :goto_1

    .line 103
    :cond_3
    div-float/2addr v0, v1

    .line 104
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    goto :goto_1

    .line 108
    :cond_4
    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 111
    move-result-object v0

    .line 112
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 115
    move-result v1

    .line 116
    if-lez v1, :cond_5

    .line 118
    :try_start_1
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    .line 121
    :catch_0
    :cond_5
    :goto_1
    iput-object p1, p0, Lo/B4;->G:Ljava/lang/String;

    .line 123
    return-void
.end method


# virtual methods
.method public final a(Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .locals 19

    .line 1
    move-object/from16 v1, p0

    .line 3
    move-object/from16 v2, p1

    .line 5
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 8
    move-result v3

    .line 9
    new-instance v4, Ljava/util/HashSet;

    .line 11
    iget-object v5, v1, Lo/K4;->c:Ljava/util/HashMap;

    .line 13
    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 16
    move-result-object v0

    .line 17
    invoke-direct {v4, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 20
    const/4 v7, 0x0

    .line 21
    :goto_0
    const/4 v0, 0x1

    .line 22
    if-ge v7, v3, :cond_f

    .line 24
    invoke-virtual {v2, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 27
    move-result-object v8

    .line 28
    invoke-virtual {v8}, Landroid/view/View;->getId()I

    .line 31
    move-result v9

    .line 32
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 35
    move-result-object v10

    .line 36
    invoke-virtual {v5, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 39
    move-result v10

    .line 40
    const-string v11, "ConstraintSet"

    .line 42
    if-nez v10, :cond_0

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    .line 46
    const-string v9, "id unknown "

    .line 48
    invoke-direct {v0, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 51
    :try_start_0
    invoke-virtual {v8}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 54
    move-result-object v9

    .line 55
    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 58
    move-result-object v9

    .line 59
    invoke-virtual {v8}, Landroid/view/View;->getId()I

    .line 62
    move-result v8

    .line 63
    invoke-virtual {v9, v8}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    .line 66
    move-result-object v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    goto :goto_1

    .line 68
    :catch_0
    const-string v8, "UNKNOWN"

    .line 70
    :goto_1
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    move-result-object v0

    .line 77
    invoke-static {v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    :goto_2
    move/from16 v18, v3

    .line 82
    goto/16 :goto_e

    .line 84
    :cond_0
    iget-boolean v10, v1, Lo/K4;->b:Z

    .line 86
    const/4 v12, -0x1

    .line 87
    if-eqz v10, :cond_2

    .line 89
    if-eq v9, v12, :cond_1

    .line 91
    goto :goto_3

    .line 92
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    .line 94
    const-string v2, "All children of ConstraintLayout must have ids to use ConstraintSet"

    .line 96
    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 99
    throw v0

    .line 100
    :cond_2
    :goto_3
    if-ne v9, v12, :cond_3

    .line 102
    :goto_4
    goto :goto_2

    .line 103
    :cond_3
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 106
    move-result-object v10

    .line 107
    invoke-virtual {v5, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 110
    move-result v10

    .line 111
    if-eqz v10, :cond_d

    .line 113
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 116
    move-result-object v10

    .line 117
    invoke-virtual {v4, v10}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 120
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 123
    move-result-object v10

    .line 124
    invoke-virtual {v5, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    move-result-object v10

    .line 128
    check-cast v10, Lo/F4;

    .line 130
    if-nez v10, :cond_4

    .line 132
    goto :goto_4

    .line 133
    :cond_4
    instance-of v11, v8, Lo/P2;

    .line 135
    if-eqz v11, :cond_6

    .line 137
    iget-object v11, v10, Lo/F4;->d:Lo/G4;

    .line 139
    iput v0, v11, Lo/G4;->h0:I

    .line 141
    move-object v0, v8

    .line 142
    check-cast v0, Lo/P2;

    .line 144
    invoke-virtual {v0, v9}, Landroid/view/View;->setId(I)V

    .line 147
    iget v9, v11, Lo/G4;->f0:I

    .line 149
    invoke-virtual {v0, v9}, Lo/P2;->setType(I)V

    .line 152
    iget v9, v11, Lo/G4;->g0:I

    .line 154
    invoke-virtual {v0, v9}, Lo/P2;->setMargin(I)V

    .line 157
    iget-boolean v9, v11, Lo/G4;->n0:Z

    .line 159
    invoke-virtual {v0, v9}, Lo/P2;->setAllowsGoneWidget(Z)V

    .line 162
    iget-object v9, v11, Lo/G4;->i0:[I

    .line 164
    if-eqz v9, :cond_5

    .line 166
    invoke-virtual {v0, v9}, Lo/z4;->setReferencedIds([I)V

    .line 169
    goto :goto_5

    .line 170
    :cond_5
    iget-object v9, v11, Lo/G4;->j0:Ljava/lang/String;

    .line 172
    if-eqz v9, :cond_6

    .line 174
    invoke-static {v0, v9}, Lo/K4;->c(Lo/P2;Ljava/lang/String;)[I

    .line 177
    move-result-object v9

    .line 178
    iput-object v9, v11, Lo/G4;->i0:[I

    .line 180
    invoke-virtual {v0, v9}, Lo/z4;->setReferencedIds([I)V

    .line 183
    :cond_6
    :goto_5
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 186
    move-result-object v0

    .line 187
    move-object v9, v0

    .line 188
    check-cast v9, Lo/B4;

    .line 190
    invoke-virtual {v9}, Lo/B4;->a()V

    .line 193
    invoke-virtual {v10, v9}, Lo/F4;->a(Lo/B4;)V

    .line 196
    iget-object v11, v10, Lo/F4;->f:Ljava/util/HashMap;

    .line 198
    const-string v13, "\" not found on "

    .line 200
    const-string v14, " Custom Attribute \""

    .line 202
    const-string v15, "TransitionLayout"

    .line 204
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 207
    move-result-object v6

    .line 208
    invoke-virtual {v11}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 211
    move-result-object v0

    .line 212
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 215
    move-result-object v16

    .line 216
    :goto_6
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    .line 219
    move-result v0

    .line 220
    if-eqz v0, :cond_8

    .line 222
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 225
    move-result-object v0

    .line 226
    move-object v12, v0

    .line 227
    check-cast v12, Ljava/lang/String;

    .line 229
    invoke-virtual {v11, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    move-result-object v0

    .line 233
    check-cast v0, Lo/y4;

    .line 235
    iget-boolean v1, v0, Lo/y4;->a:Z

    .line 237
    if-nez v1, :cond_7

    .line 239
    const-string v1, "set"

    .line 241
    invoke-static {v1, v12}, Lo/Ve;->y(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 244
    move-result-object v1

    .line 245
    move-object/from16 v17, v11

    .line 247
    goto :goto_7

    .line 248
    :cond_7
    move-object/from16 v17, v11

    .line 250
    move-object v1, v12

    .line 251
    :goto_7
    :try_start_1
    iget v11, v0, Lo/y4;->b:I

    .line 253
    invoke-static {v11}, Lo/Ve;->C(I)I

    .line 256
    move-result v11

    .line 257
    packed-switch v11, :pswitch_data_0

    .line 260
    :goto_8
    move/from16 v18, v3

    .line 262
    goto/16 :goto_c

    .line 264
    :pswitch_0
    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 266
    filled-new-array {v11}, [Ljava/lang/Class;

    .line 269
    move-result-object v11

    .line 270
    invoke-virtual {v6, v1, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 273
    move-result-object v11

    .line 274
    iget v0, v0, Lo/y4;->c:I

    .line 276
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 279
    move-result-object v0

    .line 280
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 283
    move-result-object v0

    .line 284
    invoke-virtual {v11, v8, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    goto :goto_8

    .line 288
    :catch_1
    move-exception v0

    .line 289
    move/from16 v18, v3

    .line 291
    goto/16 :goto_9

    .line 293
    :catch_2
    move-exception v0

    .line 294
    move/from16 v18, v3

    .line 296
    goto/16 :goto_a

    .line 298
    :catch_3
    move-exception v0

    .line 299
    move/from16 v18, v3

    .line 301
    goto/16 :goto_b

    .line 303
    :pswitch_1
    sget-object v11, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 305
    filled-new-array {v11}, [Ljava/lang/Class;

    .line 308
    move-result-object v11

    .line 309
    invoke-virtual {v6, v1, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 312
    move-result-object v11

    .line 313
    iget v0, v0, Lo/y4;->d:F

    .line 315
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 318
    move-result-object v0

    .line 319
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 322
    move-result-object v0

    .line 323
    invoke-virtual {v11, v8, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    goto :goto_8

    .line 327
    :pswitch_2
    sget-object v11, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 329
    filled-new-array {v11}, [Ljava/lang/Class;

    .line 332
    move-result-object v11

    .line 333
    invoke-virtual {v6, v1, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 336
    move-result-object v11

    .line 337
    iget-boolean v0, v0, Lo/y4;->f:Z

    .line 339
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 342
    move-result-object v0

    .line 343
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 346
    move-result-object v0

    .line 347
    invoke-virtual {v11, v8, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 350
    goto :goto_8

    .line 351
    :pswitch_3
    const-class v11, Ljava/lang/CharSequence;

    .line 353
    filled-new-array {v11}, [Ljava/lang/Class;

    .line 356
    move-result-object v11

    .line 357
    invoke-virtual {v6, v1, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 360
    move-result-object v11

    .line 361
    iget-object v0, v0, Lo/y4;->e:Ljava/lang/String;

    .line 363
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 366
    move-result-object v0

    .line 367
    invoke-virtual {v11, v8, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    goto :goto_8

    .line 371
    :pswitch_4
    const-class v11, Landroid/graphics/drawable/Drawable;

    .line 373
    filled-new-array {v11}, [Ljava/lang/Class;

    .line 376
    move-result-object v11

    .line 377
    invoke-virtual {v6, v1, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 380
    move-result-object v11
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1

    .line 381
    move/from16 v18, v3

    .line 383
    :try_start_2
    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    .line 385
    invoke-direct {v3}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    .line 388
    iget v0, v0, Lo/y4;->g:I

    .line 390
    invoke-virtual {v3, v0}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    .line 393
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 396
    move-result-object v0

    .line 397
    invoke-virtual {v11, v8, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 400
    goto/16 :goto_c

    .line 402
    :catch_4
    move-exception v0

    .line 403
    goto :goto_9

    .line 404
    :catch_5
    move-exception v0

    .line 405
    goto :goto_a

    .line 406
    :catch_6
    move-exception v0

    .line 407
    goto/16 :goto_b

    .line 409
    :pswitch_5
    move/from16 v18, v3

    .line 411
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 413
    filled-new-array {v3}, [Ljava/lang/Class;

    .line 416
    move-result-object v3

    .line 417
    invoke-virtual {v6, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 420
    move-result-object v3

    .line 421
    iget v0, v0, Lo/y4;->g:I

    .line 423
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 426
    move-result-object v0

    .line 427
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 430
    move-result-object v0

    .line 431
    invoke-virtual {v3, v8, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 434
    goto/16 :goto_c

    .line 436
    :pswitch_6
    move/from16 v18, v3

    .line 438
    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 440
    filled-new-array {v3}, [Ljava/lang/Class;

    .line 443
    move-result-object v3

    .line 444
    invoke-virtual {v6, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 447
    move-result-object v3

    .line 448
    iget v0, v0, Lo/y4;->d:F

    .line 450
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 453
    move-result-object v0

    .line 454
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 457
    move-result-object v0

    .line 458
    invoke-virtual {v3, v8, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 461
    goto :goto_c

    .line 462
    :pswitch_7
    move/from16 v18, v3

    .line 464
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 466
    filled-new-array {v3}, [Ljava/lang/Class;

    .line 469
    move-result-object v3

    .line 470
    invoke-virtual {v6, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 473
    move-result-object v3

    .line 474
    iget v0, v0, Lo/y4;->c:I

    .line 476
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 479
    move-result-object v0

    .line 480
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 483
    move-result-object v0

    .line 484
    invoke-virtual {v3, v8, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_4

    .line 487
    goto :goto_c

    .line 488
    :goto_9
    invoke-static {v14, v12, v13}, Lo/Ve;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 491
    move-result-object v1

    .line 492
    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 495
    move-result-object v3

    .line 496
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 499
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 502
    move-result-object v1

    .line 503
    invoke-static {v15, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 506
    goto :goto_c

    .line 507
    :goto_a
    invoke-static {v14, v12, v13}, Lo/Ve;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 510
    move-result-object v1

    .line 511
    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 514
    move-result-object v3

    .line 515
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 518
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 521
    move-result-object v1

    .line 522
    invoke-static {v15, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 525
    goto :goto_c

    .line 526
    :goto_b
    new-instance v3, Ljava/lang/StringBuilder;

    .line 528
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 531
    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 534
    move-result-object v11

    .line 535
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 538
    const-string v11, " must have a method "

    .line 540
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 543
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 546
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 549
    move-result-object v1

    .line 550
    invoke-static {v15, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 553
    :goto_c
    move-object/from16 v1, p0

    .line 555
    move-object/from16 v11, v17

    .line 557
    move/from16 v3, v18

    .line 559
    const/4 v12, -0x1

    .line 560
    goto/16 :goto_6

    .line 562
    :cond_8
    move/from16 v18, v3

    .line 564
    invoke-virtual {v8, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 567
    iget-object v0, v10, Lo/F4;->b:Lo/I4;

    .line 569
    iget v1, v0, Lo/I4;->b:I

    .line 571
    if-nez v1, :cond_9

    .line 573
    iget v1, v0, Lo/I4;->a:I

    .line 575
    invoke-virtual {v8, v1}, Landroid/view/View;->setVisibility(I)V

    .line 578
    :cond_9
    iget v0, v0, Lo/I4;->c:F

    .line 580
    invoke-virtual {v8, v0}, Landroid/view/View;->setAlpha(F)V

    .line 583
    iget-object v0, v10, Lo/F4;->e:Lo/J4;

    .line 585
    iget v1, v0, Lo/J4;->a:F

    .line 587
    invoke-virtual {v8, v1}, Landroid/view/View;->setRotation(F)V

    .line 590
    iget v1, v0, Lo/J4;->b:F

    .line 592
    invoke-virtual {v8, v1}, Landroid/view/View;->setRotationX(F)V

    .line 595
    iget v1, v0, Lo/J4;->c:F

    .line 597
    invoke-virtual {v8, v1}, Landroid/view/View;->setRotationY(F)V

    .line 600
    iget v1, v0, Lo/J4;->d:F

    .line 602
    invoke-virtual {v8, v1}, Landroid/view/View;->setScaleX(F)V

    .line 605
    iget v1, v0, Lo/J4;->e:F

    .line 607
    invoke-virtual {v8, v1}, Landroid/view/View;->setScaleY(F)V

    .line 610
    iget v1, v0, Lo/J4;->h:I

    .line 612
    const/4 v3, -0x1

    .line 613
    if-eq v1, v3, :cond_a

    .line 615
    invoke-virtual {v8}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 618
    move-result-object v1

    .line 619
    check-cast v1, Landroid/view/View;

    .line 621
    iget v3, v0, Lo/J4;->h:I

    .line 623
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 626
    move-result-object v1

    .line 627
    if-eqz v1, :cond_c

    .line 629
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    .line 632
    move-result v3

    .line 633
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    .line 636
    move-result v6

    .line 637
    add-int/2addr v6, v3

    .line 638
    int-to-float v3, v6

    .line 639
    const/high16 v6, 0x40000000    # 2.0f

    .line 641
    div-float/2addr v3, v6

    .line 642
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    .line 645
    move-result v9

    .line 646
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    .line 649
    move-result v1

    .line 650
    add-int/2addr v1, v9

    .line 651
    int-to-float v1, v1

    .line 652
    div-float/2addr v1, v6

    .line 653
    invoke-virtual {v8}, Landroid/view/View;->getRight()I

    .line 656
    move-result v6

    .line 657
    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    .line 660
    move-result v9

    .line 661
    sub-int/2addr v6, v9

    .line 662
    if-lez v6, :cond_c

    .line 664
    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    .line 667
    move-result v6

    .line 668
    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    .line 671
    move-result v9

    .line 672
    sub-int/2addr v6, v9

    .line 673
    if-lez v6, :cond_c

    .line 675
    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    .line 678
    move-result v6

    .line 679
    int-to-float v6, v6

    .line 680
    sub-float/2addr v1, v6

    .line 681
    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    .line 684
    move-result v6

    .line 685
    int-to-float v6, v6

    .line 686
    sub-float/2addr v3, v6

    .line 687
    invoke-virtual {v8, v1}, Landroid/view/View;->setPivotX(F)V

    .line 690
    invoke-virtual {v8, v3}, Landroid/view/View;->setPivotY(F)V

    .line 693
    goto :goto_d

    .line 694
    :cond_a
    iget v1, v0, Lo/J4;->f:F

    .line 696
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    .line 699
    move-result v1

    .line 700
    if-nez v1, :cond_b

    .line 702
    iget v1, v0, Lo/J4;->f:F

    .line 704
    invoke-virtual {v8, v1}, Landroid/view/View;->setPivotX(F)V

    .line 707
    :cond_b
    iget v1, v0, Lo/J4;->g:F

    .line 709
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    .line 712
    move-result v1

    .line 713
    if-nez v1, :cond_c

    .line 715
    iget v1, v0, Lo/J4;->g:F

    .line 717
    invoke-virtual {v8, v1}, Landroid/view/View;->setPivotY(F)V

    .line 720
    :cond_c
    :goto_d
    iget v1, v0, Lo/J4;->i:F

    .line 722
    invoke-virtual {v8, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 725
    iget v1, v0, Lo/J4;->j:F

    .line 727
    invoke-virtual {v8, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 730
    iget v1, v0, Lo/J4;->k:F

    .line 732
    invoke-virtual {v8, v1}, Landroid/view/View;->setTranslationZ(F)V

    .line 735
    iget-boolean v1, v0, Lo/J4;->l:Z

    .line 737
    if-eqz v1, :cond_e

    .line 739
    iget v0, v0, Lo/J4;->m:F

    .line 741
    invoke-virtual {v8, v0}, Landroid/view/View;->setElevation(F)V

    .line 744
    goto :goto_e

    .line 745
    :cond_d
    move/from16 v18, v3

    .line 747
    new-instance v0, Ljava/lang/StringBuilder;

    .line 749
    const-string v1, "WARNING NO CONSTRAINTS for view "

    .line 751
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 754
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 757
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 760
    move-result-object v0

    .line 761
    invoke-static {v11, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 764
    :cond_e
    :goto_e
    add-int/lit8 v7, v7, 0x1

    .line 766
    move-object/from16 v1, p0

    .line 768
    move/from16 v3, v18

    .line 770
    goto/16 :goto_0

    .line 772
    :cond_f
    move/from16 v18, v3

    .line 774
    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 777
    move-result-object v1

    .line 778
    :cond_10
    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 781
    move-result v3

    .line 782
    if-eqz v3, :cond_15

    .line 784
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 787
    move-result-object v3

    .line 788
    check-cast v3, Ljava/lang/Integer;

    .line 790
    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 793
    move-result-object v4

    .line 794
    check-cast v4, Lo/F4;

    .line 796
    if-nez v4, :cond_11

    .line 798
    goto :goto_f

    .line 799
    :cond_11
    iget-object v6, v4, Lo/F4;->d:Lo/G4;

    .line 801
    iget v7, v6, Lo/G4;->h0:I

    .line 803
    if-ne v7, v0, :cond_14

    .line 805
    new-instance v7, Lo/P2;

    .line 807
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 810
    move-result-object v8

    .line 811
    invoke-direct {v7, v8}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 814
    const/16 v9, 0x20

    .line 816
    new-array v9, v9, [I

    .line 818
    iput-object v9, v7, Lo/z4;->a:[I

    .line 820
    new-instance v9, Ljava/util/HashMap;

    .line 822
    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 825
    iput-object v9, v7, Lo/z4;->g:Ljava/util/HashMap;

    .line 827
    iput-object v8, v7, Lo/z4;->c:Landroid/content/Context;

    .line 829
    new-instance v8, Lo/Q2;

    .line 831
    invoke-direct {v8}, Lo/b9;-><init>()V

    .line 834
    const/4 v9, 0x0

    .line 835
    iput v9, v8, Lo/Q2;->s0:I

    .line 837
    iput-boolean v0, v8, Lo/Q2;->t0:Z

    .line 839
    iput v9, v8, Lo/Q2;->u0:I

    .line 841
    iput-boolean v9, v8, Lo/Q2;->v0:Z

    .line 843
    iput-object v8, v7, Lo/P2;->j:Lo/Q2;

    .line 845
    iput-object v8, v7, Lo/z4;->d:Lo/b9;

    .line 847
    invoke-virtual {v7}, Lo/z4;->i()V

    .line 850
    const/16 v8, 0x8

    .line 852
    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 855
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 858
    move-result v8

    .line 859
    invoke-virtual {v7, v8}, Landroid/view/View;->setId(I)V

    .line 862
    iget-object v8, v6, Lo/G4;->i0:[I

    .line 864
    if-eqz v8, :cond_12

    .line 866
    invoke-virtual {v7, v8}, Lo/z4;->setReferencedIds([I)V

    .line 869
    goto :goto_10

    .line 870
    :cond_12
    iget-object v8, v6, Lo/G4;->j0:Ljava/lang/String;

    .line 872
    if-eqz v8, :cond_13

    .line 874
    invoke-static {v7, v8}, Lo/K4;->c(Lo/P2;Ljava/lang/String;)[I

    .line 877
    move-result-object v8

    .line 878
    iput-object v8, v6, Lo/G4;->i0:[I

    .line 880
    invoke-virtual {v7, v8}, Lo/z4;->setReferencedIds([I)V

    .line 883
    :cond_13
    :goto_10
    iget v8, v6, Lo/G4;->f0:I

    .line 885
    invoke-virtual {v7, v8}, Lo/P2;->setType(I)V

    .line 888
    iget v8, v6, Lo/G4;->g0:I

    .line 890
    invoke-virtual {v7, v8}, Lo/P2;->setMargin(I)V

    .line 893
    invoke-static {}, Landroidx/constraintlayout/widget/ConstraintLayout;->g()Lo/B4;

    .line 896
    move-result-object v8

    .line 897
    invoke-virtual {v7}, Lo/z4;->i()V

    .line 900
    invoke-virtual {v4, v8}, Lo/F4;->a(Lo/B4;)V

    .line 903
    invoke-virtual {v2, v7, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 906
    goto :goto_11

    .line 907
    :cond_14
    const/4 v9, 0x0

    .line 908
    :goto_11
    iget-boolean v6, v6, Lo/G4;->a:Z

    .line 910
    if-eqz v6, :cond_10

    .line 912
    new-instance v6, Lo/W8;

    .line 914
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 917
    move-result-object v7

    .line 918
    invoke-direct {v6, v7}, Lo/W8;-><init>(Landroid/content/Context;)V

    .line 921
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 924
    move-result v3

    .line 925
    invoke-virtual {v6, v3}, Landroid/view/View;->setId(I)V

    .line 928
    invoke-static {}, Landroidx/constraintlayout/widget/ConstraintLayout;->g()Lo/B4;

    .line 931
    move-result-object v3

    .line 932
    invoke-virtual {v4, v3}, Lo/F4;->a(Lo/B4;)V

    .line 935
    invoke-virtual {v2, v6, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 938
    goto/16 :goto_f

    .line 940
    :cond_15
    const/4 v9, 0x0

    .line 941
    move v6, v9

    .line 942
    move/from16 v1, v18

    .line 944
    :goto_12
    if-ge v6, v1, :cond_17

    .line 946
    invoke-virtual {v2, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 949
    move-result-object v0

    .line 950
    instance-of v3, v0, Lo/z4;

    .line 952
    if-eqz v3, :cond_16

    .line 954
    check-cast v0, Lo/z4;

    .line 956
    invoke-virtual {v0, v2}, Lo/z4;->e(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 959
    :cond_16
    add-int/lit8 v6, v6, 0x1

    .line 961
    goto :goto_12

    .line 962
    :cond_17
    return-void

    .line 963
    :pswitch_data_0
    .packed-switch 0x0
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

.method public final b(Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .locals 19

    .line 1
    move-object/from16 v1, p0

    .line 3
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 6
    move-result v2

    .line 7
    iget-object v3, v1, Lo/K4;->c:Ljava/util/HashMap;

    .line 9
    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 12
    const/4 v5, 0x0

    .line 13
    :goto_0
    if-ge v5, v2, :cond_a

    .line 15
    move-object/from16 v6, p1

    .line 17
    invoke-virtual {v6, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 20
    move-result-object v7

    .line 21
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 24
    move-result-object v0

    .line 25
    move-object v8, v0

    .line 26
    check-cast v8, Lo/B4;

    .line 28
    invoke-virtual {v7}, Landroid/view/View;->getId()I

    .line 31
    move-result v9

    .line 32
    iget-boolean v0, v1, Lo/K4;->b:Z

    .line 34
    if-eqz v0, :cond_1

    .line 36
    const/4 v0, -0x1

    .line 37
    if-eq v9, v0, :cond_0

    .line 39
    goto :goto_1

    .line 40
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    .line 42
    const-string v2, "All children of ConstraintLayout must have ids to use ConstraintSet"

    .line 44
    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 47
    throw v0

    .line 48
    :cond_1
    :goto_1
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 51
    move-result-object v0

    .line 52
    invoke-virtual {v3, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 55
    move-result v0

    .line 56
    if-nez v0, :cond_2

    .line 58
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 61
    move-result-object v0

    .line 62
    new-instance v10, Lo/F4;

    .line 64
    invoke-direct {v10}, Lo/F4;-><init>()V

    .line 67
    invoke-virtual {v3, v0, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    :cond_2
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 73
    move-result-object v0

    .line 74
    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    move-result-object v0

    .line 78
    move-object v10, v0

    .line 79
    check-cast v10, Lo/F4;

    .line 81
    if-nez v10, :cond_3

    .line 83
    move/from16 v17, v2

    .line 85
    move-object/from16 v18, v3

    .line 87
    const/4 v3, 0x0

    .line 88
    goto/16 :goto_a

    .line 90
    :cond_3
    iget-object v11, v1, Lo/K4;->a:Ljava/util/HashMap;

    .line 92
    const-string v12, "\" not found on "

    .line 94
    const-string v13, " Custom Attribute \""

    .line 96
    const-string v14, "TransitionLayout"

    .line 98
    new-instance v15, Ljava/util/HashMap;

    .line 100
    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    .line 103
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 106
    move-result-object v4

    .line 107
    invoke-virtual {v11}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 110
    move-result-object v0

    .line 111
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 114
    move-result-object v16

    .line 115
    :goto_2
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    .line 118
    move-result v0

    .line 119
    if-eqz v0, :cond_5

    .line 121
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 124
    move-result-object v0

    .line 125
    move-object v1, v0

    .line 126
    check-cast v1, Ljava/lang/String;

    .line 128
    invoke-virtual {v11, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    move-result-object v0

    .line 132
    check-cast v0, Lo/y4;

    .line 134
    move/from16 v17, v2

    .line 136
    :try_start_0
    const-string v2, "BackgroundColor"

    .line 138
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 141
    move-result v2

    .line 142
    if-eqz v2, :cond_4

    .line 144
    invoke-virtual {v7}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 147
    move-result-object v2

    .line 148
    check-cast v2, Landroid/graphics/drawable/ColorDrawable;

    .line 150
    invoke-virtual {v2}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    .line 153
    move-result v2

    .line 154
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 157
    move-result-object v2
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3

    .line 158
    move-object/from16 v18, v3

    .line 160
    :try_start_1
    new-instance v3, Lo/y4;

    .line 162
    invoke-direct {v3, v0, v2}, Lo/y4;-><init>(Lo/y4;Ljava/lang/Object;)V

    .line 165
    invoke-virtual {v15, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    const/4 v3, 0x0

    .line 169
    goto/16 :goto_9

    .line 171
    :catch_0
    move-exception v0

    .line 172
    :goto_3
    const/4 v3, 0x0

    .line 173
    goto :goto_6

    .line 174
    :catch_1
    move-exception v0

    .line 175
    :goto_4
    const/4 v3, 0x0

    .line 176
    goto :goto_7

    .line 177
    :catch_2
    move-exception v0

    .line 178
    :goto_5
    const/4 v3, 0x0

    .line 179
    goto :goto_8

    .line 180
    :catch_3
    move-exception v0

    .line 181
    move-object/from16 v18, v3

    .line 183
    goto :goto_3

    .line 184
    :catch_4
    move-exception v0

    .line 185
    move-object/from16 v18, v3

    .line 187
    goto :goto_4

    .line 188
    :catch_5
    move-exception v0

    .line 189
    move-object/from16 v18, v3

    .line 191
    goto :goto_5

    .line 192
    :cond_4
    move-object/from16 v18, v3

    .line 194
    new-instance v2, Ljava/lang/StringBuilder;

    .line 196
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 199
    const-string v3, "getMap"

    .line 201
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 210
    move-result-object v2
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0

    .line 211
    const/4 v3, 0x0

    .line 212
    :try_start_2
    new-array v6, v3, [Ljava/lang/Class;

    .line 214
    invoke-virtual {v4, v2, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 217
    move-result-object v2

    .line 218
    new-array v6, v3, [Ljava/lang/Object;

    .line 220
    invoke-virtual {v2, v7, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    move-result-object v2

    .line 224
    new-instance v6, Lo/y4;

    .line 226
    invoke-direct {v6, v0, v2}, Lo/y4;-><init>(Lo/y4;Ljava/lang/Object;)V

    .line 229
    invoke-virtual {v15, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_6

    .line 232
    goto :goto_9

    .line 233
    :catch_6
    move-exception v0

    .line 234
    goto :goto_6

    .line 235
    :catch_7
    move-exception v0

    .line 236
    goto :goto_7

    .line 237
    :catch_8
    move-exception v0

    .line 238
    goto :goto_8

    .line 239
    :goto_6
    invoke-static {v13, v1, v12}, Lo/Ve;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    move-result-object v1

    .line 243
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 246
    move-result-object v2

    .line 247
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 253
    move-result-object v1

    .line 254
    invoke-static {v14, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 257
    goto :goto_9

    .line 258
    :goto_7
    invoke-static {v13, v1, v12}, Lo/Ve;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    move-result-object v1

    .line 262
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 265
    move-result-object v2

    .line 266
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 272
    move-result-object v1

    .line 273
    invoke-static {v14, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 276
    goto :goto_9

    .line 277
    :goto_8
    new-instance v2, Ljava/lang/StringBuilder;

    .line 279
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 282
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 285
    move-result-object v6

    .line 286
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    const-string v6, " must have a method "

    .line 291
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 300
    move-result-object v1

    .line 301
    invoke-static {v14, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 304
    :goto_9
    move-object/from16 v1, p0

    .line 306
    move-object/from16 v6, p1

    .line 308
    move/from16 v2, v17

    .line 310
    move-object/from16 v3, v18

    .line 312
    goto/16 :goto_2

    .line 314
    :cond_5
    move/from16 v17, v2

    .line 316
    move-object/from16 v18, v3

    .line 318
    const/4 v3, 0x0

    .line 319
    iput-object v15, v10, Lo/F4;->f:Ljava/util/HashMap;

    .line 321
    iput v9, v10, Lo/F4;->a:I

    .line 323
    iget v0, v8, Lo/B4;->e:I

    .line 325
    iget-object v1, v10, Lo/F4;->d:Lo/G4;

    .line 327
    iput v0, v1, Lo/G4;->h:I

    .line 329
    iget v0, v8, Lo/B4;->f:I

    .line 331
    iput v0, v1, Lo/G4;->i:I

    .line 333
    iget v0, v8, Lo/B4;->g:I

    .line 335
    iput v0, v1, Lo/G4;->j:I

    .line 337
    iget v0, v8, Lo/B4;->h:I

    .line 339
    iput v0, v1, Lo/G4;->k:I

    .line 341
    iget v0, v8, Lo/B4;->i:I

    .line 343
    iput v0, v1, Lo/G4;->l:I

    .line 345
    iget v0, v8, Lo/B4;->j:I

    .line 347
    iput v0, v1, Lo/G4;->m:I

    .line 349
    iget v0, v8, Lo/B4;->k:I

    .line 351
    iput v0, v1, Lo/G4;->n:I

    .line 353
    iget v0, v8, Lo/B4;->l:I

    .line 355
    iput v0, v1, Lo/G4;->o:I

    .line 357
    iget v0, v8, Lo/B4;->m:I

    .line 359
    iput v0, v1, Lo/G4;->p:I

    .line 361
    iget v0, v8, Lo/B4;->n:I

    .line 363
    iput v0, v1, Lo/G4;->q:I

    .line 365
    iget v0, v8, Lo/B4;->o:I

    .line 367
    iput v0, v1, Lo/G4;->r:I

    .line 369
    iget v0, v8, Lo/B4;->s:I

    .line 371
    iput v0, v1, Lo/G4;->s:I

    .line 373
    iget v0, v8, Lo/B4;->t:I

    .line 375
    iput v0, v1, Lo/G4;->t:I

    .line 377
    iget v0, v8, Lo/B4;->u:I

    .line 379
    iput v0, v1, Lo/G4;->u:I

    .line 381
    iget v0, v8, Lo/B4;->v:I

    .line 383
    iput v0, v1, Lo/G4;->v:I

    .line 385
    iget v0, v8, Lo/B4;->E:F

    .line 387
    iput v0, v1, Lo/G4;->w:F

    .line 389
    iget v0, v8, Lo/B4;->F:F

    .line 391
    iput v0, v1, Lo/G4;->x:F

    .line 393
    iget-object v0, v8, Lo/B4;->G:Ljava/lang/String;

    .line 395
    iput-object v0, v1, Lo/G4;->y:Ljava/lang/String;

    .line 397
    iget v0, v8, Lo/B4;->p:I

    .line 399
    iput v0, v1, Lo/G4;->z:I

    .line 401
    iget v0, v8, Lo/B4;->q:I

    .line 403
    iput v0, v1, Lo/G4;->A:I

    .line 405
    iget v0, v8, Lo/B4;->r:F

    .line 407
    iput v0, v1, Lo/G4;->B:F

    .line 409
    iget v0, v8, Lo/B4;->T:I

    .line 411
    iput v0, v1, Lo/G4;->C:I

    .line 413
    iget v0, v8, Lo/B4;->U:I

    .line 415
    iput v0, v1, Lo/G4;->D:I

    .line 417
    iget v0, v8, Lo/B4;->V:I

    .line 419
    iput v0, v1, Lo/G4;->E:I

    .line 421
    iget v0, v8, Lo/B4;->c:F

    .line 423
    iput v0, v1, Lo/G4;->f:F

    .line 425
    iget v0, v8, Lo/B4;->a:I

    .line 427
    iput v0, v1, Lo/G4;->d:I

    .line 429
    iget v0, v8, Lo/B4;->b:I

    .line 431
    iput v0, v1, Lo/G4;->e:I

    .line 433
    iget v0, v8, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 435
    iput v0, v1, Lo/G4;->b:I

    .line 437
    iget v0, v8, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 439
    iput v0, v1, Lo/G4;->c:I

    .line 441
    iget v0, v8, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 443
    iput v0, v1, Lo/G4;->F:I

    .line 445
    iget v0, v8, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 447
    iput v0, v1, Lo/G4;->G:I

    .line 449
    iget v0, v8, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 451
    iput v0, v1, Lo/G4;->H:I

    .line 453
    iget v0, v8, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 455
    iput v0, v1, Lo/G4;->I:I

    .line 457
    iget v0, v8, Lo/B4;->D:I

    .line 459
    iput v0, v1, Lo/G4;->L:I

    .line 461
    iget v0, v8, Lo/B4;->I:F

    .line 463
    iput v0, v1, Lo/G4;->T:F

    .line 465
    iget v0, v8, Lo/B4;->H:F

    .line 467
    iput v0, v1, Lo/G4;->U:F

    .line 469
    iget v0, v8, Lo/B4;->K:I

    .line 471
    iput v0, v1, Lo/G4;->W:I

    .line 473
    iget v0, v8, Lo/B4;->J:I

    .line 475
    iput v0, v1, Lo/G4;->V:I

    .line 477
    iget-boolean v0, v8, Lo/B4;->W:Z

    .line 479
    iput-boolean v0, v1, Lo/G4;->l0:Z

    .line 481
    iget-boolean v0, v8, Lo/B4;->X:Z

    .line 483
    iput-boolean v0, v1, Lo/G4;->m0:Z

    .line 485
    iget v0, v8, Lo/B4;->L:I

    .line 487
    iput v0, v1, Lo/G4;->X:I

    .line 489
    iget v0, v8, Lo/B4;->M:I

    .line 491
    iput v0, v1, Lo/G4;->Y:I

    .line 493
    iget v0, v8, Lo/B4;->P:I

    .line 495
    iput v0, v1, Lo/G4;->Z:I

    .line 497
    iget v0, v8, Lo/B4;->Q:I

    .line 499
    iput v0, v1, Lo/G4;->a0:I

    .line 501
    iget v0, v8, Lo/B4;->N:I

    .line 503
    iput v0, v1, Lo/G4;->b0:I

    .line 505
    iget v0, v8, Lo/B4;->O:I

    .line 507
    iput v0, v1, Lo/G4;->c0:I

    .line 509
    iget v0, v8, Lo/B4;->R:F

    .line 511
    iput v0, v1, Lo/G4;->d0:F

    .line 513
    iget v0, v8, Lo/B4;->S:F

    .line 515
    iput v0, v1, Lo/G4;->e0:F

    .line 517
    iget-object v0, v8, Lo/B4;->Y:Ljava/lang/String;

    .line 519
    iput-object v0, v1, Lo/G4;->k0:Ljava/lang/String;

    .line 521
    iget v0, v8, Lo/B4;->x:I

    .line 523
    iput v0, v1, Lo/G4;->N:I

    .line 525
    iget v0, v8, Lo/B4;->z:I

    .line 527
    iput v0, v1, Lo/G4;->P:I

    .line 529
    iget v0, v8, Lo/B4;->w:I

    .line 531
    iput v0, v1, Lo/G4;->M:I

    .line 533
    iget v0, v8, Lo/B4;->y:I

    .line 535
    iput v0, v1, Lo/G4;->O:I

    .line 537
    iget v0, v8, Lo/B4;->A:I

    .line 539
    iput v0, v1, Lo/G4;->R:I

    .line 541
    iget v0, v8, Lo/B4;->B:I

    .line 543
    iput v0, v1, Lo/G4;->Q:I

    .line 545
    iget v0, v8, Lo/B4;->C:I

    .line 547
    iput v0, v1, Lo/G4;->S:I

    .line 549
    iget v0, v8, Lo/B4;->Z:I

    .line 551
    iput v0, v1, Lo/G4;->o0:I

    .line 553
    invoke-virtual {v8}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    .line 556
    move-result v0

    .line 557
    iput v0, v1, Lo/G4;->J:I

    .line 559
    invoke-virtual {v8}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    .line 562
    move-result v0

    .line 563
    iput v0, v1, Lo/G4;->K:I

    .line 565
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    .line 568
    move-result v0

    .line 569
    iget-object v2, v10, Lo/F4;->b:Lo/I4;

    .line 571
    iput v0, v2, Lo/I4;->a:I

    .line 573
    invoke-virtual {v7}, Landroid/view/View;->getAlpha()F

    .line 576
    move-result v0

    .line 577
    iput v0, v2, Lo/I4;->c:F

    .line 579
    invoke-virtual {v7}, Landroid/view/View;->getRotation()F

    .line 582
    move-result v0

    .line 583
    iget-object v2, v10, Lo/F4;->e:Lo/J4;

    .line 585
    iput v0, v2, Lo/J4;->a:F

    .line 587
    invoke-virtual {v7}, Landroid/view/View;->getRotationX()F

    .line 590
    move-result v0

    .line 591
    iput v0, v2, Lo/J4;->b:F

    .line 593
    invoke-virtual {v7}, Landroid/view/View;->getRotationY()F

    .line 596
    move-result v0

    .line 597
    iput v0, v2, Lo/J4;->c:F

    .line 599
    invoke-virtual {v7}, Landroid/view/View;->getScaleX()F

    .line 602
    move-result v0

    .line 603
    iput v0, v2, Lo/J4;->d:F

    .line 605
    invoke-virtual {v7}, Landroid/view/View;->getScaleY()F

    .line 608
    move-result v0

    .line 609
    iput v0, v2, Lo/J4;->e:F

    .line 611
    invoke-virtual {v7}, Landroid/view/View;->getPivotX()F

    .line 614
    move-result v0

    .line 615
    invoke-virtual {v7}, Landroid/view/View;->getPivotY()F

    .line 618
    move-result v4

    .line 619
    float-to-double v8, v0

    .line 620
    const-wide/16 v10, 0x0

    .line 622
    cmpl-double v6, v8, v10

    .line 624
    if-nez v6, :cond_6

    .line 626
    float-to-double v8, v4

    .line 627
    cmpl-double v6, v8, v10

    .line 629
    if-eqz v6, :cond_7

    .line 631
    :cond_6
    iput v0, v2, Lo/J4;->f:F

    .line 633
    iput v4, v2, Lo/J4;->g:F

    .line 635
    :cond_7
    invoke-virtual {v7}, Landroid/view/View;->getTranslationX()F

    .line 638
    move-result v0

    .line 639
    iput v0, v2, Lo/J4;->i:F

    .line 641
    invoke-virtual {v7}, Landroid/view/View;->getTranslationY()F

    .line 644
    move-result v0

    .line 645
    iput v0, v2, Lo/J4;->j:F

    .line 647
    invoke-virtual {v7}, Landroid/view/View;->getTranslationZ()F

    .line 650
    move-result v0

    .line 651
    iput v0, v2, Lo/J4;->k:F

    .line 653
    iget-boolean v0, v2, Lo/J4;->l:Z

    .line 655
    if-eqz v0, :cond_8

    .line 657
    invoke-virtual {v7}, Landroid/view/View;->getElevation()F

    .line 660
    move-result v0

    .line 661
    iput v0, v2, Lo/J4;->m:F

    .line 663
    :cond_8
    instance-of v0, v7, Lo/P2;

    .line 665
    if-eqz v0, :cond_9

    .line 667
    check-cast v7, Lo/P2;

    .line 669
    invoke-virtual {v7}, Lo/P2;->getAllowsGoneWidget()Z

    .line 672
    move-result v0

    .line 673
    iput-boolean v0, v1, Lo/G4;->n0:Z

    .line 675
    invoke-virtual {v7}, Lo/z4;->getReferencedIds()[I

    .line 678
    move-result-object v0

    .line 679
    iput-object v0, v1, Lo/G4;->i0:[I

    .line 681
    invoke-virtual {v7}, Lo/P2;->getType()I

    .line 684
    move-result v0

    .line 685
    iput v0, v1, Lo/G4;->f0:I

    .line 687
    invoke-virtual {v7}, Lo/P2;->getMargin()I

    .line 690
    move-result v0

    .line 691
    iput v0, v1, Lo/G4;->g0:I

    .line 693
    :cond_9
    :goto_a
    add-int/lit8 v5, v5, 0x1

    .line 695
    move-object/from16 v1, p0

    .line 697
    move/from16 v2, v17

    .line 699
    move-object/from16 v3, v18

    .line 701
    goto/16 :goto_0

    .line 703
    :cond_a
    return-void
.end method

.method public final e(Landroid/content/Context;I)V
    .locals 7

    .line 1
    const-string v0, "Error parsing resource: "

    .line 3
    const-string v1, "ConstraintSet"

    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 8
    move-result-object v2

    .line 9
    invoke-virtual {v2, p2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    .line 12
    move-result-object v2

    .line 13
    :try_start_0
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 16
    move-result v3

    .line 17
    :goto_0
    const/4 v4, 0x1

    .line 18
    if-eq v3, v4, :cond_2

    .line 20
    const/4 v5, 0x2

    .line 21
    if-eq v3, v5, :cond_0

    .line 23
    goto :goto_2

    .line 24
    :cond_0
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 27
    move-result-object v3

    .line 28
    invoke-static {v2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    .line 31
    move-result-object v5

    .line 32
    const/4 v6, 0x0

    .line 33
    invoke-static {p1, v5, v6}, Lo/K4;->d(Landroid/content/Context;Landroid/util/AttributeSet;Z)Lo/F4;

    .line 36
    move-result-object v5

    .line 37
    const-string v6, "Guideline"

    .line 39
    invoke-virtual {v3, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 42
    move-result v3

    .line 43
    if-eqz v3, :cond_1

    .line 45
    iget-object v3, v5, Lo/F4;->d:Lo/G4;

    .line 47
    iput-boolean v4, v3, Lo/G4;->a:Z

    .line 49
    goto :goto_1

    .line 50
    :catch_0
    move-exception p1

    .line 51
    goto :goto_3

    .line 52
    :catch_1
    move-exception p1

    .line 53
    goto :goto_4

    .line 54
    :cond_1
    :goto_1
    iget-object v3, p0, Lo/K4;->c:Ljava/util/HashMap;

    .line 56
    iget v4, v5, Lo/F4;->a:I

    .line 58
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 61
    move-result-object v4

    .line 62
    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    :goto_2
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 68
    move-result v3
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    goto :goto_0

    .line 70
    :goto_3
    new-instance v2, Ljava/lang/StringBuilder;

    .line 72
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 75
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 78
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    move-result-object p2

    .line 82
    invoke-static {v1, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 85
    goto :goto_5

    .line 86
    :goto_4
    new-instance v2, Ljava/lang/StringBuilder;

    .line 88
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 91
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 94
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    move-result-object p2

    .line 98
    invoke-static {v1, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 101
    :cond_2
    :goto_5
    return-void
.end method
