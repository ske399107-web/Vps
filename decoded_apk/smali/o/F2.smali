.class public Lo/F2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lo/We;

.field public b:F

.field public final c:Ljava/util/ArrayList;

.field public final d:Lo/y2;

.field public e:Z


# direct methods
.method public constructor <init>(Lo/s2;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lo/F2;->a:Lo/We;

    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lo/F2;->b:F

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 15
    iput-object v0, p0, Lo/F2;->c:Ljava/util/ArrayList;

    .line 17
    const/4 v0, 0x0

    .line 18
    iput-boolean v0, p0, Lo/F2;->e:Z

    .line 20
    new-instance v0, Lo/y2;

    .line 22
    invoke-direct {v0, p0, p1}, Lo/y2;-><init>(Lo/F2;Lo/s2;)V

    .line 25
    iput-object v0, p0, Lo/F2;->d:Lo/y2;

    .line 27
    return-void
.end method


# virtual methods
.method public final a(Lo/ba;I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lo/F2;->d:Lo/y2;

    .line 3
    invoke-virtual {p1, p2}, Lo/ba;->j(I)Lo/We;

    .line 6
    move-result-object v1

    .line 7
    const/high16 v2, 0x3f800000    # 1.0f

    .line 9
    invoke-virtual {v0, v1, v2}, Lo/y2;->g(Lo/We;F)V

    .line 12
    iget-object v0, p0, Lo/F2;->d:Lo/y2;

    .line 14
    invoke-virtual {p1, p2}, Lo/ba;->j(I)Lo/We;

    .line 17
    move-result-object p1

    .line 18
    const/high16 p2, -0x40800000    # -1.0f

    .line 20
    invoke-virtual {v0, p1, p2}, Lo/y2;->g(Lo/We;F)V

    .line 23
    return-void
.end method

.method public final b(Lo/We;Lo/We;Lo/We;I)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p4, :cond_1

    .line 4
    if-gez p4, :cond_0

    .line 6
    mul-int/lit8 p4, p4, -0x1

    .line 8
    const/4 v0, 0x1

    .line 9
    :cond_0
    int-to-float p4, p4

    .line 10
    iput p4, p0, Lo/F2;->b:F

    .line 12
    :cond_1
    const/high16 p4, 0x3f800000    # 1.0f

    .line 14
    const/high16 v1, -0x40800000    # -1.0f

    .line 16
    if-nez v0, :cond_2

    .line 18
    iget-object v0, p0, Lo/F2;->d:Lo/y2;

    .line 20
    invoke-virtual {v0, p1, v1}, Lo/y2;->g(Lo/We;F)V

    .line 23
    iget-object p1, p0, Lo/F2;->d:Lo/y2;

    .line 25
    invoke-virtual {p1, p2, p4}, Lo/y2;->g(Lo/We;F)V

    .line 28
    iget-object p1, p0, Lo/F2;->d:Lo/y2;

    .line 30
    invoke-virtual {p1, p3, p4}, Lo/y2;->g(Lo/We;F)V

    .line 33
    goto :goto_0

    .line 34
    :cond_2
    iget-object v0, p0, Lo/F2;->d:Lo/y2;

    .line 36
    invoke-virtual {v0, p1, p4}, Lo/y2;->g(Lo/We;F)V

    .line 39
    iget-object p1, p0, Lo/F2;->d:Lo/y2;

    .line 41
    invoke-virtual {p1, p2, v1}, Lo/y2;->g(Lo/We;F)V

    .line 44
    iget-object p1, p0, Lo/F2;->d:Lo/y2;

    .line 46
    invoke-virtual {p1, p3, v1}, Lo/y2;->g(Lo/We;F)V

    .line 49
    :goto_0
    return-void
.end method

.method public final c(Lo/We;Lo/We;Lo/We;I)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p4, :cond_1

    .line 4
    if-gez p4, :cond_0

    .line 6
    mul-int/lit8 p4, p4, -0x1

    .line 8
    const/4 v0, 0x1

    .line 9
    :cond_0
    int-to-float p4, p4

    .line 10
    iput p4, p0, Lo/F2;->b:F

    .line 12
    :cond_1
    const/high16 p4, 0x3f800000    # 1.0f

    .line 14
    const/high16 v1, -0x40800000    # -1.0f

    .line 16
    if-nez v0, :cond_2

    .line 18
    iget-object v0, p0, Lo/F2;->d:Lo/y2;

    .line 20
    invoke-virtual {v0, p1, v1}, Lo/y2;->g(Lo/We;F)V

    .line 23
    iget-object p1, p0, Lo/F2;->d:Lo/y2;

    .line 25
    invoke-virtual {p1, p2, p4}, Lo/y2;->g(Lo/We;F)V

    .line 28
    iget-object p1, p0, Lo/F2;->d:Lo/y2;

    .line 30
    invoke-virtual {p1, p3, v1}, Lo/y2;->g(Lo/We;F)V

    .line 33
    goto :goto_0

    .line 34
    :cond_2
    iget-object v0, p0, Lo/F2;->d:Lo/y2;

    .line 36
    invoke-virtual {v0, p1, p4}, Lo/y2;->g(Lo/We;F)V

    .line 39
    iget-object p1, p0, Lo/F2;->d:Lo/y2;

    .line 41
    invoke-virtual {p1, p2, v1}, Lo/y2;->g(Lo/We;F)V

    .line 44
    iget-object p1, p0, Lo/F2;->d:Lo/y2;

    .line 46
    invoke-virtual {p1, p3, p4}, Lo/y2;->g(Lo/We;F)V

    .line 49
    :goto_0
    return-void
.end method

.method public d([Z)Lo/We;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Lo/F2;->f([ZLo/We;)Lo/We;

    .line 5
    move-result-object p1

    .line 6
    return-object p1
.end method

.method public e()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lo/F2;->a:Lo/We;

    .line 3
    if-nez v0, :cond_0

    .line 5
    iget v0, p0, Lo/F2;->b:F

    .line 7
    const/4 v1, 0x0

    .line 8
    cmpl-float v0, v0, v1

    .line 10
    if-nez v0, :cond_0

    .line 12
    iget-object v0, p0, Lo/F2;->d:Lo/y2;

    .line 14
    invoke-virtual {v0}, Lo/y2;->d()I

    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_0

    .line 20
    const/4 v0, 0x1

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 v0, 0x0

    .line 23
    :goto_0
    return v0
.end method

.method public final f([ZLo/We;)Lo/We;
    .locals 9

    .line 1
    iget-object v0, p0, Lo/F2;->d:Lo/y2;

    .line 3
    invoke-virtual {v0}, Lo/y2;->d()I

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    const/4 v2, 0x0

    .line 9
    const/4 v3, 0x0

    .line 10
    move v4, v1

    .line 11
    :goto_0
    if-ge v3, v0, :cond_3

    .line 13
    iget-object v5, p0, Lo/F2;->d:Lo/y2;

    .line 15
    invoke-virtual {v5, v3}, Lo/y2;->f(I)F

    .line 18
    move-result v5

    .line 19
    cmpg-float v6, v5, v1

    .line 21
    if-gez v6, :cond_2

    .line 23
    iget-object v6, p0, Lo/F2;->d:Lo/y2;

    .line 25
    invoke-virtual {v6, v3}, Lo/y2;->e(I)Lo/We;

    .line 28
    move-result-object v6

    .line 29
    if-eqz p1, :cond_0

    .line 31
    iget v7, v6, Lo/We;->b:I

    .line 33
    aget-boolean v7, p1, v7

    .line 35
    if-nez v7, :cond_2

    .line 37
    :cond_0
    if-eq v6, p2, :cond_2

    .line 39
    iget v7, v6, Lo/We;->l:I

    .line 41
    const/4 v8, 0x3

    .line 42
    if-eq v7, v8, :cond_1

    .line 44
    const/4 v8, 0x4

    .line 45
    if-ne v7, v8, :cond_2

    .line 47
    :cond_1
    cmpg-float v7, v5, v4

    .line 49
    if-gez v7, :cond_2

    .line 51
    move v4, v5

    .line 52
    move-object v2, v6

    .line 53
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 55
    goto :goto_0

    .line 56
    :cond_3
    return-object v2
.end method

.method public final g(Lo/We;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lo/F2;->a:Lo/We;

    .line 3
    const/high16 v1, -0x40800000    # -1.0f

    .line 5
    if-eqz v0, :cond_0

    .line 7
    iget-object v2, p0, Lo/F2;->d:Lo/y2;

    .line 9
    invoke-virtual {v2, v0, v1}, Lo/y2;->g(Lo/We;F)V

    .line 12
    iget-object v0, p0, Lo/F2;->a:Lo/We;

    .line 14
    const/4 v2, -0x1

    .line 15
    iput v2, v0, Lo/We;->c:I

    .line 17
    const/4 v0, 0x0

    .line 18
    iput-object v0, p0, Lo/F2;->a:Lo/We;

    .line 20
    :cond_0
    iget-object v0, p0, Lo/F2;->d:Lo/y2;

    .line 22
    const/4 v2, 0x1

    .line 23
    invoke-virtual {v0, p1, v2}, Lo/y2;->h(Lo/We;Z)F

    .line 26
    move-result v0

    .line 27
    mul-float/2addr v0, v1

    .line 28
    iput-object p1, p0, Lo/F2;->a:Lo/We;

    .line 30
    const/high16 p1, 0x3f800000    # 1.0f

    .line 32
    cmpl-float p1, v0, p1

    .line 34
    if-nez p1, :cond_1

    .line 36
    return-void

    .line 37
    :cond_1
    iget p1, p0, Lo/F2;->b:F

    .line 39
    div-float/2addr p1, v0

    .line 40
    iput p1, p0, Lo/F2;->b:F

    .line 42
    iget-object p1, p0, Lo/F2;->d:Lo/y2;

    .line 44
    iget v1, p1, Lo/y2;->h:I

    .line 46
    const/4 v2, 0x0

    .line 47
    :goto_0
    const/4 v3, -0x1

    .line 48
    if-eq v1, v3, :cond_2

    .line 50
    iget v3, p1, Lo/y2;->a:I

    .line 52
    if-ge v2, v3, :cond_2

    .line 54
    iget-object v3, p1, Lo/y2;->g:[F

    .line 56
    aget v4, v3, v1

    .line 58
    div-float/2addr v4, v0

    .line 59
    aput v4, v3, v1

    .line 61
    iget-object v3, p1, Lo/y2;->f:[I

    .line 63
    aget v1, v3, v1

    .line 65
    add-int/lit8 v2, v2, 0x1

    .line 67
    goto :goto_0

    .line 68
    :cond_2
    return-void
.end method

.method public final h(Lo/ba;Lo/We;Z)V
    .locals 3

    .line 1
    if-eqz p2, :cond_2

    .line 3
    iget-boolean v0, p2, Lo/We;->f:Z

    .line 5
    if-nez v0, :cond_0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p0, Lo/F2;->d:Lo/y2;

    .line 10
    invoke-virtual {v0, p2}, Lo/y2;->c(Lo/We;)F

    .line 13
    move-result v0

    .line 14
    iget v1, p0, Lo/F2;->b:F

    .line 16
    iget v2, p2, Lo/We;->e:F

    .line 18
    mul-float/2addr v2, v0

    .line 19
    add-float/2addr v2, v1

    .line 20
    iput v2, p0, Lo/F2;->b:F

    .line 22
    iget-object v0, p0, Lo/F2;->d:Lo/y2;

    .line 24
    invoke-virtual {v0, p2, p3}, Lo/y2;->h(Lo/We;Z)F

    .line 27
    if-eqz p3, :cond_1

    .line 29
    invoke-virtual {p2, p0}, Lo/We;->b(Lo/F2;)V

    .line 32
    :cond_1
    iget-object p2, p0, Lo/F2;->d:Lo/y2;

    .line 34
    invoke-virtual {p2}, Lo/y2;->d()I

    .line 37
    move-result p2

    .line 38
    if-nez p2, :cond_2

    .line 40
    const/4 p2, 0x1

    .line 41
    iput-boolean p2, p0, Lo/F2;->e:Z

    .line 43
    iput-boolean p2, p1, Lo/ba;->b:Z

    .line 45
    :cond_2
    :goto_0
    return-void
.end method

.method public i(Lo/ba;Lo/F2;Z)V
    .locals 7

    .line 1
    iget-object v0, p0, Lo/F2;->d:Lo/y2;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    iget-object v1, p2, Lo/F2;->a:Lo/We;

    .line 8
    invoke-virtual {v0, v1}, Lo/y2;->c(Lo/We;)F

    .line 11
    move-result v1

    .line 12
    iget-object v2, p2, Lo/F2;->a:Lo/We;

    .line 14
    invoke-virtual {v0, v2, p3}, Lo/y2;->h(Lo/We;Z)F

    .line 17
    iget-object v2, p2, Lo/F2;->d:Lo/y2;

    .line 19
    invoke-virtual {v2}, Lo/y2;->d()I

    .line 22
    move-result v3

    .line 23
    const/4 v4, 0x0

    .line 24
    :goto_0
    if-ge v4, v3, :cond_0

    .line 26
    invoke-virtual {v2, v4}, Lo/y2;->e(I)Lo/We;

    .line 29
    move-result-object v5

    .line 30
    invoke-virtual {v2, v5}, Lo/y2;->c(Lo/We;)F

    .line 33
    move-result v6

    .line 34
    mul-float/2addr v6, v1

    .line 35
    invoke-virtual {v0, v5, v6, p3}, Lo/y2;->a(Lo/We;FZ)V

    .line 38
    add-int/lit8 v4, v4, 0x1

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    iget v0, p0, Lo/F2;->b:F

    .line 43
    iget v2, p2, Lo/F2;->b:F

    .line 45
    mul-float/2addr v2, v1

    .line 46
    add-float/2addr v2, v0

    .line 47
    iput v2, p0, Lo/F2;->b:F

    .line 49
    if-eqz p3, :cond_1

    .line 51
    iget-object p2, p2, Lo/F2;->a:Lo/We;

    .line 53
    invoke-virtual {p2, p0}, Lo/We;->b(Lo/F2;)V

    .line 56
    :cond_1
    iget-object p2, p0, Lo/F2;->a:Lo/We;

    .line 58
    if-eqz p2, :cond_2

    .line 60
    iget-object p2, p0, Lo/F2;->d:Lo/y2;

    .line 62
    invoke-virtual {p2}, Lo/y2;->d()I

    .line 65
    move-result p2

    .line 66
    if-nez p2, :cond_2

    .line 68
    const/4 p2, 0x1

    .line 69
    iput-boolean p2, p0, Lo/F2;->e:Z

    .line 71
    iput-boolean p2, p1, Lo/ba;->b:Z

    .line 73
    :cond_2
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 10

    .line 1
    iget-object v0, p0, Lo/F2;->a:Lo/We;

    .line 3
    if-nez v0, :cond_0

    .line 5
    const-string v0, "0"

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 10
    const-string v1, ""

    .line 12
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    iget-object v1, p0, Lo/F2;->a:Lo/We;

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    move-result-object v0

    .line 24
    :goto_0
    const-string v1, " = "

    .line 26
    invoke-static {v0, v1}, Lo/Ve;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 29
    move-result-object v0

    .line 30
    iget v1, p0, Lo/F2;->b:F

    .line 32
    const/4 v2, 0x0

    .line 33
    cmpl-float v1, v1, v2

    .line 35
    const/4 v3, 0x1

    .line 36
    const/4 v4, 0x0

    .line 37
    if-eqz v1, :cond_1

    .line 39
    invoke-static {v0}, Lo/Ve;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    move-result-object v0

    .line 43
    iget v1, p0, Lo/F2;->b:F

    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 48
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    move-result-object v0

    .line 52
    move v1, v3

    .line 53
    goto :goto_1

    .line 54
    :cond_1
    move v1, v4

    .line 55
    :goto_1
    iget-object v5, p0, Lo/F2;->d:Lo/y2;

    .line 57
    invoke-virtual {v5}, Lo/y2;->d()I

    .line 60
    move-result v5

    .line 61
    :goto_2
    if-ge v4, v5, :cond_8

    .line 63
    iget-object v6, p0, Lo/F2;->d:Lo/y2;

    .line 65
    invoke-virtual {v6, v4}, Lo/y2;->e(I)Lo/We;

    .line 68
    move-result-object v6

    .line 69
    if-nez v6, :cond_2

    .line 71
    goto :goto_6

    .line 72
    :cond_2
    iget-object v7, p0, Lo/F2;->d:Lo/y2;

    .line 74
    invoke-virtual {v7, v4}, Lo/y2;->f(I)F

    .line 77
    move-result v7

    .line 78
    cmpl-float v8, v7, v2

    .line 80
    if-nez v8, :cond_3

    .line 82
    goto :goto_6

    .line 83
    :cond_3
    invoke-virtual {v6}, Lo/We;->toString()Ljava/lang/String;

    .line 86
    move-result-object v6

    .line 87
    const/high16 v9, -0x40800000    # -1.0f

    .line 89
    if-nez v1, :cond_4

    .line 91
    cmpg-float v1, v7, v2

    .line 93
    if-gez v1, :cond_6

    .line 95
    const-string v1, "- "

    .line 97
    invoke-static {v0, v1}, Lo/Ve;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 100
    move-result-object v0

    .line 101
    :goto_3
    mul-float/2addr v7, v9

    .line 102
    goto :goto_4

    .line 103
    :cond_4
    if-lez v8, :cond_5

    .line 105
    const-string v1, " + "

    .line 107
    invoke-static {v0, v1}, Lo/Ve;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 110
    move-result-object v0

    .line 111
    goto :goto_4

    .line 112
    :cond_5
    const-string v1, " - "

    .line 114
    invoke-static {v0, v1}, Lo/Ve;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 117
    move-result-object v0

    .line 118
    goto :goto_3

    .line 119
    :cond_6
    :goto_4
    const/high16 v1, 0x3f800000    # 1.0f

    .line 121
    cmpl-float v1, v7, v1

    .line 123
    if-nez v1, :cond_7

    .line 125
    invoke-static {v0, v6}, Lo/Ve;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 128
    move-result-object v0

    .line 129
    goto :goto_5

    .line 130
    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 132
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 135
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 141
    const-string v0, " "

    .line 143
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 152
    move-result-object v0

    .line 153
    :goto_5
    move v1, v3

    .line 154
    :goto_6
    add-int/lit8 v4, v4, 0x1

    .line 156
    goto :goto_2

    .line 157
    :cond_8
    if-nez v1, :cond_9

    .line 159
    const-string v1, "0.0"

    .line 161
    invoke-static {v0, v1}, Lo/Ve;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 164
    move-result-object v0

    .line 165
    :cond_9
    return-object v0
.end method
