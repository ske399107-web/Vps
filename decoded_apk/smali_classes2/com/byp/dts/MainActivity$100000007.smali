.class Lcom/byp/dts/MainActivity$100000007;
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
    name = "100000007"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byp/dts/MainActivity$100000007$100000006;
    }
.end annotation


# instance fields
.field private final this$0:Lcom/byp/dts/MainActivity;

.field private final val$btnLogin:Landroid/widget/Button;

.field private final val$checkSaveLogin:Landroid/widget/CheckBox;

.field private final val$context:Landroid/content/Context;

.field private final val$editTextKey:Landroid/widget/EditText;

.field private final val$sharedPreferences:Landroid/content/SharedPreferences;

.field private final val$textStatus:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/byp/dts/MainActivity;Landroid/widget/EditText;Landroid/widget/TextView;Landroid/content/SharedPreferences;Landroid/widget/CheckBox;Landroid/widget/Button;Landroid/content/Context;)V
    .locals 11

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object v9, v0

    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    move-object v9, v0

    move-object v10, v1

    iput-object v10, v9, Lcom/byp/dts/MainActivity$100000007;->this$0:Lcom/byp/dts/MainActivity;

    move-object v9, v0

    move-object v10, v2

    iput-object v10, v9, Lcom/byp/dts/MainActivity$100000007;->val$editTextKey:Landroid/widget/EditText;

    move-object v9, v0

    move-object v10, v3

    iput-object v10, v9, Lcom/byp/dts/MainActivity$100000007;->val$textStatus:Landroid/widget/TextView;

    move-object v9, v0

    move-object v10, v4

    iput-object v10, v9, Lcom/byp/dts/MainActivity$100000007;->val$sharedPreferences:Landroid/content/SharedPreferences;

    move-object v9, v0

    move-object v10, v5

    iput-object v10, v9, Lcom/byp/dts/MainActivity$100000007;->val$checkSaveLogin:Landroid/widget/CheckBox;

    move-object v9, v0

    move-object v10, v6

    iput-object v10, v9, Lcom/byp/dts/MainActivity$100000007;->val$btnLogin:Landroid/widget/Button;

    move-object v9, v0

    move-object v10, v7

    iput-object v10, v9, Lcom/byp/dts/MainActivity$100000007;->val$context:Landroid/content/Context;

    return-void
.end method

.method static access$0(Lcom/byp/dts/MainActivity$100000007;)Lcom/byp/dts/MainActivity;
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lcom/byp/dts/MainActivity$100000007;->this$0:Lcom/byp/dts/MainActivity;

    move-object v0, v3

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 16
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
    .line 287
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v6, v0

    iget-object v6, v6, Lcom/byp/dts/MainActivity$100000007;->val$editTextKey:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-interface {v6}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    move-object v3, v6

    .line 288
    move-object v6, v3

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 289
    move-object v6, v0

    iget-object v6, v6, Lcom/byp/dts/MainActivity$100000007;->val$textStatus:Landroid/widget/TextView;

    const-string v7, "#ff4444"

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 290
    move-object v6, v0

    iget-object v6, v6, Lcom/byp/dts/MainActivity$100000007;->val$textStatus:Landroid/widget/TextView;

    const-string v7, "Please enter license key!"

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 307
    :goto_0
    return-void

    .line 294
    :cond_0
    move-object v6, v0

    iget-object v6, v6, Lcom/byp/dts/MainActivity$100000007;->val$sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    move-object v4, v6

    .line 295
    move-object v6, v0

    iget-object v6, v6, Lcom/byp/dts/MainActivity$100000007;->val$checkSaveLogin:Landroid/widget/CheckBox;

    invoke-virtual {v6}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 296
    move-object v6, v4

    const-string v7, "Key"

    move-object v8, v3

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    .line 300
    :goto_1
    move-object v6, v4

    const-string v7, "RememberMe"

    move-object v8, v0

    iget-object v8, v8, Lcom/byp/dts/MainActivity$100000007;->val$checkSaveLogin:Landroid/widget/CheckBox;

    invoke-virtual {v8}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v8

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    .line 301
    move-object v6, v4

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 303
    move-object v6, v0

    iget-object v6, v6, Lcom/byp/dts/MainActivity$100000007;->val$textStatus:Landroid/widget/TextView;

    const-string v7, "#ffd700"

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 304
    move-object v6, v0

    iget-object v6, v6, Lcom/byp/dts/MainActivity$100000007;->val$textStatus:Landroid/widget/TextView;

    const-string v7, "Verifying key..."

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 305
    move-object v6, v0

    iget-object v6, v6, Lcom/byp/dts/MainActivity$100000007;->val$btnLogin:Landroid/widget/Button;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 307
    new-instance v6, Ljava/lang/Thread;

    move-object v15, v6

    move-object v6, v15

    move-object v7, v15

    new-instance v8, Lcom/byp/dts/MainActivity$100000007$100000006;

    move-object v15, v8

    move-object v8, v15

    move-object v9, v15

    move-object v10, v0

    move-object v11, v0

    iget-object v11, v11, Lcom/byp/dts/MainActivity$100000007;->val$context:Landroid/content/Context;

    move-object v12, v3

    move-object v13, v0

    iget-object v13, v13, Lcom/byp/dts/MainActivity$100000007;->val$textStatus:Landroid/widget/TextView;

    move-object v14, v0

    iget-object v14, v14, Lcom/byp/dts/MainActivity$100000007;->val$btnLogin:Landroid/widget/Button;

    invoke-direct/range {v9 .. v14}, Lcom/byp/dts/MainActivity$100000007$100000006;-><init>(Lcom/byp/dts/MainActivity$100000007;Landroid/content/Context;Ljava/lang/String;Landroid/widget/TextView;Landroid/widget/Button;)V

    invoke-direct {v7, v8}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 298
    :cond_1
    move-object v6, v4

    const-string v7, "Key"

    invoke-interface {v6, v7}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    goto :goto_1
.end method
