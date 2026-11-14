.class public final Lo/m8;
.super Ljava/lang/RuntimeException;
.source "SourceFile"


# instance fields
.field public final a:Lo/T7;


# direct methods
.method public constructor <init>(Lo/T7;Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "fragment"

    .line 3
    invoke-static {p1, v0}, Lo/x9;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 9
    iput-object p1, p0, Lo/m8;->a:Lo/T7;

    .line 11
    return-void
.end method
