.class public final Lo/z0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/net/nsd/NsdManager$ResolveListener;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lo/q0;

.field public final synthetic c:Lo/s0;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lo/q0;Lo/s0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lo/z0;->a:Ljava/lang/String;

    .line 6
    iput-object p2, p0, Lo/z0;->b:Lo/q0;

    .line 8
    iput-object p3, p0, Lo/z0;->c:Lo/s0;

    .line 10
    return-void
.end method


# virtual methods
.method public final onResolveFailed(Landroid/net/nsd/NsdServiceInfo;I)V
    .locals 0

    .line 1
    const-string p2, "si"

    invoke-static {p1, p2}, Lo/x9;->o(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final onServiceResolved(Landroid/net/nsd/NsdServiceInfo;)V
    .locals 4

    .line 1
    const-string v0, "si"

    .line 3
    invoke-static {p1, v0}, Lo/x9;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p1}, Landroid/net/nsd/NsdServiceInfo;->getHost()Ljava/net/InetAddress;

    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_0

    .line 12
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    .line 15
    move-result-object v0

    .line 16
    if-nez v0, :cond_1

    .line 18
    :cond_0
    const-string v0, "127.0.0.1"

    .line 20
    :cond_1
    new-instance v1, Lo/x0;

    .line 22
    iget-object v2, p0, Lo/z0;->a:Ljava/lang/String;

    .line 24
    invoke-virtual {p1}, Landroid/net/nsd/NsdServiceInfo;->getPort()I

    .line 27
    move-result p1

    .line 28
    invoke-direct {v1, v2, p1, v0}, Lo/x0;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 31
    iget-object p1, p0, Lo/z0;->b:Lo/q0;

    .line 33
    iget-object p1, p1, Lo/q0;->d:Ljava/lang/Object;

    .line 35
    check-cast p1, Landroid/os/Handler;

    .line 37
    new-instance v0, Lo/y0;

    .line 39
    iget-object v2, p0, Lo/z0;->c:Lo/s0;

    .line 41
    const/4 v3, 0x0

    .line 42
    invoke-direct {v0, v2, v3, v1}, Lo/y0;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 45
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 48
    return-void
.end method
