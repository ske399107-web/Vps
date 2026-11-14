.class public final synthetic Lo/U7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo/O4;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lo/U0;


# direct methods
.method public synthetic constructor <init>(Lo/U0;I)V
    .locals 0

    .line 1
    iput p2, p0, Lo/U7;->a:I

    iput-object p1, p0, Lo/U7;->b:Lo/U0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget v0, p0, Lo/U7;->a:I

    .line 3
    packed-switch v0, :pswitch_data_0

    .line 6
    check-cast p1, Landroid/content/Intent;

    .line 8
    iget-object p1, p0, Lo/U7;->b:Lo/U0;

    .line 10
    iget-object p1, p1, Lo/U0;->r:Lo/C;

    .line 12
    invoke-virtual {p1}, Lo/C;->A()V

    .line 15
    return-void

    .line 16
    :pswitch_0
    check-cast p1, Landroid/content/res/Configuration;

    .line 18
    iget-object p1, p0, Lo/U7;->b:Lo/U0;

    .line 20
    iget-object p1, p1, Lo/U0;->r:Lo/C;

    .line 22
    invoke-virtual {p1}, Lo/C;->A()V

    .line 25
    return-void

    nop

    .line 27
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
