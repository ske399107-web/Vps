.class public abstract Lo/Q0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Landroid/view/animation/LinearInterpolator;

.field public static final b:Lo/o7;

.field public static final c:Lo/o7;

.field public static final d:Lo/o7;

.field public static final e:Landroid/view/animation/DecelerateInterpolator;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    .line 3
    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 6
    sput-object v0, Lo/Q0;->a:Landroid/view/animation/LinearInterpolator;

    .line 8
    new-instance v0, Lo/o7;

    .line 10
    sget-object v1, Lo/o7;->d:[F

    .line 12
    invoke-direct {v0, v1}, Lo/Aa;-><init>([F)V

    .line 15
    sput-object v0, Lo/Q0;->b:Lo/o7;

    .line 17
    new-instance v0, Lo/o7;

    .line 19
    invoke-direct {v0}, Lo/o7;-><init>()V

    .line 22
    sput-object v0, Lo/Q0;->c:Lo/o7;

    .line 24
    new-instance v0, Lo/o7;

    .line 26
    sget-object v1, Lo/o7;->e:[F

    .line 28
    invoke-direct {v0, v1}, Lo/Aa;-><init>([F)V

    .line 31
    sput-object v0, Lo/Q0;->d:Lo/o7;

    .line 33
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    .line 35
    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 38
    sput-object v0, Lo/Q0;->e:Landroid/view/animation/DecelerateInterpolator;

    .line 40
    return-void
.end method

.method public static a(FFF)F
    .locals 0

    .line 1
    sub-float/2addr p1, p0

    .line 2
    mul-float/2addr p1, p2

    .line 3
    add-float/2addr p1, p0

    .line 4
    return p1
.end method

.method public static b(FFFFF)F
    .locals 1

    .line 1
    cmpg-float v0, p4, p2

    .line 3
    if-gtz v0, :cond_0

    .line 5
    return p0

    .line 6
    :cond_0
    cmpl-float v0, p4, p3

    .line 8
    if-ltz v0, :cond_1

    .line 10
    return p1

    .line 11
    :cond_1
    sub-float/2addr p4, p2

    .line 12
    sub-float/2addr p3, p2

    .line 13
    div-float/2addr p4, p3

    .line 14
    invoke-static {p0, p1, p4}, Lo/Q0;->a(FFF)F

    .line 17
    move-result p0

    .line 18
    return p0
.end method

.method public static c(IIF)I
    .locals 0

    .line 1
    sub-int/2addr p1, p0

    .line 2
    int-to-float p1, p1

    .line 3
    mul-float/2addr p2, p1

    .line 4
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    .line 7
    move-result p1

    .line 8
    add-int/2addr p1, p0

    .line 9
    return p1
.end method
