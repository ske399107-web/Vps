.class public final Lo/W5;
.super Lo/L1;
.source "SourceFile"


# instance fields
.field public final synthetic g:Lo/Q7;

.field public final synthetic h:Lo/X5;


# direct methods
.method public constructor <init>(Lo/X5;Lo/Q7;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lo/W5;->h:Lo/X5;

    .line 6
    iput-object p2, p0, Lo/W5;->g:Lo/Q7;

    .line 8
    return-void
.end method


# virtual methods
.method public final L(I)Landroid/view/View;
    .locals 2

    .line 1
    iget-object v0, p0, Lo/W5;->g:Lo/Q7;

    .line 3
    invoke-virtual {v0}, Lo/Q7;->M()Z

    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 9
    invoke-virtual {v0, p1}, Lo/Q7;->L(I)Landroid/view/View;

    .line 12
    move-result-object p1

    .line 13
    return-object p1

    .line 14
    :cond_0
    iget-object v0, p0, Lo/W5;->h:Lo/X5;

    .line 16
    iget-object v0, v0, Lo/X5;->c0:Landroid/app/Dialog;

    .line 18
    if-eqz v0, :cond_1

    .line 20
    invoke-virtual {v0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 23
    move-result-object p1

    .line 24
    goto :goto_0

    .line 25
    :cond_1
    const/4 p1, 0x0

    .line 26
    :goto_0
    return-object p1
.end method

.method public final M()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lo/W5;->g:Lo/Q7;

    .line 3
    invoke-virtual {v0}, Lo/Q7;->M()Z

    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 9
    iget-object v0, p0, Lo/W5;->h:Lo/X5;

    .line 11
    iget-boolean v0, v0, Lo/X5;->f0:Z

    .line 13
    if-eqz v0, :cond_0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    goto :goto_1

    .line 18
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 19
    :goto_1
    return v0
.end method
