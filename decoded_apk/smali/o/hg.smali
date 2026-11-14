.class public final Lo/hg;
.super Lo/Ng;
.source "SourceFile"


# instance fields
.field public final synthetic e:I

.field public f:Z

.field public g:I

.field public final synthetic h:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lo/Qh;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lo/hg;->e:I

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lo/hg;->h:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 6
    iput-boolean p1, p0, Lo/hg;->f:Z

    .line 7
    iput p1, p0, Lo/hg;->g:I

    return-void
.end method

.method public constructor <init>(Lo/ig;I)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lo/hg;->e:I

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lo/hg;->h:Ljava/lang/Object;

    iput p2, p0, Lo/hg;->g:I

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lo/hg;->f:Z

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    iget v0, p0, Lo/hg;->e:I

    .line 3
    packed-switch v0, :pswitch_data_0

    .line 6
    iget v0, p0, Lo/hg;->g:I

    .line 8
    add-int/lit8 v0, v0, 0x1

    .line 10
    iput v0, p0, Lo/hg;->g:I

    .line 12
    iget-object v1, p0, Lo/hg;->h:Ljava/lang/Object;

    .line 14
    check-cast v1, Lo/Qh;

    .line 16
    iget-object v2, v1, Lo/Qh;->a:Ljava/util/ArrayList;

    .line 18
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 21
    move-result v2

    .line 22
    if-ne v0, v2, :cond_1

    .line 24
    iget-object v0, v1, Lo/Qh;->d:Lo/Ng;

    .line 26
    if-eqz v0, :cond_0

    .line 28
    invoke-interface {v0}, Lo/Rh;->a()V

    .line 31
    :cond_0
    const/4 v0, 0x0

    .line 32
    iput v0, p0, Lo/hg;->g:I

    .line 34
    iput-boolean v0, p0, Lo/hg;->f:Z

    .line 36
    iput-boolean v0, v1, Lo/Qh;->e:Z

    .line 38
    :cond_1
    return-void

    .line 39
    :pswitch_0
    iget-boolean v0, p0, Lo/hg;->f:Z

    .line 41
    if-nez v0, :cond_2

    .line 43
    iget-object v0, p0, Lo/hg;->h:Ljava/lang/Object;

    .line 45
    check-cast v0, Lo/ig;

    .line 47
    iget-object v0, v0, Lo/ig;->a:Landroidx/appcompat/widget/Toolbar;

    .line 49
    iget v1, p0, Lo/hg;->g:I

    .line 51
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 54
    :cond_2
    return-void

    .line 55
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public b()V
    .locals 1

    .line 1
    iget v0, p0, Lo/hg;->e:I

    .line 3
    packed-switch v0, :pswitch_data_0

    .line 6
    return-void

    .line 7
    :pswitch_0
    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Lo/hg;->f:Z

    .line 10
    return-void

    .line 11
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final c()V
    .locals 2

    .line 1
    iget v0, p0, Lo/hg;->e:I

    .line 3
    packed-switch v0, :pswitch_data_0

    .line 6
    iget-boolean v0, p0, Lo/hg;->f:Z

    .line 8
    if-eqz v0, :cond_0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Lo/hg;->f:Z

    .line 14
    iget-object v0, p0, Lo/hg;->h:Ljava/lang/Object;

    .line 16
    check-cast v0, Lo/Qh;

    .line 18
    iget-object v0, v0, Lo/Qh;->d:Lo/Ng;

    .line 20
    if-eqz v0, :cond_1

    .line 22
    invoke-interface {v0}, Lo/Rh;->c()V

    .line 25
    :cond_1
    :goto_0
    return-void

    .line 26
    :pswitch_0
    iget-object v0, p0, Lo/hg;->h:Ljava/lang/Object;

    .line 28
    check-cast v0, Lo/ig;

    .line 30
    iget-object v0, v0, Lo/ig;->a:Landroidx/appcompat/widget/Toolbar;

    .line 32
    const/4 v1, 0x0

    .line 33
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 36
    return-void

    .line 37
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
