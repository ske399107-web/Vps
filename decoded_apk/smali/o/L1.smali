.class public abstract Lo/L1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static volatile a:Ljava/lang/String; = ""

.field public static volatile b:Z

.field public static c:Z

.field public static d:Ljava/lang/reflect/Method;

.field public static e:Z

.field public static f:Ljava/lang/reflect/Field;


# direct methods
.method public static A()Ljava/util/Set;
    .locals 4

    .line 1
    :try_start_0
    const-string v0, "android.text.EmojiConsistency"

    .line 3
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 6
    move-result-object v0

    .line 7
    const-string v1, "getEmojiConsistencySet"

    .line 9
    const/4 v2, 0x0

    .line 10
    new-array v3, v2, [Ljava/lang/Class;

    .line 12
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 15
    move-result-object v0

    .line 16
    new-array v1, v2, [Ljava/lang/Object;

    .line 18
    const/4 v2, 0x0

    .line 19
    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    move-result-object v0

    .line 23
    if-nez v0, :cond_0

    .line 25
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    .line 28
    move-result-object v0

    .line 29
    return-object v0

    .line 30
    :cond_0
    check-cast v0, Ljava/util/Set;

    .line 32
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 35
    move-result-object v1

    .line 36
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 39
    move-result v2

    .line 40
    if-eqz v2, :cond_2

    .line 42
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 45
    move-result-object v2

    .line 46
    instance-of v2, v2, [I

    .line 48
    if-nez v2, :cond_1

    .line 50
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    .line 53
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    :cond_2
    return-object v0

    .line 55
    :catchall_0
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    .line 58
    move-result-object v0

    .line 59
    return-object v0
.end method

.method public static final C(Lo/A9;)Ljava/lang/Class;
    .locals 2

    .line 1
    const-string v0, "<this>"

    .line 3
    invoke-static {p0, v0}, Lo/x9;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    check-cast p0, Lo/R3;

    .line 8
    invoke-interface {p0}, Lo/R3;->a()Ljava/lang/Class;

    .line 11
    move-result-object p0

    .line 12
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_0

    .line 18
    return-object p0

    .line 19
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 26
    move-result v1

    .line 27
    sparse-switch v1, :sswitch_data_0

    .line 30
    goto/16 :goto_0

    .line 32
    :sswitch_0
    const-string v1, "short"

    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 37
    move-result v0

    .line 38
    if-nez v0, :cond_1

    .line 40
    goto/16 :goto_0

    .line 42
    :cond_1
    const-class p0, Ljava/lang/Short;

    .line 44
    goto/16 :goto_0

    .line 46
    :sswitch_1
    const-string v1, "float"

    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 51
    move-result v0

    .line 52
    if-nez v0, :cond_2

    .line 54
    goto :goto_0

    .line 55
    :cond_2
    const-class p0, Ljava/lang/Float;

    .line 57
    goto :goto_0

    .line 58
    :sswitch_2
    const-string v1, "boolean"

    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 63
    move-result v0

    .line 64
    if-nez v0, :cond_3

    .line 66
    goto :goto_0

    .line 67
    :cond_3
    const-class p0, Ljava/lang/Boolean;

    .line 69
    goto :goto_0

    .line 70
    :sswitch_3
    const-string v1, "void"

    .line 72
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 75
    move-result v0

    .line 76
    if-nez v0, :cond_4

    .line 78
    goto :goto_0

    .line 79
    :cond_4
    const-class p0, Ljava/lang/Void;

    .line 81
    goto :goto_0

    .line 82
    :sswitch_4
    const-string v1, "long"

    .line 84
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 87
    move-result v0

    .line 88
    if-nez v0, :cond_5

    .line 90
    goto :goto_0

    .line 91
    :cond_5
    const-class p0, Ljava/lang/Long;

    .line 93
    goto :goto_0

    .line 94
    :sswitch_5
    const-string v1, "char"

    .line 96
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 99
    move-result v0

    .line 100
    if-nez v0, :cond_6

    .line 102
    goto :goto_0

    .line 103
    :cond_6
    const-class p0, Ljava/lang/Character;

    .line 105
    goto :goto_0

    .line 106
    :sswitch_6
    const-string v1, "byte"

    .line 108
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 111
    move-result v0

    .line 112
    if-nez v0, :cond_7

    .line 114
    goto :goto_0

    .line 115
    :cond_7
    const-class p0, Ljava/lang/Byte;

    .line 117
    goto :goto_0

    .line 118
    :sswitch_7
    const-string v1, "int"

    .line 120
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 123
    move-result v0

    .line 124
    if-nez v0, :cond_8

    .line 126
    goto :goto_0

    .line 127
    :cond_8
    const-class p0, Ljava/lang/Integer;

    .line 129
    goto :goto_0

    .line 130
    :sswitch_8
    const-string v1, "double"

    .line 132
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 135
    move-result v0

    .line 136
    if-nez v0, :cond_9

    .line 138
    goto :goto_0

    .line 139
    :cond_9
    const-class p0, Ljava/lang/Double;

    .line 141
    :goto_0
    return-object p0

    nop

    .line 143
    :sswitch_data_0
    .sparse-switch
        -0x4f08842f -> :sswitch_8
        0x197ef -> :sswitch_7
        0x2e6108 -> :sswitch_6
        0x2e9356 -> :sswitch_5
        0x32c67c -> :sswitch_4
        0x375194 -> :sswitch_3
        0x3db6c28 -> :sswitch_2
        0x5d0225c -> :sswitch_1
        0x685847c -> :sswitch_0
    .end sparse-switch
.end method

.method public static final D(Lo/G2;Ljava/lang/Object;I)I
    .locals 4

    .line 1
    const-string v0, "<this>"

    .line 3
    invoke-static {p0, v0}, Lo/x9;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iget v0, p0, Lo/G2;->c:I

    .line 8
    if-nez v0, :cond_0

    .line 10
    const/4 p0, -0x1

    .line 11
    return p0

    .line 12
    :cond_0
    :try_start_0
    iget-object v1, p0, Lo/G2;->a:[I

    .line 14
    iget v2, p0, Lo/G2;->c:I

    .line 16
    invoke-static {v2, p2, v1}, Lo/x9;->d(II[I)I

    .line 19
    move-result v1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    if-gez v1, :cond_1

    .line 22
    return v1

    .line 23
    :cond_1
    iget-object v2, p0, Lo/G2;->b:[Ljava/lang/Object;

    .line 25
    aget-object v2, v2, v1

    .line 27
    invoke-static {p1, v2}, Lo/x9;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 30
    move-result v2

    .line 31
    if-eqz v2, :cond_2

    .line 33
    return v1

    .line 34
    :cond_2
    add-int/lit8 v2, v1, 0x1

    .line 36
    :goto_0
    if-ge v2, v0, :cond_4

    .line 38
    iget-object v3, p0, Lo/G2;->a:[I

    .line 40
    aget v3, v3, v2

    .line 42
    if-ne v3, p2, :cond_4

    .line 44
    iget-object v3, p0, Lo/G2;->b:[Ljava/lang/Object;

    .line 46
    aget-object v3, v3, v2

    .line 48
    invoke-static {p1, v3}, Lo/x9;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 51
    move-result v3

    .line 52
    if-eqz v3, :cond_3

    .line 54
    return v2

    .line 55
    :cond_3
    add-int/lit8 v2, v2, 0x1

    .line 57
    goto :goto_0

    .line 58
    :cond_4
    add-int/lit8 v1, v1, -0x1

    .line 60
    :goto_1
    if-ltz v1, :cond_6

    .line 62
    iget-object v0, p0, Lo/G2;->a:[I

    .line 64
    aget v0, v0, v1

    .line 66
    if-ne v0, p2, :cond_6

    .line 68
    iget-object v0, p0, Lo/G2;->b:[Ljava/lang/Object;

    .line 70
    aget-object v0, v0, v1

    .line 72
    invoke-static {p1, v0}, Lo/x9;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 75
    move-result v0

    .line 76
    if-eqz v0, :cond_5

    .line 78
    return v1

    .line 79
    :cond_5
    add-int/lit8 v1, v1, -0x1

    .line 81
    goto :goto_1

    .line 82
    :cond_6
    not-int p0, v2

    .line 83
    return p0

    .line 84
    :catch_0
    new-instance p0, Ljava/util/ConcurrentModificationException;

    .line 86
    invoke-direct {p0}, Ljava/util/ConcurrentModificationException;-><init>()V

    .line 89
    throw p0
.end method

.method public static E(ILandroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .locals 3

    .line 1
    const/16 v0, 0x11

    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-eq p0, v0, :cond_9

    .line 7
    const/16 v0, 0x21

    .line 9
    if-eq p0, v0, :cond_6

    .line 11
    const/16 v0, 0x42

    .line 13
    if-eq p0, v0, :cond_3

    .line 15
    const/16 v0, 0x82

    .line 17
    if-ne p0, v0, :cond_2

    .line 19
    iget p0, p1, Landroid/graphics/Rect;->top:I

    .line 21
    iget v0, p2, Landroid/graphics/Rect;->top:I

    .line 23
    if-lt p0, v0, :cond_0

    .line 25
    iget p0, p1, Landroid/graphics/Rect;->bottom:I

    .line 27
    if-gt p0, v0, :cond_1

    .line 29
    :cond_0
    iget p0, p1, Landroid/graphics/Rect;->bottom:I

    .line 31
    iget p1, p2, Landroid/graphics/Rect;->bottom:I

    .line 33
    if-ge p0, p1, :cond_1

    .line 35
    move v1, v2

    .line 36
    :cond_1
    return v1

    .line 37
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 39
    const-string p1, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    .line 41
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 44
    throw p0

    .line 45
    :cond_3
    iget p0, p1, Landroid/graphics/Rect;->left:I

    .line 47
    iget v0, p2, Landroid/graphics/Rect;->left:I

    .line 49
    if-lt p0, v0, :cond_4

    .line 51
    iget p0, p1, Landroid/graphics/Rect;->right:I

    .line 53
    if-gt p0, v0, :cond_5

    .line 55
    :cond_4
    iget p0, p1, Landroid/graphics/Rect;->right:I

    .line 57
    iget p1, p2, Landroid/graphics/Rect;->right:I

    .line 59
    if-ge p0, p1, :cond_5

    .line 61
    move v1, v2

    .line 62
    :cond_5
    return v1

    .line 63
    :cond_6
    iget p0, p1, Landroid/graphics/Rect;->bottom:I

    .line 65
    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    .line 67
    if-gt p0, v0, :cond_7

    .line 69
    iget p0, p1, Landroid/graphics/Rect;->top:I

    .line 71
    if-lt p0, v0, :cond_8

    .line 73
    :cond_7
    iget p0, p1, Landroid/graphics/Rect;->top:I

    .line 75
    iget p1, p2, Landroid/graphics/Rect;->top:I

    .line 77
    if-le p0, p1, :cond_8

    .line 79
    move v1, v2

    .line 80
    :cond_8
    return v1

    .line 81
    :cond_9
    iget p0, p1, Landroid/graphics/Rect;->right:I

    .line 83
    iget v0, p2, Landroid/graphics/Rect;->right:I

    .line 85
    if-gt p0, v0, :cond_a

    .line 87
    iget p0, p1, Landroid/graphics/Rect;->left:I

    .line 89
    if-lt p0, v0, :cond_b

    .line 91
    :cond_a
    iget p0, p1, Landroid/graphics/Rect;->left:I

    .line 93
    iget p1, p2, Landroid/graphics/Rect;->left:I

    .line 95
    if-le p0, p1, :cond_b

    .line 97
    move v1, v2

    .line 98
    :cond_b
    return v1
.end method

.method public static F(Landroid/widget/EditText;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/widget/TextView;->getInputType()I

    .line 4
    move-result p0

    .line 5
    if-eqz p0, :cond_0

    .line 7
    const/4 p0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p0, 0x0

    .line 10
    :goto_0
    return p0
.end method

.method public static H(Ljava/lang/Object;)Ljava/util/List;
    .locals 1

    .line 1
    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 4
    move-result-object p0

    .line 5
    const-string v0, "singletonList(...)"

    .line 7
    invoke-static {p0, v0}, Lo/x9;->n(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    return-object p0
.end method

.method public static I(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I
    .locals 1

    .line 1
    const/16 v0, 0x11

    .line 3
    if-eq p0, v0, :cond_3

    .line 5
    const/16 v0, 0x21

    .line 7
    if-eq p0, v0, :cond_2

    .line 9
    const/16 v0, 0x42

    .line 11
    if-eq p0, v0, :cond_1

    .line 13
    const/16 v0, 0x82

    .line 15
    if-ne p0, v0, :cond_0

    .line 17
    iget p0, p2, Landroid/graphics/Rect;->top:I

    .line 19
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    .line 21
    :goto_0
    sub-int/2addr p0, p1

    .line 22
    goto :goto_1

    .line 23
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 25
    const-string p1, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    .line 27
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 30
    throw p0

    .line 31
    :cond_1
    iget p0, p2, Landroid/graphics/Rect;->left:I

    .line 33
    iget p1, p1, Landroid/graphics/Rect;->right:I

    .line 35
    goto :goto_0

    .line 36
    :cond_2
    iget p0, p1, Landroid/graphics/Rect;->top:I

    .line 38
    iget p1, p2, Landroid/graphics/Rect;->bottom:I

    .line 40
    goto :goto_0

    .line 41
    :cond_3
    iget p0, p1, Landroid/graphics/Rect;->left:I

    .line 43
    iget p1, p2, Landroid/graphics/Rect;->right:I

    .line 45
    goto :goto_0

    .line 46
    :goto_1
    const/4 p1, 0x0

    .line 47
    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    .line 50
    move-result p0

    .line 51
    return p0
.end method

.method public static J(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I
    .locals 1

    .line 1
    const/16 v0, 0x11

    .line 3
    if-eq p0, v0, :cond_2

    .line 5
    const/16 v0, 0x21

    .line 7
    if-eq p0, v0, :cond_1

    .line 9
    const/16 v0, 0x42

    .line 11
    if-eq p0, v0, :cond_2

    .line 13
    const/16 v0, 0x82

    .line 15
    if-ne p0, v0, :cond_0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 20
    const-string p1, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    .line 22
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 25
    throw p0

    .line 26
    :cond_1
    :goto_0
    iget p0, p1, Landroid/graphics/Rect;->left:I

    .line 28
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    .line 31
    move-result p1

    .line 32
    div-int/lit8 p1, p1, 0x2

    .line 34
    add-int/2addr p1, p0

    .line 35
    iget p0, p2, Landroid/graphics/Rect;->left:I

    .line 37
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    .line 40
    move-result p2

    .line 41
    div-int/lit8 p2, p2, 0x2

    .line 43
    add-int/2addr p2, p0

    .line 44
    sub-int/2addr p1, p2

    .line 45
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    .line 48
    move-result p0

    .line 49
    return p0

    .line 50
    :cond_2
    iget p0, p1, Landroid/graphics/Rect;->top:I

    .line 52
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    .line 55
    move-result p1

    .line 56
    div-int/lit8 p1, p1, 0x2

    .line 58
    add-int/2addr p1, p0

    .line 59
    iget p0, p2, Landroid/graphics/Rect;->top:I

    .line 61
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    .line 64
    move-result p2

    .line 65
    div-int/lit8 p2, p2, 0x2

    .line 67
    add-int/2addr p2, p0

    .line 68
    sub-int/2addr p1, p2

    .line 69
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    .line 72
    move-result p0

    .line 73
    return p0
.end method

.method public static O(Landroid/widget/EdgeEffect;FF)F
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    const/16 v1, 0x1f

    .line 5
    if-lt v0, v1, :cond_0

    .line 7
    invoke-static {p0, p1, p2}, Lo/t6;->c(Landroid/widget/EdgeEffect;FF)F

    .line 10
    move-result p0

    .line 11
    return p0

    .line 12
    :cond_0
    invoke-static {p0, p1, p2}, Lo/s6;->a(Landroid/widget/EdgeEffect;FF)V

    .line 15
    return p1
.end method

.method public static P(Landroid/content/res/XmlResourceParser;Landroid/content/res/Resources;)Lo/H7;
    .locals 24

    .line 1
    move-object/from16 v0, p1

    .line 3
    :goto_0
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x1

    .line 8
    const/4 v3, 0x2

    .line 9
    if-eq v1, v3, :cond_0

    .line 11
    if-eq v1, v2, :cond_0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    if-ne v1, v3, :cond_10

    .line 16
    const/4 v1, 0x0

    .line 17
    const-string v4, "font-family"

    .line 19
    move-object/from16 v5, p0

    .line 21
    invoke-interface {v5, v3, v1, v4}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 24
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 27
    move-result-object v6

    .line 28
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 31
    move-result v4

    .line 32
    if-eqz v4, :cond_f

    .line 34
    invoke-static/range {p0 .. p0}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    .line 37
    move-result-object v4

    .line 38
    sget-object v6, Lo/cd;->b:[I

    .line 40
    invoke-virtual {v0, v4, v6}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 43
    move-result-object v4

    .line 44
    const/4 v6, 0x0

    .line 45
    invoke-virtual {v4, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 48
    move-result-object v7

    .line 49
    const/4 v8, 0x5

    .line 50
    invoke-virtual {v4, v8}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 53
    move-result-object v9

    .line 54
    const/4 v10, 0x6

    .line 55
    invoke-virtual {v4, v10}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 58
    move-result-object v11

    .line 59
    invoke-virtual {v4, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 62
    move-result-object v12

    .line 63
    invoke-virtual {v4, v2, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 66
    move-result v13

    .line 67
    const/4 v14, 0x3

    .line 68
    invoke-virtual {v4, v14, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    .line 71
    move-result v18

    .line 72
    const/4 v15, 0x4

    .line 73
    const/16 v1, 0x1f4

    .line 75
    invoke-virtual {v4, v15, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    .line 78
    move-result v19

    .line 79
    const/4 v1, 0x7

    .line 80
    invoke-virtual {v4, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 83
    move-result-object v20

    .line 84
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 87
    if-eqz v7, :cond_3

    .line 89
    if-eqz v9, :cond_3

    .line 91
    if-eqz v11, :cond_3

    .line 93
    :goto_1
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 96
    move-result v1

    .line 97
    if-eq v1, v14, :cond_1

    .line 99
    invoke-static/range {p0 .. p0}, Lo/L1;->b0(Landroid/content/res/XmlResourceParser;)V

    .line 102
    goto :goto_1

    .line 103
    :cond_1
    invoke-static {v0, v13}, Lo/L1;->S(Landroid/content/res/Resources;I)Ljava/util/List;

    .line 106
    move-result-object v0

    .line 107
    if-eqz v12, :cond_2

    .line 109
    new-instance v1, Lo/A7;

    .line 111
    invoke-direct {v1, v7, v9, v12, v0}, Lo/A7;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 114
    move-object/from16 v17, v1

    .line 116
    goto :goto_2

    .line 117
    :cond_2
    const/16 v17, 0x0

    .line 119
    :goto_2
    new-instance v1, Lo/K7;

    .line 121
    new-instance v2, Lo/A7;

    .line 123
    invoke-direct {v2, v7, v9, v11, v0}, Lo/A7;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 126
    move-object v15, v1

    .line 127
    move-object/from16 v16, v2

    .line 129
    invoke-direct/range {v15 .. v20}, Lo/K7;-><init>(Lo/A7;Lo/A7;IILjava/lang/String;)V

    .line 132
    goto/16 :goto_c

    .line 134
    :cond_3
    new-instance v4, Ljava/util/ArrayList;

    .line 136
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 139
    :goto_3
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 142
    move-result v7

    .line 143
    if-eq v7, v14, :cond_d

    .line 145
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 148
    move-result v7

    .line 149
    if-eq v7, v3, :cond_4

    .line 151
    goto :goto_3

    .line 152
    :cond_4
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 155
    move-result-object v7

    .line 156
    const-string v9, "font"

    .line 158
    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 161
    move-result v7

    .line 162
    if-eqz v7, :cond_c

    .line 164
    invoke-static/range {p0 .. p0}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    .line 167
    move-result-object v7

    .line 168
    sget-object v9, Lo/cd;->c:[I

    .line 170
    invoke-virtual {v0, v7, v9}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 173
    move-result-object v7

    .line 174
    const/16 v9, 0x8

    .line 176
    invoke-virtual {v7, v9}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 179
    move-result v11

    .line 180
    if-eqz v11, :cond_5

    .line 182
    goto :goto_4

    .line 183
    :cond_5
    move v9, v2

    .line 184
    :goto_4
    const/16 v11, 0x190

    .line 186
    invoke-virtual {v7, v9, v11}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 189
    move-result v19

    .line 190
    invoke-virtual {v7, v10}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 193
    move-result v9

    .line 194
    if-eqz v9, :cond_6

    .line 196
    move v9, v10

    .line 197
    goto :goto_5

    .line 198
    :cond_6
    move v9, v3

    .line 199
    :goto_5
    invoke-virtual {v7, v9, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 202
    move-result v9

    .line 203
    if-ne v2, v9, :cond_7

    .line 205
    move/from16 v20, v2

    .line 207
    goto :goto_6

    .line 208
    :cond_7
    move/from16 v20, v6

    .line 210
    :goto_6
    const/16 v9, 0x9

    .line 212
    invoke-virtual {v7, v9}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 215
    move-result v11

    .line 216
    if-eqz v11, :cond_8

    .line 218
    goto :goto_7

    .line 219
    :cond_8
    move v9, v14

    .line 220
    :goto_7
    invoke-virtual {v7, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 223
    move-result v11

    .line 224
    if-eqz v11, :cond_9

    .line 226
    move v11, v1

    .line 227
    goto :goto_8

    .line 228
    :cond_9
    move v11, v15

    .line 229
    :goto_8
    invoke-virtual {v7, v11}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 232
    move-result-object v21

    .line 233
    invoke-virtual {v7, v9, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 236
    move-result v22

    .line 237
    invoke-virtual {v7, v8}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 240
    move-result v9

    .line 241
    if-eqz v9, :cond_a

    .line 243
    move v9, v8

    .line 244
    goto :goto_9

    .line 245
    :cond_a
    move v9, v6

    .line 246
    :goto_9
    invoke-virtual {v7, v9, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 249
    move-result v23

    .line 250
    invoke-virtual {v7, v9}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 253
    move-result-object v18

    .line 254
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 257
    :goto_a
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 260
    move-result v7

    .line 261
    if-eq v7, v14, :cond_b

    .line 263
    invoke-static/range {p0 .. p0}, Lo/L1;->b0(Landroid/content/res/XmlResourceParser;)V

    .line 266
    goto :goto_a

    .line 267
    :cond_b
    new-instance v7, Lo/J7;

    .line 269
    move-object/from16 v17, v7

    .line 271
    invoke-direct/range {v17 .. v23}, Lo/J7;-><init>(Ljava/lang/String;IZLjava/lang/String;II)V

    .line 274
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 277
    goto/16 :goto_3

    .line 279
    :cond_c
    invoke-static/range {p0 .. p0}, Lo/L1;->b0(Landroid/content/res/XmlResourceParser;)V

    .line 282
    goto/16 :goto_3

    .line 284
    :cond_d
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    .line 287
    move-result v0

    .line 288
    if-eqz v0, :cond_e

    .line 290
    goto :goto_b

    .line 291
    :cond_e
    new-instance v1, Lo/I7;

    .line 293
    new-array v0, v6, [Lo/J7;

    .line 295
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 298
    move-result-object v0

    .line 299
    check-cast v0, [Lo/J7;

    .line 301
    invoke-direct {v1, v0}, Lo/I7;-><init>([Lo/J7;)V

    .line 304
    goto :goto_c

    .line 305
    :cond_f
    invoke-static/range {p0 .. p0}, Lo/L1;->b0(Landroid/content/res/XmlResourceParser;)V

    .line 308
    :goto_b
    const/4 v1, 0x0

    .line 309
    :goto_c
    return-object v1

    .line 310
    :cond_10
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 312
    const-string v1, "No start tag found"

    .line 314
    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 317
    throw v0
.end method

.method public static Q(Ljava/io/InputStream;I)[B
    .locals 3

    .line 1
    new-array v0, p1, [B

    .line 3
    const/4 v1, 0x0

    .line 4
    :goto_0
    if-ge v1, p1, :cond_1

    .line 6
    sub-int v2, p1, v1

    .line 8
    invoke-virtual {p0, v0, v1, v2}, Ljava/io/InputStream;->read([BII)I

    .line 11
    move-result v2

    .line 12
    if-ltz v2, :cond_0

    .line 14
    add-int/2addr v1, v2

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const-string p0, "Not enough bytes to read: "

    .line 18
    invoke-static {p1, p0}, Lo/jf;->a(ILjava/lang/String;)Ljava/lang/String;

    .line 21
    move-result-object p0

    .line 22
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 24
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 27
    throw p1

    .line 28
    :cond_1
    return-object v0
.end method

.method public static final R(Ljava/io/InputStream;)[B
    .locals 3

    .line 1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    .line 3
    const/16 v1, 0x2000

    .line 5
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    .line 8
    move-result v2

    .line 9
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    .line 12
    move-result v1

    .line 13
    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 16
    invoke-static {p0, v0}, Lo/L1;->o(Ljava/io/InputStream;Ljava/io/ByteArrayOutputStream;)V

    .line 19
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 22
    move-result-object p0

    .line 23
    const-string v0, "toByteArray(...)"

    .line 25
    invoke-static {p0, v0}, Lo/x9;->n(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    return-object p0
.end method

.method public static S(Landroid/content/res/Resources;I)Ljava/util/List;
    .locals 8

    .line 1
    if-nez p1, :cond_0

    .line 3
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 6
    move-result-object p0

    .line 7
    return-object p0

    .line 8
    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    .line 11
    move-result-object v0

    .line 12
    :try_start_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I

    .line 15
    move-result v1

    .line 16
    if-nez v1, :cond_1

    .line 18
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 21
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 25
    return-object p0

    .line 26
    :catchall_0
    move-exception p0

    .line 27
    goto :goto_3

    .line 28
    :cond_1
    :try_start_1
    new-instance v1, Ljava/util/ArrayList;

    .line 30
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 33
    const/4 v2, 0x0

    .line 34
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getType(I)I

    .line 37
    move-result v3

    .line 38
    const/4 v4, 0x1

    .line 39
    if-ne v3, v4, :cond_4

    .line 41
    move p1, v2

    .line 42
    :goto_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I

    .line 45
    move-result v3

    .line 46
    if-ge p1, v3, :cond_6

    .line 48
    invoke-virtual {v0, p1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 51
    move-result v3

    .line 52
    if-eqz v3, :cond_3

    .line 54
    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 57
    move-result-object v3

    .line 58
    new-instance v4, Ljava/util/ArrayList;

    .line 60
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 63
    array-length v5, v3

    .line 64
    move v6, v2

    .line 65
    :goto_1
    if-ge v6, v5, :cond_2

    .line 67
    aget-object v7, v3, v6

    .line 69
    invoke-static {v7, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    .line 72
    move-result-object v7

    .line 73
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    add-int/lit8 v6, v6, 0x1

    .line 78
    goto :goto_1

    .line 79
    :cond_2
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    :cond_3
    add-int/lit8 p1, p1, 0x1

    .line 84
    goto :goto_0

    .line 85
    :cond_4
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 88
    move-result-object p0

    .line 89
    new-instance p1, Ljava/util/ArrayList;

    .line 91
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 94
    array-length v3, p0

    .line 95
    move v4, v2

    .line 96
    :goto_2
    if-ge v4, v3, :cond_5

    .line 98
    aget-object v5, p0, v4

    .line 100
    invoke-static {v5, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    .line 103
    move-result-object v5

    .line 104
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    add-int/lit8 v4, v4, 0x1

    .line 109
    goto :goto_2

    .line 110
    :cond_5
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 113
    :cond_6
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 116
    return-object v1

    .line 117
    :goto_3
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 120
    throw p0
.end method

.method public static T(Ljava/io/FileInputStream;II)[B
    .locals 8

    .line 1
    new-instance v0, Ljava/util/zip/Inflater;

    .line 3
    invoke-direct {v0}, Ljava/util/zip/Inflater;-><init>()V

    .line 6
    :try_start_0
    new-array v1, p2, [B

    .line 8
    const/16 v2, 0x800

    .line 10
    new-array v2, v2, [B

    .line 12
    const/4 v3, 0x0

    .line 13
    move v4, v3

    .line 14
    move v5, v4

    .line 15
    :goto_0
    invoke-virtual {v0}, Ljava/util/zip/Inflater;->finished()Z

    .line 18
    move-result v6

    .line 19
    if-nez v6, :cond_1

    .line 21
    invoke-virtual {v0}, Ljava/util/zip/Inflater;->needsDictionary()Z

    .line 24
    move-result v6

    .line 25
    if-nez v6, :cond_1

    .line 27
    if-ge v4, p1, :cond_1

    .line 29
    invoke-virtual {p0, v2}, Ljava/io/InputStream;->read([B)I

    .line 32
    move-result v6

    .line 33
    if-ltz v6, :cond_0

    .line 35
    invoke-virtual {v0, v2, v3, v6}, Ljava/util/zip/Inflater;->setInput([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    sub-int v7, p2, v5

    .line 40
    :try_start_1
    invoke-virtual {v0, v1, v5, v7}, Ljava/util/zip/Inflater;->inflate([BII)I

    .line 43
    move-result v7
    :try_end_1
    .catch Ljava/util/zip/DataFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 44
    add-int/2addr v5, v7

    .line 45
    add-int/2addr v4, v6

    .line 46
    goto :goto_0

    .line 47
    :catchall_0
    move-exception p0

    .line 48
    goto :goto_1

    .line 49
    :catch_0
    move-exception p0

    .line 50
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 53
    move-result-object p0

    .line 54
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 56
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 59
    throw p1

    .line 60
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 62
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 65
    const-string p2, "Invalid zip data. Stream ended after $totalBytesRead bytes. Expected "

    .line 67
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 73
    const-string p1, " bytes"

    .line 75
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    move-result-object p0

    .line 82
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 84
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 87
    throw p1

    .line 88
    :cond_1
    if-ne v4, p1, :cond_3

    .line 90
    invoke-virtual {v0}, Ljava/util/zip/Inflater;->finished()Z

    .line 93
    move-result p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 94
    if-eqz p0, :cond_2

    .line 96
    invoke-virtual {v0}, Ljava/util/zip/Inflater;->end()V

    .line 99
    return-object v1

    .line 100
    :cond_2
    :try_start_3
    const-string p0, "Inflater did not finish"

    .line 102
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 104
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 107
    throw p1

    .line 108
    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    .line 110
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 113
    const-string p2, "Didn\'t read enough bytes during decompression. expected="

    .line 115
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 121
    const-string p1, " actual="

    .line 123
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 129
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 132
    move-result-object p0

    .line 133
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 135
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 138
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 139
    :goto_1
    invoke-virtual {v0}, Ljava/util/zip/Inflater;->end()V

    .line 142
    throw p0
.end method

.method public static U(Ljava/io/InputStream;I)J
    .locals 6

    .line 1
    invoke-static {p0, p1}, Lo/L1;->Q(Ljava/io/InputStream;I)[B

    .line 4
    move-result-object p0

    .line 5
    const-wide/16 v0, 0x0

    .line 7
    const/4 v2, 0x0

    .line 8
    :goto_0
    if-ge v2, p1, :cond_0

    .line 10
    aget-byte v3, p0, v2

    .line 12
    and-int/lit16 v3, v3, 0xff

    .line 14
    int-to-long v3, v3

    .line 15
    mul-int/lit8 v5, v2, 0x8

    .line 17
    shl-long/2addr v3, v5

    .line 18
    add-long/2addr v0, v3

    .line 19
    add-int/lit8 v2, v2, 0x1

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    return-wide v0
.end method

.method public static V(Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/internal/CheckableImageButton;Landroid/content/res/ColorStateList;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 8
    move-result-object v1

    .line 9
    if-eqz v1, :cond_1

    .line 11
    if-eqz p2, :cond_1

    .line 13
    invoke-virtual {p2}, Landroid/content/res/ColorStateList;->isStateful()Z

    .line 16
    move-result v1

    .line 17
    if-nez v1, :cond_0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    .line 23
    move-result-object p0

    .line 24
    invoke-virtual {p1}, Landroid/view/View;->getDrawableState()[I

    .line 27
    move-result-object v1

    .line 28
    array-length v2, p0

    .line 29
    array-length v3, p0

    .line 30
    array-length v4, v1

    .line 31
    add-int/2addr v3, v4

    .line 32
    invoke-static {p0, v3}, Ljava/util/Arrays;->copyOf([II)[I

    .line 35
    move-result-object p0

    .line 36
    const/4 v3, 0x0

    .line 37
    array-length v4, v1

    .line 38
    invoke-static {v1, v3, p0, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 41
    invoke-virtual {p2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    .line 44
    move-result v1

    .line 45
    invoke-virtual {p2, p0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    .line 48
    move-result p0

    .line 49
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 52
    move-result-object p2

    .line 53
    invoke-static {p0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 56
    move-result-object p0

    .line 57
    invoke-virtual {p2, p0}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 60
    invoke-virtual {p1, p2}, Lo/C1;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 63
    :cond_1
    :goto_0
    return-void
.end method

.method public static W(Landroid/content/Context;Lo/m5;)V
    .locals 4

    .line 1
    iget-object v0, p1, Lo/m5;->c:Ljava/lang/String;

    .line 3
    sput-object v0, Lo/L1;->a:Ljava/lang/String;

    .line 5
    iget-object v0, p1, Lo/m5;->a:Ljava/lang/String;

    .line 7
    invoke-static {p0, v0}, Lcom/ffrt/proxyread/Integrity;->f(Landroid/content/Context;Ljava/lang/String;)[B

    .line 10
    move-result-object v0

    .line 11
    const/4 v1, 0x2

    .line 12
    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 15
    move-result-object v0

    .line 16
    const-string v1, "crg_auth"

    .line 18
    const/4 v2, 0x0

    .line 19
    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 22
    move-result-object p0

    .line 23
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 26
    move-result-object p0

    .line 27
    iget-object v1, p1, Lo/m5;->a:Ljava/lang/String;

    .line 29
    const-string v2, "session_jws"

    .line 31
    invoke-interface {p0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 34
    move-result-object p0

    .line 35
    iget-object v1, p1, Lo/m5;->b:Ljava/lang/String;

    .line 37
    const-string v2, "license"

    .line 39
    invoke-interface {p0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 42
    move-result-object p0

    .line 43
    iget-wide v1, p1, Lo/m5;->e:J

    .line 45
    const-string v3, "expires_at"

    .line 47
    invoke-interface {p0, v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 50
    move-result-object p0

    .line 51
    iget-object v1, p1, Lo/m5;->c:Ljava/lang/String;

    .line 53
    const-string v2, "user"

    .line 55
    invoke-interface {p0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 58
    move-result-object p0

    .line 59
    iget-object p1, p1, Lo/m5;->g:Ljava/lang/String;

    .line 61
    const-string v1, "time_remaining"

    .line 63
    invoke-interface {p0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 66
    move-result-object p0

    .line 67
    const-string p1, "fit"

    .line 69
    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 72
    move-result-object p0

    .line 73
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 76
    const/4 p0, 0x1

    .line 77
    sput-boolean p0, Lo/L1;->b:Z

    .line 79
    return-void
.end method

.method public static Z(Lcom/google/android/material/internal/CheckableImageButton;Landroid/view/View$OnLongClickListener;)V
    .locals 3

    .line 1
    sget-object v0, Lo/Dh;->a:Ljava/util/WeakHashMap;

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->hasOnClickListeners()Z

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    const/4 v2, 0x1

    .line 9
    if-eqz p1, :cond_0

    .line 11
    move p1, v2

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move p1, v1

    .line 14
    :goto_0
    if-nez v0, :cond_1

    .line 16
    if-eqz p1, :cond_2

    .line 18
    :cond_1
    move v1, v2

    .line 19
    :cond_2
    invoke-virtual {p0, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 22
    invoke-virtual {p0, v0}, Landroid/view/View;->setClickable(Z)V

    .line 25
    invoke-virtual {p0, v0}, Lcom/google/android/material/internal/CheckableImageButton;->setPressable(Z)V

    .line 28
    invoke-virtual {p0, p1}, Landroid/view/View;->setLongClickable(Z)V

    .line 31
    if-eqz v1, :cond_3

    .line 33
    goto :goto_1

    .line 34
    :cond_3
    const/4 v2, 0x2

    .line 35
    :goto_1
    invoke-virtual {p0, v2}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 38
    return-void
.end method

.method public static a0(Landroid/graphics/drawable/Drawable;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 4
    return-void
.end method

.method public static b0(Landroid/content/res/XmlResourceParser;)V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    :goto_0
    if-lez v0, :cond_2

    .line 4
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 7
    move-result v1

    .line 8
    const/4 v2, 0x2

    .line 9
    if-eq v1, v2, :cond_1

    .line 11
    const/4 v2, 0x3

    .line 12
    if-eq v1, v2, :cond_0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 17
    goto :goto_0

    .line 18
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_2
    return-void
.end method

.method public static final c(Lo/G2;I)V
    .locals 1

    .line 1
    const-string v0, "<this>"

    .line 3
    invoke-static {p0, v0}, Lo/x9;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    new-array v0, p1, [I

    .line 8
    iput-object v0, p0, Lo/G2;->a:[I

    .line 10
    new-array p1, p1, [Ljava/lang/Object;

    .line 12
    iput-object p1, p0, Lo/G2;->b:[Ljava/lang/Object;

    .line 14
    return-void
.end method

.method public static c0(Landroid/content/Context;I)I
    .locals 1

    .line 1
    const v0, 0x1030001

    .line 4
    filled-new-array {p1}, [I

    .line 7
    move-result-object p1

    .line 8
    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    .line 11
    move-result-object p0

    .line 12
    const/4 p1, 0x0

    .line 13
    const/4 v0, -0x1

    .line 14
    invoke-virtual {p0, p1, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 17
    move-result p1

    .line 18
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 21
    return p1
.end method

.method public static d0(IIII)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x4

    .line 3
    const/4 v2, 0x2

    .line 4
    const/4 v3, 0x0

    .line 5
    if-eq p2, v0, :cond_1

    .line 7
    if-eq p2, v2, :cond_1

    .line 9
    if-ne p2, v1, :cond_0

    .line 11
    if-eq p0, v2, :cond_0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    move p0, v3

    .line 15
    goto :goto_1

    .line 16
    :cond_1
    :goto_0
    move p0, v0

    .line 17
    :goto_1
    if-eq p3, v0, :cond_3

    .line 19
    if-eq p3, v2, :cond_3

    .line 21
    if-ne p3, v1, :cond_2

    .line 23
    if-eq p1, v2, :cond_2

    .line 25
    goto :goto_2

    .line 26
    :cond_2
    move p1, v3

    .line 27
    goto :goto_3

    .line 28
    :cond_3
    :goto_2
    move p1, v0

    .line 29
    :goto_3
    if-nez p0, :cond_5

    .line 31
    if-eqz p1, :cond_4

    .line 33
    goto :goto_4

    .line 34
    :cond_4
    return v3

    .line 35
    :cond_5
    :goto_4
    return v0
.end method

.method public static f(Lo/M4;Lo/ba;Ljava/util/ArrayList;I)V
    .locals 36

    move-object/from16 v0, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    const/4 v12, 0x2

    if-nez p3, :cond_0

    .line 1
    iget v1, v0, Lo/M4;->z0:I

    .line 2
    iget-object v2, v0, Lo/M4;->C0:[Lo/B3;

    move v14, v1

    move-object v15, v2

    const/16 v16, 0x0

    goto :goto_0

    .line 3
    :cond_0
    iget v1, v0, Lo/M4;->A0:I

    .line 4
    iget-object v2, v0, Lo/M4;->B0:[Lo/B3;

    move v14, v1

    move-object v15, v2

    move/from16 v16, v12

    :goto_0
    const/4 v9, 0x0

    :goto_1
    if-ge v9, v14, :cond_70

    .line 5
    aget-object v1, v15, v9

    .line 6
    iget-boolean v2, v1, Lo/B3;->q:Z

    .line 7
    iget-object v8, v1, Lo/B3;->a:Lo/L4;

    const/4 v3, 0x3

    const/4 v4, 0x1

    const/16 v7, 0x8

    const/16 v17, 0x0

    if-nez v2, :cond_19

    .line 8
    iget v2, v1, Lo/B3;->l:I

    mul-int/lit8 v6, v2, 0x2

    move-object v13, v8

    move-object/from16 v20, v13

    const/16 v18, 0x0

    :goto_2
    if-nez v18, :cond_14

    .line 9
    iget v5, v1, Lo/B3;->i:I

    add-int/2addr v5, v4

    iput v5, v1, Lo/B3;->i:I

    .line 10
    iget-object v5, v13, Lo/L4;->m0:[Lo/L4;

    aput-object v17, v5, v2

    .line 11
    iget-object v5, v13, Lo/L4;->l0:[Lo/L4;

    aput-object v17, v5, v2

    .line 12
    iget v5, v13, Lo/L4;->g0:I

    .line 13
    iget-object v4, v13, Lo/L4;->Q:[Lo/x4;

    if-eq v5, v7, :cond_f

    .line 14
    invoke-virtual {v13, v2}, Lo/L4;->j(I)I

    .line 15
    aget-object v5, v4, v6

    invoke-virtual {v5}, Lo/x4;->e()I

    add-int/lit8 v5, v6, 0x1

    .line 16
    aget-object v23, v4, v5

    invoke-virtual/range {v23 .. v23}, Lo/x4;->e()I

    .line 17
    aget-object v23, v4, v6

    invoke-virtual/range {v23 .. v23}, Lo/x4;->e()I

    .line 18
    aget-object v5, v4, v5

    invoke-virtual {v5}, Lo/x4;->e()I

    .line 19
    iget-object v5, v1, Lo/B3;->b:Lo/L4;

    if-nez v5, :cond_1

    .line 20
    iput-object v13, v1, Lo/B3;->b:Lo/L4;

    .line 21
    :cond_1
    iput-object v13, v1, Lo/B3;->d:Lo/L4;

    .line 22
    iget-object v5, v13, Lo/L4;->p0:[I

    aget v5, v5, v2

    if-ne v5, v3, :cond_f

    .line 23
    iget-object v7, v13, Lo/L4;->t:[I

    aget v7, v7, v2

    if-eqz v7, :cond_3

    if-eq v7, v3, :cond_3

    if-ne v7, v12, :cond_2

    goto :goto_3

    :cond_2
    move/from16 v25, v9

    goto :goto_5

    .line 24
    :cond_3
    :goto_3
    iget v12, v1, Lo/B3;->j:I

    const/16 v22, 0x1

    add-int/lit8 v12, v12, 0x1

    iput v12, v1, Lo/B3;->j:I

    .line 25
    iget-object v12, v13, Lo/L4;->k0:[F

    aget v12, v12, v2

    const/16 v21, 0x0

    cmpl-float v24, v12, v21

    if-lez v24, :cond_4

    .line 26
    iget v3, v1, Lo/B3;->k:F

    add-float/2addr v3, v12

    iput v3, v1, Lo/B3;->k:F

    .line 27
    :cond_4
    iget v3, v13, Lo/L4;->g0:I

    move/from16 v25, v9

    const/16 v9, 0x8

    if-eq v3, v9, :cond_8

    const/4 v3, 0x3

    if-ne v5, v3, :cond_8

    if-eqz v7, :cond_5

    if-ne v7, v3, :cond_8

    :cond_5
    const/4 v3, 0x0

    cmpg-float v5, v12, v3

    if-gez v5, :cond_6

    const/4 v3, 0x1

    .line 28
    iput-boolean v3, v1, Lo/B3;->n:Z

    goto :goto_4

    :cond_6
    const/4 v3, 0x1

    .line 29
    iput-boolean v3, v1, Lo/B3;->o:Z

    .line 30
    :goto_4
    iget-object v3, v1, Lo/B3;->h:Ljava/util/ArrayList;

    if-nez v3, :cond_7

    .line 31
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v1, Lo/B3;->h:Ljava/util/ArrayList;

    .line 32
    :cond_7
    iget-object v3, v1, Lo/B3;->h:Ljava/util/ArrayList;

    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33
    :cond_8
    iget-object v3, v1, Lo/B3;->f:Lo/L4;

    if-nez v3, :cond_9

    .line 34
    iput-object v13, v1, Lo/B3;->f:Lo/L4;

    .line 35
    :cond_9
    iget-object v3, v1, Lo/B3;->g:Lo/L4;

    if-eqz v3, :cond_a

    .line 36
    iget-object v3, v3, Lo/L4;->l0:[Lo/L4;

    aput-object v13, v3, v2

    .line 37
    :cond_a
    iput-object v13, v1, Lo/B3;->g:Lo/L4;

    :goto_5
    if-nez v2, :cond_c

    .line 38
    iget v3, v13, Lo/L4;->r:I

    if-eqz v3, :cond_b

    goto :goto_6

    .line 39
    :cond_b
    iget v3, v13, Lo/L4;->u:I

    if-nez v3, :cond_e

    iget v3, v13, Lo/L4;->v:I

    goto :goto_6

    .line 40
    :cond_c
    iget v3, v13, Lo/L4;->s:I

    if-eqz v3, :cond_d

    goto :goto_6

    .line 41
    :cond_d
    iget v3, v13, Lo/L4;->x:I

    if-nez v3, :cond_e

    iget v3, v13, Lo/L4;->y:I

    :cond_e
    :goto_6
    move-object/from16 v3, v20

    goto :goto_7

    :cond_f
    move/from16 v25, v9

    goto :goto_6

    :goto_7
    if-eq v3, v13, :cond_10

    .line 42
    iget-object v3, v3, Lo/L4;->m0:[Lo/L4;

    aput-object v13, v3, v2

    :cond_10
    add-int/lit8 v3, v6, 0x1

    .line 43
    aget-object v3, v4, v3

    iget-object v3, v3, Lo/x4;->f:Lo/x4;

    if-eqz v3, :cond_11

    .line 44
    iget-object v3, v3, Lo/x4;->d:Lo/L4;

    iget-object v4, v3, Lo/L4;->Q:[Lo/x4;

    aget-object v4, v4, v6

    iget-object v4, v4, Lo/x4;->f:Lo/x4;

    if-eqz v4, :cond_11

    iget-object v4, v4, Lo/x4;->d:Lo/L4;

    if-eq v4, v13, :cond_12

    :cond_11
    move-object/from16 v3, v17

    :cond_12
    if-eqz v3, :cond_13

    goto :goto_8

    :cond_13
    move-object v3, v13

    const/16 v18, 0x1

    :goto_8
    move-object/from16 v20, v13

    move/from16 v9, v25

    const/4 v4, 0x1

    const/16 v7, 0x8

    const/4 v12, 0x2

    move-object v13, v3

    const/4 v3, 0x3

    goto/16 :goto_2

    :cond_14
    move/from16 v25, v9

    .line 45
    iget-object v3, v1, Lo/B3;->b:Lo/L4;

    if-eqz v3, :cond_15

    .line 46
    iget-object v3, v3, Lo/L4;->Q:[Lo/x4;

    aget-object v3, v3, v6

    invoke-virtual {v3}, Lo/x4;->e()I

    .line 47
    :cond_15
    iget-object v3, v1, Lo/B3;->d:Lo/L4;

    if-eqz v3, :cond_16

    add-int/lit8 v6, v6, 0x1

    .line 48
    iget-object v3, v3, Lo/L4;->Q:[Lo/x4;

    aget-object v3, v3, v6

    invoke-virtual {v3}, Lo/x4;->e()I

    .line 49
    :cond_16
    iput-object v13, v1, Lo/B3;->c:Lo/L4;

    if-nez v2, :cond_17

    .line 50
    iget-boolean v2, v1, Lo/B3;->m:Z

    if-eqz v2, :cond_17

    .line 51
    iput-object v13, v1, Lo/B3;->e:Lo/L4;

    goto :goto_9

    .line 52
    :cond_17
    iput-object v8, v1, Lo/B3;->e:Lo/L4;

    .line 53
    :goto_9
    iget-boolean v2, v1, Lo/B3;->o:Z

    if-eqz v2, :cond_18

    iget-boolean v2, v1, Lo/B3;->n:Z

    if-eqz v2, :cond_18

    const/4 v2, 0x1

    goto :goto_a

    :cond_18
    const/4 v2, 0x0

    :goto_a
    iput-boolean v2, v1, Lo/B3;->p:Z

    const/4 v2, 0x1

    goto :goto_b

    :cond_19
    move/from16 v25, v9

    move v2, v4

    .line 54
    :goto_b
    iput-boolean v2, v1, Lo/B3;->q:Z

    if-eqz v11, :cond_1b

    .line 55
    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    goto :goto_c

    :cond_1a
    move/from16 v30, v14

    move-object/from16 v31, v15

    move/from16 v23, v25

    const/16 v19, 0x0

    goto/16 :goto_4b

    .line 56
    :cond_1b
    :goto_c
    iget-object v12, v1, Lo/B3;->c:Lo/L4;

    .line 57
    iget-object v13, v1, Lo/B3;->b:Lo/L4;

    .line 58
    iget-object v9, v1, Lo/B3;->d:Lo/L4;

    .line 59
    iget-object v2, v1, Lo/B3;->e:Lo/L4;

    .line 60
    iget v3, v1, Lo/B3;->k:F

    .line 61
    iget-object v4, v0, Lo/L4;->p0:[I

    aget v4, v4, p3

    const/4 v7, 0x2

    if-ne v4, v7, :cond_1c

    const/4 v4, 0x1

    goto :goto_d

    :cond_1c
    const/4 v4, 0x0

    :goto_d
    if-nez p3, :cond_20

    .line 62
    iget v5, v2, Lo/L4;->i0:I

    const/4 v6, 0x1

    if-nez v5, :cond_1d

    const/16 v22, 0x1

    goto :goto_e

    :cond_1d
    const/16 v22, 0x0

    :goto_e
    if-ne v5, v6, :cond_1e

    move/from16 v18, v6

    goto :goto_f

    :cond_1e
    const/16 v18, 0x0

    :goto_f
    if-ne v5, v7, :cond_1f

    move v5, v6

    goto :goto_10

    :cond_1f
    const/4 v5, 0x0

    :goto_10
    move/from16 v26, v3

    move-object v7, v8

    move/from16 v20, v22

    :goto_11
    const/4 v6, 0x0

    goto :goto_15

    :cond_20
    const/4 v6, 0x1

    .line 63
    iget v5, v2, Lo/L4;->j0:I

    if-nez v5, :cond_21

    move/from16 v18, v6

    goto :goto_12

    :cond_21
    const/16 v18, 0x0

    :goto_12
    if-ne v5, v6, :cond_22

    const/4 v6, 0x1

    goto :goto_13

    :cond_22
    const/4 v6, 0x0

    :goto_13
    if-ne v5, v7, :cond_23

    const/4 v5, 0x1

    goto :goto_14

    :cond_23
    const/4 v5, 0x0

    :goto_14
    move/from16 v26, v3

    move-object v7, v8

    move/from16 v20, v18

    move/from16 v18, v6

    goto :goto_11

    .line 64
    :goto_15
    iget-object v3, v0, Lo/L4;->Q:[Lo/x4;

    if-nez v6, :cond_31

    .line 65
    iget-object v11, v7, Lo/L4;->Q:[Lo/x4;

    aget-object v11, v11, v16

    if-eqz v5, :cond_24

    const/16 v27, 0x1

    goto :goto_16

    :cond_24
    const/16 v27, 0x4

    .line 66
    :goto_16
    invoke-virtual {v11}, Lo/x4;->e()I

    move-result v28

    move/from16 v29, v6

    .line 67
    iget-object v6, v7, Lo/L4;->p0:[I

    move/from16 v30, v14

    aget v14, v6, p3

    move-object/from16 v31, v15

    const/4 v15, 0x3

    if-ne v14, v15, :cond_25

    iget-object v14, v7, Lo/L4;->t:[I

    aget v14, v14, p3

    if-nez v14, :cond_25

    const/4 v14, 0x1

    goto :goto_17

    :cond_25
    const/4 v14, 0x0

    .line 68
    :goto_17
    iget-object v15, v11, Lo/x4;->f:Lo/x4;

    if-eqz v15, :cond_26

    if-eq v7, v8, :cond_26

    .line 69
    invoke-virtual {v15}, Lo/x4;->e()I

    move-result v15

    add-int v28, v15, v28

    :cond_26
    move/from16 v15, v28

    if-eqz v5, :cond_27

    if-eq v7, v8, :cond_27

    if-eq v7, v13, :cond_27

    move-object/from16 v28, v2

    const/16 v27, 0x8

    goto :goto_18

    :cond_27
    move-object/from16 v28, v2

    .line 70
    :goto_18
    iget-object v2, v11, Lo/x4;->f:Lo/x4;

    if-eqz v2, :cond_2b

    if-ne v7, v13, :cond_28

    move-object/from16 v32, v8

    .line 71
    iget-object v8, v11, Lo/x4;->i:Lo/We;

    iget-object v2, v2, Lo/x4;->i:Lo/We;

    move-object/from16 v33, v1

    const/4 v1, 0x6

    invoke-virtual {v10, v8, v2, v15, v1}, Lo/ba;->f(Lo/We;Lo/We;II)V

    goto :goto_19

    :cond_28
    move-object/from16 v33, v1

    move-object/from16 v32, v8

    .line 72
    iget-object v1, v11, Lo/x4;->i:Lo/We;

    iget-object v2, v2, Lo/x4;->i:Lo/We;

    const/16 v8, 0x8

    invoke-virtual {v10, v1, v2, v15, v8}, Lo/ba;->f(Lo/We;Lo/We;II)V

    :goto_19
    if-eqz v14, :cond_29

    if-nez v5, :cond_29

    const/16 v27, 0x5

    :cond_29
    if-ne v7, v13, :cond_2a

    if-eqz v5, :cond_2a

    .line 73
    iget-object v1, v7, Lo/L4;->S:[Z

    aget-boolean v1, v1, p3

    if-eqz v1, :cond_2a

    const/4 v1, 0x5

    goto :goto_1a

    :cond_2a
    move/from16 v1, v27

    .line 74
    :goto_1a
    iget-object v2, v11, Lo/x4;->i:Lo/We;

    iget-object v8, v11, Lo/x4;->f:Lo/x4;

    iget-object v8, v8, Lo/x4;->i:Lo/We;

    invoke-virtual {v10, v2, v8, v15, v1}, Lo/ba;->e(Lo/We;Lo/We;II)V

    goto :goto_1b

    :cond_2b
    move-object/from16 v33, v1

    move-object/from16 v32, v8

    .line 75
    :goto_1b
    iget-object v1, v7, Lo/L4;->Q:[Lo/x4;

    if-eqz v4, :cond_2d

    .line 76
    iget v2, v7, Lo/L4;->g0:I

    const/16 v8, 0x8

    if-eq v2, v8, :cond_2c

    .line 77
    aget v2, v6, p3

    const/4 v6, 0x3

    if-ne v2, v6, :cond_2c

    add-int/lit8 v2, v16, 0x1

    .line 78
    aget-object v2, v1, v2

    iget-object v2, v2, Lo/x4;->i:Lo/We;

    aget-object v6, v1, v16

    iget-object v6, v6, Lo/x4;->i:Lo/We;

    const/4 v8, 0x0

    const/4 v11, 0x5

    invoke-virtual {v10, v2, v6, v8, v11}, Lo/ba;->f(Lo/We;Lo/We;II)V

    goto :goto_1c

    :cond_2c
    const/4 v8, 0x0

    .line 79
    :goto_1c
    aget-object v2, v1, v16

    iget-object v2, v2, Lo/x4;->i:Lo/We;

    aget-object v3, v3, v16

    iget-object v3, v3, Lo/x4;->i:Lo/We;

    const/16 v6, 0x8

    invoke-virtual {v10, v2, v3, v8, v6}, Lo/ba;->f(Lo/We;Lo/We;II)V

    :cond_2d
    add-int/lit8 v2, v16, 0x1

    .line 80
    aget-object v1, v1, v2

    iget-object v1, v1, Lo/x4;->f:Lo/x4;

    if-eqz v1, :cond_2e

    .line 81
    iget-object v1, v1, Lo/x4;->d:Lo/L4;

    iget-object v2, v1, Lo/L4;->Q:[Lo/x4;

    aget-object v2, v2, v16

    iget-object v2, v2, Lo/x4;->f:Lo/x4;

    if-eqz v2, :cond_2e

    iget-object v2, v2, Lo/x4;->d:Lo/L4;

    if-eq v2, v7, :cond_2f

    :cond_2e
    move-object/from16 v1, v17

    :cond_2f
    if-eqz v1, :cond_30

    move-object v7, v1

    move/from16 v6, v29

    goto :goto_1d

    :cond_30
    const/4 v6, 0x1

    :goto_1d
    move-object/from16 v11, p2

    move-object/from16 v2, v28

    move/from16 v14, v30

    move-object/from16 v15, v31

    move-object/from16 v8, v32

    move-object/from16 v1, v33

    goto/16 :goto_15

    :cond_31
    move-object/from16 v33, v1

    move-object/from16 v28, v2

    move-object/from16 v32, v8

    move/from16 v30, v14

    move-object/from16 v31, v15

    if-eqz v9, :cond_34

    .line 82
    iget-object v1, v12, Lo/L4;->Q:[Lo/x4;

    add-int/lit8 v2, v16, 0x1

    aget-object v1, v1, v2

    iget-object v1, v1, Lo/x4;->f:Lo/x4;

    if-eqz v1, :cond_34

    .line 83
    iget-object v1, v9, Lo/L4;->Q:[Lo/x4;

    aget-object v1, v1, v2

    .line 84
    iget-object v6, v9, Lo/L4;->p0:[I

    aget v6, v6, p3

    const/4 v7, 0x3

    if-ne v6, v7, :cond_32

    iget-object v6, v9, Lo/L4;->t:[I

    aget v6, v6, p3

    if-nez v6, :cond_32

    if-nez v5, :cond_32

    .line 85
    iget-object v6, v1, Lo/x4;->f:Lo/x4;

    iget-object v7, v6, Lo/x4;->d:Lo/L4;

    if-ne v7, v0, :cond_32

    .line 86
    iget-object v7, v1, Lo/x4;->i:Lo/We;

    iget-object v6, v6, Lo/x4;->i:Lo/We;

    .line 87
    invoke-virtual {v1}, Lo/x4;->e()I

    move-result v8

    neg-int v8, v8

    const/4 v11, 0x5

    .line 88
    invoke-virtual {v10, v7, v6, v8, v11}, Lo/ba;->e(Lo/We;Lo/We;II)V

    goto :goto_1e

    :cond_32
    const/4 v11, 0x5

    if-eqz v5, :cond_33

    .line 89
    iget-object v6, v1, Lo/x4;->f:Lo/x4;

    iget-object v7, v6, Lo/x4;->d:Lo/L4;

    if-ne v7, v0, :cond_33

    .line 90
    iget-object v7, v1, Lo/x4;->i:Lo/We;

    iget-object v6, v6, Lo/x4;->i:Lo/We;

    .line 91
    invoke-virtual {v1}, Lo/x4;->e()I

    move-result v8

    neg-int v8, v8

    const/4 v14, 0x4

    .line 92
    invoke-virtual {v10, v7, v6, v8, v14}, Lo/ba;->e(Lo/We;Lo/We;II)V

    .line 93
    :cond_33
    :goto_1e
    iget-object v6, v1, Lo/x4;->i:Lo/We;

    iget-object v7, v12, Lo/L4;->Q:[Lo/x4;

    aget-object v2, v7, v2

    iget-object v2, v2, Lo/x4;->f:Lo/x4;

    iget-object v2, v2, Lo/x4;->i:Lo/We;

    .line 94
    invoke-virtual {v1}, Lo/x4;->e()I

    move-result v1

    neg-int v1, v1

    const/4 v7, 0x6

    .line 95
    invoke-virtual {v10, v6, v2, v1, v7}, Lo/ba;->g(Lo/We;Lo/We;II)V

    goto :goto_1f

    :cond_34
    const/4 v11, 0x5

    :goto_1f
    if-eqz v4, :cond_35

    add-int/lit8 v1, v16, 0x1

    .line 96
    aget-object v2, v3, v1

    iget-object v2, v2, Lo/x4;->i:Lo/We;

    iget-object v3, v12, Lo/L4;->Q:[Lo/x4;

    aget-object v1, v3, v1

    iget-object v3, v1, Lo/x4;->i:Lo/We;

    .line 97
    invoke-virtual {v1}, Lo/x4;->e()I

    move-result v1

    const/16 v4, 0x8

    .line 98
    invoke-virtual {v10, v2, v3, v1, v4}, Lo/ba;->f(Lo/We;Lo/We;II)V

    :cond_35
    move-object/from16 v1, v33

    .line 99
    iget-object v2, v1, Lo/B3;->h:Ljava/util/ArrayList;

    if-eqz v2, :cond_3f

    .line 100
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_3f

    .line 101
    iget-boolean v6, v1, Lo/B3;->n:Z

    if-eqz v6, :cond_36

    iget-boolean v6, v1, Lo/B3;->p:Z

    if-nez v6, :cond_36

    .line 102
    iget v6, v1, Lo/B3;->j:I

    int-to-float v6, v6

    goto :goto_20

    :cond_36
    move/from16 v6, v26

    :goto_20
    move-object/from16 v14, v17

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_21
    if-ge v8, v3, :cond_3f

    .line 103
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lo/L4;

    .line 104
    iget-object v4, v15, Lo/L4;->k0:[F

    aget v4, v4, p3

    const/16 v21, 0x0

    cmpg-float v24, v4, v21

    .line 105
    iget-object v11, v15, Lo/L4;->Q:[Lo/x4;

    if-gez v24, :cond_38

    .line 106
    iget-boolean v4, v1, Lo/B3;->p:Z

    if-eqz v4, :cond_37

    add-int/lit8 v0, v16, 0x1

    .line 107
    aget-object v0, v11, v0

    iget-object v0, v0, Lo/x4;->i:Lo/We;

    aget-object v4, v11, v16

    iget-object v4, v4, Lo/x4;->i:Lo/We;

    const/4 v11, 0x0

    const/4 v15, 0x4

    invoke-virtual {v10, v0, v4, v11, v15}, Lo/ba;->e(Lo/We;Lo/We;II)V

    move/from16 v24, v15

    goto :goto_24

    :cond_37
    const/16 v24, 0x4

    const/high16 v4, 0x3f800000    # 1.0f

    :goto_22
    const/16 v21, 0x0

    goto :goto_23

    :cond_38
    const/16 v24, 0x4

    goto :goto_22

    :goto_23
    cmpl-float v26, v4, v21

    if-nez v26, :cond_39

    add-int/lit8 v0, v16, 0x1

    .line 108
    aget-object v0, v11, v0

    iget-object v0, v0, Lo/x4;->i:Lo/We;

    aget-object v4, v11, v16

    iget-object v4, v4, Lo/x4;->i:Lo/We;

    const/4 v11, 0x0

    const/16 v15, 0x8

    invoke-virtual {v10, v0, v4, v11, v15}, Lo/ba;->e(Lo/We;Lo/We;II)V

    :goto_24
    move-object/from16 v29, v2

    move/from16 v27, v3

    move/from16 v19, v11

    const/16 v21, 0x0

    goto/16 :goto_29

    :cond_39
    const/16 v19, 0x0

    if-eqz v14, :cond_3e

    .line 109
    iget-object v14, v14, Lo/L4;->Q:[Lo/x4;

    aget-object v0, v14, v16

    iget-object v0, v0, Lo/x4;->i:Lo/We;

    add-int/lit8 v27, v16, 0x1

    .line 110
    aget-object v14, v14, v27

    iget-object v14, v14, Lo/x4;->i:Lo/We;

    move-object/from16 v29, v2

    .line 111
    aget-object v2, v11, v16

    iget-object v2, v2, Lo/x4;->i:Lo/We;

    .line 112
    aget-object v11, v11, v27

    iget-object v11, v11, Lo/x4;->i:Lo/We;

    move/from16 v27, v3

    .line 113
    invoke-virtual/range {p1 .. p1}, Lo/ba;->l()Lo/F2;

    move-result-object v3

    move-object/from16 v33, v15

    const/4 v15, 0x0

    .line 114
    iput v15, v3, Lo/F2;->b:F

    cmpl-float v21, v6, v15

    const/high16 v15, -0x40800000    # -1.0f

    if-eqz v21, :cond_3a

    cmpl-float v21, v7, v4

    if-nez v21, :cond_3b

    :cond_3a
    move/from16 v26, v4

    move v4, v15

    const/high16 v15, 0x3f800000    # 1.0f

    const/16 v21, 0x0

    goto :goto_26

    :cond_3b
    const/16 v21, 0x0

    cmpl-float v34, v7, v21

    if-nez v34, :cond_3c

    .line 115
    iget-object v2, v3, Lo/F2;->d:Lo/y2;

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v2, v0, v7}, Lo/y2;->g(Lo/We;F)V

    .line 116
    iget-object v0, v3, Lo/F2;->d:Lo/y2;

    invoke-virtual {v0, v14, v15}, Lo/y2;->g(Lo/We;F)V

    :goto_25
    move/from16 v26, v4

    goto :goto_27

    :cond_3c
    const/high16 v15, 0x3f800000    # 1.0f

    if-nez v26, :cond_3d

    .line 117
    iget-object v0, v3, Lo/F2;->d:Lo/y2;

    invoke-virtual {v0, v2, v15}, Lo/y2;->g(Lo/We;F)V

    .line 118
    iget-object v0, v3, Lo/F2;->d:Lo/y2;

    const/high16 v2, -0x40800000    # -1.0f

    invoke-virtual {v0, v11, v2}, Lo/y2;->g(Lo/We;F)V

    goto :goto_25

    :cond_3d
    div-float/2addr v7, v6

    div-float v26, v4, v6

    div-float v7, v7, v26

    move/from16 v26, v4

    .line 119
    iget-object v4, v3, Lo/F2;->d:Lo/y2;

    invoke-virtual {v4, v0, v15}, Lo/y2;->g(Lo/We;F)V

    .line 120
    iget-object v0, v3, Lo/F2;->d:Lo/y2;

    const/high16 v4, -0x40800000    # -1.0f

    invoke-virtual {v0, v14, v4}, Lo/y2;->g(Lo/We;F)V

    .line 121
    iget-object v0, v3, Lo/F2;->d:Lo/y2;

    invoke-virtual {v0, v11, v7}, Lo/y2;->g(Lo/We;F)V

    .line 122
    iget-object v0, v3, Lo/F2;->d:Lo/y2;

    neg-float v4, v7

    invoke-virtual {v0, v2, v4}, Lo/y2;->g(Lo/We;F)V

    goto :goto_27

    .line 123
    :goto_26
    iget-object v7, v3, Lo/F2;->d:Lo/y2;

    invoke-virtual {v7, v0, v15}, Lo/y2;->g(Lo/We;F)V

    .line 124
    iget-object v0, v3, Lo/F2;->d:Lo/y2;

    invoke-virtual {v0, v14, v4}, Lo/y2;->g(Lo/We;F)V

    .line 125
    iget-object v0, v3, Lo/F2;->d:Lo/y2;

    invoke-virtual {v0, v11, v15}, Lo/y2;->g(Lo/We;F)V

    .line 126
    iget-object v0, v3, Lo/F2;->d:Lo/y2;

    invoke-virtual {v0, v2, v4}, Lo/y2;->g(Lo/We;F)V

    .line 127
    :goto_27
    invoke-virtual {v10, v3}, Lo/ba;->c(Lo/F2;)V

    goto :goto_28

    :cond_3e
    move-object/from16 v29, v2

    move/from16 v27, v3

    move/from16 v26, v4

    move-object/from16 v33, v15

    const/16 v21, 0x0

    :goto_28
    move/from16 v7, v26

    move-object/from16 v14, v33

    :goto_29
    add-int/lit8 v8, v8, 0x1

    move/from16 v3, v27

    move-object/from16 v2, v29

    const/4 v4, 0x1

    const/4 v11, 0x5

    move-object/from16 v0, p0

    goto/16 :goto_21

    :cond_3f
    const/16 v19, 0x0

    const/16 v24, 0x4

    if-eqz v13, :cond_41

    if-eq v13, v9, :cond_40

    if-eqz v5, :cond_41

    :cond_40
    move-object/from16 v0, v32

    goto :goto_2a

    :cond_41
    move-object v14, v9

    move/from16 v15, v25

    move-object/from16 v0, v32

    const/4 v11, 0x2

    goto/16 :goto_30

    .line 128
    :goto_2a
    iget-object v0, v0, Lo/L4;->Q:[Lo/x4;

    aget-object v0, v0, v16

    .line 129
    iget-object v1, v12, Lo/L4;->Q:[Lo/x4;

    add-int/lit8 v2, v16, 0x1

    aget-object v1, v1, v2

    .line 130
    iget-object v0, v0, Lo/x4;->f:Lo/x4;

    if-eqz v0, :cond_42

    .line 131
    iget-object v0, v0, Lo/x4;->i:Lo/We;

    move-object v3, v0

    goto :goto_2b

    :cond_42
    move-object/from16 v3, v17

    .line 132
    :goto_2b
    iget-object v0, v1, Lo/x4;->f:Lo/x4;

    if-eqz v0, :cond_43

    iget-object v0, v0, Lo/x4;->i:Lo/We;

    move-object v6, v0

    goto :goto_2c

    :cond_43
    move-object/from16 v6, v17

    .line 133
    :goto_2c
    iget-object v0, v13, Lo/L4;->Q:[Lo/x4;

    aget-object v0, v0, v16

    if-eqz v9, :cond_44

    .line 134
    iget-object v1, v9, Lo/L4;->Q:[Lo/x4;

    aget-object v1, v1, v2

    :cond_44
    if-eqz v3, :cond_46

    if-eqz v6, :cond_46

    if-nez p3, :cond_45

    move-object/from16 v2, v28

    .line 135
    iget v2, v2, Lo/L4;->d0:F

    :goto_2d
    move v5, v2

    goto :goto_2e

    :cond_45
    move-object/from16 v2, v28

    .line 136
    iget v2, v2, Lo/L4;->e0:F

    goto :goto_2d

    .line 137
    :goto_2e
    invoke-virtual {v0}, Lo/x4;->e()I

    move-result v4

    .line 138
    invoke-virtual {v1}, Lo/x4;->e()I

    move-result v8

    .line 139
    iget-object v2, v0, Lo/x4;->i:Lo/We;

    iget-object v7, v1, Lo/x4;->i:Lo/We;

    const/4 v0, 0x7

    move-object/from16 v1, p1

    const/4 v11, 0x2

    move-object v14, v9

    move/from16 v15, v25

    move v9, v0

    invoke-virtual/range {v1 .. v9}, Lo/ba;->b(Lo/We;Lo/We;IFLo/We;Lo/We;II)V

    goto :goto_2f

    :cond_46
    move-object v14, v9

    move/from16 v15, v25

    const/4 v11, 0x2

    :cond_47
    :goto_2f
    move/from16 v23, v15

    goto/16 :goto_47

    :goto_30
    if-eqz v20, :cond_58

    if-eqz v13, :cond_58

    .line 140
    iget v2, v1, Lo/B3;->j:I

    if-lez v2, :cond_48

    iget v1, v1, Lo/B3;->i:I

    if-ne v1, v2, :cond_48

    const/16 v22, 0x1

    goto :goto_31

    :cond_48
    move/from16 v22, v19

    :goto_31
    move-object v8, v13

    move-object v9, v8

    :goto_32
    if-eqz v9, :cond_47

    .line 141
    iget-object v1, v9, Lo/L4;->m0:[Lo/L4;

    aget-object v1, v1, p3

    move-object v7, v1

    :goto_33
    if-eqz v7, :cond_49

    .line 142
    iget v1, v7, Lo/L4;->g0:I

    const/16 v6, 0x8

    if-ne v1, v6, :cond_4a

    .line 143
    iget-object v1, v7, Lo/L4;->m0:[Lo/L4;

    aget-object v7, v1, p3

    goto :goto_33

    :cond_49
    const/16 v6, 0x8

    :cond_4a
    if-nez v7, :cond_4c

    if-ne v9, v14, :cond_4b

    goto :goto_34

    :cond_4b
    move-object/from16 v21, v7

    move-object/from16 v23, v8

    move-object v11, v9

    goto/16 :goto_39

    .line 144
    :cond_4c
    :goto_34
    iget-object v1, v9, Lo/L4;->Q:[Lo/x4;

    aget-object v2, v1, v16

    .line 145
    iget-object v3, v2, Lo/x4;->i:Lo/We;

    .line 146
    iget-object v4, v2, Lo/x4;->f:Lo/x4;

    if-eqz v4, :cond_4d

    .line 147
    iget-object v4, v4, Lo/x4;->i:Lo/We;

    goto :goto_35

    :cond_4d
    move-object/from16 v4, v17

    :goto_35
    if-eq v8, v9, :cond_4e

    .line 148
    iget-object v4, v8, Lo/L4;->Q:[Lo/x4;

    add-int/lit8 v5, v16, 0x1

    aget-object v4, v4, v5

    iget-object v4, v4, Lo/x4;->i:Lo/We;

    goto :goto_36

    :cond_4e
    if-ne v9, v13, :cond_50

    .line 149
    iget-object v4, v0, Lo/L4;->Q:[Lo/x4;

    aget-object v4, v4, v16

    iget-object v4, v4, Lo/x4;->f:Lo/x4;

    if-eqz v4, :cond_4f

    .line 150
    iget-object v4, v4, Lo/x4;->i:Lo/We;

    goto :goto_36

    :cond_4f
    move-object/from16 v4, v17

    .line 151
    :cond_50
    :goto_36
    invoke-virtual {v2}, Lo/x4;->e()I

    move-result v2

    add-int/lit8 v5, v16, 0x1

    .line 152
    aget-object v21, v1, v5

    invoke-virtual/range {v21 .. v21}, Lo/x4;->e()I

    move-result v21

    if-eqz v7, :cond_51

    .line 153
    iget-object v6, v7, Lo/L4;->Q:[Lo/x4;

    aget-object v6, v6, v16

    .line 154
    iget-object v11, v6, Lo/x4;->i:Lo/We;

    goto :goto_37

    .line 155
    :cond_51
    iget-object v6, v12, Lo/L4;->Q:[Lo/x4;

    aget-object v6, v6, v5

    iget-object v6, v6, Lo/x4;->f:Lo/x4;

    if-eqz v6, :cond_52

    .line 156
    iget-object v11, v6, Lo/x4;->i:Lo/We;

    goto :goto_37

    :cond_52
    move-object/from16 v11, v17

    .line 157
    :goto_37
    aget-object v1, v1, v5

    iget-object v1, v1, Lo/x4;->i:Lo/We;

    if-eqz v6, :cond_53

    .line 158
    invoke-virtual {v6}, Lo/x4;->e()I

    move-result v6

    add-int v21, v6, v21

    .line 159
    :cond_53
    iget-object v6, v8, Lo/L4;->Q:[Lo/x4;

    aget-object v6, v6, v5

    invoke-virtual {v6}, Lo/x4;->e()I

    move-result v6

    add-int/2addr v6, v2

    if-eqz v3, :cond_4b

    if-eqz v4, :cond_4b

    if-eqz v11, :cond_4b

    if-eqz v1, :cond_4b

    if-ne v9, v13, :cond_54

    .line 160
    iget-object v2, v13, Lo/L4;->Q:[Lo/x4;

    aget-object v2, v2, v16

    invoke-virtual {v2}, Lo/x4;->e()I

    move-result v2

    move v6, v2

    :cond_54
    if-ne v9, v14, :cond_55

    .line 161
    iget-object v2, v14, Lo/L4;->Q:[Lo/x4;

    aget-object v2, v2, v5

    invoke-virtual {v2}, Lo/x4;->e()I

    move-result v2

    move/from16 v21, v2

    :cond_55
    if-eqz v22, :cond_56

    const/16 v24, 0x8

    goto :goto_38

    :cond_56
    const/16 v24, 0x5

    :goto_38
    const/high16 v5, 0x3f000000    # 0.5f

    move-object/from16 v25, v1

    move-object/from16 v1, p1

    move-object v2, v3

    move-object v3, v4

    move v4, v6

    const/16 v23, 0x8

    move-object v6, v11

    move-object v11, v7

    move-object/from16 v7, v25

    move-object/from16 v23, v8

    move/from16 v8, v21

    move-object/from16 v21, v11

    move-object v11, v9

    move/from16 v9, v24

    .line 162
    invoke-virtual/range {v1 .. v9}, Lo/ba;->b(Lo/We;Lo/We;IFLo/We;Lo/We;II)V

    .line 163
    :goto_39
    iget v1, v11, Lo/L4;->g0:I

    const/16 v9, 0x8

    if-eq v1, v9, :cond_57

    move-object v8, v11

    goto :goto_3a

    :cond_57
    move-object/from16 v8, v23

    :goto_3a
    move-object/from16 v9, v21

    const/4 v11, 0x2

    goto/16 :goto_32

    :cond_58
    const/16 v9, 0x8

    if-eqz v18, :cond_47

    if-eqz v13, :cond_47

    .line 164
    iget v2, v1, Lo/B3;->j:I

    if-lez v2, :cond_59

    iget v1, v1, Lo/B3;->i:I

    if-ne v1, v2, :cond_59

    const/16 v22, 0x1

    goto :goto_3b

    :cond_59
    move/from16 v22, v19

    :goto_3b
    move-object v8, v13

    move-object v11, v8

    :goto_3c
    if-eqz v11, :cond_64

    .line 165
    iget-object v1, v11, Lo/L4;->m0:[Lo/L4;

    aget-object v1, v1, p3

    :goto_3d
    if-eqz v1, :cond_5a

    .line 166
    iget v2, v1, Lo/L4;->g0:I

    if-ne v2, v9, :cond_5a

    .line 167
    iget-object v1, v1, Lo/L4;->m0:[Lo/L4;

    aget-object v1, v1, p3

    goto :goto_3d

    :cond_5a
    if-eq v11, v13, :cond_62

    if-eq v11, v14, :cond_62

    if-eqz v1, :cond_62

    if-ne v1, v14, :cond_5b

    move-object/from16 v7, v17

    goto :goto_3e

    :cond_5b
    move-object v7, v1

    .line 168
    :goto_3e
    iget-object v1, v11, Lo/L4;->Q:[Lo/x4;

    aget-object v2, v1, v16

    .line 169
    iget-object v3, v2, Lo/x4;->i:Lo/We;

    .line 170
    iget-object v4, v8, Lo/L4;->Q:[Lo/x4;

    add-int/lit8 v5, v16, 0x1

    aget-object v4, v4, v5

    iget-object v4, v4, Lo/x4;->i:Lo/We;

    .line 171
    invoke-virtual {v2}, Lo/x4;->e()I

    move-result v2

    .line 172
    aget-object v6, v1, v5

    invoke-virtual {v6}, Lo/x4;->e()I

    move-result v6

    if-eqz v7, :cond_5d

    .line 173
    iget-object v1, v7, Lo/L4;->Q:[Lo/x4;

    aget-object v1, v1, v16

    .line 174
    iget-object v9, v1, Lo/x4;->i:Lo/We;

    move-object/from16 v21, v7

    .line 175
    iget-object v7, v1, Lo/x4;->f:Lo/x4;

    if-eqz v7, :cond_5c

    .line 176
    iget-object v7, v7, Lo/x4;->i:Lo/We;

    goto :goto_40

    :cond_5c
    move-object/from16 v7, v17

    goto :goto_40

    :cond_5d
    move-object/from16 v21, v7

    .line 177
    iget-object v7, v14, Lo/L4;->Q:[Lo/x4;

    aget-object v7, v7, v16

    if-eqz v7, :cond_5e

    .line 178
    iget-object v9, v7, Lo/x4;->i:Lo/We;

    goto :goto_3f

    :cond_5e
    move-object/from16 v9, v17

    .line 179
    :goto_3f
    aget-object v1, v1, v5

    iget-object v1, v1, Lo/x4;->i:Lo/We;

    move-object/from16 v35, v7

    move-object v7, v1

    move-object/from16 v1, v35

    :goto_40
    if-eqz v1, :cond_5f

    .line 180
    invoke-virtual {v1}, Lo/x4;->e()I

    move-result v1

    add-int/2addr v1, v6

    move/from16 v23, v1

    goto :goto_41

    :cond_5f
    move/from16 v23, v6

    .line 181
    :goto_41
    iget-object v1, v8, Lo/L4;->Q:[Lo/x4;

    aget-object v1, v1, v5

    invoke-virtual {v1}, Lo/x4;->e()I

    move-result v1

    add-int v5, v1, v2

    if-eqz v22, :cond_60

    const/16 v25, 0x8

    goto :goto_42

    :cond_60
    move/from16 v25, v24

    :goto_42
    if-eqz v3, :cond_61

    if-eqz v4, :cond_61

    if-eqz v9, :cond_61

    if-eqz v7, :cond_61

    const/high16 v6, 0x3f000000    # 0.5f

    move-object/from16 v1, p1

    move-object v2, v3

    move-object v3, v4

    move v4, v5

    move v5, v6

    move-object v6, v9

    move-object/from16 v26, v8

    move/from16 v8, v23

    move/from16 v23, v15

    const/16 v15, 0x8

    move/from16 v9, v25

    .line 182
    invoke-virtual/range {v1 .. v9}, Lo/ba;->b(Lo/We;Lo/We;IFLo/We;Lo/We;II)V

    goto :goto_43

    :cond_61
    move-object/from16 v26, v8

    move/from16 v23, v15

    const/16 v15, 0x8

    :goto_43
    move-object/from16 v1, v21

    goto :goto_44

    :cond_62
    move-object/from16 v26, v8

    move/from16 v23, v15

    move v15, v9

    .line 183
    :goto_44
    iget v2, v11, Lo/L4;->g0:I

    if-eq v2, v15, :cond_63

    move-object v8, v11

    goto :goto_45

    :cond_63
    move-object/from16 v8, v26

    :goto_45
    move-object v11, v1

    move v9, v15

    move/from16 v15, v23

    goto/16 :goto_3c

    :cond_64
    move/from16 v23, v15

    .line 184
    iget-object v1, v13, Lo/L4;->Q:[Lo/x4;

    aget-object v1, v1, v16

    .line 185
    iget-object v0, v0, Lo/L4;->Q:[Lo/x4;

    aget-object v0, v0, v16

    iget-object v0, v0, Lo/x4;->f:Lo/x4;

    .line 186
    iget-object v2, v14, Lo/L4;->Q:[Lo/x4;

    add-int/lit8 v3, v16, 0x1

    aget-object v11, v2, v3

    .line 187
    iget-object v2, v12, Lo/L4;->Q:[Lo/x4;

    aget-object v2, v2, v3

    iget-object v15, v2, Lo/x4;->f:Lo/x4;

    const/4 v9, 0x5

    if-eqz v0, :cond_65

    if-eq v13, v14, :cond_66

    .line 188
    iget-object v2, v1, Lo/x4;->i:Lo/We;

    iget-object v0, v0, Lo/x4;->i:Lo/We;

    .line 189
    invoke-virtual {v1}, Lo/x4;->e()I

    move-result v1

    .line 190
    invoke-virtual {v10, v2, v0, v1, v9}, Lo/ba;->e(Lo/We;Lo/We;II)V

    :cond_65
    move v0, v9

    goto :goto_46

    :cond_66
    if-eqz v15, :cond_65

    .line 191
    iget-object v2, v1, Lo/x4;->i:Lo/We;

    iget-object v3, v0, Lo/x4;->i:Lo/We;

    .line 192
    invoke-virtual {v1}, Lo/x4;->e()I

    move-result v4

    iget-object v6, v11, Lo/x4;->i:Lo/We;

    iget-object v7, v15, Lo/x4;->i:Lo/We;

    .line 193
    invoke-virtual {v11}, Lo/x4;->e()I

    move-result v8

    const/high16 v5, 0x3f000000    # 0.5f

    move-object/from16 v1, p1

    move v0, v9

    .line 194
    invoke-virtual/range {v1 .. v9}, Lo/ba;->b(Lo/We;Lo/We;IFLo/We;Lo/We;II)V

    :goto_46
    if-eqz v15, :cond_67

    if-eq v13, v14, :cond_67

    .line 195
    iget-object v1, v11, Lo/x4;->i:Lo/We;

    iget-object v2, v15, Lo/x4;->i:Lo/We;

    .line 196
    invoke-virtual {v11}, Lo/x4;->e()I

    move-result v3

    neg-int v3, v3

    .line 197
    invoke-virtual {v10, v1, v2, v3, v0}, Lo/ba;->e(Lo/We;Lo/We;II)V

    :cond_67
    :goto_47
    if-nez v20, :cond_68

    if-eqz v18, :cond_6f

    :cond_68
    if-eqz v13, :cond_6f

    if-eq v13, v14, :cond_6f

    .line 198
    iget-object v0, v13, Lo/L4;->Q:[Lo/x4;

    aget-object v1, v0, v16

    if-nez v14, :cond_69

    move-object v9, v13

    goto :goto_48

    :cond_69
    move-object v9, v14

    :goto_48
    add-int/lit8 v2, v16, 0x1

    .line 199
    iget-object v3, v9, Lo/L4;->Q:[Lo/x4;

    aget-object v4, v3, v2

    .line 200
    iget-object v5, v1, Lo/x4;->f:Lo/x4;

    if-eqz v5, :cond_6a

    iget-object v5, v5, Lo/x4;->i:Lo/We;

    goto :goto_49

    :cond_6a
    move-object/from16 v5, v17

    .line 201
    :goto_49
    iget-object v6, v4, Lo/x4;->f:Lo/x4;

    if-eqz v6, :cond_6b

    iget-object v6, v6, Lo/x4;->i:Lo/We;

    goto :goto_4a

    :cond_6b
    move-object/from16 v6, v17

    :goto_4a
    if-eq v12, v9, :cond_6d

    .line 202
    iget-object v6, v12, Lo/L4;->Q:[Lo/x4;

    aget-object v6, v6, v2

    .line 203
    iget-object v6, v6, Lo/x4;->f:Lo/x4;

    if-eqz v6, :cond_6c

    iget-object v6, v6, Lo/x4;->i:Lo/We;

    move-object/from16 v17, v6

    :cond_6c
    move-object/from16 v6, v17

    :cond_6d
    if-ne v13, v9, :cond_6e

    .line 204
    aget-object v4, v0, v2

    :cond_6e
    if-eqz v5, :cond_6f

    if-eqz v6, :cond_6f

    .line 205
    invoke-virtual {v1}, Lo/x4;->e()I

    move-result v0

    .line 206
    aget-object v2, v3, v2

    invoke-virtual {v2}, Lo/x4;->e()I

    move-result v8

    .line 207
    iget-object v2, v1, Lo/x4;->i:Lo/We;

    iget-object v7, v4, Lo/x4;->i:Lo/We;

    const/4 v9, 0x5

    const/high16 v11, 0x3f000000    # 0.5f

    move-object/from16 v1, p1

    move-object v3, v5

    move v4, v0

    move v5, v11

    invoke-virtual/range {v1 .. v9}, Lo/ba;->b(Lo/We;Lo/We;IFLo/We;Lo/We;II)V

    :cond_6f
    :goto_4b
    add-int/lit8 v9, v23, 0x1

    const/4 v12, 0x2

    move-object/from16 v0, p0

    move-object/from16 v11, p2

    move/from16 v14, v30

    move-object/from16 v15, v31

    goto/16 :goto_1

    :cond_70
    return-void
.end method

.method public static f0(Ljava/io/File;[B)V
    .locals 1

    .line 1
    new-instance v0, Ljava/io/FileOutputStream;

    .line 3
    invoke-direct {v0, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 6
    :try_start_0
    invoke-virtual {v0, p1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    const/4 p0, 0x0

    .line 10
    invoke-static {v0, p0}, Lo/L1;->k(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 13
    return-void

    .line 14
    :catchall_0
    move-exception p0

    .line 15
    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 16
    :catchall_1
    move-exception p1

    .line 17
    invoke-static {v0, p0}, Lo/L1;->k(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 20
    throw p1
.end method

.method public static g(Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/internal/CheckableImageButton;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 10
    move-result-object v0

    .line 11
    if-eqz p2, :cond_0

    .line 13
    invoke-virtual {p2}, Landroid/content/res/ColorStateList;->isStateful()Z

    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_0

    .line 19
    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    .line 22
    move-result-object p0

    .line 23
    invoke-virtual {p1}, Landroid/view/View;->getDrawableState()[I

    .line 26
    move-result-object v1

    .line 27
    array-length v2, p0

    .line 28
    array-length v3, p0

    .line 29
    array-length v4, v1

    .line 30
    add-int/2addr v3, v4

    .line 31
    invoke-static {p0, v3}, Ljava/util/Arrays;->copyOf([II)[I

    .line 34
    move-result-object p0

    .line 35
    const/4 v3, 0x0

    .line 36
    array-length v4, v1

    .line 37
    invoke-static {v1, v3, p0, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 40
    invoke-virtual {p2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    .line 43
    move-result v1

    .line 44
    invoke-virtual {p2, p0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    .line 47
    move-result p0

    .line 48
    invoke-static {p0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 51
    move-result-object p0

    .line 52
    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 55
    goto :goto_0

    .line 56
    :cond_0
    invoke-virtual {v0, p2}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 59
    :goto_0
    if-eqz p3, :cond_1

    .line 61
    invoke-virtual {v0, p3}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 64
    :cond_1
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 67
    move-result-object p0

    .line 68
    if-eq p0, v0, :cond_2

    .line 70
    invoke-virtual {p1, v0}, Lo/C1;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 73
    :cond_2
    return-void
.end method

.method public static g0(Ljava/io/ByteArrayOutputStream;JI)V
    .locals 6

    .line 1
    new-array v0, p3, [B

    .line 3
    const/4 v1, 0x0

    .line 4
    :goto_0
    if-ge v1, p3, :cond_0

    .line 6
    mul-int/lit8 v2, v1, 0x8

    .line 8
    shr-long v2, p1, v2

    .line 10
    const-wide/16 v4, 0xff

    .line 12
    and-long/2addr v2, v4

    .line 13
    long-to-int v2, v2

    .line 14
    int-to-byte v2, v2

    .line 15
    aput-byte v2, v0, v1

    .line 17
    add-int/lit8 v1, v1, 0x1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V

    .line 23
    return-void
.end method

.method public static h(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .locals 9

    .line 1
    invoke-static {p0, p1, p2}, Lo/L1;->i(ILandroid/graphics/Rect;Landroid/graphics/Rect;)Z

    .line 4
    move-result v0

    .line 5
    invoke-static {p0, p1, p3}, Lo/L1;->i(ILandroid/graphics/Rect;Landroid/graphics/Rect;)Z

    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x0

    .line 10
    if-nez v1, :cond_c

    .line 12
    if-nez v0, :cond_0

    .line 14
    goto/16 :goto_4

    .line 16
    :cond_0
    const-string v0, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    .line 18
    const/16 v1, 0x82

    .line 20
    const/16 v3, 0x21

    .line 22
    const/16 v4, 0x42

    .line 24
    const/16 v5, 0x11

    .line 26
    const/4 v6, 0x1

    .line 27
    if-eq p0, v5, :cond_4

    .line 29
    if-eq p0, v3, :cond_3

    .line 31
    if-eq p0, v4, :cond_2

    .line 33
    if-ne p0, v1, :cond_1

    .line 35
    iget v7, p1, Landroid/graphics/Rect;->bottom:I

    .line 37
    iget v8, p3, Landroid/graphics/Rect;->top:I

    .line 39
    if-gt v7, v8, :cond_b

    .line 41
    goto :goto_0

    .line 42
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 44
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 47
    throw p0

    .line 48
    :cond_2
    iget v7, p1, Landroid/graphics/Rect;->right:I

    .line 50
    iget v8, p3, Landroid/graphics/Rect;->left:I

    .line 52
    if-gt v7, v8, :cond_b

    .line 54
    goto :goto_0

    .line 55
    :cond_3
    iget v7, p1, Landroid/graphics/Rect;->top:I

    .line 57
    iget v8, p3, Landroid/graphics/Rect;->bottom:I

    .line 59
    if-lt v7, v8, :cond_b

    .line 61
    goto :goto_0

    .line 62
    :cond_4
    iget v7, p1, Landroid/graphics/Rect;->left:I

    .line 64
    iget v8, p3, Landroid/graphics/Rect;->right:I

    .line 66
    if-lt v7, v8, :cond_b

    .line 68
    :goto_0
    if-eq p0, v5, :cond_b

    .line 70
    if-ne p0, v4, :cond_5

    .line 72
    goto :goto_3

    .line 73
    :cond_5
    invoke-static {p0, p1, p2}, Lo/L1;->I(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    .line 76
    move-result p2

    .line 77
    if-eq p0, v5, :cond_9

    .line 79
    if-eq p0, v3, :cond_8

    .line 81
    if-eq p0, v4, :cond_7

    .line 83
    if-ne p0, v1, :cond_6

    .line 85
    iget p0, p3, Landroid/graphics/Rect;->bottom:I

    .line 87
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    .line 89
    :goto_1
    sub-int/2addr p0, p1

    .line 90
    goto :goto_2

    .line 91
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 93
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 96
    throw p0

    .line 97
    :cond_7
    iget p0, p3, Landroid/graphics/Rect;->right:I

    .line 99
    iget p1, p1, Landroid/graphics/Rect;->right:I

    .line 101
    goto :goto_1

    .line 102
    :cond_8
    iget p0, p1, Landroid/graphics/Rect;->top:I

    .line 104
    iget p1, p3, Landroid/graphics/Rect;->top:I

    .line 106
    goto :goto_1

    .line 107
    :cond_9
    iget p0, p1, Landroid/graphics/Rect;->left:I

    .line 109
    iget p1, p3, Landroid/graphics/Rect;->left:I

    .line 111
    goto :goto_1

    .line 112
    :goto_2
    invoke-static {v6, p0}, Ljava/lang/Math;->max(II)I

    .line 115
    move-result p0

    .line 116
    if-ge p2, p0, :cond_a

    .line 118
    move v2, v6

    .line 119
    :cond_a
    return v2

    .line 120
    :cond_b
    :goto_3
    return v6

    .line 121
    :cond_c
    :goto_4
    return v2
.end method

.method public static h0(Ljava/io/ByteArrayOutputStream;I)V
    .locals 2

    .line 1
    int-to-long v0, p1

    .line 2
    const/4 p1, 0x2

    .line 3
    invoke-static {p0, v0, v1, p1}, Lo/L1;->g0(Ljava/io/ByteArrayOutputStream;JI)V

    .line 6
    return-void
.end method

.method public static i(ILandroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .locals 3

    .line 1
    const/16 v0, 0x11

    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-eq p0, v0, :cond_3

    .line 7
    const/16 v0, 0x21

    .line 9
    if-eq p0, v0, :cond_1

    .line 11
    const/16 v0, 0x42

    .line 13
    if-eq p0, v0, :cond_3

    .line 15
    const/16 v0, 0x82

    .line 17
    if-ne p0, v0, :cond_0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 22
    const-string p1, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    .line 24
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 27
    throw p0

    .line 28
    :cond_1
    :goto_0
    iget p0, p2, Landroid/graphics/Rect;->right:I

    .line 30
    iget v0, p1, Landroid/graphics/Rect;->left:I

    .line 32
    if-lt p0, v0, :cond_2

    .line 34
    iget p0, p2, Landroid/graphics/Rect;->left:I

    .line 36
    iget p1, p1, Landroid/graphics/Rect;->right:I

    .line 38
    if-gt p0, p1, :cond_2

    .line 40
    move v1, v2

    .line 41
    :cond_2
    return v1

    .line 42
    :cond_3
    iget p0, p2, Landroid/graphics/Rect;->bottom:I

    .line 44
    iget v0, p1, Landroid/graphics/Rect;->top:I

    .line 46
    if-lt p0, v0, :cond_4

    .line 48
    iget p0, p2, Landroid/graphics/Rect;->top:I

    .line 50
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    .line 52
    if-gt p0, p1, :cond_4

    .line 54
    move v1, v2

    .line 55
    :cond_4
    return v1
.end method

.method public static j(I)V
    .locals 5

    .line 1
    const/4 v0, 0x2

    .line 2
    if-gt v0, p0, :cond_0

    .line 4
    const/16 v1, 0x25

    .line 6
    if-ge p0, v1, :cond_0

    .line 8
    return-void

    .line 9
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 11
    new-instance v2, Ljava/lang/StringBuilder;

    .line 13
    const-string v3, "radix "

    .line 15
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    const-string p0, " was not in valid range "

    .line 23
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    new-instance p0, Lo/w9;

    .line 28
    const/4 v3, 0x1

    .line 29
    const/16 v4, 0x24

    .line 31
    invoke-direct {p0, v0, v4, v3}, Lo/u9;-><init>(III)V

    .line 34
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 37
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    move-result-object p0

    .line 41
    invoke-direct {v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 44
    throw v1
.end method

.method public static final k(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    if-eqz p0, :cond_3

    .line 3
    if-nez p1, :cond_0

    .line 5
    invoke-interface {p0}, Ljava/io/Closeable;->close()V

    .line 8
    goto :goto_1

    .line 9
    :cond_0
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    goto :goto_1

    .line 13
    :catchall_0
    move-exception p0

    .line 14
    if-eq p1, p0, :cond_3

    .line 16
    sget-object v0, Lo/y9;->a:Ljava/lang/Integer;

    .line 18
    if-eqz v0, :cond_2

    .line 20
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 23
    move-result v0

    .line 24
    const/16 v1, 0x13

    .line 26
    if-lt v0, v1, :cond_1

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    sget-object v0, Lo/Hc;->a:Ljava/lang/reflect/Method;

    .line 31
    if-eqz v0, :cond_3

    .line 33
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 36
    move-result-object p0

    .line 37
    invoke-virtual {v0, p1, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    goto :goto_1

    .line 41
    :cond_2
    :goto_0
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 44
    :cond_3
    :goto_1
    return-void
.end method

.method public static l([B)[B
    .locals 3

    .line 1
    new-instance v0, Ljava/util/zip/Deflater;

    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, v1}, Ljava/util/zip/Deflater;-><init>(I)V

    .line 7
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    .line 9
    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 12
    :try_start_0
    new-instance v2, Ljava/util/zip/DeflaterOutputStream;

    .line 14
    invoke-direct {v2, v1, v0}, Ljava/util/zip/DeflaterOutputStream;-><init>(Ljava/io/OutputStream;Ljava/util/zip/Deflater;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    :try_start_1
    invoke-virtual {v2, p0}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 20
    :try_start_2
    invoke-virtual {v2}, Ljava/util/zip/DeflaterOutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 23
    invoke-virtual {v0}, Ljava/util/zip/Deflater;->end()V

    .line 26
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 29
    move-result-object p0

    .line 30
    return-object p0

    .line 31
    :catchall_0
    move-exception p0

    .line 32
    goto :goto_1

    .line 33
    :catchall_1
    move-exception p0

    .line 34
    :try_start_3
    invoke-virtual {v2}, Ljava/util/zip/DeflaterOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 37
    goto :goto_0

    .line 38
    :catchall_2
    move-exception v1

    .line 39
    :try_start_4
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 42
    :goto_0
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 43
    :goto_1
    invoke-virtual {v0}, Ljava/util/zip/Deflater;->end()V

    .line 46
    throw p0
.end method

.method public static m(I)Landroid/widget/ImageView$ScaleType;
    .locals 1

    .line 1
    if-eqz p0, :cond_5

    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p0, v0, :cond_4

    .line 6
    const/4 v0, 0x2

    .line 7
    if-eq p0, v0, :cond_3

    .line 9
    const/4 v0, 0x3

    .line 10
    if-eq p0, v0, :cond_2

    .line 12
    const/4 v0, 0x5

    .line 13
    if-eq p0, v0, :cond_1

    .line 15
    const/4 v0, 0x6

    .line 16
    if-eq p0, v0, :cond_0

    .line 18
    sget-object p0, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    .line 20
    return-object p0

    .line 21
    :cond_0
    sget-object p0, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    .line 23
    return-object p0

    .line 24
    :cond_1
    sget-object p0, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    .line 26
    return-object p0

    .line 27
    :cond_2
    sget-object p0, Landroid/widget/ImageView$ScaleType;->FIT_END:Landroid/widget/ImageView$ScaleType;

    .line 29
    return-object p0

    .line 30
    :cond_3
    sget-object p0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    .line 32
    return-object p0

    .line 33
    :cond_4
    sget-object p0, Landroid/widget/ImageView$ScaleType;->FIT_START:Landroid/widget/ImageView$ScaleType;

    .line 35
    return-object p0

    .line 36
    :cond_5
    sget-object p0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    .line 38
    return-object p0
.end method

.method public static final n(II)V
    .locals 3

    .line 1
    if-gt p0, p1, :cond_0

    .line 3
    return-void

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    const-string v2, "toIndex ("

    .line 10
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    const-string p0, ") is greater than size ("

    .line 18
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    const-string p0, ")."

    .line 26
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    move-result-object p0

    .line 33
    invoke-direct {v0, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 36
    throw v0
.end method

.method public static o(Ljava/io/InputStream;Ljava/io/ByteArrayOutputStream;)V
    .locals 3

    .line 1
    const/16 v0, 0x2000

    .line 3
    new-array v0, v0, [B

    .line 5
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    .line 8
    move-result v1

    .line 9
    :goto_0
    if-ltz v1, :cond_0

    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-virtual {p1, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 15
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    .line 18
    move-result v1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    return-void
.end method

.method public static p(Landroid/content/Context;)Lo/C7;
    .locals 8

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    const/16 v1, 0x1c

    .line 5
    if-lt v0, v1, :cond_0

    .line 7
    new-instance v0, Lo/t5;

    .line 9
    const/16 v1, 0x9

    .line 11
    invoke-direct {v0, v1}, Lo/u6;-><init>(I)V

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    new-instance v0, Lo/u6;

    .line 17
    const/16 v1, 0x9

    .line 19
    invoke-direct {v0, v1}, Lo/u6;-><init>(I)V

    .line 22
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 25
    move-result-object v1

    .line 26
    const-string v2, "Package manager required to locate emoji font provider"

    .line 28
    invoke-static {v1, v2}, Lo/Ha;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    new-instance v2, Landroid/content/Intent;

    .line 33
    const-string v3, "androidx.content.action.LOAD_EMOJI_FONT"

    .line 35
    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 38
    const/4 v3, 0x0

    .line 39
    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->queryIntentContentProviders(Landroid/content/Intent;I)Ljava/util/List;

    .line 42
    move-result-object v2

    .line 43
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 46
    move-result-object v2

    .line 47
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 50
    move-result v4

    .line 51
    const/4 v5, 0x0

    .line 52
    if-eqz v4, :cond_2

    .line 54
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 57
    move-result-object v4

    .line 58
    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 60
    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    .line 62
    if-eqz v4, :cond_1

    .line 64
    iget-object v6, v4, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 66
    if-eqz v6, :cond_1

    .line 68
    iget v6, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 70
    const/4 v7, 0x1

    .line 71
    and-int/2addr v6, v7

    .line 72
    if-ne v6, v7, :cond_1

    .line 74
    goto :goto_1

    .line 75
    :cond_2
    move-object v4, v5

    .line 76
    :goto_1
    if-nez v4, :cond_3

    .line 78
    :goto_2
    move-object v1, v5

    .line 79
    goto :goto_4

    .line 80
    :cond_3
    :try_start_0
    iget-object v2, v4, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    .line 82
    iget-object v4, v4, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    .line 84
    invoke-virtual {v0, v1, v4}, Lo/u6;->h(Landroid/content/pm/PackageManager;Ljava/lang/String;)[Landroid/content/pm/Signature;

    .line 87
    move-result-object v0

    .line 88
    new-instance v1, Ljava/util/ArrayList;

    .line 90
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 93
    array-length v6, v0

    .line 94
    :goto_3
    if-ge v3, v6, :cond_4

    .line 96
    aget-object v7, v0, v3

    .line 98
    invoke-virtual {v7}, Landroid/content/pm/Signature;->toByteArray()[B

    .line 101
    move-result-object v7

    .line 102
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    add-int/lit8 v3, v3, 0x1

    .line 107
    goto :goto_3

    .line 108
    :cond_4
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 111
    move-result-object v0

    .line 112
    new-instance v1, Lo/A7;

    .line 114
    const-string v3, "emojicompat-emoji-font"

    .line 116
    invoke-direct {v1, v2, v4, v3, v0}, Lo/A7;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    goto :goto_4

    .line 120
    :catch_0
    move-exception v0

    .line 121
    const-string v1, "emoji2.text.DefaultEmojiConfig"

    .line 123
    invoke-static {v1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 126
    goto :goto_2

    .line 127
    :goto_4
    if-nez v1, :cond_5

    .line 129
    goto :goto_5

    .line 130
    :cond_5
    new-instance v5, Lo/C7;

    .line 132
    new-instance v0, Lo/B7;

    .line 134
    invoke-direct {v0, p0, v1}, Lo/B7;-><init>(Landroid/content/Context;Lo/A7;)V

    .line 137
    invoke-direct {v5, v0}, Lo/z6;-><init>(Lo/B6;)V

    .line 140
    :goto_5
    return-object v5
.end method

.method public static q(Ljava/io/File;)Z
    .locals 6

    .line 1
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eqz v0, :cond_3

    .line 8
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 11
    move-result-object p0

    .line 12
    const/4 v0, 0x0

    .line 13
    if-nez p0, :cond_0

    .line 15
    return v0

    .line 16
    :cond_0
    array-length v2, p0

    .line 17
    move v3, v0

    .line 18
    move v4, v1

    .line 19
    :goto_0
    if-ge v3, v2, :cond_2

    .line 21
    aget-object v5, p0, v3

    .line 23
    invoke-static {v5}, Lo/L1;->q(Ljava/io/File;)Z

    .line 26
    move-result v5

    .line 27
    if-eqz v5, :cond_1

    .line 29
    if-eqz v4, :cond_1

    .line 31
    move v4, v1

    .line 32
    goto :goto_1

    .line 33
    :cond_1
    move v4, v0

    .line 34
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 36
    goto :goto_0

    .line 37
    :cond_2
    return v4

    .line 38
    :cond_3
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 41
    return v1
.end method

.method public static r(Landroid/view/View;Landroid/view/KeyEvent;)Z
    .locals 4

    .line 1
    sget-object v0, Lo/Dh;->a:Ljava/util/WeakHashMap;

    .line 3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 5
    const/16 v1, 0x1c

    .line 7
    const/4 v2, 0x0

    .line 8
    if-lt v0, v1, :cond_0

    .line 10
    goto/16 :goto_1

    .line 12
    :cond_0
    sget-object v0, Lo/Ch;->d:Ljava/util/ArrayList;

    .line 14
    const v0, 0x7f0801ca

    .line 17
    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Lo/Ch;

    .line 23
    const/4 v3, 0x0

    .line 24
    if-nez v1, :cond_1

    .line 26
    new-instance v1, Lo/Ch;

    .line 28
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object v3, v1, Lo/Ch;->a:Ljava/util/WeakHashMap;

    .line 33
    iput-object v3, v1, Lo/Ch;->b:Landroid/util/SparseArray;

    .line 35
    iput-object v3, v1, Lo/Ch;->c:Ljava/lang/ref/WeakReference;

    .line 37
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 40
    :cond_1
    iget-object p0, v1, Lo/Ch;->c:Ljava/lang/ref/WeakReference;

    .line 42
    if-eqz p0, :cond_2

    .line 44
    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 47
    move-result-object p0

    .line 48
    if-ne p0, p1, :cond_2

    .line 50
    goto :goto_1

    .line 51
    :cond_2
    new-instance p0, Ljava/lang/ref/WeakReference;

    .line 53
    invoke-direct {p0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 56
    iput-object p0, v1, Lo/Ch;->c:Ljava/lang/ref/WeakReference;

    .line 58
    iget-object p0, v1, Lo/Ch;->b:Landroid/util/SparseArray;

    .line 60
    if-nez p0, :cond_3

    .line 62
    new-instance p0, Landroid/util/SparseArray;

    .line 64
    invoke-direct {p0}, Landroid/util/SparseArray;-><init>()V

    .line 67
    iput-object p0, v1, Lo/Ch;->b:Landroid/util/SparseArray;

    .line 69
    :cond_3
    iget-object p0, v1, Lo/Ch;->b:Landroid/util/SparseArray;

    .line 71
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    .line 74
    move-result v0

    .line 75
    const/4 v1, 0x1

    .line 76
    if-ne v0, v1, :cond_4

    .line 78
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 81
    move-result v0

    .line 82
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->indexOfKey(I)I

    .line 85
    move-result v0

    .line 86
    if-ltz v0, :cond_4

    .line 88
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 91
    move-result-object v3

    .line 92
    check-cast v3, Ljava/lang/ref/WeakReference;

    .line 94
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->removeAt(I)V

    .line 97
    :cond_4
    if-nez v3, :cond_5

    .line 99
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 102
    move-result p1

    .line 103
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 106
    move-result-object p0

    .line 107
    move-object v3, p0

    .line 108
    check-cast v3, Ljava/lang/ref/WeakReference;

    .line 110
    :cond_5
    if-eqz v3, :cond_8

    .line 112
    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 115
    move-result-object p0

    .line 116
    check-cast p0, Landroid/view/View;

    .line 118
    if-eqz p0, :cond_7

    .line 120
    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    .line 123
    move-result p1

    .line 124
    if-eqz p1, :cond_7

    .line 126
    const p1, 0x7f0801cb

    .line 129
    invoke-virtual {p0, p1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 132
    move-result-object p0

    .line 133
    check-cast p0, Ljava/util/ArrayList;

    .line 135
    if-eqz p0, :cond_7

    .line 137
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 140
    move-result p1

    .line 141
    sub-int/2addr p1, v1

    .line 142
    if-gez p1, :cond_6

    .line 144
    goto :goto_0

    .line 145
    :cond_6
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 148
    move-result-object p0

    .line 149
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 152
    new-instance p0, Ljava/lang/ClassCastException;

    .line 154
    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    .line 157
    throw p0

    .line 158
    :cond_7
    :goto_0
    move v2, v1

    .line 159
    :cond_8
    :goto_1
    return v2
.end method

.method public static s(Lo/C9;Landroid/view/View;Landroid/view/Window$Callback;Landroid/view/KeyEvent;)Z
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 4
    return v0

    .line 5
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 7
    const/16 v2, 0x1c

    .line 9
    if-lt v1, v2, :cond_1

    .line 11
    invoke-interface {p0, p3}, Lo/C9;->c(Landroid/view/KeyEvent;)Z

    .line 14
    move-result p0

    .line 15
    return p0

    .line 16
    :cond_1
    instance-of v1, p2, Landroid/app/Activity;

    .line 18
    const/4 v2, 0x0

    .line 19
    const/4 v3, 0x1

    .line 20
    if-eqz v1, :cond_9

    .line 22
    check-cast p2, Landroid/app/Activity;

    .line 24
    invoke-virtual {p2}, Landroid/app/Activity;->onUserInteraction()V

    .line 27
    invoke-virtual {p2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 30
    move-result-object p0

    .line 31
    const/16 p1, 0x8

    .line 33
    invoke-virtual {p0, p1}, Landroid/view/Window;->hasFeature(I)Z

    .line 36
    move-result p1

    .line 37
    if-eqz p1, :cond_5

    .line 39
    invoke-virtual {p2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    .line 42
    move-result-object p1

    .line 43
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 46
    move-result v1

    .line 47
    const/16 v4, 0x52

    .line 49
    if-ne v1, v4, :cond_5

    .line 51
    if-eqz p1, :cond_5

    .line 53
    sget-boolean v1, Lo/L1;->c:Z

    .line 55
    if-nez v1, :cond_2

    .line 57
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 60
    move-result-object v1

    .line 61
    const-string v4, "onMenuKeyEvent"

    .line 63
    const-class v5, Landroid/view/KeyEvent;

    .line 65
    filled-new-array {v5}, [Ljava/lang/Class;

    .line 68
    move-result-object v5

    .line 69
    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 72
    move-result-object v1

    .line 73
    sput-object v1, Lo/L1;->d:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    :catch_0
    sput-boolean v3, Lo/L1;->c:Z

    .line 77
    :cond_2
    sget-object v1, Lo/L1;->d:Ljava/lang/reflect/Method;

    .line 79
    if-eqz v1, :cond_4

    .line 81
    :try_start_1
    filled-new-array {p3}, [Ljava/lang/Object;

    .line 84
    move-result-object v4

    .line 85
    invoke-virtual {v1, p1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    move-result-object p1

    .line 89
    if-nez p1, :cond_3

    .line 91
    goto :goto_0

    .line 92
    :cond_3
    check-cast p1, Ljava/lang/Boolean;

    .line 94
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 97
    move-result v0
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1

    .line 98
    :catch_1
    :cond_4
    :goto_0
    if-eqz v0, :cond_5

    .line 100
    goto :goto_1

    .line 101
    :cond_5
    invoke-virtual {p0, p3}, Landroid/view/Window;->superDispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 104
    move-result p1

    .line 105
    if-eqz p1, :cond_6

    .line 107
    goto :goto_1

    .line 108
    :cond_6
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 111
    move-result-object p0

    .line 112
    invoke-static {p0, p3}, Lo/Dh;->b(Landroid/view/View;Landroid/view/KeyEvent;)Z

    .line 115
    move-result p1

    .line 116
    if-eqz p1, :cond_7

    .line 118
    goto :goto_1

    .line 119
    :cond_7
    if-eqz p0, :cond_8

    .line 121
    invoke-virtual {p0}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    .line 124
    move-result-object v2

    .line 125
    :cond_8
    invoke-virtual {p3, p2, v2, p2}, Landroid/view/KeyEvent;->dispatch(Landroid/view/KeyEvent$Callback;Landroid/view/KeyEvent$DispatcherState;Ljava/lang/Object;)Z

    .line 128
    move-result v3

    .line 129
    :goto_1
    return v3

    .line 130
    :cond_9
    instance-of v1, p2, Landroid/app/Dialog;

    .line 132
    if-eqz v1, :cond_10

    .line 134
    check-cast p2, Landroid/app/Dialog;

    .line 136
    sget-boolean p0, Lo/L1;->e:Z

    .line 138
    if-nez p0, :cond_a

    .line 140
    :try_start_2
    const-class p0, Landroid/app/Dialog;

    .line 142
    const-string p1, "mOnKeyListener"

    .line 144
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 147
    move-result-object p0

    .line 148
    sput-object p0, Lo/L1;->f:Ljava/lang/reflect/Field;

    .line 150
    invoke-virtual {p0, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_2
    .catch Ljava/lang/NoSuchFieldException; {:try_start_2 .. :try_end_2} :catch_2

    .line 153
    :catch_2
    sput-boolean v3, Lo/L1;->e:Z

    .line 155
    :cond_a
    sget-object p0, Lo/L1;->f:Ljava/lang/reflect/Field;

    .line 157
    if-eqz p0, :cond_b

    .line 159
    :try_start_3
    invoke-virtual {p0, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    move-result-object p0

    .line 163
    check-cast p0, Landroid/content/DialogInterface$OnKeyListener;
    :try_end_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_3

    .line 165
    goto :goto_2

    .line 166
    :catch_3
    :cond_b
    move-object p0, v2

    .line 167
    :goto_2
    if-eqz p0, :cond_c

    .line 169
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 172
    move-result p1

    .line 173
    invoke-interface {p0, p2, p1, p3}, Landroid/content/DialogInterface$OnKeyListener;->onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z

    .line 176
    move-result p0

    .line 177
    if-eqz p0, :cond_c

    .line 179
    goto :goto_3

    .line 180
    :cond_c
    invoke-virtual {p2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 183
    move-result-object p0

    .line 184
    invoke-virtual {p0, p3}, Landroid/view/Window;->superDispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 187
    move-result p1

    .line 188
    if-eqz p1, :cond_d

    .line 190
    goto :goto_3

    .line 191
    :cond_d
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 194
    move-result-object p0

    .line 195
    invoke-static {p0, p3}, Lo/Dh;->b(Landroid/view/View;Landroid/view/KeyEvent;)Z

    .line 198
    move-result p1

    .line 199
    if-eqz p1, :cond_e

    .line 201
    goto :goto_3

    .line 202
    :cond_e
    if-eqz p0, :cond_f

    .line 204
    invoke-virtual {p0}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    .line 207
    move-result-object v2

    .line 208
    :cond_f
    invoke-virtual {p3, p2, v2, p2}, Landroid/view/KeyEvent;->dispatch(Landroid/view/KeyEvent$Callback;Landroid/view/KeyEvent$DispatcherState;Ljava/lang/Object;)Z

    .line 211
    move-result v3

    .line 212
    :goto_3
    return v3

    .line 213
    :cond_10
    if-eqz p1, :cond_11

    .line 215
    invoke-static {p1, p3}, Lo/Dh;->b(Landroid/view/View;Landroid/view/KeyEvent;)Z

    .line 218
    move-result p1

    .line 219
    if-nez p1, :cond_12

    .line 221
    :cond_11
    invoke-interface {p0, p3}, Lo/C9;->c(Landroid/view/KeyEvent;)Z

    .line 224
    move-result p0

    .line 225
    if-eqz p0, :cond_13

    .line 227
    :cond_12
    move v0, v3

    .line 228
    :cond_13
    return v0
.end method

.method public static final t(CCZ)Z
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 4
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x0

    .line 6
    if-nez p2, :cond_1

    .line 8
    return v1

    .line 9
    :cond_1
    invoke-static {p0}, Ljava/lang/Character;->toUpperCase(C)C

    .line 12
    move-result p0

    .line 13
    invoke-static {p1}, Ljava/lang/Character;->toUpperCase(C)C

    .line 16
    move-result p1

    .line 17
    if-eq p0, p1, :cond_3

    .line 19
    invoke-static {p0}, Ljava/lang/Character;->toLowerCase(C)C

    .line 22
    move-result p0

    .line 23
    invoke-static {p1}, Ljava/lang/Character;->toLowerCase(C)C

    .line 26
    move-result p1

    .line 27
    if-ne p0, p1, :cond_2

    .line 29
    goto :goto_0

    .line 30
    :cond_2
    move v0, v1

    .line 31
    :cond_3
    :goto_0
    return v0
.end method

.method public static u(Lo/L4;ILjava/util/ArrayList;Lo/li;)Lo/li;
    .locals 7

    .line 1
    if-nez p1, :cond_0

    .line 3
    iget v0, p0, Lo/L4;->n0:I

    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget v0, p0, Lo/L4;->o0:I

    .line 8
    :goto_0
    const/4 v1, 0x0

    .line 9
    const/4 v2, -0x1

    .line 10
    if-eq v0, v2, :cond_4

    .line 12
    if-eqz p3, :cond_1

    .line 14
    iget v3, p3, Lo/li;->b:I

    .line 16
    if-eq v0, v3, :cond_4

    .line 18
    :cond_1
    move v3, v1

    .line 19
    :goto_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 22
    move-result v4

    .line 23
    if-ge v3, v4, :cond_5

    .line 25
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 28
    move-result-object v4

    .line 29
    check-cast v4, Lo/li;

    .line 31
    iget v5, v4, Lo/li;->b:I

    .line 33
    if-ne v5, v0, :cond_3

    .line 35
    if-eqz p3, :cond_2

    .line 37
    invoke-virtual {p3, p1, v4}, Lo/li;->c(ILo/li;)V

    .line 40
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 43
    :cond_2
    move-object p3, v4

    .line 44
    goto :goto_2

    .line 45
    :cond_3
    add-int/lit8 v3, v3, 0x1

    .line 47
    goto :goto_1

    .line 48
    :cond_4
    if-eq v0, v2, :cond_5

    .line 50
    return-object p3

    .line 51
    :cond_5
    :goto_2
    const/4 v0, 0x1

    .line 52
    if-nez p3, :cond_c

    .line 54
    instance-of v3, p0, Lo/b9;

    .line 56
    if-eqz v3, :cond_a

    .line 58
    move-object v3, p0

    .line 59
    check-cast v3, Lo/b9;

    .line 61
    move v4, v1

    .line 62
    :goto_3
    iget v5, v3, Lo/b9;->r0:I

    .line 64
    if-ge v4, v5, :cond_8

    .line 66
    iget-object v5, v3, Lo/b9;->q0:[Lo/L4;

    .line 68
    aget-object v5, v5, v4

    .line 70
    if-nez p1, :cond_6

    .line 72
    iget v6, v5, Lo/L4;->n0:I

    .line 74
    if-eq v6, v2, :cond_6

    .line 76
    goto :goto_4

    .line 77
    :cond_6
    if-ne p1, v0, :cond_7

    .line 79
    iget v6, v5, Lo/L4;->o0:I

    .line 81
    if-eq v6, v2, :cond_7

    .line 83
    goto :goto_4

    .line 84
    :cond_7
    add-int/lit8 v4, v4, 0x1

    .line 86
    goto :goto_3

    .line 87
    :cond_8
    move v6, v2

    .line 88
    :goto_4
    if-eq v6, v2, :cond_a

    .line 90
    move v3, v1

    .line 91
    :goto_5
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 94
    move-result v4

    .line 95
    if-ge v3, v4, :cond_a

    .line 97
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 100
    move-result-object v4

    .line 101
    check-cast v4, Lo/li;

    .line 103
    iget v5, v4, Lo/li;->b:I

    .line 105
    if-ne v5, v6, :cond_9

    .line 107
    move-object p3, v4

    .line 108
    goto :goto_6

    .line 109
    :cond_9
    add-int/lit8 v3, v3, 0x1

    .line 111
    goto :goto_5

    .line 112
    :cond_a
    :goto_6
    if-nez p3, :cond_b

    .line 114
    new-instance p3, Lo/li;

    .line 116
    invoke-direct {p3}, Ljava/lang/Object;-><init>()V

    .line 119
    new-instance v3, Ljava/util/ArrayList;

    .line 121
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 124
    iput-object v3, p3, Lo/li;->a:Ljava/util/ArrayList;

    .line 126
    const/4 v3, 0x0

    .line 127
    iput-object v3, p3, Lo/li;->d:Ljava/util/ArrayList;

    .line 129
    iput v2, p3, Lo/li;->e:I

    .line 131
    sget v2, Lo/li;->f:I

    .line 133
    add-int/lit8 v3, v2, 0x1

    .line 135
    sput v3, Lo/li;->f:I

    .line 137
    iput v2, p3, Lo/li;->b:I

    .line 139
    iput p1, p3, Lo/li;->c:I

    .line 141
    :cond_b
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 144
    :cond_c
    iget-object v2, p3, Lo/li;->a:Ljava/util/ArrayList;

    .line 146
    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 149
    move-result v3

    .line 150
    if-eqz v3, :cond_d

    .line 152
    goto :goto_8

    .line 153
    :cond_d
    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 156
    instance-of v2, p0, Lo/X8;

    .line 158
    if-eqz v2, :cond_f

    .line 160
    move-object v2, p0

    .line 161
    check-cast v2, Lo/X8;

    .line 163
    iget-object v3, v2, Lo/X8;->t0:Lo/x4;

    .line 165
    iget v2, v2, Lo/X8;->u0:I

    .line 167
    if-nez v2, :cond_e

    .line 169
    move v1, v0

    .line 170
    :cond_e
    invoke-virtual {v3, v1, p2, p3}, Lo/x4;->c(ILjava/util/ArrayList;Lo/li;)V

    .line 173
    :cond_f
    iget v0, p3, Lo/li;->b:I

    .line 175
    if-nez p1, :cond_10

    .line 177
    iput v0, p0, Lo/L4;->n0:I

    .line 179
    iget-object v0, p0, Lo/L4;->I:Lo/x4;

    .line 181
    invoke-virtual {v0, p1, p2, p3}, Lo/x4;->c(ILjava/util/ArrayList;Lo/li;)V

    .line 184
    iget-object v0, p0, Lo/L4;->K:Lo/x4;

    .line 186
    invoke-virtual {v0, p1, p2, p3}, Lo/x4;->c(ILjava/util/ArrayList;Lo/li;)V

    .line 189
    goto :goto_7

    .line 190
    :cond_10
    iput v0, p0, Lo/L4;->o0:I

    .line 192
    iget-object v0, p0, Lo/L4;->J:Lo/x4;

    .line 194
    invoke-virtual {v0, p1, p2, p3}, Lo/x4;->c(ILjava/util/ArrayList;Lo/li;)V

    .line 197
    iget-object v0, p0, Lo/L4;->M:Lo/x4;

    .line 199
    invoke-virtual {v0, p1, p2, p3}, Lo/x4;->c(ILjava/util/ArrayList;Lo/li;)V

    .line 202
    iget-object v0, p0, Lo/L4;->L:Lo/x4;

    .line 204
    invoke-virtual {v0, p1, p2, p3}, Lo/x4;->c(ILjava/util/ArrayList;Lo/li;)V

    .line 207
    :goto_7
    iget-object p0, p0, Lo/L4;->P:Lo/x4;

    .line 209
    invoke-virtual {p0, p1, p2, p3}, Lo/x4;->c(ILjava/util/ArrayList;Lo/li;)V

    .line 212
    :goto_8
    return-object p3
.end method

.method public static v(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 8
    move-result-object p0

    .line 9
    new-instance v1, Lo/Zd;

    .line 11
    invoke-direct {v1, v0, p0}, Lo/Zd;-><init>(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)V

    .line 14
    sget-object v2, Lo/be;->c:Ljava/lang/Object;

    .line 16
    monitor-enter v2

    .line 17
    :try_start_0
    sget-object v3, Lo/be;->b:Ljava/util/WeakHashMap;

    .line 19
    invoke-virtual {v3, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    move-result-object v3

    .line 23
    check-cast v3, Landroid/util/SparseArray;

    .line 25
    const/4 v4, 0x0

    .line 26
    if-eqz v3, :cond_3

    .line 28
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    .line 31
    move-result v5

    .line 32
    if-lez v5, :cond_3

    .line 34
    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 37
    move-result-object v5

    .line 38
    check-cast v5, Lo/Yd;

    .line 40
    if-eqz v5, :cond_3

    .line 42
    iget-object v6, v5, Lo/Yd;->b:Landroid/content/res/Configuration;

    .line 44
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 47
    move-result-object v7

    .line 48
    invoke-virtual {v6, v7}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    .line 51
    move-result v6

    .line 52
    if-eqz v6, :cond_2

    .line 54
    if-nez p0, :cond_0

    .line 56
    iget v6, v5, Lo/Yd;->c:I

    .line 58
    if-eqz v6, :cond_1

    .line 60
    goto :goto_0

    .line 61
    :catchall_0
    move-exception p0

    .line 62
    goto/16 :goto_6

    .line 64
    :cond_0
    :goto_0
    if-eqz p0, :cond_2

    .line 66
    iget v6, v5, Lo/Yd;->c:I

    .line 68
    invoke-virtual {p0}, Landroid/content/res/Resources$Theme;->hashCode()I

    .line 71
    move-result v7

    .line 72
    if-ne v6, v7, :cond_2

    .line 74
    :cond_1
    iget-object v3, v5, Lo/Yd;->a:Landroid/content/res/ColorStateList;

    .line 76
    monitor-exit v2

    .line 77
    goto :goto_1

    .line 78
    :cond_2
    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 81
    :cond_3
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    move-object v3, v4

    .line 83
    :goto_1
    if-eqz v3, :cond_4

    .line 85
    goto :goto_5

    .line 86
    :cond_4
    sget-object v2, Lo/be;->a:Ljava/lang/ThreadLocal;

    .line 88
    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 91
    move-result-object v3

    .line 92
    check-cast v3, Landroid/util/TypedValue;

    .line 94
    if-nez v3, :cond_5

    .line 96
    new-instance v3, Landroid/util/TypedValue;

    .line 98
    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    .line 101
    invoke-virtual {v2, v3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 104
    :cond_5
    const/4 v2, 0x1

    .line 105
    invoke-virtual {v0, p1, v3, v2}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 108
    iget v2, v3, Landroid/util/TypedValue;->type:I

    .line 110
    const/16 v3, 0x1c

    .line 112
    if-lt v2, v3, :cond_6

    .line 114
    const/16 v3, 0x1f

    .line 116
    if-gt v2, v3, :cond_6

    .line 118
    goto :goto_2

    .line 119
    :cond_6
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    .line 122
    move-result-object v2

    .line 123
    :try_start_1
    invoke-static {v0, v2, p0}, Lo/l4;->a(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    .line 126
    move-result-object v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 127
    goto :goto_2

    .line 128
    :catch_0
    move-exception v2

    .line 129
    const-string v3, "ResourcesCompat"

    .line 131
    const-string v5, "Failed to inflate ColorStateList, leaving it to the framework"

    .line 133
    invoke-static {v3, v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 136
    :goto_2
    if-eqz v4, :cond_8

    .line 138
    sget-object v2, Lo/be;->c:Ljava/lang/Object;

    .line 140
    monitor-enter v2

    .line 141
    :try_start_2
    sget-object v0, Lo/be;->b:Ljava/util/WeakHashMap;

    .line 143
    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    move-result-object v3

    .line 147
    check-cast v3, Landroid/util/SparseArray;

    .line 149
    if-nez v3, :cond_7

    .line 151
    new-instance v3, Landroid/util/SparseArray;

    .line 153
    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    .line 156
    invoke-virtual {v0, v1, v3}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    goto :goto_3

    .line 160
    :catchall_1
    move-exception p0

    .line 161
    goto :goto_4

    .line 162
    :cond_7
    :goto_3
    new-instance v0, Lo/Yd;

    .line 164
    iget-object v1, v1, Lo/Zd;->a:Landroid/content/res/Resources;

    .line 166
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 169
    move-result-object v1

    .line 170
    invoke-direct {v0, v4, v1, p0}, Lo/Yd;-><init>(Landroid/content/res/ColorStateList;Landroid/content/res/Configuration;Landroid/content/res/Resources$Theme;)V

    .line 173
    invoke-virtual {v3, p1, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 176
    monitor-exit v2

    .line 177
    move-object v3, v4

    .line 178
    goto :goto_5

    .line 179
    :goto_4
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 180
    throw p0

    .line 181
    :cond_8
    invoke-virtual {v0, p1, p0}, Landroid/content/res/Resources;->getColorStateList(ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    .line 184
    move-result-object v3

    .line 185
    :goto_5
    return-object v3

    .line 186
    :goto_6
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 187
    throw p0
.end method

.method public static w(Landroid/graphics/drawable/Drawable;)Landroid/content/res/ColorStateList;
    .locals 2

    .line 1
    instance-of v0, p0, Landroid/graphics/drawable/ColorDrawable;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    check-cast p0, Landroid/graphics/drawable/ColorDrawable;

    .line 7
    invoke-virtual {p0}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    .line 10
    move-result p0

    .line 11
    invoke-static {p0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 14
    move-result-object p0

    .line 15
    return-object p0

    .line 16
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 18
    const/16 v1, 0x1d

    .line 20
    if-lt v0, v1, :cond_1

    .line 22
    invoke-static {p0}, Lo/u;->r(Landroid/graphics/drawable/Drawable;)Z

    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_1

    .line 28
    invoke-static {p0}, Lo/u;->d(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/ColorStateListDrawable;

    .line 31
    move-result-object p0

    .line 32
    invoke-static {p0}, Lo/u;->c(Landroid/graphics/drawable/ColorStateListDrawable;)Landroid/content/res/ColorStateList;

    .line 35
    move-result-object p0

    .line 36
    return-object p0

    .line 37
    :cond_1
    const/4 p0, 0x0

    .line 38
    return-object p0
.end method

.method public static y(Landroid/widget/EdgeEffect;)F
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    const/16 v1, 0x1f

    .line 5
    if-lt v0, v1, :cond_0

    .line 7
    invoke-static {p0}, Lo/t6;->b(Landroid/widget/EdgeEffect;)F

    .line 10
    move-result p0

    .line 11
    return p0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    return p0
.end method

.method public static z(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    invoke-static {}, Lo/Xd;->b()Lo/Xd;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0, p1}, Lo/Xd;->c(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method


# virtual methods
.method public abstract B([Landroid/text/InputFilter;)[Landroid/text/InputFilter;
.end method

.method public abstract G()Z
.end method

.method public abstract K(Ljava/lang/Throwable;)V
.end method

.method public abstract L(I)Landroid/view/View;
.end method

.method public abstract M()Z
.end method

.method public abstract N(Lo/H5;)V
.end method

.method public abstract X(Z)V
.end method

.method public abstract Y(Z)V
.end method

.method public abstract e0(Landroid/text/method/TransformationMethod;)Landroid/text/method/TransformationMethod;
.end method

.method public abstract x(Lo/Ke;FF)V
.end method
