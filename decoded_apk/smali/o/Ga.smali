.class public final synthetic Lo/Ga;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/ffrt/proxyread/MainActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/ffrt/proxyread/MainActivity;I)V
    .locals 0

    .line 1
    iput p2, p0, Lo/Ga;->a:I

    iput-object p1, p0, Lo/Ga;->b:Lcom/ffrt/proxyread/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lo/Ga;->b:Lcom/ffrt/proxyread/MainActivity;

    .line 3
    iget v1, p0, Lo/Ga;->a:I

    .line 5
    packed-switch v1, :pswitch_data_0

    .line 8
    sget v1, Lcom/ffrt/proxyread/MainActivity;->I:I

    .line 10
    invoke-virtual {v0}, Lcom/ffrt/proxyread/MainActivity;->t()V

    .line 13
    return-void

    .line 14
    :pswitch_0
    sget v1, Lcom/ffrt/proxyread/MainActivity;->I:I

    .line 16
    sget-object v1, Lcom/ffrt/proxyread/VpnCaptureService;->Companion:Lo/ji;

    .line 18
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    invoke-static {}, Lcom/ffrt/proxyread/VpnCaptureService;->access$getRunning$cp()Z

    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_0

    .line 27
    sget-object v1, Lo/g9;->a:Landroid/os/Handler;

    .line 29
    invoke-static {v0}, Lo/g9;->c(Landroid/content/Context;)V

    .line 32
    :cond_0
    return-void

    .line 33
    :pswitch_1
    sget v1, Lcom/ffrt/proxyread/MainActivity;->I:I

    .line 35
    invoke-virtual {v0}, Lcom/ffrt/proxyread/MainActivity;->t()V

    .line 38
    return-void

    .line 39
    :pswitch_2
    sget v1, Lcom/ffrt/proxyread/MainActivity;->I:I

    .line 41
    invoke-virtual {v0}, Lcom/ffrt/proxyread/MainActivity;->s()V

    .line 44
    return-void

    .line 45
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
