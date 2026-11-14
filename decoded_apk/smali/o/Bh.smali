.class public abstract Lo/Bh;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/view/View;)[Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getReceiveContentMimeTypes()[Ljava/lang/String;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static b(Landroid/view/View;Lo/T4;)Lo/T4;
    .locals 1

    .line 1
    iget-object v0, p1, Lo/T4;->a:Lo/S4;

    .line 3
    invoke-interface {v0}, Lo/S4;->m()Landroid/view/ContentInfo;

    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-virtual {p0, v0}, Landroid/view/View;->performReceiveContent(Landroid/view/ContentInfo;)Landroid/view/ContentInfo;

    .line 13
    move-result-object p0

    .line 14
    if-nez p0, :cond_0

    .line 16
    const/4 p0, 0x0

    .line 17
    return-object p0

    .line 18
    :cond_0
    if-ne p0, v0, :cond_1

    .line 20
    return-object p1

    .line 21
    :cond_1
    new-instance p1, Lo/T4;

    .line 23
    new-instance v0, Lo/C;

    .line 25
    invoke-direct {v0, p0}, Lo/C;-><init>(Landroid/view/ContentInfo;)V

    .line 28
    invoke-direct {p1, v0}, Lo/T4;-><init>(Lo/S4;)V

    .line 31
    return-object p1
.end method
