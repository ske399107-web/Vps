.class Landroidx/activity/ComponentActivity$4;
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
    iput-object p1, p0, Landroidx/activity/ComponentActivity$4;->a:Lo/U0;

    .line 6
    return-void
.end method


# virtual methods
.method public final b(Lo/R9;Lo/L9;)V
    .locals 0

    .line 1
    iget-object p1, p0, Landroidx/activity/ComponentActivity$4;->a:Lo/U0;

    .line 3
    iget-object p2, p1, Landroidx/activity/a;->f:Lo/Lh;

    .line 5
    if-nez p2, :cond_1

    .line 7
    invoke-virtual {p1}, Landroid/app/Activity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    .line 10
    move-result-object p2

    .line 11
    check-cast p2, Lo/r4;

    .line 13
    if-eqz p2, :cond_0

    .line 15
    iget-object p2, p2, Lo/r4;->a:Lo/Lh;

    .line 17
    iput-object p2, p1, Landroidx/activity/a;->f:Lo/Lh;

    .line 19
    :cond_0
    iget-object p2, p1, Landroidx/activity/a;->f:Lo/Lh;

    .line 21
    if-nez p2, :cond_1

    .line 23
    new-instance p2, Lo/Lh;

    .line 25
    invoke-direct {p2}, Lo/Lh;-><init>()V

    .line 28
    iput-object p2, p1, Landroidx/activity/a;->f:Lo/Lh;

    .line 30
    :cond_1
    iget-object p1, p1, Landroidx/activity/a;->d:Landroidx/lifecycle/a;

    .line 32
    invoke-virtual {p1, p0}, Landroidx/lifecycle/a;->f(Lo/Q9;)V

    .line 35
    return-void
.end method
