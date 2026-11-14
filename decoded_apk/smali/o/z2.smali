.class public final Lo/z2;
.super Ljava/util/AbstractSet;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lo/E2;


# direct methods
.method public constructor <init>(Lo/E2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo/z2;->a:Lo/E2;

    .line 3
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 2

    .line 1
    new-instance v0, Lo/C2;

    .line 3
    iget-object v1, p0, Lo/z2;->a:Lo/E2;

    .line 5
    invoke-direct {v0, v1}, Lo/C2;-><init>(Lo/E2;)V

    .line 8
    return-object v0
.end method

.method public final size()I
    .locals 1

    .line 1
    iget-object v0, p0, Lo/z2;->a:Lo/E2;

    .line 3
    iget v0, v0, Lo/Qe;->c:I

    .line 5
    return v0
.end method
