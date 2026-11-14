.class public final Lo/U2;
.super Lo/i7;
.source "SourceFile"


# instance fields
.field public final q:Lcom/google/android/material/slider/Slider;

.field public final r:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Lcom/google/android/material/slider/Slider;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lo/i7;-><init>(Landroid/view/View;)V

    .line 4
    new-instance v0, Landroid/graphics/Rect;

    .line 6
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 9
    iput-object v0, p0, Lo/U2;->r:Landroid/graphics/Rect;

    .line 11
    iput-object p1, p0, Lo/U2;->q:Lcom/google/android/material/slider/Slider;

    .line 13
    return-void
.end method


# virtual methods
.method public final n(FF)I
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lo/U2;->q:Lcom/google/android/material/slider/Slider;

    .line 4
    invoke-virtual {v1}, Lo/W2;->getValues()Ljava/util/List;

    .line 7
    move-result-object v2

    .line 8
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 11
    move-result v2

    .line 12
    if-ge v0, v2, :cond_1

    .line 14
    iget-object v2, p0, Lo/U2;->r:Landroid/graphics/Rect;

    .line 16
    invoke-virtual {v1, v0, v2}, Lo/W2;->u(ILandroid/graphics/Rect;)V

    .line 19
    float-to-int v1, p1

    .line 20
    float-to-int v3, p2

    .line 21
    invoke-virtual {v2, v1, v3}, Landroid/graphics/Rect;->contains(II)Z

    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_0

    .line 27
    return v0

    .line 28
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    const/4 p1, -0x1

    .line 32
    return p1
.end method

