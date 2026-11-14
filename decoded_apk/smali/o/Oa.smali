.class public final Lo/Oa;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/android/material/button/MaterialButton;

.field public b:Lo/Ae;

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:Landroid/graphics/PorterDuff$Mode;

.field public j:Landroid/content/res/ColorStateList;

.field public k:Landroid/content/res/ColorStateList;

.field public l:Landroid/content/res/ColorStateList;

.field public m:Lo/eb;

.field public n:Z

.field public o:Z

.field public p:Z

.field public q:Z

.field public r:Z

.field public s:Landroid/graphics/drawable/RippleDrawable;

.field public t:I


# direct methods
.method public constructor <init>(Lcom/google/android/material/button/MaterialButton;Lo/Ae;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lo/Oa;->n:Z

    .line 7
    iput-boolean v0, p0, Lo/Oa;->o:Z

    .line 9
    iput-boolean v0, p0, Lo/Oa;->p:Z

    .line 11
    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Lo/Oa;->r:Z

    .line 14
    iput-object p1, p0, Lo/Oa;->a:Lcom/google/android/material/button/MaterialButton;

    .line 16
    iput-object p2, p0, Lo/Oa;->b:Lo/Ae;

    .line 18
    return-void
.end method


# virtual methods
.method public final a()Lo/Le;
    .locals 3

    .line 1
    iget-object v0, p0, Lo/Oa;->s:Landroid/graphics/drawable/RippleDrawable;

    .line 3
    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x1

    .line 10
    if-le v0, v1, :cond_1

    .line 12
    iget-object v0, p0, Lo/Oa;->s:Landroid/graphics/drawable/RippleDrawable;

    .line 14
    invoke-virtual {v0}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    .line 17
    move-result v0

    .line 18
    const/4 v2, 0x2

    .line 19
    if-le v0, v2, :cond_0

    .line 21
    iget-object v0, p0, Lo/Oa;->s:Landroid/graphics/drawable/RippleDrawable;

    .line 23
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Lo/Le;

    .line 29
    return-object v0

    .line 30
    :cond_0
    iget-object v0, p0, Lo/Oa;->s:Landroid/graphics/drawable/RippleDrawable;

    .line 32
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 35
    move-result-object v0

    .line 36
    check-cast v0, Lo/Le;

    .line 38
    return-object v0

    .line 39
    :cond_1
    const/4 v0, 0x0

    .line 40
    return-object v0
.end method

.method public final b(Z)Lo/eb;
    .locals 2

    .line 1
    iget-object v0, p0, Lo/Oa;->s:Landroid/graphics/drawable/RippleDrawable;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    .line 8
    move-result v0

    .line 9
    if-lez v0, :cond_0

    .line 11
    iget-object v0, p0, Lo/Oa;->s:Landroid/graphics/drawable/RippleDrawable;

    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Landroid/graphics/drawable/InsetDrawable;

    .line 20
    invoke-virtual {v0}, Landroid/graphics/drawable/DrawableWrapper;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    .line 26
    xor-int/lit8 p1, p1, 0x1

    .line 28
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 31
    move-result-object p1

    .line 32
    check-cast p1, Lo/eb;

    .line 34
    return-object p1

    .line 35
    :cond_0
    const/4 p1, 0x0

    .line 36
    return-object p1
.end method

.method public final c(Lo/Ae;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lo/Oa;->b:Lo/Ae;

    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0}, Lo/Oa;->b(Z)Lo/eb;

    .line 7
    move-result-object v1

    .line 8
    if-eqz v1, :cond_0

    .line 10
    invoke-virtual {p0, v0}, Lo/Oa;->b(Z)Lo/eb;

    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0, p1}, Lo/eb;->setShapeAppearanceModel(Lo/Ae;)V

    .line 17
    :cond_0
    const/4 v0, 0x1

    .line 18
    invoke-virtual {p0, v0}, Lo/Oa;->b(Z)Lo/eb;

    .line 21
    move-result-object v1

    .line 22
    if-eqz v1, :cond_1

    .line 24
    invoke-virtual {p0, v0}, Lo/Oa;->b(Z)Lo/eb;

    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v0, p1}, Lo/eb;->setShapeAppearanceModel(Lo/Ae;)V

    .line 31
    :cond_1
    invoke-virtual {p0}, Lo/Oa;->a()Lo/Le;

    .line 34
    move-result-object v0

    .line 35
    if-eqz v0, :cond_2

    .line 37
    invoke-virtual {p0}, Lo/Oa;->a()Lo/Le;

    .line 40
    move-result-object v0

    .line 41
    invoke-interface {v0, p1}, Lo/Le;->setShapeAppearanceModel(Lo/Ae;)V

    .line 44
    :cond_2
    return-void
