.class public abstract Lo/U0;
.super Landroidx/activity/a;
.source "SourceFile"

# interfaces
.implements Lo/Y0;


# instance fields
.field public final r:Lo/C;

.field public final s:Landroidx/lifecycle/a;

.field public t:Z

.field public u:Z

.field public v:Z

.field public w:Lo/v1;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Landroidx/activity/a;-><init>()V

    .line 4
    new-instance v0, Lo/V7;

    .line 6
    invoke-direct {v0, p0}, Lo/V7;-><init>(Lo/U0;)V

    .line 9
    new-instance v1, Lo/C;

    .line 11
    const/16 v2, 0xf

    .line 13
    invoke-direct {v1, v2, v0}, Lo/C;-><init>(ILjava/lang/Object;)V

    .line 16
    iput-object v1, p0, Lo/U0;->r:Lo/C;

    .line 18
    new-instance v0, Landroidx/lifecycle/a;

    .line 20
    invoke-direct {v0, p0}, Landroidx/lifecycle/a;-><init>(Lo/R9;)V

    .line 23
    iput-object v0, p0, Lo/U0;->s:Landroidx/lifecycle/a;

    .line 25
    const/4 v0, 0x1

    .line 26
    iput-boolean v0, p0, Lo/U0;->v:Z

    .line 28
    iget-object v0, p0, Landroidx/activity/a;->e:Lo/t8;

    .line 30
    iget-object v0, v0, Lo/t8;->c:Ljava/lang/Object;

    .line 32
    check-cast v0, Lo/b1;

    .line 34
    new-instance v1, Lo/n4;

    .line 36
    const/4 v2, 0x1

    .line 37
    invoke-direct {v1, v2, p0}, Lo/n4;-><init>(ILjava/lang/Object;)V

    .line 40
    const-string v2, "android:support:lifecycle"

    .line 42
    invoke-virtual {v0, v2, v1}, Lo/b1;->e(Ljava/lang/String;Lo/se;)V

    .line 45
    new-instance v0, Lo/U7;

    .line 47
    const/4 v1, 0x0

    .line 48
    invoke-direct {v0, p0, v1}, Lo/U7;-><init>(Lo/U0;I)V

    .line 51
    invoke-virtual {p0, v0}, Landroidx/activity/a;->g(Lo/O4;)V

    .line 54
    new-instance v0, Lo/U7;

    .line 56
    const/4 v1, 0x1

    .line 57
    invoke-direct {v0, p0, v1}, Lo/U7;-><init>(Lo/U0;I)V

    .line 60
    iget-object v1, p0, Landroidx/activity/a;->m:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 62
    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    new-instance v0, Lo/o4;

    .line 67
    const/4 v1, 0x1

    .line 68
    invoke-direct {v0, p0, v1}, Lo/o4;-><init>(Lo/U0;I)V

    .line 71
    invoke-virtual {p0, v0}, Landroidx/activity/a;->h(Lo/nc;)V

    .line 74
    iget-object v0, p0, Landroidx/activity/a;->e:Lo/t8;

    .line 76
    iget-object v0, v0, Lo/t8;->c:Ljava/lang/Object;

    .line 78
    check-cast v0, Lo/b1;

    .line 80
    new-instance v1, Lo/S0;

    .line 82
    invoke-direct {v1, p0}, Lo/S0;-><init>(Lo/U0;)V

    .line 85
    const-string v2, "androidx:appcompat"

    .line 87
    invoke-virtual {v0, v2, v1}, Lo/b1;->e(Ljava/lang/String;Lo/se;)V

    .line 90
    new-instance v0, Lo/T0;

    .line 92
    invoke-direct {v0, p0}, Lo/T0;-><init>(Lo/U0;)V

    .line 95
    invoke-virtual {p0, v0}, Landroidx/activity/a;->h(Lo/nc;)V

    .line 98
    return-void
.end method

.method public static l(Lo/i8;)Z
    .locals 5

    .line 1
    iget-object p0, p0, Lo/i8;->c:Lo/H5;

    .line 3
    invoke-virtual {p0}, Lo/H5;->h()Ljava/util/List;

    .line 6
    move-result-object p0

    .line 7
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 10
    move-result-object p0

    .line 11
    const/4 v0, 0x0

    .line 12
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_5

    .line 18
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Lo/T7;

    .line 24
    if-nez v1, :cond_1

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    iget-object v2, v1, Lo/T7;->s:Lo/V7;

    .line 29
    if-nez v2, :cond_2

    .line 31
    const/4 v2, 0x0

    .line 32
    goto :goto_1

    .line 33
    :cond_2
    iget-object v2, v2, Lo/V7;->k:Lo/U0;

    .line 35
    :goto_1
    if-eqz v2, :cond_3

    .line 37
    invoke-virtual {v1}, Lo/T7;->g()Lo/i8;

    .line 40
    move-result-object v2

    .line 41
    invoke-static {v2}, Lo/U0;->l(Lo/i8;)Z

    .line 44
    move-result v2

    .line 45
    or-int/2addr v0, v2

    .line 46
    :cond_3
    iget-object v2, v1, Lo/T7;->N:Lo/s8;

    .line 48
    sget-object v3, Lo/M9;->d:Lo/M9;

    .line 50
    const/4 v4, 0x1

    .line 51
    if-eqz v2, :cond_4

    .line 53
    invoke-virtual {v2}, Lo/s8;->f()V

    .line 56
    iget-object v2, v2, Lo/s8;->c:Landroidx/lifecycle/a;

    .line 58
    iget-object v2, v2, Landroidx/lifecycle/a;->c:Lo/M9;

    .line 60
    invoke-virtual {v2, v3}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 63
    move-result v2

    .line 64
    if-ltz v2, :cond_4

    .line 66
    iget-object v0, v1, Lo/T7;->N:Lo/s8;

    .line 68
    iget-object v0, v0, Lo/s8;->c:Landroidx/lifecycle/a;

    .line 70
    invoke-virtual {v0}, Landroidx/lifecycle/a;->g()V

    .line 73
    move v0, v4

    .line 74
    :cond_4
    iget-object v2, v1, Lo/T7;->M:Landroidx/lifecycle/a;

    .line 76
    iget-object v2, v2, Landroidx/lifecycle/a;->c:Lo/M9;

    .line 78
    invoke-virtual {v2, v3}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 81
    move-result v2

    .line 82
    if-ltz v2, :cond_0

    .line 84
    iget-object v0, v1, Lo/T7;->M:Landroidx/lifecycle/a;

    .line 86
    invoke-virtual {v0}, Landroidx/lifecycle/a;->g()V

    .line 89
    move v0, v4

    .line 90
    goto :goto_0

    .line 91
    :cond_5
    return v0
.end method


