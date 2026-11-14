.class Lcom/byp/dts/MainActivity$100000009;
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
    name = "100000009"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byp/dts/MainActivity$100000009$100000008;
    }
.end annotation


# instance fields
.field private final val$alertDialog:Landroid/app/AlertDialog;

.field private final val$btnLogin:Landroid/widget/Button;

.field private final val$checkSaveLogin:Landroid/widget/CheckBox;

.field private final val$context:Landroid/content/Context;

.field private final val$editTextKey:Landroid/widget/EditText;

.field private final val$sharedPreferences:Landroid/content/SharedPreferences;

.field private final val$textStatus:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/widget/EditText;Landroid/widget/TextView;Landroid/content/SharedPreferences;Landroid/widget/CheckBox;Landroid/widget/Button;Landroid/content/Context;Landroid/app/AlertDialog;)V
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

    iput-object v10, v9, Lcom/byp/dts/MainActivity$100000009;->val$editTextKey:Landroid/widget/EditText;

    move-object v9, v0

    move-object v10, v2

    iput-object v10, v9, Lcom/byp/dts/MainActivity$100000009;->val$textStatus:Landroid/widget/TextView;

    move-object v9, v0

    move-object v10, v3

    iput-object v10, v9, Lcom/byp/dts/MainActivity$100000009;->val$sharedPreferences:Landroid/content/SharedPreferences;

    move-object v9, v0

    move-object v10, v4

    iput-object v10, v9, Lcom/byp/dts/MainActivity$100000009;->val$checkSaveLogin:Landroid/widget/CheckBox;

    move-object v9, v0

    move-object v10, v5

    iput-object v10, v9, Lcom/byp/dts/MainActivity$100000009;->val$btnLogin:Landroid/widget/Button;

    move-object v9, v0

    move-object v10, v6

    iput-object v10, v9, Lcom/byp/dts/MainActivity$100000009;->val$context:Landroid/content/Context;

    move-object v9, v0

    move-object v10, v7

    iput-object v10, v9, Lcom/byp/dts/MainActivity$100000009;->val$alertDialog:Landroid/app/AlertDialog;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 17
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
    .line 296
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v6, v0

    iget-object v6, v6, Lcom/byp/dts/MainActivity$100000009;->val$editTextKey:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-interface {v6}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    move-object v3, v6

    .line 297
    move-object v6, v3

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 298
    move-object v6, v0

    iget-object v6, v6, Lcom/byp/dts/MainActivity$100000009;->val$textStatus:Landroid/widget/TextView;

    const-string v7, "#ff4444"

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 299
    move-object v6, v0

    iget-object v6, v6, Lcom/byp/dts/MainActivity$100000009;->val$textStatus:Landroid/widget/TextView;

    const-string v7, "Enter key!"

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 313
    :goto_0
    return-void

    .line 303
    :cond_0
    move-object v6, v0

    iget-object v6, v6, Lcom/byp/dts/MainActivity$100000009;->val$sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    move-object v4, v6

    .line 304
    move-object v6, v0

    iget-object v6, v6, Lcom/byp/dts/MainActivity$100000009;->val$checkSaveLogin:Landroid/widget/CheckBox;

    invoke-virtual {v6}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_1

    move-object v6, v4

    const-string v7, "Key"

    move-object v8, v3

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    .line 306
    :goto_1
    move-object v6, v4

    const-string v7, "RememberMe"

    move-object v8, v0

    iget-object v8, v8, Lcom/byp/dts/MainActivity$100000009;->val$checkSaveLogin:Landroid/widget/CheckBox;

    invoke-virtual {v8}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v8

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    .line 307
    move-object v6, v4

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 309
    move-object v6, v0

    iget-object v6, v6, Lcom/byp/dts/MainActivity$100000009;->val$textStatus:Landroid/widget/TextView;

    const-string v7, "#ffd700"

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 310
    move-object v6, v0

    iget-object v6, v6, Lcom/byp/dts/MainActivity$100000009;->val$textStatus:Landroid/widget/TextView;

    const-string v7, "Verifying..."

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 311
    move-object v6, v0

    iget-object v6, v6, Lcom/byp/dts/MainActivity$100000009;->val$btnLogin:Landroid/widget/Button;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 313
    new-instance v6, Ljava/lang/Thread;

    move-object/from16 v16, v6

    move-object/from16 v6, v16

    move-object/from16 v7, v16

    new-instance v8, Lcom/byp/dts/MainActivity$100000009$100000008;

    move-object/from16 v16, v8

    move-object/from16 v8, v16

    move-object/from16 v9, v16

    move-object v10, v0

    move-object v11, v0

    iget-object v11, v11, Lcom/byp/dts/MainActivity$100000009;->val$context:Landroid/content/Context;

    move-object v12, v3

    move-object v13, v0

    iget-object v13, v13, Lcom/byp/dts/MainActivity$100000009;->val$alertDialog:Landroid/app/AlertDialog;

    move-object v14, v0

    iget-object v14, v14, Lcom/byp/dts/MainActivity$100000009;->val$textStatus:Landroid/widget/TextView;

    move-object v15, v0

    iget-object v15, v15, Lcom/byp/dts/MainActivity$100000009;->val$btnLogin:Landroid/widget/Button;

    invoke-direct/range {v9 .. v15}, Lcom/byp/dts/MainActivity$100000009$100000008;-><init>(Lcom/byp/dts/MainActivity$100000009;Landroid/content/Context;Ljava/lang/String;Landroid/app/AlertDialog;Landroid/widget/TextView;Landroid/widget/Button;)V

    invoke-direct {v7, v8}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 305
    :cond_1
    move-object v6, v4

    const-string v7, "Key"

    invoke-interface {v6, v7}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    goto :goto_1
.end method