.end method

.method public final d(II)V
    .locals 8

    .line 1
    sget-object v0, Lo/Dh;->a:Ljava/util/WeakHashMap;

    .line 3
    iget-object v0, p0, Lo/Oa;->a:Lcom/google/android/material/button/MaterialButton;

    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getPaddingStart()I

    .line 8
    move-result v1

    .line 9
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    .line 12
    move-result v2

    .line 13
    invoke-virtual {v0}, Landroid/view/View;->getPaddingEnd()I

    .line 16
    move-result v3

    .line 17
    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    .line 20
    move-result v4

    .line 21
    iget v5, p0, Lo/Oa;->e:I

    .line 23
    iget v6, p0, Lo/Oa;->f:I

    .line 25
    iput p2, p0, Lo/Oa;->f:I

    .line 27
    iput p1, p0, Lo/Oa;->e:I

    .line 29
    iget-boolean v7, p0, Lo/Oa;->o:Z

    .line 31
    if-nez v7, :cond_0

    .line 33
    invoke-virtual {p0}, Lo/Oa;->e()V

    .line 36
    :cond_0
    add-int/2addr v2, p1

    .line 37
    sub-int/2addr v2, v5

    .line 38
    add-int/2addr v4, p2

    .line 39
    sub-int/2addr v4, v6

    .line 40
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 43
    return-void
.end method

