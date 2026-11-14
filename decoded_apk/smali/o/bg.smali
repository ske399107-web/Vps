.class public final Lo/bg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo/g0;
.implements Lo/ib;


# instance fields
.field public final synthetic a:Landroidx/appcompat/widget/Toolbar;


# direct methods
.method public synthetic constructor <init>(Landroidx/appcompat/widget/Toolbar;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo/bg;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public k(Lo/kb;Landroid/view/MenuItem;)Z
    .locals 0

    .line 1
    iget-object p1, p0, Lo/bg;->a:Landroidx/appcompat/widget/Toolbar;

    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    const/4 p1, 0x0

    .line 7
    return p1
.end method

.method public v(Lo/kb;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lo/bg;->a:Landroidx/appcompat/widget/Toolbar;

    .line 3
    iget-object v0, p1, Landroidx/appcompat/widget/Toolbar;->a:Landroidx/appcompat/widget/ActionMenuView;

    .line 5
    iget-object v0, v0, Landroidx/appcompat/widget/ActionMenuView;->t:Lo/d0;

    .line 7
    if-eqz v0, :cond_0

    .line 9
    invoke-virtual {v0}, Lo/d0;->j()Z

    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 15
    goto :goto_1

    .line 16
    :cond_0
    iget-object p1, p1, Landroidx/appcompat/widget/Toolbar;->G:Lo/s2;

    .line 18
    iget-object p1, p1, Lo/s2;->d:Ljava/lang/Object;

    .line 20
    check-cast p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 22
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 25
    move-result-object p1

    .line 26
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_1

    .line 32
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 35
    move-result-object v0

    .line 36
    check-cast v0, Lo/c8;

    .line 38
    iget-object v0, v0, Lo/c8;->a:Lo/i8;

    .line 40
    invoke-virtual {v0}, Lo/i8;->t()Z

    .line 43
    goto :goto_0

    .line 44
    :cond_1
    :goto_1
    return-void
.end method
