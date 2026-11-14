.class public abstract Lo/e4;
.super Lo/k4;
.source "SourceFile"


# direct methods
.method public static k0(Ljava/util/Collection;Ljava/lang/String;Lo/F8;I)Ljava/lang/String;
    .locals 4

    .line 1
    and-int/lit8 v0, p3, 0x1

    .line 3
    if-eqz v0, :cond_0

    .line 5
    const-string p1, ", "

    .line 7
    :cond_0
    and-int/lit8 v0, p3, 0x2

    .line 9
    const-string v1, ""

    .line 11
    if-eqz v0, :cond_1

    .line 13
    move-object v0, v1

    .line 14
    goto :goto_0

    .line 15
    :cond_1
    const-string v0, "["

    .line 17
    :goto_0
    and-int/lit8 v2, p3, 0x4

    .line 19
    if-eqz v2, :cond_2

    .line 21
    goto :goto_1

    .line 22
    :cond_2
    const-string v1, "]"

    .line 24
    :goto_1
    and-int/lit8 p3, p3, 0x20

    .line 26
    if-eqz p3, :cond_3

    .line 28
    const/4 p2, 0x0

    .line 29
    :cond_3
    new-instance p3, Ljava/lang/StringBuilder;

    .line 31
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 37
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 40
    move-result-object p0

    .line 41
    const/4 v0, 0x0

    .line 42
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 45
    move-result v2

    .line 46
    if-eqz v2, :cond_9

    .line 48
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 51
    move-result-object v2

    .line 52
    const/4 v3, 0x1

    .line 53
    add-int/2addr v0, v3

    .line 54
    if-le v0, v3, :cond_4

    .line 56
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 59
    :cond_4
    if-eqz p2, :cond_5

    .line 61
    invoke-interface {p2, v2}, Lo/F8;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    move-result-object v2

    .line 65
    check-cast v2, Ljava/lang/CharSequence;

    .line 67
    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 70
    goto :goto_2

    .line 71
    :cond_5
    if-nez v2, :cond_6

    .line 73
    goto :goto_3

    .line 74
    :cond_6
    instance-of v3, v2, Ljava/lang/CharSequence;

    .line 76
    :goto_3
    if-eqz v3, :cond_7

    .line 78
    check-cast v2, Ljava/lang/CharSequence;

    .line 80
    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 83
    goto :goto_2

    .line 84
    :cond_7
    instance-of v3, v2, Ljava/lang/Character;

    .line 86
    if-eqz v3, :cond_8

    .line 88
    check-cast v2, Ljava/lang/Character;

    .line 90
    invoke-virtual {v2}, Ljava/lang/Character;->charValue()C

    .line 93
    move-result v2

    .line 94
    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/Appendable;

    .line 97
    goto :goto_2

    .line 98
    :cond_8
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 101
    move-result-object v2

    .line 102
    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 105
    goto :goto_2

    .line 106
    :cond_9
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 109
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    move-result-object p0

    .line 113
    return-object p0
.end method

.method public static l0(Ljava/util/ArrayList;)Ljava/util/List;
    .locals 2

    .line 1
    const-string v0, "<this>"

    .line 3
    invoke-static {p0, v0}, Lo/x9;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    sget-object v0, Lo/V6;->a:Lo/V6;

    .line 8
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_1

    .line 14
    const/4 v0, 0x1

    .line 15
    if-eq v1, v0, :cond_0

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    .line 19
    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v0, 0x0

    .line 24
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 27
    move-result-object p0

    .line 28
    invoke-static {p0}, Lo/L1;->H(Ljava/lang/Object;)Ljava/util/List;

    .line 31
    move-result-object v0

    .line 32
    :cond_1
    :goto_0
    return-object v0
.end method
