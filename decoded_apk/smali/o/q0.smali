.class public final Lo/q0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/ArrayList;

.field public final b:Ljava/lang/Object;

.field public final c:Ljava/lang/Object;

.field public final d:Ljava/lang/Object;

.field public e:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lo/q0;->b:Ljava/lang/Object;

    .line 3
    const-string v0, "servicediscovery"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type android.net.nsd.NsdManager"

    invoke-static {p1, v0}, Lo/x9;->m(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/net/nsd/NsdManager;

    iput-object p1, p0, Lo/q0;->c:Ljava/lang/Object;

    .line 4
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lo/q0;->d:Ljava/lang/Object;

    .line 5
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lo/q0;->a:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Lo/ld;)V
    .locals 2

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-instance v0, Lo/Jc;

    const/16 v1, 0x1e

    invoke-direct {v0, v1}, Lo/Jc;-><init>(I)V

    iput-object v0, p0, Lo/q0;->b:Ljava/lang/Object;

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/q0;->a:Ljava/util/ArrayList;

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/q0;->c:Ljava/lang/Object;

    .line 10
    iput-object p1, p0, Lo/q0;->d:Ljava/lang/Object;

    .line 11
    new-instance p1, Lo/C;

    const/16 v0, 0x17

    invoke-direct {p1, v0, p0}, Lo/C;-><init>(ILjava/lang/Object;)V

    iput-object p1, p0, Lo/q0;->e:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(I)Z
    .locals 8

    .line 1
    iget-object v0, p0, Lo/q0;->c:Ljava/lang/Object;

    .line 3
    check-cast v0, Ljava/util/ArrayList;

    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x0

    .line 10
    move v3, v2

    .line 11
    :goto_0
    if-ge v3, v1, :cond_3

    .line 13
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 16
    move-result-object v4

    .line 17
    check-cast v4, Lo/p0;

    .line 19
    iget v5, v4, Lo/p0;->a:I

    .line 21
    const/16 v6, 0x8

    .line 23
    const/4 v7, 0x1

    .line 24
    if-ne v5, v6, :cond_0

    .line 26
    iget v4, v4, Lo/p0;->c:I

    .line 28
    add-int/lit8 v5, v3, 0x1

    .line 30
    invoke-virtual {p0, v4, v5}, Lo/q0;->e(II)I

    .line 33
    move-result v4

    .line 34
    if-ne v4, p1, :cond_2

    .line 36
    return v7

    .line 37
    :cond_0
    if-ne v5, v7, :cond_2

    .line 39
    iget v5, v4, Lo/p0;->b:I

    .line 41
    iget v4, v4, Lo/p0;->c:I

    .line 43
    add-int/2addr v4, v5

    .line 44
    :goto_1
    if-ge v5, v4, :cond_2

    .line 46
    add-int/lit8 v6, v3, 0x1

    .line 48
    invoke-virtual {p0, v5, v6}, Lo/q0;->e(II)I

    .line 51
    move-result v6

    .line 52
    if-ne v6, p1, :cond_1

    .line 54
    return v7

    .line 55
    :cond_1
    add-int/lit8 v5, v5, 0x1

    .line 57
    goto :goto_1

    .line 58
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 60
    goto :goto_0

    .line 61
    :cond_3
    return v2
.end method

