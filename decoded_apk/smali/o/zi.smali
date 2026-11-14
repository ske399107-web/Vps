.class public final Lo/zi;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lo/yi;


# direct methods
.method public constructor <init>(ILandroid/view/animation/Interpolator;J)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 6
    const/16 v1, 0x1e

    .line 8
    if-lt v0, v1, :cond_0

    .line 10
    new-instance v0, Lo/xi;

    .line 12
    invoke-static {p1, p2, p3, p4}, Lo/v;->i(ILandroid/view/animation/Interpolator;J)Landroid/view/WindowInsetsAnimation;

    .line 15
    move-result-object p1

    .line 16
    invoke-direct {v0, p1}, Lo/xi;-><init>(Landroid/view/WindowInsetsAnimation;)V

    .line 19
    iput-object v0, p0, Lo/zi;->a:Lo/yi;

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    new-instance v0, Lo/vi;

    .line 24
    invoke-direct {v0, p1, p2, p3, p4}, Lo/yi;-><init>(ILandroid/view/animation/Interpolator;J)V

    .line 27
    iput-object v0, p0, Lo/zi;->a:Lo/yi;

    .line 29
    :goto_0
    return-void
.end method