# virtual methods
.method public final addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lo/U0;->k()V

    .line 4
    invoke-virtual {p0}, Lo/U0;->j()Lo/h1;

    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Lo/v1;

    .line 10
    invoke-virtual {v0}, Lo/v1;->u()V

    .line 13
    iget-object v1, v0, Lo/v1;->A:Landroid/view/ViewGroup;

    .line 15
    const v2, 0x1020002

    .line 18
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Landroid/view/ViewGroup;

    .line 24
    invoke-virtual {v1, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 27
    iget-object p1, v0, Lo/v1;->m:Lo/p1;

    .line 29
    iget-object p2, v0, Lo/v1;->l:Landroid/view/Window;

    .line 31
    invoke-virtual {p2}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    .line 34
    move-result-object p2

    .line 35
    invoke-virtual {p1, p2}, Lo/p1;->a(Landroid/view/Window$Callback;)V

    .line 38
    return-void
.end method

.method public final attachBaseContext(Landroid/content/Context;)V
    .locals 11

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0}, Lo/U0;->j()Lo/h1;

    .line 5
    move-result-object v1

    .line 6
    check-cast v1, Lo/v1;

    .line 8
    const/4 v2, 0x1

    .line 9
    iput-boolean v2, v1, Lo/v1;->O:Z

    .line 11
    iget v3, v1, Lo/v1;->S:I

    .line 13
    const/16 v4, -0x64

    .line 15
    if-eq v3, v4, :cond_0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    sget v3, Lo/h1;->b:I

    .line 20
    :goto_0
    invoke-virtual {v1, p1, v3}, Lo/v1;->B(Landroid/content/Context;I)I

    .line 23
    move-result v1

    .line 24
    invoke-static {p1}, Lo/h1;->b(Landroid/content/Context;)Z

    .line 27
    move-result v3

    .line 28
    if-eqz v3, :cond_7

    .line 30
    invoke-static {p1}, Lo/h1;->b(Landroid/content/Context;)Z

    .line 33
    move-result v3

    .line 34
    if-nez v3, :cond_1

    .line 36
    goto :goto_4

    .line 37
    :cond_1
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 39
    const/16 v4, 0x21

    .line 41
    if-lt v3, v4, :cond_2

    .line 43
    sget-boolean v3, Lo/h1;->f:Z

    .line 45
    if-nez v3, :cond_7

    .line 47
    sget-object v3, Lo/h1;->a:Lo/f1;

    .line 49
    new-instance v4, Lo/c1;

    .line 51
    invoke-direct {v4, p1, v0}, Lo/c1;-><init>(Landroid/content/Context;I)V

    .line 54
    invoke-virtual {v3, v4}, Lo/f1;->execute(Ljava/lang/Runnable;)V

    .line 57
    goto :goto_4

    .line 58
    :cond_2
    sget-object v3, Lo/h1;->i:Ljava/lang/Object;

    .line 60
    monitor-enter v3

    .line 61
    :try_start_0
    sget-object v4, Lo/h1;->c:Lo/ra;

    .line 63
    if-nez v4, :cond_5

    .line 65
    sget-object v4, Lo/h1;->d:Lo/ra;

    .line 67
    if-nez v4, :cond_3

    .line 69
    invoke-static {p1}, Lo/x9;->P(Landroid/content/Context;)Ljava/lang/String;

    .line 72
    move-result-object v4

    .line 73
    invoke-static {v4}, Lo/ra;->a(Ljava/lang/String;)Lo/ra;

    .line 76
    move-result-object v4

    .line 77
    sput-object v4, Lo/h1;->d:Lo/ra;

    .line 79
    goto :goto_1

    .line 80
    :catchall_0
    move-exception p1

    .line 81
    goto :goto_3

    .line 82
    :cond_3
    :goto_1
    sget-object v4, Lo/h1;->d:Lo/ra;

    .line 84
    iget-object v4, v4, Lo/ra;->a:Lo/sa;

    .line 86
    iget-object v4, v4, Lo/sa;->a:Landroid/os/LocaleList;

    .line 88
    invoke-virtual {v4}, Landroid/os/LocaleList;->isEmpty()Z

    .line 91
    move-result v4

    .line 92
    if-eqz v4, :cond_4

    .line 94
    monitor-exit v3

    .line 95
    goto :goto_4

    .line 96
    :cond_4
    sget-object v4, Lo/h1;->d:Lo/ra;

    .line 98
    sput-object v4, Lo/h1;->c:Lo/ra;

    .line 100
    goto :goto_2

    .line 101
    :cond_5
    sget-object v5, Lo/h1;->d:Lo/ra;

    .line 103
    invoke-virtual {v4, v5}, Lo/ra;->equals(Ljava/lang/Object;)Z

    .line 106
    move-result v4

    .line 107
    if-nez v4, :cond_6

    .line 109
    sget-object v4, Lo/h1;->c:Lo/ra;

    .line 111
    sput-object v4, Lo/h1;->d:Lo/ra;

    .line 113
    iget-object v4, v4, Lo/ra;->a:Lo/sa;

    .line 115
    iget-object v4, v4, Lo/sa;->a:Landroid/os/LocaleList;

    .line 117
    invoke-virtual {v4}, Landroid/os/LocaleList;->toLanguageTags()Ljava/lang/String;

    .line 120
    move-result-object v4

    .line 121
    invoke-static {p1, v4}, Lo/x9;->L(Landroid/content/Context;Ljava/lang/String;)V

    .line 124
    :cond_6
    :goto_2
    monitor-exit v3

    .line 125
    goto :goto_4

    .line 126
    :goto_3
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    throw p1

    .line 128
    :cond_7
    :goto_4
    invoke-static {p1}, Lo/v1;->n(Landroid/content/Context;)Lo/ra;

    .line 131
    move-result-object v3

    .line 132
    instance-of v4, p1, Landroid/view/ContextThemeWrapper;

    .line 134
    const/4 v5, 0x0

    .line 135
    if-eqz v4, :cond_8

    .line 137
    invoke-static {p1, v1, v3, v5, v0}, Lo/v1;->r(Landroid/content/Context;ILo/ra;Landroid/content/res/Configuration;Z)Landroid/content/res/Configuration;

    .line 140
    move-result-object v4

    .line 141
    :try_start_1
    move-object v6, p1

    .line 142
    check-cast v6, Landroid/view/ContextThemeWrapper;

    .line 144
    invoke-virtual {v6, v4}, Landroid/view/ContextThemeWrapper;->applyOverrideConfiguration(Landroid/content/res/Configuration;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    .line 147
    goto/16 :goto_b

    .line 149
    :catch_0
    :cond_8
    instance-of v4, p1, Lo/V4;

    .line 151
    if-eqz v4, :cond_9

    .line 153
    invoke-static {p1, v1, v3, v5, v0}, Lo/v1;->r(Landroid/content/Context;ILo/ra;Landroid/content/res/Configuration;Z)Landroid/content/res/Configuration;

    .line 156
    move-result-object v4

    .line 157
    :try_start_2
    move-object v6, p1

    .line 158
    check-cast v6, Lo/V4;

    .line 160
    invoke-virtual {v6, v4}, Lo/V4;->a(Landroid/content/res/Configuration;)V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1

    .line 163
    goto/16 :goto_b

    .line 165
    :catch_1
    :cond_9
    sget-boolean v4, Lo/v1;->j0:Z

    .line 167
    if-nez v4, :cond_a

    .line 169
    goto/16 :goto_b

    .line 171
    :cond_a
    new-instance v4, Landroid/content/res/Configuration;

    .line 173
    invoke-direct {v4}, Landroid/content/res/Configuration;-><init>()V

    .line 176
    const/4 v6, -0x1

    .line 177
    iput v6, v4, Landroid/content/res/Configuration;->uiMode:I

    .line 179
    const/4 v6, 0x0

    .line 180
    iput v6, v4, Landroid/content/res/Configuration;->fontScale:F

    .line 182
    invoke-virtual {p1, v4}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    .line 185
    move-result-object v4

    .line 186
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 189
    move-result-object v4

    .line 190
    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 193
    move-result-object v4

    .line 194
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 197
    move-result-object v7

    .line 198
    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 201
    move-result-object v7

    .line 202
    iget v8, v7, Landroid/content/res/Configuration;->uiMode:I

    .line 204
    iput v8, v4, Landroid/content/res/Configuration;->uiMode:I

    .line 206
    invoke-virtual {v4, v7}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    .line 209
    move-result v8

    .line 210
    if-nez v8, :cond_20

    .line 212
    new-instance v8, Landroid/content/res/Configuration;

    .line 214
    invoke-direct {v8}, Landroid/content/res/Configuration;-><init>()V

    .line 217
    iput v6, v8, Landroid/content/res/Configuration;->fontScale:F

    .line 219
    invoke-virtual {v4, v7}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    .line 222
    move-result v6

    .line 223
    if-nez v6, :cond_b

    .line 225
    goto/16 :goto_5

    .line 227
    :cond_b
    iget v6, v4, Landroid/content/res/Configuration;->fontScale:F

    .line 229
    iget v9, v7, Landroid/content/res/Configuration;->fontScale:F

    .line 231
    cmpl-float v6, v6, v9

    .line 233
    if-eqz v6, :cond_c

    .line 235
    iput v9, v8, Landroid/content/res/Configuration;->fontScale:F

    .line 237
    :cond_c
    iget v6, v4, Landroid/content/res/Configuration;->mcc:I

    .line 239
    iget v9, v7, Landroid/content/res/Configuration;->mcc:I

    .line 241
    if-eq v6, v9, :cond_d

    .line 243
    iput v9, v8, Landroid/content/res/Configuration;->mcc:I

    .line 245
    :cond_d
    iget v6, v4, Landroid/content/res/Configuration;->mnc:I

    .line 247
    iget v9, v7, Landroid/content/res/Configuration;->mnc:I

    .line 249
    if-eq v6, v9, :cond_e

    .line 251
    iput v9, v8, Landroid/content/res/Configuration;->mnc:I

    .line 253
    :cond_e
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 255
    invoke-static {v4, v7, v8}, Lo/m1;->a(Landroid/content/res/Configuration;Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    .line 258
    iget v9, v4, Landroid/content/res/Configuration;->touchscreen:I

    .line 260
    iget v10, v7, Landroid/content/res/Configuration;->touchscreen:I

    .line 262
    if-eq v9, v10, :cond_f

    .line 264
    iput v10, v8, Landroid/content/res/Configuration;->touchscreen:I

    .line 266
    :cond_f
    iget v9, v4, Landroid/content/res/Configuration;->keyboard:I

    .line 268
    iget v10, v7, Landroid/content/res/Configuration;->keyboard:I

    .line 270
    if-eq v9, v10, :cond_10

    .line 272
    iput v10, v8, Landroid/content/res/Configuration;->keyboard:I

    .line 274
    :cond_10
    iget v9, v4, Landroid/content/res/Configuration;->keyboardHidden:I

    .line 276
    iget v10, v7, Landroid/content/res/Configuration;->keyboardHidden:I

    .line 278
    if-eq v9, v10, :cond_11

    .line 280
    iput v10, v8, Landroid/content/res/Configuration;->keyboardHidden:I

    .line 282
    :cond_11
    iget v9, v4, Landroid/content/res/Configuration;->navigation:I

    .line 284
    iget v10, v7, Landroid/content/res/Configuration;->navigation:I

    .line 286
    if-eq v9, v10, :cond_12

    .line 288
    iput v10, v8, Landroid/content/res/Configuration;->navigation:I

    .line 290
    :cond_12
    iget v9, v4, Landroid/content/res/Configuration;->navigationHidden:I

    .line 292
    iget v10, v7, Landroid/content/res/Configuration;->navigationHidden:I

    .line 294
    if-eq v9, v10, :cond_13

    .line 296
    iput v10, v8, Landroid/content/res/Configuration;->navigationHidden:I

    .line 298
    :cond_13
    iget v9, v4, Landroid/content/res/Configuration;->orientation:I

    .line 300
    iget v10, v7, Landroid/content/res/Configuration;->orientation:I

    .line 302
    if-eq v9, v10, :cond_14

    .line 304
    iput v10, v8, Landroid/content/res/Configuration;->orientation:I

    .line 306
    :cond_14
    iget v9, v4, Landroid/content/res/Configuration;->screenLayout:I

    .line 308
    and-int/lit8 v9, v9, 0xf

    .line 310
    iget v10, v7, Landroid/content/res/Configuration;->screenLayout:I

    .line 312
    and-int/lit8 v10, v10, 0xf

    .line 314
    if-eq v9, v10, :cond_15

    .line 316
    iget v9, v8, Landroid/content/res/Configuration;->screenLayout:I

    .line 318
    or-int/2addr v9, v10

    .line 319
    iput v9, v8, Landroid/content/res/Configuration;->screenLayout:I

    .line 321
    :cond_15
    iget v9, v4, Landroid/content/res/Configuration;->screenLayout:I

    .line 323
    and-int/lit16 v9, v9, 0xc0

    .line 325
    iget v10, v7, Landroid/content/res/Configuration;->screenLayout:I

    .line 327
    and-int/lit16 v10, v10, 0xc0

    .line 329
    if-eq v9, v10, :cond_16

    .line 331
    iget v9, v8, Landroid/content/res/Configuration;->screenLayout:I

    .line 333
    or-int/2addr v9, v10

    .line 334
    iput v9, v8, Landroid/content/res/Configuration;->screenLayout:I

    .line 336
    :cond_16
    iget v9, v4, Landroid/content/res/Configuration;->screenLayout:I

    .line 338
    and-int/lit8 v9, v9, 0x30

    .line 340
    iget v10, v7, Landroid/content/res/Configuration;->screenLayout:I

    .line 342
    and-int/lit8 v10, v10, 0x30

    .line 344
    if-eq v9, v10, :cond_17

    .line 346
    iget v9, v8, Landroid/content/res/Configuration;->screenLayout:I

    .line 348
    or-int/2addr v9, v10

    .line 349
    iput v9, v8, Landroid/content/res/Configuration;->screenLayout:I

    .line 351
    :cond_17
    iget v9, v4, Landroid/content/res/Configuration;->screenLayout:I

    .line 353
    and-int/lit16 v9, v9, 0x300

    .line 355
    iget v10, v7, Landroid/content/res/Configuration;->screenLayout:I

    .line 357
    and-int/lit16 v10, v10, 0x300

    .line 359
    if-eq v9, v10, :cond_18

    .line 361
    iget v9, v8, Landroid/content/res/Configuration;->screenLayout:I

    .line 363
    or-int/2addr v9, v10

    .line 364
    iput v9, v8, Landroid/content/res/Configuration;->screenLayout:I

    .line 366
    :cond_18
    const/16 v9, 0x1a

    .line 368
    if-lt v6, v9, :cond_1a

    .line 370
    invoke-static {v4}, Lo/b;->a(Landroid/content/res/Configuration;)I

    .line 373
    move-result v6

    .line 374
    and-int/lit8 v6, v6, 0x3

    .line 376
    invoke-static {v7}, Lo/b;->a(Landroid/content/res/Configuration;)I

    .line 379
    move-result v9

    .line 380
    and-int/lit8 v9, v9, 0x3

    .line 382
    if-eq v6, v9, :cond_19

    .line 384
    invoke-static {v8}, Lo/b;->a(Landroid/content/res/Configuration;)I

    .line 387
    move-result v6

    .line 388
    invoke-static {v7}, Lo/b;->a(Landroid/content/res/Configuration;)I

    .line 391
    move-result v9

    .line 392
    and-int/lit8 v9, v9, 0x3

    .line 394
    or-int/2addr v6, v9

    .line 395
    invoke-static {v8, v6}, Lo/b;->j(Landroid/content/res/Configuration;I)V

    .line 398
    :cond_19
    invoke-static {v4}, Lo/b;->a(Landroid/content/res/Configuration;)I

    .line 401
    move-result v6

    .line 402
    and-int/lit8 v6, v6, 0xc

    .line 404
    invoke-static {v7}, Lo/b;->a(Landroid/content/res/Configuration;)I

    .line 407
    move-result v9

    .line 408
    and-int/lit8 v9, v9, 0xc

    .line 410
    if-eq v6, v9, :cond_1a

    .line 412
    invoke-static {v8}, Lo/b;->a(Landroid/content/res/Configuration;)I

    .line 415
    move-result v6

    .line 416
    invoke-static {v7}, Lo/b;->a(Landroid/content/res/Configuration;)I

    .line 419
    move-result v9

    .line 420
    and-int/lit8 v9, v9, 0xc

    .line 422
    or-int/2addr v6, v9

    .line 423
    invoke-static {v8, v6}, Lo/b;->j(Landroid/content/res/Configuration;I)V

    .line 426
    :cond_1a
    iget v6, v4, Landroid/content/res/Configuration;->uiMode:I

    .line 428
    and-int/lit8 v6, v6, 0xf

    .line 430
    iget v9, v7, Landroid/content/res/Configuration;->uiMode:I

    .line 432
    and-int/lit8 v9, v9, 0xf

    .line 434
    if-eq v6, v9, :cond_1b

    .line 436
    iget v6, v8, Landroid/content/res/Configuration;->uiMode:I

    .line 438
    or-int/2addr v6, v9

    .line 439
    iput v6, v8, Landroid/content/res/Configuration;->uiMode:I

    .line 441
    :cond_1b
    iget v6, v4, Landroid/content/res/Configuration;->uiMode:I

    .line 443
    and-int/lit8 v6, v6, 0x30

    .line 445
    iget v9, v7, Landroid/content/res/Configuration;->uiMode:I

    .line 447
    and-int/lit8 v9, v9, 0x30

    .line 449
    if-eq v6, v9, :cond_1c

    .line 451
    iget v6, v8, Landroid/content/res/Configuration;->uiMode:I

    .line 453
    or-int/2addr v6, v9

    .line 454
    iput v6, v8, Landroid/content/res/Configuration;->uiMode:I

    .line 456
    :cond_1c
    iget v6, v4, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 458
    iget v9, v7, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 460
    if-eq v6, v9, :cond_1d

    .line 462
    iput v9, v8, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 464
    :cond_1d
    iget v6, v4, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 466
    iget v9, v7, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 468
    if-eq v6, v9, :cond_1e

    .line 470
    iput v9, v8, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 472
    :cond_1e
    iget v6, v4, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 474
    iget v9, v7, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 476
    if-eq v6, v9, :cond_1f

    .line 478
    iput v9, v8, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 480
    :cond_1f
    iget v4, v4, Landroid/content/res/Configuration;->densityDpi:I

    .line 482
    iget v6, v7, Landroid/content/res/Configuration;->densityDpi:I

    .line 484
    if-eq v4, v6, :cond_21

    .line 486
    iput v6, v8, Landroid/content/res/Configuration;->densityDpi:I

    .line 488
    goto :goto_5

    .line 489
    :cond_20
    move-object v8, v5

    .line 490
    :cond_21
    :goto_5
    invoke-static {p1, v1, v3, v8, v2}, Lo/v1;->r(Landroid/content/Context;ILo/ra;Landroid/content/res/Configuration;Z)Landroid/content/res/Configuration;

    .line 493
    move-result-object v1

    .line 494
    new-instance v3, Lo/V4;

    .line 496
    const v4, 0x7f0f0218

    .line 499
    invoke-direct {v3, p1, v4}, Lo/V4;-><init>(Landroid/content/Context;I)V

    .line 502
    invoke-virtual {v3, v1}, Lo/V4;->a(Landroid/content/res/Configuration;)V

    .line 505
    :try_start_3
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 508
    move-result-object p1
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_5

    .line 509
    if-eqz p1, :cond_25

    .line 511
    invoke-virtual {v3}, Lo/V4;->getTheme()Landroid/content/res/Resources$Theme;

    .line 514
    move-result-object p1

    .line 515
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 517
    const/16 v4, 0x1d

    .line 519
    if-lt v1, v4, :cond_22

    .line 521
    invoke-static {p1}, Lo/v2;->c(Landroid/content/res/Resources$Theme;)V

    .line 524
    goto :goto_a

    .line 525
    :cond_22
    sget-object v1, Lo/x9;->J:Ljava/lang/Object;

    .line 527
    monitor-enter v1

    .line 528
    :try_start_4
    sget-boolean v4, Lo/x9;->L:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 530
    if-nez v4, :cond_23

    .line 532
    :try_start_5
    const-class v4, Landroid/content/res/Resources$Theme;

    .line 534
    const-string v6, "rebase"

    .line 536
    new-array v7, v0, [Ljava/lang/Class;

    .line 538
    invoke-virtual {v4, v6, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 541
    move-result-object v4

    .line 542
    sput-object v4, Lo/x9;->K:Ljava/lang/reflect/Method;

    .line 544
    invoke-virtual {v4, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_5
    .catch Ljava/lang/NoSuchMethodException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 547
    goto :goto_6

    .line 548
    :catchall_1
    move-exception p1

    .line 549
    goto :goto_9

    .line 550
    :catch_2
    move-exception v4

    .line 551
    :try_start_6
    const-string v6, "ResourcesCompat"

    .line 553
    const-string v7, "Failed to retrieve rebase() method"

    .line 555
    invoke-static {v6, v7, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 558
    :goto_6
    sput-boolean v2, Lo/x9;->L:Z

    .line 560
    :cond_23
    sget-object v2, Lo/x9;->K:Ljava/lang/reflect/Method;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 562
    if-eqz v2, :cond_24

    .line 564
    :try_start_7
    new-array v0, v0, [Ljava/lang/Object;

    .line 566
    invoke-virtual {v2, p1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catch Ljava/lang/IllegalAccessException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 569
    goto :goto_8

    .line 570
    :catch_3
    move-exception p1

    .line 571
    goto :goto_7

    .line 572
    :catch_4
    move-exception p1

    .line 573
    :goto_7
    :try_start_8
    const-string v0, "ResourcesCompat"

    .line 575
    const-string v2, "Failed to invoke rebase() method via reflection"

    .line 577
    invoke-static {v0, v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 580
    sput-object v5, Lo/x9;->K:Ljava/lang/reflect/Method;

    .line 582
    :cond_24
    :goto_8
    monitor-exit v1

    .line 583
    goto :goto_a

    .line 584
    :goto_9
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 585
    throw p1

    .line 586
    :catch_5
    :cond_25
    :goto_a
    move-object p1, v3

    .line 587
    :goto_b
    invoke-super {p0, p1}, Landroid/content/ContextWrapper;->attachBaseContext(Landroid/content/Context;)V

    .line 590
    return-void
.end method

.method public final closeOptionsMenu()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lo/U0;->j()Lo/h1;

    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lo/v1;

    .line 7
    invoke-virtual {v0}, Lo/v1;->z()V

    .line 10
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 13
    move-result-object v0

    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-virtual {v0, v1}, Landroid/view/Window;->hasFeature(I)Z

    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 21
    invoke-super {p0}, Landroid/app/Activity;->closeOptionsMenu()V

    .line 24
    :cond_0
    return-void
.end method

.method public final dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 4
    invoke-virtual {p0}, Lo/U0;->j()Lo/h1;

    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Lo/v1;

    .line 10
    invoke-virtual {v0}, Lo/v1;->z()V

    .line 13
    invoke-super {p0, p1}, Lo/t4;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 16
    move-result p1

    .line 17
    return p1
.end method

.method public final dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/app/Activity;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 4
    if-eqz p4, :cond_5

    .line 6
    array-length v0, p4

    .line 7
    if-nez v0, :cond_0

    .line 9
    goto :goto_1

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    aget-object v0, p4, v0

    .line 13
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 16
    move-result v1

    .line 17
    sparse-switch v1, :sswitch_data_0

    .line 20
    goto :goto_1

    .line 21
    :sswitch_0
    const-string v1, "--autofill"

    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    move-result v0

    .line 27
    if-nez v0, :cond_1

    .line 29
    goto :goto_1

    .line 30
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 32
    const/16 v1, 0x1a

    .line 34
    if-lt v0, v1, :cond_5

    .line 36
    goto :goto_0

    .line 37
    :sswitch_1
    const-string v1, "--contentcapture"

    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 42
    move-result v0

    .line 43
    if-nez v0, :cond_2

    .line 45
    goto :goto_1

    .line 46
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 48
    const/16 v1, 0x1d

    .line 50
    if-lt v0, v1, :cond_5

    .line 52
    goto :goto_0

    .line 53
    :sswitch_2
    const-string v1, "--list-dumpables"

    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 58
    move-result v0

    .line 59
    if-nez v0, :cond_3

    .line 61
    goto :goto_1

    .line 62
    :sswitch_3
    const-string v1, "--dump-dumpable"

    .line 64
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 67
    move-result v0

    .line 68
    if-nez v0, :cond_3

    .line 70
    goto :goto_1

    .line 71
    :cond_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 73
    const/16 v1, 0x21

    .line 75
    if-lt v0, v1, :cond_5

    .line 77
    goto :goto_0

    .line 78
    :sswitch_4
    const-string v1, "--translation"

    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 83
    move-result v0

    .line 84
    if-nez v0, :cond_4

    .line 86
    goto :goto_1

    .line 87
    :cond_4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 89
    const/16 v1, 0x1f

    .line 91
    if-lt v0, v1, :cond_5

    .line 93
    :goto_0
    return-void

    .line 94
    :cond_5
    :goto_1
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 97
    const-string v0, "Local FragmentActivity "

    .line 99
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 102
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 105
    move-result v0

    .line 106
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 109
    move-result-object v0

    .line 110
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 113
    const-string v0, " State:"

    .line 115
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    .line 120
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 123
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    const-string v1, "  "

    .line 128
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 134
    move-result-object v0

    .line 135
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 138
    const-string v1, "mCreated="

    .line 140
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 143
    iget-boolean v1, p0, Lo/U0;->t:Z

    .line 145
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 148
    const-string v1, " mResumed="

    .line 150
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 153
    iget-boolean v1, p0, Lo/U0;->u:Z

    .line 155
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 158
    const-string v1, " mStopped="

    .line 160
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 163
    iget-boolean v1, p0, Lo/U0;->v:Z

    .line 165
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 168
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    .line 171
    move-result-object v1

    .line 172
    if-eqz v1, :cond_6

    .line 174
    invoke-static {p0}, Lo/H1;->v(Lo/R9;)Lo/H1;

    .line 177
    move-result-object v1

    .line 178
    invoke-virtual {v1, v0, p3}, Lo/H1;->r(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 181
    :cond_6
    iget-object v0, p0, Lo/U0;->r:Lo/C;

    .line 183
    iget-object v0, v0, Lo/C;->b:Ljava/lang/Object;

    .line 185
    check-cast v0, Lo/V7;

    .line 187
    iget-object v0, v0, Lo/V7;->j:Lo/i8;

    .line 189
    invoke-virtual {v0, p1, p2, p3, p4}, Lo/i8;->v(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 192
    return-void

    .line 193
    :sswitch_data_0
    .sparse-switch
        -0x2673d6ef -> :sswitch_4
        0x5fd0f67 -> :sswitch_3
        0x1c2b8816 -> :sswitch_2
        0x4519f64d -> :sswitch_1
        0x56b9c952 -> :sswitch_0
    .end sparse-switch
.end method

.method public final findViewById(I)Landroid/view/View;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lo/U0;->j()Lo/h1;

    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lo/v1;

    .line 7
    invoke-virtual {v0}, Lo/v1;->u()V

    .line 10
    iget-object v0, v0, Lo/v1;->l:Landroid/view/Window;

    .line 12
    invoke-virtual {v0, p1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    .line 15
    move-result-object p1

    .line 16
    return-object p1
.end method

.method public final getMenuInflater()Landroid/view/MenuInflater;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lo/U0;->j()Lo/h1;

    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lo/v1;

    .line 7
    iget-object v1, v0, Lo/v1;->p:Lo/zf;

    .line 9
    if-nez v1, :cond_1

    .line 11
    invoke-virtual {v0}, Lo/v1;->z()V

    .line 14
    new-instance v1, Lo/zf;

    .line 16
    iget-object v2, v0, Lo/v1;->o:Lo/si;

    .line 18
    if-eqz v2, :cond_0

    .line 20
    invoke-virtual {v2}, Lo/si;->r0()Landroid/content/Context;

    .line 23
    move-result-object v2

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    iget-object v2, v0, Lo/v1;->k:Landroid/content/Context;

    .line 27
    :goto_0
    invoke-direct {v1, v2}, Lo/zf;-><init>(Landroid/content/Context;)V

    .line 30
    iput-object v1, v0, Lo/v1;->p:Lo/zf;

    .line 32
    :cond_1
    iget-object v0, v0, Lo/v1;->p:Lo/zf;

    .line 34
    return-object v0
.end method

.method public final getResources()Landroid/content/res/Resources;
    .locals 1

    .line 1
    sget v0, Lo/ih;->a:I

    .line 3
    invoke-super {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final invalidateOptionsMenu()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lo/U0;->j()Lo/h1;

    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lo/v1;

    .line 7
    iget-object v1, v0, Lo/v1;->o:Lo/si;

    .line 9
    if-eqz v1, :cond_0

    .line 11
    invoke-virtual {v0}, Lo/v1;->z()V

    .line 14
    iget-object v1, v0, Lo/v1;->o:Lo/si;

    .line 16
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    const/4 v1, 0x0

    .line 20
    invoke-virtual {v0, v1}, Lo/v1;->A(I)V

    .line 23
    :cond_0
    return-void
.end method

.method public final j()Lo/h1;
    .locals 2

    .line 1
    iget-object v0, p0, Lo/U0;->w:Lo/v1;

    .line 3
    if-nez v0, :cond_0

    .line 5
    sget-object v0, Lo/h1;->a:Lo/f1;

    .line 7
    new-instance v0, Lo/v1;

    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-direct {v0, p0, v1, p0, p0}, Lo/v1;-><init>(Landroid/content/Context;Landroid/view/Window;Lo/Y0;Ljava/lang/Object;)V

    .line 13
    iput-object v0, p0, Lo/U0;->w:Lo/v1;

    .line 15
    :cond_0
    iget-object v0, p0, Lo/U0;->w:Lo/v1;

    .line 17
    return-object v0
.end method

.method public final k()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0, p0}, Lo/Ng;->s(Landroid/view/View;Lo/R9;)V

    .line 12
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 19
    move-result-object v0

    .line 20
    const-string v1, "<this>"

    .line 22
    invoke-static {v0, v1}, Lo/x9;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    const v1, 0x7f0801fc

    .line 28
    invoke-virtual {v0, v1, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 31
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 38
    move-result-object v0

    .line 39
    invoke-static {v0, p0}, Lo/Ng;->u(Landroid/view/View;Lo/te;)V

    .line 42
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 45
    move-result-object v0

    .line 46
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 49
    move-result-object v0

    .line 50
    invoke-static {v0, p0}, Lo/Ng;->t(Landroid/view/View;Lo/mc;)V

    .line 53
    return-void
.end method

.method public final m()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 4
    iget-object v0, p0, Lo/U0;->r:Lo/C;

    .line 6
    iget-object v0, v0, Lo/C;->b:Ljava/lang/Object;

    .line 8
    check-cast v0, Lo/V7;

    .line 10
    iget-object v0, v0, Lo/V7;->j:Lo/i8;

    .line 12
    invoke-virtual {v0}, Lo/i8;->l()V

    .line 15
    iget-object v0, p0, Lo/U0;->s:Landroidx/lifecycle/a;

    .line 17
    sget-object v1, Lo/L9;->ON_DESTROY:Lo/L9;

    .line 19
    invoke-virtual {v0, v1}, Landroidx/lifecycle/a;->d(Lo/L9;)V

    .line 22
    return-void
.end method

.method public final n(ILandroid/view/MenuItem;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/activity/a;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    .line 4
    move-result p2

    .line 5
    if-eqz p2, :cond_0

    .line 7
    const/4 p1, 0x1

    .line 8
    return p1

    .line 9
    :cond_0
    const/4 p2, 0x6

    .line 10
    if-ne p1, p2, :cond_1

    .line 12
    iget-object p1, p0, Lo/U0;->r:Lo/C;

    .line 14
    iget-object p1, p1, Lo/C;->b:Ljava/lang/Object;

    .line 16
    check-cast p1, Lo/V7;

    .line 18
    iget-object p1, p1, Lo/V7;->j:Lo/i8;

    .line 20
    invoke-virtual {p1}, Lo/i8;->i()Z

    .line 23
    move-result p1

    .line 24
    return p1

    .line 25
    :cond_1
    const/4 p1, 0x0

    .line 26
    return p1
.end method

.method public final o()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onPostResume()V

    .line 4
    iget-object v0, p0, Lo/U0;->s:Landroidx/lifecycle/a;

    .line 6
    sget-object v1, Lo/L9;->ON_RESUME:Lo/L9;

    .line 8
    invoke-virtual {v0, v1}, Landroidx/lifecycle/a;->d(Lo/L9;)V

    .line 11
    iget-object v0, p0, Lo/U0;->r:Lo/C;

    .line 13
    iget-object v0, v0, Lo/C;->b:Ljava/lang/Object;

    .line 15
    check-cast v0, Lo/V7;

    .line 17
    iget-object v0, v0, Lo/V7;->j:Lo/i8;

    .line 19
    const/4 v1, 0x0

    .line 20
    iput-boolean v1, v0, Lo/i8;->E:Z

    .line 22
    iput-boolean v1, v0, Lo/i8;->F:Z

    .line 24
    iget-object v2, v0, Lo/i8;->L:Lo/k8;

    .line 26
    iput-boolean v1, v2, Lo/k8;->h:Z

    .line 28
    const/4 v1, 0x7

    .line 29
    invoke-virtual {v0, v1}, Lo/i8;->u(I)V

    .line 32
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lo/U0;->r:Lo/C;

    .line 3
    invoke-virtual {v0}, Lo/C;->A()V

    .line 6
    invoke-super {p0, p1, p2, p3}, Landroidx/activity/a;->onActivityResult(IILandroid/content/Intent;)V

    .line 9
    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Landroidx/activity/a;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 4
    invoke-virtual {p0}, Lo/U0;->j()Lo/h1;

    .line 7
    move-result-object p1

    .line 8
    check-cast p1, Lo/v1;

    .line 10
    iget-boolean v0, p1, Lo/v1;->F:Z

    .line 12
    if-eqz v0, :cond_0

    .line 14
    iget-boolean v0, p1, Lo/v1;->z:Z

    .line 16
    if-eqz v0, :cond_0

    .line 18
    invoke-virtual {p1}, Lo/v1;->z()V

    .line 21
    iget-object v0, p1, Lo/v1;->o:Lo/si;

    .line 23
    if-eqz v0, :cond_0

    .line 25
    iget-object v1, v0, Lo/si;->U:Landroid/content/Context;

    .line 27
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 30
    move-result-object v1

    .line 31
    const/high16 v2, 0x7f040000

    .line 33
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 36
    move-result v1

    .line 37
    invoke-virtual {v0, v1}, Lo/si;->u0(Z)V

    .line 40
    :cond_0
    invoke-static {}, Lo/y1;->a()Lo/y1;

    .line 43
    move-result-object v0

    .line 44
    iget-object v1, p1, Lo/v1;->k:Landroid/content/Context;

    .line 46
    monitor-enter v0

    .line 47
    :try_start_0
    iget-object v2, v0, Lo/y1;->a:Lo/Xd;

    .line 49
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 50
    :try_start_1
    iget-object v3, v2, Lo/Xd;->b:Ljava/util/WeakHashMap;

    .line 52
    invoke-virtual {v3, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    move-result-object v1

    .line 56
    check-cast v1, Lo/za;

    .line 58
    if-eqz v1, :cond_1

    .line 60
    invoke-virtual {v1}, Lo/za;->a()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 63
    goto :goto_0

    .line 64
    :catchall_0
    move-exception p1

    .line 65
    goto :goto_1

    .line 66
    :cond_1
    :goto_0
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 67
    monitor-exit v0

    .line 68
    new-instance v0, Landroid/content/res/Configuration;

    .line 70
    iget-object v1, p1, Lo/v1;->k:Landroid/content/Context;

    .line 72
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 75
    move-result-object v1

    .line 76
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 79
    move-result-object v1

    .line 80
    invoke-direct {v0, v1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 83
    iput-object v0, p1, Lo/v1;->R:Landroid/content/res/Configuration;

    .line 85
    const/4 v0, 0x0

    .line 86
    invoke-virtual {p1, v0, v0}, Lo/v1;->l(ZZ)Z

    .line 89
    return-void

    .line 90
    :goto_1
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 91
    :try_start_4
    throw p1

    .line 92
    :catchall_1
    move-exception p1

    .line 93
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 94
    throw p1
.end method

.method public final onContentChanged()V
    .locals 0

    .line 1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/activity/a;->onCreate(Landroid/os/Bundle;)V

    .line 4
    iget-object p1, p0, Lo/U0;->s:Landroidx/lifecycle/a;

    .line 6
    sget-object v0, Lo/L9;->ON_CREATE:Lo/L9;

    .line 8
    invoke-virtual {p1, v0}, Landroidx/lifecycle/a;->d(Lo/L9;)V

    .line 11
    iget-object p1, p0, Lo/U0;->r:Lo/C;

    .line 13
    iget-object p1, p1, Lo/C;->b:Ljava/lang/Object;

    .line 15
    check-cast p1, Lo/V7;

    .line 17
    iget-object p1, p1, Lo/V7;->j:Lo/i8;

    .line 19
    invoke-virtual {p1}, Lo/i8;->j()V

    .line 22
    return-void
.end method

.method public final onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lo/U0;->r:Lo/C;

    iget-object v0, v0, Lo/C;->b:Ljava/lang/Object;

    check-cast v0, Lo/V7;

    .line 2
    iget-object v0, v0, Lo/V7;->j:Lo/i8;

    iget-object v0, v0, Lo/i8;->f:Lo/Y7;

    .line 3
    invoke-virtual {v0, p1, p2, p3, p4}, Lo/Y7;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 4
    invoke-super {p0, p1, p2, p3, p4}, Landroid/app/Activity;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    return-object v0
.end method

.method public final onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 2

    .line 5
    iget-object v0, p0, Lo/U0;->r:Lo/C;

    iget-object v0, v0, Lo/C;->b:Ljava/lang/Object;

    check-cast v0, Lo/V7;

    .line 6
    iget-object v0, v0, Lo/V7;->j:Lo/i8;

    iget-object v0, v0, Lo/i8;->f:Lo/Y7;

    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0, v1, p1, p2, p3}, Lo/Y7;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 8
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lo/U0;->m()V

    .line 4
    invoke-virtual {p0}, Lo/U0;->j()Lo/h1;

    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lo/h1;->d()V

    .line 11
    return-void
.end method

.method public final onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    const/16 v1, 0x1a

    .line 5
    if-ge v0, v1, :cond_0

    .line 7
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 13
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getMetaState()I

    .line 16
    move-result v0

    .line 17
    invoke-static {v0}, Landroid/view/KeyEvent;->metaStateHasNoModifiers(I)Z

    .line 20
    move-result v0

    .line 21
    if-nez v0, :cond_0

    .line 23
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    .line 26
    move-result v0

    .line 27
    if-nez v0, :cond_0

    .line 29
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 32
    move-result v0

    .line 33
    invoke-static {v0}, Landroid/view/KeyEvent;->isModifierKey(I)Z

    .line 36
    move-result v0

    .line 37
    if-nez v0, :cond_0

    .line 39
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 42
    move-result-object v0

    .line 43
    if-eqz v0, :cond_0

    .line 45
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 48
    move-result-object v1

    .line 49
    if-eqz v1, :cond_0

    .line 51
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {v0, p2}, Landroid/view/View;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    .line 58
    move-result v0

    .line 59
    if-eqz v0, :cond_0

    .line 61
    const/4 p1, 0x1

    .line 62
    return p1

    .line 63
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 66
    move-result p1

    .line 67
    return p1
.end method

.method public final onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 4

    .line 1
    invoke-virtual {p0, p1, p2}, Lo/U0;->n(ILandroid/view/MenuItem;)Z

    .line 4
    move-result p1

    .line 5
    const/4 v0, 0x1

    .line 6
    if-eqz p1, :cond_0

    .line 8
    return v0

    .line 9
    :cond_0
    invoke-virtual {p0}, Lo/U0;->j()Lo/h1;

    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Lo/v1;

    .line 15
    invoke-virtual {p1}, Lo/v1;->z()V

    .line 18
    iget-object p1, p1, Lo/v1;->o:Lo/si;

    .line 20
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    .line 23
    move-result p2

    .line 24
    const v1, 0x102002c

    .line 27
    const/4 v2, 0x0

    .line 28
    if-ne p2, v1, :cond_8

    .line 30
    if-eqz p1, :cond_8

    .line 32
    iget-object p1, p1, Lo/si;->Y:Lo/s5;

    .line 34
    check-cast p1, Lo/ig;

    .line 36
    iget p1, p1, Lo/ig;->b:I

    .line 38
    and-int/lit8 p1, p1, 0x4

    .line 40
    if-eqz p1, :cond_8

    .line 42
    invoke-static {p0}, Lo/Ha;->P(Lo/U0;)Landroid/content/Intent;

    .line 45
    move-result-object p1

    .line 46
    if-eqz p1, :cond_7

    .line 48
    invoke-virtual {p0, p1}, Landroid/app/Activity;->shouldUpRecreateTask(Landroid/content/Intent;)Z

    .line 51
    move-result p2

    .line 52
    if-eqz p2, :cond_6

    .line 54
    new-instance p1, Ljava/util/ArrayList;

    .line 56
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 59
    invoke-static {p0}, Lo/Ha;->P(Lo/U0;)Landroid/content/Intent;

    .line 62
    move-result-object p2

    .line 63
    if-nez p2, :cond_1

    .line 65
    invoke-static {p0}, Lo/Ha;->P(Lo/U0;)Landroid/content/Intent;

    .line 68
    move-result-object p2

    .line 69
    :cond_1
    if-eqz p2, :cond_4

    .line 71
    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 74
    move-result-object v1

    .line 75
    if-nez v1, :cond_2

    .line 77
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 80
    move-result-object v1

    .line 81
    invoke-virtual {p2, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    .line 84
    move-result-object v1

    .line 85
    :cond_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 88
    move-result v3

    .line 89
    :try_start_0
    invoke-static {p0, v1}, Lo/Ha;->Q(Lo/U0;Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 92
    move-result-object v1

    .line 93
    :goto_0
    if-eqz v1, :cond_3

    .line 95
    invoke-virtual {p1, v3, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 98
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 101
    move-result-object v1

    .line 102
    invoke-static {p0, v1}, Lo/Ha;->Q(Lo/U0;Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 105
    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    goto :goto_0

    .line 107
    :catch_0
    move-exception p1

    .line 108
    goto :goto_1

    .line 109
    :cond_3
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    goto :goto_2

    .line 113
    :goto_1
    const-string p2, "TaskStackBuilder"

    .line 115
    const-string v0, "Bad ComponentName while traversing activity parent metadata"

    .line 117
    invoke-static {p2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 122
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    .line 125
    throw p2

    .line 126
    :cond_4
    :goto_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 129
    move-result p2

    .line 130
    if-nez p2, :cond_5

    .line 132
    new-array p2, v2, [Landroid/content/Intent;

    .line 134
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 137
    move-result-object p1

    .line 138
    check-cast p1, [Landroid/content/Intent;

    .line 140
    new-instance p2, Landroid/content/Intent;

    .line 142
    aget-object v1, p1, v2

    .line 144
    invoke-direct {p2, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 147
    const v1, 0x1000c000

    .line 150
    invoke-virtual {p2, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 153
    move-result-object p2

    .line 154
    aput-object p2, p1, v2

    .line 156
    const/4 p2, 0x0

    .line 157
    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->startActivities([Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 160
    :try_start_1
    invoke-virtual {p0}, Landroid/app/Activity;->finishAffinity()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    .line 163
    goto :goto_3

    .line 164
    :catch_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 167
    goto :goto_3

    .line 168
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 170
    const-string p2, "No intents added to TaskStackBuilder; cannot startActivities"

    .line 172
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 175
    throw p1

    .line 176
    :cond_6
    invoke-virtual {p0, p1}, Landroid/app/Activity;->navigateUpTo(Landroid/content/Intent;)Z

    .line 179
    goto :goto_3

    .line 180
    :cond_7
    move v0, v2

    .line 181
    :goto_3
    return v0

    .line 182
    :cond_8
    return v2
.end method

.method public final onPause()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lo/U0;->u:Z

    .line 7
    iget-object v0, p0, Lo/U0;->r:Lo/C;

    .line 9
    iget-object v0, v0, Lo/C;->b:Ljava/lang/Object;

    .line 11
    check-cast v0, Lo/V7;

    .line 13
    const/4 v1, 0x5

    .line 14
    iget-object v0, v0, Lo/V7;->j:Lo/i8;

    .line 16
    invoke-virtual {v0, v1}, Lo/i8;->u(I)V

    .line 19
    iget-object v0, p0, Lo/U0;->s:Landroidx/lifecycle/a;

    .line 21
    sget-object v1, Lo/L9;->ON_PAUSE:Lo/L9;

    .line 23
    invoke-virtual {v0, v1}, Landroidx/lifecycle/a;->d(Lo/L9;)V

    .line 26
    return-void
.end method

.method public final onPostCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onPostCreate(Landroid/os/Bundle;)V

    .line 4
    invoke-virtual {p0}, Lo/U0;->j()Lo/h1;

    .line 7
    move-result-object p1

    .line 8
    check-cast p1, Lo/v1;

    .line 10
    invoke-virtual {p1}, Lo/v1;->u()V

    .line 13
    return-void
.end method

.method public final onPostResume()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lo/U0;->o()V

    .line 4
    invoke-virtual {p0}, Lo/U0;->j()Lo/h1;

    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Lo/v1;

    .line 10
    invoke-virtual {v0}, Lo/v1;->z()V

    .line 13
    iget-object v0, v0, Lo/v1;->o:Lo/si;

    .line 15
    if-eqz v0, :cond_0

    .line 17
    const/4 v1, 0x1

    .line 18
    iput-boolean v1, v0, Lo/si;->n0:Z

    .line 20
    :cond_0
    return-void
.end method

.method public final onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lo/U0;->r:Lo/C;

    .line 3
    invoke-virtual {v0}, Lo/C;->A()V

    .line 6
    invoke-super {p0, p1, p2, p3}, Landroidx/activity/a;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 9
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 1
    iget-object v0, p0, Lo/U0;->r:Lo/C;

    .line 3
    invoke-virtual {v0}, Lo/C;->A()V

    .line 6
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 9
    const/4 v1, 0x1

    .line 10
    iput-boolean v1, p0, Lo/U0;->u:Z

    .line 12
    iget-object v0, v0, Lo/C;->b:Ljava/lang/Object;

    .line 14
    check-cast v0, Lo/V7;

    .line 16
    iget-object v0, v0, Lo/V7;->j:Lo/i8;

    .line 18
    invoke-virtual {v0, v1}, Lo/i8;->z(Z)Z

    .line 21
    return-void
.end method

.method public final onStart()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lo/U0;->p()V

    .line 4
    invoke-virtual {p0}, Lo/U0;->j()Lo/h1;

    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Lo/v1;

    .line 10
    const/4 v1, 0x1

    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-virtual {v0, v1, v2}, Lo/v1;->l(ZZ)Z

    .line 15
    return-void
.end method

.method public final onStateNotSaved()V
    .locals 1

    .line 1
    iget-object v0, p0, Lo/U0;->r:Lo/C;

    .line 3
    invoke-virtual {v0}, Lo/C;->A()V

    .line 6
    return-void
.end method

.method public final onStop()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lo/U0;->q()V

    .line 4
    invoke-virtual {p0}, Lo/U0;->j()Lo/h1;

    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Lo/v1;

    .line 10
    invoke-virtual {v0}, Lo/v1;->z()V

    .line 13
    iget-object v0, v0, Lo/v1;->o:Lo/si;

    .line 15
    if-eqz v0, :cond_0

    .line 17
    const/4 v1, 0x0

    .line 18
    iput-boolean v1, v0, Lo/si;->n0:Z

    .line 20
    iget-object v0, v0, Lo/si;->m0:Lo/Qh;

    .line 22
    if-eqz v0, :cond_0

    .line 24
    invoke-virtual {v0}, Lo/Qh;->a()V

    .line 27
    :cond_0
    return-void
.end method

.method public final onTitleChanged(Ljava/lang/CharSequence;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onTitleChanged(Ljava/lang/CharSequence;I)V

    .line 4
    invoke-virtual {p0}, Lo/U0;->j()Lo/h1;

    .line 7
    move-result-object p2

    .line 8
    invoke-virtual {p2, p1}, Lo/h1;->j(Ljava/lang/CharSequence;)V

    .line 11
    return-void
.end method

.method public final openOptionsMenu()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lo/U0;->j()Lo/h1;

    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lo/v1;

    .line 7
    invoke-virtual {v0}, Lo/v1;->z()V

    .line 10
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 13
    move-result-object v0

    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-virtual {v0, v1}, Landroid/view/Window;->hasFeature(I)Z

    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 21
    invoke-super {p0}, Landroid/app/Activity;->openOptionsMenu()V

    .line 24
    :cond_0
    return-void
.end method

.method public final p()V
    .locals 5

    .line 1
    iget-object v0, p0, Lo/U0;->r:Lo/C;

    .line 3
    invoke-virtual {v0}, Lo/C;->A()V

    .line 6
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 9
    const/4 v1, 0x0

    .line 10
    iput-boolean v1, p0, Lo/U0;->v:Z

    .line 12
    iget-boolean v2, p0, Lo/U0;->t:Z

    .line 14
    const/4 v3, 0x1

    .line 15
    iget-object v0, v0, Lo/C;->b:Ljava/lang/Object;

    .line 17
    check-cast v0, Lo/V7;

    .line 19
    if-nez v2, :cond_0

    .line 21
    iput-boolean v3, p0, Lo/U0;->t:Z

    .line 23
    iget-object v2, v0, Lo/V7;->j:Lo/i8;

    .line 25
    iput-boolean v1, v2, Lo/i8;->E:Z

    .line 27
    iput-boolean v1, v2, Lo/i8;->F:Z

    .line 29
    iget-object v4, v2, Lo/i8;->L:Lo/k8;

    .line 31
    iput-boolean v1, v4, Lo/k8;->h:Z

    .line 33
    const/4 v4, 0x4

    .line 34
    invoke-virtual {v2, v4}, Lo/i8;->u(I)V

    .line 37
    :cond_0
    iget-object v2, v0, Lo/V7;->j:Lo/i8;

    .line 39
    invoke-virtual {v2, v3}, Lo/i8;->z(Z)Z

    .line 42
    iget-object v2, p0, Lo/U0;->s:Landroidx/lifecycle/a;

    .line 44
    sget-object v3, Lo/L9;->ON_START:Lo/L9;

    .line 46
    invoke-virtual {v2, v3}, Landroidx/lifecycle/a;->d(Lo/L9;)V

    .line 49
    iget-object v0, v0, Lo/V7;->j:Lo/i8;

    .line 51
    iput-boolean v1, v0, Lo/i8;->E:Z

    .line 53
    iput-boolean v1, v0, Lo/i8;->F:Z

    .line 55
    iget-object v2, v0, Lo/i8;->L:Lo/k8;

    .line 57
    iput-boolean v1, v2, Lo/k8;->h:Z

    .line 59
    const/4 v1, 0x5

    .line 60
    invoke-virtual {v0, v1}, Lo/i8;->u(I)V

    .line 63
    return-void
.end method

.method public final q()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lo/U0;->v:Z

    .line 7
    :cond_0
    iget-object v1, p0, Lo/U0;->r:Lo/C;

    .line 9
    iget-object v2, v1, Lo/C;->b:Ljava/lang/Object;

    .line 11
    check-cast v2, Lo/V7;

    .line 13
    iget-object v2, v2, Lo/V7;->j:Lo/i8;

    .line 15
    invoke-static {v2}, Lo/U0;->l(Lo/i8;)Z

    .line 18
    move-result v2

    .line 19
    if-nez v2, :cond_0

    .line 21
    iget-object v1, v1, Lo/C;->b:Ljava/lang/Object;

    .line 23
    check-cast v1, Lo/V7;

    .line 25
    iget-object v1, v1, Lo/V7;->j:Lo/i8;

    .line 27
    iput-boolean v0, v1, Lo/i8;->F:Z

    .line 29
    iget-object v2, v1, Lo/i8;->L:Lo/k8;

    .line 31
    iput-boolean v0, v2, Lo/k8;->h:Z

    .line 33
    const/4 v0, 0x4

    .line 34
    invoke-virtual {v1, v0}, Lo/i8;->u(I)V

    .line 37
    iget-object v0, p0, Lo/U0;->s:Landroidx/lifecycle/a;

    .line 39
    sget-object v1, Lo/L9;->ON_STOP:Lo/L9;

    .line 41
    invoke-virtual {v0, v1}, Landroidx/lifecycle/a;->d(Lo/L9;)V

    .line 44
    return-void
.end method

.method public final setContentView(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lo/U0;->k()V

    .line 2
    invoke-virtual {p0}, Lo/U0;->j()Lo/h1;

    move-result-object v0

    invoke-virtual {v0, p1}, Lo/h1;->g(I)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 1

    .line 3
    invoke-virtual {p0}, Lo/U0;->k()V

    .line 4
    invoke-virtual {p0}, Lo/U0;->j()Lo/h1;

    move-result-object v0

    invoke-virtual {v0, p1}, Lo/h1;->h(Landroid/view/View;)V

    return-void
.end method

.method public final setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .line 5
    invoke-virtual {p0}, Lo/U0;->k()V

    .line 6
    invoke-virtual {p0}, Lo/U0;->j()Lo/h1;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lo/h1;->i(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final setTheme(I)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/content/Context;->setTheme(I)V

    .line 4
    invoke-virtual {p0}, Lo/U0;->j()Lo/h1;

    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Lo/v1;

    .line 10
    iput p1, v0, Lo/v1;->T:I

    .line 12
    return-void
.end method
