.class public final Lo/A0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/net/nsd/NsdManager$DiscoveryListener;


# instance fields
.field public final synthetic a:Lo/q0;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lo/s0;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lo/q0;Lo/s0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p2, p0, Lo/A0;->a:Lo/q0;

    .line 6
    iput-object p1, p0, Lo/A0;->b:Ljava/lang/String;

    .line 8
    iput-object p3, p0, Lo/A0;->c:Lo/s0;

    .line 10
    return-void
.end method


# virtual methods
.method public final onDiscoveryStarted(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "serviceType"

    invoke-static {p1, v0}, Lo/x9;->o(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final onDiscoveryStopped(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "serviceType"

    invoke-static {p1, v0}, Lo/x9;->o(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final onServiceFound(Landroid/net/nsd/NsdServiceInfo;)V
    .locals 4

    .line 1
    const-string v0, "serviceInfo"

    .line 3
    invoke-static {p1, v0}, Lo/x9;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lo/A0;->a:Lo/q0;

    .line 8
    new-instance v1, Lo/z0;

    .line 10
    iget-object v2, p0, Lo/A0;->c:Lo/s0;

    .line 12
    iget-object v3, p0, Lo/A0;->b:Ljava/lang/String;

    .line 14
    invoke-direct {v1, v3, v0, v2}, Lo/z0;-><init>(Ljava/lang/String;Lo/q0;Lo/s0;)V

    .line 17
    iget-object v0, v0, Lo/q0;->c:Ljava/lang/Object;

    .line 19
    check-cast v0, Landroid/net/nsd/NsdManager;

    .line 21
    invoke-virtual {v0, p1, v1}, Landroid/net/nsd/NsdManager;->resolveService(Landroid/net/nsd/NsdServiceInfo;Landroid/net/nsd/NsdManager$ResolveListener;)V

    .line 24
    return-void
.end method

.method public final onServiceLost(Landroid/net/nsd/NsdServiceInfo;)V
    .locals 1

    .line 1
    const-string v0, "serviceInfo"

    invoke-static {p1, v0}, Lo/x9;->o(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final onStartDiscoveryFailed(Ljava/lang/String;I)V
    .locals 0

    .line 1
    const-string p2, "serviceType"

    invoke-static {p1, p2}, Lo/x9;->o(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final onStopDiscoveryFailed(Ljava/lang/String;I)V
    .locals 0

    .line 1
    const-string p2, "serviceType"

    invoke-static {p1, p2}, Lo/x9;->o(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
