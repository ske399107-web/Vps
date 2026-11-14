.class public final synthetic Lo/ue;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo/J8;


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    check-cast p2, Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/ffrt/proxyread/SchedHint;->a(ZLjava/lang/String;)Lo/Ug;

    move-result-object p1

    return-object p1
.end method
