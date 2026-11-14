.class public final Lo/S2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lo/S2;->a:I

    iput-object p2, p0, Lo/S2;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lo/S2;->b:Ljava/lang/Object;

    .line 3
    iget v1, p0, Lo/S2;->a:I

    .line 5
    packed-switch v1, :pswitch_data_0

    .line 8
    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    .line 10
    iget-object v0, v0, Lcom/google/android/material/textfield/TextInputLayout;->v0:Lo/d4;

    .line 12
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 15
    move-result-object p1

    .line 16
    check-cast p1, Ljava/lang/Float;

    .line 18
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 21
    move-result p1

    .line 22
    invoke-virtual {v0, p1}, Lo/d4;->k(F)V

    .line 25
    return-void

    .line 26
    :pswitch_0
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 29
    move-result-object p1

    .line 30
    check-cast p1, Ljava/lang/Float;

    .line 32
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 35
    move-result p1

    .line 36
    const/high16 v1, 0x437f0000    # 255.0f

    .line 38
    mul-float/2addr p1, v1

    .line 39
    float-to-int p1, p1

    .line 40
    check-cast v0, Lo/s7;

    .line 42
    iget-object v1, v0, Lo/s7;->c:Landroid/graphics/drawable/StateListDrawable;

    .line 44
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 47
    iget-object v1, v0, Lo/s7;->d:Landroid/graphics/drawable/Drawable;

    .line 49
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 52
    iget-object p1, v0, Lo/s7;->s:Landroidx/recyclerview/widget/RecyclerView;

    .line 54
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 57
    return-void

    .line 58
    :pswitch_1
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 61
    move-result-object p1

    .line 62
    check-cast p1, Ljava/lang/Float;

    .line 64
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 67
    move-result p1

    .line 68
    check-cast v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 70
    iget-object v0, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->i:Lo/eb;

    .line 72
    if-eqz v0, :cond_0

    .line 74
    iget-object v1, v0, Lo/eb;->a:Lo/db;

    .line 76
    iget v2, v1, Lo/db;->i:F

    .line 78
    cmpl-float v2, v2, p1

    .line 80
    if-eqz v2, :cond_0

    .line 82
    iput p1, v1, Lo/db;->i:F

    .line 84
    const/4 p1, 0x1

    .line 85
    iput-boolean p1, v0, Lo/eb;->e:Z

    .line 87
    invoke-virtual {v0}, Lo/eb;->invalidateSelf()V

    .line 90
    :cond_0
    return-void

    .line 91
    :pswitch_2
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 94
    move-result-object p1

    .line 95
    check-cast p1, Ljava/lang/Float;

    .line 97
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 100
    move-result p1

    .line 101
    check-cast v0, Lo/W2;

    .line 103
    iget-object v1, v0, Lo/W2;->l:Ljava/util/ArrayList;

    .line 105
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 108
    move-result-object v1

    .line 109
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 112
    move-result v2

    .line 113
    if-eqz v2, :cond_1

    .line 115
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 118
    move-result-object v2

    .line 119
    check-cast v2, Lo/mg;

    .line 121
    const v3, 0x3f99999a    # 1.2f

    .line 124
    iput v3, v2, Lo/mg;->M:F

    .line 126
    iput p1, v2, Lo/mg;->K:F

    .line 128
    iput p1, v2, Lo/mg;->L:F

    .line 130
    const/4 v3, 0x0

    .line 131
    const/high16 v4, 0x3f800000    # 1.0f

    .line 133
    const v5, 0x3e428f5c    # 0.19f

    .line 136
    invoke-static {v3, v4, v5, v4, p1}, Lo/Q0;->b(FFFFF)F

    .line 139
    move-result v3

    .line 140
    iput v3, v2, Lo/mg;->N:F

    .line 142
    invoke-virtual {v2}, Lo/eb;->invalidateSelf()V

    .line 145
    goto :goto_0

    .line 146
    :cond_1
    sget-object p1, Lo/Dh;->a:Ljava/util/WeakHashMap;

    .line 148
    invoke-virtual {v0}, Landroid/view/View;->postInvalidateOnAnimation()V

    .line 151
    return-void

    nop

    .line 153
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