.method public b()V
    .locals 8

    .line 1
    iget-object v0, p0, Lo/q0;->c:Ljava/lang/Object;

    .line 3
    check-cast v0, Ljava/util/ArrayList;

    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x0

    .line 10
    :goto_0
    if-ge v2, v1, :cond_0

    .line 12
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 15
    move-result-object v3

    .line 16
    check-cast v3, Lo/p0;

    .line 18
    iget-object v4, p0, Lo/q0;->d:Ljava/lang/Object;

    .line 20
    check-cast v4, Lo/ld;

    .line 22
    invoke-virtual {v4, v3}, Lo/ld;->a(Lo/p0;)V

    .line 25
    add-int/lit8 v2, v2, 0x1

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    invoke-virtual {p0, v0}, Lo/q0;->i(Ljava/util/ArrayList;)V

    .line 31
    iget-object v0, p0, Lo/q0;->a:Ljava/util/ArrayList;

    .line 33
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 36
    move-result v1

    .line 37
    const/4 v2, 0x0

    .line 38
    :goto_1
    if-ge v2, v1, :cond_5

    .line 40
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 43
    move-result-object v3

    .line 44
    check-cast v3, Lo/p0;

    .line 46
    iget v4, v3, Lo/p0;->a:I

    .line 48
    const/4 v5, 0x1

    .line 49
    iget-object v6, p0, Lo/q0;->d:Ljava/lang/Object;

    .line 51
    check-cast v6, Lo/ld;

    .line 53
    if-eq v4, v5, :cond_4

    .line 55
    const/4 v7, 0x2

    .line 56
    if-eq v4, v7, :cond_3

    .line 58
    const/4 v5, 0x4

    .line 59
    if-eq v4, v5, :cond_2

    .line 61
    const/16 v5, 0x8

    .line 63
    if-eq v4, v5, :cond_1

    .line 65
    goto :goto_2

    .line 66
    :cond_1
    invoke-virtual {v6, v3}, Lo/ld;->a(Lo/p0;)V

    .line 69
    iget v4, v3, Lo/p0;->b:I

    .line 71
    iget v3, v3, Lo/p0;->c:I

    .line 73
    invoke-virtual {v6, v4, v3}, Lo/ld;->e(II)V

    .line 76
    goto :goto_2

    .line 77
    :cond_2
    invoke-virtual {v6, v3}, Lo/ld;->a(Lo/p0;)V

    .line 80
    iget v4, v3, Lo/p0;->b:I

    .line 82
    iget v3, v3, Lo/p0;->c:I

    .line 84
    invoke-virtual {v6, v4, v3}, Lo/ld;->c(II)V

    .line 87
    goto :goto_2

    .line 88
    :cond_3
    invoke-virtual {v6, v3}, Lo/ld;->a(Lo/p0;)V

    .line 91
    iget v4, v3, Lo/p0;->b:I

    .line 93
    iget v3, v3, Lo/p0;->c:I

    .line 95
    iget-object v6, v6, Lo/ld;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 97
    invoke-virtual {v6, v4, v3, v5}, Landroidx/recyclerview/widget/RecyclerView;->O(IIZ)V

    .line 100
    iput-boolean v5, v6, Landroidx/recyclerview/widget/RecyclerView;->f0:Z

    .line 102
    iget-object v4, v6, Landroidx/recyclerview/widget/RecyclerView;->c0:Lo/Fd;

    .line 104
    iget v5, v4, Lo/Fd;->c:I

    .line 106
    add-int/2addr v5, v3

    .line 107
    iput v5, v4, Lo/Fd;->c:I

    .line 109
    goto :goto_2

    .line 110
    :cond_4
    invoke-virtual {v6, v3}, Lo/ld;->a(Lo/p0;)V

    .line 113
    iget v4, v3, Lo/p0;->b:I

    .line 115
    iget v3, v3, Lo/p0;->c:I

    .line 117
    invoke-virtual {v6, v4, v3}, Lo/ld;->d(II)V

    .line 120
    :goto_2
    add-int/lit8 v2, v2, 0x1

    .line 122
    goto :goto_1

    .line 123
    :cond_5
    invoke-virtual {p0, v0}, Lo/q0;->i(Ljava/util/ArrayList;)V

    .line 126
    return-void
.end method

