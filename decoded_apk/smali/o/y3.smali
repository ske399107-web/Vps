.class public final Lo/y3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lo/z3;

.field public final synthetic b:Lo/nb;

.field public final synthetic c:Lo/kb;

.field public final synthetic d:Lo/C;


# direct methods
.method public constructor <init>(Lo/C;Lo/z3;Lo/nb;Lo/kb;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lo/y3;->d:Lo/C;

    .line 6
    iput-object p2, p0, Lo/y3;->a:Lo/z3;

    .line 8
    iput-object p3, p0, Lo/y3;->b:Lo/nb;

    .line 10
    iput-object p4, p0, Lo/y3;->c:Lo/kb;

    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lo/y3;->a:Lo/z3;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    iget-object v1, p0, Lo/y3;->d:Lo/C;

    .line 7
    iget-object v2, v1, Lo/C;->b:Ljava/lang/Object;

    .line 9
    check-cast v2, Lo/A3;

    .line 11
    const/4 v3, 0x1

    .line 12
    iput-boolean v3, v2, Lo/A3;->z:Z

    .line 14
    iget-object v0, v0, Lo/z3;->b:Lo/kb;

    .line 16
    const/4 v2, 0x0

    .line 17
    invoke-virtual {v0, v2}, Lo/kb;->c(Z)V

    .line 20
    iget-object v0, v1, Lo/C;->b:Ljava/lang/Object;

    .line 22
    check-cast v0, Lo/A3;

    .line 24
    iput-boolean v2, v0, Lo/A3;->z:Z

    .line 26
    :cond_0
    iget-object v0, p0, Lo/y3;->b:Lo/nb;

    .line 28
    invoke-virtual {v0}, Lo/nb;->isEnabled()Z

    .line 31
    move-result v1

    .line 32
    if-eqz v1, :cond_1

    .line 34
    invoke-virtual {v0}, Lo/nb;->hasSubMenu()Z

    .line 37
    move-result v1

    .line 38
    if-eqz v1, :cond_1

    .line 40
    iget-object v1, p0, Lo/y3;->c:Lo/kb;

    .line 42
    const/4 v2, 0x4

    .line 43
    const/4 v3, 0x0

    .line 44
    invoke-virtual {v1, v0, v3, v2}, Lo/kb;->q(Landroid/view/MenuItem;Lo/Ab;I)Z

    .line 47
    :cond_1
    return-void
.end method
