.class public abstract Lo/i9;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static volatile a:J

.field public static final b:Ljava/util/concurrent/ConcurrentHashMap;

.field public static volatile c:Lo/d7;

.field public static volatile d:F

.field public static volatile e:F

.field public static volatile f:F

.field public static volatile g:F

.field public static volatile h:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 3
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 6
    sput-object v0, Lo/i9;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 8
    const/high16 v0, 0x7fc00000    # Float.NaN

    .line 10
    sput v0, Lo/i9;->d:F

    .line 12
    sput v0, Lo/i9;->e:F

    .line 14
    sput v0, Lo/i9;->f:F

    .line 16
    sput v0, Lo/i9;->g:F

    .line 18
    sput v0, Lo/i9;->h:F

    .line 20
    return-void
.end method

.method public static a()V
    .locals 2

    .line 1
    sget-object v0, Lo/i9;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 6
    const/4 v0, 0x0

    .line 7
    sput-object v0, Lo/i9;->c:Lo/d7;

    .line 9
    const/high16 v0, 0x7fc00000    # Float.NaN

    .line 11
    sput v0, Lo/i9;->d:F

    .line 13
    sput v0, Lo/i9;->e:F

    .line 15
    sput v0, Lo/i9;->f:F

    .line 17
    sput v0, Lo/i9;->g:F

    .line 19
    sput v0, Lo/i9;->h:F

    .line 21
    const-wide/16 v0, 0x0

    .line 23
    sput-wide v0, Lo/i9;->a:J

    .line 25
    return-void
.end method

.method public static b(Lo/d7;J)Lo/d7;
    .locals 6

    .line 1
    iget-wide v0, p0, Lo/d7;->h:J

    .line 3
    sub-long/2addr p1, v0

    .line 4
    const-wide/16 v0, 0x0

    .line 6
    cmp-long v2, p1, v0

    .line 8
    if-gez v2, :cond_0

    .line 10
    move-wide p1, v0

    .line 11
    :cond_0
    iget v0, p0, Lo/d7;->e:F

    .line 13
    float-to-double v1, v0

    .line 14
    iget v3, p0, Lo/d7;->g:F

    .line 16
    float-to-double v4, v3

    .line 17
    invoke-static {v1, v2, v4, v5}, Ljava/lang/Math;->hypot(DD)D

    .line 20
    move-result-wide v1

    .line 21
    double-to-float v1, v1

    .line 22
    const v2, 0x400ccccd    # 2.2f

    .line 25
    cmpl-float v1, v1, v2

    .line 27
    if-ltz v1, :cond_1

    .line 29
    const-wide/16 v1, 0x64

    .line 31
    goto :goto_0

    .line 32
    :cond_1
    const-wide/16 v1, 0x37

    .line 34
    :goto_0
    cmp-long v4, p1, v1

    .line 36
    if-lez v4, :cond_2

    .line 38
    move-wide p1, v1

    .line 39
    :cond_2
    long-to-float p1, p1

    .line 40
    const/high16 p2, 0x447a0000    # 1000.0f

    .line 42
    div-float/2addr p1, p2

    .line 43
    const/4 p2, 0x0

    .line 44
    cmpg-float p2, p1, p2

    .line 46
    if-gtz p2, :cond_3

    .line 48
    return-object p0

    .line 49
    :cond_3
    mul-float/2addr v0, p1

    .line 50
    iget p2, p0, Lo/d7;->b:F

    .line 52
    add-float/2addr v0, p2

    .line 53
    iget p2, p0, Lo/d7;->f:F

    .line 55
    mul-float/2addr p2, p1

    .line 56
    iget v1, p0, Lo/d7;->c:F

    .line 58
    add-float/2addr p2, v1

    .line 59
    mul-float/2addr v3, p1

    .line 60
    iget p1, p0, Lo/d7;->d:F

    .line 62
    add-float/2addr v3, p1

    .line 63
    invoke-static {p0, v0, p2, v3}, Lo/d7;->a(Lo/d7;FFF)Lo/d7;

    .line 66
    move-result-object p0

    .line 67
    return-object p0
.end method

