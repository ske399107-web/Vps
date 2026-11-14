.class public final synthetic Lo/sf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo/J8;


# instance fields
.field public final synthetic a:[C


# direct methods
.method public synthetic constructor <init>([C)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/sf;->a:[C

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    check-cast p1, Ljava/lang/CharSequence;

    .line 3
    check-cast p2, Ljava/lang/Integer;

    .line 5
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 8
    move-result p2

    .line 9
    const-string v0, "$this$DelimitedRangesSequence"

    .line 11
    invoke-static {p1, v0}, Lo/x9;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    iget-object v0, p0, Lo/sf;->a:[C

    .line 16
    const/4 v1, 0x0

    .line 17
    const-string v2, "<this>"

    .line 19
    invoke-static {p1, v2}, Lo/x9;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    const/4 v2, 0x0

    .line 23
    array-length v3, v0

    .line 24
    const/4 v4, 0x1

    .line 25
    if-ne v3, v4, :cond_2

    .line 27
    instance-of v3, p1, Ljava/lang/String;

    .line 29
    if-eqz v3, :cond_2

    .line 31
    array-length v1, v0

    .line 32
    if-eqz v1, :cond_1

    .line 34
    if-ne v1, v4, :cond_0

    .line 36
    aget-char v0, v0, v2

    .line 38
    check-cast p1, Ljava/lang/String;

    .line 40
    invoke-virtual {p1, v0, p2}, Ljava/lang/String;->indexOf(II)I

    .line 43
    move-result p1

    .line 44
    goto :goto_2

    .line 45
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 47
    const-string p2, "Array has more than one element."

    .line 49
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 52
    throw p1

    .line 53
    :cond_1
    new-instance p1, Ljava/util/NoSuchElementException;

    .line 55
    const-string p2, "Array is empty."

    .line 57
    invoke-direct {p1, p2}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    .line 60
    throw p1

    .line 61
    :cond_2
    if-gez p2, :cond_3

    .line 63
    move p2, v2

    .line 64
    :cond_3
    invoke-static {p1}, Lo/tf;->E0(Ljava/lang/CharSequence;)I

    .line 67
    move-result v3

    .line 68
    if-gt p2, v3, :cond_6

    .line 70
    :goto_0
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    .line 73
    move-result v4

    .line 74
    array-length v5, v0

    .line 75
    move v6, v2

    .line 76
    :goto_1
    if-ge v6, v5, :cond_5

    .line 78
    aget-char v7, v0, v6

    .line 80
    invoke-static {v7, v4, v1}, Lo/L1;->t(CCZ)Z

    .line 83
    move-result v7

    .line 84
    if-eqz v7, :cond_4

    .line 86
    move p1, p2

    .line 87
    goto :goto_2

    .line 88
    :cond_4
    add-int/lit8 v6, v6, 0x1

    .line 90
    goto :goto_1

    .line 91
    :cond_5
    if-eq p2, v3, :cond_6

    .line 93
    add-int/lit8 p2, p2, 0x1

    .line 95
    goto :goto_0

    .line 96
    :cond_6
    const/4 p1, -0x1

    .line 97
    :goto_2
    if-gez p1, :cond_7

    .line 99
    const/4 p1, 0x0

    .line 100
    goto :goto_3

    .line 101
    :cond_7
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 104
    move-result-object p1

    .line 105
    const/4 p2, 0x1

    .line 106
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 109
    move-result-object p2

    .line 110
    new-instance v0, Lo/Cc;

    .line 112
    invoke-direct {v0, p1, p2}, Lo/Cc;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 115
    move-object p1, v0

    .line 116
    :goto_3
    return-object p1
.end method
