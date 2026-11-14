.class public final synthetic Lo/uc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo/u8;


# instance fields
.field public final synthetic a:Lcom/ffrt/proxyread/PacketEngine;

.field public final synthetic b:Lo/zc;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/ffrt/proxyread/PacketEngine;Lo/zc;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/uc;->a:Lcom/ffrt/proxyread/PacketEngine;

    iput-object p2, p0, Lo/uc;->b:Lo/zc;

    iput-object p3, p0, Lo/uc;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lo/uc;->b:Lo/zc;

    iget-object v1, p0, Lo/uc;->a:Lcom/ffrt/proxyread/PacketEngine;

    iget-object v2, p0, Lo/uc;->c:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/ffrt/proxyread/PacketEngine;->c(Lcom/ffrt/proxyread/PacketEngine;Lo/zc;Ljava/lang/String;)Lo/Ug;

    move-result-object v0

    return-object v0
.end method
