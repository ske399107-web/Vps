.class public final Lo/sd;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lo/ud;


# direct methods
.method public synthetic constructor <init>(Lo/ud;I)V
    .locals 0

    .line 1
    iput p2, p0, Lo/sd;->a:I

    iput-object p1, p0, Lo/sd;->b:Lo/ud;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)I
    .locals 2

    .line 1
    iget v0, p0, Lo/sd;->a:I

    .line 3
    packed-switch v0, :pswitch_data_0

    .line 6
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lo/vd;

    .line 12
    iget-object v1, p0, Lo/sd;->b:Lo/ud;

    .line 14
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    .line 20
    move-result v1

    .line 21
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 24
    move-result-object p1

    .line 25
    check-cast p1, Lo/vd;

    .line 27
    iget-object p1, p1, Lo/vd;->b:Landroid/graphics/Rect;

    .line 29
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    .line 31
    add-int/2addr v1, p1

    .line 32
    iget p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 34
    add-int/2addr v1, p1

    .line 35
    return v1

    .line 36
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 39
    move-result-object v0

    .line 40
    check-cast v0, Lo/vd;

    .line 42
    iget-object v1, p0, Lo/sd;->b:Lo/ud;

    .line 44
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    .line 50
    move-result v1

    .line 51
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 54
    move-result-object p1

    .line 55
    check-cast p1, Lo/vd;

    .line 57
    iget-object p1, p1, Lo/vd;->b:Landroid/graphics/Rect;

    .line 59
    iget p1, p1, Landroid/graphics/Rect;->right:I

    .line 61
    add-int/2addr v1, p1

    .line 62
    iget p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 64
    add-int/2addr v1, p1

    .line 65
    return v1

    nop

    .line 67
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final b(Landroid/view/View;)I
    .locals 2

    .line 1
    iget v0, p0, Lo/sd;->a:I

    .line 3
    packed-switch v0, :pswitch_data_0

    .line 6
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lo/vd;

    .line 12
    iget-object v1, p0, Lo/sd;->b:Lo/ud;

    .line 14
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 20
    move-result v1

    .line 21
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 24
    move-result-object p1

    .line 25
    check-cast p1, Lo/vd;

    .line 27
    iget-object p1, p1, Lo/vd;->b:Landroid/graphics/Rect;

    .line 29
    iget p1, p1, Landroid/graphics/Rect;->top:I

    .line 31
    sub-int/2addr v1, p1

    .line 32
    iget p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 34
    sub-int/2addr v1, p1

    .line 35
    return v1

    .line 36
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 39
    move-result-object v0

    .line 40
    check-cast v0, Lo/vd;

    .line 42
    iget-object v1, p0, Lo/sd;->b:Lo/ud;

    .line 44
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    .line 50
    move-result v1

    .line 51
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 54
    move-result-object p1

    .line 55
    check-cast p1, Lo/vd;

    .line 57
    iget-object p1, p1, Lo/vd;->b:Landroid/graphics/Rect;

    .line 59
    iget p1, p1, Landroid/graphics/Rect;->left:I

    .line 61
    sub-int/2addr v1, p1

    .line 62
    iget p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 64
    sub-int/2addr v1, p1

    .line 65
    return v1

    nop

    .line 67
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final c()I
    .locals 2

    .line 1
    iget v0, p0, Lo/sd;->a:I

    .line 3
    packed-switch v0, :pswitch_data_0

    .line 6
    iget-object v0, p0, Lo/sd;->b:Lo/ud;

    .line 8
    iget v1, v0, Lo/ud;->o:I

    .line 10
    invoke-virtual {v0}, Lo/ud;->D()I

    .line 13
    move-result v0

    .line 14
    sub-int/2addr v1, v0

    .line 15
    return v1

    .line 16
    :pswitch_0
    iget-object v0, p0, Lo/sd;->b:Lo/ud;

    .line 18
    iget v1, v0, Lo/ud;->n:I

    .line 20
    invoke-virtual {v0}, Lo/ud;->F()I

    .line 23
    move-result v0

    .line 24
    sub-int/2addr v1, v0

    .line 25
    return v1

    nop

    .line 27
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final d()I
    .locals 1

    .line 1
    iget v0, p0, Lo/sd;->a:I

    .line 3
    packed-switch v0, :pswitch_data_0

    .line 6
    iget-object v0, p0, Lo/sd;->b:Lo/ud;

    .line 8
    invoke-virtual {v0}, Lo/ud;->G()I

    .line 11
    move-result v0

    .line 12
    return v0

    .line 13
    :pswitch_0
    iget-object v0, p0, Lo/sd;->b:Lo/ud;

    .line 15
    invoke-virtual {v0}, Lo/ud;->E()I

    .line 18
    move-result v0

    .line 19
    return v0

    nop

    .line 21
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
