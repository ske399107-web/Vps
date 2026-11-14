.class public final Lo/bb;
.super Lo/X5;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        ">",
        "Lo/X5;"
    }
.end annotation


# instance fields
.field public A0:Lo/eb;

.field public B0:Z

.field public C0:Ljava/lang/CharSequence;

.field public D0:Ljava/lang/CharSequence;

.field public final g0:Ljava/util/LinkedHashSet;

.field public final h0:Ljava/util/LinkedHashSet;

.field public i0:I

.field public j0:Lo/Fc;

.field public k0:Lo/n3;

.field public l0:Lo/Va;

.field public m0:I

.field public n0:Ljava/lang/CharSequence;

.field public o0:Z

.field public p0:I

.field public q0:I

.field public r0:Ljava/lang/CharSequence;

.field public s0:I

.field public t0:Ljava/lang/CharSequence;

.field public u0:I

.field public v0:Ljava/lang/CharSequence;

.field public w0:I

.field public x0:Ljava/lang/CharSequence;

.field public y0:Landroid/widget/TextView;

.field public z0:Lcom/google/android/material/internal/CheckableImageButton;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lo/X5;-><init>()V

    .line 4
    new-instance v0, Ljava/util/LinkedHashSet;

    .line 6
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 9
    new-instance v0, Ljava/util/LinkedHashSet;

    .line 11
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 14
    new-instance v0, Ljava/util/LinkedHashSet;

    .line 16
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 19
    iput-object v0, p0, Lo/bb;->g0:Ljava/util/LinkedHashSet;

    .line 21
    new-instance v0, Ljava/util/LinkedHashSet;

    .line 23
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 26
    iput-object v0, p0, Lo/bb;->h0:Ljava/util/LinkedHashSet;

    .line 28
    return-void
.end method

