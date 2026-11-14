.class public final synthetic Lo/X3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lo/c7;


# direct methods
.method public synthetic constructor <init>(Lo/c7;I)V
    .locals 0

    .line 1
    iput p2, p0, Lo/X3;->a:I

    iput-object p1, p0, Lo/X3;->b:Lo/c7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 0

    .line 1
    iget p1, p0, Lo/X3;->a:I

    .line 3
    packed-switch p1, :pswitch_data_0

    .line 6
    iget-object p1, p0, Lo/X3;->b:Lo/c7;

    .line 8
    check-cast p1, Lo/r6;

    .line 10
    iput-boolean p2, p1, Lo/r6;->l:Z

    .line 12
    invoke-virtual {p1}, Lo/c7;->q()V

    .line 15
    if-nez p2, :cond_0

    .line 17
    const/4 p2, 0x0

    .line 18
    invoke-virtual {p1, p2}, Lo/r6;->t(Z)V

    .line 21
    iput-boolean p2, p1, Lo/r6;->m:Z

    .line 23
    :cond_0
    return-void

    .line 24
    :pswitch_0
    iget-object p1, p0, Lo/X3;->b:Lo/c7;

    .line 26
    check-cast p1, Lo/a4;

    .line 28
    invoke-virtual {p1}, Lo/a4;->u()Z

    .line 31
    move-result p2

    .line 32
    invoke-virtual {p1, p2}, Lo/a4;->t(Z)V

    .line 35
    return-void

    nop

    .line 37
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
