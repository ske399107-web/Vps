.class public final Lo/f7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lo/f7;->a:I

    iput-object p2, p0, Lo/f7;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 7

    .line 1
    iget v0, p0, Lo/f7;->a:I

    .line 3
    packed-switch v0, :pswitch_data_0

    .line 6
    check-cast p1, Lcom/google/android/material/button/MaterialButton;

    .line 8
    check-cast p2, Lcom/google/android/material/button/MaterialButton;

    .line 10
    iget-boolean v0, p1, Lcom/google/android/material/button/MaterialButton;->o:Z

    .line 12
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 15
    move-result-object v0

    .line 16
    iget-boolean v1, p2, Lcom/google/android/material/button/MaterialButton;->o:Z

    .line 18
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_0

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->isPressed()Z

    .line 32
    move-result v0

    .line 33
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {p2}, Landroid/view/View;->isPressed()Z

    .line 40
    move-result v1

    .line 41
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 44
    move-result-object v1

    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    .line 48
    move-result v0

    .line 49
    if-eqz v0, :cond_1

    .line 51
    goto :goto_0

    .line 52
    :cond_1
    iget-object v0, p0, Lo/f7;->b:Ljava/lang/Object;

    .line 54
    check-cast v0, Lcom/google/android/material/button/MaterialButtonToggleGroup;

    .line 56
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    .line 59
    move-result p1

    .line 60
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 63
    move-result-object p1

    .line 64
    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    .line 67
    move-result p2

    .line 68
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 71
    move-result-object p2

    .line 72
    invoke-virtual {p1, p2}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    .line 75
    move-result v0

    .line 76
    :goto_0
    return v0

    .line 77
    :pswitch_0
    check-cast p1, Lo/d7;

    .line 79
    iget v0, p1, Lo/d7;->b:F

    .line 81
    iget-object v1, p0, Lo/f7;->b:Ljava/lang/Object;

    .line 83
    check-cast v1, Lo/d7;

    .line 85
    iget v2, v1, Lo/d7;->b:F

    .line 87
    sub-float/2addr v0, v2

    .line 88
    float-to-double v3, v0

    .line 89
    iget p1, p1, Lo/d7;->d:F

    .line 91
    iget v0, v1, Lo/d7;->d:F

    .line 93
    sub-float/2addr p1, v0

    .line 94
    float-to-double v5, p1

    .line 95
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->hypot(DD)D

    .line 98
    move-result-wide v3

    .line 99
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 102
    move-result-object p1

    .line 103
    check-cast p2, Lo/d7;

    .line 105
    iget v1, p2, Lo/d7;->b:F

    .line 107
    sub-float/2addr v1, v2

    .line 108
    float-to-double v1, v1

    .line 109
    iget p2, p2, Lo/d7;->d:F

    .line 111
    sub-float/2addr p2, v0

    .line 112
    float-to-double v3, p2

    .line 113
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->hypot(DD)D

    .line 116
    move-result-wide v0

    .line 117
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 120
    move-result-object p2

    .line 121
    if-ne p1, p2, :cond_2

    .line 123
    const/4 p1, 0x0

    .line 124
    goto :goto_1

    .line 125
    :cond_2
    invoke-virtual {p1, p2}, Ljava/lang/Double;->compareTo(Ljava/lang/Object;)I

    .line 128
    move-result p1

    .line 129
    :goto_1
    return p1

    nop

    .line 131
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
