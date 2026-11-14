.class public final Lo/i5;
.super Lo/db;
.source "SourceFile"


# instance fields
.field public final r:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Lo/Ae;Landroid/graphics/RectF;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lo/db;-><init>(Lo/Ae;)V

    .line 2
    iput-object p2, p0, Lo/i5;->r:Landroid/graphics/RectF;

    return-void
.end method

.method public constructor <init>(Lo/i5;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lo/db;-><init>(Lo/db;)V

    .line 4
    iget-object p1, p1, Lo/i5;->r:Landroid/graphics/RectF;

    iput-object p1, p0, Lo/i5;->r:Landroid/graphics/RectF;

    return-void
.end method


# virtual methods
.method public final newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    new-instance v0, Lo/j5;

    .line 3
    invoke-direct {v0, p0}, Lo/eb;-><init>(Lo/db;)V

    .line 6
    iput-object p0, v0, Lo/j5;->x:Lo/i5;

    .line 8
    invoke-virtual {v0}, Lo/eb;->invalidateSelf()V

    .line 11
    return-object v0
.end method
