.class public Lo/Ii;
.super Lo/Hi;
.source "SourceFile"


# instance fields
.field public n:Lo/t9;

.field public o:Lo/t9;

.field public p:Lo/t9;


# direct methods
.method public constructor <init>(Lo/Mi;Landroid/view/WindowInsets;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lo/Hi;-><init>(Lo/Mi;Landroid/view/WindowInsets;)V

    .line 4
    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lo/Ii;->n:Lo/t9;

    .line 7
    iput-object p1, p0, Lo/Ii;->o:Lo/t9;

    .line 9
    iput-object p1, p0, Lo/Ii;->p:Lo/t9;

    .line 11
    return-void
.end method


# virtual methods
.method public g()Lo/t9;
    .locals 1

    .line 1
    iget-object v0, p0, Lo/Ii;->o:Lo/t9;

    .line 3
    if-nez v0, :cond_0

    .line 5
    iget-object v0, p0, Lo/Fi;->c:Landroid/view/WindowInsets;

    .line 7
    invoke-static {v0}, Lo/Bi;->f(Landroid/view/WindowInsets;)Landroid/graphics/Insets;

    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Lo/t9;->c(Landroid/graphics/Insets;)Lo/t9;

    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lo/Ii;->o:Lo/t9;

    .line 17
    :cond_0
    iget-object v0, p0, Lo/Ii;->o:Lo/t9;

    .line 19
    return-object v0
.end method

.method public i()Lo/t9;
    .locals 1

    .line 1
    iget-object v0, p0, Lo/Ii;->n:Lo/t9;

    .line 3
    if-nez v0, :cond_0

    .line 5
    iget-object v0, p0, Lo/Fi;->c:Landroid/view/WindowInsets;

    .line 7
    invoke-static {v0}, Lo/Bi;->g(Landroid/view/WindowInsets;)Landroid/graphics/Insets;

    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Lo/t9;->c(Landroid/graphics/Insets;)Lo/t9;

    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lo/Ii;->n:Lo/t9;

    .line 17
    :cond_0
    iget-object v0, p0, Lo/Ii;->n:Lo/t9;

    .line 19
    return-object v0
.end method

.method public k()Lo/t9;
    .locals 1

    .line 1
    iget-object v0, p0, Lo/Ii;->p:Lo/t9;

    .line 3
    if-nez v0, :cond_0

    .line 5
    iget-object v0, p0, Lo/Fi;->c:Landroid/view/WindowInsets;

    .line 7
    invoke-static {v0}, Lo/Bi;->a(Landroid/view/WindowInsets;)Landroid/graphics/Insets;

    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Lo/t9;->c(Landroid/graphics/Insets;)Lo/t9;

    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lo/Ii;->p:Lo/t9;

    .line 17
    :cond_0
    iget-object v0, p0, Lo/Ii;->p:Lo/t9;

    .line 19
    return-object v0
.end method

.method public l(IIII)Lo/Mi;
    .locals 1

    .line 1
    iget-object v0, p0, Lo/Fi;->c:Landroid/view/WindowInsets;

    .line 3
    invoke-static {v0, p1, p2, p3, p4}, Lo/Bi;->d(Landroid/view/WindowInsets;IIII)Landroid/view/WindowInsets;

    .line 6
    move-result-object p1

    .line 7
    const/4 p2, 0x0

    .line 8
    invoke-static {p2, p1}, Lo/Mi;->g(Landroid/view/View;Landroid/view/WindowInsets;)Lo/Mi;

    .line 11
    move-result-object p1

    .line 12
    return-object p1
.end method

.method public q(Lo/t9;)V
    .locals 0

    .line 1
    return-void
.end method