.method public c(Lo/p0;)V
    .locals 12

    .line 1
    iget v0, p1, Lo/p0;->a:I

    .line 3
    const/4 v1, 0x1

    .line 4
    if-eq v0, v1, :cond_8

    .line 6
    const/16 v2, 0x8

    .line 8
    if-eq v0, v2, :cond_8

    .line 10
    iget v2, p1, Lo/p0;->b:I

    .line 12
    invoke-virtual {p0, v2, v0}, Lo/q0;->k(II)I

    .line 15
    move-result v0

    .line 16
    iget v2, p1, Lo/p0;->b:I

    .line 18
    iget v3, p1, Lo/p0;->a:I

    .line 20
    const/4 v4, 0x2

    .line 21
    const/4 v5, 0x4

    .line 22
    if-eq v3, v4, :cond_1

    .line 24
    if-ne v3, v5, :cond_0

    .line 26
    move v3, v1

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 30
    new-instance v1, Ljava/lang/StringBuilder;

    .line 32
    const-string v2, "op should be remove or update."

    .line 34
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 37
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 40
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    move-result-object p1

    .line 44
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 47
    throw v0

    .line 48
    :cond_1
    const/4 v3, 0x0

    .line 49
    :goto_0
    move v6, v1

    .line 50
    move v7, v6

    .line 51
    :goto_1
    iget v8, p1, Lo/p0;->c:I

    .line 53
    iget-object v9, p0, Lo/q0;->b:Ljava/lang/Object;

    .line 55
    check-cast v9, Lo/Jc;

    .line 57
    if-ge v6, v8, :cond_6

    .line 59
    iget v8, p1, Lo/p0;->b:I

    .line 61
    mul-int v10, v3, v6

    .line 63
    add-int/2addr v10, v8

    .line 64
    iget v8, p1, Lo/p0;->a:I

    .line 66
    invoke-virtual {p0, v10, v8}, Lo/q0;->k(II)I

    .line 69
    move-result v8

    .line 70
    iget v10, p1, Lo/p0;->a:I

    .line 72
    if-eq v10, v4, :cond_3

    .line 74
    if-eq v10, v5, :cond_2

    .line 76
    goto :goto_3

    .line 77
    :cond_2
    add-int/lit8 v11, v0, 0x1

    .line 79
    if-ne v8, v11, :cond_4

    .line 81
    goto :goto_2

    .line 82
    :cond_3
    if-ne v8, v0, :cond_4

    .line 84
    :goto_2
    add-int/lit8 v7, v7, 0x1

    .line 86
    goto :goto_4

    .line 87
    :cond_4
    :goto_3
    invoke-virtual {p0, v10, v0, v7}, Lo/q0;->g(III)Lo/p0;

    .line 90
    move-result-object v0

    .line 91
    invoke-virtual {p0, v0, v2}, Lo/q0;->d(Lo/p0;I)V

    .line 94
    invoke-virtual {v9, v0}, Lo/Jc;->c(Ljava/lang/Object;)Z

    .line 97
    iget v0, p1, Lo/p0;->a:I

    .line 99
    if-ne v0, v5, :cond_5

    .line 101
    add-int/2addr v2, v7

    .line 102
    :cond_5
    move v7, v1

    .line 103
    move v0, v8

    .line 104
    :goto_4
    add-int/lit8 v6, v6, 0x1

    .line 106
    goto :goto_1

    .line 107
    :cond_6
    invoke-virtual {v9, p1}, Lo/Jc;->c(Ljava/lang/Object;)Z

    .line 110
    if-lez v7, :cond_7

    .line 112
    iget p1, p1, Lo/p0;->a:I

    .line 114
    invoke-virtual {p0, p1, v0, v7}, Lo/q0;->g(III)Lo/p0;

    .line 117
    move-result-object p1

    .line 118
    invoke-virtual {p0, p1, v2}, Lo/q0;->d(Lo/p0;I)V

    .line 121
    invoke-virtual {v9, p1}, Lo/Jc;->c(Ljava/lang/Object;)Z

    .line 124
    :cond_7
    return-void

    .line 125
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 127
    const-string v0, "should not dispatch add or move for pre layout"

    .line 129
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 132
    throw p1
.end method

