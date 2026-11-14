.class public abstract Lo/f4;
.super Lo/L1;
.source "SourceFile"


# direct methods
.method public static varargs i0([Ljava/lang/Object;)Ljava/util/List;
    .locals 1

    .line 1
    array-length v0, p0

    .line 2
    if-lez v0, :cond_0

    .line 4
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 7
    move-result-object p0

    .line 8
    const-string v0, "asList(...)"

    .line 10
    invoke-static {p0, v0}, Lo/x9;->n(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    sget-object p0, Lo/V6;->a:Lo/V6;

    .line 16
    :goto_0
    return-object p0
.end method
