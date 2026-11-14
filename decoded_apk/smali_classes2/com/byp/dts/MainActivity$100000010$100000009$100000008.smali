.class Lcom/byp/dts/MainActivity$100000010$100000009$100000008;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byp/dts/MainActivity$100000010$100000009;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000008"
.end annotation


# instance fields
.field private final this$0:Lcom/byp/dts/MainActivity$100000010$100000009;

.field private final val$btnLogin:Landroid/widget/Button;

.field private final val$textStatus:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/byp/dts/MainActivity$100000010$100000009;Landroid/widget/TextView;Landroid/widget/Button;)V
    .locals 7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, v0

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Lcom/byp/dts/MainActivity$100000010$100000009$100000008;->this$0:Lcom/byp/dts/MainActivity$100000010$100000009;

    move-object v5, v0

    move-object v6, v2

    iput-object v6, v5, Lcom/byp/dts/MainActivity$100000010$100000009$100000008;->val$textStatus:Landroid/widget/TextView;

    move-object v5, v0

    move-object v6, v3

    iput-object v6, v5, Lcom/byp/dts/MainActivity$100000010$100000009$100000008;->val$btnLogin:Landroid/widget/Button;

    return-void
.end method

.method static access$0(Lcom/byp/dts/MainActivity$100000010$100000009$100000008;)Lcom/byp/dts/MainActivity$100000010$100000009;
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lcom/byp/dts/MainActivity$100000010$100000009$100000008;->this$0:Lcom/byp/dts/MainActivity$100000010$100000009;

    move-object v0, v3

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 401
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Lcom/byp/dts/MainActivity$100000010$100000009$100000008;->val$textStatus:Landroid/widget/TextView;

    const-string v3, "#ff4444"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 402
    move-object v2, v0

    iget-object v2, v2, Lcom/byp/dts/MainActivity$100000010$100000009$100000008;->val$textStatus:Landroid/widget/TextView;

    const-string v3, "Connection failed"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 403
    move-object v2, v0

    iget-object v2, v2, Lcom/byp/dts/MainActivity$100000010$100000009$100000008;->val$btnLogin:Landroid/widget/Button;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method
