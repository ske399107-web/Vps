.class public final Lo/mg;
.super Lo/eb;
.source "SourceFile"

# interfaces
.implements Lo/Kf;


# instance fields
.field public final A:Lo/Lf;

.field public final B:Lo/f3;

.field public final C:Landroid/graphics/Rect;

.field public D:I

.field public E:I

.field public F:I

.field public G:I

.field public H:Z

.field public I:I

.field public J:I

.field public K:F

.field public L:F

.field public M:F

.field public N:F

.field public x:Ljava/lang/CharSequence;

.field public final y:Landroid/content/Context;

.field public final z:Landroid/graphics/Paint$FontMetrics;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    invoke-direct {p0, p1, v0, v1, p2}, Lo/eb;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 6
    new-instance p2, Landroid/graphics/Paint$FontMetrics;

    .line 8
    invoke-direct {p2}, Landroid/graphics/Paint$FontMetrics;-><init>()V

    .line 11
    iput-object p2, p0, Lo/mg;->z:Landroid/graphics/Paint$FontMetrics;

    .line 13
    new-instance p2, Lo/Lf;

    .line 15
    invoke-direct {p2, p0}, Lo/Lf;-><init>(Lo/Kf;)V

    .line 18
    iput-object p2, p0, Lo/mg;->A:Lo/Lf;

    .line 20
    new-instance v0, Lo/f3;

    .line 22
    const/4 v1, 0x1

    .line 23
    invoke-direct {v0, v1, p0}, Lo/f3;-><init>(ILjava/lang/Object;)V

    .line 26
    iput-object v0, p0, Lo/mg;->B:Lo/f3;

    .line 28
    new-instance v0, Landroid/graphics/Rect;

    .line 30
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 33
    iput-object v0, p0, Lo/mg;->C:Landroid/graphics/Rect;

    .line 35
    const/high16 v0, 0x3f800000    # 1.0f

    .line 37
    iput v0, p0, Lo/mg;->K:F

    .line 39
    iput v0, p0, Lo/mg;->L:F

    .line 41
    const/high16 v1, 0x3f000000    # 0.5f

    .line 43
    iput v1, p0, Lo/mg;->M:F

    .line 45
    iput v0, p0, Lo/mg;->N:F

    .line 47
    iput-object p1, p0, Lo/mg;->y:Landroid/content/Context;

    .line 49
    iget-object p2, p2, Lo/Lf;->a:Landroid/text/TextPaint;

    .line 51
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 54
    move-result-object p1

    .line 55
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 58
    move-result-object p1

    .line 59
    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    .line 61
    iput p1, p2, Landroid/text/TextPaint;->density:F

    .line 63
    sget-object p1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    .line 65
    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 68
    return-void
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .locals 11

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 4
    invoke-virtual {p0}, Lo/mg;->q()F

    .line 7
    move-result v0

    .line 8
    iget v1, p0, Lo/mg;->I:I

    .line 10
    int-to-double v1, v1

    .line 11
    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    .line 13
    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    .line 16
    move-result-wide v3

    .line 17
    mul-double/2addr v3, v1

    .line 18
    iget v1, p0, Lo/mg;->I:I

    .line 20
    int-to-double v1, v1

    .line 21
    sub-double/2addr v3, v1

    .line 22
    neg-double v1, v3

    .line 23
    double-to-float v1, v1

    .line 24
    iget v2, p0, Lo/mg;->K:F

    .line 26
    iget v3, p0, Lo/mg;->L:F

    .line 28
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 31
    move-result-object v4

    .line 32
    iget v4, v4, Landroid/graphics/Rect;->left:I

    .line 34
    int-to-float v4, v4

    .line 35
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 38
    move-result-object v5

    .line 39
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    .line 42
    move-result v5

    .line 43
    int-to-float v5, v5

    .line 44
    const/high16 v6, 0x3f000000    # 0.5f

    .line 46
    mul-float/2addr v5, v6

    .line 47
    add-float/2addr v5, v4

    .line 48
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 51
    move-result-object v4

    .line 52
    iget v4, v4, Landroid/graphics/Rect;->top:I

    .line 54
    int-to-float v4, v4

    .line 55
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 58
    move-result-object v6

    .line 59
    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    .line 62
    move-result v6

    .line 63
    int-to-float v6, v6

    .line 64
    iget v7, p0, Lo/mg;->M:F

    .line 66
    mul-float/2addr v6, v7

    .line 67
    add-float/2addr v6, v4

    .line 68
    invoke-virtual {p1, v2, v3, v5, v6}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 71
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 74
    invoke-super {p0, p1}, Lo/eb;->draw(Landroid/graphics/Canvas;)V

    .line 77
    iget-object v0, p0, Lo/mg;->x:Ljava/lang/CharSequence;

    .line 79
    if-nez v0, :cond_0

    .line 81
    goto :goto_0

    .line 82
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 85
    move-result-object v0

    .line 86
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    .line 89
    move-result v1

    .line 90
    int-to-float v1, v1

    .line 91
    iget-object v2, p0, Lo/mg;->A:Lo/Lf;

    .line 93
    iget-object v3, v2, Lo/Lf;->a:Landroid/text/TextPaint;

    .line 95
    iget-object v4, p0, Lo/mg;->z:Landroid/graphics/Paint$FontMetrics;

    .line 97
    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->getFontMetrics(Landroid/graphics/Paint$FontMetrics;)F

    .line 100
    iget v3, v4, Landroid/graphics/Paint$FontMetrics;->descent:F

    .line 102
    iget v4, v4, Landroid/graphics/Paint$FontMetrics;->ascent:F

    .line 104
    add-float/2addr v3, v4

    .line 105
    const/high16 v4, 0x40000000    # 2.0f

    .line 107
    div-float/2addr v3, v4

    .line 108
    sub-float/2addr v1, v3

    .line 109
    float-to-int v1, v1

    .line 110
    iget-object v3, v2, Lo/Lf;->f:Lo/If;

    .line 112
    iget-object v10, v2, Lo/Lf;->a:Landroid/text/TextPaint;

    .line 114
    if-eqz v3, :cond_1

    .line 116
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    .line 119
    move-result-object v3

    .line 120
    iput-object v3, v10, Landroid/text/TextPaint;->drawableState:[I

    .line 122
    iget-object v3, v2, Lo/Lf;->f:Lo/If;

    .line 124
    iget-object v2, v2, Lo/Lf;->b:Lo/M3;

    .line 126
    iget-object v4, p0, Lo/mg;->y:Landroid/content/Context;

    .line 128
    invoke-virtual {v3, v4, v10, v2}, Lo/If;->e(Landroid/content/Context;Landroid/text/TextPaint;Lo/Ha;)V

    .line 131
    iget v2, p0, Lo/mg;->N:F

    .line 133
    const/high16 v3, 0x437f0000    # 255.0f

    .line 135
    mul-float/2addr v2, v3

    .line 136
    float-to-int v2, v2

    .line 137
    invoke-virtual {v10, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 140
    :cond_1
    iget-object v5, p0, Lo/mg;->x:Ljava/lang/CharSequence;

    .line 142
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    .line 145
    move-result v7

    .line 146
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    .line 149
    move-result v0

    .line 150
    int-to-float v8, v0

    .line 151
    int-to-float v9, v1

    .line 152
    const/4 v6, 0x0

    .line 153
    move-object v4, p1

    .line 154
    invoke-virtual/range {v4 .. v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .line 157
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 160
    return-void
.end method

.method public final getIntrinsicHeight()I
    .locals 2

    .line 1
    iget-object v0, p0, Lo/mg;->A:Lo/Lf;

    .line 3
    iget-object v0, v0, Lo/Lf;->a:Landroid/text/TextPaint;

    .line 5
    invoke-virtual {v0}, Landroid/graphics/Paint;->getTextSize()F

    .line 8
    move-result v0

    .line 9
    iget v1, p0, Lo/mg;->F:I

    .line 11
    int-to-float v1, v1

    .line 12
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    .line 15
    move-result v0

    .line 16
    float-to-int v0, v0

    .line 17
    return v0
.end method

.method public final getIntrinsicWidth()I
    .locals 3

    .line 1
    iget v0, p0, Lo/mg;->D:I

    .line 3
    mul-int/lit8 v0, v0, 0x2

    .line 5
    int-to-float v0, v0

    .line 6
    iget-object v1, p0, Lo/mg;->x:Ljava/lang/CharSequence;

    .line 8
    if-nez v1, :cond_0

    .line 10
    const/4 v1, 0x0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object v2, p0, Lo/mg;->A:Lo/Lf;

    .line 14
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v2, v1}, Lo/Lf;->a(Ljava/lang/String;)F

    .line 21
    move-result v1

    .line 22
    :goto_0
    add-float/2addr v0, v1

    .line 23
    iget v1, p0, Lo/mg;->E:I

    .line 25
    int-to-float v1, v1

    .line 26
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    .line 29
    move-result v0

    .line 30
    float-to-int v0, v0

    .line 31
    return v0
.end method

.method public final onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lo/eb;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 4
    iget-boolean p1, p0, Lo/mg;->H:Z

    .line 6
    if-eqz p1, :cond_0

    .line 8
    iget-object p1, p0, Lo/eb;->a:Lo/db;

    .line 10
    iget-object p1, p1, Lo/db;->a:Lo/Ae;

    .line 12
    invoke-virtual {p1}, Lo/Ae;->e()Lo/ze;

    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {p0}, Lo/mg;->r()Lo/dc;

    .line 19
    move-result-object v0

    .line 20
    iput-object v0, p1, Lo/ze;->k:Lo/u6;

    .line 22
    invoke-virtual {p1}, Lo/ze;->a()Lo/Ae;

    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {p0, p1}, Lo/eb;->setShapeAppearanceModel(Lo/Ae;)V

    .line 29
    :cond_0
    return-void
.end method

.method public final q()F
    .locals 3

    .line 1
    iget-object v0, p0, Lo/mg;->C:Landroid/graphics/Rect;

    .line 3
    iget v1, v0, Landroid/graphics/Rect;->right:I

    .line 5
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 8
    move-result-object v2

    .line 9
    iget v2, v2, Landroid/graphics/Rect;->right:I

    .line 11
    sub-int/2addr v1, v2

    .line 12
    iget v2, p0, Lo/mg;->J:I

    .line 14
    sub-int/2addr v1, v2

    .line 15
    iget v2, p0, Lo/mg;->G:I

    .line 17
    sub-int/2addr v1, v2

    .line 18
    if-gez v1, :cond_0

    .line 20
    iget v0, v0, Landroid/graphics/Rect;->right:I

    .line 22
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 25
    move-result-object v1

    .line 26
    iget v1, v1, Landroid/graphics/Rect;->right:I

    .line 28
    sub-int/2addr v0, v1

    .line 29
    iget v1, p0, Lo/mg;->J:I

    .line 31
    sub-int/2addr v0, v1

    .line 32
    iget v1, p0, Lo/mg;->G:I

    .line 34
    sub-int/2addr v0, v1

    .line 35
    :goto_0
    int-to-float v0, v0

    .line 36
    goto :goto_1

    .line 37
    :cond_0
    iget v1, v0, Landroid/graphics/Rect;->left:I

    .line 39
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 42
    move-result-object v2

    .line 43
    iget v2, v2, Landroid/graphics/Rect;->left:I

    .line 45
    sub-int/2addr v1, v2

    .line 46
    iget v2, p0, Lo/mg;->J:I

    .line 48
    sub-int/2addr v1, v2

    .line 49
    iget v2, p0, Lo/mg;->G:I

    .line 51
    add-int/2addr v1, v2

    .line 52
    if-lez v1, :cond_1

    .line 54
    iget v0, v0, Landroid/graphics/Rect;->left:I

    .line 56
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 59
    move-result-object v1

    .line 60
    iget v1, v1, Landroid/graphics/Rect;->left:I

    .line 62
    sub-int/2addr v0, v1

    .line 63
    iget v1, p0, Lo/mg;->J:I

    .line 65
    sub-int/2addr v0, v1

    .line 66
    iget v1, p0, Lo/mg;->G:I

    .line 68
    add-int/2addr v0, v1

    .line 69
    goto :goto_0

    .line 70
    :cond_1
    const/4 v0, 0x0

    .line 71
    :goto_1
    return v0
.end method

.method public final r()Lo/dc;
    .locals 7

    .line 1
    invoke-virtual {p0}, Lo/mg;->q()F

    .line 4
    move-result v0

    .line 5
    neg-float v0, v0

    .line 6
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 13
    move-result v1

    .line 14
    int-to-double v1, v1

    .line 15
    iget v3, p0, Lo/mg;->I:I

    .line 17
    int-to-double v3, v3

    .line 18
    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    .line 20
    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    .line 23
    move-result-wide v5

    .line 24
    mul-double/2addr v5, v3

    .line 25
    sub-double/2addr v1, v5

    .line 26
    double-to-float v1, v1

    .line 27
    const/high16 v2, 0x40000000    # 2.0f

    .line 29
    div-float/2addr v1, v2

    .line 30
    neg-float v2, v1

    .line 31
    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    .line 34
    move-result v0

    .line 35
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    .line 38
    move-result v0

    .line 39
    new-instance v1, Lo/dc;

    .line 41
    new-instance v2, Lo/Ja;

    .line 43
    iget v3, p0, Lo/mg;->I:I

    .line 45
    int-to-float v3, v3

    .line 46
    invoke-direct {v2, v3}, Lo/Ja;-><init>(F)V

    .line 49
    invoke-direct {v1, v2, v0}, Lo/dc;-><init>(Lo/Ja;F)V

    .line 52
    return-object v1
.end method
