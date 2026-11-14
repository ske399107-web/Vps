.class public final Lo/dc;
.super Lo/u6;
.source "SourceFile"


# instance fields
.field public final f:Lo/Ja;

.field public final g:F


# direct methods
.method public constructor <init>(Lo/Ja;F)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lo/u6;-><init>(I)V

    .line 5
    iput-object p1, p0, Lo/dc;->f:Lo/Ja;

    .line 7
    iput p2, p0, Lo/dc;->g:F

    .line 9
    return-void
.end method


# virtual methods
.method public final c()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public final f(FFFLo/Ke;)V
    .locals 1

    .line 1
    iget v0, p0, Lo/dc;->g:F

    .line 3
    sub-float/2addr p2, v0

    .line 4
    iget-object v0, p0, Lo/dc;->f:Lo/Ja;

    .line 6
    invoke-virtual {v0, p1, p2, p3, p4}, Lo/Ja;->f(FFFLo/Ke;)V

    .line 9
    return-void
.end method
