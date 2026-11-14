.class public final Lo/K2;
.super Lo/ug;
.source "SourceFile"


# instance fields
.field public A:Ljava/util/ArrayList;

.field public B:Z

.field public C:I

.field public D:Z

.field public E:I


# virtual methods
.method public final A(J)V
    .locals 3

    .line 1
    iput-wide p1, p0, Lo/ug;->c:J

    .line 3
    const-wide/16 v0, 0x0

    .line 5
    cmp-long v0, p1, v0

    .line 7
    if-ltz v0, :cond_0

    .line 9
    iget-object v0, p0, Lo/K2;->A:Ljava/util/ArrayList;

    .line 11
    if-eqz v0, :cond_0

    .line 13
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 16
    move-result v0

    .line 17
    const/4 v1, 0x0

    .line 18
    :goto_0
    if-ge v1, v0, :cond_0

    .line 20
    iget-object v2, p0, Lo/K2;->A:Ljava/util/ArrayList;

    .line 22
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 25
    move-result-object v2

    .line 26
    check-cast v2, Lo/ug;

    .line 28
    invoke-virtual {v2, p1, p2}, Lo/ug;->A(J)V

    .line 31
    add-int/lit8 v1, v1, 0x1

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    return-void
.end method

.method public final B(Lo/Ha;)V
    .locals 3

    .line 1
    iget v0, p0, Lo/K2;->E:I

    .line 3
    or-int/lit8 v0, v0, 0x8

    .line 5
    iput v0, p0, Lo/K2;->E:I

    .line 7
    iget-object v0, p0, Lo/K2;->A:Ljava/util/ArrayList;

    .line 9
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 12
    move-result v0

    .line 13
    const/4 v1, 0x0

    .line 14
    :goto_0
    if-ge v1, v0, :cond_0

    .line 16
    iget-object v2, p0, Lo/K2;->A:Ljava/util/ArrayList;

    .line 18
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 21
    move-result-object v2

    .line 22
    check-cast v2, Lo/ug;

    .line 24
    invoke-virtual {v2, p1}, Lo/ug;->B(Lo/Ha;)V

    .line 27
    add-int/lit8 v1, v1, 0x1

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    return-void
.end method

.method public final C(Landroid/animation/TimeInterpolator;)V
    .locals 3

    .line 1
    iget v0, p0, Lo/K2;->E:I

    .line 3
    or-int/lit8 v0, v0, 0x1

    .line 5
    iput v0, p0, Lo/K2;->E:I

    .line 7
    iget-object v0, p0, Lo/K2;->A:Ljava/util/ArrayList;

    .line 9
    if-eqz v0, :cond_0

    .line 11
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 14
    move-result v0

    .line 15
    const/4 v1, 0x0

    .line 16
    :goto_0
    if-ge v1, v0, :cond_0

    .line 18
    iget-object v2, p0, Lo/K2;->A:Ljava/util/ArrayList;

    .line 20
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 23
    move-result-object v2

    .line 24
    check-cast v2, Lo/ug;

    .line 26
    invoke-virtual {v2, p1}, Lo/ug;->C(Landroid/animation/TimeInterpolator;)V

    .line 29
    add-int/lit8 v1, v1, 0x1

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    iput-object p1, p0, Lo/ug;->d:Landroid/animation/TimeInterpolator;

    .line 34
    return-void
.end method

