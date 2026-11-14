.class public abstract Lo/G7;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lo/Ba;

.field public static final b:Ljava/util/concurrent/ThreadPoolExecutor;

.field public static final c:Ljava/lang/Object;

.field public static final d:Lo/Qe;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 1
    new-instance v0, Lo/Ba;

    .line 3
    const/16 v1, 0x10

    .line 5
    invoke-direct {v0, v1}, Lo/Ba;-><init>(I)V

    .line 8
    sput-object v0, Lo/G7;->a:Lo/Ba;

    .line 10
    new-instance v9, Lo/Td;

    .line 12
    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 17
    const/16 v1, 0x2710

    .line 19
    int-to-long v5, v1

    .line 20
    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 22
    new-instance v8, Ljava/util/concurrent/LinkedBlockingDeque;

    .line 24
    invoke-direct {v8}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    .line 27
    const/4 v3, 0x0

    .line 28
    const/4 v4, 0x1

    .line 29
    move-object v2, v0

    .line 30
    invoke-direct/range {v2 .. v9}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 33
    const/4 v1, 0x1

    .line 34
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 37
    sput-object v0, Lo/G7;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 39
    new-instance v0, Ljava/lang/Object;

    .line 41
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 44
    sput-object v0, Lo/G7;->c:Ljava/lang/Object;

    .line 46
    new-instance v0, Lo/Qe;

    .line 48
    const/4 v1, 0x0

    .line 49
    invoke-direct {v0, v1}, Lo/Qe;-><init>(I)V

    .line 52
    sput-object v0, Lo/G7;->d:Lo/Qe;

    .line 54
    return-void
.end method

.method public static a(Ljava/util/List;I)Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    const/4 v1, 0x0

    .line 7
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 10
    move-result v2

    .line 11
    if-ge v1, v2, :cond_1

    .line 13
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 16
    move-result-object v2

    .line 17
    check-cast v2, Lo/A7;

    .line 19
    iget-object v2, v2, Lo/A7;->e:Ljava/lang/String;

    .line 21
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    const-string v2, "-"

    .line 26
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 32
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 35
    move-result v2

    .line 36
    add-int/lit8 v2, v2, -0x1

    .line 38
    if-ge v1, v2, :cond_0

    .line 40
    const-string v2, ";"

    .line 42
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 47
    goto :goto_0

    .line 48
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    move-result-object p0

    .line 52
    return-object p0
.end method