.method public static c(Lo/d7;J)Lo/d7;
    .locals 3

    .line 1
    iget-wide v0, p0, Lo/d7;->h:J

    .line 3
    sub-long/2addr p1, v0

    .line 4
    const-wide/16 v0, 0x20

    .line 6
    add-long/2addr p1, v0

    .line 7
    const-wide/16 v0, 0x0

    .line 9
    cmp-long v2, p1, v0

    .line 11
    if-gez v2, :cond_0

    .line 13
    :goto_0
    move-wide p1, v0

    .line 14
    goto :goto_1

    .line 15
    :cond_0
    const-wide/16 v0, 0x118

    .line 17
    cmp-long v2, p1, v0

    .line 19
    if-lez v2, :cond_1

    .line 21
    goto :goto_0

    .line 22
    :cond_1
    :goto_1
    long-to-float p1, p1

    .line 23
    const/high16 p2, 0x447a0000    # 1000.0f

    .line 25
    div-float/2addr p1, p2

    .line 26
    const/4 p2, 0x0

    .line 27
    cmpg-float p2, p1, p2

    .line 29
    if-gtz p2, :cond_2

    .line 31
    return-object p0

    .line 32
    :cond_2
    iget p2, p0, Lo/d7;->e:F

    .line 34
    mul-float/2addr p2, p1

    .line 35
    iget v0, p0, Lo/d7;->b:F

    .line 37
    add-float/2addr p2, v0

    .line 38
    iget v0, p0, Lo/d7;->f:F

    .line 40
    mul-float/2addr v0, p1

    .line 41
    iget v1, p0, Lo/d7;->c:F

    .line 43
    add-float/2addr v0, v1

    .line 44
    iget v1, p0, Lo/d7;->g:F

    .line 46
    mul-float/2addr v1, p1

    .line 47
    iget p1, p0, Lo/d7;->d:F

    .line 49
    add-float/2addr v1, p1

    .line 50
    invoke-static {p0, p2, v0, v1}, Lo/d7;->a(Lo/d7;FFF)Lo/d7;

    .line 53
    move-result-object p0

    .line 54
    return-object p0
.end method

.method public static d(Lo/F8;)V
    .locals 3

    .line 1
    sget-object v0, Lo/i9;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    .line 6
    move-result-object v0

    .line 7
    const-string v1, "<get-keys>(...)"

    .line 9
    invoke-static {v0, v1}, Lo/x9;->n(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 15
    move-result-object v0

    .line 16
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_1

    .line 22
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Ljava/lang/Integer;

    .line 28
    const-string v2, "it"

    .line 30
    invoke-static {v1, v2}, Lo/x9;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-interface {p0, v1}, Lo/F8;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    move-result-object v1

    .line 37
    check-cast v1, Ljava/lang/Boolean;

    .line 39
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 42
    move-result v1

    .line 43
    const/4 v2, 0x1

    .line 44
    xor-int/2addr v1, v2

    .line 45
    if-ne v1, v2, :cond_0

    .line 47
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 50
    goto :goto_0

    .line 51
    :cond_1
    return-void
.end method

.method public static e(FFFFFFFFFJF)[F
    .locals 13

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x3

    const-wide/16 v4, 0x0

    cmp-long v4, p9, v4

    if-lez v4, :cond_6

    const/high16 v4, 0x40c00000    # 6.0f

    cmpl-float v4, p11, v4

    if-ltz v4, :cond_0

    goto :goto_2

    :cond_0
    const-wide/16 v4, 0x8

    cmp-long v6, p9, v4

    if-gez v6, :cond_1

    goto :goto_0

    :cond_1
    move-wide/from16 v4, p9

    :goto_0
    long-to-float v4, v4

    const/high16 v5, 0x447a0000    # 1000.0f

    div-float/2addr v4, v5

    const v5, 0x3f19999a    # 0.6f

    cmpl-float v5, v4, v5

    const/4 v6, 0x0

    if-lez v5, :cond_2

    .line 1
    new-array v0, v3, [F

    fill-array-data v0, :array_0

    return-object v0

    :cond_2
    sub-float v5, p6, p0

    div-float/2addr v5, v4

    sub-float v7, p7, p1

    div-float/2addr v7, v4

    sub-float v8, p8, p2

    div-float/2addr v8, v4

    float-to-double v9, v5

    float-to-double v11, v8

    .line 2
    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v9

    const-wide/high16 v11, 0x402c000000000000L    # 14.0

    cmpl-double v4, v9, v11

    if-lez v4, :cond_3

    .line 3
    new-array v0, v3, [F

    fill-array-data v0, :array_1

    return-object v0

    :cond_3
    const-wide/16 v9, 0x50

    cmp-long v4, p9, v9

    if-gez v4, :cond_5

    cmpg-float v4, p3, v6

    if-nez v4, :cond_4

    cmpg-float v4, p5, v6

    if-nez v4, :cond_4

    goto :goto_1

    :cond_4
    int-to-float v4, v2

    const v6, 0x3f47ae14    # 0.78f

    sub-float/2addr v4, v6

    mul-float v9, p3, v4

    mul-float/2addr v5, v6

    add-float/2addr v5, v9

    mul-float v9, p4, v4

    mul-float/2addr v7, v6

    add-float/2addr v7, v9

    mul-float v4, v4, p5

    mul-float/2addr v8, v6

    add-float/2addr v8, v4

    .line 4
    :cond_5
    :goto_1
    new-array v3, v3, [F

    aput v5, v3, v1

    aput v7, v3, v2

    aput v8, v3, v0

    return-object v3

    .line 5
    :cond_6
    :goto_2
    new-array v3, v3, [F

    aput p3, v3, v1

    aput p4, v3, v2

    aput p5, v3, v0

    return-object v3

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data
.end method
