.class public final Lo/g5;
.super Lo/c7;
.source "SourceFile"


# instance fields
.field public final synthetic e:I


# direct methods
.method public synthetic constructor <init>(Lo/b7;I)V
    .locals 0

    .line 1
    iput p2, p0, Lo/g5;->e:I

    invoke-direct {p0, p1}, Lo/c7;-><init>(Lo/b7;)V

    return-void
.end method


# virtual methods
.method public r()V
    .locals 2

    .line 1
    iget v0, p0, Lo/g5;->e:I

    .line 3
    packed-switch v0, :pswitch_data_0

    .line 6
    return-void

    .line 7
    :pswitch_0
    iget-object v0, p0, Lo/c7;->b:Lo/b7;

    .line 9
    const/4 v1, 0x0

    .line 10
    iput-object v1, v0, Lo/b7;->o:Landroid/view/View$OnLongClickListener;

    .line 12
    iget-object v0, v0, Lo/b7;->g:Lcom/google/android/material/internal/CheckableImageButton;

    .line 14
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 17
    invoke-static {v0, v1}, Lo/L1;->Z(Lcom/google/android/material/internal/CheckableImageButton;Landroid/view/View$OnLongClickListener;)V

    .line 20
    return-void

    .line 21
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
