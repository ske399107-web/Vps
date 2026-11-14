.class public final Lo/Z;
.super Lo/ub;
.source "SourceFile"


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Lo/d0;


# direct methods
.method public constructor <init>(Lo/d0;Landroid/content/Context;Lo/kb;Landroid/view/View;)V
    .locals 7

    const/4 v0, 0x1

    iput v0, p0, Lo/Z;->l:I

    .line 1
    iput-object p1, p0, Lo/Z;->m:Lo/d0;

    const v2, 0x7f030022

    const/4 v6, 0x1

    move-object v1, p0

    move-object v3, p2

    move-object v4, p4

    move-object v5, p3

    .line 2
    invoke-direct/range {v1 .. v6}, Lo/ub;-><init>(ILandroid/content/Context;Landroid/view/View;Lo/kb;Z)V

    const p2, 0x800005

    .line 3
    iput p2, p0, Lo/ub;->f:I

    .line 4
    iget-object p1, p1, Lo/d0;->w:Lo/C;

    .line 5
    iput-object p1, p0, Lo/ub;->h:Lo/zb;

    .line 6
    iget-object p2, p0, Lo/ub;->i:Lo/sb;

    if-eqz p2, :cond_0

    .line 7
    invoke-interface {p2, p1}, Lo/Ab;->c(Lo/zb;)V

    :cond_0
    return-void
.end method

.method public constructor <init>(Lo/d0;Landroid/content/Context;Lo/uf;Landroid/view/View;)V
    .locals 7

    const/4 v0, 0x0

    iput v0, p0, Lo/Z;->l:I

    .line 8
    iput-object p1, p0, Lo/Z;->m:Lo/d0;

    const/4 v6, 0x0

    const v2, 0x7f030022

    move-object v1, p0

    move-object v3, p2

    move-object v4, p4

    move-object v5, p3

    .line 9
    invoke-direct/range {v1 .. v6}, Lo/ub;-><init>(ILandroid/content/Context;Landroid/view/View;Lo/kb;Z)V

    .line 10
    iget-object p2, p3, Lo/uf;->A:Lo/nb;

    .line 11
    invoke-virtual {p2}, Lo/nb;->f()Z

    move-result p2

    if-nez p2, :cond_1

    .line 12
    iget-object p2, p1, Lo/d0;->i:Lo/c0;

    if-nez p2, :cond_0

    .line 13
    iget-object p2, p1, Lo/d0;->h:Lo/Cb;

    .line 14
    check-cast p2, Landroid/view/View;

    .line 15
    :cond_0
    iput-object p2, p0, Lo/ub;->e:Landroid/view/View;

    .line 16
    :cond_1
    iget-object p1, p1, Lo/d0;->w:Lo/C;

    .line 17
    iput-object p1, p0, Lo/ub;->h:Lo/zb;

    .line 18
    iget-object p2, p0, Lo/ub;->i:Lo/sb;

    if-eqz p2, :cond_2

    .line 19
    invoke-interface {p2, p1}, Lo/Ab;->c(Lo/zb;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public final c()V
    .locals 3

    .line 1
    iget v0, p0, Lo/Z;->l:I

    .line 3
    packed-switch v0, :pswitch_data_0

    .line 6
    iget-object v0, p0, Lo/Z;->m:Lo/d0;

    .line 8
    iget-object v1, v0, Lo/d0;->c:Lo/kb;

    .line 10
    if-eqz v1, :cond_0

    .line 12
    const/4 v2, 0x1

    .line 13
    invoke-virtual {v1, v2}, Lo/kb;->c(Z)V

    .line 16
    :cond_0
    const/4 v1, 0x0

    .line 17
    iput-object v1, v0, Lo/d0;->s:Lo/Z;

    .line 19
    invoke-super {p0}, Lo/ub;->c()V

    .line 22
    return-void

    .line 23
    :pswitch_0
    const/4 v0, 0x0

    .line 24
    iget-object v1, p0, Lo/Z;->m:Lo/d0;

    .line 26
    iput-object v0, v1, Lo/d0;->t:Lo/Z;

    .line 28
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    invoke-super {p0}, Lo/ub;->c()V

    .line 34
    return-void

    .line 35
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
