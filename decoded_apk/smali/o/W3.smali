.class public final synthetic Lo/W3;
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
    iput p1, p0, Lo/W3;->a:I

    iput-object p2, p0, Lo/W3;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget p1, p0, Lo/W3;->a:I

    .line 3
    packed-switch p1, :pswitch_data_0

    .line 6
    iget-object p1, p0, Lo/W3;->b:Ljava/lang/Object;

    .line 8
    check-cast p1, Lo/Dc;

    .line 10
    iget-object v0, p1, Lo/Dc;->f:Landroid/widget/EditText;

    .line 12
    if-nez v0, :cond_0

    .line 14
    goto :goto_1

    .line 15
    :cond_0
    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionEnd()I

    .line 18
    move-result v0

    .line 19
    iget-object v1, p1, Lo/Dc;->f:Landroid/widget/EditText;

    .line 21
    if-eqz v1, :cond_1

    .line 23
    invoke-virtual {v1}, Landroid/widget/TextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    .line 26
    move-result-object v1

    .line 27
    instance-of v1, v1, Landroid/text/method/PasswordTransformationMethod;

    .line 29
    if-eqz v1, :cond_1

    .line 31
    iget-object v1, p1, Lo/Dc;->f:Landroid/widget/EditText;

    .line 33
    const/4 v2, 0x0

    .line 34
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 37
    goto :goto_0

    .line 38
    :cond_1
    iget-object v1, p1, Lo/Dc;->f:Landroid/widget/EditText;

    .line 40
    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    .line 43
    move-result-object v2

    .line 44
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 47
    :goto_0
    if-ltz v0, :cond_2

    .line 49
    iget-object v1, p1, Lo/Dc;->f:Landroid/widget/EditText;

    .line 51
    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 54
    :cond_2
    invoke-virtual {p1}, Lo/c7;->q()V

    .line 57
    :goto_1
    return-void

    .line 58
    :pswitch_0
    iget-object p1, p0, Lo/W3;->b:Ljava/lang/Object;

    .line 60
    check-cast p1, Lo/bb;

    .line 62
    invoke-virtual {p1}, Lo/bb;->H()V

    .line 65
    const/4 p1, 0x0

    .line 66
    throw p1

    .line 67
    :pswitch_1
    iget-object p1, p0, Lo/W3;->b:Ljava/lang/Object;

    .line 69
    check-cast p1, Lo/r6;

    .line 71
    invoke-virtual {p1}, Lo/r6;->u()V

    .line 74
    return-void

    .line 75
    :pswitch_2
    iget-object p1, p0, Lo/W3;->b:Ljava/lang/Object;

    .line 77
    check-cast p1, Lo/a4;

    .line 79
    iget-object v0, p1, Lo/a4;->i:Landroid/widget/EditText;

    .line 81
    if-nez v0, :cond_3

    .line 83
    goto :goto_2

    .line 84
    :cond_3
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 87
    move-result-object v0

    .line 88
    if-eqz v0, :cond_4

    .line 90
    invoke-interface {v0}, Landroid/text/Editable;->clear()V

    .line 93
    :cond_4
    invoke-virtual {p1}, Lo/c7;->q()V

    .line 96
    :goto_2
    return-void

    .line 97
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