.method public static I(Landroid/content/Context;)I
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    move-result-object p0

    .line 5
    const v0, 0x7f060275

    .line 8
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 11
    move-result v0

    .line 12
    invoke-static {}, Lo/Xg;->b()Ljava/util/Calendar;

    .line 15
    move-result-object v1

    .line 16
    const/4 v2, 0x5

    .line 17
    const/4 v3, 0x1

    .line 18
    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 21
    invoke-static {v1}, Lo/Xg;->a(Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 24
    move-result-object v1

    .line 25
    const/4 v4, 0x2

    .line 26
    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    .line 29
    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    .line 32
    const/4 v5, 0x7

    .line 33
    invoke-virtual {v1, v5}, Ljava/util/Calendar;->getMaximum(I)I

    .line 36
    move-result v5

    .line 37
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->getActualMaximum(I)I

    .line 40
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 43
    const v1, 0x7f06027b

    .line 46
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 49
    move-result v1

    .line 50
    const v2, 0x7f060289

    .line 53
    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 56
    move-result p0

    .line 57
    mul-int/2addr v0, v4

    .line 58
    mul-int/2addr v1, v5

    .line 59
    add-int/2addr v1, v0

    .line 60
    sub-int/2addr v5, v3

    .line 61
    mul-int/2addr v5, p0

    .line 62
    add-int/2addr v5, v1

    .line 63
    return v5
.end method

.method public static J(Landroid/content/Context;I)Z
    .locals 2

    .line 1
    const-class v0, Lo/Va;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    const v1, 0x7f0302f3

    .line 10
    invoke-static {p0, v1, v0}, Lo/Ha;->q0(Landroid/content/Context;ILjava/lang/String;)Landroid/util/TypedValue;

    .line 13
    move-result-object v0

    .line 14
    iget v0, v0, Landroid/util/TypedValue;->data:I

    .line 16
    filled-new-array {p1}, [I

    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    .line 23
    move-result-object p0

    .line 24
    const/4 p1, 0x0

    .line 25
    invoke-virtual {p0, p1, p1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 28
    move-result p1

    .line 29
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 32
    return p1
.end method


# virtual methods
.method public final G()Landroid/app/Dialog;
    .locals 6

    .line 1
    new-instance v0, Landroid/app/Dialog;

    .line 3
    invoke-virtual {p0}, Lo/T7;->C()Landroid/content/Context;

    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {p0}, Lo/T7;->C()Landroid/content/Context;

    .line 10
    iget v2, p0, Lo/bb;->i0:I

    .line 12
    const/4 v3, 0x0

    .line 13
    if-eqz v2, :cond_0

    .line 15
    invoke-direct {v0, v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 18
    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 21
    move-result-object v1

    .line 22
    const v2, 0x101020d

    .line 25
    invoke-static {v1, v2}, Lo/bb;->J(Landroid/content/Context;I)Z

    .line 28
    move-result v2

    .line 29
    iput-boolean v2, p0, Lo/bb;->o0:Z

    .line 31
    new-instance v2, Lo/eb;

    .line 33
    const v4, 0x7f0302f3

    .line 36
    const v5, 0x7f0f0420

    .line 39
    invoke-direct {v2, v1, v3, v4, v5}, Lo/eb;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 42
    iput-object v2, p0, Lo/bb;->A0:Lo/eb;

    .line 44
    sget-object v2, Lo/fd;->l:[I

    .line 46
    invoke-virtual {v1, v3, v2, v4, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 49
    move-result-object v2

    .line 50
    const/4 v3, 0x1

    .line 51
    const/4 v4, 0x0

    .line 52
    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 55
    move-result v3

    .line 56
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 59
    iget-object v2, p0, Lo/bb;->A0:Lo/eb;

    .line 61
    invoke-virtual {v2, v1}, Lo/eb;->i(Landroid/content/Context;)V

    .line 64
    iget-object v1, p0, Lo/bb;->A0:Lo/eb;

    .line 66
    invoke-static {v3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 69
    move-result-object v2

    .line 70
    invoke-virtual {v1, v2}, Lo/eb;->k(Landroid/content/res/ColorStateList;)V

    .line 73
    iget-object v1, p0, Lo/bb;->A0:Lo/eb;

    .line 75
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 78
    move-result-object v2

    .line 79
    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 82
    move-result-object v2

    .line 83
    sget-object v3, Lo/Dh;->a:Ljava/util/WeakHashMap;

    .line 85
    invoke-static {v2}, Lo/vh;->e(Landroid/view/View;)F

    .line 88
    move-result v2

    .line 89
    invoke-virtual {v1, v2}, Lo/eb;->j(F)V

    .line 92
    return-object v0

    .line 93
    :cond_0
    invoke-virtual {p0}, Lo/bb;->H()V

    .line 96
    throw v3
.end method

.method public final H()V
    .locals 2

    .line 1
    iget-object v0, p0, Lo/T7;->f:Landroid/os/Bundle;

    .line 3
    const-string v1, "DATE_SELECTOR_KEY"

    .line 5
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 8
    move-result-object v0

    .line 9
    if-nez v0, :cond_0

    .line 11
    return-void

    .line 12
    :cond_0
    new-instance v0, Ljava/lang/ClassCastException;

    .line 14
    invoke-direct {v0}, Ljava/lang/ClassCastException;-><init>()V

    .line 17
    throw v0
.end method

.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lo/bb;->g0:Ljava/util/LinkedHashSet;

    .line 3
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 7
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Landroid/content/DialogInterface$OnCancelListener;

    .line 19
    invoke-interface {v1, p1}, Landroid/content/DialogInterface$OnCancelListener;->onCancel(Landroid/content/DialogInterface;)V

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    return-void
.end method

.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lo/bb;->h0:Ljava/util/LinkedHashSet;

    .line 3
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 7
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Landroid/content/DialogInterface$OnDismissListener;

    .line 19
    invoke-interface {v1, p1}, Landroid/content/DialogInterface$OnDismissListener;->onDismiss(Landroid/content/DialogInterface;)V

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    iget-object v0, p0, Lo/T7;->E:Landroid/view/View;

    .line 25
    check-cast v0, Landroid/view/ViewGroup;

    .line 27
    if-eqz v0, :cond_1

    .line 29
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 32
    :cond_1
    invoke-super {p0, p1}, Lo/X5;->onDismiss(Landroid/content/DialogInterface;)V

    .line 35
    return-void
.end method

.method public final s(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lo/X5;->s(Landroid/os/Bundle;)V

    .line 4
    if-nez p1, :cond_0

    .line 6
    iget-object p1, p0, Lo/T7;->f:Landroid/os/Bundle;

    .line 8
    :cond_0
    const-string v0, "OVERRIDE_THEME_RES_ID"

    .line 10
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 13
    move-result v0

    .line 14
    iput v0, p0, Lo/bb;->i0:I

    .line 16
    const-string v0, "DATE_SELECTOR_KEY"

    .line 18
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 21
    move-result-object v0

    .line 22
    if-nez v0, :cond_5

    .line 24
    const-string v0, "CALENDAR_CONSTRAINTS_KEY"

    .line 26
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Lo/n3;

    .line 32
    iput-object v0, p0, Lo/bb;->k0:Lo/n3;

    .line 34
    const-string v0, "DAY_VIEW_DECORATOR_KEY"

    .line 36
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 39
    move-result-object v0

    .line 40
    if-nez v0, :cond_4

    .line 42
    const-string v0, "TITLE_TEXT_RES_ID_KEY"

    .line 44
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 47
    move-result v0

    .line 48
    iput v0, p0, Lo/bb;->m0:I

    .line 50
    const-string v0, "TITLE_TEXT_KEY"

    .line 52
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 55
    move-result-object v0

    .line 56
    iput-object v0, p0, Lo/bb;->n0:Ljava/lang/CharSequence;

    .line 58
    const-string v0, "INPUT_MODE_KEY"

    .line 60
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 63
    move-result v0

    .line 64
    iput v0, p0, Lo/bb;->p0:I

    .line 66
    const-string v0, "POSITIVE_BUTTON_TEXT_RES_ID_KEY"

    .line 68
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 71
    move-result v0

    .line 72
    iput v0, p0, Lo/bb;->q0:I

    .line 74
    const-string v0, "POSITIVE_BUTTON_TEXT_KEY"

    .line 76
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 79
    move-result-object v0

    .line 80
    iput-object v0, p0, Lo/bb;->r0:Ljava/lang/CharSequence;

    .line 82
    const-string v0, "POSITIVE_BUTTON_CONTENT_DESCRIPTION_RES_ID_KEY"

    .line 84
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 87
    move-result v0

    .line 88
    iput v0, p0, Lo/bb;->s0:I

    .line 90
    const-string v0, "POSITIVE_BUTTON_CONTENT_DESCRIPTION_KEY"

    .line 92
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 95
    move-result-object v0

    .line 96
    iput-object v0, p0, Lo/bb;->t0:Ljava/lang/CharSequence;

    .line 98
    const-string v0, "NEGATIVE_BUTTON_TEXT_RES_ID_KEY"

    .line 100
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 103
    move-result v0

    .line 104
    iput v0, p0, Lo/bb;->u0:I

    .line 106
    const-string v0, "NEGATIVE_BUTTON_TEXT_KEY"

    .line 108
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 111
    move-result-object v0

    .line 112
    iput-object v0, p0, Lo/bb;->v0:Ljava/lang/CharSequence;

    .line 114
    const-string v0, "NEGATIVE_BUTTON_CONTENT_DESCRIPTION_RES_ID_KEY"

    .line 116
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 119
    move-result v0

    .line 120
    iput v0, p0, Lo/bb;->w0:I

    .line 122
    const-string v0, "NEGATIVE_BUTTON_CONTENT_DESCRIPTION_KEY"

    .line 124
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 127
    move-result-object p1

    .line 128
    iput-object p1, p0, Lo/bb;->x0:Ljava/lang/CharSequence;

    .line 130
    iget-object p1, p0, Lo/bb;->n0:Ljava/lang/CharSequence;

    .line 132
    if-eqz p1, :cond_1

    .line 134
    goto :goto_0

    .line 135
    :cond_1
    invoke-virtual {p0}, Lo/T7;->C()Landroid/content/Context;

    .line 138
    move-result-object p1

    .line 139
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 142
    move-result-object p1

    .line 143
    iget v0, p0, Lo/bb;->m0:I

    .line 145
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    .line 148
    move-result-object p1

    .line 149
    :goto_0
    iput-object p1, p0, Lo/bb;->C0:Ljava/lang/CharSequence;

    .line 151
    if-eqz p1, :cond_2

    .line 153
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 156
    move-result-object v0

    .line 157
    const-string v1, "\n"

    .line 159
    invoke-static {v0, v1}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    .line 162
    move-result-object v0

    .line 163
    array-length v1, v0

    .line 164
    const/4 v2, 0x1

    .line 165
    if-le v1, v2, :cond_3

    .line 167
    const/4 p1, 0x0

    .line 168
    aget-object p1, v0, p1

    .line 170
    goto :goto_1

    .line 171
    :cond_2
    const/4 p1, 0x0

    .line 172
    :cond_3
    :goto_1
    iput-object p1, p0, Lo/bb;->D0:Ljava/lang/CharSequence;

    .line 174
    return-void

    .line 175
    :cond_4
    new-instance p1, Ljava/lang/ClassCastException;

    .line 177
    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    .line 180
    throw p1

    .line 181
    :cond_5
    new-instance p1, Ljava/lang/ClassCastException;

    .line 183
    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    .line 186
    throw p1
.end method

.method public final t(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    .line 1
    iget-boolean v0, p0, Lo/bb;->o0:Z

    .line 3
    if-eqz v0, :cond_0

    .line 5
    const v0, 0x7f0b005b

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const v0, 0x7f0b005a

    .line 12
    :goto_0
    invoke-virtual {p1, v0, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 19
    move-result-object p2

    .line 20
    iget-boolean v0, p0, Lo/bb;->o0:Z

    .line 22
    if-eqz v0, :cond_1

    .line 24
    const v0, 0x7f080125

    .line 27
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 30
    move-result-object v0

    .line 31
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 33
    invoke-static {p2}, Lo/bb;->I(Landroid/content/Context;)I

    .line 36
    move-result v2

    .line 37
    const/4 v3, -0x2

    .line 38
    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 41
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 44
    goto :goto_1

    .line 45
    :cond_1
    const v0, 0x7f080126

    .line 48
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 51
    move-result-object v0

    .line 52
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 54
    invoke-static {p2}, Lo/bb;->I(Landroid/content/Context;)I

    .line 57
    move-result v2

    .line 58
    const/4 v3, -0x1

    .line 59
    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 62
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 65
    :goto_1
    const v0, 0x7f080131

    .line 68
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 71
    move-result-object v0

    .line 72
    check-cast v0, Landroid/widget/TextView;

    .line 74
    sget-object v1, Lo/Dh;->a:Ljava/util/WeakHashMap;

    .line 76
    const/4 v1, 0x1

    .line 77
    invoke-virtual {v0, v1}, Landroid/view/View;->setAccessibilityLiveRegion(I)V

    .line 80
    const v0, 0x7f080133

    .line 83
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 86
    move-result-object v0

    .line 87
    check-cast v0, Lcom/google/android/material/internal/CheckableImageButton;

    .line 89
    iput-object v0, p0, Lo/bb;->z0:Lcom/google/android/material/internal/CheckableImageButton;

    .line 91
    const v0, 0x7f080137

    .line 94
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 97
    move-result-object v0

    .line 98
    check-cast v0, Landroid/widget/TextView;

    .line 100
    iput-object v0, p0, Lo/bb;->y0:Landroid/widget/TextView;

    .line 102
    iget-object v0, p0, Lo/bb;->z0:Lcom/google/android/material/internal/CheckableImageButton;

    .line 104
    const-string v2, "TOGGLE_BUTTON_TAG"

    .line 106
    invoke-virtual {v0, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 109
    iget-object v0, p0, Lo/bb;->z0:Lcom/google/android/material/internal/CheckableImageButton;

    .line 111
    new-instance v2, Landroid/graphics/drawable/StateListDrawable;

    .line 113
    invoke-direct {v2}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 116
    const v3, 0x10100a0

    .line 119
    filled-new-array {v3}, [I

    .line 122
    move-result-object v3

    .line 123
    const v4, 0x7f0700b0

    .line 126
    invoke-static {p2, v4}, Lo/L1;->z(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 129
    move-result-object v4

    .line 130
    invoke-virtual {v2, v3, v4}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 133
    const/4 v3, 0x0

    .line 134
    new-array v4, v3, [I

    .line 136
    const v5, 0x7f0700b2

    .line 139
    invoke-static {p2, v5}, Lo/L1;->z(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 142
    move-result-object p2

    .line 143
    invoke-virtual {v2, v4, p2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 146
    invoke-virtual {v0, v2}, Lo/C1;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 149
    iget-object p2, p0, Lo/bb;->z0:Lcom/google/android/material/internal/CheckableImageButton;

    .line 151
    iget v0, p0, Lo/bb;->p0:I

    .line 153
    if-eqz v0, :cond_2

    .line 155
    move v3, v1

    .line 156
    :cond_2
    invoke-virtual {p2, v3}, Lcom/google/android/material/internal/CheckableImageButton;->setChecked(Z)V

    .line 159
    iget-object p2, p0, Lo/bb;->z0:Lcom/google/android/material/internal/CheckableImageButton;

    .line 161
    const/4 v0, 0x0

    .line 162
    invoke-static {p2, v0}, Lo/Dh;->l(Landroid/view/View;Lo/r;)V

    .line 165
    iget-object p2, p0, Lo/bb;->z0:Lcom/google/android/material/internal/CheckableImageButton;

    .line 167
    iget v2, p0, Lo/bb;->p0:I

    .line 169
    if-ne v2, v1, :cond_3

    .line 171
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 174
    move-result-object p2

    .line 175
    const v1, 0x7f0e0090

    .line 178
    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 181
    move-result-object p2

    .line 182
    goto :goto_2

    .line 183
    :cond_3
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 186
    move-result-object p2

    .line 187
    const v1, 0x7f0e0092

    .line 190
    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 193
    move-result-object p2

    .line 194
    :goto_2
    iget-object v1, p0, Lo/bb;->z0:Lcom/google/android/material/internal/CheckableImageButton;

    .line 196
    invoke-virtual {v1, p2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 199
    iget-object p2, p0, Lo/bb;->z0:Lcom/google/android/material/internal/CheckableImageButton;

    .line 201
    new-instance v1, Lo/W3;

    .line 203
    const/4 v2, 0x2

    .line 204
    invoke-direct {v1, v2, p0}, Lo/W3;-><init>(ILjava/lang/Object;)V

    .line 207
    invoke-virtual {p2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 210
    const p2, 0x7f080082

    .line 213
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 216
    move-result-object p1

    .line 217
    check-cast p1, Landroid/widget/Button;

    .line 219
    invoke-virtual {p0}, Lo/bb;->H()V

    .line 222
    throw v0
.end method

.method public final x(Landroid/os/Bundle;)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 3
    move-object/from16 v1, p1

    .line 5
    invoke-super/range {p0 .. p1}, Lo/X5;->x(Landroid/os/Bundle;)V

    .line 8
    const-string v2, "OVERRIDE_THEME_RES_ID"

    .line 10
    iget v3, v0, Lo/bb;->i0:I

    .line 12
    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 15
    const-string v2, "DATE_SELECTOR_KEY"

    .line 17
    const/4 v3, 0x0

    .line 18
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 21
    new-instance v2, Lo/m3;

    .line 23
    iget-object v4, v0, Lo/bb;->k0:Lo/n3;

    .line 25
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 28
    sget v5, Lo/m3;->b:I

    .line 30
    sget v5, Lo/m3;->b:I

    .line 32
    iget-object v5, v4, Lo/n3;->a:Lo/Ib;

    .line 34
    iget-wide v5, v5, Lo/Ib;->f:J

    .line 36
    iget-object v7, v4, Lo/n3;->b:Lo/Ib;

    .line 38
    iget-wide v7, v7, Lo/Ib;->f:J

    .line 40
    iget-object v9, v4, Lo/n3;->d:Lo/Ib;

    .line 42
    iget-wide v9, v9, Lo/Ib;->f:J

    .line 44
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 47
    move-result-object v9

    .line 48
    iput-object v9, v2, Lo/m3;->a:Ljava/lang/Long;

    .line 50
    iget-object v9, v0, Lo/bb;->l0:Lo/Va;

    .line 52
    if-nez v9, :cond_0

    .line 54
    move-object v9, v3

    .line 55
    goto :goto_0

    .line 56
    :cond_0
    iget-object v9, v9, Lo/Va;->W:Lo/Ib;

    .line 58
    :goto_0
    if-eqz v9, :cond_1

    .line 60
    iget-wide v9, v9, Lo/Ib;->f:J

    .line 62
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 65
    move-result-object v9

    .line 66
    iput-object v9, v2, Lo/m3;->a:Ljava/lang/Long;

    .line 68
    :cond_1
    new-instance v9, Landroid/os/Bundle;

    .line 70
    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 73
    const-string v10, "DEEP_COPY_VALIDATOR_KEY"

    .line 75
    iget-object v11, v4, Lo/n3;->c:Lo/p5;

    .line 77
    invoke-virtual {v9, v10, v11}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 80
    new-instance v11, Lo/n3;

    .line 82
    invoke-static {v5, v6}, Lo/Ib;->b(J)Lo/Ib;

    .line 85
    move-result-object v13

    .line 86
    invoke-static {v7, v8}, Lo/Ib;->b(J)Lo/Ib;

    .line 89
    move-result-object v14

    .line 90
    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 93
    move-result-object v5

    .line 94
    move-object v15, v5

    .line 95
    check-cast v15, Lo/p5;

    .line 97
    iget-object v2, v2, Lo/m3;->a:Ljava/lang/Long;

    .line 99
    if-nez v2, :cond_2

    .line 101
    move-object/from16 v16, v3

    .line 103
    goto :goto_1

    .line 104
    :cond_2
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 107
    move-result-wide v5

    .line 108
    invoke-static {v5, v6}, Lo/Ib;->b(J)Lo/Ib;

    .line 111
    move-result-object v2

    .line 112
    move-object/from16 v16, v2

    .line 114
    :goto_1
    iget v2, v4, Lo/n3;->e:I

    .line 116
    move-object v12, v11

    .line 117
    move/from16 v17, v2

    .line 119
    invoke-direct/range {v12 .. v17}, Lo/n3;-><init>(Lo/Ib;Lo/Ib;Lo/p5;Lo/Ib;I)V

    .line 122
    const-string v2, "CALENDAR_CONSTRAINTS_KEY"

    .line 124
    invoke-virtual {v1, v2, v11}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 127
    const-string v2, "DAY_VIEW_DECORATOR_KEY"

    .line 129
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 132
    const-string v2, "TITLE_TEXT_RES_ID_KEY"

    .line 134
    iget v3, v0, Lo/bb;->m0:I

    .line 136
    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 139
    const-string v2, "TITLE_TEXT_KEY"

    .line 141
    iget-object v3, v0, Lo/bb;->n0:Ljava/lang/CharSequence;

    .line 143
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 146
    const-string v2, "INPUT_MODE_KEY"

    .line 148
    iget v3, v0, Lo/bb;->p0:I

    .line 150
    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 153
    const-string v2, "POSITIVE_BUTTON_TEXT_RES_ID_KEY"

    .line 155
    iget v3, v0, Lo/bb;->q0:I

    .line 157
    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 160
    const-string v2, "POSITIVE_BUTTON_TEXT_KEY"

    .line 162
    iget-object v3, v0, Lo/bb;->r0:Ljava/lang/CharSequence;

    .line 164
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 167
    const-string v2, "POSITIVE_BUTTON_CONTENT_DESCRIPTION_RES_ID_KEY"

    .line 169
    iget v3, v0, Lo/bb;->s0:I

    .line 171
    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 174
    const-string v2, "POSITIVE_BUTTON_CONTENT_DESCRIPTION_KEY"

    .line 176
    iget-object v3, v0, Lo/bb;->t0:Ljava/lang/CharSequence;

    .line 178
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 181
    const-string v2, "NEGATIVE_BUTTON_TEXT_RES_ID_KEY"

    .line 183
    iget v3, v0, Lo/bb;->u0:I

    .line 185
    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 188
    const-string v2, "NEGATIVE_BUTTON_TEXT_KEY"

    .line 190
    iget-object v3, v0, Lo/bb;->v0:Ljava/lang/CharSequence;

    .line 192
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 195
    const-string v2, "NEGATIVE_BUTTON_CONTENT_DESCRIPTION_RES_ID_KEY"

    .line 197
    iget v3, v0, Lo/bb;->w0:I

    .line 199
    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 202
    const-string v2, "NEGATIVE_BUTTON_CONTENT_DESCRIPTION_KEY"

    .line 204
    iget-object v3, v0, Lo/bb;->x0:Ljava/lang/CharSequence;

    .line 206
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 209
    return-void
.end method

.method public final y()V
    .locals 14

    .line 1
    invoke-super {p0}, Lo/X5;->y()V

    .line 4
    iget-object v0, p0, Lo/X5;->c0:Landroid/app/Dialog;

    .line 6
    const-string v1, " does not have a Dialog."

    .line 8
    const-string v2, "DialogFragment "

    .line 10
    if-eqz v0, :cond_17

    .line 12
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 15
    move-result-object v0

    .line 16
    iget-boolean v3, p0, Lo/bb;->o0:Z

    .line 18
    const/4 v4, 0x0

    .line 19
    const/4 v5, 0x1

    .line 20
    if-eqz v3, :cond_11

    .line 22
    const/4 v1, -0x1

    .line 23
    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setLayout(II)V

    .line 26
    iget-object v1, p0, Lo/bb;->A0:Lo/eb;

    .line 28
    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 31
    iget-boolean v1, p0, Lo/bb;->B0:Z

    .line 33
    if-nez v1, :cond_12

    .line 35
    invoke-virtual {p0}, Lo/T7;->D()Landroid/view/View;

    .line 38
    move-result-object v1

    .line 39
    const v2, 0x7f0800d0

    .line 42
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 45
    move-result-object v1

    .line 46
    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 49
    move-result-object v2

    .line 50
    invoke-static {v2}, Lo/L1;->w(Landroid/graphics/drawable/Drawable;)Landroid/content/res/ColorStateList;

    .line 53
    move-result-object v2

    .line 54
    if-eqz v2, :cond_0

    .line 56
    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    .line 59
    move-result v2

    .line 60
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 63
    move-result-object v2

    .line 64
    goto :goto_0

    .line 65
    :cond_0
    move-object v2, v4

    .line 66
    :goto_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 68
    const/4 v6, 0x0

    .line 69
    if-eqz v2, :cond_2

    .line 71
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 74
    move-result v7

    .line 75
    if-nez v7, :cond_1

    .line 77
    goto :goto_1

    .line 78
    :cond_1
    move v7, v6

    .line 79
    goto :goto_2

    .line 80
    :cond_2
    :goto_1
    move v7, v5

    .line 81
    :goto_2
    invoke-virtual {v0}, Landroid/view/Window;->getContext()Landroid/content/Context;

    .line 84
    move-result-object v8

    .line 85
    const v9, 0x1010031

    .line 88
    const/high16 v10, -0x1000000

    .line 90
    invoke-static {v8, v9, v10}, Lo/Ha;->D(Landroid/content/Context;II)I

    .line 93
    move-result v8

    .line 94
    if-eqz v7, :cond_3

    .line 96
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 99
    move-result-object v2

    .line 100
    :cond_3
    const/16 v7, 0x1e

    .line 102
    const/16 v9, 0x23

    .line 104
    if-lt v3, v9, :cond_4

    .line 106
    invoke-static {v0, v6}, Lo/z;->e(Landroid/view/Window;Z)V

    .line 109
    goto :goto_3

    .line 110
    :cond_4
    if-lt v3, v7, :cond_5

    .line 112
    invoke-static {v0, v6}, Lo/z;->d(Landroid/view/Window;Z)V

    .line 115
    goto :goto_3

    .line 116
    :cond_5
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 119
    move-result-object v11

    .line 120
    invoke-virtual {v11}, Landroid/view/View;->getSystemUiVisibility()I

    .line 123
    move-result v12

    .line 124
    or-int/lit16 v12, v12, 0x700

    .line 126
    invoke-virtual {v11, v12}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 129
    :goto_3
    invoke-virtual {v0}, Landroid/view/Window;->getContext()Landroid/content/Context;

    .line 132
    invoke-virtual {v0}, Landroid/view/Window;->getContext()Landroid/content/Context;

    .line 135
    move-result-object v11

    .line 136
    const/16 v12, 0x1b

    .line 138
    if-ge v3, v12, :cond_6

    .line 140
    const v3, 0x1010452

    .line 143
    invoke-static {v11, v3, v10}, Lo/Ha;->D(Landroid/content/Context;II)I

    .line 146
    move-result v3

    .line 147
    const/16 v10, 0x80

    .line 149
    invoke-static {v3, v10}, Lo/m4;->d(II)I

    .line 152
    move-result v3

    .line 153
    goto :goto_4

    .line 154
    :cond_6
    move v3, v6

    .line 155
    :goto_4
    invoke-virtual {v0, v6}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 158
    invoke-virtual {v0, v3}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 161
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 164
    move-result v2

    .line 165
    invoke-static {v2}, Lo/Ha;->X(I)Z

    .line 168
    move-result v2

    .line 169
    invoke-static {v6}, Lo/Ha;->X(I)Z

    .line 172
    move-result v10

    .line 173
    if-nez v10, :cond_8

    .line 175
    if-eqz v2, :cond_7

    .line 177
    goto :goto_5

    .line 178
    :cond_7
    move v2, v6

    .line 179
    goto :goto_6

    .line 180
    :cond_8
    :goto_5
    move v2, v5

    .line 181
    :goto_6
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 184
    move-result-object v10

    .line 185
    new-instance v11, Lo/u6;

    .line 187
    invoke-direct {v11, v10}, Lo/u6;-><init>(Landroid/view/View;)V

    .line 190
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 192
    const/16 v12, 0x1a

    .line 194
    if-lt v10, v9, :cond_9

    .line 196
    new-instance v10, Lo/Ri;

    .line 198
    invoke-static {v0}, Lo/v;->k(Landroid/view/Window;)Landroid/view/WindowInsetsController;

    .line 201
    move-result-object v13

    .line 202
    invoke-direct {v10, v13, v11}, Lo/Qi;-><init>(Landroid/view/WindowInsetsController;Lo/u6;)V

    .line 205
    iput-object v0, v10, Lo/Qi;->f:Landroid/view/Window;

    .line 207
    goto :goto_7

    .line 208
    :cond_9
    if-lt v10, v7, :cond_a

    .line 210
    new-instance v10, Lo/Qi;

    .line 212
    invoke-static {v0}, Lo/v;->k(Landroid/view/Window;)Landroid/view/WindowInsetsController;

    .line 215
    move-result-object v13

    .line 216
    invoke-direct {v10, v13, v11}, Lo/Qi;-><init>(Landroid/view/WindowInsetsController;Lo/u6;)V

    .line 219
    iput-object v0, v10, Lo/Qi;->f:Landroid/view/Window;

    .line 221
    goto :goto_7

    .line 222
    :cond_a
    if-lt v10, v12, :cond_b

    .line 224
    new-instance v10, Lo/Oi;

    .line 226
    invoke-direct {v10, v0, v11}, Lo/Ni;-><init>(Landroid/view/Window;Lo/u6;)V

    .line 229
    goto :goto_7

    .line 230
    :cond_b
    new-instance v10, Lo/Ni;

    .line 232
    invoke-direct {v10, v0, v11}, Lo/Ni;-><init>(Landroid/view/Window;Lo/u6;)V

    .line 235
    :goto_7
    invoke-virtual {v10, v2}, Lo/Ng;->w(Z)V

    .line 238
    invoke-static {v8}, Lo/Ha;->X(I)Z

    .line 241
    move-result v2

    .line 242
    invoke-static {v3}, Lo/Ha;->X(I)Z

    .line 245
    move-result v8

    .line 246
    if-nez v8, :cond_c

    .line 248
    if-nez v3, :cond_d

    .line 250
    if-eqz v2, :cond_d

    .line 252
    :cond_c
    move v6, v5

    .line 253
    :cond_d
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 256
    move-result-object v2

    .line 257
    new-instance v3, Lo/u6;

    .line 259
    invoke-direct {v3, v2}, Lo/u6;-><init>(Landroid/view/View;)V

    .line 262
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 264
    if-lt v2, v9, :cond_e

    .line 266
    new-instance v2, Lo/Ri;

    .line 268
    invoke-static {v0}, Lo/v;->k(Landroid/view/Window;)Landroid/view/WindowInsetsController;

    .line 271
    move-result-object v7

    .line 272
    invoke-direct {v2, v7, v3}, Lo/Qi;-><init>(Landroid/view/WindowInsetsController;Lo/u6;)V

    .line 275
    iput-object v0, v2, Lo/Qi;->f:Landroid/view/Window;

    .line 277
    goto :goto_8

    .line 278
    :cond_e
    if-lt v2, v7, :cond_f

    .line 280
    new-instance v2, Lo/Qi;

    .line 282
    invoke-static {v0}, Lo/v;->k(Landroid/view/Window;)Landroid/view/WindowInsetsController;

    .line 285
    move-result-object v7

    .line 286
    invoke-direct {v2, v7, v3}, Lo/Qi;-><init>(Landroid/view/WindowInsetsController;Lo/u6;)V

    .line 289
    iput-object v0, v2, Lo/Qi;->f:Landroid/view/Window;

    .line 291
    goto :goto_8

    .line 292
    :cond_f
    if-lt v2, v12, :cond_10

    .line 294
    new-instance v2, Lo/Oi;

    .line 296
    invoke-direct {v2, v0, v3}, Lo/Ni;-><init>(Landroid/view/Window;Lo/u6;)V

    .line 299
    goto :goto_8

    .line 300
    :cond_10
    new-instance v2, Lo/Ni;

    .line 302
    invoke-direct {v2, v0, v3}, Lo/Ni;-><init>(Landroid/view/Window;Lo/u6;)V

    .line 305
    :goto_8
    invoke-virtual {v2, v6}, Lo/Ng;->v(Z)V

    .line 308
    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    .line 311
    move-result v0

    .line 312
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 315
    move-result-object v2

    .line 316
    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 318
    new-instance v3, Lo/ab;

    .line 320
    invoke-direct {v3, v1, v2, v0}, Lo/ab;-><init>(Landroid/view/View;II)V

    .line 323
    sget-object v0, Lo/Dh;->a:Ljava/util/WeakHashMap;

    .line 325
    invoke-static {v1, v3}, Lo/vh;->l(Landroid/view/View;Lo/ec;)V

    .line 328
    iput-boolean v5, p0, Lo/bb;->B0:Z

    .line 330
    goto :goto_9

    .line 331
    :cond_11
    const/4 v3, -0x2

    .line 332
    invoke-virtual {v0, v3, v3}, Landroid/view/Window;->setLayout(II)V

    .line 335
    invoke-virtual {p0}, Lo/T7;->C()Landroid/content/Context;

    .line 338
    move-result-object v3

    .line 339
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 342
    move-result-object v3

    .line 343
    const v6, 0x7f06027d

    .line 346
    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 349
    move-result v12

    .line 350
    new-instance v3, Landroid/graphics/Rect;

    .line 352
    invoke-direct {v3, v12, v12, v12, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 355
    new-instance v6, Landroid/graphics/drawable/InsetDrawable;

    .line 357
    iget-object v8, p0, Lo/bb;->A0:Lo/eb;

    .line 359
    move-object v7, v6

    .line 360
    move v9, v12

    .line 361
    move v10, v12

    .line 362
    move v11, v12

    .line 363
    invoke-direct/range {v7 .. v12}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    .line 366
    invoke-virtual {v0, v6}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 369
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 372
    move-result-object v0

    .line 373
    new-instance v6, Lo/s9;

    .line 375
    iget-object v7, p0, Lo/X5;->c0:Landroid/app/Dialog;

    .line 377
    if-eqz v7, :cond_16

    .line 379
    invoke-direct {v6, v7, v3}, Lo/s9;-><init>(Landroid/app/Dialog;Landroid/graphics/Rect;)V

    .line 382
    invoke-virtual {v0, v6}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 385
    :cond_12
    :goto_9
    invoke-virtual {p0}, Lo/T7;->C()Landroid/content/Context;

    .line 388
    iget v0, p0, Lo/bb;->i0:I

    .line 390
    if-eqz v0, :cond_15

    .line 392
    invoke-virtual {p0}, Lo/bb;->H()V

    .line 395
    iget-object v1, p0, Lo/bb;->k0:Lo/n3;

    .line 397
    new-instance v2, Lo/Va;

    .line 399
    invoke-direct {v2}, Lo/Va;-><init>()V

    .line 402
    new-instance v3, Landroid/os/Bundle;

    .line 404
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 407
    const-string v6, "THEME_RES_ID_KEY"

    .line 409
    invoke-virtual {v3, v6, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 412
    const-string v7, "GRID_SELECTOR_KEY"

    .line 414
    invoke-virtual {v3, v7, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 417
    const-string v7, "CALENDAR_CONSTRAINTS_KEY"

    .line 419
    invoke-virtual {v3, v7, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 422
    const-string v8, "DAY_VIEW_DECORATOR_KEY"

    .line 424
    invoke-virtual {v3, v8, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 427
    iget-object v1, v1, Lo/n3;->d:Lo/Ib;

    .line 429
    const-string v8, "CURRENT_MONTH_KEY"

    .line 431
    invoke-virtual {v3, v8, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 434
    invoke-virtual {v2, v3}, Lo/T7;->F(Landroid/os/Bundle;)V

    .line 437
    iput-object v2, p0, Lo/bb;->l0:Lo/Va;

    .line 439
    iget v1, p0, Lo/bb;->p0:I

    .line 441
    if-ne v1, v5, :cond_13

    .line 443
    invoke-virtual {p0}, Lo/bb;->H()V

    .line 446
    iget-object v1, p0, Lo/bb;->k0:Lo/n3;

    .line 448
    new-instance v2, Lo/fb;

    .line 450
    invoke-direct {v2}, Lo/fb;-><init>()V

    .line 453
    new-instance v3, Landroid/os/Bundle;

    .line 455
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 458
    invoke-virtual {v3, v6, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 461
    const-string v0, "DATE_SELECTOR_KEY"

    .line 463
    invoke-virtual {v3, v0, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 466
    invoke-virtual {v3, v7, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 469
    invoke-virtual {v2, v3}, Lo/T7;->F(Landroid/os/Bundle;)V

    .line 472
    :cond_13
    iput-object v2, p0, Lo/bb;->j0:Lo/Fc;

    .line 474
    iget-object v0, p0, Lo/bb;->y0:Landroid/widget/TextView;

    .line 476
    iget v1, p0, Lo/bb;->p0:I

    .line 478
    if-ne v1, v5, :cond_14

    .line 480
    invoke-virtual {p0}, Lo/T7;->C()Landroid/content/Context;

    .line 483
    move-result-object v1

    .line 484
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 487
    move-result-object v1

    .line 488
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 491
    move-result-object v1

    .line 492
    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    .line 494
    const/4 v2, 0x2

    .line 495
    if-ne v1, v2, :cond_14

    .line 497
    iget-object v1, p0, Lo/bb;->D0:Ljava/lang/CharSequence;

    .line 499
    goto :goto_a

    .line 500
    :cond_14
    iget-object v1, p0, Lo/bb;->C0:Ljava/lang/CharSequence;

    .line 502
    :goto_a
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 505
    invoke-virtual {p0}, Lo/bb;->H()V

    .line 508
    throw v4

    .line 509
    :cond_15
    invoke-virtual {p0}, Lo/bb;->H()V

    .line 512
    throw v4

    .line 513
    :cond_16
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 515
    new-instance v3, Ljava/lang/StringBuilder;

    .line 517
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 520
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 523
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 526
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 529
    move-result-object v1

    .line 530
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 533
    throw v0

    .line 534
    :cond_17
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 536
    new-instance v3, Ljava/lang/StringBuilder;

    .line 538
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 541
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 544
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 547
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 550
    move-result-object v1

    .line 551
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 554
    throw v0
.end method

.method public final z()V
    .locals 1

    .line 1
    iget-object v0, p0, Lo/bb;->j0:Lo/Fc;

    .line 3
    iget-object v0, v0, Lo/Fc;->T:Ljava/util/LinkedHashSet;

    .line 5
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->clear()V

    .line 8
    invoke-super {p0}, Lo/X5;->z()V

    .line 11
    return-void
.end method
