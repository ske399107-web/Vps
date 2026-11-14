.class Lcom/byp/dts/MainActivity$100000009$100000008$100000005;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byp/dts/MainActivity$100000009$100000008;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000005"
.end annotation


# instance fields
.field private final this$0:Lcom/byp/dts/MainActivity$100000009$100000008;

.field private final val$alertDialog:Landroid/app/AlertDialog;

.field private final val$btnLogin:Landroid/widget/Button;

.field private final val$context:Landroid/content/Context;

.field private final val$json:Lorg/json/JSONObject;

.field private final val$key:Ljava/lang/String;

.field private final val$serial:Ljava/lang/String;

.field private final val$status:Z

.field private final val$textStatus:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/byp/dts/MainActivity$100000009$100000008;ZLorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Landroid/app/AlertDialog;Landroid/content/Context;Landroid/widget/TextView;Landroid/widget/Button;)V
    .locals 13

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object v11, v0

    invoke-direct {v11}, Ljava/lang/Object;-><init>()V

    move-object v11, v0

    move-object v12, v1

    iput-object v12, v11, Lcom/byp/dts/MainActivity$100000009$100000008$100000005;->this$0:Lcom/byp/dts/MainActivity$100000009$100000008;

    move-object v11, v0

    move v12, v2

    iput-boolean v12, v11, Lcom/byp/dts/MainActivity$100000009$100000008$100000005;->val$status:Z

    move-object v11, v0

    move-object v12, v3

    iput-object v12, v11, Lcom/byp/dts/MainActivity$100000009$100000008$100000005;->val$json:Lorg/json/JSONObject;

    move-object v11, v0

    move-object v12, v4

    iput-object v12, v11, Lcom/byp/dts/MainActivity$100000009$100000008$100000005;->val$key:Ljava/lang/String;

    move-object v11, v0

    move-object v12, v5

    iput-object v12, v11, Lcom/byp/dts/MainActivity$100000009$100000008$100000005;->val$serial:Ljava/lang/String;

    move-object v11, v0

    move-object v12, v6

    iput-object v12, v11, Lcom/byp/dts/MainActivity$100000009$100000008$100000005;->val$alertDialog:Landroid/app/AlertDialog;

    move-object v11, v0

    move-object v12, v7

    iput-object v12, v11, Lcom/byp/dts/MainActivity$100000009$100000008$100000005;->val$context:Landroid/content/Context;

    move-object v11, v0

    move-object v12, v8

    iput-object v12, v11, Lcom/byp/dts/MainActivity$100000009$100000008$100000005;->val$textStatus:Landroid/widget/TextView;

    move-object v11, v0

    move-object v12, v9

    iput-object v12, v11, Lcom/byp/dts/MainActivity$100000009$100000008$100000005;->val$btnLogin:Landroid/widget/Button;

    return-void
.end method

