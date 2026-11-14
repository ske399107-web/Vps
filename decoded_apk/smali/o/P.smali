.class public final Lo/P;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lo/P;->a:I

    iput-object p2, p0, Lo/P;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget p1, p0, Lo/P;->a:I

    .line 3
    packed-switch p1, :pswitch_data_0

    .line 6
    iget-object p1, p0, Lo/P;->b:Ljava/lang/Object;

    .line 8
    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    .line 10
    iget-object p1, p1, Landroidx/appcompat/widget/Toolbar;->L:Lo/dg;

    .line 12
    if-nez p1, :cond_0

    .line 14
    const/4 p1, 0x0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget-object p1, p1, Lo/dg;->b:Lo/nb;

    .line 18
    :goto_0
    if-eqz p1, :cond_1

    .line 20
    invoke-virtual {p1}, Lo/nb;->collapseActionView()Z

    .line 23
    :cond_1
    return-void

    .line 24
    :pswitch_0
    iget-object p1, p0, Lo/P;->b:Ljava/lang/Object;

    .line 26
    check-cast p1, Lo/Va;

    .line 28
    iget v0, p1, Lo/Va;->X:I

    .line 30
    const/4 v1, 0x2

    .line 31
    const/4 v2, 0x1

    .line 32
    if-ne v0, v1, :cond_2

    .line 34
    invoke-virtual {p1, v2}, Lo/Va;->H(I)V

    .line 37
    goto :goto_1

    .line 38
    :cond_2
    if-ne v0, v2, :cond_3

    .line 40
    invoke-virtual {p1, v1}, Lo/Va;->H(I)V

    .line 43
    :cond_3
    :goto_1
    return-void

    .line 44
    :pswitch_1
    iget-object p1, p0, Lo/P;->b:Ljava/lang/Object;

    .line 46
    check-cast p1, Lo/H0;

    .line 48
    iget-object v0, p1, Lo/H0;->f:Landroid/widget/Button;

    .line 50
    iget-object v0, p1, Lo/H0;->v:Lo/F0;

    .line 52
    const/4 v1, 0x1

    .line 53
    iget-object p1, p1, Lo/H0;->b:Lo/J0;

    .line 55
    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 58
    move-result-object p1

    .line 59
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 62
    return-void

    .line 63
    :pswitch_2
    iget-object p1, p0, Lo/P;->b:Ljava/lang/Object;

    .line 65
    check-cast p1, Lo/h0;

    .line 67
    invoke-virtual {p1}, Lo/h0;->a()V

    .line 70
    return-void

    .line 71
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
