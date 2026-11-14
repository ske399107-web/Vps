.class public final Lo/X7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# instance fields
.field public final synthetic a:Landroidx/fragment/app/a;

.field public final synthetic b:Lo/Y7;


# direct methods
.method public constructor <init>(Lo/Y7;Landroidx/fragment/app/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lo/X7;->b:Lo/Y7;

    .line 6
    iput-object p2, p0, Lo/X7;->a:Landroidx/fragment/app/a;

    .line 8
    return-void
.end method


# virtual methods
.method public final onViewAttachedToWindow(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lo/X7;->a:Landroidx/fragment/app/a;

    .line 3
    invoke-virtual {p1}, Landroidx/fragment/app/a;->k()V

    .line 6
    iget-object p1, p1, Landroidx/fragment/app/a;->c:Lo/T7;

    .line 8
    iget-object p1, p1, Lo/T7;->E:Landroid/view/View;

    .line 10
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 13
    move-result-object p1

    .line 14
    check-cast p1, Landroid/view/ViewGroup;

    .line 16
    iget-object v0, p0, Lo/X7;->b:Lo/Y7;

    .line 18
    iget-object v0, v0, Lo/Y7;->a:Lo/i8;

    .line 20
    invoke-virtual {v0}, Lo/i8;->E()Lo/u6;

    .line 23
    move-result-object v0

    .line 24
    invoke-static {p1, v0}, Lo/K5;->f(Landroid/view/ViewGroup;Lo/u6;)Lo/K5;

    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {p1}, Lo/K5;->e()V

    .line 31
    return-void
.end method

.method public final onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    .line 1
    return-void
.end method