.method public final e()V
    .locals 12

    .line 1
    const/4 v0, 0x0

    .line 2
    new-instance v1, Lo/eb;

    .line 4
    iget-object v2, p0, Lo/Oa;->b:Lo/Ae;

    .line 6
    invoke-direct {v1, v2}, Lo/eb;-><init>(Lo/Ae;)V

    .line 9
    iget-object v2, p0, Lo/Oa;->a:Lcom/google/android/material/button/MaterialButton;

    .line 11
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 14
    move-result-object v3

    .line 15
    invoke-virtual {v1, v3}, Lo/eb;->i(Landroid/content/Context;)V

    .line 18
    iget-object v3, p0, Lo/Oa;->j:Landroid/content/res/ColorStateList;

    .line 20
    invoke-virtual {v1, v3}, Lo/eb;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 23
    iget-object v3, p0, Lo/Oa;->i:Landroid/graphics/PorterDuff$Mode;

    .line 25
    if-eqz v3, :cond_0

    .line 27
    invoke-virtual {v1, v3}, Lo/eb;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 30
    :cond_0
    iget v3, p0, Lo/Oa;->h:I

    .line 32
    int-to-float v3, v3

    .line 33
    iget-object v4, p0, Lo/Oa;->k:Landroid/content/res/ColorStateList;

    .line 35
    iget-object v5, v1, Lo/eb;->a:Lo/db;

    .line 37
    iput v3, v5, Lo/db;->j:F

    .line 39
    invoke-virtual {v1}, Lo/eb;->invalidateSelf()V

    .line 42
    invoke-virtual {v1, v4}, Lo/eb;->m(Landroid/content/res/ColorStateList;)V

    .line 45
    new-instance v3, Lo/eb;

    .line 47
    iget-object v4, p0, Lo/Oa;->b:Lo/Ae;

    .line 49
    invoke-direct {v3, v4}, Lo/eb;-><init>(Lo/Ae;)V

    .line 52
    invoke-virtual {v3, v0}, Lo/eb;->setTint(I)V

    .line 55
    iget v4, p0, Lo/Oa;->h:I

    .line 57
    int-to-float v4, v4

    .line 58
    iget-boolean v5, p0, Lo/Oa;->n:Z

    .line 60
    if-eqz v5, :cond_1

    .line 62
    const v5, 0x7f030120

    .line 65
    invoke-static {v2, v5}, Lo/Ha;->E(Landroid/view/View;I)I

    .line 68
    move-result v5

    .line 69
    goto :goto_0

    .line 70
    :cond_1
    move v5, v0

    .line 71
    :goto_0
    iget-object v6, v3, Lo/eb;->a:Lo/db;

    .line 73
    iput v4, v6, Lo/db;->j:F

    .line 75
    invoke-virtual {v3}, Lo/eb;->invalidateSelf()V

    .line 78
    invoke-static {v5}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 81
    move-result-object v4

    .line 82
    invoke-virtual {v3, v4}, Lo/eb;->m(Landroid/content/res/ColorStateList;)V

    .line 85
    new-instance v4, Lo/eb;

    .line 87
    iget-object v5, p0, Lo/Oa;->b:Lo/Ae;

    .line 89
    invoke-direct {v4, v5}, Lo/eb;-><init>(Lo/Ae;)V

    .line 92
    iput-object v4, p0, Lo/Oa;->m:Lo/eb;

    .line 94
    const/4 v5, -0x1

    .line 95
    invoke-virtual {v4, v5}, Lo/eb;->setTint(I)V

    .line 98
    new-instance v4, Landroid/graphics/drawable/RippleDrawable;

    .line 100
    iget-object v5, p0, Lo/Oa;->l:Landroid/content/res/ColorStateList;

    .line 102
    invoke-static {v5}, Lo/ee;->a(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    .line 105
    move-result-object v5

    .line 106
    new-instance v7, Landroid/graphics/drawable/LayerDrawable;

    .line 108
    const/4 v6, 0x2

    .line 109
    new-array v6, v6, [Landroid/graphics/drawable/Drawable;

    .line 111
    aput-object v3, v6, v0

    .line 113
    const/4 v3, 0x1

    .line 114
    aput-object v1, v6, v3

    .line 116
    invoke-direct {v7, v6}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 119
    new-instance v1, Landroid/graphics/drawable/InsetDrawable;

    .line 121
    iget v8, p0, Lo/Oa;->c:I

    .line 123
    iget v9, p0, Lo/Oa;->e:I

    .line 125
    iget v10, p0, Lo/Oa;->d:I

    .line 127
    iget v11, p0, Lo/Oa;->f:I

    .line 129
    move-object v6, v1

    .line 130
    invoke-direct/range {v6 .. v11}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    .line 133
    iget-object v3, p0, Lo/Oa;->m:Lo/eb;

    .line 135
    invoke-direct {v4, v5, v1, v3}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 138
    iput-object v4, p0, Lo/Oa;->s:Landroid/graphics/drawable/RippleDrawable;

    .line 140
    invoke-virtual {v2, v4}, Lcom/google/android/material/button/MaterialButton;->setInternalBackground(Landroid/graphics/drawable/Drawable;)V

    .line 143
    invoke-virtual {p0, v0}, Lo/Oa;->b(Z)Lo/eb;

    .line 146
    move-result-object v0

    .line 147
    if-eqz v0, :cond_2

    .line 149
    iget v1, p0, Lo/Oa;->t:I

    .line 151
    int-to-float v1, v1

    .line 152
    invoke-virtual {v0, v1}, Lo/eb;->j(F)V

    .line 155
    invoke-virtual {v2}, Landroid/view/View;->getDrawableState()[I

    .line 158
    move-result-object v1

    .line 159
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 162
    :cond_2
    return-void
.end method

.method public final f()V
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lo/Oa;->b(Z)Lo/eb;

    .line 5
    move-result-object v1

    .line 6
    const/4 v2, 0x1

    .line 7
    invoke-virtual {p0, v2}, Lo/Oa;->b(Z)Lo/eb;

    .line 10
    move-result-object v2

    .line 11
    if-eqz v1, :cond_1

    .line 13
    iget v3, p0, Lo/Oa;->h:I

    .line 15
    int-to-float v3, v3

    .line 16
    iget-object v4, p0, Lo/Oa;->k:Landroid/content/res/ColorStateList;

    .line 18
    iget-object v5, v1, Lo/eb;->a:Lo/db;

    .line 20
    iput v3, v5, Lo/db;->j:F

    .line 22
    invoke-virtual {v1}, Lo/eb;->invalidateSelf()V

    .line 25
    invoke-virtual {v1, v4}, Lo/eb;->m(Landroid/content/res/ColorStateList;)V

    .line 28
    if-eqz v2, :cond_1

    .line 30
    iget v1, p0, Lo/Oa;->h:I

    .line 32
    int-to-float v1, v1

    .line 33
    iget-boolean v3, p0, Lo/Oa;->n:Z

    .line 35
    if-eqz v3, :cond_0

    .line 37
    iget-object v0, p0, Lo/Oa;->a:Lcom/google/android/material/button/MaterialButton;

    .line 39
    const v3, 0x7f030120

    .line 42
    invoke-static {v0, v3}, Lo/Ha;->E(Landroid/view/View;I)I

    .line 45
    move-result v0

    .line 46
    :cond_0
    iget-object v3, v2, Lo/eb;->a:Lo/db;

    .line 48
    iput v1, v3, Lo/db;->j:F

    .line 50
    invoke-virtual {v2}, Lo/eb;->invalidateSelf()V

    .line 53
    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 56
    move-result-object v0

    .line 57
    invoke-virtual {v2, v0}, Lo/eb;->m(Landroid/content/res/ColorStateList;)V

    .line 60
    :cond_1
    return-void
.end method
