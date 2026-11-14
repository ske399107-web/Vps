.class public final Lo/C6;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final j:Ljava/lang/Object;

.field public static volatile k:Lo/C6;


# instance fields
.field public final a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field public final b:Lo/G2;

.field public volatile c:I

.field public final d:Landroid/os/Handler;

.field public final e:Lo/y6;

.field public final f:Lo/B6;

.field public final g:Lo/u6;

.field public final h:I

.field public final i:Lo/u5;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 6
    sput-object v0, Lo/C6;->j:Ljava/lang/Object;

    .line 8
    return-void
.end method

.method public constructor <init>(Lo/C7;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    .line 9
    iput-object v0, p0, Lo/C6;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 11
    const/4 v1, 0x3

    .line 12
    iput v1, p0, Lo/C6;->c:I

    .line 14
    iget-object v1, p1, Lo/z6;->b:Ljava/lang/Object;

    .line 16
    check-cast v1, Lo/B6;

    .line 18
    iput-object v1, p0, Lo/C6;->f:Lo/B6;

    .line 20
    iget v2, p1, Lo/z6;->a:I

    .line 22
    iput v2, p0, Lo/C6;->h:I

    .line 24
    iget-object p1, p1, Lo/z6;->c:Ljava/lang/Object;

    .line 26
    check-cast p1, Lo/u5;

    .line 28
    iput-object p1, p0, Lo/C6;->i:Lo/u5;

    .line 30
    new-instance p1, Landroid/os/Handler;

    .line 32
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 35
    move-result-object v3

    .line 36
    invoke-direct {p1, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 39
    iput-object p1, p0, Lo/C6;->d:Landroid/os/Handler;

    .line 41
    new-instance p1, Lo/G2;

    .line 43
    const/4 v3, 0x0

    .line 44
    invoke-direct {p1, v3}, Lo/G2;-><init>(I)V

    .line 47
    iput-object p1, p0, Lo/C6;->b:Lo/G2;

    .line 49
    new-instance p1, Lo/u6;

    .line 51
    const/16 v4, 0xa

    .line 53
    invoke-direct {p1, v4}, Lo/u6;-><init>(I)V

    .line 56
    iput-object p1, p0, Lo/C6;->g:Lo/u6;

    .line 58
    new-instance p1, Lo/y6;

    .line 60
    invoke-direct {p1, p0}, Lo/y6;-><init>(Lo/C6;)V

    .line 63
    iput-object p1, p0, Lo/C6;->e:Lo/y6;

    .line 65
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    .line 68
    move-result-object v4

    .line 69
    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 72
    if-nez v2, :cond_0

    .line 74
    :try_start_0
    iput v3, p0, Lo/C6;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    goto :goto_0

    .line 77
    :catchall_0
    move-exception p1

    .line 78
    iget-object v0, p0, Lo/C6;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 80
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    .line 83
    move-result-object v0

    .line 84
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 87
    throw p1

    .line 88
    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    .line 91
    move-result-object v0

    .line 92
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 95
    invoke-virtual {p0}, Lo/C6;->b()I

    .line 98
    move-result v0

    .line 99
    if-nez v0, :cond_1

    .line 101
    :try_start_1
    new-instance v0, Lo/x6;

    .line 103
    invoke-direct {v0, p1}, Lo/x6;-><init>(Lo/y6;)V

    .line 106
    invoke-interface {v1, v0}, Lo/B6;->f(Lo/L1;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 109
    goto :goto_1

    .line 110
    :catchall_1
    move-exception p1

    .line 111
    invoke-virtual {p0, p1}, Lo/C6;->d(Ljava/lang/Throwable;)V

    .line 114
    :cond_1
    :goto_1
    return-void
.end method

.method public static a()Lo/C6;
    .locals 4

    .line 1
    sget-object v0, Lo/C6;->j:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lo/C6;->k:Lo/C6;

    .line 6
    if-eqz v1, :cond_0

    .line 8
    const/4 v2, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v2, 0x0

    .line 11
    :goto_0
    const-string v3, "EmojiCompat is not initialized.\n\nYou must initialize EmojiCompat prior to referencing the EmojiCompat instance.\n\nThe most likely cause of this error is disabling the EmojiCompatInitializer\neither explicitly in AndroidManifest.xml, or by including\nandroidx.emoji2:emoji2-bundled.\n\nAutomatic initialization is typically performed by EmojiCompatInitializer. If\nyou are not expecting to initialize EmojiCompat manually in your application,\nplease check to ensure it has not been removed from your APK\'s manifest. You can\ndo this in Android Studio using Build > Analyze APK.\n\nIn the APK Analyzer, ensure that the startup entry for\nEmojiCompatInitializer and InitializationProvider is present in\n AndroidManifest.xml. If it is missing or contains tools:node=\"remove\", and you\nintend to use automatic configuration, verify:\n\n  1. Your application does not include emoji2-bundled\n  2. All modules do not contain an exclusion manifest rule for\n     EmojiCompatInitializer or InitializationProvider. For more information\n     about manifest exclusions see the documentation for the androidx startup\n     library.\n\nIf you intend to use emoji2-bundled, please call EmojiCompat.init. You can\nlearn more in the documentation for BundledEmojiCompatConfig.\n\nIf you intended to perform manual configuration, it is recommended that you call\nEmojiCompat.init immediately on application startup.\n\nIf you still cannot resolve this issue, please open a bug with your specific\nconfiguration to help improve error message."

    .line 13
    if-eqz v2, :cond_1

    .line 15
    monitor-exit v0

    .line 16
    return-object v1

    .line 17
    :catchall_0
    move-exception v1

    .line 18
    goto :goto_1

    .line 19
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 21
    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 24
    throw v1

    .line 25
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    throw v1
.end method


# virtual methods
.method public final b()I
    .locals 2

    .line 1
    iget-object v0, p0, Lo/C6;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 10
    :try_start_0
    iget v0, p0, Lo/C6;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    iget-object v1, p0, Lo/C6;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 14
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    .line 17
    move-result-object v1

    .line 18
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 21
    return v0

    .line 22
    :catchall_0
    move-exception v0

    .line 23
    iget-object v1, p0, Lo/C6;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 25
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    .line 28
    move-result-object v1

    .line 29
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 32
    throw v0
.end method

.method public final c()V
    .locals 3

    .line 1
    iget v0, p0, Lo/C6;->h:I

    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-ne v0, v2, :cond_0

    .line 7
    move v0, v2

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move v0, v1

    .line 10
    :goto_0
    if-eqz v0, :cond_3

    .line 12
    invoke-virtual {p0}, Lo/C6;->b()I

    .line 15
    move-result v0

    .line 16
    if-ne v0, v2, :cond_1

    .line 18
    return-void

    .line 19
    :cond_1
    iget-object v0, p0, Lo/C6;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 21
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    .line 24
    move-result-object v0

    .line 25
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 28
    :try_start_0
    iget v0, p0, Lo/C6;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 30
    if-nez v0, :cond_2

    .line 32
    iget-object v0, p0, Lo/C6;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 34
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    .line 37
    move-result-object v0

    .line 38
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 41
    return-void

    .line 42
    :cond_2
    :try_start_1
    iput v1, p0, Lo/C6;->c:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 44
    iget-object v0, p0, Lo/C6;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 46
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    .line 49
    move-result-object v0

    .line 50
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 53
    iget-object v0, p0, Lo/C6;->e:Lo/y6;

    .line 55
    iget-object v1, v0, Lo/y6;->a:Lo/C6;

    .line 57
    :try_start_2
    new-instance v2, Lo/x6;

    .line 59
    invoke-direct {v2, v0}, Lo/x6;-><init>(Lo/y6;)V

    .line 62
    iget-object v0, v1, Lo/C6;->f:Lo/B6;

    .line 64
    invoke-interface {v0, v2}, Lo/B6;->f(Lo/L1;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 67
    goto :goto_1

    .line 68
    :catchall_0
    move-exception v0

    .line 69
    invoke-virtual {v1, v0}, Lo/C6;->d(Ljava/lang/Throwable;)V

    .line 72
    :goto_1
    return-void

    .line 73
    :catchall_1
    move-exception v0

    .line 74
    iget-object v1, p0, Lo/C6;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 76
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    .line 79
    move-result-object v1

    .line 80
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 83
    throw v0

    .line 84
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 86
    const-string v1, "Set metadataLoadStrategy to LOAD_STRATEGY_MANUAL to execute manual loading"

    .line 88
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 91
    throw v0
.end method

.method public final d(Ljava/lang/Throwable;)V
    .locals 4

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    iget-object v1, p0, Lo/C6;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 8
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    .line 11
    move-result-object v1

    .line 12
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 15
    const/4 v1, 0x2

    .line 16
    :try_start_0
    iput v1, p0, Lo/C6;->c:I

    .line 18
    iget-object v1, p0, Lo/C6;->b:Lo/G2;

    .line 20
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 23
    iget-object v1, p0, Lo/C6;->b:Lo/G2;

    .line 25
    invoke-virtual {v1}, Lo/G2;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    iget-object v1, p0, Lo/C6;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 30
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    .line 33
    move-result-object v1

    .line 34
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 37
    iget-object v1, p0, Lo/C6;->d:Landroid/os/Handler;

    .line 39
    new-instance v2, Lo/T2;

    .line 41
    iget v3, p0, Lo/C6;->c:I

    .line 43
    invoke-direct {v2, v0, v3, p1}, Lo/T2;-><init>(Ljava/util/List;ILjava/lang/Throwable;)V

    .line 46
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 49
    return-void

    .line 50
    :catchall_0
    move-exception p1

    .line 51
    iget-object v0, p0, Lo/C6;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 53
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    .line 56
    move-result-object v0

    .line 57
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 60
    throw p1
.end method

.method public final e(Ljava/lang/CharSequence;II)Ljava/lang/CharSequence;
    .locals 10

    .line 1
    invoke-virtual {p0}, Lo/C6;->b()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    if-ne v0, v2, :cond_0

    .line 9
    move v0, v2

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move v0, v1

    .line 12
    :goto_0
    if-eqz v0, :cond_15

    .line 14
    if-ltz p2, :cond_14

    .line 16
    if-ltz p3, :cond_13

    .line 18
    if-gt p2, p3, :cond_1

    .line 20
    move v0, v2

    .line 21
    goto :goto_1

    .line 22
    :cond_1
    move v0, v1

    .line 23
    :goto_1
    const-string v3, "start should be <= than end"

    .line 25
    invoke-static {v0, v3}, Lo/Ha;->e(ZLjava/lang/String;)V

    .line 28
    const/4 v0, 0x0

    .line 29
    if-nez p1, :cond_2

    .line 31
    return-object v0

    .line 32
    :cond_2
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 35
    move-result v3

    .line 36
    if-gt p2, v3, :cond_3

    .line 38
    move v3, v2

    .line 39
    goto :goto_2

    .line 40
    :cond_3
    move v3, v1

    .line 41
    :goto_2
    const-string v4, "start should be < than charSequence length"

    .line 43
    invoke-static {v3, v4}, Lo/Ha;->e(ZLjava/lang/String;)V

    .line 46
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 49
    move-result v3

    .line 50
    if-gt p3, v3, :cond_4

    .line 52
    goto :goto_3

    .line 53
    :cond_4
    move v2, v1

    .line 54
    :goto_3
    const-string v3, "end should be < than charSequence length"

    .line 56
    invoke-static {v2, v3}, Lo/Ha;->e(ZLjava/lang/String;)V

    .line 59
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 62
    move-result v2

    .line 63
    if-eqz v2, :cond_12

    .line 65
    if-ne p2, p3, :cond_5

    .line 67
    goto/16 :goto_b

    .line 69
    :cond_5
    iget-object v2, p0, Lo/C6;->e:Lo/y6;

    .line 71
    iget-object v3, v2, Lo/y6;->b:Lo/s2;

    .line 73
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 76
    instance-of v2, p1, Lo/Ye;

    .line 78
    if-eqz v2, :cond_6

    .line 80
    move-object v4, p1

    .line 81
    check-cast v4, Lo/Ye;

    .line 83
    invoke-virtual {v4}, Lo/Ye;->a()V

    .line 86
    :cond_6
    const-class v4, Lo/Mg;

    .line 88
    if-nez v2, :cond_8

    .line 90
    :try_start_0
    instance-of v5, p1, Landroid/text/Spannable;

    .line 92
    if-eqz v5, :cond_7

    .line 94
    goto :goto_4

    .line 95
    :cond_7
    instance-of v5, p1, Landroid/text/Spanned;

    .line 97
    if-eqz v5, :cond_9

    .line 99
    move-object v5, p1

    .line 100
    check-cast v5, Landroid/text/Spanned;

    .line 102
    add-int/lit8 v6, p2, -0x1

    .line 104
    add-int/lit8 v7, p3, 0x1

    .line 106
    invoke-interface {v5, v6, v7, v4}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    .line 109
    move-result v5

    .line 110
    if-gt v5, p3, :cond_9

    .line 112
    new-instance v0, Lo/Wg;

    .line 114
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 117
    iput-boolean v1, v0, Lo/Wg;->a:Z

    .line 119
    new-instance v5, Landroid/text/SpannableString;

    .line 121
    invoke-direct {v5, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 124
    iput-object v5, v0, Lo/Wg;->b:Landroid/text/Spannable;

    .line 126
    goto :goto_5

    .line 127
    :catchall_0
    move-exception p2

    .line 128
    goto/16 :goto_a

    .line 130
    :cond_8
    :goto_4
    new-instance v0, Lo/Wg;

    .line 132
    move-object v5, p1

    .line 133
    check-cast v5, Landroid/text/Spannable;

    .line 135
    invoke-direct {v0, v5}, Lo/Wg;-><init>(Landroid/text/Spannable;)V

    .line 138
    :cond_9
    :goto_5
    if-eqz v0, :cond_b

    .line 140
    iget-object v5, v0, Lo/Wg;->b:Landroid/text/Spannable;

    .line 142
    invoke-interface {v5, p2, p3, v4}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    .line 145
    move-result-object v4

    .line 146
    check-cast v4, [Lo/Mg;

    .line 148
    if-eqz v4, :cond_b

    .line 150
    array-length v5, v4

    .line 151
    if-lez v5, :cond_b

    .line 153
    array-length v5, v4

    .line 154
    :goto_6
    if-ge v1, v5, :cond_b

    .line 156
    aget-object v6, v4, v1

    .line 158
    iget-object v7, v0, Lo/Wg;->b:Landroid/text/Spannable;

    .line 160
    invoke-interface {v7, v6}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    .line 163
    move-result v7

    .line 164
    iget-object v8, v0, Lo/Wg;->b:Landroid/text/Spannable;

    .line 166
    invoke-interface {v8, v6}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    .line 169
    move-result v8

    .line 170
    if-eq v7, p3, :cond_a

    .line 172
    invoke-virtual {v0, v6}, Lo/Wg;->removeSpan(Ljava/lang/Object;)V

    .line 175
    :cond_a
    invoke-static {v7, p2}, Ljava/lang/Math;->min(II)I

    .line 178
    move-result p2

    .line 179
    invoke-static {v8, p3}, Ljava/lang/Math;->max(II)I

    .line 182
    move-result p3

    .line 183
    add-int/lit8 v1, v1, 0x1

    .line 185
    goto :goto_6

    .line 186
    :cond_b
    move v5, p2

    .line 187
    move v6, p3

    .line 188
    if-eq v5, v6, :cond_f

    .line 190
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 193
    move-result p2

    .line 194
    if-lt v5, p2, :cond_c

    .line 196
    goto :goto_8

    .line 197
    :cond_c
    new-instance v9, Lo/H1;

    .line 199
    iget-object p2, v3, Lo/s2;->b:Ljava/lang/Object;

    .line 201
    check-cast p2, Lo/u6;

    .line 203
    const/16 p3, 0xc

    .line 205
    const/4 v1, 0x0

    .line 206
    invoke-direct {v9, v0, p2, p3, v1}, Lo/H1;-><init>(Ljava/lang/Object;Ljava/lang/Object;IZ)V

    .line 209
    const/4 v8, 0x0

    .line 210
    const v7, 0x7fffffff

    .line 213
    move-object v4, p1

    .line 214
    invoke-virtual/range {v3 .. v9}, Lo/s2;->z(Ljava/lang/CharSequence;IIIZLo/M6;)Ljava/lang/Object;

    .line 217
    move-result-object p2

    .line 218
    check-cast p2, Lo/Wg;

    .line 220
    if-eqz p2, :cond_e

    .line 222
    iget-object p2, p2, Lo/Wg;->b:Landroid/text/Spannable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 224
    if-eqz v2, :cond_d

    .line 226
    check-cast p1, Lo/Ye;

    .line 228
    invoke-virtual {p1}, Lo/Ye;->b()V

    .line 231
    :cond_d
    move-object p1, p2

    .line 232
    goto :goto_9

    .line 233
    :cond_e
    if-eqz v2, :cond_10

    .line 235
    :goto_7
    move-object p2, p1

    .line 236
    check-cast p2, Lo/Ye;

    .line 238
    invoke-virtual {p2}, Lo/Ye;->b()V

    .line 241
    goto :goto_9

    .line 242
    :cond_f
    :goto_8
    if-eqz v2, :cond_10

    .line 244
    goto :goto_7

    .line 245
    :cond_10
    :goto_9
    return-object p1

    .line 246
    :goto_a
    if-eqz v2, :cond_11

    .line 248
    check-cast p1, Lo/Ye;

    .line 250
    invoke-virtual {p1}, Lo/Ye;->b()V

    .line 253
    :cond_11
    throw p2

    .line 254
    :cond_12
    :goto_b
    return-object p1

    .line 255
    :cond_13
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 257
    const-string p2, "end cannot be negative"

    .line 259
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 262
    throw p1

    .line 263
    :cond_14
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 265
    const-string p2, "start cannot be negative"

    .line 267
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 270
    throw p1

    .line 271
    :cond_15
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 273
    const-string p2, "Not initialized yet"

    .line 275
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 278
    throw p1
.end method

.method public final f(Lo/A6;)V
    .locals 4

    .line 1
    const-string v0, "initCallback cannot be null"

    .line 3
    invoke-static {p1, v0}, Lo/Ha;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lo/C6;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 8
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    .line 11
    move-result-object v0

    .line 12
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 15
    :try_start_0
    iget v0, p0, Lo/C6;->c:I

    .line 17
    const/4 v1, 0x1

    .line 18
    if-eq v0, v1, :cond_1

    .line 20
    iget v0, p0, Lo/C6;->c:I

    .line 22
    const/4 v1, 0x2

    .line 23
    if-ne v0, v1, :cond_0

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    iget-object v0, p0, Lo/C6;->b:Lo/G2;

    .line 28
    invoke-virtual {v0, p1}, Lo/G2;->add(Ljava/lang/Object;)Z

    .line 31
    goto :goto_1

    .line 32
    :catchall_0
    move-exception p1

    .line 33
    goto :goto_2

    .line 34
    :cond_1
    :goto_0
    iget-object v0, p0, Lo/C6;->d:Landroid/os/Handler;

    .line 36
    new-instance v1, Lo/T2;

    .line 38
    iget v2, p0, Lo/C6;->c:I

    .line 40
    filled-new-array {p1}, [Lo/A6;

    .line 43
    move-result-object p1

    .line 44
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 47
    move-result-object p1

    .line 48
    const/4 v3, 0x0

    .line 49
    invoke-direct {v1, p1, v2, v3}, Lo/T2;-><init>(Ljava/util/List;ILjava/lang/Throwable;)V

    .line 52
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    :goto_1
    iget-object p1, p0, Lo/C6;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 57
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    .line 60
    move-result-object p1

    .line 61
    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 64
    return-void

    .line 65
    :goto_2
    iget-object v0, p0, Lo/C6;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 67
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    .line 70
    move-result-object v0

    .line 71
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 74
    throw p1
.end method
