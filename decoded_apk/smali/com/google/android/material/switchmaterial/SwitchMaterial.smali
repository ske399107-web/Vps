.class public Lcom/google/android/material/switchmaterial/SwitchMaterial;
.super Lo/Cf;
.source "SourceFile"


# static fields
.field public static final a0:[[I


# instance fields
.field public final T:Lo/w6;

.field public U:Landroid/content/res/ColorStateList;

.field public V:Landroid/content/res/ColorStateList;

.field public W:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    const v0, 0x101009e

    .line 4
    const v1, 0x10100a0

    .line 7
    filled-new-array {v0, v1}, [I

    .line 10
    move-result-object v2

    .line 11
    const v3, -0x10100a0

    .line 14
    filled-new-array {v0, v3}, [I

    .line 17
    move-result-object v0

    .line 18
    const v4, -0x101009e

    .line 21
    filled-new-array {v4, v1}, [I

    .line 24
    move-result-object v1

    .line 25
    filled-new-array {v4, v3}, [I

    .line 28
    move-result-object v3

    .line 29
    filled-new-array {v2, v0, v1, v3}, [[I

    .line 32
    move-result-object v0

    .line 33
    sput-object v0, Lcom/google/android/material/switchmaterial/SwitchMaterial;->a0:[[I

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 10

    .line 1
    const v6, 0x7f030416

    .line 4
    const v0, 0x7f0f0419

    .line 7
    invoke-static {p1, p2, v6, v0}, Lo/x9;->j0(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    .line 10
    move-result-object p1

    .line 11
    invoke-direct {p0, p1, p2}, Lo/Cf;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 14
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 17
    move-result-object p1

    .line 18
    new-instance v0, Lo/w6;

    .line 20
    invoke-direct {v0, p1}, Lo/w6;-><init>(Landroid/content/Context;)V

    .line 23
    iput-object v0, p0, Lcom/google/android/material/switchmaterial/SwitchMaterial;->T:Lo/w6;

    .line 25
    sget-object v7, Lo/fd;->z:[I

    .line 27
    const/4 v8, 0x0

    .line 28
    new-array v5, v8, [I

    .line 30
    const v9, 0x7f0f0419

    .line 33
    invoke-static {p1, p2, v6, v9}, Lo/x9;->j(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 36
    move-object v0, p1

    .line 37
    move-object v1, p2

    .line 38
    move-object v2, v7

    .line 39
    move v3, v6

    .line 40
    move v4, v9

    .line 41
    invoke-static/range {v0 .. v5}, Lo/x9;->q(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)V

    .line 44
    invoke-virtual {p1, p2, v7, v6, v9}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 47
    move-result-object p1

    .line 48
    invoke-virtual {p1, v8, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 51
    move-result p2

    .line 52
    iput-boolean p2, p0, Lcom/google/android/material/switchmaterial/SwitchMaterial;->W:Z

    .line 54
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 57
    return-void
.end method

.method private getMaterialThemeColorsThumbTintList()Landroid/content/res/ColorStateList;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/google/android/material/switchmaterial/SwitchMaterial;->U:Landroid/content/res/ColorStateList;

    .line 3
    if-nez v0, :cond_2

    .line 5
    const v0, 0x7f030120

    .line 8
    invoke-static {p0, v0}, Lo/Ha;->E(Landroid/view/View;I)I

    .line 11
    move-result v0

    .line 12
    const v1, 0x7f0300f7

    .line 15
    invoke-static {p0, v1}, Lo/Ha;->E(Landroid/view/View;I)I

    .line 18
    move-result v1

    .line 19
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 22
    move-result-object v2

    .line 23
    const v3, 0x7f0602f7

    .line 26
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    .line 29
    move-result v2

    .line 30
    iget-object v3, p0, Lcom/google/android/material/switchmaterial/SwitchMaterial;->T:Lo/w6;

    .line 32
    iget-boolean v4, v3, Lo/w6;->a:Z

    .line 34
    if-eqz v4, :cond_1

    .line 36
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 39
    move-result-object v4

    .line 40
    const/4 v5, 0x0

    .line 41
    :goto_0
    instance-of v6, v4, Landroid/view/View;

    .line 43
    if-eqz v6, :cond_0

    .line 45
    move-object v6, v4

    .line 46
    check-cast v6, Landroid/view/View;

    .line 48
    sget-object v7, Lo/Dh;->a:Ljava/util/WeakHashMap;

    .line 50
    invoke-static {v6}, Lo/vh;->e(Landroid/view/View;)F

    .line 53
    move-result v6

    .line 54
    add-float/2addr v5, v6

    .line 55
    invoke-interface {v4}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    .line 58
    move-result-object v4

    .line 59
    goto :goto_0

    .line 60
    :cond_0
    add-float/2addr v2, v5

    .line 61
    :cond_1
    invoke-virtual {v3, v0, v2}, Lo/w6;->a(IF)I

    .line 64
    move-result v2

    .line 65
    const/high16 v3, 0x3f800000    # 1.0f

    .line 67
    invoke-static {v0, v1, v3}, Lo/Ha;->e0(IIF)I

    .line 70
    move-result v3

    .line 71
    const v4, 0x3ec28f5c    # 0.38f

    .line 74
    invoke-static {v0, v1, v4}, Lo/Ha;->e0(IIF)I

    .line 77
    move-result v0

    .line 78
    filled-new-array {v3, v2, v0, v2}, [I

    .line 81
    move-result-object v0

    .line 82
    new-instance v1, Landroid/content/res/ColorStateList;

    .line 84
    sget-object v2, Lcom/google/android/material/switchmaterial/SwitchMaterial;->a0:[[I

    .line 86
    invoke-direct {v1, v2, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 89
    iput-object v1, p0, Lcom/google/android/material/switchmaterial/SwitchMaterial;->U:Landroid/content/res/ColorStateList;

    .line 91
    :cond_2
    iget-object v0, p0, Lcom/google/android/material/switchmaterial/SwitchMaterial;->U:Landroid/content/res/ColorStateList;

    .line 93
    return-object v0
.end method

.method private getMaterialThemeColorsTrackTintList()Landroid/content/res/ColorStateList;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/material/switchmaterial/SwitchMaterial;->V:Landroid/content/res/ColorStateList;

    .line 3
    if-nez v0, :cond_0

    .line 5
    const v0, 0x7f030120

    .line 8
    invoke-static {p0, v0}, Lo/Ha;->E(Landroid/view/View;I)I

    .line 11
    move-result v0

    .line 12
    const v1, 0x7f0300f7

    .line 15
    invoke-static {p0, v1}, Lo/Ha;->E(Landroid/view/View;I)I

    .line 18
    move-result v1

    .line 19
    const v2, 0x7f03010a

    .line 22
    invoke-static {p0, v2}, Lo/Ha;->E(Landroid/view/View;I)I

    .line 25
    move-result v2

    .line 26
    const v3, 0x3f0a3d71    # 0.54f

    .line 29
    invoke-static {v0, v1, v3}, Lo/Ha;->e0(IIF)I

    .line 32
    move-result v3

    .line 33
    const v4, 0x3ea3d70a    # 0.32f

    .line 36
    invoke-static {v0, v2, v4}, Lo/Ha;->e0(IIF)I

    .line 39
    move-result v4

    .line 40
    const v5, 0x3df5c28f    # 0.12f

    .line 43
    invoke-static {v0, v1, v5}, Lo/Ha;->e0(IIF)I

    .line 46
    move-result v1

    .line 47
    invoke-static {v0, v2, v5}, Lo/Ha;->e0(IIF)I

    .line 50
    move-result v0

    .line 51
    filled-new-array {v3, v4, v1, v0}, [I

    .line 54
    move-result-object v0

    .line 55
    new-instance v1, Landroid/content/res/ColorStateList;

    .line 57
    sget-object v2, Lcom/google/android/material/switchmaterial/SwitchMaterial;->a0:[[I

    .line 59
    invoke-direct {v1, v2, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 62
    iput-object v1, p0, Lcom/google/android/material/switchmaterial/SwitchMaterial;->V:Landroid/content/res/ColorStateList;

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/switchmaterial/SwitchMaterial;->V:Landroid/content/res/ColorStateList;

    .line 66
    return-object v0
.end method


# virtual methods
.method public final onAttachedToWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 4
    iget-boolean v0, p0, Lcom/google/android/material/switchmaterial/SwitchMaterial;->W:Z

    .line 6
    if-eqz v0, :cond_0

    .line 8
    invoke-virtual {p0}, Lo/Cf;->getThumbTintList()Landroid/content/res/ColorStateList;

    .line 11
    move-result-object v0

    .line 12
    if-nez v0, :cond_0

    .line 14
    invoke-direct {p0}, Lcom/google/android/material/switchmaterial/SwitchMaterial;->getMaterialThemeColorsThumbTintList()Landroid/content/res/ColorStateList;

    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {p0, v0}, Lo/Cf;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    .line 21
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/material/switchmaterial/SwitchMaterial;->W:Z

    .line 23
    if-eqz v0, :cond_1

    .line 25
    invoke-virtual {p0}, Lo/Cf;->getTrackTintList()Landroid/content/res/ColorStateList;

    .line 28
    move-result-object v0

    .line 29
    if-nez v0, :cond_1

    .line 31
    invoke-direct {p0}, Lcom/google/android/material/switchmaterial/SwitchMaterial;->getMaterialThemeColorsTrackTintList()Landroid/content/res/ColorStateList;

    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {p0, v0}, Lo/Cf;->setTrackTintList(Landroid/content/res/ColorStateList;)V

    .line 38
    :cond_1
    return-void
.end method

.method public setUseMaterialThemeColors(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/google/android/material/switchmaterial/SwitchMaterial;->W:Z

    .line 3
    if-eqz p1, :cond_0

    .line 5
    invoke-direct {p0}, Lcom/google/android/material/switchmaterial/SwitchMaterial;->getMaterialThemeColorsThumbTintList()Landroid/content/res/ColorStateList;

    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p0, p1}, Lo/Cf;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    .line 12
    invoke-direct {p0}, Lcom/google/android/material/switchmaterial/SwitchMaterial;->getMaterialThemeColorsTrackTintList()Landroid/content/res/ColorStateList;

    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {p0, p1}, Lo/Cf;->setTrackTintList(Landroid/content/res/ColorStateList;)V

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 p1, 0x0

    .line 21
    invoke-virtual {p0, p1}, Lo/Cf;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    .line 24
    invoke-virtual {p0, p1}, Lo/Cf;->setTrackTintList(Landroid/content/res/ColorStateList;)V

    .line 27
    :goto_0
    return-void
.end method
