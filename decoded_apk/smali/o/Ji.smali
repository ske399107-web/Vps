.class public final Lo/Ji;
.super Lo/Ii;
.source "SourceFile"


# static fields
.field public static final q:Lo/Mi;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    invoke-static {}, Lo/v;->g()Landroid/view/WindowInsets;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-static {v1, v0}, Lo/Mi;->g(Landroid/view/View;Landroid/view/WindowInsets;)Lo/Mi;

    .line 9
    move-result-object v0

    .line 10
    sput-object v0, Lo/Ji;->q:Lo/Mi;

    .line 12
    return-void
.end method

.method public constructor <init>(Lo/Mi;Landroid/view/WindowInsets;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lo/Ii;-><init>(Lo/Mi;Landroid/view/WindowInsets;)V

    .line 4
    return-void
.end method


# virtual methods
.method public final d(Landroid/view/View;)V
    .locals 0

    .line 1
    return-void
.end method

.method public f(I)Lo/t9;
    .locals 1

    .line 1
    iget-object v0, p0, Lo/Fi;->c:Landroid/view/WindowInsets;

    .line 3
    invoke-static {p1}, Lo/Li;->a(I)I

    .line 6
    move-result p1

    .line 7
    invoke-static {v0, p1}, Lo/v;->e(Landroid/view/WindowInsets;I)Landroid/graphics/Insets;

    .line 10
    move-result-object p1

    .line 11
    invoke-static {p1}, Lo/t9;->c(Landroid/graphics/Insets;)Lo/t9;

    .line 14
    move-result-object p1

    .line 15
    return-object p1
.end method
