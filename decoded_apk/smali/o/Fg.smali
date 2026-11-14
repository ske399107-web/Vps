.class public abstract Lo/Fg;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lo/Ha;

.field public static final b:Lo/Ba;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-string v0, "TypefaceCompat static init"

    .line 3
    invoke-static {v0}, Lo/Ha;->a(Ljava/lang/String;)V

    .line 6
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 8
    const/16 v1, 0x1d

    .line 10
    if-lt v0, v1, :cond_0

    .line 12
    new-instance v0, Lo/Kg;

    .line 14
    invoke-direct {v0}, Lo/Ha;-><init>()V

    .line 17
    sput-object v0, Lo/Fg;->a:Lo/Ha;

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/16 v1, 0x1c

    .line 22
    if-lt v0, v1, :cond_1

    .line 24
    new-instance v0, Lo/Jg;

    .line 26
    invoke-direct {v0}, Lo/Ig;-><init>()V

    .line 29
    sput-object v0, Lo/Fg;->a:Lo/Ha;

    .line 31
    goto :goto_0

    .line 32
    :cond_1
    const/16 v1, 0x1a

    .line 34
    if-lt v0, v1, :cond_2

    .line 36
    new-instance v0, Lo/Ig;

    .line 38
    invoke-direct {v0}, Lo/Ig;-><init>()V

    .line 41
    sput-object v0, Lo/Fg;->a:Lo/Ha;

    .line 43
    goto :goto_0

    .line 44
    :cond_2
    sget-object v0, Lo/Hg;->m:Ljava/lang/reflect/Method;

    .line 46
    if-nez v0, :cond_3

    .line 48
    const-string v1, "TypefaceCompatApi24Impl"

    .line 50
    const-string v2, "Unable to collect necessary private methods.Fallback to legacy implementation."

    .line 52
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    :cond_3
    if-eqz v0, :cond_4

    .line 57
    new-instance v0, Lo/Hg;

    .line 59
    invoke-direct {v0}, Lo/Ha;-><init>()V

    .line 62
    sput-object v0, Lo/Fg;->a:Lo/Ha;

    .line 64
    goto :goto_0

    .line 65
    :cond_4
    new-instance v0, Lo/Gg;

    .line 67
    invoke-direct {v0}, Lo/Ha;-><init>()V

    .line 70
    sput-object v0, Lo/Fg;->a:Lo/Ha;

    .line 72
    :goto_0
    new-instance v0, Lo/Ba;

    .line 74
    const/16 v1, 0x10

    .line 76
    invoke-direct {v0, v1}, Lo/Ba;-><init>(I)V

    .line 79
    sput-object v0, Lo/Fg;->b:Lo/Ba;

    .line 81
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 84
    return-void
.end method

