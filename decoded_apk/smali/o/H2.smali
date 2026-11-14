.class public abstract Lo/H2;
.super Lo/L1;
.source "SourceFile"


# direct methods
.method public static i0(I[III[I)V
    .locals 1

    .line 1
    const-string v0, "<this>"

    .line 3
    invoke-static {p1, v0}, Lo/x9;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    const-string v0, "destination"

    .line 8
    invoke-static {p4, v0}, Lo/x9;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    sub-int/2addr p3, p2

    .line 12
    invoke-static {p1, p2, p4, p0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 15
    return-void
.end method

.method public static j0([B[BIII)V
    .locals 1

    .line 1
    const-string v0, "<this>"

    .line 3
    invoke-static {p0, v0}, Lo/x9;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    sub-int/2addr p4, p3

    .line 7
    invoke-static {p0, p3, p1, p2, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 10
    return-void
.end method

.method public static k0([Ljava/lang/Object;[Ljava/lang/Object;III)V
    .locals 1

    .line 1
    const-string v0, "<this>"

    .line 3
    invoke-static {p0, v0}, Lo/x9;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    const-string v0, "destination"

    .line 8
    invoke-static {p1, v0}, Lo/x9;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    sub-int/2addr p4, p3

    .line 12
    invoke-static {p0, p3, p1, p2, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 15
    return-void
.end method

.method public static synthetic l0(II[B[B)V
    .locals 1

    .line 1
    and-int/lit8 p1, p1, 0x2

    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p1, :cond_0

    .line 6
    move p0, v0

    .line 7
    :cond_0
    array-length p1, p2

    .line 8
    invoke-static {p2, p3, p0, v0, p1}, Lo/H2;->j0([B[BIII)V

    .line 11
    return-void
.end method

.method public static synthetic m0([Ljava/lang/Object;[Ljava/lang/Object;III)V
    .locals 1

    .line 1
    and-int/lit8 p4, p4, 0x4

    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p4, :cond_0

    .line 6
    move p2, v0

    .line 7
    :cond_0
    invoke-static {p0, p1, v0, p2, p3}, Lo/H2;->k0([Ljava/lang/Object;[Ljava/lang/Object;III)V

    .line 10
    return-void
.end method

.method public static n0([BII)[B
    .locals 1

    .line 1
    const-string v0, "<this>"

    .line 3
    invoke-static {p0, v0}, Lo/x9;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    array-length v0, p0

    .line 7
    invoke-static {p2, v0}, Lo/L1;->n(II)V

    .line 10
    invoke-static {p0, p1, p2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 13
    move-result-object p0

    .line 14
    const-string p1, "copyOfRange(...)"

    .line 16
    invoke-static {p0, p1}, Lo/x9;->n(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    return-object p0
.end method
