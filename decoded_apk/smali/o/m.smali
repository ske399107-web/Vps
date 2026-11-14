.class public final Lo/m;
.super Lo/x9;
.source "SourceFile"


# virtual methods
.method public final M(Lo/n;Lo/n;)V
    .locals 0

    .line 1
    iput-object p2, p1, Lo/n;->b:Lo/n;

    .line 3
    return-void
.end method

.method public final N(Lo/n;Ljava/lang/Thread;)V
    .locals 0

    .line 1
    iput-object p2, p1, Lo/n;->a:Ljava/lang/Thread;

    .line 3
    return-void
.end method

.method public final g(Lo/o;Lo/k;)Z
    .locals 2

    .line 1
    sget-object v0, Lo/k;->b:Lo/k;

    .line 3
    monitor-enter p1

    .line 4
    :try_start_0
    iget-object v1, p1, Lo/o;->b:Lo/k;

    .line 6
    if-ne v1, p2, :cond_0

    .line 8
    iput-object v0, p1, Lo/o;->b:Lo/k;

    .line 10
    monitor-exit p1

    .line 11
    const/4 p1, 0x1

    .line 12
    return p1

    .line 13
    :catchall_0
    move-exception p2

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    monitor-exit p1

    .line 16
    const/4 p1, 0x0

    .line 17
    return p1

    .line 18
    :goto_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    throw p2
.end method

.method public final h(Lo/o;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    .line 1
    monitor-enter p1

    .line 2
    :try_start_0
    iget-object v0, p1, Lo/o;->a:Ljava/lang/Object;

    .line 4
    if-ne v0, p2, :cond_0

    .line 6
    iput-object p3, p1, Lo/o;->a:Ljava/lang/Object;

    .line 8
    monitor-exit p1

    .line 9
    const/4 p1, 0x1

    .line 10
    return p1

    .line 11
    :catchall_0
    move-exception p2

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    monitor-exit p1

    .line 14
    const/4 p1, 0x0

    .line 15
    return p1

    .line 16
    :goto_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    throw p2
.end method

.method public final i(Lo/o;Lo/n;Lo/n;)Z
    .locals 1

    .line 1
    monitor-enter p1

    .line 2
    :try_start_0
    iget-object v0, p1, Lo/o;->c:Lo/n;

    .line 4
    if-ne v0, p2, :cond_0

    .line 6
    iput-object p3, p1, Lo/o;->c:Lo/n;

    .line 8
    monitor-exit p1

    .line 9
    const/4 p1, 0x1

    .line 10
    return p1

    .line 11
    :catchall_0
    move-exception p2

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    monitor-exit p1

    .line 14
    const/4 p1, 0x0

    .line 15
    return p1

    .line 16
    :goto_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    throw p2
.end method
