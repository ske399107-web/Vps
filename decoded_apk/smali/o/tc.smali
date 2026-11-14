.class public final synthetic Lo/tc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo/u8;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/ffrt/proxyread/PacketEngine;


# direct methods
.method public synthetic constructor <init>(Lcom/ffrt/proxyread/PacketEngine;I)V
    .locals 0

    .line 1
    iput p2, p0, Lo/tc;->a:I

    iput-object p1, p0, Lo/tc;->b:Lcom/ffrt/proxyread/PacketEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, Lo/tc;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lo/tc;->b:Lcom/ffrt/proxyread/PacketEngine;

    invoke-static {v0}, Lcom/ffrt/proxyread/PacketEngine;->d(Lcom/ffrt/proxyread/PacketEngine;)Lo/Ug;

    move-result-object v0

    return-object v0

    :pswitch_0
    iget-object v0, p0, Lo/tc;->b:Lcom/ffrt/proxyread/PacketEngine;

    invoke-static {v0}, Lcom/ffrt/proxyread/PacketEngine;->f(Lcom/ffrt/proxyread/PacketEngine;)Lo/Ug;

    move-result-object v0

    return-object v0

    :pswitch_1
    iget-object v0, p0, Lo/tc;->b:Lcom/ffrt/proxyread/PacketEngine;

    invoke-static {v0}, Lcom/ffrt/proxyread/PacketEngine;->b(Lcom/ffrt/proxyread/PacketEngine;)Lo/Ug;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
