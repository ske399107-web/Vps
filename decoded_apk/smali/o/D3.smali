.class public final Lo/D3;
.super Landroid/util/Property;
.source "SourceFile"


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Class;Ljava/lang/String;I)V
    .locals 0

    .line 1
    iput p3, p0, Lo/D3;->a:I

    invoke-direct {p0, p1, p2}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, Lo/D3;->a:I

    .line 3
    packed-switch v0, :pswitch_data_0

    .line 6
    check-cast p1, Landroid/view/View;

    .line 8
    invoke-virtual {p1}, Landroid/view/View;->getClipBounds()Landroid/graphics/Rect;

    .line 11
    move-result-object p1

    .line 12
    return-object p1

    .line 13
    :pswitch_0
    check-cast p1, Landroid/view/View;

    .line 15
    sget-object v0, Lo/Wh;->a:Lo/ci;

    .line 17
    invoke-virtual {v0, p1}, Lo/Ng;->h(Landroid/view/View;)F

    .line 20
    move-result p1

    .line 21
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 24
    move-result-object p1

    .line 25
    return-object p1

    .line 26
    :pswitch_1
    check-cast p1, Lo/Cf;

    .line 28
    iget p1, p1, Lo/Cf;->z:F

    .line 30
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 33
    move-result-object p1

    .line 34
    return-object p1

    .line 35
    :pswitch_2
    check-cast p1, Landroid/view/View;

    .line 37
    const/4 p1, 0x0

    .line 38
    return-object p1

    .line 39
    :pswitch_3
    check-cast p1, Landroid/view/View;

    .line 41
    const/4 p1, 0x0

    .line 42
    return-object p1

    .line 43
    :pswitch_4
    check-cast p1, Landroid/view/View;

    .line 45
    const/4 p1, 0x0

    .line 46
    return-object p1

    .line 47
    :pswitch_5
    check-cast p1, Lo/G3;

    .line 49
    const/4 p1, 0x0

    .line 50
    return-object p1

    .line 51
    :pswitch_6
    check-cast p1, Lo/G3;

    .line 53
    const/4 p1, 0x0

    .line 54
    return-object p1

    .line 55
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4

    .line 1
    iget v0, p0, Lo/D3;->a:I

    .line 3
    packed-switch v0, :pswitch_data_0

    .line 6
    check-cast p1, Landroid/view/View;

    .line 8
    check-cast p2, Landroid/graphics/Rect;

    .line 10
    invoke-virtual {p1, p2}, Landroid/view/View;->setClipBounds(Landroid/graphics/Rect;)V

    .line 13
    return-void

    .line 14
    :pswitch_0
    check-cast p1, Landroid/view/View;

    .line 16
    check-cast p2, Ljava/lang/Float;

    .line 18
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    .line 21
    move-result p2

    .line 22
    sget-object v0, Lo/Wh;->a:Lo/ci;

    .line 24
    invoke-virtual {v0, p1, p2}, Lo/Ng;->x(Landroid/view/View;F)V

    .line 27
    return-void

    .line 28
    :pswitch_1
    check-cast p1, Lo/Cf;

    .line 30
    check-cast p2, Ljava/lang/Float;

    .line 32
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    .line 35
    move-result p2

    .line 36
    invoke-virtual {p1, p2}, Lo/Cf;->setThumbPosition(F)V

    .line 39
    return-void

    .line 40
    :pswitch_2
    check-cast p1, Landroid/view/View;

    .line 42
    check-cast p2, Landroid/graphics/PointF;

    .line 44
    iget v0, p2, Landroid/graphics/PointF;->x:F

    .line 46
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 49
    move-result v0

    .line 50
    iget p2, p2, Landroid/graphics/PointF;->y:F

    .line 52
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    .line 55
    move-result p2

    .line 56
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 59
    move-result v1

    .line 60
    add-int/2addr v1, v0

    .line 61
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 64
    move-result v2

    .line 65
    add-int/2addr v2, p2

    .line 66
    invoke-static {p1, v0, p2, v1, v2}, Lo/Wh;->a(Landroid/view/View;IIII)V

    .line 69
    return-void

    .line 70
    :pswitch_3
    check-cast p1, Landroid/view/View;

    .line 72
    check-cast p2, Landroid/graphics/PointF;

    .line 74
    iget v0, p2, Landroid/graphics/PointF;->x:F

    .line 76
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 79
    move-result v0

    .line 80
    iget p2, p2, Landroid/graphics/PointF;->y:F

    .line 82
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    .line 85
    move-result p2

    .line 86
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    .line 89
    move-result v1

    .line 90
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    .line 93
    move-result v2

    .line 94
    invoke-static {p1, v0, p2, v1, v2}, Lo/Wh;->a(Landroid/view/View;IIII)V

    .line 97
    return-void

    .line 98
    :pswitch_4
    check-cast p1, Landroid/view/View;

    .line 100
    check-cast p2, Landroid/graphics/PointF;

    .line 102
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    .line 105
    move-result v0

    .line 106
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 109
    move-result v1

    .line 110
    iget v2, p2, Landroid/graphics/PointF;->x:F

    .line 112
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    .line 115
    move-result v2

    .line 116
    iget p2, p2, Landroid/graphics/PointF;->y:F

    .line 118
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    .line 121
    move-result p2

    .line 122
    invoke-static {p1, v0, v1, v2, p2}, Lo/Wh;->a(Landroid/view/View;IIII)V

    .line 125
    return-void

    .line 126
    :pswitch_5
    check-cast p1, Lo/G3;

    .line 128
    check-cast p2, Landroid/graphics/PointF;

    .line 130
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 133
    iget v0, p2, Landroid/graphics/PointF;->x:F

    .line 135
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 138
    move-result v0

    .line 139
    iput v0, p1, Lo/G3;->c:I

    .line 141
    iget p2, p2, Landroid/graphics/PointF;->y:F

    .line 143
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    .line 146
    move-result p2

    .line 147
    iput p2, p1, Lo/G3;->d:I

    .line 149
    iget v0, p1, Lo/G3;->g:I

    .line 151
    add-int/lit8 v0, v0, 0x1

    .line 153
    iput v0, p1, Lo/G3;->g:I

    .line 155
    iget v1, p1, Lo/G3;->f:I

    .line 157
    if-ne v1, v0, :cond_0

    .line 159
    iget v0, p1, Lo/G3;->a:I

    .line 161
    iget v1, p1, Lo/G3;->b:I

    .line 163
    iget v2, p1, Lo/G3;->c:I

    .line 165
    iget-object v3, p1, Lo/G3;->e:Landroid/view/View;

    .line 167
    invoke-static {v3, v0, v1, v2, p2}, Lo/Wh;->a(Landroid/view/View;IIII)V

    .line 170
    const/4 p2, 0x0

    .line 171
    iput p2, p1, Lo/G3;->f:I

    .line 173
    iput p2, p1, Lo/G3;->g:I

    .line 175
    :cond_0
    return-void

    .line 176
    :pswitch_6
    check-cast p1, Lo/G3;

    .line 178
    check-cast p2, Landroid/graphics/PointF;

    .line 180
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 183
    iget v0, p2, Landroid/graphics/PointF;->x:F

    .line 185
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 188
    move-result v0

    .line 189
    iput v0, p1, Lo/G3;->a:I

    .line 191
    iget p2, p2, Landroid/graphics/PointF;->y:F

    .line 193
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    .line 196
    move-result p2

    .line 197
    iput p2, p1, Lo/G3;->b:I

    .line 199
    iget v0, p1, Lo/G3;->f:I

    .line 201
    add-int/lit8 v0, v0, 0x1

    .line 203
    iput v0, p1, Lo/G3;->f:I

    .line 205
    iget v1, p1, Lo/G3;->g:I

    .line 207
    if-ne v0, v1, :cond_1

    .line 209
    iget v0, p1, Lo/G3;->a:I

    .line 211
    iget v1, p1, Lo/G3;->c:I

    .line 213
    iget v2, p1, Lo/G3;->d:I

    .line 215
    iget-object v3, p1, Lo/G3;->e:Landroid/view/View;

    .line 217
    invoke-static {v3, v0, p2, v1, v2}, Lo/Wh;->a(Landroid/view/View;IIII)V

    .line 220
    const/4 p2, 0x0

    .line 221
    iput p2, p1, Lo/G3;->f:I

    .line 223
    iput p2, p1, Lo/G3;->g:I

    .line 225
    :cond_1
    return-void

    nop

    .line 227
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
