.class public final Lo/zc;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:I

.field public final c:Ljava/lang/String;

.field public final d:I

.field public final e:Ljava/net/DatagramSocket;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;ILjava/net/DatagramSocket;)V
    .locals 1

    .line 1
    const-string v0, "srcIp"

    .line 3
    invoke-static {p1, v0}, Lo/x9;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    const-string v0, "dstIp"

    .line 8
    invoke-static {p3, v0}, Lo/x9;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lo/zc;->a:Ljava/lang/String;

    .line 16
    iput p2, p0, Lo/zc;->b:I

    .line 18
    iput-object p3, p0, Lo/zc;->c:Ljava/lang/String;

    .line 20
    iput p4, p0, Lo/zc;->d:I

    .line 22
    iput-object p5, p0, Lo/zc;->e:Ljava/net/DatagramSocket;

    .line 24
    return-void
.end method
