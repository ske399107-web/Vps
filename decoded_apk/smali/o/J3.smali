.class public final Lo/J3;
.super Lo/r;
.source "SourceFile"


# instance fields
.field public final synthetic d:I

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lo/J3;->d:I

    iput-object p2, p0, Lo/J3;->e:Ljava/lang/Object;

    invoke-direct {p0}, Lo/r;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 1
    iget v0, p0, Lo/J3;->d:I

    .line 3
    packed-switch v0, :pswitch_data_0

    .line 6
    invoke-super {p0, p1, p2}, Lo/r;->c(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 9
    return-void

    .line 10
    :pswitch_0
    invoke-super {p0, p1, p2}, Lo/r;->c(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 13
    iget-object p1, p0, Lo/J3;->e:Ljava/lang/Object;

    .line 15
    check-cast p1, Lcom/google/android/material/internal/CheckableImageButton;

    .line 17
    iget-boolean p1, p1, Lcom/google/android/material/internal/CheckableImageButton;->d:Z

    .line 19
    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityRecord;->setChecked(Z)V

    .line 22
    return-void

    .line 23
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final d(Landroid/view/View;Lo/D;)V
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    iget-object v1, p0, Lo/J3;->e:Ljava/lang/Object;

    .line 4
    iget-object v2, p0, Lo/r;->a:Landroid/view/View$AccessibilityDelegate;

    .line 6
    iget v3, p0, Lo/J3;->d:I

    .line 8
    packed-switch v3, :pswitch_data_0

    .line 11
    iget-object p2, p2, Lo/D;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 13
    invoke-virtual {v2, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 16
    check-cast v1, Lcom/google/android/material/internal/NavigationMenuItemView;

    .line 18
    iget-boolean p1, v1, Lcom/google/android/material/internal/NavigationMenuItemView;->x:Z

    .line 20
    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCheckable(Z)V

    .line 23
    return-void

    .line 24
    :pswitch_0
    iget-object v0, p2, Lo/D;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 26
    invoke-virtual {v2, p1, v0}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 29
    check-cast v1, Lo/Va;

    .line 31
    iget-object p1, v1, Lo/Va;->e0:Landroid/view/View;

    .line 33
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 36
    move-result p1

    .line 37
    if-nez p1, :cond_0

    .line 39
    invoke-virtual {v1}, Lo/T7;->C()Landroid/content/Context;

    .line 42
    move-result-object p1

    .line 43
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 46
    move-result-object p1

    .line 47
    const v0, 0x7f0e0093

    .line 50
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 53
    move-result-object p1

    .line 54
    goto :goto_0

    .line 55
    :cond_0
    invoke-virtual {v1}, Lo/T7;->C()Landroid/content/Context;

    .line 58
    move-result-object p1

    .line 59
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 62
    move-result-object p1

    .line 63
    const v0, 0x7f0e0091

    .line 66
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 69
    move-result-object p1

    .line 70
    :goto_0
    invoke-virtual {p2, p1}, Lo/D;->k(Ljava/lang/String;)V

    .line 73
    return-void

    .line 74
    :pswitch_1
    iget-object v3, p2, Lo/D;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 76
    invoke-virtual {v2, p1, v3}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 79
    sget v2, Lcom/google/android/material/button/MaterialButtonToggleGroup;->k:I

    .line 81
    check-cast v1, Lcom/google/android/material/button/MaterialButtonToggleGroup;

    .line 83
    instance-of v2, p1, Lcom/google/android/material/button/MaterialButton;

    .line 85
    const/4 v3, 0x0

    .line 86
    const/4 v4, -0x1

    .line 87
    if-nez v2, :cond_1

    .line 89
    goto :goto_2

    .line 90
    :cond_1
    move v2, v3

    .line 91
    move v5, v2

    .line 92
    :goto_1
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 95
    move-result v6

    .line 96
    if-ge v2, v6, :cond_4

    .line 98
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 101
    move-result-object v6

    .line 102
    if-ne v6, p1, :cond_2

    .line 104
    move v4, v5

    .line 105
    goto :goto_2

    .line 106
    :cond_2
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 109
    move-result-object v6

    .line 110
    instance-of v6, v6, Lcom/google/android/material/button/MaterialButton;

    .line 112
    if-eqz v6, :cond_3

    .line 114
    invoke-virtual {v1, v2}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->c(I)Z

    .line 117
    move-result v6

    .line 118
    if-eqz v6, :cond_3

    .line 120
    add-int/2addr v5, v0

    .line 121
    :cond_3
    add-int/2addr v2, v0

    .line 122
    goto :goto_1

    .line 123
    :cond_4
    :goto_2
    check-cast p1, Lcom/google/android/material/button/MaterialButton;

    .line 125
    iget-boolean p1, p1, Lcom/google/android/material/button/MaterialButton;->o:Z

    .line 127
    invoke-static {p1, v3, v0, v4, v0}, Lo/C;->B(ZIIII)Lo/C;

    .line 130
    move-result-object p1

    .line 131
    invoke-virtual {p2, p1}, Lo/D;->j(Lo/C;)V

    .line 134
    return-void

    .line 135
    :pswitch_2
    iget-object p2, p2, Lo/D;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 137
    invoke-virtual {v2, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 140
    check-cast v1, Lcom/google/android/material/internal/CheckableImageButton;

    .line 142
    iget-boolean p1, v1, Lcom/google/android/material/internal/CheckableImageButton;->e:Z

    .line 144
    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCheckable(Z)V

    .line 147
    iget-boolean p1, v1, Lcom/google/android/material/internal/CheckableImageButton;->d:Z

    .line 149
    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setChecked(Z)V

    .line 152
    return-void

    .line 153
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
