.class public final Lo/f3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lo/f3;->a:I

    iput-object p2, p0, Lo/f3;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 1
    iget p2, p0, Lo/f3;->a:I

    .line 3
    packed-switch p2, :pswitch_data_0

    .line 6
    iget-object p2, p0, Lo/f3;->b:Ljava/lang/Object;

    .line 8
    check-cast p2, Lo/mg;

    .line 10
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    const/4 p3, 0x2

    .line 14
    new-array p3, p3, [I

    .line 16
    invoke-virtual {p1, p3}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 19
    const/4 p4, 0x0

    .line 20
    aget p3, p3, p4

    .line 22
    iput p3, p2, Lo/mg;->J:I

    .line 24
    iget-object p2, p2, Lo/mg;->C:Landroid/graphics/Rect;

    .line 26
    invoke-virtual {p1, p2}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 29
    return-void

    .line 30
    :pswitch_0
    const/4 p1, 0x0

    .line 31
    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
