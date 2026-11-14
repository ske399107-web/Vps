.class public abstract Lo/k5;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/Set;

.field public static final b:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "shared-k2a-v1"

    .line 3
    const-string v1, "legacy-v1"

    .line 5
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Lo/Ha;->u0([Ljava/lang/Object;)Ljava/util/Set;

    .line 12
    move-result-object v0

    .line 13
    sput-object v0, Lo/k5;->a:Ljava/util/Set;

    .line 15
    const-string v0, "panel"

    .line 17
    const-string v1, "radar"

    .line 19
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 22
    move-result-object v0

    .line 23
    invoke-static {v0}, Lo/Ha;->u0([Ljava/lang/Object;)Ljava/util/Set;

    .line 26
    move-result-object v0

    .line 27
    sput-object v0, Lo/k5;->b:Ljava/util/Set;

    .line 29
    return-void
.end method
