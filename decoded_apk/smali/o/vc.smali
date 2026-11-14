.class public final synthetic Lo/vc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo/u8;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/ffrt/proxyread/PacketEngine;

.field public final synthetic c:Lo/yc;


# direct methods
.method public synthetic constructor <init>(Lcom/ffrt/proxyread/PacketEngine;Lo/yc;I)V
    .locals 0

    .line 1
    iput p3, p0, Lo/vc;->a:I

    iput-object p1, p0, Lo/vc;->b:Lcom/ffrt/proxyread/PacketEngine;

    iput-object p2, p0, Lo/vc;->c:Lo/yc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lo/vc;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lo/vc;->b:Lcom/ffrt/proxyread/PacketEngine;

    iget-object v1, p0, Lo/vc;->c:Lo/yc;

    invoke-static {v0, v1}, Lcom/ffrt/proxyread/PacketEngine;->a(Lcom/ffrt/proxyread/PacketEngine;Lo/yc;)Lo/Ug;

    move-result-object v0

    return-object v0

    :pswitch_0
    iget-object v0, p0, Lo/vc;->b:Lcom/ffrt/proxyread/PacketEngine;

    iget-object v1, p0, Lo/vc;->c:Lo/yc;

    invoke-static {v0, v1}, Lcom/ffrt/proxyread/PacketEngine;->e(Lcom/ffrt/proxyread/PacketEngine;Lo/yc;)Lo/Ug;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
