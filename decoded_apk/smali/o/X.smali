.class public final Lo/X;
.super Lo/O7;
.source "SourceFile"


# instance fields
.field public final synthetic j:I

.field public final synthetic k:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/ActionMenuItemView;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lo/X;->j:I

    .line 1
    iput-object p1, p0, Lo/X;->k:Landroid/view/View;

    .line 2
    invoke-direct {p0, p1}, Lo/O7;-><init>(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lo/c0;Lo/c0;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lo/X;->j:I

    .line 3
    iput-object p1, p0, Lo/X;->k:Landroid/view/View;

    invoke-direct {p0, p2}, Lo/O7;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final b()Lo/Ne;
    .locals 2

    .line 1
    iget v0, p0, Lo/X;->j:I

    .line 3
    packed-switch v0, :pswitch_data_0

    .line 6
    iget-object v0, p0, Lo/X;->k:Landroid/view/View;

    .line 8
    check-cast v0, Lo/c0;

    .line 10
    iget-object v0, v0, Lo/c0;->d:Lo/d0;

    .line 12
    iget-object v0, v0, Lo/d0;->s:Lo/Z;

    .line 14
    if-nez v0, :cond_0

    .line 16
    const/4 v0, 0x0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-virtual {v0}, Lo/ub;->a()Lo/sb;

    .line 21
    move-result-object v0

    .line 22
    :goto_0
    return-object v0

    .line 23
    :pswitch_0
    iget-object v0, p0, Lo/X;->k:Landroid/view/View;

    .line 25
    check-cast v0, Landroidx/appcompat/view/menu/ActionMenuItemView;

    .line 27
    iget-object v0, v0, Landroidx/appcompat/view/menu/ActionMenuItemView;->m:Lo/Y;

    .line 29
    const/4 v1, 0x0

    .line 30
    if-eqz v0, :cond_1

    .line 32
    check-cast v0, Lo/a0;

    .line 34
    iget-object v0, v0, Lo/a0;->a:Lo/d0;

    .line 36
    iget-object v0, v0, Lo/d0;->t:Lo/Z;

    .line 38
    if-eqz v0, :cond_1

    .line 40
    invoke-virtual {v0}, Lo/ub;->a()Lo/sb;

    .line 43
    move-result-object v1

    .line 44
    :cond_1
    return-object v1

    .line 45
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final c()Z
    .locals 3

    .line 1
    iget v0, p0, Lo/X;->j:I

    .line 3
    packed-switch v0, :pswitch_data_0

    .line 6
    iget-object v0, p0, Lo/X;->k:Landroid/view/View;

    .line 8
    check-cast v0, Lo/c0;

    .line 10
    iget-object v0, v0, Lo/c0;->d:Lo/d0;

    .line 12
    invoke-virtual {v0}, Lo/d0;->l()Z

    .line 15
    const/4 v0, 0x1

    .line 16
    return v0

    .line 17
    :pswitch_0
    iget-object v0, p0, Lo/X;->k:Landroid/view/View;

    .line 19
    check-cast v0, Landroidx/appcompat/view/menu/ActionMenuItemView;

    .line 21
    iget-object v1, v0, Landroidx/appcompat/view/menu/ActionMenuItemView;->k:Lo/jb;

    .line 23
    const/4 v2, 0x0

    .line 24
    if-eqz v1, :cond_0

    .line 26
    iget-object v0, v0, Landroidx/appcompat/view/menu/ActionMenuItemView;->h:Lo/nb;

    .line 28
    invoke-interface {v1, v0}, Lo/jb;->c(Lo/nb;)Z

    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_0

    .line 34
    invoke-virtual {p0}, Lo/X;->b()Lo/Ne;

    .line 37
    move-result-object v0

    .line 38
    if-eqz v0, :cond_0

    .line 40
    invoke-interface {v0}, Lo/Ne;->b()Z

    .line 43
    move-result v0

    .line 44
    if-eqz v0, :cond_0

    .line 46
    const/4 v2, 0x1

    .line 47
    :cond_0
    return v2

    nop

    .line 49
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public d()Z
    .locals 2

    .line 1
    iget v0, p0, Lo/X;->j:I

    .line 3
    packed-switch v0, :pswitch_data_0

    .line 6
    invoke-super {p0}, Lo/O7;->d()Z

    .line 9
    move-result v0

    .line 10
    return v0

    .line 11
    :pswitch_0
    iget-object v0, p0, Lo/X;->k:Landroid/view/View;

    .line 13
    check-cast v0, Lo/c0;

    .line 15
    iget-object v0, v0, Lo/c0;->d:Lo/d0;

    .line 17
    iget-object v1, v0, Lo/d0;->u:Lo/b0;

    .line 19
    if-eqz v1, :cond_0

    .line 21
    const/4 v0, 0x0

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-virtual {v0}, Lo/d0;->f()Z

    .line 26
    const/4 v0, 0x1

    .line 27
    :goto_0
    return v0

    nop

    .line 29
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
