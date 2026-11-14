.class public Lcom/google/android/material/slider/Slider;
.super Lo/W2;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/W2;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Lo/W2;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    const v0, 0x1010024

    .line 7
    filled-new-array {v0}, [I

    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 14
    move-result-object p1

    .line 15
    const/4 p2, 0x0

    .line 16
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_0

    .line 22
    const/4 v0, 0x0

    .line 23
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 26
    move-result p2

    .line 27
    invoke-virtual {p0, p2}, Lcom/google/android/material/slider/Slider;->setValue(F)V

    .line 30
    :cond_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 33
    return-void
.end method


# virtual methods
.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    const-class v0, Landroid/widget/SeekBar;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getActiveThumbIndex()I
    .locals 1

    .line 1
    iget v0, p0, Lo/W2;->T:I

    .line 3
    return v0
.end method

.method public getFocusedThumbIndex()I
    .locals 1

    .line 1
    iget v0, p0, Lo/W2;->U:I

    .line 3
    return v0
.end method

.method public getHaloRadius()I
    .locals 1

    .line 1
    iget v0, p0, Lo/W2;->G:I

    .line 3
    return v0
.end method

.method public getHaloTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .line 1
    iget-object v0, p0, Lo/W2;->g0:Landroid/content/res/ColorStateList;

    .line 3
    return-object v0
.end method

.method public getLabelBehavior()I
    .locals 1

    .line 1
    iget v0, p0, Lo/W2;->B:I

    .line 3
    return v0
.end method

.method public getStepSize()F
    .locals 1

    .line 1
    iget v0, p0, Lo/W2;->V:F

    .line 3
    return v0
.end method

.method public getThumbElevation()F
    .locals 1

    .line 1
    iget-object v0, p0, Lo/W2;->o0:Lo/eb;

    .line 3
    iget-object v0, v0, Lo/eb;->a:Lo/db;

    .line 5
    iget v0, v0, Lo/db;->m:F

    .line 7
    return v0
.end method

.method public getThumbHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lo/W2;->F:I

    .line 3
    return v0
.end method

.method public getThumbRadius()I
    .locals 1

    .line 1
    iget v0, p0, Lo/W2;->E:I

    .line 3
    div-int/lit8 v0, v0, 0x2

    .line 5
    return v0
.end method

.method public getThumbStrokeColor()Landroid/content/res/ColorStateList;
    .locals 1

    .line 1
    iget-object v0, p0, Lo/W2;->o0:Lo/eb;

    .line 3
    iget-object v0, v0, Lo/eb;->a:Lo/db;

    .line 5
    iget-object v0, v0, Lo/db;->d:Landroid/content/res/ColorStateList;

    .line 7
    return-object v0
.end method

.method public getThumbStrokeWidth()F
    .locals 1

    .line 1
    iget-object v0, p0, Lo/W2;->o0:Lo/eb;

    .line 3
    iget-object v0, v0, Lo/eb;->a:Lo/db;

    .line 5
    iget v0, v0, Lo/db;->j:F

    .line 7
    return v0
.end method

.method public getThumbTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .line 1
    iget-object v0, p0, Lo/W2;->o0:Lo/eb;

    .line 3
    iget-object v0, v0, Lo/eb;->a:Lo/db;

    .line 5
    iget-object v0, v0, Lo/db;->c:Landroid/content/res/ColorStateList;

    .line 7
    return-object v0
.end method

.method public getThumbTrackGapSize()I
    .locals 1

    .line 1
    iget v0, p0, Lo/W2;->H:I

    .line 3
    return v0
.end method

.method public getThumbWidth()I
    .locals 1

    .line 1
    iget v0, p0, Lo/W2;->E:I

    .line 3
    return v0
.end method

.method public getTickActiveRadius()I
    .locals 1

    .line 1
    iget v0, p0, Lo/W2;->b0:I

    .line 3
    return v0
.end method

.method public getTickActiveTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .line 1
    iget-object v0, p0, Lo/W2;->h0:Landroid/content/res/ColorStateList;

    .line 3
    return-object v0
.end method

.method public getTickInactiveRadius()I
    .locals 1

    .line 1
    iget v0, p0, Lo/W2;->c0:I

    .line 3
    return v0
.end method

.method public getTickInactiveTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .line 1
    iget-object v0, p0, Lo/W2;->i0:Landroid/content/res/ColorStateList;

    .line 3
    return-object v0
.end method

.method public getTickTintList()Landroid/content/res/ColorStateList;
    .locals 2

    .line 1
    iget-object v0, p0, Lo/W2;->i0:Landroid/content/res/ColorStateList;

    .line 3
    iget-object v1, p0, Lo/W2;->h0:Landroid/content/res/ColorStateList;

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 11
    iget-object v0, p0, Lo/W2;->h0:Landroid/content/res/ColorStateList;

    .line 13
    return-object v0

    .line 14
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 16
    const-string v1, "The inactive and active ticks are different colors. Use the getTickColorInactive() and getTickColorActive() methods instead."

    .line 18
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 21
    throw v0
.end method

.method public getTrackActiveTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .line 1
    iget-object v0, p0, Lo/W2;->j0:Landroid/content/res/ColorStateList;

    .line 3
    return-object v0
.end method

.method public getTrackHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lo/W2;->C:I

    .line 3
    return v0
.end method

.method public getTrackInactiveTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .line 1
    iget-object v0, p0, Lo/W2;->k0:Landroid/content/res/ColorStateList;

    .line 3
    return-object v0
.end method

.method public getTrackInsideCornerSize()I
    .locals 1

    .line 1
    iget v0, p0, Lo/W2;->L:I

    .line 3
    return v0
.end method

.method public getTrackSidePadding()I
    .locals 1

    .line 1
    iget v0, p0, Lo/W2;->D:I

    .line 3
    return v0
.end method

.method public getTrackStopIndicatorSize()I
    .locals 1

    .line 1
    iget v0, p0, Lo/W2;->K:I

    .line 3
    return v0
.end method

.method public getTrackTintList()Landroid/content/res/ColorStateList;
    .locals 2

    .line 1
    iget-object v0, p0, Lo/W2;->k0:Landroid/content/res/ColorStateList;

    .line 3
    iget-object v1, p0, Lo/W2;->j0:Landroid/content/res/ColorStateList;

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 11
    iget-object v0, p0, Lo/W2;->j0:Landroid/content/res/ColorStateList;

    .line 13
    return-object v0

    .line 14
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 16
    const-string v1, "The inactive and active parts of the track are different colors. Use the getInactiveTrackColor() and getActiveTrackColor() methods instead."

    .line 18
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 21
    throw v0
.end method

.method public getTrackWidth()I
    .locals 1

    .line 1
    iget v0, p0, Lo/W2;->d0:I

    .line 3
    return v0
.end method

.method public getValue()F
    .locals 2

    .line 1
    invoke-virtual {p0}, Lo/W2;->getValues()Ljava/util/List;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Ljava/lang/Float;

    .line 12
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    .line 15
    move-result v0

    .line 16
    return v0
.end method

.method public getValueFrom()F
    .locals 1

    .line 1
    iget v0, p0, Lo/W2;->Q:F

    .line 3
    return v0
.end method

.method public getValueTo()F
    .locals 1

    .line 1
    iget v0, p0, Lo/W2;->R:F

    .line 3
    return v0
.end method

.method public setCustomThumbDrawable(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/slider/Slider;->setCustomThumbDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setCustomThumbDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 2
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 3
    invoke-virtual {p0, p1}, Lo/W2;->a(Landroid/graphics/drawable/Drawable;)V

    .line 4
    iput-object p1, p0, Lo/W2;->p0:Landroid/graphics/drawable/Drawable;

    .line 5
    iget-object p1, p0, Lo/W2;->q0:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method

.method public bridge synthetic setEnabled(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lo/W2;->setEnabled(Z)V

    .line 4
    return-void
.end method

.method public setFocusedThumbIndex(I)V
    .locals 1

    .line 1
    if-ltz p1, :cond_0

    .line 3
    iget-object v0, p0, Lo/W2;->S:Ljava/util/ArrayList;

    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 8
    move-result v0

    .line 9
    if-ge p1, v0, :cond_0

    .line 11
    iput p1, p0, Lo/W2;->U:I

    .line 13
    iget-object v0, p0, Lo/W2;->h:Lo/U2;

    .line 15
    invoke-virtual {v0, p1}, Lo/i7;->w(I)Z

    .line 18
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    .line 21
    return-void

    .line 22
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 24
    const-string v0, "index out of range"

    .line 26
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 29
    throw p1
.end method

.method public setHaloRadius(I)V
    .locals 1

    .line 1
    iget v0, p0, Lo/W2;->G:I

    .line 3
    if-ne p1, v0, :cond_0

    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iput p1, p0, Lo/W2;->G:I

    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 15
    move-result-object v0

    .line 16
    instance-of v0, v0, Landroid/graphics/drawable/RippleDrawable;

    .line 18
    if-eqz v0, :cond_1

    .line 20
    instance-of v0, p1, Landroid/graphics/drawable/RippleDrawable;

    .line 22
    if-eqz v0, :cond_1

    .line 24
    check-cast p1, Landroid/graphics/drawable/RippleDrawable;

    .line 26
    iget v0, p0, Lo/W2;->G:I

    .line 28
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/RippleDrawable;->setRadius(I)V

    .line 31
    goto :goto_0

    .line 32
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    .line 35
    :goto_0
    return-void
.end method

.method public setHaloRadiusResource(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 8
    move-result p1

    .line 9
    invoke-virtual {p0, p1}, Lcom/google/android/material/slider/Slider;->setHaloRadius(I)V

    .line 12
    return-void
.end method

.method public setHaloTintList(Landroid/content/res/ColorStateList;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lo/W2;->g0:Landroid/content/res/ColorStateList;

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iput-object p1, p0, Lo/W2;->g0:Landroid/content/res/ColorStateList;

    .line 12
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 19
    move-result-object v1

    .line 20
    instance-of v1, v1, Landroid/graphics/drawable/RippleDrawable;

    .line 22
    if-eqz v1, :cond_1

    .line 24
    instance-of v1, v0, Landroid/graphics/drawable/RippleDrawable;

    .line 26
    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Landroid/graphics/drawable/RippleDrawable;

    .line 30
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/RippleDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    .line 33
    goto :goto_0

    .line 34
    :cond_1
    iget-object v0, p0, Lo/W2;->d:Landroid/graphics/Paint;

    .line 36
    invoke-virtual {p0, p1}, Lo/W2;->h(Landroid/content/res/ColorStateList;)I

    .line 39
    move-result p1

    .line 40
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 43
    const/16 p1, 0x3f

    .line 45
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 48
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 51
    :goto_0
    return-void
.end method

.method public setLabelBehavior(I)V
    .locals 1

    .line 1
    iget v0, p0, Lo/W2;->B:I

    .line 3
    if-eq v0, p1, :cond_0

    .line 5
    iput p1, p0, Lo/W2;->B:I

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 10
    :cond_0
    return-void
.end method

.method public bridge synthetic setLabelFormatter(Lo/E9;)V
    .locals 0

    .line 1
    return-void
.end method

.method public setStepSize(F)V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    cmpg-float v0, p1, v0

    .line 4
    if-ltz v0, :cond_1

    .line 6
    iget v0, p0, Lo/W2;->V:F

    .line 8
    cmpl-float v0, v0, p1

    .line 10
    if-eqz v0, :cond_0

    .line 12
    iput p1, p0, Lo/W2;->V:F

    .line 14
    const/4 p1, 0x1

    .line 15
    iput-boolean p1, p0, Lo/W2;->f0:Z

    .line 17
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    .line 20
    :cond_0
    return-void

    .line 21
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 23
    iget v1, p0, Lo/W2;->Q:F

    .line 25
    iget v2, p0, Lo/W2;->R:F

    .line 27
    new-instance v3, Ljava/lang/StringBuilder;

    .line 29
    const-string v4, "The stepSize("

    .line 31
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 34
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 37
    const-string p1, ") must be 0, or a factor of the valueFrom("

    .line 39
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 45
    const-string p1, ")-valueTo("

    .line 47
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 53
    const-string p1, ") range"

    .line 55
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    move-result-object p1

    .line 62
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 65
    throw v0
.end method

.method public setThumbElevation(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lo/W2;->o0:Lo/eb;

    .line 3
    invoke-virtual {v0, p1}, Lo/eb;->j(F)V

    .line 6
    return-void
.end method

.method public setThumbElevationResource(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    .line 8
    move-result p1

    .line 9
    invoke-virtual {p0, p1}, Lcom/google/android/material/slider/Slider;->setThumbElevation(F)V

    .line 12
    return-void
.end method

.method public setThumbHeight(I)V
    .locals 3

    .line 1
    iget v0, p0, Lo/W2;->F:I

    .line 3
    if-ne p1, v0, :cond_0

    .line 5
    goto :goto_1

    .line 6
    :cond_0
    iput p1, p0, Lo/W2;->F:I

    .line 8
    iget-object v0, p0, Lo/W2;->o0:Lo/eb;

    .line 10
    iget v1, p0, Lo/W2;->E:I

    .line 12
    const/4 v2, 0x0

    .line 13
    invoke-virtual {v0, v2, v2, v1, p1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 16
    iget-object p1, p0, Lo/W2;->p0:Landroid/graphics/drawable/Drawable;

    .line 18
    if-eqz p1, :cond_1

    .line 20
    invoke-virtual {p0, p1}, Lo/W2;->a(Landroid/graphics/drawable/Drawable;)V

    .line 23
    :cond_1
    iget-object p1, p0, Lo/W2;->q0:Ljava/util/List;

    .line 25
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 28
    move-result-object p1

    .line 29
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_2

    .line 35
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 38
    move-result-object v0

    .line 39
    check-cast v0, Landroid/graphics/drawable/Drawable;

    .line 41
    invoke-virtual {p0, v0}, Lo/W2;->a(Landroid/graphics/drawable/Drawable;)V

    .line 44
    goto :goto_0

    .line 45
    :cond_2
    invoke-virtual {p0}, Lo/W2;->y()V

    .line 48
    :goto_1
    return-void
.end method

.method public setThumbHeightResource(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 8
    move-result p1

    .line 9
    invoke-virtual {p0, p1}, Lcom/google/android/material/slider/Slider;->setThumbHeight(I)V

    .line 12
    return-void
.end method

.method public setThumbRadius(I)V
    .locals 0

    .line 1
    mul-int/lit8 p1, p1, 0x2

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/material/slider/Slider;->setThumbWidth(I)V

    .line 6
    invoke-virtual {p0, p1}, Lcom/google/android/material/slider/Slider;->setThumbHeight(I)V

    .line 9
    return-void
.end method

.method public setThumbRadiusResource(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 8
    move-result p1

    .line 9
    invoke-virtual {p0, p1}, Lcom/google/android/material/slider/Slider;->setThumbRadius(I)V

    .line 12
    return-void
.end method

.method public setThumbStrokeColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lo/W2;->o0:Lo/eb;

    .line 3
    invoke-virtual {v0, p1}, Lo/eb;->m(Landroid/content/res/ColorStateList;)V

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    .line 9
    return-void
.end method

.method public setThumbStrokeColorResource(I)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0, p1}, Lo/L1;->v(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p0, p1}, Lcom/google/android/material/slider/Slider;->setThumbStrokeColor(Landroid/content/res/ColorStateList;)V

    .line 14
    :cond_0
    return-void
.end method

.method public setThumbStrokeWidth(F)V
    .locals 2

    .line 1
    iget-object v0, p0, Lo/W2;->o0:Lo/eb;

    .line 3
    iget-object v1, v0, Lo/eb;->a:Lo/db;

    .line 5
    iput p1, v1, Lo/db;->j:F

    .line 7
    invoke-virtual {v0}, Lo/eb;->invalidateSelf()V

    .line 10
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    .line 13
    return-void
.end method

.method public setThumbStrokeWidthResource(I)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    .line 10
    move-result p1

    .line 11
    invoke-virtual {p0, p1}, Lcom/google/android/material/slider/Slider;->setThumbStrokeWidth(F)V

    .line 14
    :cond_0
    return-void
.end method

.method public setThumbTintList(Landroid/content/res/ColorStateList;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lo/W2;->o0:Lo/eb;

    .line 3
    iget-object v1, v0, Lo/eb;->a:Lo/db;

    .line 5
    iget-object v1, v1, Lo/db;->c:Landroid/content/res/ColorStateList;

    .line 7
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {v0, p1}, Lo/eb;->k(Landroid/content/res/ColorStateList;)V

    .line 17
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 20
    :goto_0
    return-void
.end method

.method public setThumbTrackGapSize(I)V
    .locals 1

    .line 1
    iget v0, p0, Lo/W2;->H:I

    .line 3
    if-ne v0, p1, :cond_0

    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iput p1, p0, Lo/W2;->H:I

    .line 8
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 11
    :goto_0
    return-void
.end method

.method public setThumbWidth(I)V
    .locals 11

    .line 1
    iget v0, p0, Lo/W2;->E:I

    .line 3
    if-ne p1, v0, :cond_0

    .line 5
    goto/16 :goto_1

    .line 7
    :cond_0
    iput p1, p0, Lo/W2;->E:I

    .line 9
    iget-object p1, p0, Lo/W2;->o0:Lo/eb;

    .line 11
    new-instance v0, Lo/u6;

    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-direct {v0, v1}, Lo/u6;-><init>(I)V

    .line 17
    new-instance v1, Lo/u6;

    .line 19
    const/4 v2, 0x0

    .line 20
    invoke-direct {v1, v2}, Lo/u6;-><init>(I)V

    .line 23
    new-instance v2, Lo/u6;

    .line 25
    const/4 v3, 0x0

    .line 26
    invoke-direct {v2, v3}, Lo/u6;-><init>(I)V

    .line 29
    new-instance v3, Lo/u6;

    .line 31
    const/4 v4, 0x0

    .line 32
    invoke-direct {v3, v4}, Lo/u6;-><init>(I)V

    .line 35
    iget v4, p0, Lo/W2;->E:I

    .line 37
    int-to-float v4, v4

    .line 38
    const/high16 v5, 0x40000000    # 2.0f

    .line 40
    div-float/2addr v4, v5

    .line 41
    const/4 v5, 0x0

    .line 42
    invoke-static {v5}, Lo/Ha;->s(I)Lo/L1;

    .line 45
    move-result-object v6

    .line 46
    invoke-static {v6}, Lo/ze;->b(Lo/L1;)V

    .line 49
    invoke-static {v6}, Lo/ze;->b(Lo/L1;)V

    .line 52
    invoke-static {v6}, Lo/ze;->b(Lo/L1;)V

    .line 55
    invoke-static {v6}, Lo/ze;->b(Lo/L1;)V

    .line 58
    new-instance v7, Lo/g;

    .line 60
    invoke-direct {v7, v4}, Lo/g;-><init>(F)V

    .line 63
    new-instance v8, Lo/g;

    .line 65
    invoke-direct {v8, v4}, Lo/g;-><init>(F)V

    .line 68
    new-instance v9, Lo/g;

    .line 70
    invoke-direct {v9, v4}, Lo/g;-><init>(F)V

    .line 73
    new-instance v10, Lo/g;

    .line 75
    invoke-direct {v10, v4}, Lo/g;-><init>(F)V

    .line 78
    new-instance v4, Lo/Ae;

    .line 80
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object v6, v4, Lo/Ae;->a:Lo/L1;

    .line 85
    iput-object v6, v4, Lo/Ae;->b:Lo/L1;

    .line 87
    iput-object v6, v4, Lo/Ae;->c:Lo/L1;

    .line 89
    iput-object v6, v4, Lo/Ae;->d:Lo/L1;

    .line 91
    iput-object v7, v4, Lo/Ae;->e:Lo/d5;

    .line 93
    iput-object v8, v4, Lo/Ae;->f:Lo/d5;

    .line 95
    iput-object v9, v4, Lo/Ae;->g:Lo/d5;

    .line 97
    iput-object v10, v4, Lo/Ae;->h:Lo/d5;

    .line 99
    iput-object v0, v4, Lo/Ae;->i:Lo/u6;

    .line 101
    iput-object v1, v4, Lo/Ae;->j:Lo/u6;

    .line 103
    iput-object v2, v4, Lo/Ae;->k:Lo/u6;

    .line 105
    iput-object v3, v4, Lo/Ae;->l:Lo/u6;

    .line 107
    invoke-virtual {p1, v4}, Lo/eb;->setShapeAppearanceModel(Lo/Ae;)V

    .line 110
    iget v0, p0, Lo/W2;->E:I

    .line 112
    iget v1, p0, Lo/W2;->F:I

    .line 114
    invoke-virtual {p1, v5, v5, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 117
    iget-object p1, p0, Lo/W2;->p0:Landroid/graphics/drawable/Drawable;

    .line 119
    if-eqz p1, :cond_1

    .line 121
    invoke-virtual {p0, p1}, Lo/W2;->a(Landroid/graphics/drawable/Drawable;)V

    .line 124
    :cond_1
    iget-object p1, p0, Lo/W2;->q0:Ljava/util/List;

    .line 126
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 129
    move-result-object p1

    .line 130
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 133
    move-result v0

    .line 134
    if-eqz v0, :cond_2

    .line 136
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 139
    move-result-object v0

    .line 140
    check-cast v0, Landroid/graphics/drawable/Drawable;

    .line 142
    invoke-virtual {p0, v0}, Lo/W2;->a(Landroid/graphics/drawable/Drawable;)V

    .line 145
    goto :goto_0

    .line 146
    :cond_2
    invoke-virtual {p0}, Lo/W2;->y()V

    .line 149
    :goto_1
    return-void
.end method

.method public setThumbWidthResource(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 8
    move-result p1

    .line 9
    invoke-virtual {p0, p1}, Lcom/google/android/material/slider/Slider;->setThumbWidth(I)V

    .line 12
    return-void
.end method

.method public setTickActiveRadius(I)V
    .locals 1

    .line 1
    iget v0, p0, Lo/W2;->b0:I

    .line 3
    if-eq v0, p1, :cond_0

    .line 5
    iput p1, p0, Lo/W2;->b0:I

    .line 7
    iget-object v0, p0, Lo/W2;->f:Landroid/graphics/Paint;

    .line 9
    mul-int/lit8 p1, p1, 0x2

    .line 11
    int-to-float p1, p1

    .line 12
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 15
    invoke-virtual {p0}, Lo/W2;->y()V

    .line 18
    :cond_0
    return-void
.end method

.method public setTickActiveTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lo/W2;->h0:Landroid/content/res/ColorStateList;

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iput-object p1, p0, Lo/W2;->h0:Landroid/content/res/ColorStateList;

    .line 12
    iget-object v0, p0, Lo/W2;->f:Landroid/graphics/Paint;

    .line 14
    invoke-virtual {p0, p1}, Lo/W2;->h(Landroid/content/res/ColorStateList;)I

    .line 17
    move-result p1

    .line 18
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 21
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 24
    :goto_0
    return-void
.end method

.method public setTickInactiveRadius(I)V
    .locals 1

    .line 1
    iget v0, p0, Lo/W2;->c0:I

    .line 3
    if-eq v0, p1, :cond_0

    .line 5
    iput p1, p0, Lo/W2;->c0:I

    .line 7
    iget-object v0, p0, Lo/W2;->e:Landroid/graphics/Paint;

    .line 9
    mul-int/lit8 p1, p1, 0x2

    .line 11
    int-to-float p1, p1

    .line 12
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 15
    invoke-virtual {p0}, Lo/W2;->y()V

    .line 18
    :cond_0
    return-void
.end method

.method public setTickInactiveTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lo/W2;->i0:Landroid/content/res/ColorStateList;

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iput-object p1, p0, Lo/W2;->i0:Landroid/content/res/ColorStateList;

    .line 12
    iget-object v0, p0, Lo/W2;->e:Landroid/graphics/Paint;

    .line 14
    invoke-virtual {p0, p1}, Lo/W2;->h(Landroid/content/res/ColorStateList;)I

    .line 17
    move-result p1

    .line 18
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 21
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 24
    :goto_0
    return-void
.end method

.method public setTickTintList(Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/material/slider/Slider;->setTickInactiveTintList(Landroid/content/res/ColorStateList;)V

    .line 4
    invoke-virtual {p0, p1}, Lcom/google/android/material/slider/Slider;->setTickActiveTintList(Landroid/content/res/ColorStateList;)V

    .line 7
    return-void
.end method

.method public setTickVisible(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lo/W2;->a0:Z

    .line 3
    if-eq v0, p1, :cond_0

    .line 5
    iput-boolean p1, p0, Lo/W2;->a0:Z

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    .line 10
    :cond_0
    return-void
.end method

.method public setTrackActiveTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lo/W2;->j0:Landroid/content/res/ColorStateList;

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iput-object p1, p0, Lo/W2;->j0:Landroid/content/res/ColorStateList;

    .line 12
    iget-object v0, p0, Lo/W2;->b:Landroid/graphics/Paint;

    .line 14
    invoke-virtual {p0, p1}, Lo/W2;->h(Landroid/content/res/ColorStateList;)I

    .line 17
    move-result p1

    .line 18
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 21
    iget-object p1, p0, Lo/W2;->g:Landroid/graphics/Paint;

    .line 23
    iget-object v0, p0, Lo/W2;->j0:Landroid/content/res/ColorStateList;

    .line 25
    invoke-virtual {p0, v0}, Lo/W2;->h(Landroid/content/res/ColorStateList;)I

    .line 28
    move-result v0

    .line 29
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 32
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 35
    :goto_0
    return-void
.end method

.method public setTrackHeight(I)V
    .locals 1

    .line 1
    iget v0, p0, Lo/W2;->C:I

    .line 3
    if-eq v0, p1, :cond_0

    .line 5
    iput p1, p0, Lo/W2;->C:I

    .line 7
    iget-object v0, p0, Lo/W2;->a:Landroid/graphics/Paint;

    .line 9
    int-to-float p1, p1

    .line 10
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 13
    iget-object p1, p0, Lo/W2;->b:Landroid/graphics/Paint;

    .line 15
    iget v0, p0, Lo/W2;->C:I

    .line 17
    int-to-float v0, v0

    .line 18
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 21
    invoke-virtual {p0}, Lo/W2;->y()V

    .line 24
    :cond_0
    return-void
.end method

.method public setTrackInactiveTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lo/W2;->k0:Landroid/content/res/ColorStateList;

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iput-object p1, p0, Lo/W2;->k0:Landroid/content/res/ColorStateList;

    .line 12
    iget-object v0, p0, Lo/W2;->a:Landroid/graphics/Paint;

    .line 14
    invoke-virtual {p0, p1}, Lo/W2;->h(Landroid/content/res/ColorStateList;)I

    .line 17
    move-result p1

    .line 18
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 21
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 24
    :goto_0
    return-void
.end method

.method public setTrackInsideCornerSize(I)V
    .locals 1

    .line 1
    iget v0, p0, Lo/W2;->L:I

    .line 3
    if-ne v0, p1, :cond_0

    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iput p1, p0, Lo/W2;->L:I

    .line 8
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 11
    :goto_0
    return-void
.end method

.method public setTrackStopIndicatorSize(I)V
    .locals 1

    .line 1
    iget v0, p0, Lo/W2;->K:I

    .line 3
    if-ne v0, p1, :cond_0

    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iput p1, p0, Lo/W2;->K:I

    .line 8
    iget-object v0, p0, Lo/W2;->g:Landroid/graphics/Paint;

    .line 10
    int-to-float p1, p1

    .line 11
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 14
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 17
    :goto_0
    return-void
.end method

.method public setTrackTintList(Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/material/slider/Slider;->setTrackInactiveTintList(Landroid/content/res/ColorStateList;)V

    .line 4
    invoke-virtual {p0, p1}, Lcom/google/android/material/slider/Slider;->setTrackActiveTintList(Landroid/content/res/ColorStateList;)V

    .line 7
    return-void
.end method

.method public setValue(F)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 4
    move-result-object p1

    .line 5
    filled-new-array {p1}, [Ljava/lang/Float;

    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p0, p1}, Lo/W2;->setValues([Ljava/lang/Float;)V

    .line 12
    return-void
.end method

.method public setValueFrom(F)V
    .locals 0

    .line 1
    iput p1, p0, Lo/W2;->Q:F

    .line 3
    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lo/W2;->f0:Z

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    .line 9
    return-void
.end method

.method public setValueTo(F)V
    .locals 0

    .line 1
    iput p1, p0, Lo/W2;->R:F

    .line 3
    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lo/W2;->f0:Z

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    .line 9
    return-void
.end method
