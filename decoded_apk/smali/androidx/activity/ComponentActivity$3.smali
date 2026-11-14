.class Landroidx/activity/ComponentActivity$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo/P9;


# instance fields
.field public final synthetic a:Lo/U0;


# direct methods
.method public constructor <init>(Lo/U0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Landroidx/activity/ComponentActivity$3;->a:Lo/U0;

    .line 6
    return-void
.end method


# virtual methods
.method public final b(Lo/R9;Lo/L9;)V
    .locals 1

    .line 1
    sget-object p1, Lo/L9;->ON_DESTROY:Lo/L9;

    .line 3
    if-ne p2, p1, :cond_1

    .line 5
    iget-object p1, p0, Landroidx/activity/ComponentActivity$3;->a:Lo/U0;

    .line 7
    iget-object p1, p1, Landroidx/activity/a;->b:Lo/U4;

    .line 9
    const/4 p2, 0x0

    .line 10
    iput-object p2, p1, Lo/U4;->b:Landroidx/activity/a;

    .line 12
    iget-object p1, p0, Landroidx/activity/ComponentActivity$3;->a:Lo/U0;

    .line 14
    invoke-virtual {p1}, Landroid/app/Activity;->isChangingConfigurations()Z

    .line 17
    move-result p1

    .line 18
    if-nez p1, :cond_0

    .line 20
    iget-object p1, p0, Landroidx/activity/ComponentActivity$3;->a:Lo/U0;

    .line 22
    invoke-virtual {p1}, Landroidx/activity/a;->d()Lo/Lh;

    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {p1}, Lo/Lh;->a()V

    .line 29
    :cond_0
    iget-object p1, p0, Landroidx/activity/ComponentActivity$3;->a:Lo/U0;

    .line 31
    iget-object p1, p1, Landroidx/activity/a;->h:Lo/s4;

    .line 33
    iget-object p2, p1, Lo/s4;->d:Lo/U0;

    .line 35
    invoke-virtual {p2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {v0, p1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 46
    invoke-virtual {p2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 49
    move-result-object p2

    .line 50
    invoke-virtual {p2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 53
    move-result-object p2

    .line 54
    invoke-virtual {p2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 57
    move-result-object p2

    .line 58
    invoke-virtual {p2, p1}, Landroid/view/ViewTreeObserver;->removeOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    .line 61
    :cond_1
    return-void
.end method
