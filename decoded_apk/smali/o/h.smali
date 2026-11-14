.class public abstract Lo/h;
.super Lo/jd;
.source "SourceFile"


# virtual methods
.method public final a()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lo/h;->c()Ljava/util/Random;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public abstract c()Ljava/util/Random;
.end method
