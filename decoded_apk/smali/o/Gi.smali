.class public Lo/Gi;
.super Lo/Fi;
.source "SourceFile"


# instance fields
.field public m:Lo/t9;


# direct methods
.method public constructor <init>(Lo/Mi;Landroid/view/WindowInsets;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lo/Fi;-><init>(Lo/Mi;Landroid/view/WindowInsets;)V

    .line 4
    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lo/Gi;->m:Lo/t9;

    .line 7
    return-void
.end method


# virtual methods
.method public b()Lo/Mi;
    .locals 2

    .line 1
    iget-object v0, p0, Lo/Fi;->c:Landroid/view/WindowInsets;

    .line 3
    invoke-virtual {v0}, Landroid/view/WindowInsets;->consumeStableInsets()Landroid/view/WindowInsets;

    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-static {v1, v0}, Lo/Mi;->g(Landroid/view/View;Landroid/view/WindowInsets;)Lo/Mi;

    .line 11
    move-result-object v0

    .line 12
    return-object v0
.end method

.method public c()Lo/Mi;
    .locals 2

    .line 1
    iget-object v0, p0, Lo/Fi;->c:Landroid/view/WindowInsets;

    .line 3
    invoke-virtual {v0}, Landroid/view/WindowInsets;->consumeSystemWindowInsets()Landroid/view/WindowInsets;

    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-static {v1, v0}, Lo/Mi;->g(Landroid/view/View;Landroid/view/WindowInsets;)Lo/Mi;

    .line 11
    move-result-object v0

    .line 12
    return-object v0
.end method

.method public final h()Lo/t9;
    .locals 4

    .line 1
    iget-object v0, p0, Lo/Gi;->m:Lo/t9;

    .line 3
    if-nez v0, :cond_0

    .line 5
    iget-object v0, p0, Lo/Fi;->c:Landroid/view/WindowInsets;

    .line 7
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getStableInsetLeft()I

    .line 10
    move-result v1

    .line 11
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getStableInsetTop()I

    .line 14
    move-result v2

    .line 15
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getStableInsetRight()I

    .line 18
    move-result v3

    .line 19
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getStableInsetBottom()I

    .line 22
    move-result v0

    .line 23
    invoke-static {v1, v2, v3, v0}, Lo/t9;->b(IIII)Lo/t9;

    .line 26
    move-result-object v0

    .line 27
    iput-object v0, p0, Lo/Gi;->m:Lo/t9;

    .line 29
    :cond_0
    iget-object v0, p0, Lo/Gi;->m:Lo/t9;

    .line 31
    return-object v0
.end method

.method public m()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lo/Fi;->c:Landroid/view/WindowInsets;

    .line 3
    invoke-virtual {v0}, Landroid/view/WindowInsets;->isConsumed()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public q(Lo/t9;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo/Gi;->m:Lo/t9;

    .line 3
    return-void
.end method
