.class public final Lo/V7;
.super Lo/L1;
.source "SourceFile"

# interfaces
.implements Lo/Mh;
.implements Lo/mc;
.implements Lo/te;
.implements Lo/l8;


# instance fields
.field public final g:Lo/U0;

.field public final h:Lo/U0;

.field public final i:Landroid/os/Handler;

.field public final j:Lo/i8;

.field public final synthetic k:Lo/U0;


# direct methods
.method public constructor <init>(Lo/U0;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lo/V7;->k:Lo/U0;

    .line 6
    new-instance v0, Landroid/os/Handler;

    .line 8
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 11
    new-instance v1, Lo/i8;

    .line 13
    invoke-direct {v1}, Lo/i8;-><init>()V

    .line 16
    iput-object v1, p0, Lo/V7;->j:Lo/i8;

    .line 18
    iput-object p1, p0, Lo/V7;->g:Lo/U0;

    .line 20
    iput-object p1, p0, Lo/V7;->h:Lo/U0;

    .line 22
    iput-object v0, p0, Lo/V7;->i:Landroid/os/Handler;

    .line 24
    return-void
.end method


# virtual methods
.method public final L(I)Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lo/V7;->k:Lo/U0;

    .line 3
    invoke-virtual {v0, p1}, Lo/U0;->findViewById(I)Landroid/view/View;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public final M()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lo/V7;->k:Lo/U0;

    .line 3
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 9
    invoke-virtual {v0}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_0

    .line 15
    const/4 v0, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    :goto_0
    return v0
.end method

.method public final a()V
    .locals 0

    .line 1
    return-void
.end method

.method public final b()Lo/b1;
    .locals 1

    .line 1
    iget-object v0, p0, Lo/V7;->k:Lo/U0;

    .line 3
    iget-object v0, v0, Landroidx/activity/a;->e:Lo/t8;

    .line 5
    iget-object v0, v0, Lo/t8;->c:Ljava/lang/Object;

    .line 7
    check-cast v0, Lo/b1;

    .line 9
    return-object v0
.end method

.method public final d()Lo/Lh;
    .locals 1

    .line 1
    iget-object v0, p0, Lo/V7;->k:Lo/U0;

    .line 3
    invoke-virtual {v0}, Landroidx/activity/a;->d()Lo/Lh;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final e()Landroidx/lifecycle/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lo/V7;->k:Lo/U0;

    .line 3
    iget-object v0, v0, Lo/U0;->s:Landroidx/lifecycle/a;

    .line 5
    return-object v0
.end method