.method public final o(Ljava/util/ArrayList;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lo/U2;->q:Lcom/google/android/material/slider/Slider;

    .line 4
    invoke-virtual {v1}, Lo/W2;->getValues()Ljava/util/List;

    .line 7
    move-result-object v1

    .line 8
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 11
    move-result v1

    .line 12
    if-ge v0, v1, :cond_0

    .line 14
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 21
    add-int/lit8 v0, v0, 0x1

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    return-void
.end method

.method public final s(IILandroid/os/Bundle;)Z
    .locals 7

    .line 1
    iget-object v0, p0, Lo/U2;->q:Lcom/google/android/material/slider/Slider;

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_0

    .line 10
    return v2

    .line 11
    :cond_0
    const/16 v1, 0x1000

    .line 13
    const/4 v3, 0x1

    .line 14
    const/16 v4, 0x2000

    .line 16
    if-eq p2, v1, :cond_4

    .line 18
    if-eq p2, v4, :cond_4

    .line 20
    const v1, 0x102003d

    .line 23
    if-eq p2, v1, :cond_1

    .line 25
    return v2

    .line 26
    :cond_1
    if-eqz p3, :cond_3

    .line 28
    const-string p2, "android.view.accessibility.action.ARGUMENT_PROGRESS_VALUE"

    .line 30
    invoke-virtual {p3, p2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 33
    move-result v1

    .line 34
    if-nez v1, :cond_2

    .line 36
    goto :goto_0

    .line 37
    :cond_2
    invoke-virtual {p3, p2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    .line 40
    move-result p2

    .line 41
    invoke-virtual {v0, p1, p2}, Lo/W2;->s(IF)Z

    .line 44
    move-result p2

    .line 45
    if-eqz p2, :cond_3

    .line 47
    invoke-virtual {v0}, Lo/W2;->v()V

    .line 50
    invoke-virtual {v0}, Landroid/view/View;->postInvalidate()V

    .line 53
    invoke-virtual {p0, p1}, Lo/i7;->p(I)V

    .line 56
    return v3

    .line 57
    :cond_3
    :goto_0
    return v2

    .line 58
    :cond_4
    iget p3, v0, Lo/W2;->V:F

    .line 60
    const/4 v1, 0x0

    .line 61
    cmpl-float v1, p3, v1

    .line 63
    if-nez v1, :cond_5

    .line 65
    const/high16 p3, 0x3f800000    # 1.0f

    .line 67
    :cond_5
    iget v1, v0, Lo/W2;->R:F

    .line 69
    iget v5, v0, Lo/W2;->Q:F

    .line 71
    sub-float/2addr v1, v5

    .line 72
    div-float/2addr v1, p3

    .line 73
    const/16 v5, 0x14

    .line 75
    int-to-float v5, v5

    .line 76
    cmpg-float v6, v1, v5

    .line 78
    if-gtz v6, :cond_6

    .line 80
    goto :goto_1

    .line 81
    :cond_6
    div-float/2addr v1, v5

    .line 82
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    .line 85
    move-result v1

    .line 86
    int-to-float v1, v1

    .line 87
    mul-float/2addr p3, v1

    .line 88
    :goto_1
    if-ne p2, v4, :cond_7

    .line 90
    neg-float p3, p3

    .line 91
    :cond_7
    invoke-virtual {v0}, Lo/W2;->k()Z

    .line 94
    move-result p2

    .line 95
    if-eqz p2, :cond_8

    .line 97
    neg-float p3, p3

    .line 98
    :cond_8
    invoke-virtual {v0}, Lo/W2;->getValues()Ljava/util/List;

    .line 101
    move-result-object p2

    .line 102
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 105
    move-result-object p2

    .line 106
    check-cast p2, Ljava/lang/Float;

    .line 108
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    .line 111
    move-result p2

    .line 112
    add-float/2addr p2, p3

    .line 113
    invoke-virtual {v0}, Lcom/google/android/material/slider/Slider;->getValueFrom()F

    .line 116
    move-result p3

    .line 117
    invoke-virtual {v0}, Lcom/google/android/material/slider/Slider;->getValueTo()F

    .line 120
    move-result v1

    .line 121
    cmpg-float v4, p2, p3

    .line 123
    if-gez v4, :cond_9

    .line 125
    move p2, p3

    .line 126
    goto :goto_2

    .line 127
    :cond_9
    cmpl-float p3, p2, v1

    .line 129
    if-lez p3, :cond_a

    .line 131
    move p2, v1

    .line 132
    :cond_a
    :goto_2
    invoke-virtual {v0, p1, p2}, Lo/W2;->s(IF)Z

    .line 135
    move-result p2

    .line 136
    if-eqz p2, :cond_b

    .line 138
    invoke-virtual {v0}, Lo/W2;->v()V

    .line 141
    invoke-virtual {v0}, Landroid/view/View;->postInvalidate()V

    .line 144
    invoke-virtual {p0, p1}, Lo/i7;->p(I)V

    .line 147
    return v3

    .line 148
    :cond_b
    return v2
.end method

.method public final u(ILo/D;)V
    .locals 7

    .line 1
    sget-object v0, Lo/y;->m:Lo/y;

    .line 3
    invoke-virtual {p2, v0}, Lo/D;->b(Lo/y;)V

    .line 6
    iget-object v0, p0, Lo/U2;->q:Lcom/google/android/material/slider/Slider;

    .line 8
    invoke-virtual {v0}, Lo/W2;->getValues()Ljava/util/List;

    .line 11
    move-result-object v1

    .line 12
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 15
    move-result-object v2

    .line 16
    check-cast v2, Ljava/lang/Float;

    .line 18
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 21
    move-result v3

    .line 22
    invoke-virtual {v0}, Lcom/google/android/material/slider/Slider;->getValueFrom()F

    .line 25
    move-result v4

    .line 26
    invoke-virtual {v0}, Lcom/google/android/material/slider/Slider;->getValueTo()F

    .line 29
    move-result v5

    .line 30
    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    .line 33
    move-result v6

    .line 34
    if-eqz v6, :cond_1

    .line 36
    cmpl-float v6, v3, v4

    .line 38
    if-lez v6, :cond_0

    .line 40
    const/16 v6, 0x2000

    .line 42
    invoke-virtual {p2, v6}, Lo/D;->a(I)V

    .line 45
    :cond_0
    cmpg-float v6, v3, v5

    .line 47
    if-gez v6, :cond_1

    .line 49
    const/16 v6, 0x1000

    .line 51
    invoke-virtual {p2, v6}, Lo/D;->a(I)V

    .line 54
    :cond_1
    const/4 v6, 0x1

    .line 55
    invoke-static {v6, v4, v5, v3}, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->obtain(IFFF)Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

    .line 58
    move-result-object v4

    .line 59
    iget-object v5, p2, Lo/D;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 61
    invoke-virtual {v5, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setRangeInfo(Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;)V

    .line 64
    const-class v4, Landroid/widget/SeekBar;

    .line 66
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 69
    move-result-object v4

    .line 70
    invoke-virtual {p2, v4}, Lo/D;->i(Ljava/lang/CharSequence;)V

    .line 73
    new-instance p2, Ljava/lang/StringBuilder;

    .line 75
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 78
    invoke-virtual {v0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    .line 81
    move-result-object v4

    .line 82
    if-eqz v4, :cond_2

    .line 84
    invoke-virtual {v0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    .line 87
    move-result-object v4

    .line 88
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 91
    const-string v4, ","

    .line 93
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    :cond_2
    float-to-int v4, v3

    .line 97
    int-to-float v4, v4

    .line 98
    cmpl-float v3, v4, v3

    .line 100
    if-nez v3, :cond_3

    .line 102
    const-string v3, "%.0f"

    .line 104
    goto :goto_0

    .line 105
    :cond_3
    const-string v3, "%.2f"

    .line 107
    :goto_0
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 110
    move-result-object v2

    .line 111
    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 114
    move-result-object v2

    .line 115
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 118
    move-result-object v3

    .line 119
    const v4, 0x7f0e0058

    .line 122
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 125
    move-result-object v3

    .line 126
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 129
    move-result v1

    .line 130
    if-le v1, v6, :cond_6

    .line 132
    invoke-virtual {v0}, Lo/W2;->getValues()Ljava/util/List;

    .line 135
    move-result-object v1

    .line 136
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 139
    move-result v1

    .line 140
    sub-int/2addr v1, v6

    .line 141
    if-ne p1, v1, :cond_4

    .line 143
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 146
    move-result-object v1

    .line 147
    const v3, 0x7f0e0056

    .line 150
    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 153
    move-result-object v1

    .line 154
    :goto_1
    move-object v3, v1

    .line 155
    goto :goto_2

    .line 156
    :cond_4
    if-nez p1, :cond_5

    .line 158
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 161
    move-result-object v1

    .line 162
    const v3, 0x7f0e0057

    .line 165
    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 168
    move-result-object v1

    .line 169
    goto :goto_1

    .line 170
    :cond_5
    const-string v1, ""

    .line 172
    goto :goto_1

    .line 173
    :cond_6
    :goto_2
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 175
    new-instance v1, Ljava/lang/StringBuilder;

    .line 177
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 180
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    const-string v3, ", "

    .line 185
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 194
    move-result-object v1

    .line 195
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 201
    move-result-object p2

    .line 202
    invoke-virtual {v5, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 205
    iget-object p2, p0, Lo/U2;->r:Landroid/graphics/Rect;

    .line 207
    invoke-virtual {v0, p1, p2}, Lo/W2;->u(ILandroid/graphics/Rect;)V

    .line 210
    invoke-virtual {v5, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 213
    return-void
.end method
