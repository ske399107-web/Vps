.class public final Lo/fe;
.super Lo/L1;
.source "SourceFile"


# virtual methods
.method public final x(Lo/Ke;FF)V
    .locals 5

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
    const/high16 v0, 0x40000000    # 2.0f

    .line 13
    mul-float/2addr p3, v0

    .line 14
    mul-float/2addr p3, p2

    .line 15
    new-instance p2, Lo/Ge;

    .line 17
    invoke-direct {p2, v1, v1, p3, p3}, Lo/Ge;-><init>(FFFF)V

    .line 20
    iput v2, p2, Lo/Ge;->f:F

    .line 22
    iput v3, p2, Lo/Ge;->g:F

    .line 24
    iget-object v3, p1, Lo/Ke;->g:Ljava/util/ArrayList;

    .line 26
    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 29
    new-instance v3, Lo/Ee;

    .line 31
    invoke-direct {v3, p2}, Lo/Ee;-><init>(Lo/Ge;)V

    .line 34
    invoke-virtual {p1, v2}, Lo/Ke;->a(F)V

    .line 37
    iget-object p2, p1, Lo/Ke;->h:Ljava/util/ArrayList;

    .line 39
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    const/high16 p2, 0x43870000    # 270.0f

    .line 44
    iput p2, p1, Lo/Ke;->e:F

    .line 46
    add-float v2, v1, p3

    .line 48
    const/high16 v3, 0x3f000000    # 0.5f

    .line 50
    mul-float/2addr v2, v3

    .line 51
    sub-float/2addr p3, v1

    .line 52
    div-float/2addr p3, v0

    .line 53
    float-to-double v0, p2

    .line 54
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    .line 57
    move-result-wide v3

    .line 58
    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    .line 61
    move-result-wide v3

    .line 62
    double-to-float p2, v3

    .line 63
    mul-float/2addr p2, p3

    .line 64
    add-float/2addr p2, v2

    .line 65
    iput p2, p1, Lo/Ke;->c:F

    .line 67
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    .line 70
    move-result-wide v0

    .line 71
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    .line 74
    move-result-wide v0

    .line 75
    double-to-float p2, v0

    .line 76
    mul-float/2addr p3, p2

    .line 77
    add-float/2addr p3, v2

    .line 78
    iput p3, p1, Lo/Ke;->d:F

    .line 80
    return-void
.end method
