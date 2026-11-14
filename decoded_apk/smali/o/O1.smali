.class public final Lo/O1;
.super Lo/O7;
.source "SourceFile"


# instance fields
.field public final synthetic j:Lo/V1;

.field public final synthetic k:Lo/Y1;


# direct methods
.method public constructor <init>(Lo/Y1;Lo/Y1;Lo/V1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo/O1;->k:Lo/Y1;

    .line 3
    iput-object p3, p0, Lo/O1;->j:Lo/V1;

    .line 5
    invoke-direct {p0, p2}, Lo/O7;-><init>(Landroid/view/View;)V

    .line 8
    return-void
.end method


# virtual methods
.method public final b()Lo/Ne;
    .locals 1

    .line 1
    iget-object v0, p0, Lo/O1;->j:Lo/V1;

    .line 3
    return-object v0
.end method

.method public final c()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lo/O1;->k:Lo/Y1;

    .line 3
    invoke-virtual {v0}, Lo/Y1;->getInternalPopup()Lo/X1;

    .line 6
    move-result-object v1

    .line 7
    invoke-interface {v1}, Lo/X1;->b()Z

    .line 10
    move-result v1

    .line 11
    if-nez v1, :cond_0

    .line 13
    invoke-virtual {v0}, Landroid/view/View;->getTextDirection()I

    .line 16
    move-result v1

    .line 17
    invoke-virtual {v0}, Landroid/view/View;->getTextAlignment()I

    .line 20
    move-result v2

    .line 21
    iget-object v0, v0, Lo/Y1;->f:Lo/X1;

    .line 23
    invoke-interface {v0, v1, v2}, Lo/X1;->e(II)V

    .line 26
    :cond_0
    const/4 v0, 0x1

    .line 27
    return v0
.end method
