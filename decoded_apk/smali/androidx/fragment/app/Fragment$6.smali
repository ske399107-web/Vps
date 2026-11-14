.class Landroidx/fragment/app/Fragment$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo/P9;


# instance fields
.field public final synthetic a:Lo/T7;


# direct methods
.method public constructor <init>(Lo/T7;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Landroidx/fragment/app/Fragment$6;->a:Lo/T7;

    .line 6
    return-void
.end method


# virtual methods
.method public final b(Lo/R9;Lo/L9;)V
    .locals 0

    .line 1
    sget-object p1, Lo/L9;->ON_STOP:Lo/L9;

    .line 3
    if-ne p2, p1, :cond_0

    .line 5
    iget-object p1, p0, Landroidx/fragment/app/Fragment$6;->a:Lo/T7;

    .line 7
    iget-object p1, p1, Lo/T7;->E:Landroid/view/View;

    .line 9
    if-eqz p1, :cond_0

    .line 11
    invoke-virtual {p1}, Landroid/view/View;->cancelPendingInputEvents()V

    .line 14
    :cond_0
    return-void
.end method
