.class public final Lo/J9;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lo/M9;)Lo/L9;
    .locals 1

    .line 1
    const-string v0, "state"

    .line 3
    invoke-static {p0, v0}, Lo/x9;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 9
    move-result p0

    .line 10
    const/4 v0, 0x1

    .line 11
    if-eq p0, v0, :cond_2

    .line 13
    const/4 v0, 0x2

    .line 14
    if-eq p0, v0, :cond_1

    .line 16
    const/4 v0, 0x3

    .line 17
    if-eq p0, v0, :cond_0

    .line 19
    const/4 p0, 0x0

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    sget-object p0, Lo/L9;->ON_RESUME:Lo/L9;

    .line 23
    goto :goto_0

    .line 24
    :cond_1
    sget-object p0, Lo/L9;->ON_START:Lo/L9;

    .line 26
    goto :goto_0

    .line 27
    :cond_2
    sget-object p0, Lo/L9;->ON_CREATE:Lo/L9;

    .line 29
    :goto_0
    return-object p0
.end method