.method public static a(Landroid/content/Context;Lo/H7;Landroid/content/res/Resources;ILjava/lang/String;IILo/Ha;Z)Landroid/graphics/Typeface;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v7, p6

    move-object/from16 v2, p7

    const/4 v3, 0x4

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v8, 0x1

    .line 1
    instance-of v6, v1, Lo/K7;

    const/4 v9, -0x3

    if-eqz v6, :cond_10

    .line 2
    check-cast v1, Lo/K7;

    .line 3
    iget-object v6, v1, Lo/K7;->e:Ljava/lang/String;

    if-eqz v6, :cond_1

    .line 4
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {v6, v5}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v6

    .line 6
    sget-object v11, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-static {v11, v5}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v11

    if-eqz v6, :cond_1

    .line 7
    invoke-virtual {v6, v11}, Landroid/graphics/Typeface;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v6, 0x0

    :goto_1
    if-eqz v6, :cond_3

    if-eqz v2, :cond_2

    .line 8
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 9
    new-instance v1, Lo/y0;

    invoke-direct {v1, v2, v4, v6}, Lo/y0;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-object v6

    :cond_3
    if-eqz p8, :cond_5

    .line 10
    iget v6, v1, Lo/K7;->d:I

    if-nez v6, :cond_4

    :goto_2
    move v6, v8

    goto :goto_3

    :cond_4
    move v6, v5

    goto :goto_3

    :cond_5
    if-nez v2, :cond_4

    goto :goto_2

    :goto_3
    const/4 v11, -0x1

    if-eqz p8, :cond_6

    .line 11
    iget v12, v1, Lo/K7;->c:I

    goto :goto_4

    :cond_6
    move v12, v11

    .line 12
    :goto_4
    new-instance v13, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v14

    invoke-direct {v13, v14}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 13
    new-instance v14, Lo/C;

    const/16 v15, 0x1d

    .line 14
    invoke-direct {v14, v15}, Lo/C;-><init>(I)V

    .line 15
    iput-object v2, v14, Lo/C;->b:Ljava/lang/Object;

    .line 16
    iget-object v2, v1, Lo/K7;->b:Lo/A7;

    if-eqz v2, :cond_8

    .line 17
    iget-object v1, v1, Lo/K7;->a:Lo/A7;

    .line 18
    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    .line 19
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    move v15, v5

    :goto_5
    if-ge v15, v4, :cond_7

    aget-object v10, v1, v15

    invoke-static {v10}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/2addr v15, v8

    goto :goto_5

    :cond_7
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    :goto_6
    move-object v4, v1

    goto :goto_7

    .line 20
    :cond_8
    iget-object v1, v1, Lo/K7;->a:Lo/A7;

    .line 21
    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 22
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v8}, Ljava/util/ArrayList;-><init>(I)V

    aget-object v1, v1, v5

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    goto :goto_6

    .line 23
    :goto_7
    new-instance v10, Lo/H1;

    .line 24
    new-instance v1, Lo/Ud;

    invoke-direct {v1, v13}, Lo/Ud;-><init>(Landroid/os/Handler;)V

    const/4 v2, 0x6

    .line 25
    invoke-direct {v10, v14, v1, v2, v5}, Lo/H1;-><init>(Ljava/lang/Object;Ljava/lang/Object;IZ)V

    if-eqz v6, :cond_c

    .line 26
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    if-gt v2, v8, :cond_b

    .line 27
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lo/A7;

    sget-object v2, Lo/G7;->a:Lo/Ba;

    .line 28
    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v2

    .line 29
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v8}, Ljava/util/ArrayList;-><init>(I)V

    aget-object v2, v2, v5

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v6}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 30
    invoke-static {v2, v7}, Lo/G7;->a(Ljava/util/List;I)Ljava/lang/String;

    move-result-object v2

    .line 31
    sget-object v6, Lo/G7;->a:Lo/Ba;

    invoke-virtual {v6, v2}, Lo/Ba;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Typeface;

    if-eqz v6, :cond_9

    .line 32
    new-instance v0, Lo/b0;

    invoke-direct {v0, v14, v3, v6}, Lo/b0;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-virtual {v1, v0}, Lo/Ud;->execute(Ljava/lang/Runnable;)V

    move-object v10, v6

    goto/16 :goto_c

    :cond_9
    if-ne v12, v11, :cond_a

    .line 33
    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v1

    .line 34
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v8}, Ljava/util/ArrayList;-><init>(I)V

    aget-object v1, v1, v5

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 35
    invoke-static {v2, v0, v1, v7}, Lo/G7;->b(Ljava/lang/String;Landroid/content/Context;Ljava/util/List;I)Lo/F7;

    move-result-object v0

    .line 36
    invoke-virtual {v10, v0}, Lo/H1;->H(Lo/F7;)V

    .line 37
    iget-object v10, v0, Lo/F7;->a:Landroid/graphics/Typeface;

    goto/16 :goto_c

    .line 38
    :cond_a
    new-instance v11, Lo/D7;

    const/4 v6, 0x0

    move-object v1, v11

    move-object/from16 v3, p0

    move/from16 v5, p6

    invoke-direct/range {v1 .. v6}, Lo/D7;-><init>(Ljava/lang/String;Landroid/content/Context;Ljava/lang/Object;II)V

    .line 39
    :try_start_0
    sget-object v0, Lo/G7;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 40
    invoke-interface {v0, v11}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_3

    int-to-long v1, v12

    .line 41
    :try_start_1
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_2

    .line 42
    :try_start_2
    check-cast v0, Lo/F7;

    .line 43
    invoke-virtual {v10, v0}, Lo/H1;->H(Lo/F7;)V

    .line 44
    iget-object v10, v0, Lo/F7;->a:Landroid/graphics/Typeface;

    goto/16 :goto_c

    :catch_0
    move-exception v0

    goto :goto_8

    :catch_1
    move-exception v0

    goto :goto_9

    .line 45
    :catch_2
    new-instance v0, Ljava/lang/InterruptedException;

    const-string v1, "timeout"

    invoke-direct {v0, v1}, Ljava/lang/InterruptedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 46
    :goto_8
    throw v0

    .line 47
    :goto_9
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_3

    .line 48
    :catch_3
    new-instance v0, Lo/T2;

    iget-object v1, v10, Lo/H1;->b:Ljava/lang/Object;

    check-cast v1, Lo/C;

    invoke-direct {v0, v1, v9, v8}, Lo/T2;-><init>(Ljava/lang/Object;II)V

    iget-object v1, v10, Lo/H1;->c:Ljava/lang/Object;

    check-cast v1, Lo/Ud;

    invoke-virtual {v1, v0}, Lo/Ud;->execute(Ljava/lang/Runnable;)V

    :goto_a
    const/4 v10, 0x0

    goto/16 :goto_c

    .line 49
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Fallbacks with blocking fetches are not supported for performance reasons"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 50
    :cond_c
    invoke-static {v4, v7}, Lo/G7;->a(Ljava/util/List;I)Ljava/lang/String;

    move-result-object v9

    .line 51
    sget-object v2, Lo/G7;->a:Lo/Ba;

    invoke-virtual {v2, v9}, Lo/Ba;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Typeface;

    if-eqz v2, :cond_d

    .line 52
    new-instance v0, Lo/b0;

    invoke-direct {v0, v14, v3, v2}, Lo/b0;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-virtual {v1, v0}, Lo/Ud;->execute(Ljava/lang/Runnable;)V

    move-object v10, v2

    goto :goto_c

    .line 53
    :cond_d
    new-instance v1, Lo/E7;

    invoke-direct {v1, v5, v10}, Lo/E7;-><init>(ILjava/lang/Object;)V

    .line 54
    sget-object v3, Lo/G7;->c:Ljava/lang/Object;

    monitor-enter v3

    .line 55
    :try_start_3
    sget-object v2, Lo/G7;->d:Lo/Qe;

    invoke-virtual {v2, v9}, Lo/Qe;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    if-eqz v5, :cond_e

    .line 56
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    monitor-exit v3

    goto :goto_a

    :catchall_0
    move-exception v0

    goto :goto_d

    .line 58
    :cond_e
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 59
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    invoke-virtual {v2, v9, v5}, Lo/Qe;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 62
    new-instance v10, Lo/D7;

    const/4 v6, 0x1

    move-object v1, v10

    move-object v2, v9

    move-object/from16 v3, p0

    move/from16 v5, p6

    invoke-direct/range {v1 .. v6}, Lo/D7;-><init>(Ljava/lang/String;Landroid/content/Context;Ljava/lang/Object;II)V

    .line 63
    sget-object v0, Lo/G7;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 64
    new-instance v1, Lo/E7;

    invoke-direct {v1, v8, v9}, Lo/E7;-><init>(ILjava/lang/Object;)V

    .line 65
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    if-nez v2, :cond_f

    .line 66
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    goto :goto_b

    .line 67
    :cond_f
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    .line 68
    :goto_b
    new-instance v3, Lo/E5;

    .line 69
    invoke-direct {v3}, Lo/E5;-><init>()V

    .line 70
    iput-object v10, v3, Lo/E5;->b:Ljava/lang/Object;

    .line 71
    iput-object v1, v3, Lo/E5;->c:Ljava/lang/Object;

    .line 72
    iput-object v2, v3, Lo/E5;->d:Ljava/lang/Object;

    .line 73
    invoke-virtual {v0, v3}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_a

    :goto_c
    move-object/from16 v5, p2

    goto :goto_e

    .line 74
    :goto_d
    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    .line 75
    :cond_10
    sget-object v3, Lo/Fg;->a:Lo/Ha;

    check-cast v1, Lo/I7;

    move-object/from16 v5, p2

    invoke-virtual {v3, v0, v1, v5, v7}, Lo/Ha;->t(Landroid/content/Context;Lo/I7;Landroid/content/res/Resources;I)Landroid/graphics/Typeface;

    move-result-object v10

    if-eqz v2, :cond_12

    if-eqz v10, :cond_11

    .line 76
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 77
    new-instance v1, Lo/y0;

    invoke-direct {v1, v2, v4, v10}, Lo/y0;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_e

    .line 78
    :cond_11
    invoke-virtual {v2, v9}, Lo/Ha;->d(I)V

    :cond_12
    :goto_e
    if-eqz v10, :cond_13

    .line 79
    sget-object v0, Lo/Fg;->b:Lo/Ba;

    invoke-static/range {p2 .. p6}, Lo/Fg;->b(Landroid/content/res/Resources;ILjava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v10}, Lo/Ba;->j(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_13
    return-object v10
.end method

.method public static b(Landroid/content/res/Resources;ILjava/lang/String;II)Ljava/lang/String;
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    .line 9
    move-result-object p0

    .line 10
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    const/16 p0, 0x2d

    .line 15
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 36
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 39
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    move-result-object p0

    .line 43
    return-object p0
.end method