.method public d(Lo/p0;I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lo/q0;->d:Ljava/lang/Object;

    .line 3
    check-cast v0, Lo/ld;

    .line 5
    invoke-virtual {v0, p1}, Lo/ld;->a(Lo/p0;)V

    .line 8
    iget v1, p1, Lo/p0;->a:I

    .line 10
    const/4 v2, 0x2

    .line 11
    if-eq v1, v2, :cond_1

    .line 13
    const/4 v2, 0x4

    .line 14
    if-ne v1, v2, :cond_0

    .line 16
    iget p1, p1, Lo/p0;->c:I

    .line 18
    invoke-virtual {v0, p2, p1}, Lo/ld;->c(II)V

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 24
    const-string p2, "only remove and update ops can be dispatched in first pass"

    .line 26
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 29
    throw p1

    .line 30
    :cond_1
    iget p1, p1, Lo/p0;->c:I

    .line 32
    iget-object v0, v0, Lo/ld;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 34
    const/4 v1, 0x1

    .line 35
    invoke-virtual {v0, p2, p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->O(IIZ)V

    .line 38
    iput-boolean v1, v0, Landroidx/recyclerview/widget/RecyclerView;->f0:Z

    .line 40
    iget-object p2, v0, Landroidx/recyclerview/widget/RecyclerView;->c0:Lo/Fd;

    .line 42
    iget v0, p2, Lo/Fd;->c:I

    .line 44
    add-int/2addr v0, p1

    .line 45
    iput v0, p2, Lo/Fd;->c:I

    .line 47
    :goto_0
    return-void
.end method

.method public e(II)I
    .locals 6

    .line 1
    iget-object v0, p0, Lo/q0;->c:Ljava/lang/Object;

    .line 3
    check-cast v0, Ljava/util/ArrayList;

    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 8
    move-result v1

    .line 9
    :goto_0
    if-ge p2, v1, :cond_6

    .line 11
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 14
    move-result-object v2

    .line 15
    check-cast v2, Lo/p0;

    .line 17
    iget v3, v2, Lo/p0;->a:I

    .line 19
    const/16 v4, 0x8

    .line 21
    if-ne v3, v4, :cond_2

    .line 23
    iget v3, v2, Lo/p0;->b:I

    .line 25
    if-ne v3, p1, :cond_0

    .line 27
    iget p1, v2, Lo/p0;->c:I

    .line 29
    goto :goto_1

    .line 30
    :cond_0
    if-ge v3, p1, :cond_1

    .line 32
    add-int/lit8 p1, p1, -0x1

    .line 34
    :cond_1
    iget v2, v2, Lo/p0;->c:I

    .line 36
    if-gt v2, p1, :cond_5

    .line 38
    add-int/lit8 p1, p1, 0x1

    .line 40
    goto :goto_1

    .line 41
    :cond_2
    iget v4, v2, Lo/p0;->b:I

    .line 43
    if-gt v4, p1, :cond_5

    .line 45
    const/4 v5, 0x2

    .line 46
    if-ne v3, v5, :cond_4

    .line 48
    iget v2, v2, Lo/p0;->c:I

    .line 50
    add-int/2addr v4, v2

    .line 51
    if-ge p1, v4, :cond_3

    .line 53
    const/4 p1, -0x1

    .line 54
    return p1

    .line 55
    :cond_3
    sub-int/2addr p1, v2

    .line 56
    goto :goto_1

    .line 57
    :cond_4
    const/4 v4, 0x1

    .line 58
    if-ne v3, v4, :cond_5

    .line 60
    iget v2, v2, Lo/p0;->c:I

    .line 62
    add-int/2addr p1, v2

    .line 63
    :cond_5
    :goto_1
    add-int/lit8 p2, p2, 0x1

    .line 65
    goto :goto_0

    .line 66
    :cond_6
    return p1
.end method

.method public f()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lo/q0;->a:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    move-result v0

    .line 7
    if-lez v0, :cond_0

    .line 9
    const/4 v0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    :goto_0
    return v0
.end method

.method public g(III)Lo/p0;
    .locals 1

    .line 1
    iget-object v0, p0, Lo/q0;->b:Ljava/lang/Object;

    .line 3
    check-cast v0, Lo/Jc;

    .line 5
    invoke-virtual {v0}, Lo/Jc;->a()Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lo/p0;

    .line 11
    if-nez v0, :cond_0

    .line 13
    new-instance v0, Lo/p0;

    .line 15
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput p1, v0, Lo/p0;->a:I

    .line 20
    iput p2, v0, Lo/p0;->b:I

    .line 22
    iput p3, v0, Lo/p0;->c:I

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    iput p1, v0, Lo/p0;->a:I

    .line 27
    iput p2, v0, Lo/p0;->b:I

    .line 29
    iput p3, v0, Lo/p0;->c:I

    .line 31
    :goto_0
    return-object v0
.end method

.method public h(Lo/p0;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lo/q0;->c:Ljava/lang/Object;

    .line 3
    check-cast v0, Ljava/util/ArrayList;

    .line 5
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8
    iget v0, p1, Lo/p0;->a:I

    .line 10
    const/4 v1, 0x1

    .line 11
    iget-object v2, p0, Lo/q0;->d:Ljava/lang/Object;

    .line 13
    check-cast v2, Lo/ld;

    .line 15
    if-eq v0, v1, :cond_3

    .line 17
    const/4 v3, 0x2

    .line 18
    if-eq v0, v3, :cond_2

    .line 20
    const/4 v1, 0x4

    .line 21
    if-eq v0, v1, :cond_1

    .line 23
    const/16 v1, 0x8

    .line 25
    if-ne v0, v1, :cond_0

    .line 27
    iget v0, p1, Lo/p0;->b:I

    .line 29
    iget p1, p1, Lo/p0;->c:I

    .line 31
    invoke-virtual {v2, v0, p1}, Lo/ld;->e(II)V

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 37
    new-instance v1, Ljava/lang/StringBuilder;

    .line 39
    const-string v2, "Unknown update op type for "

    .line 41
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 44
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 47
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    move-result-object p1

    .line 51
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 54
    throw v0

    .line 55
    :cond_1
    iget v0, p1, Lo/p0;->b:I

    .line 57
    iget p1, p1, Lo/p0;->c:I

    .line 59
    invoke-virtual {v2, v0, p1}, Lo/ld;->c(II)V

    .line 62
    goto :goto_0

    .line 63
    :cond_2
    iget v0, p1, Lo/p0;->b:I

    .line 65
    iget p1, p1, Lo/p0;->c:I

    .line 67
    iget-object v2, v2, Lo/ld;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 69
    const/4 v3, 0x0

    .line 70
    invoke-virtual {v2, v0, p1, v3}, Landroidx/recyclerview/widget/RecyclerView;->O(IIZ)V

    .line 73
    iput-boolean v1, v2, Landroidx/recyclerview/widget/RecyclerView;->f0:Z

    .line 75
    goto :goto_0

    .line 76
    :cond_3
    iget v0, p1, Lo/p0;->b:I

    .line 78
    iget p1, p1, Lo/p0;->c:I

    .line 80
    invoke-virtual {v2, v0, p1}, Lo/ld;->d(II)V

    .line 83
    :goto_0
    return-void
.end method

.method public i(Ljava/util/ArrayList;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    :goto_0
    if-ge v1, v0, :cond_0

    .line 8
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 11
    move-result-object v2

    .line 12
    check-cast v2, Lo/p0;

    .line 14
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    iget-object v3, p0, Lo/q0;->b:Ljava/lang/Object;

    .line 19
    check-cast v3, Lo/Jc;

    .line 21
    invoke-virtual {v3, v2}, Lo/Jc;->c(Ljava/lang/Object;)Z

    .line 24
    add-int/lit8 v1, v1, 0x1

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 30
    return-void
.end method

.method public j()V
    .locals 4

    .line 1
    iget-object v0, p0, Lo/q0;->a:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v1

    .line 7
    :catchall_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v2

    .line 11
    if-eqz v2, :cond_0

    .line 13
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v2

    .line 17
    check-cast v2, Landroid/net/nsd/NsdManager$DiscoveryListener;

    .line 19
    :try_start_0
    iget-object v3, p0, Lo/q0;->c:Ljava/lang/Object;

    .line 21
    check-cast v3, Landroid/net/nsd/NsdManager;

    .line 23
    invoke-virtual {v3, v2}, Landroid/net/nsd/NsdManager;->stopServiceDiscovery(Landroid/net/nsd/NsdManager$DiscoveryListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 30
    iget-object v0, p0, Lo/q0;->e:Ljava/lang/Object;

    .line 32
    check-cast v0, Landroid/net/wifi/WifiManager$MulticastLock;

    .line 34
    if-eqz v0, :cond_1

    .line 36
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$MulticastLock;->isHeld()Z

    .line 39
    move-result v1

    .line 40
    if-eqz v1, :cond_1

    .line 42
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$MulticastLock;->release()V

    .line 45
    :cond_1
    const/4 v0, 0x0

    .line 46
    iput-object v0, p0, Lo/q0;->e:Ljava/lang/Object;

    .line 48
    return-void
.end method

.method public k(II)I
    .locals 9

    .line 1
    iget-object v0, p0, Lo/q0;->c:Ljava/lang/Object;

    .line 3
    check-cast v0, Ljava/util/ArrayList;

    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x1

    .line 10
    sub-int/2addr v1, v2

    .line 11
    :goto_0
    const/16 v3, 0x8

    .line 13
    if-ltz v1, :cond_d

    .line 15
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 18
    move-result-object v4

    .line 19
    check-cast v4, Lo/p0;

    .line 21
    iget v5, v4, Lo/p0;->a:I

    .line 23
    const/4 v6, 0x2

    .line 24
    if-ne v5, v3, :cond_8

    .line 26
    iget v3, v4, Lo/p0;->b:I

    .line 28
    iget v5, v4, Lo/p0;->c:I

    .line 30
    if-ge v3, v5, :cond_0

    .line 32
    move v7, v3

    .line 33
    move v8, v5

    .line 34
    goto :goto_1

    .line 35
    :cond_0
    move v8, v3

    .line 36
    move v7, v5

    .line 37
    :goto_1
    if-lt p1, v7, :cond_6

    .line 39
    if-gt p1, v8, :cond_6

    .line 41
    if-ne v7, v3, :cond_3

    .line 43
    if-ne p2, v2, :cond_1

    .line 45
    add-int/lit8 v5, v5, 0x1

    .line 47
    iput v5, v4, Lo/p0;->c:I

    .line 49
    goto :goto_2

    .line 50
    :cond_1
    if-ne p2, v6, :cond_2

    .line 52
    add-int/lit8 v5, v5, -0x1

    .line 54
    iput v5, v4, Lo/p0;->c:I

    .line 56
    :cond_2
    :goto_2
    add-int/lit8 p1, p1, 0x1

    .line 58
    goto :goto_4

    .line 59
    :cond_3
    if-ne p2, v2, :cond_4

    .line 61
    add-int/lit8 v3, v3, 0x1

    .line 63
    iput v3, v4, Lo/p0;->b:I

    .line 65
    goto :goto_3

    .line 66
    :cond_4
    if-ne p2, v6, :cond_5

    .line 68
    add-int/lit8 v3, v3, -0x1

    .line 70
    iput v3, v4, Lo/p0;->b:I

    .line 72
    :cond_5
    :goto_3
    add-int/lit8 p1, p1, -0x1

    .line 74
    goto :goto_4

    .line 75
    :cond_6
    if-ge p1, v3, :cond_c

    .line 77
    if-ne p2, v2, :cond_7

    .line 79
    add-int/lit8 v3, v3, 0x1

    .line 81
    iput v3, v4, Lo/p0;->b:I

    .line 83
    add-int/lit8 v5, v5, 0x1

    .line 85
    iput v5, v4, Lo/p0;->c:I

    .line 87
    goto :goto_4

    .line 88
    :cond_7
    if-ne p2, v6, :cond_c

    .line 90
    add-int/lit8 v3, v3, -0x1

    .line 92
    iput v3, v4, Lo/p0;->b:I

    .line 94
    add-int/lit8 v5, v5, -0x1

    .line 96
    iput v5, v4, Lo/p0;->c:I

    .line 98
    goto :goto_4

    .line 99
    :cond_8
    iget v3, v4, Lo/p0;->b:I

    .line 101
    if-gt v3, p1, :cond_a

    .line 103
    if-ne v5, v2, :cond_9

    .line 105
    iget v3, v4, Lo/p0;->c:I

    .line 107
    sub-int/2addr p1, v3

    .line 108
    goto :goto_4

    .line 109
    :cond_9
    if-ne v5, v6, :cond_c

    .line 111
    iget v3, v4, Lo/p0;->c:I

    .line 113
    add-int/2addr p1, v3

    .line 114
    goto :goto_4

    .line 115
    :cond_a
    if-ne p2, v2, :cond_b

    .line 117
    add-int/lit8 v3, v3, 0x1

    .line 119
    iput v3, v4, Lo/p0;->b:I

    .line 121
    goto :goto_4

    .line 122
    :cond_b
    if-ne p2, v6, :cond_c

    .line 124
    add-int/lit8 v3, v3, -0x1

    .line 126
    iput v3, v4, Lo/p0;->b:I

    .line 128
    :cond_c
    :goto_4
    add-int/lit8 v1, v1, -0x1

    .line 130
    goto :goto_0

    .line 131
    :cond_d
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 134
    move-result p2

    .line 135
    sub-int/2addr p2, v2

    .line 136
    :goto_5
    if-ltz p2, :cond_11

    .line 138
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 141
    move-result-object v1

    .line 142
    check-cast v1, Lo/p0;

    .line 144
    iget v2, v1, Lo/p0;->a:I

    .line 146
    iget-object v4, p0, Lo/q0;->b:Ljava/lang/Object;

    .line 148
    check-cast v4, Lo/Jc;

    .line 150
    if-ne v2, v3, :cond_f

    .line 152
    iget v2, v1, Lo/p0;->c:I

    .line 154
    iget v5, v1, Lo/p0;->b:I

    .line 156
    if-eq v2, v5, :cond_e

    .line 158
    if-gez v2, :cond_10

    .line 160
    :cond_e
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 163
    invoke-virtual {v4, v1}, Lo/Jc;->c(Ljava/lang/Object;)Z

    .line 166
    goto :goto_6

    .line 167
    :cond_f
    iget v2, v1, Lo/p0;->c:I

    .line 169
    if-gtz v2, :cond_10

    .line 171
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 174
    invoke-virtual {v4, v1}, Lo/Jc;->c(Ljava/lang/Object;)Z

    .line 177
    :cond_10
    :goto_6
    add-int/lit8 p2, p2, -0x1

    .line 179
    goto :goto_5

    .line 180
    :cond_11
    return p1
.end method
