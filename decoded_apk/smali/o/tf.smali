.class public abstract Lo/tf;
.super Lo/rf;
.source "SourceFile"


# direct methods
.method public static D0(Ljava/lang/String;ZLjava/lang/String;)Z
    .locals 1

    .line 1
    const-string v0, "<this>"

    .line 3
    invoke-static {p0, v0}, Lo/x9;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    const/4 v0, 0x0

    .line 7
    invoke-static {p0, p2, v0, p1}, Lo/tf;->F0(Ljava/lang/String;Ljava/lang/String;IZ)I

    .line 10
    move-result p0

    .line 11
    if-ltz p0, :cond_0

    .line 13
    const/4 v0, 0x1

    .line 14
    :cond_0
    return v0
.end method

.method public static final E0(Ljava/lang/CharSequence;)I
    .locals 1

    .line 1
    const-string v0, "<this>"

    .line 3
    invoke-static {p0, v0}, Lo/x9;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 9
    move-result p0

    .line 10
    add-int/lit8 p0, p0, -0x1

    .line 12
    return p0
.end method

.method public static final F0(Ljava/lang/String;Ljava/lang/String;IZ)I
    .locals 9

    .line 1
    const-string v0, "<this>"

    .line 3
    invoke-static {p0, v0}, Lo/x9;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    const-string v0, "string"

    .line 8
    invoke-static {p1, v0}, Lo/x9;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    if-nez p3, :cond_0

    .line 13
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    .line 16
    move-result p0

    .line 17
    goto/16 :goto_6

    .line 19
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 22
    move-result v0

    .line 23
    new-instance v1, Lo/w9;

    .line 25
    const/4 v2, 0x0

    .line 26
    if-gez p2, :cond_1

    .line 28
    move p2, v2

    .line 29
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 32
    move-result v3

    .line 33
    if-le v0, v3, :cond_2

    .line 35
    move v0, v3

    .line 36
    :cond_2
    const/4 v3, 0x1

    .line 37
    invoke-direct {v1, p2, v0, v3}, Lo/u9;-><init>(III)V

    .line 40
    const-string v0, "other"

    .line 42
    iget v1, v1, Lo/u9;->b:I

    .line 44
    if-eqz p0, :cond_7

    .line 46
    if-eqz p1, :cond_7

    .line 48
    if-le p2, v1, :cond_3

    .line 50
    goto/16 :goto_5

    .line 52
    :cond_3
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 55
    move-result v8

    .line 56
    invoke-static {p0, v0}, Lo/x9;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    const/4 v5, 0x0

    .line 60
    if-nez p3, :cond_4

    .line 62
    invoke-virtual {p1, v5, p0, p2, v8}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    .line 65
    move-result v2

    .line 66
    goto :goto_1

    .line 67
    :cond_4
    move-object v3, p1

    .line 68
    move v4, p3

    .line 69
    move-object v6, p0

    .line 70
    move v7, p2

    .line 71
    invoke-virtual/range {v3 .. v8}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    .line 74
    move-result v2

    .line 75
    :goto_1
    if-eqz v2, :cond_6

    .line 77
    :cond_5
    move p0, p2

    .line 78
    goto :goto_6

    .line 79
    :cond_6
    if-eq p2, v1, :cond_c

    .line 81
    add-int/lit8 p2, p2, 0x1

    .line 83
    goto :goto_0

    .line 84
    :cond_7
    if-le p2, v1, :cond_8

    .line 86
    goto :goto_5

    .line 87
    :cond_8
    :goto_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 90
    move-result v3

    .line 91
    invoke-static {p0, v0}, Lo/x9;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    if-ltz p2, :cond_b

    .line 96
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 99
    move-result v4

    .line 100
    sub-int/2addr v4, v3

    .line 101
    if-ltz v4, :cond_b

    .line 103
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 106
    move-result v4

    .line 107
    sub-int/2addr v4, v3

    .line 108
    if-le p2, v4, :cond_9

    .line 110
    goto :goto_4

    .line 111
    :cond_9
    move v4, v2

    .line 112
    :goto_3
    if-ge v4, v3, :cond_5

    .line 114
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    .line 117
    move-result v5

    .line 118
    add-int v6, p2, v4

    .line 120
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    .line 123
    move-result v6

    .line 124
    invoke-static {v5, v6, p3}, Lo/L1;->t(CCZ)Z

    .line 127
    move-result v5

    .line 128
    if-nez v5, :cond_a

    .line 130
    goto :goto_4

    .line 131
    :cond_a
    add-int/lit8 v4, v4, 0x1

    .line 133
    goto :goto_3

    .line 134
    :cond_b
    :goto_4
    if-eq p2, v1, :cond_c

    .line 136
    add-int/lit8 p2, p2, 0x1

    .line 138
    goto :goto_2

    .line 139
    :cond_c
    :goto_5
    const/4 p0, -0x1

    .line 140
    :goto_6
    return p0
