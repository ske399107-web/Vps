.class public final Lo/wc;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lo/wc;[BI)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    aget-byte p0, p1, p2

    .line 6
    and-int/lit16 p0, p0, 0xff

    .line 8
    add-int/lit8 v0, p2, 0x1

    .line 10
    aget-byte v0, p1, v0

    .line 12
    and-int/lit16 v0, v0, 0xff

    .line 14
    add-int/lit8 v1, p2, 0x2

    .line 16
    aget-byte v1, p1, v1

    .line 18
    and-int/lit16 v1, v1, 0xff

    .line 20
    add-int/lit8 p2, p2, 0x3

    .line 22
    aget-byte p1, p1, p2

    .line 24
    and-int/lit16 p1, p1, 0xff

    .line 26
    new-instance p2, Ljava/lang/StringBuilder;

    .line 28
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 34
    const-string p0, "."

    .line 36
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 42
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 48
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 54
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    move-result-object p0

    .line 58
    return-object p0
.end method

.method public static final b(Lo/wc;[BILjava/lang/String;)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    new-array p0, v1, [C

    .line 8
    const/16 v2, 0x2e

    .line 10
    aput-char v2, p0, v0

    .line 12
    invoke-static {p3, p0}, Lo/tf;->I0(Ljava/lang/String;[C)Ljava/util/List;

    .line 15
    move-result-object p0

    .line 16
    :goto_0
    const/4 p3, 0x4

    .line 17
    if-ge v0, p3, :cond_0

    .line 19
    add-int p3, p2, v0

    .line 21
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 24
    move-result-object v2

    .line 25
    check-cast v2, Ljava/lang/String;

    .line 27
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 30
    move-result v2

    .line 31
    int-to-byte v2, v2

    .line 32
    aput-byte v2, p1, p3

    .line 34
    add-int/2addr v0, v1

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    return-void
.end method

.method public static final c(Lo/wc;[BII)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    ushr-int/lit8 p0, p3, 0x8

    .line 6
    and-int/lit16 p0, p0, 0xff

    .line 8
    int-to-byte p0, p0

    .line 9
    aput-byte p0, p1, p2

    .line 11
    add-int/lit8 p2, p2, 0x1

    .line 13
    and-int/lit16 p0, p3, 0xff

    .line 15
    int-to-byte p0, p0

    .line 16
    aput-byte p0, p1, p2

    .line 18
    return-void
.end method

.method public static final d(Lo/wc;[BIJ)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    const/16 p0, 0x18

    .line 6
    ushr-long v0, p3, p0

    .line 8
    const-wide/16 v2, 0xff

    .line 10
    and-long/2addr v0, v2

    .line 11
    long-to-int p0, v0

    .line 12
    int-to-byte p0, p0

    .line 13
    aput-byte p0, p1, p2

    .line 15
    add-int/lit8 p0, p2, 0x1

    .line 17
    const/16 v0, 0x10

    .line 19
    ushr-long v0, p3, v0

    .line 21
    and-long/2addr v0, v2

    .line 22
    long-to-int v0, v0

    .line 23
    int-to-byte v0, v0

    .line 24
    aput-byte v0, p1, p0

    .line 26
    add-int/lit8 p0, p2, 0x2

    .line 28
    const/16 v0, 0x8

    .line 30
    ushr-long v0, p3, v0

    .line 32
    and-long/2addr v0, v2

    .line 33
    long-to-int v0, v0

    .line 34
    int-to-byte v0, v0

    .line 35
    aput-byte v0, p1, p0

    .line 37
    add-int/lit8 p2, p2, 0x3

    .line 39
    and-long/2addr p3, v2

    .line 40
    long-to-int p0, p3

    .line 41
    int-to-byte p0, p0

    .line 42
    aput-byte p0, p1, p2

    .line 44
    return-void
.end method

.method public static final e(Lo/wc;[BI)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    aget-byte p0, p1, p2

    .line 6
    and-int/lit16 p0, p0, 0xff

    .line 8
    shl-int/lit8 p0, p0, 0x8

    .line 10
    add-int/lit8 p2, p2, 0x1

    .line 12
    aget-byte p1, p1, p2

    .line 14
    and-int/lit16 p1, p1, 0xff

    .line 16
    or-int/2addr p0, p1

    .line 17
    return p0
.end method

.method public static f([BIII)I
    .locals 4

    .line 1
    int-to-long v0, p3

    .line 2
    add-int/2addr p2, p1

    .line 3
    :goto_0
    add-int/lit8 p3, p1, 0x1

    .line 5
    if-ge p3, p2, :cond_0

    .line 7
    aget-byte v2, p0, p1

    .line 9
    and-int/lit16 v2, v2, 0xff

    .line 11
    shl-int/lit8 v2, v2, 0x8

    .line 13
    aget-byte p3, p0, p3

    .line 15
    and-int/lit16 p3, p3, 0xff

    .line 17
    or-int/2addr p3, v2

    .line 18
    int-to-long v2, p3

    .line 19
    add-long/2addr v0, v2

    .line 20
    add-int/lit8 p1, p1, 0x2

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    if-ge p1, p2, :cond_1

    .line 25
    aget-byte p0, p0, p1

    .line 27
    and-int/lit16 p0, p0, 0xff

    .line 29
    shl-int/lit8 p0, p0, 0x8

    .line 31
    int-to-long p0, p0

    .line 32
    add-long/2addr v0, p0

    .line 33
    :cond_1
    :goto_1
    const-wide/32 p0, 0xffff

    .line 36
    cmp-long p2, v0, p0

    .line 38
    if-lez p2, :cond_2

    .line 40
    and-long/2addr p0, v0

    .line 41
    const/16 p2, 0x10

    .line 43
    ushr-long p2, v0, p2

    .line 45
    add-long v0, p0, p2

    .line 47
    goto :goto_1

    .line 48
    :cond_2
    long-to-int p0, v0

    .line 49
    not-int p0, p0

    .line 50
    const p1, 0xffff

    .line 53
    and-int/2addr p0, p1

    .line 54
    return p0
.end method

.method public static g(Ljava/lang/String;)I
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v1, v0, [C

    .line 4
    const/16 v2, 0x2e

    .line 6
    const/4 v3, 0x0

    .line 7
    aput-char v2, v1, v3

    .line 9
    invoke-static {p0, v1}, Lo/tf;->I0(Ljava/lang/String;[C)Ljava/util/List;

    .line 12
    move-result-object p0

    .line 13
    new-instance v1, Ljava/util/ArrayList;

    .line 15
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    .line 18
    move-result v2

    .line 19
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 22
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 25
    move-result-object p0

    .line 26
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 29
    move-result v2

    .line 30
    if-eqz v2, :cond_0

    .line 32
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 35
    move-result-object v2

    .line 36
    check-cast v2, Ljava/lang/String;

    .line 38
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 41
    move-result v2

    .line 42
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 45
    move-result-object v2

    .line 46
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    goto :goto_0

    .line 50
    :cond_0
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 53
    move-result-object p0

    .line 54
    check-cast p0, Ljava/lang/Number;

    .line 56
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    .line 59
    move-result p0

    .line 60
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 63
    move-result-object v0

    .line 64
    check-cast v0, Ljava/lang/Number;

    .line 66
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 69
    move-result v0

    .line 70
    and-int/lit16 p0, p0, 0xff

    .line 72
    shl-int/lit8 p0, p0, 0x8

    .line 74
    and-int/lit16 v0, v0, 0xff

    .line 76
    or-int/2addr p0, v0

    .line 77
    const/4 v0, 0x2

    .line 78
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 81
    move-result-object v0

    .line 82
    check-cast v0, Ljava/lang/Number;

    .line 84
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 87
    move-result v0

    .line 88
    const/4 v2, 0x3

    .line 89
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 92
    move-result-object v1

    .line 93
    check-cast v1, Ljava/lang/Number;

    .line 95
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 98
    move-result v1

    .line 99
    and-int/lit16 v0, v0, 0xff

    .line 101
    shl-int/lit8 v0, v0, 0x8

    .line 103
    and-int/lit16 v1, v1, 0xff

    .line 105
    or-int/2addr v0, v1

    .line 106
    add-int/2addr v0, p0

    .line 107
    return v0
.end method
