.class public final Lo/p2;
.super Landroid/widget/ToggleButton;
.source "SourceFile"


# instance fields
.field public final a:Lo/W0;

.field public final b:Lo/f2;

.field public c:Lo/B1;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 1
    const v0, 0x101004b

    .line 4
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/ToggleButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 10
    move-result-object p1

    .line 11
    invoke-static {p0, p1}, Lo/Tf;->a(Landroid/view/View;Landroid/content/Context;)V

    .line 14
    new-instance p1, Lo/W0;

    .line 16
    invoke-direct {p1, p0}, Lo/W0;-><init>(Landroid/view/View;)V

    .line 19
    iput-object p1, p0, Lo/p2;->a:Lo/W0;

    .line 21
    invoke-virtual {p1, p2, v0}, Lo/W0;->d(Landroid/util/AttributeSet;I)V

    .line 24
    new-instance p1, Lo/f2;

    .line 26
    invoke-direct {p1, p0}, Lo/f2;-><init>(Landroid/widget/TextView;)V

    .line 29
    iput-object p1, p0, Lo/p2;->b:Lo/f2;

    .line 31
    invoke-virtual {p1, p2, v0}, Lo/f2;->f(Landroid/util/AttributeSet;I)V

    .line 34
    invoke-direct {p0}, Lo/p2;->getEmojiTextViewHelper()Lo/B1;

    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {p1, p2, v0}, Lo/B1;->b(Landroid/util/AttributeSet;I)V

    .line 41
    return-void
.end method

.method private getEmojiTextViewHelper()Lo/B1;
    .locals 1

    .line 1
    iget-object v0, p0, Lo/p2;->c:Lo/B1;

    .line 3
    if-nez v0, :cond_0

    .line 5
    new-instance v0, Lo/B1;

    .line 7
    invoke-direct {v0, p0}, Lo/B1;-><init>(Landroid/widget/TextView;)V

    .line 10
    iput-object v0, p0, Lo/p2;->c:Lo/B1;

    .line 12
    :cond_0
    iget-object v0, p0, Lo/p2;->c:Lo/B1;

    .line 14
    return-object v0
.end method


# virtual methods
.method public final drawableStateChanged()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/ToggleButton;->drawableStateChanged()V

    .line 4
    iget-object v0, p0, Lo/p2;->a:Lo/W0;

    .line 6
    if-eqz v0, :cond_0

    .line 8
    invoke-virtual {v0}, Lo/W0;->a()V

    .line 11
    :cond_0
    iget-object v0, p0, Lo/p2;->b:Lo/f2;

    .line 13
    if-eqz v0, :cond_1

    .line 15
    invoke-virtual {v0}, Lo/f2;->b()V

    .line 18
    :cond_1
    return-void
.end method

.method public getSupportBackgroundTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .line 1
    iget-object v0, p0, Lo/p2;->a:Lo/W0;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Lo/W0;->b()Landroid/content/res/ColorStateList;

    .line 8
    move-result-object v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    return-object v0
.end method

.method public getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .line 1
    iget-object v0, p0, Lo/p2;->a:Lo/W0;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Lo/W0;->c()Landroid/graphics/PorterDuff$Mode;

    .line 8
    move-result-object v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    return-object v0
.end method

.method public getSupportCompoundDrawablesTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .line 1
    iget-object v0, p0, Lo/p2;->b:Lo/f2;

    .line 3
    invoke-virtual {v0}, Lo/f2;->d()Landroid/content/res/ColorStateList;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getSupportCompoundDrawablesTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .line 1
    iget-object v0, p0, Lo/p2;->b:Lo/f2;

    .line 3
    invoke-virtual {v0}, Lo/f2;->e()Landroid/graphics/PorterDuff$Mode;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public setAllCaps(Z)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 4
    invoke-direct {p0}, Lo/p2;->getEmojiTextViewHelper()Lo/B1;

    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0, p1}, Lo/B1;->c(Z)V

    .line 11
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/ToggleButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4
    iget-object p1, p0, Lo/p2;->a:Lo/W0;

    .line 6
    if-eqz p1, :cond_0

    .line 8
    invoke-virtual {p1}, Lo/W0;->e()V

    .line 11
    :cond_0
    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 4
    iget-object v0, p0, Lo/p2;->a:Lo/W0;

    .line 6
    if-eqz v0, :cond_0

    .line 8
    invoke-virtual {v0, p1}, Lo/W0;->f(I)V

    .line 11
    :cond_0
    return-void
.end method

.method public final setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 4
    iget-object p1, p0, Lo/p2;->b:Lo/f2;

    .line 6
    if-eqz p1, :cond_0

    .line 8
    invoke-virtual {p1}, Lo/f2;->b()V

    .line 11
    :cond_0
    return-void
.end method

.method public final setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 4
    iget-object p1, p0, Lo/p2;->b:Lo/f2;

    .line 6
    if-eqz p1, :cond_0

    .line 8
    invoke-virtual {p1}, Lo/f2;->b()V

    .line 11
    :cond_0
    return-void
.end method

.method public setEmojiCompatEnabled(Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lo/p2;->getEmojiTextViewHelper()Lo/B1;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lo/B1;->d(Z)V

    .line 8
    return-void
.end method

.method public setFilters([Landroid/text/InputFilter;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lo/p2;->getEmojiTextViewHelper()Lo/B1;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lo/B1;->a([Landroid/text/InputFilter;)[Landroid/text/InputFilter;

    .line 8
    move-result-object p1

    .line 9
    invoke-super {p0, p1}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 12
    return-void
.end method

.method public setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lo/p2;->a:Lo/W0;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0, p1}, Lo/W0;->h(Landroid/content/res/ColorStateList;)V

    .line 8
    :cond_0
    return-void
.end method

.method public setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lo/p2;->a:Lo/W0;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0, p1}, Lo/W0;->i(Landroid/graphics/PorterDuff$Mode;)V

    .line 8
    :cond_0
    return-void
.end method

.method public setSupportCompoundDrawablesTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lo/p2;->b:Lo/f2;

    .line 3
    invoke-virtual {v0, p1}, Lo/f2;->l(Landroid/content/res/ColorStateList;)V

    .line 6
    invoke-virtual {v0}, Lo/f2;->b()V

    .line 9
    return-void
.end method

.method public setSupportCompoundDrawablesTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lo/p2;->b:Lo/f2;

    .line 3
    invoke-virtual {v0, p1}, Lo/f2;->m(Landroid/graphics/PorterDuff$Mode;)V

    .line 6
    invoke-virtual {v0}, Lo/f2;->b()V

    .line 9
    return-void
.end method
