.class public final Lo/S9;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lo/M9;

.field public b:Lo/P9;


# virtual methods
.method public final a(Lo/R9;Lo/L9;)V
    .locals 3

    .line 1
    invoke-virtual {p2}, Lo/L9;->a()Lo/M9;

    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lo/S9;->a:Lo/M9;

    .line 7
    const-string v2, "state1"

    .line 9
    invoke-static {v1, v2}, Lo/x9;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 15
    move-result v2

    .line 16
    if-gez v2, :cond_0

    .line 18
    move-object v1, v0

    .line 19
    :cond_0
    iput-object v1, p0, Lo/S9;->a:Lo/M9;

    .line 21
    iget-object v1, p0, Lo/S9;->b:Lo/P9;

    .line 23
    invoke-interface {v1, p1, p2}, Lo/P9;->b(Lo/R9;Lo/L9;)V

    .line 26
    iput-object v0, p0, Lo/S9;->a:Lo/M9;

    .line 28
    return-void
.end method
