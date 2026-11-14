.class public Lo/h2;
.super Lo/C;
.source "SourceFile"


# instance fields
.field public final synthetic d:Lo/j2;


# direct methods
.method public constructor <init>(Lo/j2;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lo/h2;->d:Lo/j2;

    .line 3
    const/4 v0, 0x4

    .line 4
    invoke-direct {p0, v0, p1}, Lo/C;-><init>(ILjava/lang/Object;)V

    .line 7
    return-void
.end method


# virtual methods
.method public final n(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lo/h2;->d:Lo/j2;

    .line 3
    invoke-static {v0, p1}, Lo/j2;->e(Lo/j2;I)V

    .line 6
    return-void
.end method

.method public final q(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lo/h2;->d:Lo/j2;

    .line 3
    invoke-static {v0, p1}, Lo/j2;->d(Lo/j2;I)V

    .line 6
    return-void
.end method