.method public final D(Lo/qg;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lo/ug;->D(Lo/qg;)V

    .line 4
    iget v0, p0, Lo/K2;->E:I

    .line 6
    or-int/lit8 v0, v0, 0x4

    .line 8
    iput v0, p0, Lo/K2;->E:I

    .line 10
    iget-object v0, p0, Lo/K2;->A:Ljava/util/ArrayList;

    .line 12
    if-eqz v0, :cond_0

    .line 14
    const/4 v0, 0x0

    .line 15
    :goto_0
    iget-object v1, p0, Lo/K2;->A:Ljava/util/ArrayList;

    .line 17
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 20
    move-result v1

    .line 21
    if-ge v0, v1, :cond_0

    .line 23
    iget-object v1, p0, Lo/K2;->A:Ljava/util/ArrayList;

    .line 25
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 28
    move-result-object v1

    .line 29
    check-cast v1, Lo/ug;

    .line 31
    invoke-virtual {v1, p1}, Lo/ug;->D(Lo/qg;)V

    .line 34
    add-int/lit8 v0, v0, 0x1

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    return-void
.end method

.method public final E()V
    .locals 3

    .line 1
    iget v0, p0, Lo/K2;->E:I

    .line 3
    or-int/lit8 v0, v0, 0x2

    .line 5
    iput v0, p0, Lo/K2;->E:I

    .line 7
    iget-object v0, p0, Lo/K2;->A:Ljava/util/ArrayList;

    .line 9
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 12
    move-result v0

    .line 13
    const/4 v1, 0x0

    .line 14
    :goto_0
    if-ge v1, v0, :cond_0

    .line 16
    iget-object v2, p0, Lo/K2;->A:Ljava/util/ArrayList;

    .line 18
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 21
    move-result-object v2

    .line 22
    check-cast v2, Lo/ug;

    .line 24
    invoke-virtual {v2}, Lo/ug;->E()V

    .line 27
    add-int/lit8 v1, v1, 0x1

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    return-void
.end method

.method public final F(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lo/ug;->b:J

    .line 3
    return-void
.end method

.method public final H(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 1
    invoke-super {p0, p1}, Lo/ug;->H(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    :goto_0
    iget-object v2, p0, Lo/K2;->A:Ljava/util/ArrayList;

    .line 8
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 11
    move-result v2

    .line 12
    if-ge v1, v2, :cond_0

    .line 14
    const-string v2, "\n"

    .line 16
    invoke-static {v0, v2}, Lo/o5;->o(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    move-result-object v0

    .line 20
    iget-object v2, p0, Lo/K2;->A:Ljava/util/ArrayList;

    .line 22
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 25
    move-result-object v2

    .line 26
    check-cast v2, Lo/ug;

    .line 28
    new-instance v3, Ljava/lang/StringBuilder;

    .line 30
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    const-string v4, "  "

    .line 38
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    move-result-object v3

    .line 45
    invoke-virtual {v2, v3}, Lo/ug;->H(Ljava/lang/String;)Ljava/lang/String;

    .line 48
    move-result-object v2

    .line 49
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    move-result-object v0

    .line 56
    add-int/lit8 v1, v1, 0x1

    .line 58
    goto :goto_0

    .line 59
    :cond_0
    return-object v0
.end method

.method public final I(Lo/ug;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lo/K2;->A:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    iput-object p0, p1, Lo/ug;->i:Lo/K2;

    .line 8
    iget-wide v0, p0, Lo/ug;->c:J

    .line 10
    const-wide/16 v2, 0x0

    .line 12
    cmp-long v2, v0, v2

    .line 14
    if-ltz v2, :cond_0

    .line 16
    invoke-virtual {p1, v0, v1}, Lo/ug;->A(J)V

    .line 19
    :cond_0
    iget v0, p0, Lo/K2;->E:I

    .line 21
    and-int/lit8 v0, v0, 0x1

    .line 23
    if-eqz v0, :cond_1

    .line 25
    iget-object v0, p0, Lo/ug;->d:Landroid/animation/TimeInterpolator;

    .line 27
    invoke-virtual {p1, v0}, Lo/ug;->C(Landroid/animation/TimeInterpolator;)V

    .line 30
    :cond_1
    iget v0, p0, Lo/K2;->E:I

    .line 32
    and-int/lit8 v0, v0, 0x2

    .line 34
    if-eqz v0, :cond_2

    .line 36
    invoke-virtual {p1}, Lo/ug;->E()V

    .line 39
    :cond_2
    iget v0, p0, Lo/K2;->E:I

    .line 41
    and-int/lit8 v0, v0, 0x4

    .line 43
    if-eqz v0, :cond_3

    .line 45
    iget-object v0, p0, Lo/ug;->v:Lo/qg;

    .line 47
    invoke-virtual {p1, v0}, Lo/ug;->D(Lo/qg;)V

    .line 50
    :cond_3
    iget v0, p0, Lo/K2;->E:I

    .line 52
    and-int/lit8 v0, v0, 0x8

    .line 54
    if-eqz v0, :cond_4

    .line 56
    const/4 v0, 0x0

    .line 57
    invoke-virtual {p1, v0}, Lo/ug;->B(Lo/Ha;)V

    .line 60
    :cond_4
    return-void
.end method

.method public final c()V
    .locals 3

    .line 1
    invoke-super {p0}, Lo/ug;->c()V

    .line 4
    iget-object v0, p0, Lo/K2;->A:Ljava/util/ArrayList;

    .line 6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    :goto_0
    if-ge v1, v0, :cond_0

    .line 13
    iget-object v2, p0, Lo/K2;->A:Ljava/util/ArrayList;

    .line 15
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 18
    move-result-object v2

    .line 19
    check-cast v2, Lo/ug;

    .line 21
    invoke-virtual {v2}, Lo/ug;->c()V

    .line 24
    add-int/lit8 v1, v1, 0x1

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    return-void
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lo/K2;->j()Lo/ug;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final d(Lo/Cg;)V
    .locals 3

    .line 1
    iget-object v0, p1, Lo/Cg;->b:Landroid/view/View;

    .line 3
    invoke-virtual {p0, v0}, Lo/ug;->t(Landroid/view/View;)Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1

    .line 9
    iget-object v0, p0, Lo/K2;->A:Ljava/util/ArrayList;

    .line 11
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 14
    move-result-object v0

    .line 15
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_1

    .line 21
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Lo/ug;

    .line 27
    iget-object v2, p1, Lo/Cg;->b:Landroid/view/View;

    .line 29
    invoke-virtual {v1, v2}, Lo/ug;->t(Landroid/view/View;)Z

    .line 32
    move-result v2

    .line 33
    if-eqz v2, :cond_0

    .line 35
    invoke-virtual {v1, p1}, Lo/ug;->d(Lo/Cg;)V

    .line 38
    iget-object v2, p1, Lo/Cg;->c:Ljava/util/ArrayList;

    .line 40
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    goto :goto_0

    .line 44
    :cond_1
    return-void
.end method

.method public final f(Lo/Cg;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lo/K2;->A:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    :goto_0
    if-ge v1, v0, :cond_0

    .line 10
    iget-object v2, p0, Lo/K2;->A:Ljava/util/ArrayList;

    .line 12
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 15
    move-result-object v2

    .line 16
    check-cast v2, Lo/ug;

    .line 18
    invoke-virtual {v2, p1}, Lo/ug;->f(Lo/Cg;)V

    .line 21
    add-int/lit8 v1, v1, 0x1

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    return-void
.end method

.method public final g(Lo/Cg;)V
    .locals 3

    .line 1
    iget-object v0, p1, Lo/Cg;->b:Landroid/view/View;

    .line 3
    invoke-virtual {p0, v0}, Lo/ug;->t(Landroid/view/View;)Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1

    .line 9
    iget-object v0, p0, Lo/K2;->A:Ljava/util/ArrayList;

    .line 11
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 14
    move-result-object v0

    .line 15
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_1

    .line 21
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Lo/ug;

    .line 27
    iget-object v2, p1, Lo/Cg;->b:Landroid/view/View;

    .line 29
    invoke-virtual {v1, v2}, Lo/ug;->t(Landroid/view/View;)Z

    .line 32
    move-result v2

    .line 33
    if-eqz v2, :cond_0

    .line 35
    invoke-virtual {v1, p1}, Lo/ug;->g(Lo/Cg;)V

    .line 38
    iget-object v2, p1, Lo/Cg;->c:Ljava/util/ArrayList;

    .line 40
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    goto :goto_0

    .line 44
    :cond_1
    return-void
.end method

.method public final j()Lo/ug;
    .locals 5

    .line 1
    invoke-super {p0}, Lo/ug;->j()Lo/ug;

    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lo/K2;

    .line 7
    new-instance v1, Ljava/util/ArrayList;

    .line 9
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 12
    iput-object v1, v0, Lo/K2;->A:Ljava/util/ArrayList;

    .line 14
    iget-object v1, p0, Lo/K2;->A:Ljava/util/ArrayList;

    .line 16
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 19
    move-result v1

    .line 20
    const/4 v2, 0x0

    .line 21
    :goto_0
    if-ge v2, v1, :cond_0

    .line 23
    iget-object v3, p0, Lo/K2;->A:Ljava/util/ArrayList;

    .line 25
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 28
    move-result-object v3

    .line 29
    check-cast v3, Lo/ug;

    .line 31
    invoke-virtual {v3}, Lo/ug;->j()Lo/ug;

    .line 34
    move-result-object v3

    .line 35
    iget-object v4, v0, Lo/K2;->A:Ljava/util/ArrayList;

    .line 37
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    iput-object v0, v3, Lo/ug;->i:Lo/K2;

    .line 42
    add-int/lit8 v2, v2, 0x1

    .line 44
    goto :goto_0

    .line 45
    :cond_0
    return-object v0
.end method

.method public final l(Landroid/widget/FrameLayout;Lo/H5;Lo/H5;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 12

    .line 1
    move-object v0, p0

    .line 2
    iget-wide v1, v0, Lo/ug;->b:J

    .line 4
    iget-object v3, v0, Lo/K2;->A:Ljava/util/ArrayList;

    .line 6
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 9
    move-result v3

    .line 10
    const/4 v4, 0x0

    .line 11
    :goto_0
    if-ge v4, v3, :cond_3

    .line 13
    iget-object v5, v0, Lo/K2;->A:Ljava/util/ArrayList;

    .line 15
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 18
    move-result-object v5

    .line 19
    move-object v6, v5

    .line 20
    check-cast v6, Lo/ug;

    .line 22
    const-wide/16 v7, 0x0

    .line 24
    cmp-long v5, v1, v7

    .line 26
    if-lez v5, :cond_2

    .line 28
    iget-boolean v5, v0, Lo/K2;->B:Z

    .line 30
    if-nez v5, :cond_0

    .line 32
    if-nez v4, :cond_2

    .line 34
    :cond_0
    iget-wide v9, v6, Lo/ug;->b:J

    .line 36
    cmp-long v5, v9, v7

    .line 38
    if-lez v5, :cond_1

    .line 40
    add-long/2addr v9, v1

    .line 41
    invoke-virtual {v6, v9, v10}, Lo/ug;->F(J)V

    .line 44
    goto :goto_1

    .line 45
    :cond_1
    invoke-virtual {v6, v1, v2}, Lo/ug;->F(J)V

    .line 48
    :cond_2
    :goto_1
    move-object v7, p1

    .line 49
    move-object v8, p2

    .line 50
    move-object v9, p3

    .line 51
    move-object/from16 v10, p4

    .line 53
    move-object/from16 v11, p5

    .line 55
    invoke-virtual/range {v6 .. v11}, Lo/ug;->l(Landroid/widget/FrameLayout;Lo/H5;Lo/H5;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 58
    add-int/lit8 v4, v4, 0x1

    .line 60
    goto :goto_0

    .line 61
    :cond_3
    return-void
.end method

.method public final w(Landroid/view/ViewGroup;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lo/ug;->w(Landroid/view/ViewGroup;)V

    .line 4
    iget-object v0, p0, Lo/K2;->A:Ljava/util/ArrayList;

    .line 6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    :goto_0
    if-ge v1, v0, :cond_0

    .line 13
    iget-object v2, p0, Lo/K2;->A:Ljava/util/ArrayList;

    .line 15
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 18
    move-result-object v2

    .line 19
    check-cast v2, Lo/ug;

    .line 21
    invoke-virtual {v2, p1}, Lo/ug;->w(Landroid/view/ViewGroup;)V

    .line 24
    add-int/lit8 v1, v1, 0x1

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    return-void
.end method

.method public final x(Lo/tg;)Lo/ug;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lo/ug;->x(Lo/tg;)Lo/ug;

    .line 4
    return-object p0
.end method

.method public final y(Landroid/widget/FrameLayout;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lo/ug;->y(Landroid/widget/FrameLayout;)V

    .line 4
    iget-object v0, p0, Lo/K2;->A:Ljava/util/ArrayList;

    .line 6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    :goto_0
    if-ge v1, v0, :cond_0

    .line 13
    iget-object v2, p0, Lo/K2;->A:Ljava/util/ArrayList;

    .line 15
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 18
    move-result-object v2

    .line 19
    check-cast v2, Lo/ug;

    .line 21
    invoke-virtual {v2, p1}, Lo/ug;->y(Landroid/widget/FrameLayout;)V

    .line 24
    add-int/lit8 v1, v1, 0x1

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    return-void
.end method

.method public final z()V
    .locals 4

    .line 1
    iget-object v0, p0, Lo/K2;->A:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 9
    invoke-virtual {p0}, Lo/ug;->G()V

    .line 12
    invoke-virtual {p0}, Lo/ug;->m()V

    .line 15
    return-void

    .line 16
    :cond_0
    new-instance v0, Lo/zg;

    .line 18
    invoke-direct {v0}, Lo/zg;-><init>()V

    .line 21
    iput-object p0, v0, Lo/zg;->b:Lo/ug;

    .line 23
    iget-object v1, p0, Lo/K2;->A:Ljava/util/ArrayList;

    .line 25
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 28
    move-result-object v1

    .line 29
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 32
    move-result v2

    .line 33
    if-eqz v2, :cond_1

    .line 35
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 38
    move-result-object v2

    .line 39
    check-cast v2, Lo/ug;

    .line 41
    invoke-virtual {v2, v0}, Lo/ug;->a(Lo/tg;)V

    .line 44
    goto :goto_0

    .line 45
    :cond_1
    iget-object v0, p0, Lo/K2;->A:Ljava/util/ArrayList;

    .line 47
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 50
    move-result v0

    .line 51
    iput v0, p0, Lo/K2;->C:I

    .line 53
    iget-boolean v0, p0, Lo/K2;->B:Z

    .line 55
    if-nez v0, :cond_3

    .line 57
    const/4 v0, 0x1

    .line 58
    :goto_1
    iget-object v1, p0, Lo/K2;->A:Ljava/util/ArrayList;

    .line 60
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 63
    move-result v1

    .line 64
    if-ge v0, v1, :cond_2

    .line 66
    iget-object v1, p0, Lo/K2;->A:Ljava/util/ArrayList;

    .line 68
    add-int/lit8 v2, v0, -0x1

    .line 70
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 73
    move-result-object v1

    .line 74
    check-cast v1, Lo/ug;

    .line 76
    iget-object v2, p0, Lo/K2;->A:Ljava/util/ArrayList;

    .line 78
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 81
    move-result-object v2

    .line 82
    check-cast v2, Lo/ug;

    .line 84
    new-instance v3, Lo/zg;

    .line 86
    invoke-direct {v3, v2}, Lo/zg;-><init>(Lo/ug;)V

    .line 89
    invoke-virtual {v1, v3}, Lo/ug;->a(Lo/tg;)V

    .line 92
    add-int/lit8 v0, v0, 0x1

    .line 94
    goto :goto_1

    .line 95
    :cond_2
    iget-object v0, p0, Lo/K2;->A:Ljava/util/ArrayList;

    .line 97
    const/4 v1, 0x0

    .line 98
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 101
    move-result-object v0

    .line 102
    check-cast v0, Lo/ug;

    .line 104
    if-eqz v0, :cond_4

    .line 106
    invoke-virtual {v0}, Lo/ug;->z()V

    .line 109
    goto :goto_3

    .line 110
    :cond_3
    iget-object v0, p0, Lo/K2;->A:Ljava/util/ArrayList;

    .line 112
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 115
    move-result-object v0

    .line 116
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 119
    move-result v1

    .line 120
    if-eqz v1, :cond_4

    .line 122
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 125
    move-result-object v1

    .line 126
    check-cast v1, Lo/ug;

    .line 128
    invoke-virtual {v1}, Lo/ug;->z()V

    .line 131
    goto :goto_2

    .line 132
    :cond_4
    :goto_3
    return-void
.end method
