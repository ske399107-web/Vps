.class public abstract Lo/qd;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lo/ld;

.field public b:Ljava/util/ArrayList;

.field public c:J

.field public d:J

.field public e:J

.field public f:J


# direct methods
.method public static b(Lo/Id;)V
    .locals 2

    .line 1
    iget v0, p0, Lo/Id;->j:I

    .line 3
    invoke-virtual {p0}, Lo/Id;->g()Z

    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 9
    return-void

    .line 10
    :cond_0
    and-int/lit8 v0, v0, 0x4

    .line 12
    if-nez v0, :cond_2

    .line 14
    iget-object v0, p0, Lo/Id;->r:Landroidx/recyclerview/widget/RecyclerView;

    .line 16
    if-nez v0, :cond_1

    .line 18
    goto :goto_0

    .line 19
    :cond_1
    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->F(Lo/Id;)I

    .line 22
    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public abstract a(Lo/Id;Lo/Id;Lo/Wb;Lo/Wb;)Z
.end method

.method public final c(Lo/Id;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lo/qd;->a:Lo/ld;

    .line 3
    if-eqz v0, :cond_5

    .line 5
    const/4 v1, 0x1

    .line 6
    invoke-virtual {p1, v1}, Lo/Id;->o(Z)V

    .line 9
    iget-object v2, p1, Lo/Id;->h:Lo/Id;

    .line 11
    const/4 v3, 0x0

    .line 12
    if-eqz v2, :cond_0

    .line 14
    iget-object v2, p1, Lo/Id;->i:Lo/Id;

    .line 16
    if-nez v2, :cond_0

    .line 18
    iput-object v3, p1, Lo/Id;->h:Lo/Id;

    .line 20
    :cond_0
    iput-object v3, p1, Lo/Id;->i:Lo/Id;

    .line 22
    iget v2, p1, Lo/Id;->j:I

    .line 24
    and-int/lit8 v2, v2, 0x10

    .line 26
    if-eqz v2, :cond_1

    .line 28
    goto :goto_1

    .line 29
    :cond_1
    iget-object v0, v0, Lo/ld;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 31
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->a0()V

    .line 34
    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView;->e:Lo/s2;

    .line 36
    iget-object v3, v2, Lo/s2;->b:Ljava/lang/Object;

    .line 38
    check-cast v3, Lo/ld;

    .line 40
    iget-object v4, v3, Lo/ld;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 42
    iget-object v5, p1, Lo/Id;->a:Landroid/view/View;

    .line 44
    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    .line 47
    move-result v4

    .line 48
    const/4 v6, -0x1

    .line 49
    const/4 v7, 0x0

    .line 50
    if-ne v4, v6, :cond_2

    .line 52
    invoke-virtual {v2, v5}, Lo/s2;->C(Landroid/view/View;)V

    .line 55
    goto :goto_0

    .line 56
    :cond_2
    iget-object v6, v2, Lo/s2;->c:Ljava/lang/Object;

    .line 58
    check-cast v6, Lo/L3;

    .line 60
    invoke-virtual {v6, v4}, Lo/L3;->d(I)Z

    .line 63
    move-result v8

    .line 64
    if-eqz v8, :cond_3

    .line 66
    invoke-virtual {v6, v4}, Lo/L3;->f(I)Z

    .line 69
    invoke-virtual {v2, v5}, Lo/s2;->C(Landroid/view/View;)V

    .line 72
    invoke-virtual {v3, v4}, Lo/ld;->h(I)V

    .line 75
    goto :goto_0

    .line 76
    :cond_3
    move v1, v7

    .line 77
    :goto_0
    if-eqz v1, :cond_4

    .line 79
    invoke-static {v5}, Landroidx/recyclerview/widget/RecyclerView;->I(Landroid/view/View;)Lo/Id;

    .line 82
    move-result-object v2

    .line 83
    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView;->b:Lo/Ad;

    .line 85
    invoke-virtual {v3, v2}, Lo/Ad;->j(Lo/Id;)V

    .line 88
    invoke-virtual {v3, v2}, Lo/Ad;->g(Lo/Id;)V

    .line 91
    :cond_4
    xor-int/lit8 v2, v1, 0x1

    .line 93
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->b0(Z)V

    .line 96
    if-nez v1, :cond_5

    .line 98
    invoke-virtual {p1}, Lo/Id;->k()Z

    .line 101
    move-result p1

    .line 102
    if-eqz p1, :cond_5

    .line 104
    invoke-virtual {v0, v5, v7}, Landroidx/recyclerview/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    .line 107
    :cond_5
    :goto_1
    return-void
.end method

.method public abstract d(Lo/Id;)V
.end method

.method public abstract e()V
.end method

.method public abstract f()Z
.end method
