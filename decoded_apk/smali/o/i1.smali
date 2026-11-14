.class public final Lo/i1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lo/v1;


# direct methods
.method public synthetic constructor <init>(Lo/v1;I)V
    .locals 0

    .line 1
    iput p2, p0, Lo/i1;->a:I

    iput-object p1, p0, Lo/i1;->b:Lo/v1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget v0, p0, Lo/i1;->a:I

    .line 3
    packed-switch v0, :pswitch_data_0

    .line 6
    iget-object v0, p0, Lo/i1;->b:Lo/v1;

    .line 8
    iget-object v1, v0, Lo/v1;->w:Landroid/widget/PopupWindow;

    .line 10
    iget-object v2, v0, Lo/v1;->v:Landroidx/appcompat/widget/ActionBarContextView;

    .line 12
    const/16 v3, 0x37

    .line 14
    const/4 v4, 0x0

    .line 15
    invoke-virtual {v1, v2, v3, v4, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 18
    iget-object v1, v0, Lo/v1;->y:Lo/Ph;

    .line 20
    if-eqz v1, :cond_0

    .line 22
    invoke-virtual {v1}, Lo/Ph;->b()V

    .line 25
    :cond_0
    iget-boolean v1, v0, Lo/v1;->z:Z

    .line 27
    if-eqz v1, :cond_1

    .line 29
    iget-object v1, v0, Lo/v1;->A:Landroid/view/ViewGroup;

    .line 31
    if-eqz v1, :cond_1

    .line 33
    invoke-virtual {v1}, Landroid/view/View;->isLaidOut()Z

    .line 36
    move-result v1

    .line 37
    if-eqz v1, :cond_1

    .line 39
    const/4 v1, 0x1

    .line 40
    goto :goto_0

    .line 41
    :cond_1
    move v1, v4

    .line 42
    :goto_0
    const/high16 v2, 0x3f800000    # 1.0f

    .line 44
    if-eqz v1, :cond_2

    .line 46
    iget-object v1, v0, Lo/v1;->v:Landroidx/appcompat/widget/ActionBarContextView;

    .line 48
    const/4 v3, 0x0

    .line 49
    invoke-virtual {v1, v3}, Landroid/view/View;->setAlpha(F)V

    .line 52
    iget-object v1, v0, Lo/v1;->v:Landroidx/appcompat/widget/ActionBarContextView;

    .line 54
    invoke-static {v1}, Lo/Dh;->a(Landroid/view/View;)Lo/Ph;

    .line 57
    move-result-object v1

    .line 58
    invoke-virtual {v1, v2}, Lo/Ph;->a(F)V

    .line 61
    iput-object v1, v0, Lo/v1;->y:Lo/Ph;

    .line 63
    new-instance v0, Lo/k1;

    .line 65
    const/4 v2, 0x0

    .line 66
    invoke-direct {v0, v2, p0}, Lo/k1;-><init>(ILjava/lang/Object;)V

    .line 69
    invoke-virtual {v1, v0}, Lo/Ph;->d(Lo/Rh;)V

    .line 72
    goto :goto_1

    .line 73
    :cond_2
    iget-object v1, v0, Lo/v1;->v:Landroidx/appcompat/widget/ActionBarContextView;

    .line 75
    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 78
    iget-object v0, v0, Lo/v1;->v:Landroidx/appcompat/widget/ActionBarContextView;

    .line 80
    invoke-virtual {v0, v4}, Landroidx/appcompat/widget/ActionBarContextView;->setVisibility(I)V

    .line 83
    :goto_1
    return-void

    .line 84
    :pswitch_0
    iget-object v0, p0, Lo/i1;->b:Lo/v1;

    .line 86
    iget v1, v0, Lo/v1;->Z:I

    .line 88
    and-int/lit8 v1, v1, 0x1

    .line 90
    const/4 v2, 0x0

    .line 91
    if-eqz v1, :cond_3

    .line 93
    invoke-virtual {v0, v2}, Lo/v1;->t(I)V

    .line 96
    :cond_3
    iget v1, v0, Lo/v1;->Z:I

    .line 98
    and-int/lit16 v1, v1, 0x1000

    .line 100
    if-eqz v1, :cond_4

    .line 102
    const/16 v1, 0x6c

    .line 104
    invoke-virtual {v0, v1}, Lo/v1;->t(I)V

    .line 107
    :cond_4
    iput-boolean v2, v0, Lo/v1;->Y:Z

    .line 109
    iput v2, v0, Lo/v1;->Z:I

    .line 111
    return-void

    nop

    .line 113
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
