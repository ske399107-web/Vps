.class public final synthetic Lo/h9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo/F8;


# instance fields
.field public final synthetic a:F

.field public final synthetic b:F


# direct methods
.method public synthetic constructor <init>(FF)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lo/h9;->a:F

    iput p2, p0, Lo/h9;->b:F

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    check-cast p1, Ljava/util/Map$Entry;

    .line 3
    const-string v0, "e"

    .line 5
    invoke-static {p1, v0}, Lo/x9;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lo/d7;

    .line 14
    iget v0, v0, Lo/d7;->b:F

    .line 16
    iget v1, p0, Lo/h9;->a:F

    .line 18
    sub-float/2addr v0, v1

    .line 19
    float-to-double v0, v0

    .line 20
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 23
    move-result-object p1

    .line 24
    check-cast p1, Lo/d7;

    .line 26
    iget p1, p1, Lo/d7;->d:F

    .line 28
    iget v2, p0, Lo/h9;->b:F

    .line 30
    sub-float/2addr p1, v2

    .line 31
    float-to-double v2, p1

    .line 32
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->hypot(DD)D

    .line 35
    move-result-wide v0

    .line 36
    const-wide v2, 0x3fdccccccccccccdL    # 0.45

    .line 41
    cmpg-double p1, v0, v2

    .line 43
    if-gez p1, :cond_0

    .line 45
    const/4 p1, 0x1

    .line 46
    goto :goto_0

    .line 47
    :cond_0
    const/4 p1, 0x0

    .line 48
    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 51
    move-result-object p1

    .line 52
    return-object p1
.end method
