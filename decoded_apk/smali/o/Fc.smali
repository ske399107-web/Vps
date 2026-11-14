.class public abstract Lo/Fc;
.super Lo/T7;
.source "SourceFile"


# instance fields
.field public final T:Ljava/util/LinkedHashSet;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lo/T7;-><init>()V

    .line 4
    new-instance v0, Ljava/util/LinkedHashSet;

    .line 6
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 9
    iput-object v0, p0, Lo/Fc;->T:Ljava/util/LinkedHashSet;

    .line 11
    return-void
.end method
