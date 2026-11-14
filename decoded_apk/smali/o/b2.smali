.class public final Lo/b2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:Landroid/view/View;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;Landroid/graphics/Typeface;I)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lo/b2;->a:I

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/b2;->c:Landroid/view/View;

    iput-object p2, p0, Lo/b2;->d:Ljava/lang/Object;

    iput p3, p0, Lo/b2;->b:I

    return-void
.end method

.method public constructor <init>(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;Landroid/view/View;I)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lo/b2;->a:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/b2;->d:Ljava/lang/Object;

    iput-object p2, p0, Lo/b2;->c:Landroid/view/View;

    iput p3, p0, Lo/b2;->b:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget v0, p0, Lo/b2;->a:I

    .line 3
    packed-switch v0, :pswitch_data_0

    .line 6
    iget-object v0, p0, Lo/b2;->d:Ljava/lang/Object;

    .line 8
    check-cast v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 10
    iget-object v1, p0, Lo/b2;->c:Landroid/view/View;

    .line 12
    iget v2, p0, Lo/b2;->b:I

    .line 14
    const/4 v3, 0x0

    .line 15
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->E(Landroid/view/View;IZ)V

    .line 18
    return-void

    .line 19
    :pswitch_0
    iget-object v0, p0, Lo/b2;->d:Ljava/lang/Object;

    .line 21
    check-cast v0, Landroid/graphics/Typeface;

    .line 23
    iget v1, p0, Lo/b2;->b:I

    .line 25
    iget-object v2, p0, Lo/b2;->c:Landroid/view/View;

    .line 27
    check-cast v2, Landroid/widget/TextView;

    .line 29
    invoke-virtual {v2, v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 32
    return-void

    .line 33
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
