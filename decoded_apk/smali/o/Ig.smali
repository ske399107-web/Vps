.class public Lo/Ig;
.super Lo/Gg;
.source "SourceFile"


# instance fields
.field public final p:Ljava/lang/Class;

.field public final q:Ljava/lang/reflect/Constructor;

.field public final r:Ljava/lang/reflect/Method;

.field public final s:Ljava/lang/reflect/Method;

.field public final t:Ljava/lang/reflect/Method;

.field public final u:Ljava/lang/reflect/Method;

.field public final v:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>()V
    .locals 7

    .line 1
    invoke-direct {p0}, Lo/Ha;-><init>()V

    .line 4
    :try_start_0
    const-string v0, "android.graphics.FontFamily"

    .line 6
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 9
    move-result-object v0

    .line 10
    const/4 v1, 0x0

    .line 11
    new-array v2, v1, [Ljava/lang/Class;

    .line 13
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 16
    move-result-object v2

    .line 17
    invoke-static {v0}, Lo/Ig;->L0(Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 20
    move-result-object v3

    .line 21
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 23
    const-class v5, [Landroid/graphics/fonts/FontVariationAxis;

    .line 25
    const-class v6, Ljava/nio/ByteBuffer;

    .line 27
    filled-new-array {v6, v4, v5, v4, v4}, [Ljava/lang/Class;

    .line 30
    move-result-object v4

    .line 31
    const-string v5, "addFontFromBuffer"

    .line 33
    invoke-virtual {v0, v5, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 36
    move-result-object v4

    .line 37
    new-array v5, v1, [Ljava/lang/Class;

    .line 39
    const-string v6, "freeze"

    .line 41
    invoke-virtual {v0, v6, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 44
    move-result-object v5

    .line 45
    new-array v1, v1, [Ljava/lang/Class;

    .line 47
    const-string v6, "abortCreation"

    .line 49
    invoke-virtual {v0, v6, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 52
    move-result-object v1

    .line 53
    invoke-virtual {p0, v0}, Lo/Ig;->M0(Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 56
    move-result-object v6
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    goto :goto_1

    .line 58
    :catch_0
    move-exception v0

    .line 59
    goto :goto_0

    .line 60
    :catch_1
    move-exception v0

    .line 61
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 64
    move-result-object v1

    .line 65
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 68
    move-result-object v1

    .line 69
    const-string v2, "Unable to collect necessary methods for class "

    .line 71
    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 74
    move-result-object v1

    .line 75
    const-string v2, "TypefaceCompatApi26Impl"

    .line 77
    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 80
    const/4 v0, 0x0

    .line 81
    move-object v1, v0

    .line 82
    move-object v2, v1

    .line 83
    move-object v3, v2

    .line 84
    move-object v4, v3

    .line 85
    move-object v5, v4

    .line 86
    move-object v6, v5

    .line 87
    :goto_1
    iput-object v0, p0, Lo/Ig;->p:Ljava/lang/Class;

    .line 89
    iput-object v2, p0, Lo/Ig;->q:Ljava/lang/reflect/Constructor;

    .line 91
    iput-object v3, p0, Lo/Ig;->r:Ljava/lang/reflect/Method;

    .line 93
    iput-object v4, p0, Lo/Ig;->s:Ljava/lang/reflect/Method;

    .line 95
    iput-object v5, p0, Lo/Ig;->t:Ljava/lang/reflect/Method;

    .line 97
    iput-object v1, p0, Lo/Ig;->u:Ljava/lang/reflect/Method;

    .line 99
    iput-object v6, p0, Lo/Ig;->v:Ljava/lang/reflect/Method;

    .line 101
    return-void
.end method

.method public static L0(Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 8

    .line 1
    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 3
    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 5
    const-class v7, [Landroid/graphics/fonts/FontVariationAxis;

    .line 7
    const-class v0, Landroid/content/res/AssetManager;

    .line 9
    const-class v1, Ljava/lang/String;

    .line 11
    move-object v2, v6

    .line 12
    move-object v4, v6

    .line 13
    move-object v5, v6

    .line 14
    filled-new-array/range {v0 .. v7}, [Ljava/lang/Class;

    .line 17
    move-result-object v0

    .line 18
    const-string v1, "addFontFromAssetManager"

    .line 20
    invoke-virtual {p0, v1, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 23
    move-result-object p0

    .line 24
    return-object p0
.end method


# virtual methods
.method public final F0(Ljava/lang/Object;)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lo/Ig;->u:Ljava/lang/reflect/Method;

    .line 3
    const/4 v1, 0x0

    .line 4
    new-array v1, v1, [Ljava/lang/Object;

    .line 6
    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    :catch_0
    return-void
.end method

.method public final G0(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;III[Landroid/graphics/fonts/FontVariationAxis;)Z
    .locals 11

    .line 1
    const/4 v0, 0x0

    .line 2
    move-object v1, p0

    .line 3
    :try_start_0
    iget-object v2, v1, Lo/Ig;->r:Ljava/lang/reflect/Method;

    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 8
    move-result-object v3

    .line 9
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    move-result-object v5

    .line 13
    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 15
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    move-result-object v7

    .line 19
    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    move-result-object v8

    .line 23
    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 26
    move-result-object v9

    .line 27
    move-object v4, p3

    .line 28
    move-object/from16 v10, p7

    .line 30
    filled-new-array/range {v3 .. v10}, [Ljava/lang/Object;

    .line 33
    move-result-object v3

    .line 34
    move-object v4, p2

    .line 35
    invoke-virtual {v2, p2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    move-result-object v2

    .line 39
    check-cast v2, Ljava/lang/Boolean;

    .line 41
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 44
    move-result v0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    :catch_0
    return v0
.end method

.method public H0(Ljava/lang/Object;)Landroid/graphics/Typeface;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lo/Ig;->p:Ljava/lang/Class;

    .line 4
    const/4 v2, 0x1

    .line 5
    invoke-static {v1, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    .line 8
    move-result-object v1

    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-static {v1, v2, p1}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 13
    iget-object p1, p0, Lo/Ig;->v:Ljava/lang/reflect/Method;

    .line 15
    const/4 v2, -0x1

    .line 16
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 19
    move-result-object v3

    .line 20
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 23
    move-result-object v2

    .line 24
    filled-new-array {v1, v3, v2}, [Ljava/lang/Object;

    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {p1, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    move-result-object p1

    .line 32
    check-cast p1, Landroid/graphics/Typeface;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    return-object p1

    .line 35
    :catch_0
    return-object v0
.end method

.method public final I0(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lo/Ig;->t:Ljava/lang/reflect/Method;

    .line 4
    new-array v2, v0, [Ljava/lang/Object;

    .line 6
    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    move-result-object p1

    .line 10
    check-cast p1, Ljava/lang/Boolean;

    .line 12
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 15
    move-result p1
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    return p1

    .line 17
    :catch_0
    return v0
.end method

.method public final J0()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lo/Ig;->r:Ljava/lang/reflect/Method;

    .line 3
    if-nez v0, :cond_0

    .line 5
    const-string v1, "TypefaceCompatApi26Impl"

    .line 7
    const-string v2, "Unable to collect necessary private methods. Fallback to legacy implementation."

    .line 9
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    :cond_0
    if-eqz v0, :cond_1

    .line 14
    const/4 v0, 0x1

    .line 15
    goto :goto_0

    .line 16
    :cond_1
    const/4 v0, 0x0

    .line 17
    :goto_0
    return v0
.end method

.method public final K0()Ljava/lang/Object;
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lo/Ig;->q:Ljava/lang/reflect/Constructor;

    .line 3
    const/4 v1, 0x0

    .line 4
    new-array v1, v1, [Ljava/lang/Object;

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    return-object v0

    .line 11
    :catch_0
    const/4 v0, 0x0

    .line 12
    return-object v0
.end method

.method public M0(Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    .line 5
    move-result-object p1

    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    move-result-object p1

    .line 10
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 12
    filled-new-array {p1, v1, v1}, [Ljava/lang/Class;

    .line 15
    move-result-object p1

    .line 16
    const-class v1, Landroid/graphics/Typeface;

    .line 18
    const-string v2, "createFromFamiliesWithDefault"

    .line 20
    invoke-virtual {v1, v2, p1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {p1, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 27
    return-object p1
.end method

.method public final t(Landroid/content/Context;Lo/I7;Landroid/content/res/Resources;I)Landroid/graphics/Typeface;
    .locals 10

    .line 1
    invoke-virtual {p0}, Lo/Ig;->J0()Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 7
    invoke-super {p0, p1, p2, p3, p4}, Lo/Gg;->t(Landroid/content/Context;Lo/I7;Landroid/content/res/Resources;I)Landroid/graphics/Typeface;

    .line 10
    move-result-object p1

    .line 11
    return-object p1

    .line 12
    :cond_0
    invoke-virtual {p0}, Lo/Ig;->K0()Ljava/lang/Object;

    .line 15
    move-result-object p3

    .line 16
    const/4 p4, 0x0

    .line 17
    if-nez p3, :cond_1

    .line 19
    return-object p4

    .line 20
    :cond_1
    iget-object p2, p2, Lo/I7;->a:[Lo/J7;

    .line 22
    array-length v8, p2

    .line 23
    const/4 v0, 0x0

    .line 24
    move v9, v0

    .line 25
    :goto_0
    if-ge v9, v8, :cond_3

    .line 27
    aget-object v0, p2, v9

    .line 29
    iget-object v3, v0, Lo/J7;->a:Ljava/lang/String;

    .line 31
    iget-object v1, v0, Lo/J7;->d:Ljava/lang/String;

    .line 33
    invoke-static {v1}, Landroid/graphics/fonts/FontVariationAxis;->fromFontVariationSettings(Ljava/lang/String;)[Landroid/graphics/fonts/FontVariationAxis;

    .line 36
    move-result-object v7

    .line 37
    iget v5, v0, Lo/J7;->b:I

    .line 39
    iget-boolean v6, v0, Lo/J7;->c:Z

    .line 41
    iget v4, v0, Lo/J7;->e:I

    .line 43
    move-object v0, p0

    .line 44
    move-object v1, p1

    .line 45
    move-object v2, p3

    .line 46
    invoke-virtual/range {v0 .. v7}, Lo/Ig;->G0(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;III[Landroid/graphics/fonts/FontVariationAxis;)Z

    .line 49
    move-result v0

    .line 50
    if-nez v0, :cond_2

    .line 52
    invoke-virtual {p0, p3}, Lo/Ig;->F0(Ljava/lang/Object;)V

    .line 55
    return-object p4

    .line 56
    :cond_2
    add-int/lit8 v9, v9, 0x1

    .line 58
    goto :goto_0

    .line 59
    :cond_3
    invoke-virtual {p0, p3}, Lo/Ig;->I0(Ljava/lang/Object;)Z

    .line 62
    move-result p1

    .line 63
    if-nez p1, :cond_4

    .line 65
    return-object p4

    .line 66
    :cond_4
    invoke-virtual {p0, p3}, Lo/Ig;->H0(Ljava/lang/Object;)Landroid/graphics/Typeface;

    .line 69
    move-result-object p1

    .line 70
    return-object p1
.end method

.method public final u(Landroid/content/Context;[Lo/L7;I)Landroid/graphics/Typeface;
    .locals 11

    .line 1
    array-length v0, p2

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x1

    .line 4
    if-ge v0, v2, :cond_0

    .line 6
    return-object v1

    .line 7
    :cond_0
    invoke-virtual {p0}, Lo/Ig;->J0()Z

    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_3

    .line 13
    invoke-virtual {p0, p2, p3}, Lo/Ha;->C([Lo/L7;I)Lo/L7;

    .line 16
    move-result-object p2

    .line 17
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 20
    move-result-object p1

    .line 21
    :try_start_0
    iget-object p3, p2, Lo/L7;->a:Landroid/net/Uri;

    .line 23
    const-string v0, "r"

    .line 25
    invoke-virtual {p1, p3, v0, v1}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;

    .line 28
    move-result-object p1

    .line 29
    if-nez p1, :cond_2

    .line 31
    if-eqz p1, :cond_1

    .line 33
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    :cond_1
    return-object v1

    .line 37
    :cond_2
    :try_start_1
    new-instance p3, Landroid/graphics/Typeface$Builder;

    .line 39
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 42
    move-result-object v0

    .line 43
    invoke-direct {p3, v0}, Landroid/graphics/Typeface$Builder;-><init>(Ljava/io/FileDescriptor;)V

    .line 46
    iget v0, p2, Lo/L7;->c:I

    .line 48
    invoke-virtual {p3, v0}, Landroid/graphics/Typeface$Builder;->setWeight(I)Landroid/graphics/Typeface$Builder;

    .line 51
    move-result-object p3

    .line 52
    iget-boolean p2, p2, Lo/L7;->d:Z

    .line 54
    invoke-virtual {p3, p2}, Landroid/graphics/Typeface$Builder;->setItalic(Z)Landroid/graphics/Typeface$Builder;

    .line 57
    move-result-object p2

    .line 58
    invoke-virtual {p2}, Landroid/graphics/Typeface$Builder;->build()Landroid/graphics/Typeface;

    .line 61
    move-result-object p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 62
    :try_start_2
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 65
    return-object p2

    .line 66
    :catchall_0
    move-exception p2

    .line 67
    :try_start_3
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 70
    goto :goto_0

    .line 71
    :catchall_1
    move-exception p1

    .line 72
    :try_start_4
    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 75
    :goto_0
    throw p2
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 76
    :catch_0
    return-object v1

    .line 77
    :cond_3
    new-instance v0, Ljava/util/HashMap;

    .line 79
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 82
    array-length v3, p2

    .line 83
    const/4 v4, 0x0

    .line 84
    move v5, v4

    .line 85
    :goto_1
    if-ge v5, v3, :cond_6

    .line 87
    aget-object v6, p2, v5

    .line 89
    iget v7, v6, Lo/L7;->e:I

    .line 91
    if-eqz v7, :cond_4

    .line 93
    goto :goto_2

    .line 94
    :cond_4
    iget-object v6, v6, Lo/L7;->a:Landroid/net/Uri;

    .line 96
    invoke-virtual {v0, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 99
    move-result v7

    .line 100
    if-eqz v7, :cond_5

    .line 102
    goto :goto_2

    .line 103
    :cond_5
    invoke-static {p1, v6}, Lo/Ha;->f0(Landroid/content/Context;Landroid/net/Uri;)Ljava/nio/MappedByteBuffer;

    .line 106
    move-result-object v7

    .line 107
    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    :goto_2
    add-int/lit8 v5, v5, 0x1

    .line 112
    goto :goto_1

    .line 113
    :cond_6
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 116
    move-result-object p1

    .line 117
    invoke-virtual {p0}, Lo/Ig;->K0()Ljava/lang/Object;

    .line 120
    move-result-object v0

    .line 121
    if-nez v0, :cond_7

    .line 123
    return-object v1

    .line 124
    :cond_7
    array-length v3, p2

    .line 125
    move v5, v4

    .line 126
    move v6, v5

    .line 127
    :goto_3
    if-ge v5, v3, :cond_a

    .line 129
    aget-object v7, p2, v5

    .line 131
    iget-object v8, v7, Lo/L7;->a:Landroid/net/Uri;

    .line 133
    invoke-interface {p1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    move-result-object v8

    .line 137
    check-cast v8, Ljava/nio/ByteBuffer;

    .line 139
    if-nez v8, :cond_8

    .line 141
    goto :goto_5

    .line 142
    :cond_8
    iget v6, v7, Lo/L7;->b:I

    .line 144
    iget v9, v7, Lo/L7;->c:I

    .line 146
    iget-boolean v7, v7, Lo/L7;->d:Z

    .line 148
    :try_start_5
    iget-object v10, p0, Lo/Ig;->s:Ljava/lang/reflect/Method;

    .line 150
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 153
    move-result-object v6

    .line 154
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 157
    move-result-object v9

    .line 158
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 161
    move-result-object v7

    .line 162
    filled-new-array {v8, v6, v1, v9, v7}, [Ljava/lang/Object;

    .line 165
    move-result-object v6

    .line 166
    invoke-virtual {v10, v0, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    move-result-object v6

    .line 170
    check-cast v6, Ljava/lang/Boolean;

    .line 172
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    .line 175
    move-result v6
    :try_end_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_5 .. :try_end_5} :catch_1

    .line 176
    goto :goto_4

    .line 177
    :catch_1
    move v6, v4

    .line 178
    :goto_4
    if-nez v6, :cond_9

    .line 180
    invoke-virtual {p0, v0}, Lo/Ig;->F0(Ljava/lang/Object;)V

    .line 183
    return-object v1

    .line 184
    :cond_9
    move v6, v2

    .line 185
    :goto_5
    add-int/lit8 v5, v5, 0x1

    .line 187
    goto :goto_3

    .line 188
    :cond_a
    if-nez v6, :cond_b

    .line 190
    invoke-virtual {p0, v0}, Lo/Ig;->F0(Ljava/lang/Object;)V

    .line 193
    return-object v1

    .line 194
    :cond_b
    invoke-virtual {p0, v0}, Lo/Ig;->I0(Ljava/lang/Object;)Z

    .line 197
    move-result p1

    .line 198
    if-nez p1, :cond_c

    .line 200
    return-object v1

    .line 201
    :cond_c
    invoke-virtual {p0, v0}, Lo/Ig;->H0(Ljava/lang/Object;)Landroid/graphics/Typeface;

    .line 204
    move-result-object p1

    .line 205
    if-nez p1, :cond_d

    .line 207
    return-object v1

    .line 208
    :cond_d
    invoke-static {p1, p3}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    .line 211
    move-result-object p1

    .line 212
    return-object p1
.end method

.method public final x(Landroid/content/Context;Landroid/content/res/Resources;ILjava/lang/String;I)Landroid/graphics/Typeface;
    .locals 8

    .line 1
    invoke-virtual {p0}, Lo/Ig;->J0()Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 7
    invoke-super/range {p0 .. p5}, Lo/Ha;->x(Landroid/content/Context;Landroid/content/res/Resources;ILjava/lang/String;I)Landroid/graphics/Typeface;

    .line 10
    move-result-object p1

    .line 11
    return-object p1

    .line 12
    :cond_0
    invoke-virtual {p0}, Lo/Ig;->K0()Ljava/lang/Object;

    .line 15
    move-result-object p2

    .line 16
    const/4 p3, 0x0

    .line 17
    if-nez p2, :cond_1

    .line 19
    return-object p3

    .line 20
    :cond_1
    const/4 v6, -0x1

    .line 21
    const/4 v7, 0x0

    .line 22
    const/4 v4, 0x0

    .line 23
    const/4 v5, -0x1

    .line 24
    move-object v0, p0

    .line 25
    move-object v1, p1

    .line 26
    move-object v2, p2

    .line 27
    move-object v3, p4

    .line 28
    invoke-virtual/range {v0 .. v7}, Lo/Ig;->G0(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;III[Landroid/graphics/fonts/FontVariationAxis;)Z

    .line 31
    move-result p1

    .line 32
    if-nez p1, :cond_2

    .line 34
    invoke-virtual {p0, p2}, Lo/Ig;->F0(Ljava/lang/Object;)V

    .line 37
    return-object p3

    .line 38
    :cond_2
    invoke-virtual {p0, p2}, Lo/Ig;->I0(Ljava/lang/Object;)Z

    .line 41
    move-result p1

    .line 42
    if-nez p1, :cond_3

    .line 44
    return-object p3

    .line 45
    :cond_3
    invoke-virtual {p0, p2}, Lo/Ig;->H0(Ljava/lang/Object;)Landroid/graphics/Typeface;

    .line 48
    move-result-object p1

    .line 49
    return-object p1
.end method
