.class public final synthetic Lo/Ea;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/ffrt/proxyread/MainActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/ffrt/proxyread/MainActivity;I)V
    .locals 0

    .line 1
    iput p2, p0, Lo/Ea;->a:I

    iput-object p1, p0, Lo/Ea;->b:Lcom/ffrt/proxyread/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget p1, p0, Lo/Ea;->a:I

    .line 3
    packed-switch p1, :pswitch_data_0

    .line 6
    iget-object p1, p0, Lo/Ea;->b:Lcom/ffrt/proxyread/MainActivity;

    .line 8
    iget-boolean v0, p1, Lcom/ffrt/proxyread/MainActivity;->G:Z

    .line 10
    if-eqz v0, :cond_0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    sget-object v0, Lcom/ffrt/proxyread/WirelessPair;->INSTANCE:Lcom/ffrt/proxyread/WirelessPair;

    .line 15
    iget-object p1, p1, Lcom/ffrt/proxyread/MainActivity;->F:Landroid/widget/EditText;

    .line 17
    if-eqz p1, :cond_1

    .line 19
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 22
    move-result-object p1

    .line 23
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {v0, p1}, Lcom/ffrt/proxyread/WirelessPair;->start(Ljava/lang/String;)V

    .line 30
    :goto_0
    return-void

    .line 31
    :cond_1
    const-string p1, "pairCode"

    .line 33
    invoke-static {p1}, Lo/x9;->e0(Ljava/lang/String;)V

    .line 36
    const/4 p1, 0x0

    .line 37
    throw p1

    .line 38
    :pswitch_0
    iget-object p1, p0, Lo/Ea;->b:Lcom/ffrt/proxyread/MainActivity;

    .line 40
    iget-boolean v0, p1, Lcom/ffrt/proxyread/MainActivity;->G:Z

    .line 42
    if-eqz v0, :cond_2

    .line 44
    goto :goto_1

    .line 45
    :cond_2
    sget-object v0, Lcom/ffrt/proxyread/VpnCaptureService;->Companion:Lo/ji;

    .line 47
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    invoke-static {}, Lcom/ffrt/proxyread/VpnCaptureService;->access$getRunning$cp()Z

    .line 53
    move-result v0

    .line 54
    if-eqz v0, :cond_3

    .line 56
    invoke-virtual {p1}, Lcom/ffrt/proxyread/MainActivity;->w()V

    .line 59
    goto :goto_1

    .line 60
    :cond_3
    invoke-virtual {p1}, Lcom/ffrt/proxyread/MainActivity;->s()V

    .line 63
    :goto_1
    return-void

    nop

    .line 65
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
