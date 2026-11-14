.class Landroidx/activity/ComponentActivity$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo/P9;


# instance fields
.field public final synthetic a:Landroidx/activity/a;


# direct methods
.method public constructor <init>(Landroidx/activity/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Landroidx/activity/ComponentActivity$6;->a:Landroidx/activity/a;

    .line 6
    return-void
.end method


# virtual methods
.method public final b(Lo/R9;Lo/L9;)V
    .locals 1

    .line 1
    sget-object v0, Lo/L9;->ON_CREATE:Lo/L9;

    .line 3
    if-ne p2, v0, :cond_0

    .line 5
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 7
    const/16 v0, 0x21

    .line 9
    if-lt p2, v0, :cond_0

    .line 11
    iget-object p2, p0, Landroidx/activity/ComponentActivity$6;->a:Landroidx/activity/a;

    .line 13
    iget-object p2, p2, Landroidx/activity/a;->g:Landroidx/activity/b;

    .line 15
    check-cast p1, Landroidx/activity/a;

    .line 17
    invoke-static {p1}, Lo/q4;->a(Landroid/app/Activity;)Landroid/window/OnBackInvokedDispatcher;

    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    const-string v0, "invoker"

    .line 26
    invoke-static {p1, v0}, Lo/x9;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    iput-object p1, p2, Landroidx/activity/b;->e:Landroid/window/OnBackInvokedDispatcher;

    .line 31
    iget-boolean p1, p2, Landroidx/activity/b;->g:Z

    .line 33
    invoke-virtual {p2, p1}, Landroidx/activity/b;->c(Z)V

    .line 36
    :cond_0
    return-void
.end method
