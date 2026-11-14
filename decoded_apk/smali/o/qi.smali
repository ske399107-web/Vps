.class public final Lo/qi;
.super Lo/Ng;
.source "SourceFile"


# instance fields
.field public final synthetic e:I

.field public final synthetic f:Lo/si;


# direct methods
.method public synthetic constructor <init>(Lo/si;I)V
    .locals 0

    .line 1
    iput p2, p0, Lo/qi;->e:I

    iput-object p1, p0, Lo/qi;->f:Lo/si;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Lo/qi;->f:Lo/si;

    .line 4
    iget v2, p0, Lo/qi;->e:I

    .line 6
    packed-switch v2, :pswitch_data_0

    .line 9
    iput-object v0, v1, Lo/si;->m0:Lo/Qh;

    .line 11
    iget-object v0, v1, Lo/si;->X:Landroidx/appcompat/widget/ActionBarContainer;

    .line 13
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 16
    return-void

    .line 17
    :pswitch_0
    iget-boolean v2, v1, Lo/si;->i0:Z

    .line 19
    if-eqz v2, :cond_0

    .line 21
    iget-object v2, v1, Lo/si;->a0:Landroid/view/View;

    .line 23
    if-eqz v2, :cond_0

    .line 25
    const/4 v3, 0x0

    .line 26
    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 29
    iget-object v2, v1, Lo/si;->X:Landroidx/appcompat/widget/ActionBarContainer;

    .line 31
    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 34
    :cond_0
    iget-object v2, v1, Lo/si;->X:Landroidx/appcompat/widget/ActionBarContainer;

    .line 36
    const/16 v3, 0x8

    .line 38
    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/ActionBarContainer;->setVisibility(I)V

    .line 41
    iget-object v2, v1, Lo/si;->X:Landroidx/appcompat/widget/ActionBarContainer;

    .line 43
    const/4 v3, 0x0

    .line 44
    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/ActionBarContainer;->setTransitioning(Z)V

    .line 47
    iput-object v0, v1, Lo/si;->m0:Lo/Qh;

    .line 49
    iget-object v2, v1, Lo/si;->e0:Lo/H1;

    .line 51
    if-eqz v2, :cond_1

    .line 53
    iget-object v3, v1, Lo/si;->d0:Lo/ri;

    .line 55
    invoke-virtual {v2, v3}, Lo/H1;->F(Lo/h0;)V

    .line 58
    iput-object v0, v1, Lo/si;->d0:Lo/ri;

    .line 60
    iput-object v0, v1, Lo/si;->e0:Lo/H1;

    .line 62
    :cond_1
    iget-object v0, v1, Lo/si;->W:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    .line 64
    if-eqz v0, :cond_2

    .line 66
    sget-object v1, Lo/Dh;->a:Ljava/util/WeakHashMap;

    .line 68
    invoke-static {v0}, Lo/th;->c(Landroid/view/View;)V

    .line 71
    :cond_2
    return-void

    nop

    .line 73
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
