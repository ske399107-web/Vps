.class public final Lo/rh;
.super Lo/Ef;
.source "SourceFile"


# instance fields
.field public final synthetic e:I


# direct methods
.method public constructor <init>(ILjava/lang/Class;III)V
    .locals 0

    .line 1
    iput p5, p0, Lo/rh;->e:I

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput p1, p0, Lo/Ef;->a:I

    .line 8
    iput-object p2, p0, Lo/Ef;->d:Ljava/lang/Object;

    .line 10
    iput p3, p0, Lo/Ef;->c:I

    .line 12
    iput p4, p0, Lo/Ef;->b:I

    .line 14
    return-void
.end method


# virtual methods
.method public final b(Landroid/view/View;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, Lo/rh;->e:I

    .line 3
    packed-switch v0, :pswitch_data_0

    .line 6
    invoke-static {p1}, Lo/yh;->b(Landroid/view/View;)Z

    .line 9
    move-result p1

    .line 10
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 13
    move-result-object p1

    .line 14
    return-object p1

    .line 15
    :pswitch_0
    invoke-static {p1}, Lo/Ah;->a(Landroid/view/View;)Ljava/lang/CharSequence;

    .line 18
    move-result-object p1

    .line 19
    return-object p1

    .line 20
    :pswitch_1
    invoke-static {p1}, Lo/yh;->a(Landroid/view/View;)Ljava/lang/CharSequence;

    .line 23
    move-result-object p1

    .line 24
    return-object p1

    .line 25
    :pswitch_2
    invoke-static {p1}, Lo/yh;->c(Landroid/view/View;)Z

    .line 28
    move-result p1

    .line 29
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 32
    move-result-object p1

    .line 33
    return-object p1

    nop

    .line 35
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final c(Landroid/view/View;Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget v0, p0, Lo/rh;->e:I

    .line 3
    packed-switch v0, :pswitch_data_0

    .line 6
    check-cast p2, Ljava/lang/Boolean;

    .line 8
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 11
    move-result p2

    .line 12
    invoke-static {p1, p2}, Lo/yh;->d(Landroid/view/View;Z)V

    .line 15
    return-void

    .line 16
    :pswitch_0
    check-cast p2, Ljava/lang/CharSequence;

    .line 18
    invoke-static {p1, p2}, Lo/Ah;->b(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 21
    return-void

    .line 22
    :pswitch_1
    check-cast p2, Ljava/lang/CharSequence;

    .line 24
    invoke-static {p1, p2}, Lo/yh;->e(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 27
    return-void

    .line 28
    :pswitch_2
    check-cast p2, Ljava/lang/Boolean;

    .line 30
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 33
    move-result p2

    .line 34
    invoke-static {p1, p2}, Lo/yh;->f(Landroid/view/View;Z)V

    .line 37
    return-void

    nop

    .line 39
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final e(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2

    .line 1
    iget v0, p0, Lo/rh;->e:I

    .line 3
    packed-switch v0, :pswitch_data_0

    .line 6
    check-cast p1, Ljava/lang/Boolean;

    .line 8
    check-cast p2, Ljava/lang/Boolean;

    .line 10
    const/4 v0, 0x1

    .line 11
    const/4 v1, 0x0

    .line 12
    if-eqz p1, :cond_0

    .line 14
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 17
    move-result p1

    .line 18
    if-eqz p1, :cond_0

    .line 20
    move p1, v0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    move p1, v1

    .line 23
    :goto_0
    if-eqz p2, :cond_1

    .line 25
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 28
    move-result p2

    .line 29
    if-eqz p2, :cond_1

    .line 31
    move p2, v0

    .line 32
    goto :goto_1

    .line 33
    :cond_1
    move p2, v1

    .line 34
    :goto_1
    if-ne p1, p2, :cond_2

    .line 36
    move v1, v0

    .line 37
    :cond_2
    xor-int/lit8 p1, v1, 0x1

    .line 39
    return p1

    .line 40
    :pswitch_0
    check-cast p1, Ljava/lang/CharSequence;

    .line 42
    check-cast p2, Ljava/lang/CharSequence;

    .line 44
    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 47
    move-result p1

    .line 48
    xor-int/lit8 p1, p1, 0x1

    .line 50
    return p1

    .line 51
    :pswitch_1
    check-cast p1, Ljava/lang/CharSequence;

    .line 53
    check-cast p2, Ljava/lang/CharSequence;

    .line 55
    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 58
    move-result p1

    .line 59
    xor-int/lit8 p1, p1, 0x1

    .line 61
    return p1

    .line 62
    :pswitch_2
    check-cast p1, Ljava/lang/Boolean;

    .line 64
    check-cast p2, Ljava/lang/Boolean;

    .line 66
    const/4 v0, 0x1

    .line 67
    const/4 v1, 0x0

    .line 68
    if-eqz p1, :cond_3

    .line 70
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 73
    move-result p1

    .line 74
    if-eqz p1, :cond_3

    .line 76
    move p1, v0

    .line 77
    goto :goto_2

    .line 78
    :cond_3
    move p1, v1

    .line 79
    :goto_2
    if-eqz p2, :cond_4

    .line 81
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 84
    move-result p2

    .line 85
    if-eqz p2, :cond_4

    .line 87
    move p2, v0

    .line 88
    goto :goto_3

    .line 89
    :cond_4
    move p2, v1

    .line 90
    :goto_3
    if-ne p1, p2, :cond_5

    .line 92
    move v1, v0

    .line 93
    :cond_5
    xor-int/lit8 p1, v1, 0x1

    .line 95
    return p1

    nop

    .line 97
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
