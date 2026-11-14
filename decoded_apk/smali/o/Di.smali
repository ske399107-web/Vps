.class public final Lo/Di;
.super Lo/Ci;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lo/Ci;-><init>()V

    return-void
.end method

.method public constructor <init>(Lo/Mi;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lo/Ci;-><init>(Lo/Mi;)V

    return-void
.end method


# virtual methods
.method public c(ILo/t9;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lo/Ci;->c:Landroid/view/WindowInsets$Builder;

    .line 3
    invoke-static {p1}, Lo/Li;->a(I)I

    .line 6
    move-result p1

    .line 7
    invoke-virtual {p2}, Lo/t9;->d()Landroid/graphics/Insets;

    .line 10
    move-result-object p2

    .line 11
    invoke-static {v0, p1, p2}, Lo/v;->p(Landroid/view/WindowInsets$Builder;ILandroid/graphics/Insets;)V

    .line 14
    return-void
.end method
