.class public abstract Lo/i7;
.super Lo/r;
.source "SourceFile"


# static fields
.field public static final n:Landroid/graphics/Rect;

.field public static final o:Lo/u6;

.field public static final p:Lo/u6;


# instance fields
.field public final d:Landroid/graphics/Rect;

.field public final e:Landroid/graphics/Rect;

.field public final f:Landroid/graphics/Rect;

.field public final g:[I

.field public final h:Landroid/view/accessibility/AccessibilityManager;

.field public final i:Landroid/view/View;

.field public j:Lo/h7;

.field public k:I

.field public l:I

.field public m:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    .line 3
    const v1, 0x7fffffff

    .line 6
    const/high16 v2, -0x80000000

    .line 8
    invoke-direct {v0, v1, v1, v2, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 11
    sput-object v0, Lo/i7;->n:Landroid/graphics/Rect;

    .line 13
    new-instance v0, Lo/u6;

    .line 15
    const/16 v1, 0xd

    .line 17
    invoke-direct {v0, v1}, Lo/u6;-><init>(I)V

    .line 20
    sput-object v0, Lo/i7;->o:Lo/u6;

    .line 22
    new-instance v0, Lo/u6;

    .line 24
    const/16 v1, 0xe

    .line 26
    invoke-direct {v0, v1}, Lo/u6;-><init>(I)V

    .line 29
    sput-object v0, Lo/i7;->p:Lo/u6;

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lo/r;-><init>()V

    .line 4
    new-instance v0, Landroid/graphics/Rect;

    .line 6
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 9
    iput-object v0, p0, Lo/i7;->d:Landroid/graphics/Rect;

    .line 11
    new-instance v0, Landroid/graphics/Rect;

    .line 13
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 16
    iput-object v0, p0, Lo/i7;->e:Landroid/graphics/Rect;

    .line 18
    new-instance v0, Landroid/graphics/Rect;

    .line 20
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 23
    iput-object v0, p0, Lo/i7;->f:Landroid/graphics/Rect;

    .line 25
    const/4 v0, 0x2

    .line 26
    new-array v0, v0, [I

    .line 28
    iput-object v0, p0, Lo/i7;->g:[I

    .line 30
    const/high16 v0, -0x80000000

    .line 32
    iput v0, p0, Lo/i7;->k:I

    .line 34
    iput v0, p0, Lo/i7;->l:I

    .line 36
    iput v0, p0, Lo/i7;->m:I

    .line 38
    iput-object p1, p0, Lo/i7;->i:Landroid/view/View;

    .line 40
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 43
    move-result-object v0

    .line 44
    const-string v1, "accessibility"

    .line 46
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 49
    move-result-object v0

    .line 50
    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 52
    iput-object v0, p0, Lo/i7;->h:Landroid/view/accessibility/AccessibilityManager;

    .line 54
    const/4 v0, 0x1

    .line 55
    invoke-virtual {p1, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 58
    sget-object v1, Lo/Dh;->a:Ljava/util/WeakHashMap;

    .line 60
    invoke-virtual {p1}, Landroid/view/View;->getImportantForAccessibility()I

    .line 63
    move-result v1

    .line 64
    if-nez v1, :cond_0

    .line 66
    invoke-virtual {p1, v0}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 69
    :cond_0
    return-void
.end method


# virtual methods
.method public final b(Landroid/view/View;)Lo/C;
    .locals 0

    .line 1
    iget-object p1, p0, Lo/i7;->j:Lo/h7;

    .line 3
    if-nez p1, :cond_0

    .line 5
    new-instance p1, Lo/h7;

    .line 7
    invoke-direct {p1, p0}, Lo/h7;-><init>(Lo/i7;)V

    .line 10
    iput-object p1, p0, Lo/i7;->j:Lo/h7;

    .line 12
    :cond_0
    iget-object p1, p0, Lo/i7;->j:Lo/h7;

    .line 14
    return-object p1
.end method

.method public final d(Landroid/view/View;Lo/D;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lo/r;->a:Landroid/view/View$AccessibilityDelegate;

    .line 3
    iget-object v1, p2, Lo/D;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 5
    invoke-virtual {v0, p1, v1}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 8
    invoke-virtual {p0, p2}, Lo/i7;->t(Lo/D;)V

    .line 11
    return-void
.end method

.method public final j(I)Z
    .locals 2

    .line 1
    iget v0, p0, Lo/i7;->l:I

    .line 3
    const/4 v1, 0x0

    .line 4
    if-eq v0, p1, :cond_0

    .line 6
    return v1

    .line 7
    :cond_0
    const/high16 v0, -0x80000000

    .line 9
    iput v0, p0, Lo/i7;->l:I

    .line 11
    invoke-virtual {p0, p1, v1}, Lo/i7;->v(IZ)V

    .line 14
    const/16 v0, 0x8

    .line 16
    invoke-virtual {p0, p1, v0}, Lo/i7;->x(II)V

    .line 19
    const/4 p1, 0x1

    .line 20
    return p1
.end method

.method public final k(II)Landroid/view/accessibility/AccessibilityEvent;
    .locals 4

    .line 1
    const/4 v0, -0x1

    .line 2
    iget-object v1, p0, Lo/i7;->i:Landroid/view/View;

    .line 4
    if-eq p1, v0, :cond_2

    .line 6
    invoke-static {p2}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    .line 9
    move-result-object p2

    .line 10
    invoke-virtual {p0, p1}, Lo/i7;->r(I)Lo/D;

    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityRecord;->getText()Ljava/util/List;

    .line 17
    move-result-object v2

    .line 18
    invoke-virtual {v0}, Lo/D;->g()Ljava/lang/CharSequence;

    .line 21
    move-result-object v3

    .line 22
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 25
    iget-object v0, v0, Lo/D;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 27
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getContentDescription()Ljava/lang/CharSequence;

    .line 30
    move-result-object v2

    .line 31
    invoke-virtual {p2, v2}, Landroid/view/accessibility/AccessibilityRecord;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 34
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isScrollable()Z

    .line 37
    move-result v2

    .line 38
    invoke-virtual {p2, v2}, Landroid/view/accessibility/AccessibilityRecord;->setScrollable(Z)V

    .line 41
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isPassword()Z

    .line 44
    move-result v2

    .line 45
    invoke-virtual {p2, v2}, Landroid/view/accessibility/AccessibilityRecord;->setPassword(Z)V

    .line 48
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isEnabled()Z

    .line 51
    move-result v2

    .line 52
    invoke-virtual {p2, v2}, Landroid/view/accessibility/AccessibilityRecord;->setEnabled(Z)V

    .line 55
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isChecked()Z

    .line 58
    move-result v2

    .line 59
    invoke-virtual {p2, v2}, Landroid/view/accessibility/AccessibilityRecord;->setChecked(Z)V

    .line 62
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityRecord;->getText()Ljava/util/List;

    .line 65
    move-result-object v2

    .line 66
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 69
    move-result v2

    .line 70
    if-eqz v2, :cond_1

    .line 72
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityRecord;->getContentDescription()Ljava/lang/CharSequence;

    .line 75
    move-result-object v2

    .line 76
    if-eqz v2, :cond_0

    .line 78
    goto :goto_0

    .line 79
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    .line 81
    const-string p2, "Callbacks must add text or a content description in populateEventForVirtualViewId()"

    .line 83
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 86
    throw p1

    .line 87
    :cond_1
    :goto_0
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getClassName()Ljava/lang/CharSequence;

    .line 90
    move-result-object v0

    .line 91
    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityRecord;->setClassName(Ljava/lang/CharSequence;)V

    .line 94
    invoke-virtual {p2, v1, p1}, Landroid/view/accessibility/AccessibilityRecord;->setSource(Landroid/view/View;I)V

    .line 97
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 100
    move-result-object p1

    .line 101
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 104
    move-result-object p1

    .line 105
    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 108
    return-object p2

    .line 109
    :cond_2
    invoke-static {p2}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    .line 112
    move-result-object p1

    .line 113
    invoke-virtual {v1, p1}, Landroid/view/View;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 116
    return-object p1
.end method

.method public final l(I)Lo/D;
    .locals 9

    .line 1
    invoke-static {}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain()Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lo/D;

    .line 7
    invoke-direct {v1, v0}, Lo/D;-><init>(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 10
    const/4 v2, 0x1

    .line 11
    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    .line 14
    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setFocusable(Z)V

    .line 17
    const-string v3, "android.view.View"

    .line 19
    invoke-virtual {v1, v3}, Lo/D;->i(Ljava/lang/CharSequence;)V

    .line 22
    sget-object v3, Lo/i7;->n:Landroid/graphics/Rect;

    .line 24
    invoke-virtual {v0, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 27
    invoke-virtual {v0, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    .line 30
    iget-object v4, p0, Lo/i7;->i:Landroid/view/View;

    .line 32
    invoke-virtual {v0, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setParent(Landroid/view/View;)V

    .line 35
    invoke-virtual {p0, p1, v1}, Lo/i7;->u(ILo/D;)V

    .line 38
    invoke-virtual {v1}, Lo/D;->g()Ljava/lang/CharSequence;

    .line 41
    move-result-object v5

    .line 42
    if-nez v5, :cond_1

    .line 44
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getContentDescription()Ljava/lang/CharSequence;

    .line 47
    move-result-object v5

    .line 48
    if-eqz v5, :cond_0

    .line 50
    goto :goto_0

    .line 51
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    .line 53
    const-string v0, "Callbacks must add text or a content description in populateNodeForVirtualViewId()"

    .line 55
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 58
    throw p1

    .line 59
    :cond_1
    :goto_0
    iget-object v5, p0, Lo/i7;->e:Landroid/graphics/Rect;

    .line 61
    invoke-virtual {v1, v5}, Lo/D;->f(Landroid/graphics/Rect;)V

    .line 64
    invoke-virtual {v5, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    .line 67
    move-result v5

    .line 68
    if-nez v5, :cond_e

    .line 70
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getActions()I

    .line 73
    move-result v5

    .line 74
    and-int/lit8 v6, v5, 0x40

    .line 76
    if-nez v6, :cond_d

    .line 78
    const/16 v6, 0x80

    .line 80
    and-int/2addr v5, v6

    .line 81
    if-nez v5, :cond_c

    .line 83
    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 86
    move-result-object v5

    .line 87
    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 90
    move-result-object v5

    .line 91
    invoke-virtual {v0, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setPackageName(Ljava/lang/CharSequence;)V

    .line 94
    iput p1, v1, Lo/D;->b:I

    .line 96
    invoke-virtual {v0, v4, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSource(Landroid/view/View;I)V

    .line 99
    iget v5, p0, Lo/i7;->k:I

    .line 101
    const/4 v7, 0x0

    .line 102
    if-ne v5, p1, :cond_2

    .line 104
    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setAccessibilityFocused(Z)V

    .line 107
    invoke-virtual {v1, v6}, Lo/D;->a(I)V

    .line 110
    goto :goto_1

    .line 111
    :cond_2
    invoke-virtual {v0, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->setAccessibilityFocused(Z)V

    .line 114
    const/16 v5, 0x40

    .line 116
    invoke-virtual {v1, v5}, Lo/D;->a(I)V

    .line 119
    :goto_1
    iget v5, p0, Lo/i7;->l:I

    .line 121
    if-ne v5, p1, :cond_3

    .line 123
    move p1, v2

    .line 124
    goto :goto_2

    .line 125
    :cond_3
    move p1, v7

    .line 126
    :goto_2
    if-eqz p1, :cond_4

    .line 128
    const/4 v5, 0x2

    .line 129
    invoke-virtual {v1, v5}, Lo/D;->a(I)V

    .line 132
    goto :goto_3

    .line 133
    :cond_4
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isFocusable()Z

    .line 136
    move-result v5

    .line 137
    if-eqz v5, :cond_5

    .line 139
    invoke-virtual {v1, v2}, Lo/D;->a(I)V

    .line 142
    :cond_5
    :goto_3
    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setFocused(Z)V

    .line 145
    iget-object p1, p0, Lo/i7;->g:[I

    .line 147
    invoke-virtual {v4, p1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 150
    iget-object v5, p0, Lo/i7;->d:Landroid/graphics/Rect;

    .line 152
    invoke-virtual {v0, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    .line 155
    invoke-virtual {v5, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    .line 158
    move-result v3

    .line 159
    if-eqz v3, :cond_6

    .line 161
    invoke-virtual {v1, v5}, Lo/D;->f(Landroid/graphics/Rect;)V

    .line 164
    aget v3, p1, v7

    .line 166
    invoke-virtual {v4}, Landroid/view/View;->getScrollX()I

    .line 169
    move-result v6

    .line 170
    sub-int/2addr v3, v6

    .line 171
    aget v6, p1, v2

    .line 173
    invoke-virtual {v4}, Landroid/view/View;->getScrollY()I

    .line 176
    move-result v8

    .line 177
    sub-int/2addr v6, v8

    .line 178
    invoke-virtual {v5, v3, v6}, Landroid/graphics/Rect;->offset(II)V

    .line 181
    :cond_6
    iget-object v3, p0, Lo/i7;->f:Landroid/graphics/Rect;

    .line 183
    invoke-virtual {v4, v3}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    .line 186
    move-result v6

    .line 187
    if-eqz v6, :cond_b

    .line 189
    aget v6, p1, v7

    .line 191
    invoke-virtual {v4}, Landroid/view/View;->getScrollX()I

    .line 194
    move-result v7

    .line 195
    sub-int/2addr v6, v7

    .line 196
    aget p1, p1, v2

    .line 198
    invoke-virtual {v4}, Landroid/view/View;->getScrollY()I

    .line 201
    move-result v7

    .line 202
    sub-int/2addr p1, v7

    .line 203
    invoke-virtual {v3, v6, p1}, Landroid/graphics/Rect;->offset(II)V

    .line 206
    invoke-virtual {v5, v3}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 209
    move-result p1

    .line 210
    if-eqz p1, :cond_b

    .line 212
    invoke-virtual {v0, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    .line 215
    invoke-virtual {v5}, Landroid/graphics/Rect;->isEmpty()Z

    .line 218
    move-result p1

    .line 219
    if-eqz p1, :cond_7

    .line 221
    goto :goto_5

    .line 222
    :cond_7
    invoke-virtual {v4}, Landroid/view/View;->getWindowVisibility()I

    .line 225
    move-result p1

    .line 226
    if-eqz p1, :cond_8

    .line 228
    goto :goto_5

    .line 229
    :cond_8
    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 232
    move-result-object p1

    .line 233
    :goto_4
    instance-of v3, p1, Landroid/view/View;

    .line 235
    if-eqz v3, :cond_a

    .line 237
    check-cast p1, Landroid/view/View;

    .line 239
    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    .line 242
    move-result v3

    .line 243
    const/4 v4, 0x0

    .line 244
    cmpg-float v3, v3, v4

    .line 246
    if-lez v3, :cond_b

    .line 248
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 251
    move-result v3

    .line 252
    if-eqz v3, :cond_9

    .line 254
    goto :goto_5

    .line 255
    :cond_9
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 258
    move-result-object p1

    .line 259
    goto :goto_4

    .line 260
    :cond_a
    if-eqz p1, :cond_b

    .line 262
    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setVisibleToUser(Z)V

    .line 265
    :cond_b
    :goto_5
    return-object v1

    .line 266
    :cond_c
    new-instance p1, Ljava/lang/RuntimeException;

    .line 268
    const-string v0, "Callbacks must not add ACTION_CLEAR_ACCESSIBILITY_FOCUS in populateNodeForVirtualViewId()"

    .line 270
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 273
    throw p1

    .line 274
    :cond_d
    new-instance p1, Ljava/lang/RuntimeException;

    .line 276
    const-string v0, "Callbacks must not add ACTION_ACCESSIBILITY_FOCUS in populateNodeForVirtualViewId()"

    .line 278
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 281
    throw p1

    .line 282
    :cond_e
    new-instance p1, Ljava/lang/RuntimeException;

    .line 284
    const-string v0, "Callbacks must set parent bounds in populateNodeForVirtualViewId()"

    .line 286
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 289
    throw p1
.end method

.method public final m(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lo/i7;->h:Landroid/view/accessibility/AccessibilityManager;

    .line 3
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_6

    .line 10
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_0

    .line 16
    goto :goto_2

    .line 17
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 20
    move-result v0

    .line 21
    const/16 v1, 0x100

    .line 23
    const/4 v3, 0x7

    .line 24
    const/4 v4, 0x1

    .line 25
    const/high16 v5, -0x80000000

    .line 27
    if-eq v0, v3, :cond_4

    .line 29
    const/16 v3, 0x9

    .line 31
    if-eq v0, v3, :cond_4

    .line 33
    const/16 p1, 0xa

    .line 35
    if-eq v0, p1, :cond_1

    .line 37
    return v2

    .line 38
    :cond_1
    iget p1, p0, Lo/i7;->m:I

    .line 40
    if-eq p1, v5, :cond_3

    .line 42
    if-ne p1, v5, :cond_2

    .line 44
    goto :goto_0

    .line 45
    :cond_2
    iput v5, p0, Lo/i7;->m:I

    .line 47
    invoke-virtual {p0, p1, v1}, Lo/i7;->x(II)V

    .line 50
    :goto_0
    return v4

    .line 51
    :cond_3
    return v2

    .line 52
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 55
    move-result v0

    .line 56
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 59
    move-result p1

    .line 60
    invoke-virtual {p0, v0, p1}, Lo/i7;->n(FF)I

    .line 63
    move-result p1

    .line 64
    iget v0, p0, Lo/i7;->m:I

    .line 66
    if-ne v0, p1, :cond_5

    .line 68
    goto :goto_1

    .line 69
    :cond_5
    iput p1, p0, Lo/i7;->m:I

    .line 71
    const/16 v3, 0x80

    .line 73
    invoke-virtual {p0, p1, v3}, Lo/i7;->x(II)V

    .line 76
    invoke-virtual {p0, v0, v1}, Lo/i7;->x(II)V

    .line 79
    :goto_1
    if-eq p1, v5, :cond_6

    .line 81
    move v2, v4

    .line 82
    :cond_6
    :goto_2
    return v2
.end method

.method public abstract n(FF)I
.end method

.method public abstract o(Ljava/util/ArrayList;)V
.end method

.method public final p(I)V
    .locals 3

    .line 1
    const/high16 v0, -0x80000000

    .line 3
    if-eq p1, v0, :cond_0

    .line 5
    iget-object v0, p0, Lo/i7;->h:Landroid/view/accessibility/AccessibilityManager;

    .line 7
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 13
    iget-object v0, p0, Lo/i7;->i:Landroid/view/View;

    .line 15
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 18
    move-result-object v1

    .line 19
    if-eqz v1, :cond_0

    .line 21
    const/16 v2, 0x800

    .line 23
    invoke-virtual {p0, p1, v2}, Lo/i7;->k(II)Landroid/view/accessibility/AccessibilityEvent;

    .line 26
    move-result-object p1

    .line 27
    const/4 v2, 0x0

    .line 28
    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setContentChangeTypes(I)V

    .line 31
    invoke-interface {v1, v0, p1}, Landroid/view/ViewParent;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 34
    :cond_0
    return-void
.end method

.method public final q(ILandroid/graphics/Rect;)Z
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 3
    move/from16 v1, p1

    .line 5
    move-object/from16 v2, p2

    .line 7
    const/4 v3, 0x1

    .line 8
    new-instance v4, Ljava/util/ArrayList;

    .line 10
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 13
    invoke-virtual {v0, v4}, Lo/i7;->o(Ljava/util/ArrayList;)V

    .line 16
    new-instance v5, Lo/Ze;

    .line 18
    invoke-direct {v5}, Lo/Ze;-><init>()V

    .line 21
    const/4 v7, 0x0

    .line 22
    :goto_0
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 25
    move-result v8

    .line 26
    if-ge v7, v8, :cond_0

    .line 28
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 31
    move-result-object v8

    .line 32
    check-cast v8, Ljava/lang/Integer;

    .line 34
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 37
    move-result v8

    .line 38
    invoke-virtual {v0, v8}, Lo/i7;->l(I)Lo/D;

    .line 41
    move-result-object v8

    .line 42
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 45
    move-result-object v9

    .line 46
    check-cast v9, Ljava/lang/Integer;

    .line 48
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    .line 51
    move-result v9

    .line 52
    invoke-virtual {v5, v9, v8}, Lo/Ze;->c(ILjava/lang/Object;)V

    .line 55
    add-int/2addr v7, v3

    .line 56
    goto :goto_0

    .line 57
    :cond_0
    iget v4, v0, Lo/i7;->l:I

    .line 59
    const/high16 v8, -0x80000000

    .line 61
    if-ne v4, v8, :cond_1

    .line 63
    const/4 v4, 0x0

    .line 64
    goto :goto_1

    .line 65
    :cond_1
    invoke-virtual {v5, v4}, Lo/Ze;->b(I)Ljava/lang/Object;

    .line 68
    move-result-object v4

    .line 69
    check-cast v4, Lo/D;

    .line 71
    :goto_1
    sget-object v9, Lo/i7;->o:Lo/u6;

    .line 73
    sget-object v10, Lo/i7;->p:Lo/u6;

    .line 75
    iget-object v11, v0, Lo/i7;->i:Landroid/view/View;

    .line 77
    const/4 v12, 0x2

    .line 78
    if-eq v1, v3, :cond_15

    .line 80
    if-eq v1, v12, :cond_15

    .line 82
    const/16 v12, 0x82

    .line 84
    const/16 v14, 0x42

    .line 86
    const/16 v15, 0x21

    .line 88
    const/16 v7, 0x11

    .line 90
    if-eq v1, v7, :cond_3

    .line 92
    if-eq v1, v15, :cond_3

    .line 94
    if-eq v1, v14, :cond_3

    .line 96
    if-ne v1, v12, :cond_2

    .line 98
    goto :goto_2

    .line 99
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 101
    const-string v2, "direction must be one of {FOCUS_FORWARD, FOCUS_BACKWARD, FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    .line 103
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 106
    throw v1

    .line 107
    :cond_3
    :goto_2
    new-instance v3, Landroid/graphics/Rect;

    .line 109
    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 112
    iget v6, v0, Lo/i7;->l:I

    .line 114
    const-string v13, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    .line 116
    if-eq v6, v8, :cond_4

    .line 118
    invoke-virtual {v0, v6}, Lo/i7;->r(I)Lo/D;

    .line 121
    move-result-object v2

    .line 122
    invoke-virtual {v2, v3}, Lo/D;->f(Landroid/graphics/Rect;)V

    .line 125
    :goto_3
    const/16 v18, -0x1

    .line 127
    goto :goto_4

    .line 128
    :cond_4
    if-eqz v2, :cond_5

    .line 130
    invoke-virtual {v3, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 133
    goto :goto_3

    .line 134
    :cond_5
    invoke-virtual {v11}, Landroid/view/View;->getWidth()I

    .line 137
    move-result v2

    .line 138
    invoke-virtual {v11}, Landroid/view/View;->getHeight()I

    .line 141
    move-result v6

    .line 142
    if-eq v1, v7, :cond_9

    .line 144
    if-eq v1, v15, :cond_8

    .line 146
    if-eq v1, v14, :cond_7

    .line 148
    if-ne v1, v12, :cond_6

    .line 150
    const/4 v6, -0x1

    .line 151
    const/4 v11, 0x0

    .line 152
    invoke-virtual {v3, v11, v6, v2, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 155
    move/from16 v18, v6

    .line 157
    goto :goto_4

    .line 158
    :cond_6
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 160
    invoke-direct {v1, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 163
    throw v1

    .line 164
    :cond_7
    const/4 v2, -0x1

    .line 165
    const/4 v11, 0x0

    .line 166
    invoke-virtual {v3, v2, v11, v2, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 169
    move/from16 v18, v2

    .line 171
    goto :goto_4

    .line 172
    :cond_8
    const/4 v11, 0x0

    .line 173
    const/16 v18, -0x1

    .line 175
    invoke-virtual {v3, v11, v6, v2, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 178
    goto :goto_4

    .line 179
    :cond_9
    const/4 v11, 0x0

    .line 180
    const/16 v18, -0x1

    .line 182
    invoke-virtual {v3, v2, v11, v2, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 185
    :goto_4
    new-instance v2, Landroid/graphics/Rect;

    .line 187
    invoke-direct {v2, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 190
    if-eq v1, v7, :cond_d

    .line 192
    if-eq v1, v15, :cond_c

    .line 194
    if-eq v1, v14, :cond_b

    .line 196
    if-ne v1, v12, :cond_a

    .line 198
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    .line 201
    move-result v6

    .line 202
    const/4 v7, 0x1

    .line 203
    add-int/2addr v6, v7

    .line 204
    neg-int v6, v6

    .line 205
    const/4 v14, 0x0

    .line 206
    invoke-virtual {v2, v14, v6}, Landroid/graphics/Rect;->offset(II)V

    .line 209
    goto :goto_5

    .line 210
    :cond_a
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 212
    invoke-direct {v1, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 215
    throw v1

    .line 216
    :cond_b
    const/4 v7, 0x1

    .line 217
    const/4 v14, 0x0

    .line 218
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    .line 221
    move-result v6

    .line 222
    add-int/2addr v6, v7

    .line 223
    neg-int v6, v6

    .line 224
    invoke-virtual {v2, v6, v14}, Landroid/graphics/Rect;->offset(II)V

    .line 227
    goto :goto_5

    .line 228
    :cond_c
    const/4 v7, 0x1

    .line 229
    const/4 v14, 0x0

    .line 230
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    .line 233
    move-result v6

    .line 234
    add-int/2addr v6, v7

    .line 235
    invoke-virtual {v2, v14, v6}, Landroid/graphics/Rect;->offset(II)V

    .line 238
    goto :goto_5

    .line 239
    :cond_d
    const/4 v7, 0x1

    .line 240
    const/4 v14, 0x0

    .line 241
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    .line 244
    move-result v6

    .line 245
    add-int/2addr v6, v7

    .line 246
    invoke-virtual {v2, v6, v14}, Landroid/graphics/Rect;->offset(II)V

    .line 249
    :goto_5
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 252
    iget v6, v5, Lo/Ze;->c:I

    .line 254
    new-instance v7, Landroid/graphics/Rect;

    .line 256
    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    .line 259
    move v11, v14

    .line 260
    const/16 v16, 0x0

    .line 262
    :goto_6
    if-ge v11, v6, :cond_14

    .line 264
    iget-object v10, v5, Lo/Ze;->b:[Ljava/lang/Object;

    .line 266
    aget-object v10, v10, v11

    .line 268
    check-cast v10, Lo/D;

    .line 270
    if-ne v10, v4, :cond_e

    .line 272
    goto :goto_8

    .line 273
    :cond_e
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 276
    invoke-virtual {v10, v7}, Lo/D;->f(Landroid/graphics/Rect;)V

    .line 279
    invoke-static {v1, v3, v7}, Lo/L1;->E(ILandroid/graphics/Rect;Landroid/graphics/Rect;)Z

    .line 282
    move-result v12

    .line 283
    if-nez v12, :cond_f

    .line 285
    goto :goto_8

    .line 286
    :cond_f
    invoke-static {v1, v3, v2}, Lo/L1;->E(ILandroid/graphics/Rect;Landroid/graphics/Rect;)Z

    .line 289
    move-result v12

    .line 290
    if-nez v12, :cond_10

    .line 292
    goto :goto_7

    .line 293
    :cond_10
    invoke-static {v1, v3, v7, v2}, Lo/L1;->h(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    .line 296
    move-result v12

    .line 297
    if-eqz v12, :cond_11

    .line 299
    goto :goto_7

    .line 300
    :cond_11
    invoke-static {v1, v3, v2, v7}, Lo/L1;->h(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    .line 303
    move-result v12

    .line 304
    if-eqz v12, :cond_12

    .line 306
    goto :goto_8

    .line 307
    :cond_12
    invoke-static {v1, v3, v7}, Lo/L1;->I(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    .line 310
    move-result v12

    .line 311
    invoke-static {v1, v3, v7}, Lo/L1;->J(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    .line 314
    move-result v13

    .line 315
    mul-int/lit8 v15, v12, 0xd

    .line 317
    mul-int/2addr v15, v12

    .line 318
    mul-int/2addr v13, v13

    .line 319
    add-int/2addr v13, v15

    .line 320
    invoke-static {v1, v3, v2}, Lo/L1;->I(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    .line 323
    move-result v12

    .line 324
    invoke-static {v1, v3, v2}, Lo/L1;->J(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    .line 327
    move-result v15

    .line 328
    mul-int/lit8 v17, v12, 0xd

    .line 330
    mul-int v17, v17, v12

    .line 332
    mul-int/2addr v15, v15

    .line 333
    add-int v15, v15, v17

    .line 335
    if-ge v13, v15, :cond_13

    .line 337
    :goto_7
    invoke-virtual {v2, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 340
    move-object/from16 v16, v10

    .line 342
    :cond_13
    :goto_8
    const/4 v13, 0x1

    .line 343
    add-int/2addr v11, v13

    .line 344
    goto :goto_6

    .line 345
    :cond_14
    :goto_9
    move-object/from16 v1, v16

    .line 347
    goto/16 :goto_10

    .line 349
    :cond_15
    move v13, v3

    .line 350
    const/4 v14, 0x0

    .line 351
    const/16 v18, -0x1

    .line 353
    sget-object v2, Lo/Dh;->a:Ljava/util/WeakHashMap;

    .line 355
    invoke-virtual {v11}, Landroid/view/View;->getLayoutDirection()I

    .line 358
    move-result v2

    .line 359
    if-ne v2, v13, :cond_16

    .line 361
    const/4 v2, 0x1

    .line 362
    goto :goto_a

    .line 363
    :cond_16
    move v2, v14

    .line 364
    :goto_a
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 367
    iget v3, v5, Lo/Ze;->c:I

    .line 369
    new-instance v6, Ljava/util/ArrayList;

    .line 371
    invoke-direct {v6, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 374
    move v11, v14

    .line 375
    :goto_b
    if-ge v11, v3, :cond_17

    .line 377
    iget-object v7, v5, Lo/Ze;->b:[Ljava/lang/Object;

    .line 379
    aget-object v7, v7, v11

    .line 381
    check-cast v7, Lo/D;

    .line 383
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 386
    const/4 v7, 0x1

    .line 387
    add-int/2addr v11, v7

    .line 388
    goto :goto_b

    .line 389
    :cond_17
    const/4 v7, 0x1

    .line 390
    new-instance v3, Lo/w7;

    .line 392
    invoke-direct {v3, v9, v2}, Lo/w7;-><init>(Lo/u6;Z)V

    .line 395
    invoke-static {v6, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 398
    if-eq v1, v7, :cond_1b

    .line 400
    if-ne v1, v12, :cond_1a

    .line 402
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 405
    move-result v1

    .line 406
    if-nez v4, :cond_18

    .line 408
    move/from16 v2, v18

    .line 410
    goto :goto_c

    .line 411
    :cond_18
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->lastIndexOf(Ljava/lang/Object;)I

    .line 414
    move-result v2

    .line 415
    :goto_c
    add-int/2addr v2, v7

    .line 416
    if-ge v2, v1, :cond_19

    .line 418
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 421
    move-result-object v7

    .line 422
    goto :goto_f

    .line 423
    :cond_19
    const/4 v7, 0x0

    .line 424
    goto :goto_f

    .line 425
    :cond_1a
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 427
    const-string v2, "direction must be one of {FOCUS_FORWARD, FOCUS_BACKWARD}."

    .line 429
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 432
    throw v1

    .line 433
    :cond_1b
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 436
    move-result v1

    .line 437
    if-nez v4, :cond_1c

    .line 439
    :goto_d
    const/4 v2, 0x1

    .line 440
    goto :goto_e

    .line 441
    :cond_1c
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 444
    move-result v1

    .line 445
    goto :goto_d

    .line 446
    :goto_e
    sub-int/2addr v1, v2

    .line 447
    if-ltz v1, :cond_19

    .line 449
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 452
    move-result-object v7

    .line 453
    :goto_f
    move-object/from16 v16, v7

    .line 455
    check-cast v16, Lo/D;

    .line 457
    goto :goto_9

    .line 458
    :goto_10
    if-nez v1, :cond_1d

    .line 460
    goto :goto_13

    .line 461
    :cond_1d
    iget v2, v5, Lo/Ze;->c:I

    .line 463
    move v6, v14

    .line 464
    :goto_11
    if-ge v6, v2, :cond_1f

    .line 466
    iget-object v3, v5, Lo/Ze;->b:[Ljava/lang/Object;

    .line 468
    aget-object v3, v3, v6

    .line 470
    if-ne v3, v1, :cond_1e

    .line 472
    move v13, v6

    .line 473
    goto :goto_12

    .line 474
    :cond_1e
    const/4 v3, 0x1

    .line 475
    add-int/2addr v6, v3

    .line 476
    goto :goto_11

    .line 477
    :cond_1f
    move/from16 v13, v18

    .line 479
    :goto_12
    iget-object v1, v5, Lo/Ze;->a:[I

    .line 481
    aget v8, v1, v13

    .line 483
    :goto_13
    invoke-virtual {v0, v8}, Lo/i7;->w(I)Z

    .line 486
    move-result v1

    .line 487
    return v1
.end method

.method public final r(I)Lo/D;
    .locals 6

    .line 1
    const/4 v0, -0x1

    .line 2
    if-ne p1, v0, :cond_3

    .line 4
    iget-object p1, p0, Lo/i7;->i:Landroid/view/View;

    .line 6
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain(Landroid/view/View;)Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 9
    move-result-object v0

    .line 10
    new-instance v1, Lo/D;

    .line 12
    invoke-direct {v1, v0}, Lo/D;-><init>(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 15
    sget-object v2, Lo/Dh;->a:Ljava/util/WeakHashMap;

    .line 17
    invoke-virtual {p1, v0}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 20
    new-instance v2, Ljava/util/ArrayList;

    .line 22
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 25
    invoke-virtual {p0, v2}, Lo/i7;->o(Ljava/util/ArrayList;)V

    .line 28
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    .line 31
    move-result v0

    .line 32
    if-lez v0, :cond_1

    .line 34
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 37
    move-result v0

    .line 38
    if-gtz v0, :cond_0

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    .line 43
    const-string v0, "Views cannot have both real and virtual children"

    .line 45
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 48
    throw p1

    .line 49
    :cond_1
    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 52
    move-result v0

    .line 53
    const/4 v3, 0x0

    .line 54
    :goto_1
    if-ge v3, v0, :cond_2

    .line 56
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 59
    move-result-object v4

    .line 60
    check-cast v4, Ljava/lang/Integer;

    .line 62
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 65
    move-result v4

    .line 66
    iget-object v5, v1, Lo/D;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 68
    invoke-virtual {v5, p1, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    .line 71
    add-int/lit8 v3, v3, 0x1

    .line 73
    goto :goto_1

    .line 74
    :cond_2
    return-object v1

    .line 75
    :cond_3
    invoke-virtual {p0, p1}, Lo/i7;->l(I)Lo/D;

    .line 78
    move-result-object p1

    .line 79
    return-object p1
.end method

.method public abstract s(IILandroid/os/Bundle;)Z
.end method

.method public t(Lo/D;)V
    .locals 0

    .line 1
    return-void
.end method

.method public abstract u(ILo/D;)V
.end method

.method public v(IZ)V
    .locals 0

    .line 1
    return-void
.end method

.method public final w(I)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lo/i7;->i:Landroid/view/View;

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_0

    .line 10
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_0

    .line 16
    return v2

    .line 17
    :cond_0
    iget v0, p0, Lo/i7;->l:I

    .line 19
    if-ne v0, p1, :cond_1

    .line 21
    return v2

    .line 22
    :cond_1
    const/high16 v1, -0x80000000

    .line 24
    if-eq v0, v1, :cond_2

    .line 26
    invoke-virtual {p0, v0}, Lo/i7;->j(I)Z

    .line 29
    :cond_2
    if-ne p1, v1, :cond_3

    .line 31
    return v2

    .line 32
    :cond_3
    iput p1, p0, Lo/i7;->l:I

    .line 34
    const/4 v0, 0x1

    .line 35
    invoke-virtual {p0, p1, v0}, Lo/i7;->v(IZ)V

    .line 38
    const/16 v1, 0x8

    .line 40
    invoke-virtual {p0, p1, v1}, Lo/i7;->x(II)V

    .line 43
    return v0
.end method

.method public final x(II)V
    .locals 2

    .line 1
    const/high16 v0, -0x80000000

    .line 3
    if-eq p1, v0, :cond_2

    .line 5
    iget-object v0, p0, Lo/i7;->h:Landroid/view/accessibility/AccessibilityManager;

    .line 7
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object v0, p0, Lo/i7;->i:Landroid/view/View;

    .line 16
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 19
    move-result-object v1

    .line 20
    if-nez v1, :cond_1

    .line 22
    return-void

    .line 23
    :cond_1
    invoke-virtual {p0, p1, p2}, Lo/i7;->k(II)Landroid/view/accessibility/AccessibilityEvent;

    .line 26
    move-result-object p1

    .line 27
    invoke-interface {v1, v0, p1}, Landroid/view/ViewParent;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 30
    :cond_2
    :goto_0
    return-void
.end method
