.class public final Lo/O3;
.super Lo/i7;
.source "SourceFile"


# instance fields
.field public final synthetic q:Lcom/google/android/material/chip/Chip;


# direct methods
.method public constructor <init>(Lcom/google/android/material/chip/Chip;Lcom/google/android/material/chip/Chip;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo/O3;->q:Lcom/google/android/material/chip/Chip;

    .line 3
    invoke-direct {p0, p2}, Lo/i7;-><init>(Landroid/view/View;)V

    .line 6
    return-void
.end method


# virtual methods
.method public final n(FF)I
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/material/chip/Chip;->w:Landroid/graphics/Rect;

    .line 3
    iget-object v0, p0, Lo/O3;->q:Lcom/google/android/material/chip/Chip;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/material/chip/Chip;->d()Z

    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 11
    invoke-static {v0}, Lcom/google/android/material/chip/Chip;->a(Lcom/google/android/material/chip/Chip;)Landroid/graphics/RectF;

    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0, p1, p2}, Landroid/graphics/RectF;->contains(FF)Z

    .line 18
    move-result p1

    .line 19
    if-eqz p1, :cond_0

    .line 21
    const/4 p1, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 p1, 0x0

    .line 24
    :goto_0
    return p1
.end method

.method public final o(Ljava/util/ArrayList;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 5
    move-result-object v0

    .line 6
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    sget-object v0, Lcom/google/android/material/chip/Chip;->w:Landroid/graphics/Rect;

    .line 11
    iget-object v0, p0, Lo/O3;->q:Lcom/google/android/material/chip/Chip;

    .line 13
    invoke-virtual {v0}, Lcom/google/android/material/chip/Chip;->d()Z

    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_0

    .line 19
    iget-object v1, v0, Lcom/google/android/material/chip/Chip;->e:Lo/Q3;

    .line 21
    if-eqz v1, :cond_0

    .line 23
    iget-boolean v1, v1, Lo/Q3;->K:Z

    .line 25
    if-eqz v1, :cond_0

    .line 27
    iget-object v0, v0, Lcom/google/android/material/chip/Chip;->h:Landroid/view/View$OnClickListener;

    .line 29
    if-eqz v0, :cond_0

    .line 31
    const/4 v0, 0x1

    .line 32
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    :cond_0
    return-void
.end method

.method public final s(IILandroid/os/Bundle;)Z
    .locals 1

    .line 1
    const/16 p3, 0x10

    .line 3
    const/4 v0, 0x0

    .line 4
    if-ne p2, p3, :cond_2

    .line 6
    iget-object p2, p0, Lo/O3;->q:Lcom/google/android/material/chip/Chip;

    .line 8
    if-nez p1, :cond_0

    .line 10
    invoke-virtual {p2}, Landroid/view/View;->performClick()Z

    .line 13
    move-result p1

    .line 14
    return p1

    .line 15
    :cond_0
    const/4 p3, 0x1

    .line 16
    if-ne p1, p3, :cond_2

    .line 18
    invoke-virtual {p2, v0}, Landroid/view/View;->playSoundEffect(I)V

    .line 21
    iget-object p1, p2, Lcom/google/android/material/chip/Chip;->h:Landroid/view/View$OnClickListener;

    .line 23
    if-eqz p1, :cond_1

    .line 25
    invoke-interface {p1, p2}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 28
    move v0, p3

    .line 29
    :cond_1
    iget-boolean p1, p2, Lcom/google/android/material/chip/Chip;->s:Z

    .line 31
    if-eqz p1, :cond_2

    .line 33
    iget-object p1, p2, Lcom/google/android/material/chip/Chip;->r:Lo/O3;

    .line 35
    invoke-virtual {p1, p3, p3}, Lo/i7;->x(II)V

    .line 38
    :cond_2
    return v0
.end method

.method public final t(Lo/D;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lo/O3;->q:Lcom/google/android/material/chip/Chip;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/material/chip/Chip;->e()Z

    .line 6
    move-result v1

    .line 7
    iget-object v2, p1, Lo/D;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 9
    invoke-virtual {v2, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCheckable(Z)V

    .line 12
    invoke-virtual {v0}, Landroid/view/View;->isClickable()Z

    .line 15
    move-result v1

    .line 16
    invoke-virtual {v2, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    .line 19
    invoke-virtual {v0}, Lcom/google/android/material/chip/Chip;->getAccessibilityClassName()Ljava/lang/CharSequence;

    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {p1, v1}, Lo/D;->i(Ljava/lang/CharSequence;)V

    .line 26
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {p1, v0}, Lo/D;->l(Ljava/lang/CharSequence;)V

    .line 33
    return-void
.end method

.method public final u(ILo/D;)V
    .locals 5

    .line 1
    iget-object v0, p2, Lo/D;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 3
    const/4 v1, 0x1

    .line 4
    const-string v2, ""

    .line 6
    if-ne p1, v1, :cond_2

    .line 8
    iget-object p1, p0, Lo/O3;->q:Lcom/google/android/material/chip/Chip;

    .line 10
    invoke-virtual {p1}, Lcom/google/android/material/chip/Chip;->getCloseIconContentDescription()Ljava/lang/CharSequence;

    .line 13
    move-result-object v1

    .line 14
    if-eqz v1, :cond_0

    .line 16
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 27
    move-result-object v3

    .line 28
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 31
    move-result v4

    .line 32
    if-nez v4, :cond_1

    .line 34
    move-object v2, v1

    .line 35
    :cond_1
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 38
    move-result-object v1

    .line 39
    const v2, 0x7f0e006c

    .line 42
    invoke-virtual {v3, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 45
    move-result-object v1

    .line 46
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 49
    move-result-object v1

    .line 50
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 53
    :goto_0
    invoke-static {p1}, Lcom/google/android/material/chip/Chip;->b(Lcom/google/android/material/chip/Chip;)Landroid/graphics/Rect;

    .line 56
    move-result-object v1

    .line 57
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 60
    sget-object v1, Lo/y;->e:Lo/y;

    .line 62
    invoke-virtual {p2, v1}, Lo/D;->b(Lo/y;)V

    .line 65
    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    .line 68
    move-result p1

    .line 69
    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    .line 72
    goto :goto_1

    .line 73
    :cond_2
    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 76
    sget-object p1, Lcom/google/android/material/chip/Chip;->w:Landroid/graphics/Rect;

    .line 78
    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 81
    :goto_1
    return-void
.end method

.method public final v(IZ)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p1, v0, :cond_0

    .line 4
    iget-object p1, p0, Lo/O3;->q:Lcom/google/android/material/chip/Chip;

    .line 6
    iput-boolean p2, p1, Lcom/google/android/material/chip/Chip;->m:Z

    .line 8
    invoke-virtual {p1}, Landroid/view/View;->refreshDrawableState()V

    .line 11
    :cond_0
    return-void
.end method
