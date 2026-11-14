.class public final Lo/Hg;
.super Lo/Ha;
.source "SourceFile"


# static fields
.field public static final k:Ljava/lang/Class;

.field public static final l:Ljava/lang/reflect/Constructor;

.field public static final m:Ljava/lang/reflect/Method;

.field public static final n:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    :try_start_0
    const-string v0, "android.graphics.FontFamily"

    .line 3
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    new-array v1, v1, [Ljava/lang/Class;

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 13
    move-result-object v1

    .line 14
    const-string v2, "addFontWeightStyle"

    .line 16
    const-class v3, Ljava/nio/ByteBuffer;

    .line 18
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 20
    const-class v5, Ljava/util/List;

    .line 22
    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 24
    filled-new-array {v3, v4, v5, v4, v6}, [Ljava/lang/Class;

    .line 27
    move-result-object v3

    .line 28
    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 31
    move-result-object v2

    .line 32
    const/4 v3, 0x1

    .line 33
    invoke-static {v0, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    .line 36
    move-result-object v3

    .line 37
    const-class v4, Landroid/graphics/Typeface;

    .line 39
    const-string v5, "createFromFamiliesWithDefault"

    .line 41
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    move-result-object v3

    .line 45
    filled-new-array {v3}, [Ljava/lang/Class;

    .line 48
    move-result-object v3

    .line 49
    invoke-virtual {v4, v5, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 52
    move-result-object v3
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    goto :goto_1

    .line 54
    :catch_0
    move-exception v0

    .line 55
    goto :goto_0

    .line 56
    :catch_1
    move-exception v0

    .line 57
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 60
    move-result-object v1

    .line 61
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 64
    move-result-object v1

    .line 65
    const-string v2, "TypefaceCompatApi24Impl"

    .line 67
    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 70
    const/4 v0, 0x0

    .line 71
    move-object v1, v0

    .line 72
    move-object v2, v1

    .line 73
    move-object v3, v2

    .line 74
    :goto_1
    sput-object v1, Lo/Hg;->l:Ljava/lang/reflect/Constructor;

    .line 76
    sput-object v0, Lo/Hg;->k:Ljava/lang/Class;

    .line 78
    sput-object v2, Lo/Hg;->m:Ljava/lang/reflect/Method;

    .line 80
    sput-object v3, Lo/Hg;->n:Ljava/lang/reflect/Method;

    .line 82
    return-void
.end method

.method public static D0(Ljava/lang/Object;Ljava/nio/ByteBuffer;IIZ)Z
    .locals 2

    .line 1
    :try_start_0
    sget-object v0, Lo/Hg;->m:Ljava/lang/reflect/Method;

    .line 3
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    move-result-object p2

    .line 7
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    move-result-object p3

    .line 11
    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 14
    move-result-object p4

    .line 15
    const/4 v1, 0x0

    .line 16
    filled-new-array {p1, p2, v1, p3, p4}, [Ljava/lang/Object;

    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    move-result-object p0

    .line 24
    check-cast p0, Ljava/lang/Boolean;

    .line 26
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 29
    move-result p0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    return p0

    .line 31
    :catch_0
    const/4 p0, 0x0

    .line 32
    return p0
.end method

.method public static E0(Ljava/lang/Object;)Landroid/graphics/Typeface;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    sget-object v1, Lo/Hg;->k:Ljava/lang/Class;

    .line 4
    const/4 v2, 0x1

    .line 5
    invoke-static {v1, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    .line 8
    move-result-object v1

    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-static {v1, v2, p0}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 13
    sget-object p0, Lo/Hg;->n:Ljava/lang/reflect/Method;

    .line 15
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {p0, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    move-result-object p0

    .line 23
    check-cast p0, Landroid/graphics/Typeface;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    return-object p0

    .line 26
    :catch_0
    return-object v0
.end method


# virtual methods
.method public final t(Landroid/content/Context;Lo/I7;Landroid/content/res/Resources;I)Landroid/graphics/Typeface;
    .locals 16

    .line 1
    const/4 v1, 0x0

    .line 2
    const/4 v0, 0x0

    .line 3
    :try_start_0
    sget-object v2, Lo/Hg;->l:Ljava/lang/reflect/Constructor;

    .line 5
    new-array v3, v0, [Ljava/lang/Object;

    .line 7
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    move-result-object v2
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    goto :goto_0

    .line 12
    :catch_0
    move-object v2, v1

    .line 13
    :goto_0
    if-nez v2, :cond_0

    .line 15
    return-object v1

    .line 16
    :cond_0
    move-object/from16 v3, p2

    .line 18
    iget-object v3, v3, Lo/I7;->a:[Lo/J7;

    .line 20
    array-length v4, v3

    .line 21
    move v5, v0

    .line 22
    :goto_1
    if-ge v5, v4, :cond_5

    .line 24
    aget-object v6, v3, v5

    .line 26
    iget v0, v6, Lo/J7;->f:I

    .line 28
    invoke-static/range {p1 .. p1}, Lo/Ha;->U(Landroid/content/Context;)Ljava/io/File;

    .line 31
    move-result-object v7

    .line 32
    if-nez v7, :cond_1

    .line 34
    move-object/from16 v8, p3

    .line 36
    :goto_2
    move-object v0, v1

    .line 37
    goto :goto_5

    .line 38
    :cond_1
    move-object/from16 v8, p3

    .line 40
    :try_start_1
    invoke-static {v7, v8, v0}, Lo/Ha;->q(Ljava/io/File;Landroid/content/res/Resources;I)Z

    .line 43
    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 44
    if-nez v0, :cond_2

    .line 46
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .line 49
    goto :goto_2

    .line 50
    :cond_2
    :try_start_2
    new-instance v9, Ljava/io/FileInputStream;

    .line 52
    invoke-direct {v9, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 55
    :try_start_3
    invoke-virtual {v9}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    .line 58
    move-result-object v10

    .line 59
    invoke-virtual {v10}, Ljava/nio/channels/FileChannel;->size()J

    .line 62
    move-result-wide v14

    .line 63
    sget-object v11, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    .line 65
    const-wide/16 v12, 0x0

    .line 67
    invoke-virtual/range {v10 .. v15}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    .line 70
    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 71
    :try_start_4
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 74
    goto :goto_4

    .line 75
    :catchall_0
    move-exception v0

    .line 76
    move-object v10, v0

    .line 77
    :try_start_5
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 80
    goto :goto_3

    .line 81
    :catchall_1
    move-exception v0

    .line 82
    move-object v9, v0

    .line 83
    :try_start_6
    invoke-virtual {v10, v9}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 86
    :goto_3
    throw v10
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 87
    :catch_1
    move-object v0, v1

    .line 88
    :goto_4
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .line 91
    :goto_5
    if-nez v0, :cond_3

    .line 93
    return-object v1

    .line 94
    :cond_3
    iget v7, v6, Lo/J7;->b:I

    .line 96
    iget-boolean v9, v6, Lo/J7;->c:Z

    .line 98
    iget v6, v6, Lo/J7;->e:I

    .line 100
    invoke-static {v2, v0, v6, v7, v9}, Lo/Hg;->D0(Ljava/lang/Object;Ljava/nio/ByteBuffer;IIZ)Z

    .line 103
    move-result v0

    .line 104
    if-nez v0, :cond_4

    .line 106
    return-object v1

    .line 107
    :cond_4
    add-int/lit8 v5, v5, 0x1

    .line 109
    goto :goto_1

    .line 110
    :catchall_2
    move-exception v0

    .line 111
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .line 114
    throw v0

    .line 115
    :cond_5
    invoke-static {v2}, Lo/Hg;->E0(Ljava/lang/Object;)Landroid/graphics/Typeface;

    .line 118
    move-result-object v0

    .line 119
    return-object v0
.end method

.method public final u(Landroid/content/Context;[Lo/L7;I)Landroid/graphics/Typeface;
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    :try_start_0
    sget-object v2, Lo/Hg;->l:Ljava/lang/reflect/Constructor;

    .line 5
    new-array v3, v1, [Ljava/lang/Object;

    .line 7
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    move-result-object v2
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    goto :goto_0

    .line 12
    :catch_0
    move-object v2, v0

    .line 13
    :goto_0
    if-nez v2, :cond_0

    .line 15
    return-object v0

    .line 16
    :cond_0
    new-instance v3, Lo/Qe;

    .line 18
    invoke-direct {v3, v1}, Lo/Qe;-><init>(I)V

    .line 21
    array-length v4, p2

    .line 22
    :goto_1
    if-ge v1, v4, :cond_4

    .line 24
    aget-object v5, p2, v1

    .line 26
    iget-object v6, v5, Lo/L7;->a:Landroid/net/Uri;

    .line 28
    invoke-virtual {v3, v6}, Lo/Qe;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    move-result-object v7

    .line 32
    check-cast v7, Ljava/nio/ByteBuffer;

    .line 34
    if-nez v7, :cond_1

    .line 36
    invoke-static {p1, v6}, Lo/Ha;->f0(Landroid/content/Context;Landroid/net/Uri;)Ljava/nio/MappedByteBuffer;

    .line 39
    move-result-object v7

    .line 40
    invoke-virtual {v3, v6, v7}, Lo/Qe;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    :cond_1
    if-nez v7, :cond_2

    .line 45
    return-object v0

    .line 46
    :cond_2
    iget v6, v5, Lo/L7;->c:I

    .line 48
    iget-boolean v8, v5, Lo/L7;->d:Z

    .line 50
    iget v5, v5, Lo/L7;->b:I

    .line 52
    invoke-static {v2, v7, v5, v6, v8}, Lo/Hg;->D0(Ljava/lang/Object;Ljava/nio/ByteBuffer;IIZ)Z

    .line 55
    move-result v5

    .line 56
    if-nez v5, :cond_3

    .line 58
    return-object v0

    .line 59
    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 61
    goto :goto_1

    .line 62
    :cond_4
    invoke-static {v2}, Lo/Hg;->E0(Ljava/lang/Object;)Landroid/graphics/Typeface;

    .line 65
    move-result-object p1

    .line 66
    if-nez p1, :cond_5

    .line 68
    return-object v0

    .line 69
    :cond_5
    invoke-static {p1, p3}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    .line 72
    move-result-object p1

    .line 73
    return-object p1
.end method
