.class Lcom/byp/dts/MainActivity$100000011;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byp/dts/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000011"
.end annotation


# instance fields
.field private final this$0:Lcom/byp/dts/MainActivity;


# direct methods
.method constructor <init>(Lcom/byp/dts/MainActivity;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/byp/dts/MainActivity$100000011;->this$0:Lcom/byp/dts/MainActivity;

    return-void
.end method

.method static access$0(Lcom/byp/dts/MainActivity$100000011;)Lcom/byp/dts/MainActivity;
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lcom/byp/dts/MainActivity$100000011;->this$0:Lcom/byp/dts/MainActivity;

    move-object v0, v3

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 444
    move-object v0, p0

    move-object v1, p1

    move-object v5, v0

    iget-object v5, v5, Lcom/byp/dts/MainActivity$100000011;->this$0:Lcom/byp/dts/MainActivity;

    const-string v6, "com.dts.freefiremax"

    invoke-static {v5, v6}, Lcom/byp/dts/MainActivity;->access$1000025(Lcom/byp/dts/MainActivity;Ljava/lang/String;)V

    .line 445
    move-object v5, v0

    iget-object v5, v5, Lcom/byp/dts/MainActivity$100000011;->this$0:Lcom/byp/dts/MainActivity;

    const-string v6, "com.dts.freefiremax"

    invoke-static {v5, v6}, Lcom/byp/dts/MainActivity;->access$1000026(Lcom/byp/dts/MainActivity;Ljava/lang/String;)V

    .line 446
    move-object v5, v0

    iget-object v5, v5, Lcom/byp/dts/MainActivity$100000011;->this$0:Lcom/byp/dts/MainActivity;

    const-string v6, "Game closed! Clear Data now"

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 448
    move-object v5, v0

    iget-object v5, v5, Lcom/byp/dts/MainActivity$100000011;->this$0:Lcom/byp/dts/MainActivity;

    invoke-static {v5}, Lcom/byp/dts/MainActivity;->access$L1000007(Lcom/byp/dts/MainActivity;)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 449
    move-object v5, v0

    :try_start_0
    iget-object v5, v5, Lcom/byp/dts/MainActivity$100000011;->this$0:Lcom/byp/dts/MainActivity;

    invoke-static {v5}, Lcom/byp/dts/MainActivity;->access$L1000006(Lcom/byp/dts/MainActivity;)Landroid/view/WindowManager;

    move-result-object v5

    move-object v6, v0

    iget-object v6, v6, Lcom/byp/dts/MainActivity$100000011;->this$0:Lcom/byp/dts/MainActivity;

    invoke-static {v6}, Lcom/byp/dts/MainActivity;->access$L1000007(Lcom/byp/dts/MainActivity;)Landroid/view/View;

    move-result-object v6

    invoke-interface {v5, v6}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 450
    :goto_0
    move-object v5, v0

    iget-object v5, v5, Lcom/byp/dts/MainActivity$100000011;->this$0:Lcom/byp/dts/MainActivity;

    const/4 v6, 0x0

    check-cast v6, Landroid/view/View;

    invoke-static {v5, v6}, Lcom/byp/dts/MainActivity;->access$S1000007(Lcom/byp/dts/MainActivity;Landroid/view/View;)V

    .line 452
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Lcom/byp/dts/MainActivity$100000011;->this$0:Lcom/byp/dts/MainActivity;

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lcom/byp/dts/MainActivity;->access$S1000008(Lcom/byp/dts/MainActivity;Z)V

    return-void

    .line 449
    :catch_0
    move-exception v5

    move-object v3, v5

    goto :goto_0
.end method
