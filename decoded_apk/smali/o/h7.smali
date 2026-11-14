.class public final Lo/h7;
.super Lo/C;
.source "SourceFile"


# instance fields
.field public final synthetic d:Lo/i7;


# direct methods
.method public constructor <init>(Lo/i7;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo/h7;->d:Lo/i7;

    .line 3
    const/4 p1, 0x1

    .line 4
    invoke-direct {p0, p1}, Lo/C;-><init>(I)V

    .line 7
    return-void
.end method


# virtual methods
.method public final C(IILandroid/os/Bundle;)Z
    .locals 7

    .line 1
    iget-object v0, p0, Lo/h7;->d:Lo/i7;

    .line 3
    iget-object v1, v0, Lo/i7;->i:Landroid/view/View;

    .line 5
    const/4 v2, -0x1

    .line 6
    if-eq p1, v2, :cond_7

    .line 8
    const/4 v2, 0x1

    .line 9
    if-eq p2, v2, :cond_6

    .line 11
    const/4 v3, 0x2

    .line 12
    if-eq p2, v3, :cond_5

    .line 14
    const/16 v3, 0x40

    .line 16
    const/4 v4, 0x0

    .line 17
    const/high16 v5, 0x10000

    .line 19
    const/high16 v6, -0x80000000

    .line 21
    if-eq p2, v3, :cond_2

    .line 23
    const/16 v3, 0x80

    .line 25
    if-eq p2, v3, :cond_0

    .line 27
    invoke-virtual {v0, p1, p2, p3}, Lo/i7;->s(IILandroid/os/Bundle;)Z

    .line 30
    move-result p1

    .line 31
    goto :goto_2

    .line 32
    :cond_0
    iget p2, v0, Lo/i7;->k:I

    .line 34
    if-ne p2, p1, :cond_1

    .line 36
    iput v6, v0, Lo/i7;->k:I

    .line 38
    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 41
    invoke-virtual {v0, p1, v5}, Lo/i7;->x(II)V

    .line 44
    goto :goto_1

    .line 45
    :cond_1
    :goto_0
    move v2, v4

    .line 46
    :goto_1
    move p1, v2

    .line 47
    goto :goto_2

    .line 48
    :cond_2
    iget-object p2, v0, Lo/i7;->h:Landroid/view/accessibility/AccessibilityManager;

    .line 50
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    .line 53
    move-result p3

    .line 54
    if-eqz p3, :cond_1

    .line 56
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    .line 59
    move-result p2

    .line 60
    if-nez p2, :cond_3

    .line 62
    goto :goto_0

    .line 63
    :cond_3
    iget p2, v0, Lo/i7;->k:I

    .line 65
    if-eq p2, p1, :cond_1

    .line 67
    if-eq p2, v6, :cond_4

    .line 69
    iput v6, v0, Lo/i7;->k:I

    .line 71
    iget-object p3, v0, Lo/i7;->i:Landroid/view/View;

    .line 73
    invoke-virtual {p3}, Landroid/view/View;->invalidate()V

    .line 76
    invoke-virtual {v0, p2, v5}, Lo/i7;->x(II)V

    .line 79
    :cond_4
    iput p1, v0, Lo/i7;->k:I

    .line 81
    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 84
    const p2, 0x8000

    .line 87
    invoke-virtual {v0, p1, p2}, Lo/i7;->x(II)V

    .line 90
    goto :goto_1

    .line 91
    :cond_5
    invoke-virtual {v0, p1}, Lo/i7;->j(I)Z

    .line 94
    move-result p1

    .line 95
    goto :goto_2

    .line 96
    :cond_6
    invoke-virtual {v0, p1}, Lo/i7;->w(I)Z

    .line 99
    move-result p1

    .line 100
    goto :goto_2

    .line 101
    :cond_7
    sget-object p1, Lo/Dh;->a:Ljava/util/WeakHashMap;

    .line 103
    invoke-virtual {v1, p2, p3}, Landroid/view/View;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    .line 106
    move-result p1

    .line 107
    :goto_2
    return p1
.end method

.method public final y(I)Lo/D;
    .locals 1

    .line 1
    iget-object v0, p0, Lo/h7;->d:Lo/i7;

    .line 3
    invoke-virtual {v0, p1}, Lo/i7;->r(I)Lo/D;

    .line 6
    move-result-object p1

    .line 7
    iget-object p1, p1, Lo/D;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 9
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 12
    move-result-object p1

    .line 13
    new-instance v0, Lo/D;

    .line 15
    invoke-direct {v0, p1}, Lo/D;-><init>(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 18
    return-object v0
.end method

.method public final z(I)Lo/D;
    .locals 2

    .line 1
    const/4 v0, 0x2

    .line 2
    iget-object v1, p0, Lo/h7;->d:Lo/i7;

    .line 4
    if-ne p1, v0, :cond_0

    .line 6
    iget p1, v1, Lo/i7;->k:I

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    iget p1, v1, Lo/i7;->l:I

    .line 11
    :goto_0
    const/high16 v0, -0x80000000

    .line 13
    if-ne p1, v0, :cond_1

    .line 15
    const/4 p1, 0x0

    .line 16
    return-object p1

    .line 17
    :cond_1
    invoke-virtual {p0, p1}, Lo/h7;->y(I)Lo/D;

    .line 20
    move-result-object p1

    .line 21
    return-object p1
.end method