.method static access$0(Lcom/byp/dts/MainActivity$100000009$100000008$100000005;)Lcom/byp/dts/MainActivity$100000009$100000008;
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lcom/byp/dts/MainActivity$100000009$100000008$100000005;->this$0:Lcom/byp/dts/MainActivity$100000009$100000008;

    move-object v0, v3

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 329
    move-object v0, p0

    move-object v7, v0

    :try_start_0
    iget-boolean v7, v7, Lcom/byp/dts/MainActivity$100000009$100000008$100000005;->val$status:Z

    if-eqz v7, :cond_2

    .line 330
    move-object v7, v0

    iget-object v7, v7, Lcom/byp/dts/MainActivity$100000009$100000008$100000005;->val$json:Lorg/json/JSONObject;

    const-string v8, "data"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    move-object v2, v7

    .line 331
    move-object v7, v2

    const-string v8, "token"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v3, v7

    .line 332
    new-instance v7, Ljava/lang/StringBuffer;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v8, Ljava/lang/StringBuffer;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v9, Ljava/lang/StringBuffer;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v10, Ljava/lang/StringBuffer;

    move-object v12, v10

    move-object v10, v12

    move-object v11, v12

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    const-string v11, "PUBG-"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    move-object v11, v0

    iget-object v11, v11, Lcom/byp/dts/MainActivity$100000009$100000008$100000005;->val$key:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    const-string v10, "-"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    move-object v9, v0

    iget-object v9, v9, Lcom/byp/dts/MainActivity$100000009$100000008$100000005;->val$serial:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, "-Vm8Lk7Uj2JmsjCPVPVjrLa7zgfx3uz9E"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v4, v7

    .line 333
    move-object v7, v4

    invoke-static {v7}, Lcom/byp/dts/MainActivity;->MD5_Hash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v5, v7

    .line 335
    move-object v7, v3

    move-object v8, v5

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 336
    move-object v7, v0

    iget-object v7, v7, Lcom/byp/dts/MainActivity$100000009$100000008$100000005;->val$alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v7}, Landroid/app/AlertDialog;->dismiss()V

    .line 337
    move-object v7, v0

    iget-object v7, v7, Lcom/byp/dts/MainActivity$100000009$100000008$100000005;->val$context:Landroid/content/Context;

    const-string v8, "LOGIN SUCCESS!"

    const/4 v9, 0x1

    invoke-static {v7, v8, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    .line 338
    move-object v7, v0

    iget-object v7, v7, Lcom/byp/dts/MainActivity$100000009$100000008$100000005;->val$context:Landroid/content/Context;

    invoke-static {v7}, Lcom/byp/dts/MainActivity;->access$1000024(Landroid/content/Context;)V

    .line 339
    invoke-static {}, Lcom/byp/dts/MainActivity;->access$L1000009()Lcom/byp/dts/MainActivity;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-static {}, Lcom/byp/dts/MainActivity;->access$L1000009()Lcom/byp/dts/MainActivity;

    move-result-object v7

    invoke-virtual {v7}, Lcom/byp/dts/MainActivity;->showFloatingExitButton()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 353
    :cond_0
    :goto_0
    move-object v7, v0

    iget-object v7, v7, Lcom/byp/dts/MainActivity$100000009$100000008$100000005;->val$btnLogin:Landroid/widget/Button;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setEnabled(Z)V

    return-void

    .line 341
    :cond_1
    move-object v7, v0

    :try_start_1
    iget-object v7, v7, Lcom/byp/dts/MainActivity$100000009$100000008$100000005;->val$textStatus:Landroid/widget/TextView;

    const-string v8, "#ff4444"

    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 342
    move-object v7, v0

    iget-object v7, v7, Lcom/byp/dts/MainActivity$100000009$100000008$100000005;->val$textStatus:Landroid/widget/TextView;

    const-string v8, "Invalid Token!"

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 347
    :catch_0
    move-exception v7

    move-object v2, v7

    .line 350
    move-object v7, v0

    iget-object v7, v7, Lcom/byp/dts/MainActivity$100000009$100000008$100000005;->val$textStatus:Landroid/widget/TextView;

    const-string v8, "#ff4444"

    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 351
    move-object v7, v0

    iget-object v7, v7, Lcom/byp/dts/MainActivity$100000009$100000008$100000005;->val$textStatus:Landroid/widget/TextView;

    const-string v8, "Server Error"

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 345
    :cond_2
    move-object v7, v0

    :try_start_2
    iget-object v7, v7, Lcom/byp/dts/MainActivity$100000009$100000008$100000005;->val$json:Lorg/json/JSONObject;

    const-string v8, "reason"

    const-string v9, "Failed"

    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v2, v7

    .line 346
    move-object v7, v0

    iget-object v7, v7, Lcom/byp/dts/MainActivity$100000009$100000008$100000005;->val$textStatus:Landroid/widget/TextView;

    const-string v8, "#ff4444"

    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 347
    move-object v7, v0

    iget-object v7, v7, Lcom/byp/dts/MainActivity$100000009$100000008$100000005;->val$textStatus:Landroid/widget/TextView;

    move-object v8, v2

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0
.end method