.end method

.method public static G0(Ljava/lang/String;)Z
    .locals 4

    .line 1
    const-string v0, "<this>"

    .line 3
    invoke-static {p0, v0}, Lo/x9;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    const/4 v0, 0x0

    .line 7
    move v1, v0

    .line 8
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 11
    move-result v2

    .line 12
    if-ge v1, v2, :cond_1

    .line 14
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    .line 17
    move-result v2

    .line 18
    invoke-static {v2}, Ljava/lang/Character;->isWhitespace(C)Z

    .line 21
    move-result v3

    .line 22
    if-nez v3, :cond_0

    .line 24
    invoke-static {v2}, Ljava/lang/Character;->isSpaceChar(C)Z

    .line 27
    move-result v2

    .line 28
    if-eqz v2, :cond_2

    .line 30
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 32
    goto :goto_0

    .line 33
    :cond_1
    const/4 v0, 0x1

    .line 34
    :cond_2
    return v0
.end method

.method public static H0(Ljava/lang/String;C)Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "<this>"

    .line 3
    invoke-static {p0, v0}, Lo/x9;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    const/16 v0, 0x20

    .line 8
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    .line 11
    move-result-object p0

    .line 12
    const-string p1, "replace(...)"

    .line 14
    invoke-static {p0, p1}, Lo/x9;->n(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    return-object p0
.end method

.method public static I0(Ljava/lang/String;[C)Ljava/util/List;
    .locals 5

    .line 1
    const-string v0, "<this>"

    .line 3
    invoke-static {p0, v0}, Lo/x9;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    array-length v0, p1

    .line 7
    const/16 v1, 0xa

    .line 9
    const/4 v2, 0x1

    .line 10
    if-ne v0, v2, :cond_2

    .line 12
    const/4 v0, 0x0

    .line 13
    aget-char p1, p1, v0

    .line 15
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    .line 18
    move-result-object p1

    .line 19
    invoke-static {p0, p1, v0, v0}, Lo/tf;->F0(Ljava/lang/String;Ljava/lang/String;IZ)I

    .line 22
    move-result v2

    .line 23
    const/4 v3, -0x1

    .line 24
    if-eq v2, v3, :cond_1

    .line 26
    new-instance v4, Ljava/util/ArrayList;

    .line 28
    invoke-direct {v4, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 31
    move v1, v0

    .line 32
    :cond_0
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 46
    move-result v1

    .line 47
    add-int/2addr v1, v2

    .line 48
    invoke-static {p0, p1, v1, v0}, Lo/tf;->F0(Ljava/lang/String;Ljava/lang/String;IZ)I

    .line 51
    move-result v2

    .line 52
    if-ne v2, v3, :cond_0

    .line 54
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 57
    move-result p1

    .line 58
    invoke-virtual {p0, v1, p1}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    .line 61
    move-result-object p0

    .line 62
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 65
    move-result-object p0

    .line 66
    invoke-virtual {v4, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    goto :goto_1

    .line 70
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 73
    move-result-object p0

    .line 74
    invoke-static {p0}, Lo/L1;->H(Ljava/lang/Object;)Ljava/util/List;

    .line 77
    move-result-object v4

    .line 78
    goto :goto_1

    .line 79
    :cond_2
    new-instance v0, Lo/H1;

    .line 81
    new-instance v3, Lo/sf;

    .line 83
    invoke-direct {v3, p1}, Lo/sf;-><init>([C)V

    .line 86
    invoke-direct {v0, p0, v3}, Lo/H1;-><init>(Ljava/lang/String;Lo/sf;)V

    .line 89
    new-instance p1, Lo/xe;

    .line 91
    invoke-direct {p1, v0}, Lo/xe;-><init>(Lo/H1;)V

    .line 94
    new-instance v4, Ljava/util/ArrayList;

    .line 96
    instance-of v0, p1, Ljava/util/Collection;

    .line 98
    if-eqz v0, :cond_3

    .line 100
    move-object v0, p1

    .line 101
    check-cast v0, Ljava/util/Collection;

    .line 103
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    .line 106
    move-result v1

    .line 107
    :cond_3
    invoke-direct {v4, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 110
    invoke-virtual {p1}, Lo/xe;->iterator()Ljava/util/Iterator;

    .line 113
    move-result-object p1

    .line 114
    :goto_0
    move-object v0, p1

    .line 115
    check-cast v0, Lo/M5;

    .line 117
    invoke-virtual {v0}, Lo/M5;->hasNext()Z

    .line 120
    move-result v1

    .line 121
    if-eqz v1, :cond_4

    .line 123
    invoke-virtual {v0}, Lo/M5;->next()Ljava/lang/Object;

    .line 126
    move-result-object v0

    .line 127
    check-cast v0, Lo/w9;

    .line 129
    iget v1, v0, Lo/u9;->b:I

    .line 131
    add-int/2addr v1, v2

    .line 132
    iget v0, v0, Lo/u9;->a:I

    .line 134
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    .line 137
    move-result-object v0

    .line 138
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 141
    move-result-object v0

    .line 142
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 145
    goto :goto_0

    .line 146
    :cond_4
    :goto_1
    return-object v4
.end method

.method public static J0(Ljava/lang/String;C)Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "<this>"

    .line 3
    invoke-static {p0, v0}, Lo/x9;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    const-string v0, "missingDelimiterValue"

    .line 8
    invoke-static {p0, v0}, Lo/x9;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-static {p0}, Lo/tf;->E0(Ljava/lang/CharSequence;)I

    .line 14
    move-result v0

    .line 15
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->lastIndexOf(II)I

    .line 18
    move-result p1

    .line 19
    const/4 v0, -0x1

    .line 20
    if-ne p1, v0, :cond_0

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    add-int/lit8 p1, p1, 0x1

    .line 25
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 28
    move-result v0

    .line 29
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 32
    move-result-object p0

    .line 33
    const-string p1, "substring(...)"

    .line 35
    invoke-static {p0, p1}, Lo/x9;->n(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    :goto_0
    return-object p0
.end method

.method public static K0(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 11

    .line 1
    const-string v0, "<this>"

    .line 3
    invoke-static {p0, v0}, Lo/x9;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    const/16 v0, 0xa

    .line 8
    invoke-static {v0}, Lo/L1;->j(I)V

    .line 11
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 14
    move-result v1

    .line 15
    const/4 v2, 0x0

    .line 16
    if-nez v1, :cond_0

    .line 18
    goto/16 :goto_3

    .line 20
    :cond_0
    const/4 v3, 0x0

    .line 21
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    .line 24
    move-result v4

    .line 25
    const/16 v5, 0x30

    .line 27
    const v6, -0x7fffffff

    .line 30
    if-ge v4, v5, :cond_4

    .line 32
    const/4 v5, 0x1

    .line 33
    if-ne v1, v5, :cond_1

    .line 35
    goto :goto_3

    .line 36
    :cond_1
    const/16 v7, 0x2b

    .line 38
    if-eq v4, v7, :cond_3

    .line 40
    const/16 v6, 0x2d

    .line 42
    if-eq v4, v6, :cond_2

    .line 44
    goto :goto_3

    .line 45
    :cond_2
    const/high16 v6, -0x80000000

    .line 47
    move v4, v5

    .line 48
    goto :goto_0

    .line 49
    :cond_3
    move v4, v3

    .line 50
    goto :goto_0

    .line 51
    :cond_4
    move v4, v3

    .line 52
    move v5, v4

    .line 53
    :goto_0
    const v7, -0x38e38e3

    .line 56
    move v8, v7

    .line 57
    :goto_1
    if-ge v5, v1, :cond_8

    .line 59
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    .line 62
    move-result v9

    .line 63
    invoke-static {v9, v0}, Ljava/lang/Character;->digit(II)I

    .line 66
    move-result v9

    .line 67
    if-gez v9, :cond_5

    .line 69
    goto :goto_3

    .line 70
    :cond_5
    if-ge v3, v8, :cond_6

    .line 72
    if-ne v8, v7, :cond_a

    .line 74
    div-int/lit8 v8, v6, 0xa

    .line 76
    if-ge v3, v8, :cond_6

    .line 78
    goto :goto_3

    .line 79
    :cond_6
    mul-int/lit8 v3, v3, 0xa

    .line 81
    add-int v10, v6, v9

    .line 83
    if-ge v3, v10, :cond_7

    .line 85
    goto :goto_3

    .line 86
    :cond_7
    sub-int/2addr v3, v9

    .line 87
    add-int/lit8 v5, v5, 0x1

    .line 89
    goto :goto_1

    .line 90
    :cond_8
    if-eqz v4, :cond_9

    .line 92
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 95
    move-result-object p0

    .line 96
    :goto_2
    move-object v2, p0

    .line 97
    goto :goto_3

    .line 98
    :cond_9
    neg-int p0, v3

    .line 99
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 102
    move-result-object p0

    .line 103
    goto :goto_2

    .line 104
    :cond_a
    :goto_3
    return-object v2
.end method

.method public static L0(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 7

    .line 1
    const-string v0, "<this>"

    .line 3
    invoke-static {p0, v0}, Lo/x9;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x1

    .line 11
    sub-int/2addr v0, v1

    .line 12
    const/4 v2, 0x0

    .line 13
    move v3, v2

    .line 14
    move v4, v3

    .line 15
    :goto_0
    if-gt v3, v0, :cond_6

    .line 17
    if-nez v4, :cond_0

    .line 19
    move v5, v3

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    move v5, v0

    .line 22
    :goto_1
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    .line 25
    move-result v5

    .line 26
    invoke-static {v5}, Ljava/lang/Character;->isWhitespace(C)Z

    .line 29
    move-result v6

    .line 30
    if-nez v6, :cond_2

    .line 32
    invoke-static {v5}, Ljava/lang/Character;->isSpaceChar(C)Z

    .line 35
    move-result v5

    .line 36
    if-eqz v5, :cond_1

    .line 38
    goto :goto_2

    .line 39
    :cond_1
    move v5, v2

    .line 40
    goto :goto_3

    .line 41
    :cond_2
    :goto_2
    move v5, v1

    .line 42
    :goto_3
    if-nez v4, :cond_4

    .line 44
    if-nez v5, :cond_3

    .line 46
    move v4, v1

    .line 47
    goto :goto_0

    .line 48
    :cond_3
    add-int/lit8 v3, v3, 0x1

    .line 50
    goto :goto_0

    .line 51
    :cond_4
    if-nez v5, :cond_5

    .line 53
    goto :goto_4

    .line 54
    :cond_5
    add-int/lit8 v0, v0, -0x1

    .line 56
    goto :goto_0

    .line 57
    :cond_6
    :goto_4
    add-int/2addr v0, v1

    .line 58
    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    .line 61
    move-result-object p0

    .line 62
    return-object p0
.end method
