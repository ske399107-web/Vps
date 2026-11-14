.class public final Lo/n7;
.super Lo/h;
.source "SourceFile"


# instance fields
.field public final c:Lo/m7;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lo/jd;-><init>()V

    .line 4
    new-instance v0, Lo/m7;

    .line 6
    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    .line 9
    iput-object v0, p0, Lo/n7;->c:Lo/m7;

    .line 11
    return-void
.end method


# virtual methods
.method public final c()Ljava/util/Random;
    .locals 2

    .line 1
    iget-object v0, p0, Lo/n7;->c:Lo/m7;

    .line 3
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    const-string v1, "get(...)"

    .line 9
    invoke-static {v0, v1}, Lo/x9;->n(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    check-cast v0, Ljava/util/Random;

    .line 14
    return-object v0
.end method
