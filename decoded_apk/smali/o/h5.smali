.class public final Lo/h5;
.super Lo/L1;
.source "SourceFile"


# virtual methods
.method public final x(Lo/Ke;FF)V
    .locals 6

    .line 1
    mul-float v0, p3, p2

    .line 3
    const/4 v1, 0x0

    .line 4
    const/high16 v2, 0x43340000    # 180.0f

    .line 6
    const/high16 v3, 0x42b40000    # 90.0f

    .line 8
    invoke-virtual {p1, v1, v0, v2, v3}, Lo/Ke;->d(FFFF)V

    .line 11
    float-to-double v2, v3

    .line 12
    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    .line 15
    move-result-wide v2

    .line 16
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    .line 19
    move-result-wide v2

    .line 20
    float-to-double v4, p3

    .line 21
    mul-double/2addr v2, v4

    .line 22
    float-to-double p2, p2

    .line 23
    mul-double/2addr v2, p2

    .line 24
    double-to-float v0, v2

    .line 25
    float-to-double v1, v1

    .line 26
    invoke-static {v1, v2}, Ljava/lang/Math;->toRadians(D)D

    .line 29
    move-result-wide v1

    .line 30
    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    .line 33
    move-result-wide v1

    .line 34
    mul-double/2addr v1, v4

    .line 35
    mul-double/2addr v1, p2

    .line 36
    double-to-float p2, v1

    .line 37
    invoke-virtual {p1, v0, p2}, Lo/Ke;->c(FF)V

    .line 40
    return-void
.end method
