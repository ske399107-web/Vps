.class Lcom/byp/dts/MainActivity$100000010;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byp/dts/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000010"
.end annotation


# instance fields
.field private final this$0:Lcom/byp/dts/MainActivity;

.field private final val$delta:[I

.field private final val$params:Landroid/view/WindowManager$LayoutParams;


# direct methods
.method constructor <init>(Lcom/byp/dts/MainActivity;[ILandroid/view/WindowManager$LayoutParams;)V
    .locals 7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, v0

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Lcom/byp/dts/MainActivity$100000010;->this$0:Lcom/byp/dts/MainActivity;

    move-object v5, v0

    move-object v6, v2

    iput-object v6, v5, Lcom/byp/dts/MainActivity$100000010;->val$delta:[I

    move-object v5, v0

    move-object v6, v3

    iput-object v6, v5, Lcom/byp/dts/MainActivity$100000010;->val$params:Landroid/view/WindowManager$LayoutParams;

    return-void
.end method

.method static access$0(Lcom/byp/dts/MainActivity$100000010;)Lcom/byp/dts/MainActivity;
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lcom/byp/dts/MainActivity$100000010;->this$0:Lcom/byp/dts/MainActivity;

    move-object v0, v3

    return-object v0
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 422
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v2

    invoke-virtual {v4}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 437
    :goto_0
    const/4 v4, 0x0

    move v0, v4

    return v0

    .line 424
    :pswitch_0
    move-object v4, v0

    iget-object v4, v4, Lcom/byp/dts/MainActivity$100000010;->val$delta:[I

    const/4 v5, 0x0

    move-object v6, v0

    iget-object v6, v6, Lcom/byp/dts/MainActivity$100000010;->val$params:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->x:I

    int-to-float v6, v6

    move-object v7, v2

    invoke-virtual {v7}, Landroid/view/MotionEvent;->getRawX()F

    move-result v7

    sub-float/2addr v6, v7

    float-to-int v6, v6

    aput v6, v4, v5

    .line 425
    move-object v4, v0

    iget-object v4, v4, Lcom/byp/dts/MainActivity$100000010;->val$delta:[I

    const/4 v5, 0x1

    move-object v6, v0

    iget-object v6, v6, Lcom/byp/dts/MainActivity$100000010;->val$params:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->y:I

    int-to-float v6, v6

    move-object v7, v2

    invoke-virtual {v7}, Landroid/view/MotionEvent;->getRawY()F

    move-result v7

    sub-float/2addr v6, v7

    float-to-int v6, v6

    aput v6, v4, v5

    .line 426
    move-object v4, v1

    const v5, 0x3f333333    # 0.7f

    invoke-virtual {v4, v5}, Landroid/view/View;->setAlpha(F)V

    .line 427
    goto :goto_0

    .line 429
    :pswitch_1
    move-object v4, v0

    iget-object v4, v4, Lcom/byp/dts/MainActivity$100000010;->val$params:Landroid/view/WindowManager$LayoutParams;

    move-object v5, v2

    invoke-virtual {v5}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    move-object v6, v0

    iget-object v6, v6, Lcom/byp/dts/MainActivity$100000010;->val$delta:[I

    const/4 v7, 0x0

    aget v6, v6, v7

    int-to-float v6, v6

    add-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 430
    move-object v4, v0

    iget-object v4, v4, Lcom/byp/dts/MainActivity$100000010;->val$params:Landroid/view/WindowManager$LayoutParams;

    move-object v5, v2

    invoke-virtual {v5}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    move-object v6, v0

    iget-object v6, v6, Lcom/byp/dts/MainActivity$100000010;->val$delta:[I

    const/4 v7, 0x1

    aget v6, v6, v7

    int-to-float v6, v6

    add-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 431
    move-object v4, v0

    iget-object v4, v4, Lcom/byp/dts/MainActivity$100000010;->this$0:Lcom/byp/dts/MainActivity;

    invoke-static {v4}, Lcom/byp/dts/MainActivity;->access$L1000006(Lcom/byp/dts/MainActivity;)Landroid/view/WindowManager;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Lcom/byp/dts/MainActivity$100000010;->this$0:Lcom/byp/dts/MainActivity;

    invoke-static {v5}, Lcom/byp/dts/MainActivity;->access$L1000007(Lcom/byp/dts/MainActivity;)Landroid/view/View;

    move-result-object v5

    move-object v6, v0

    iget-object v6, v6, Lcom/byp/dts/MainActivity$100000010;->val$params:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v4, v5, v6}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 432
    goto :goto_0

    .line 434
    :pswitch_2
    move-object v4, v1

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v4, v5}, Landroid/view/View;->setAlpha(F)V

    .line 435
    goto :goto_0

    .line 422
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
