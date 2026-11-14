.class public abstract Lo/l3;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    const/16 v1, 0x1e

    .line 5
    if-lt v0, v1, :cond_0

    .line 7
    invoke-static {v1}, Lo/z;->b(I)V

    .line 10
    :cond_0
    if-lt v0, v1, :cond_1

    .line 12
    const/16 v2, 0x1f

    .line 14
    invoke-static {v2}, Lo/z;->b(I)V

    .line 17
    :cond_1
    if-lt v0, v1, :cond_2

    .line 19
    const/16 v2, 0x21

    .line 21
    invoke-static {v2}, Lo/z;->b(I)V

    .line 24
    :cond_2
    if-lt v0, v1, :cond_3

    .line 26
    const v0, 0xf4240

    .line 29
    invoke-static {v0}, Lo/z;->b(I)V

    .line 32
    :cond_3
    return-void
.end method

.method public static final a()Z
    .locals 4

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    const/16 v1, 0x23

    .line 5
    if-ge v0, v1, :cond_2

    .line 7
    const/16 v1, 0x22

    .line 9
    if-lt v0, v1, :cond_1

    .line 11
    sget-object v0, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    .line 13
    const-string v1, "CODENAME"

    .line 15
    invoke-static {v0, v1}, Lo/x9;->n(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    const-string v1, "REL"

    .line 20
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_0

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 32
    move-result-object v0

    .line 33
    const-string v2, "this as java.lang.String).toUpperCase(Locale.ROOT)"

    .line 35
    invoke-static {v0, v2}, Lo/x9;->n(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    const-string v3, "VanillaIceCream"

    .line 40
    invoke-virtual {v3, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 43
    move-result-object v1

    .line 44
    invoke-static {v1, v2}, Lo/x9;->n(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    .line 50
    move-result v0

    .line 51
    if-ltz v0, :cond_1

    .line 53
    goto :goto_1

    .line 54
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 55
    goto :goto_2

    .line 56
    :cond_2
    :goto_1
    const/4 v0, 0x1

    .line 57
    :goto_2
    return v0
.end method
