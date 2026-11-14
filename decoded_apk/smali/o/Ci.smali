.class public Lo/Ci;
.super Lo/Ei;
.source "SourceFile"


# instance fields
.field public final c:Landroid/view/WindowInsets$Builder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lo/Ei;-><init>()V

    .line 2
    invoke-static {}, Lo/Bi;->b()Landroid/view/WindowInsets$Builder;

    move-result-object v0

    iput-object v0, p0, Lo/Ci;->c:Landroid/view/WindowInsets$Builder;

    return-void
.end method

.method public constructor <init>(Lo/Mi;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lo/Ei;-><init>(Lo/Mi;)V

    .line 4
    invoke-virtual {p1}, Lo/Mi;->f()Landroid/view/WindowInsets;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 5
    invoke-static {p1}, Lo/Bi;->c(Landroid/view/WindowInsets;)Landroid/view/WindowInsets$Builder;

    move-result-object p1

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {}, Lo/Bi;->b()Landroid/view/WindowInsets$Builder;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lo/Ci;->c:Landroid/view/WindowInsets$Builder;

    return-void
.end method


# virtual methods
.method public b()Lo/Mi;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lo/Ei;->a()V

    .line 4
    iget-object v0, p0, Lo/Ci;->c:Landroid/view/WindowInsets$Builder;

    .line 6
    invoke-static {v0}, Lo/u;->g(Landroid/view/WindowInsets$Builder;)Landroid/view/WindowInsets;

    .line 9
    move-result-object v0

    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-static {v1, v0}, Lo/Mi;->g(Landroid/view/View;Landroid/view/WindowInsets;)Lo/Mi;

    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p0, Lo/Ei;->b:[Lo/t9;

    .line 17
    iget-object v2, v0, Lo/Mi;->a:Lo/Ki;

    .line 19
    invoke-virtual {v2, v1}, Lo/Ki;->o([Lo/t9;)V

    .line 22
    return-object v0
.end method

.method public d(Lo/t9;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lo/Ci;->c:Landroid/view/WindowInsets$Builder;

    .line 3
    invoke-virtual {p1}, Lo/t9;->d()Landroid/graphics/Insets;

    .line 6
    move-result-object p1

    .line 7
    invoke-static {v0, p1}, Lo/u;->D(Landroid/view/WindowInsets$Builder;Landroid/graphics/Insets;)V

    .line 10
    return-void
.end method

.method public e(Lo/t9;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lo/Ci;->c:Landroid/view/WindowInsets$Builder;

    .line 3
    invoke-virtual {p1}, Lo/t9;->d()Landroid/graphics/Insets;

    .line 6
    move-result-object p1

    .line 7
    invoke-static {v0, p1}, Lo/u;->w(Landroid/view/WindowInsets$Builder;Landroid/graphics/Insets;)V

    .line 10
    return-void
.end method

.method public f(Lo/t9;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lo/Ci;->c:Landroid/view/WindowInsets$Builder;

    .line 3
    invoke-virtual {p1}, Lo/t9;->d()Landroid/graphics/Insets;

    .line 6
    move-result-object p1

    .line 7
    invoke-static {v0, p1}, Lo/u;->A(Landroid/view/WindowInsets$Builder;Landroid/graphics/Insets;)V

    .line 10
    return-void
.end method

.method public g(Lo/t9;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lo/Ci;->c:Landroid/view/WindowInsets$Builder;

    .line 3
    invoke-virtual {p1}, Lo/t9;->d()Landroid/graphics/Insets;

    .line 6
    move-result-object p1

    .line 7
    invoke-static {v0, p1}, Lo/u;->o(Landroid/view/WindowInsets$Builder;Landroid/graphics/Insets;)V

    .line 10
    return-void
.end method

.method public h(Lo/t9;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lo/Ci;->c:Landroid/view/WindowInsets$Builder;

    .line 3
    invoke-virtual {p1}, Lo/t9;->d()Landroid/graphics/Insets;

    .line 6
    move-result-object p1

    .line 7
    invoke-static {v0, p1}, Lo/Bi;->e(Landroid/view/WindowInsets$Builder;Landroid/graphics/Insets;)V

    .line 10
    return-void
.end method
