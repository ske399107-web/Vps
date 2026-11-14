.class public final Lo/c5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lo/c5;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 6

    .line 1
    const/4 v0, -0x1

    .line 2
    const/4 v1, 0x1

    .line 3
    const/4 v2, 0x0

    .line 4
    iget v3, p0, Lo/c5;->a:I

    .line 6
    packed-switch v3, :pswitch_data_0

    .line 9
    check-cast p1, Landroid/view/View;

    .line 11
    check-cast p2, Landroid/view/View;

    .line 13
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 16
    move-result p1

    .line 17
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    .line 20
    move-result p2

    .line 21
    sub-int/2addr p1, p2

    .line 22
    return p1

    .line 23
    :pswitch_0
    check-cast p1, Lo/We;

    .line 25
    check-cast p2, Lo/We;

    .line 27
    iget p1, p1, Lo/We;->b:I

    .line 29
    iget p2, p2, Lo/We;->b:I

    .line 31
    sub-int/2addr p1, p2

    .line 32
    return p1

    .line 33
    :pswitch_1
    check-cast p1, Lo/d7;

    .line 35
    iget p1, p1, Lo/d7;->a:I

    .line 37
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 40
    move-result-object p1

    .line 41
    check-cast p2, Lo/d7;

    .line 43
    iget p2, p2, Lo/d7;->a:I

    .line 45
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 48
    move-result-object p2

    .line 49
    if-ne p1, p2, :cond_0

    .line 51
    goto :goto_0

    .line 52
    :cond_0
    invoke-virtual {p1, p2}, Ljava/lang/Integer;->compareTo(Ljava/lang/Object;)I

    .line 55
    move-result v2

    .line 56
    :goto_0
    return v2

    .line 57
    :pswitch_2
    check-cast p1, Lo/d7;

    .line 59
    iget p1, p1, Lo/d7;->a:I

    .line 61
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 64
    move-result-object p1

    .line 65
    check-cast p2, Lo/d7;

    .line 67
    iget p2, p2, Lo/d7;->a:I

    .line 69
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 72
    move-result-object p2

    .line 73
    if-ne p1, p2, :cond_1

    .line 75
    goto :goto_1

    .line 76
    :cond_1
    invoke-virtual {p1, p2}, Ljava/lang/Integer;->compareTo(Ljava/lang/Object;)I

    .line 79
    move-result v2

    .line 80
    :goto_1
    return v2

    .line 81
    :pswitch_3
    check-cast p1, Lo/S8;

    .line 83
    check-cast p2, Lo/S8;

    .line 85
    iget-object v3, p1, Lo/S8;->d:Landroidx/recyclerview/widget/RecyclerView;

    .line 87
    if-nez v3, :cond_2

    .line 89
    move v4, v1

    .line 90
    goto :goto_2

    .line 91
    :cond_2
    move v4, v2

    .line 92
    :goto_2
    iget-object v5, p2, Lo/S8;->d:Landroidx/recyclerview/widget/RecyclerView;

    .line 94
    if-nez v5, :cond_3

    .line 96
    move v5, v1

    .line 97
    goto :goto_3

    .line 98
    :cond_3
    move v5, v2

    .line 99
    :goto_3
    if-eq v4, v5, :cond_6

    .line 101
    if-nez v3, :cond_5

    .line 103
    :cond_4
    move v0, v1

    .line 104
    :cond_5
    :goto_4
    move v2, v0

    .line 105
    goto :goto_5

    .line 106
    :cond_6
    iget-boolean v3, p1, Lo/S8;->a:Z

    .line 108
    iget-boolean v4, p2, Lo/S8;->a:Z

    .line 110
    if-eq v3, v4, :cond_7

    .line 112
    if-eqz v3, :cond_4

    .line 114
    goto :goto_4

    .line 115
    :cond_7
    iget v0, p2, Lo/S8;->b:I

    .line 117
    iget v1, p1, Lo/S8;->b:I

    .line 119
    sub-int/2addr v0, v1

    .line 120
    if-eqz v0, :cond_8

    .line 122
    goto :goto_4

    .line 123
    :cond_8
    iget p1, p1, Lo/S8;->c:I

    .line 125
    iget p2, p2, Lo/S8;->c:I

    .line 127
    sub-int/2addr p1, p2

    .line 128
    if-eqz p1, :cond_9

    .line 130
    move v2, p1

    .line 131
    :cond_9
    :goto_5
    return v2

    .line 132
    :pswitch_4
    check-cast p1, Landroid/view/View;

    .line 134
    check-cast p2, Landroid/view/View;

    .line 136
    sget-object v3, Lo/Dh;->a:Ljava/util/WeakHashMap;

    .line 138
    invoke-static {p1}, Lo/vh;->g(Landroid/view/View;)F

    .line 141
    move-result p1

    .line 142
    invoke-static {p2}, Lo/vh;->g(Landroid/view/View;)F

    .line 145
    move-result p2

    .line 146
    cmpl-float v3, p1, p2

    .line 148
    if-lez v3, :cond_a

    .line 150
    goto :goto_6

    .line 151
    :cond_a
    cmpg-float p1, p1, p2

    .line 153
    if-gez p1, :cond_b

    .line 155
    move v0, v1

    .line 156
    goto :goto_6

    .line 157
    :cond_b
    move v0, v2

    .line 158
    :goto_6
    return v0

    .line 159
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