.method public static b(Ljava/lang/String;Landroid/content/Context;Ljava/util/List;I)Lo/F7;
    .locals 8

    .line 1
    const/4 v0, 0x1

    .line 2
    const-string v1, "getFontSync"

    .line 4
    invoke-static {v1}, Lo/Ha;->a(Ljava/lang/String;)V

    .line 7
    sget-object v1, Lo/G7;->a:Lo/Ba;

    .line 9
    :try_start_0
    invoke-virtual {v1, p0}, Lo/Ba;->f(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    move-result-object v2

    .line 13
    check-cast v2, Landroid/graphics/Typeface;

    .line 15
    if-eqz v2, :cond_0

    .line 17
    new-instance p0, Lo/F7;

    .line 19
    invoke-direct {p0, v2}, Lo/F7;-><init>(Landroid/graphics/Typeface;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 25
    return-object p0

    .line 26
    :catchall_0
    move-exception p0

    .line 27
    goto/16 :goto_5

    .line 29
    :cond_0
    :try_start_1
    invoke-static {p1, p2}, Lo/z7;->a(Landroid/content/Context;Ljava/util/List;)Lo/I0;

    .line 32
    move-result-object p2
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 33
    :try_start_2
    iget v2, p2, Lo/I0;->a:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 35
    const/4 v3, 0x0

    .line 36
    iget-object p2, p2, Lo/I0;->b:Ljava/lang/Object;

    .line 38
    check-cast p2, Ljava/util/List;

    .line 40
    const/4 v4, -0x3

    .line 41
    if-eqz v2, :cond_2

    .line 43
    if-eq v2, v0, :cond_1

    .line 45
    :goto_0
    move v2, v4

    .line 46
    goto :goto_3

    .line 47
    :cond_1
    const/4 v2, -0x2

    .line 48
    goto :goto_3

    .line 49
    :cond_2
    :try_start_3
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 52
    move-result-object v2

    .line 53
    check-cast v2, [Lo/L7;

    .line 55
    if-eqz v2, :cond_7

    .line 57
    array-length v5, v2

    .line 58
    if-nez v5, :cond_3

    .line 60
    goto :goto_2

    .line 61
    :cond_3
    array-length v5, v2

    .line 62
    move v6, v3

    .line 63
    :goto_1
    if-ge v6, v5, :cond_6

    .line 65
    aget-object v7, v2, v6

    .line 67
    iget v7, v7, Lo/L7;->e:I

    .line 69
    if-eqz v7, :cond_5

    .line 71
    if-gez v7, :cond_4

    .line 73
    goto :goto_0

    .line 74
    :cond_4
    move v2, v7

    .line 75
    goto :goto_3

    .line 76
    :cond_5
    add-int/2addr v6, v0

    .line 77
    goto :goto_1

    .line 78
    :cond_6
    move v2, v3

    .line 79
    goto :goto_3

    .line 80
    :cond_7
    :goto_2
    move v2, v0

    .line 81
    :goto_3
    if-eqz v2, :cond_8

    .line 83
    new-instance p0, Lo/F7;

    .line 85
    invoke-direct {p0, v2}, Lo/F7;-><init>(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 88
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 91
    return-object p0

    .line 92
    :cond_8
    :try_start_4
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 95
    move-result v2

    .line 96
    if-le v2, v0, :cond_9

    .line 98
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 100
    const/16 v2, 0x1d

    .line 102
    if-lt v0, v2, :cond_9

    .line 104
    sget-object v0, Lo/Fg;->a:Lo/Ha;

    .line 106
    const-string v0, "TypefaceCompat.createFromFontInfoWithFallback"

    .line 108
    invoke-static {v0}, Lo/Ha;->a(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 111
    :try_start_5
    sget-object v0, Lo/Fg;->a:Lo/Ha;

    .line 113
    invoke-virtual {v0, p1, p2, p3}, Lo/Ha;->v(Landroid/content/Context;Ljava/util/List;I)Landroid/graphics/Typeface;

    .line 116
    move-result-object p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 117
    :try_start_6
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 120
    goto :goto_4

    .line 121
    :catchall_1
    move-exception p0

    .line 122
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 125
    throw p0

    .line 126
    :cond_9
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 129
    move-result-object p2

    .line 130
    check-cast p2, [Lo/L7;

    .line 132
    sget-object v0, Lo/Fg;->a:Lo/Ha;

    .line 134
    const-string v0, "TypefaceCompat.createFromFontInfo"

    .line 136
    invoke-static {v0}, Lo/Ha;->a(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 139
    :try_start_7
    sget-object v0, Lo/Fg;->a:Lo/Ha;

    .line 141
    invoke-virtual {v0, p1, p2, p3}, Lo/Ha;->u(Landroid/content/Context;[Lo/L7;I)Landroid/graphics/Typeface;

    .line 144
    move-result-object p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 145
    :try_start_8
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 148
    :goto_4
    if-eqz p1, :cond_a

    .line 150
    invoke-virtual {v1, p0, p1}, Lo/Ba;->j(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    new-instance p0, Lo/F7;

    .line 155
    invoke-direct {p0, p1}, Lo/F7;-><init>(Landroid/graphics/Typeface;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 158
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 161
    return-object p0

    .line 162
    :cond_a
    :try_start_9
    new-instance p0, Lo/F7;

    .line 164
    invoke-direct {p0, v4}, Lo/F7;-><init>(I)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 167
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 170
    return-object p0

    .line 171
    :catchall_2
    move-exception p0

    .line 172
    :try_start_a
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 175
    throw p0

    .line 176
    :catch_0
    new-instance p0, Lo/F7;

    .line 178
    const/4 p1, -0x1

    .line 179
    invoke-direct {p0, p1}, Lo/F7;-><init>(I)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 182
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 185
    return-object p0

    .line 186
    :goto_5
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 189
    throw p0
.end method
