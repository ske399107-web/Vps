.class public final Lo/xc;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Z

.field public final b:[B

.field public final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Z[BLjava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "data"

    .line 3
    invoke-static {p2, v0}, Lo/x9;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    const-string v0, "flowId"

    .line 8
    invoke-static {p3, v0}, Lo/x9;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-boolean p1, p0, Lo/xc;->a:Z

    .line 16
    iput-object p2, p0, Lo/xc;->b:[B

    .line 18
    iput-object p3, p0, Lo/xc;->c:Ljava/lang/String;

    .line 20
    return-void
.end method
