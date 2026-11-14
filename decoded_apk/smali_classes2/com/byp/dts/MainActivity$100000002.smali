.class Lcom/byp/dts/MainActivity$100000002;
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
    name = "100000002"
.end annotation


# instance fields
.field private final val$context:Landroid/content/Context;

.field private final val$editTextKey:Landroid/widget/EditText;

.field private final val$textStatus:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/widget/EditText;Landroid/widget/TextView;)V
    .locals 7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, v0

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Lcom/byp/dts/MainActivity$100000002;->val$context:Landroid/content/Context;

    move-object v5, v0

    move-object v6, v2

    iput-object v6, v5, Lcom/byp/dts/MainActivity$100000002;->val$editTextKey:Landroid/widget/EditText;

    move-object v5, v0

    move-object v6, v3

    iput-object v6, v5, Lcom/byp/dts/MainActivity$100000002;->val$textStatus:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
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
    .line 259
    move-object v0, p0

    move-object v1, p1

    move-object v6, v0

    :try_start_0
    iget-object v6, v6, Lcom/byp/dts/MainActivity$100000002;->val$context:Landroid/content/Context;

    const-string v7, "clipboard"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ClipboardManager;

    move-object v3, v6

    .line 260
    move-object v6, v3

    if-eqz v6, :cond_1

    move-object v6, v3

    invoke-virtual {v6}, Landroid/content/ClipboardManager;->hasPrimaryClip()Z

    move-result v6

    if-eqz v6, :cond_1

    move-object v6, v3

    invoke-virtual {v6}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ClipData;->getItemCount()I

    move-result v6

    const/4 v7, 0x0

    if-le v6, v7, :cond_1

    .line 261
    move-object v6, v3

    invoke-virtual {v6}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    move-object v4, v6

    .line 262
    move-object v6, v4

    if-eqz v6, :cond_0

    .line 263
    move-object v6, v0

    iget-object v6, v6, Lcom/byp/dts/MainActivity$100000002;->val$editTextKey:Landroid/widget/EditText;

    move-object v7, v4

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 264
    move-object v6, v0

    iget-object v6, v6, Lcom/byp/dts/MainActivity$100000002;->val$textStatus:Landroid/widget/TextView;

    const-string v7, "#00ff88"

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 265
    move-object v6, v0

    iget-object v6, v6, Lcom/byp/dts/MainActivity$100000002;->val$textStatus:Landroid/widget/TextView;

    const-string v7, "Key pasted."

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 271
    :cond_0
    :goto_0
    return-void

    .line 268
    :cond_1
    move-object v6, v0

    iget-object v6, v6, Lcom/byp/dts/MainActivity$100000002;->val$context:Landroid/content/Context;

    const-string v7, "Clipboard empty"

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v6

    move-object v3, v6

    .line 271
    move-object v6, v0

    iget-object v6, v6, Lcom/byp/dts/MainActivity$100000002;->val$context:Landroid/content/Context;

    const-string v7, "Clipboard error!"

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
