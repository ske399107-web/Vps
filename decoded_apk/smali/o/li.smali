.class public final Lo/li;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static f:I


# instance fields
.field public a:Ljava/util/ArrayList;

.field public b:I

.field public c:I

.field public d:Ljava/util/ArrayList;

.field public e:I


# virtual methods
.method public final a(Ljava/util/ArrayList;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lo/li;->a:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    move-result v0

    .line 7
    iget v1, p0, Lo/li;->e:I

    .line 9
    const/4 v2, -0x1

    .line 10
    if-eq v1, v2, :cond_1

    .line 12
    if-lez v0, :cond_1

    .line 14
    const/4 v1, 0x0

    .line 15
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 18
    move-result v2

    .line 19
    if-ge v1, v2, :cond_1

    .line 21
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 24
    move-result-object v2

    .line 25
    check-cast v2, Lo/li;

    .line 27
    iget v3, p0, Lo/li;->e:I

    .line 29
    iget v4, v2, Lo/li;->b:I

    .line 31
    if-ne v3, v4, :cond_0

    .line 33
    iget v3, p0, Lo/li;->c:I

    .line 35
    invoke-virtual {p0, v3, v2}, Lo/li;->c(ILo/li;)V

    .line 38
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 40
    goto :goto_0

    .line 41
    :cond_1
    if-nez v0, :cond_2

    .line 43
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 46
    :cond_2
    return-void
.end method

.method public final b(Lo/ba;I)I
    .locals 8

    .line 1
    iget-object v0, p0, Lo/li;->a:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_0

    .line 10
    return v2

    .line 11
    :cond_0
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 14
    move-result-object v1

    .line 15
    check-cast v1, Lo/L4;

    .line 17
    iget-object v1, v1, Lo/L4;->T:Lo/L4;

    .line 19
    check-cast v1, Lo/M4;

    .line 21
    invoke-virtual {p1}, Lo/ba;->t()V

    .line 24
    invoke-virtual {v1, p1, v2}, Lo/L4;->b(Lo/ba;Z)V

    .line 27
    move v3, v2

    .line 28
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 31
    move-result v4

    .line 32
    if-ge v3, v4, :cond_1

    .line 34
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 37
    move-result-object v4

    .line 38
    check-cast v4, Lo/L4;

    .line 40
    invoke-virtual {v4, p1, v2}, Lo/L4;->b(Lo/ba;Z)V

    .line 43
    add-int/lit8 v3, v3, 0x1

    .line 45
    goto :goto_0

    .line 46
    :cond_1
    if-nez p2, :cond_2

    .line 48
    iget v3, v1, Lo/M4;->z0:I

    .line 50
    if-lez v3, :cond_2

    .line 52
    invoke-static {v1, p1, v0, v2}, Lo/L1;->f(Lo/M4;Lo/ba;Ljava/util/ArrayList;I)V

    .line 55
    :cond_2
    const/4 v3, 0x1

    .line 56
    if-ne p2, v3, :cond_3

    .line 58
    iget v4, v1, Lo/M4;->A0:I

    .line 60
    if-lez v4, :cond_3

    .line 62
    invoke-static {v1, p1, v0, v3}, Lo/L1;->f(Lo/M4;Lo/ba;Ljava/util/ArrayList;I)V

    .line 65
    :cond_3
    :try_start_0
    invoke-virtual {p1}, Lo/ba;->p()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    goto :goto_1

    .line 69
    :catch_0
    move-exception v3

    .line 70
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    .line 72
    new-instance v5, Ljava/lang/StringBuilder;

    .line 74
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 77
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 80
    move-result-object v6

    .line 81
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    const-string v6, "\n"

    .line 86
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    invoke-virtual {v3}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    .line 92
    move-result-object v3

    .line 93
    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 96
    move-result-object v3

    .line 97
    const-string v6, "["

    .line 99
    const-string v7, "   at "

    .line 101
    invoke-virtual {v3, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 104
    move-result-object v3

    .line 105
    const-string v6, ","

    .line 107
    const-string v7, "\n   at"

    .line 109
    invoke-virtual {v3, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 112
    move-result-object v3

    .line 113
    const-string v6, "]"

    .line 115
    const-string v7, ""

    .line 117
    invoke-virtual {v3, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 120
    move-result-object v3

    .line 121
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 127
    move-result-object v3

    .line 128
    invoke-virtual {v4, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 131
    :goto_1
    new-instance v3, Ljava/util/ArrayList;

    .line 133
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 136
    iput-object v3, p0, Lo/li;->d:Ljava/util/ArrayList;

    .line 138
    :goto_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 141
    move-result v3

    .line 142
    if-ge v2, v3, :cond_4

    .line 144
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 147
    move-result-object v3

    .line 148
    check-cast v3, Lo/L4;

    .line 150
    new-instance v4, Lo/qg;

    .line 152
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 155
    new-instance v5, Ljava/lang/ref/WeakReference;

    .line 157
    invoke-direct {v5, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 160
    iget-object v5, v3, Lo/L4;->I:Lo/x4;

    .line 162
    invoke-static {v5}, Lo/ba;->n(Ljava/lang/Object;)I

    .line 165
    iget-object v5, v3, Lo/L4;->J:Lo/x4;

    .line 167
    invoke-static {v5}, Lo/ba;->n(Ljava/lang/Object;)I

    .line 170
    iget-object v5, v3, Lo/L4;->K:Lo/x4;

    .line 172
    invoke-static {v5}, Lo/ba;->n(Ljava/lang/Object;)I

    .line 175
    iget-object v5, v3, Lo/L4;->L:Lo/x4;

    .line 177
    invoke-static {v5}, Lo/ba;->n(Ljava/lang/Object;)I

    .line 180
    iget-object v3, v3, Lo/L4;->M:Lo/x4;

    .line 182
    invoke-static {v3}, Lo/ba;->n(Ljava/lang/Object;)I

    .line 185
    iget-object v3, p0, Lo/li;->d:Ljava/util/ArrayList;

    .line 187
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 190
    add-int/lit8 v2, v2, 0x1

    .line 192
    goto :goto_2

    .line 193
    :cond_4
    if-nez p2, :cond_5

    .line 195
    iget-object p2, v1, Lo/L4;->I:Lo/x4;

    .line 197
    invoke-static {p2}, Lo/ba;->n(Ljava/lang/Object;)I

    .line 200
    move-result p2

    .line 201
    iget-object v0, v1, Lo/L4;->K:Lo/x4;

    .line 203
    invoke-static {v0}, Lo/ba;->n(Ljava/lang/Object;)I

    .line 206
    move-result v0

    .line 207
    invoke-virtual {p1}, Lo/ba;->t()V

    .line 210
    :goto_3
    sub-int/2addr v0, p2

    .line 211
    goto :goto_4

    .line 212
    :cond_5
    iget-object p2, v1, Lo/L4;->J:Lo/x4;

    .line 214
    invoke-static {p2}, Lo/ba;->n(Ljava/lang/Object;)I

    .line 217
    move-result p2

    .line 218
    iget-object v0, v1, Lo/L4;->L:Lo/x4;

    .line 220
    invoke-static {v0}, Lo/ba;->n(Ljava/lang/Object;)I

    .line 223
    move-result v0

    .line 224
    invoke-virtual {p1}, Lo/ba;->t()V

    .line 227
    goto :goto_3

    .line 228
    :goto_4
    return v0
.end method

.method public final c(ILo/li;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lo/li;->a:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 7
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_2

    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lo/L4;

    .line 19
    iget-object v2, p2, Lo/li;->a:Ljava/util/ArrayList;

    .line 21
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 24
    move-result v3

    .line 25
    if-eqz v3, :cond_0

    .line 27
    goto :goto_1

    .line 28
    :cond_0
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 31
    :goto_1
    iget v2, p2, Lo/li;->b:I

    .line 33
    if-nez p1, :cond_1

    .line 35
    iput v2, v1, Lo/L4;->n0:I

    .line 37
    goto :goto_0

    .line 38
    :cond_1
    iput v2, v1, Lo/L4;->o0:I

    .line 40
    goto :goto_0

    .line 41
    :cond_2
    iget p1, p2, Lo/li;->b:I

    .line 43
    iput p1, p0, Lo/li;->e:I

    .line 45
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    iget v1, p0, Lo/li;->c:I

    .line 8
    if-nez v1, :cond_0

    .line 10
    const-string v1, "Horizontal"

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v2, 0x1

    .line 14
    if-ne v1, v2, :cond_1

    .line 16
    const-string v1, "Vertical"

    .line 18
    goto :goto_0

    .line 19
    :cond_1
    const/4 v2, 0x2

    .line 20
    if-ne v1, v2, :cond_2

    .line 22
    const-string v1, "Both"

    .line 24
    goto :goto_0

    .line 25
    :cond_2
    const-string v1, "Unknown"

    .line 27
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    const-string v1, " ["

    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    iget v1, p0, Lo/li;->b:I

    .line 37
    const-string v2, "] <"

    .line 39
    invoke-static {v0, v1, v2}, Lo/Ve;->j(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 42
    move-result-object v0

    .line 43
    iget-object v1, p0, Lo/li;->a:Ljava/util/ArrayList;

    .line 45
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 48
    move-result-object v1

    .line 49
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 52
    move-result v2

    .line 53
    if-eqz v2, :cond_3

    .line 55
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 58
    move-result-object v2

    .line 59
    check-cast v2, Lo/L4;

    .line 61
    const-string v3, " "

    .line 63
    invoke-static {v0, v3}, Lo/o5;->o(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    move-result-object v0

    .line 67
    iget-object v2, v2, Lo/L4;->h0:Ljava/lang/String;

    .line 69
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    move-result-object v0

    .line 76
    goto :goto_1

    .line 77
    :cond_3
    const-string v1, " >"

    .line 79
    invoke-static {v0, v1}, Lo/Ve;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 82
    move-result-object v0

    .line 83
    return-object v0
.end method
