.class public final Lo/E2;
.super Lo/Qe;
.source "SourceFile"

# interfaces
.implements Ljava/util/Map;


# instance fields
.field public d:Lo/z2;

.field public e:Lo/B2;

.field public f:Lo/D2;


# direct methods
.method public constructor <init>(Lo/Qe;)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lo/Qe;-><init>(I)V

    .line 5
    iget v1, p1, Lo/Qe;->c:I

    .line 7
    iget v2, p0, Lo/Qe;->c:I

    .line 9
    add-int/2addr v2, v1

    .line 10
    invoke-virtual {p0, v2}, Lo/Qe;->b(I)V

    .line 13
    iget v2, p0, Lo/Qe;->c:I

    .line 15
    if-nez v2, :cond_0

    .line 17
    if-lez v1, :cond_1

    .line 19
    iget-object v2, p1, Lo/Qe;->a:[I

    .line 21
    iget-object v3, p0, Lo/Qe;->a:[I

    .line 23
    invoke-static {v0, v2, v0, v1, v3}, Lo/H2;->i0(I[III[I)V

    .line 26
    iget-object p1, p1, Lo/Qe;->b:[Ljava/lang/Object;

    .line 28
    iget-object v2, p0, Lo/Qe;->b:[Ljava/lang/Object;

    .line 30
    shl-int/lit8 v3, v1, 0x1

    .line 32
    invoke-static {p1, v2, v0, v0, v3}, Lo/H2;->k0([Ljava/lang/Object;[Ljava/lang/Object;III)V

    .line 35
    iput v1, p0, Lo/Qe;->c:I

    .line 37
    goto :goto_1

    .line 38
    :cond_0
    :goto_0
    if-ge v0, v1, :cond_1

    .line 40
    invoke-virtual {p1, v0}, Lo/Qe;->f(I)Ljava/lang/Object;

    .line 43
    move-result-object v2

    .line 44
    invoke-virtual {p1, v0}, Lo/Qe;->i(I)Ljava/lang/Object;

    .line 47
    move-result-object v3

    .line 48
    invoke-virtual {p0, v2, v3}, Lo/Qe;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    add-int/lit8 v0, v0, 0x1

    .line 53
    goto :goto_0

    .line 54
    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method public final entrySet()Ljava/util/Set;
    .locals 1

    .line 1
    iget-object v0, p0, Lo/E2;->d:Lo/z2;

    .line 3
    if-nez v0, :cond_0

    .line 5
    new-instance v0, Lo/z2;

    .line 7
    invoke-direct {v0, p0}, Lo/z2;-><init>(Lo/E2;)V

    .line 10
    iput-object v0, p0, Lo/E2;->d:Lo/z2;

    .line 12
    :cond_0
    return-object v0
.end method

.method public final j(Ljava/util/Collection;)Z
    .locals 1

    .line 1
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 4
    move-result-object p1

    .line 5
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_1

    .line 11
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 15
    invoke-super {p0, v0}, Lo/Qe;->containsKey(Ljava/lang/Object;)Z

    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_0

    .line 21
    const/4 p1, 0x0

    .line 22
    return p1

    .line 23
    :cond_1
    const/4 p1, 0x1

    .line 24
    return p1
.end method

.method public final k(Ljava/util/Collection;)Z
    .locals 2

    .line 1
    iget v0, p0, Lo/Qe;->c:I

    .line 3
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object p1

    .line 7
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 13
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 17
    invoke-super {p0, v1}, Lo/Qe;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    iget p1, p0, Lo/Qe;->c:I

    .line 23
    if-eq v0, p1, :cond_1

    .line 25
    const/4 p1, 0x1

    .line 26
    goto :goto_1

    .line 27
    :cond_1
    const/4 p1, 0x0

    .line 28
    :goto_1
    return p1
.end method

.method public final keySet()Ljava/util/Set;
    .locals 1

    .line 1
    iget-object v0, p0, Lo/E2;->e:Lo/B2;

    .line 3
    if-nez v0, :cond_0

    .line 5
    new-instance v0, Lo/B2;

    .line 7
    invoke-direct {v0, p0}, Lo/B2;-><init>(Lo/E2;)V

    .line 10
    iput-object v0, p0, Lo/E2;->e:Lo/B2;

    .line 12
    :cond_0
    return-object v0
.end method

.method public final putAll(Ljava/util/Map;)V
    .locals 2

    .line 1
    iget v0, p0, Lo/Qe;->c:I

    .line 3
    invoke-interface {p1}, Ljava/util/Map;->size()I

    .line 6
    move-result v1

    .line 7
    add-int/2addr v1, v0

    .line 8
    invoke-virtual {p0, v1}, Lo/Qe;->b(I)V

    .line 11
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 14
    move-result-object p1

    .line 15
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 18
    move-result-object p1

    .line 19
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_0

    .line 25
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Ljava/util/Map$Entry;

    .line 31
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 34
    move-result-object v1

    .line 35
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {p0, v1, v0}, Lo/Qe;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    goto :goto_0

    .line 43
    :cond_0
    return-void
.end method

.method public final values()Ljava/util/Collection;
    .locals 1

    .line 1
    iget-object v0, p0, Lo/E2;->f:Lo/D2;

    .line 3
    if-nez v0, :cond_0

    .line 5
    new-instance v0, Lo/D2;

    .line 7
    invoke-direct {v0, p0}, Lo/D2;-><init>(Lo/E2;)V

    .line 10
    iput-object v0, p0, Lo/E2;->f:Lo/D2;

    .line 12
    :cond_0
    return-object v0
.end method
