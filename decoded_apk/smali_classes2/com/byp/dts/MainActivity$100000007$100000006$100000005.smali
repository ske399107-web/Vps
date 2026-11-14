.class Lcom/byp/dts/MainActivity$100000007$100000006$100000005;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byp/dts/MainActivity$100000007$100000006;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000005"
.end annotation


# instance fields
.field private final this$0:Lcom/byp/dts/MainActivity$100000007$100000006;

.field private final val$btnLogin:Landroid/widget/Button;

.field private final val$context:Landroid/content/Context;

.field private final val$finalNetworkError:Z

.field private final val$finalResponse:Ljava/lang/String;

.field private final val$key:Ljava/lang/String;

.field private final val$textStatus:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/byp/dts/MainActivity$100000007$100000006;ZLandroid/widget/TextView;Landroid/widget/Button;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 11

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object v9, v0

    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    move-object v9, v0

    move-object v10, v1

    iput-object v10, v9, Lcom/byp/dts/MainActivity$100000007$100000006$100000005;->this$0:Lcom/byp/dts/MainActivity$100000007$100000006;

    move-object v9, v0

    move v10, v2

    iput-boolean v10, v9, Lcom/byp/dts/MainActivity$100000007$100000006$100000005;->val$finalNetworkError:Z

    move-object v9, v0

    move-object v10, v3

    iput-object v10, v9, Lcom/byp/dts/MainActivity$100000007$100000006$100000005;->val$textStatus:Landroid/widget/TextView;

    move-object v9, v0

    move-object v10, v4

    iput-object v10, v9, Lcom/byp/dts/MainActivity$100000007$100000006$100000005;->val$btnLogin:Landroid/widget/Button;

    move-object v9, v0

    move-object v10, v5

    iput-object v10, v9, Lcom/byp/dts/MainActivity$100000007$100000006$100000005;->val$finalResponse:Ljava/lang/String;

    move-object v9, v0

    move-object v10, v6

    iput-object v10, v9, Lcom/byp/dts/MainActivity$100000007$100000006$100000005;->val$key:Ljava/lang/String;

    move-object v9, v0

    move-object v10, v7

    iput-object v10, v9, Lcom/byp/dts/MainActivity$100000007$100000006$100000005;->val$context:Landroid/content/Context;

    return-void
.end method

.method static access$0(Lcom/byp/dts/MainActivity$100000007$100000006$100000005;)Lcom/byp/dts/MainActivity$100000007$100000006;
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lcom/byp/dts/MainActivity$100000007$100000006$100000005;->this$0:Lcom/byp/dts/MainActivity$100000007$100000006;

    move-object v0, v3

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 327
    move-object v0, p0

    move-object v9, v0

    :try_start_0
    iget-boolean v9, v9, Lcom/byp/dts/MainActivity$100000007$100000006$100000005;->val$finalNetworkError:Z

    if-eqz v9, :cond_0

    .line 328
    move-object v9, v0

    iget-object v9, v9, Lcom/byp/dts/MainActivity$100000007$100000006$100000005;->val$textStatus:Landroid/widget/TextView;

    const-string v10, "#ff4444"

    invoke-static {v10}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 329
    move-object v9, v0

    iget-object v9, v9, Lcom/byp/dts/MainActivity$100000007$100000006$100000005;->val$textStatus:Landroid/widget/TextView;

    const-string v10, "Connection failed"

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 330
    move-object v9, v0

    iget-object v9, v9, Lcom/byp/dts/MainActivity$100000007$100000006$100000005;->val$btnLogin:Landroid/widget/Button;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/widget/Button;->setEnabled(Z)V

    .line 382
    :goto_0
    return-void

    .line 334
    :cond_0
    new-instance v9, Lorg/json/JSONObject;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    move-object v11, v0

    iget-object v11, v11, Lcom/byp/dts/MainActivity$100000007$100000006$100000005;->val$finalResponse:Ljava/lang/String;

    invoke-direct {v10, v11}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object v2, v9

    .line 335
    move-object v9, v2

    const-string v10, "status"

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v9

    move v3, v9

    .line 337
    move v9, v3

    if-nez v9, :cond_1

    .line 338
    move-object v9, v0

    iget-object v9, v9, Lcom/byp/dts/MainActivity$100000007$100000006$100000005;->val$textStatus:Landroid/widget/TextView;

    const-string v10, "#ff4444"

    invoke-static {v10}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 339
    move-object v9, v0

    iget-object v9, v9, Lcom/byp/dts/MainActivity$100000007$100000006$100000005;->val$textStatus:Landroid/widget/TextView;

    move-object v10, v2

    const-string v11, "reason"

    const-string v12, "Login Failed"

    invoke-virtual {v10, v11, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 340
    move-object v9, v0

    iget-object v9, v9, Lcom/byp/dts/MainActivity$100000007$100000006$100000005;->val$btnLogin:Landroid/widget/Button;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/widget/Button;->setEnabled(Z)V

    .line 341
    goto :goto_0

    .line 344
    :cond_1
    move-object v9, v2

    const-string v10, "data"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 345
    move-object v9, v0

    iget-object v9, v9, Lcom/byp/dts/MainActivity$100000007$100000006$100000005;->val$textStatus:Landroid/widget/TextView;

    const-string v10, "#ff4444"

    invoke-static {v10}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 346
    move-object v9, v0

    iget-object v9, v9, Lcom/byp/dts/MainActivity$100000007$100000006$100000005;->val$textStatus:Landroid/widget/TextView;

    const-string v10, "Invalid server response"

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 347
    move-object v9, v0

    iget-object v9, v9, Lcom/byp/dts/MainActivity$100000007$100000006$100000005;->val$btnLogin:Landroid/widget/Button;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/widget/Button;->setEnabled(Z)V

    .line 348
    goto :goto_0

    .line 351
    :cond_2
    move-object v9, v2

    const-string v10, "data"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    move-object v4, v9

    .line 352
    move-object v9, v4

    const-string v10, "token"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 353
    move-object v9, v0

    iget-object v9, v9, Lcom/byp/dts/MainActivity$100000007$100000006$100000005;->val$textStatus:Landroid/widget/TextView;

    const-string v10, "#ff4444"

    invoke-static {v10}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 354
    move-object v9, v0

    iget-object v9, v9, Lcom/byp/dts/MainActivity$100000007$100000006$100000005;->val$textStatus:Landroid/widget/TextView;

    const-string v10, "Invalid token data"

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 355
    move-object v9, v0

    iget-object v9, v9, Lcom/byp/dts/MainActivity$100000007$100000006$100000005;->val$btnLogin:Landroid/widget/Button;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/widget/Button;->setEnabled(Z)V

    .line 356
    goto/16 :goto_0

    .line 359
    :cond_3
    move-object v9, v4

    const-string v10, "token"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object v5, v9

    .line 360
    new-instance v9, Ljava/lang/StringBuffer;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v10, Ljava/lang/StringBuffer;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v11, Ljava/lang/StringBuffer;

    move-object v14, v11

    move-object v11, v14

    move-object v12, v14

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v12, Ljava/lang/StringBuffer;

    move-object v14, v12

    move-object v12, v14

    move-object v13, v14

    invoke-direct {v13}, Ljava/lang/StringBuffer;-><init>()V

    const-string v13, "PUBG-"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    move-object v13, v0

    iget-object v13, v13, Lcom/byp/dts/MainActivity$100000007$100000006$100000005;->val$key:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    const-string v12, "-"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    move-object v11, v0

    iget-object v11, v11, Lcom/byp/dts/MainActivity$100000007$100000006$100000005;->val$context:Landroid/content/Context;

    invoke-static {v11}, Lcom/byp/dts/MainActivity;->access$1000027(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    const-string v10, "-Vm8Lk7Uj2JmsjCPVPVjrLa7zgfx3uz9E"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    move-object v6, v9

    .line 361
    move-object v9, v6

    invoke-static {v9}, Lcom/byp/dts/MainActivity;->MD5_Hash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object v7, v9

    .line 363
    move-object v9, v5

    move-object v10, v7

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 364
    move-object v9, v0

    iget-object v9, v9, Lcom/byp/dts/MainActivity$100000007$100000006$100000005;->val$context:Landroid/content/Context;

    const-string v10, "LOGIN SUCCESSFUL! WELCOME TO MODDER GANG "

    const/4 v11, 0x1

    invoke-static {v9, v10, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    .line 365
    move-object v9, v0

    iget-object v9, v9, Lcom/byp/dts/MainActivity$100000007$100000006$100000005;->val$textStatus:Landroid/widget/TextView;

    const-string v10, "#00ff88"

    invoke-static {v10}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 366
    move-object v9, v0

    iget-object v9, v9, Lcom/byp/dts/MainActivity$100000007$100000006$100000005;->val$textStatus:Landroid/widget/TextView;

    const-string v10, "Logged in! Tap EXIT to exit."

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 369
    move-object v9, v0

    iget-object v9, v9, Lcom/byp/dts/MainActivity$100000007$100000006$100000005;->this$0:Lcom/byp/dts/MainActivity$100000007$100000006;

    invoke-static {v9}, Lcom/byp/dts/MainActivity$100000007$100000006;->access$0(Lcom/byp/dts/MainActivity$100000007$100000006;)Lcom/byp/dts/MainActivity$100000007;

    move-result-object v9

    invoke-static {v9}, Lcom/byp/dts/MainActivity$100000007;->access$0(Lcom/byp/dts/MainActivity$100000007;)Lcom/byp/dts/MainActivity;

    move-result-object v9

    invoke-static {v9}, Lcom/byp/dts/MainActivity;->access$L1000007(Lcom/byp/dts/MainActivity;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 370
    move-object v9, v0

    iget-object v9, v9, Lcom/byp/dts/MainActivity$100000007$100000006$100000005;->this$0:Lcom/byp/dts/MainActivity$100000007$100000006;

    invoke-static {v9}, Lcom/byp/dts/MainActivity$100000007$100000006;->access$0(Lcom/byp/dts/MainActivity$100000007$100000006;)Lcom/byp/dts/MainActivity$100000007;

    move-result-object v9

    invoke-static {v9}, Lcom/byp/dts/MainActivity$100000007;->access$0(Lcom/byp/dts/MainActivity$100000007;)Lcom/byp/dts/MainActivity;

    move-result-object v9

    invoke-static {v9}, Lcom/byp/dts/MainActivity;->access$1000020(Lcom/byp/dts/MainActivity;)V

    .line 373
    :cond_4
    move-object v9, v0

    iget-object v9, v9, Lcom/byp/dts/MainActivity$100000007$100000006$100000005;->this$0:Lcom/byp/dts/MainActivity$100000007$100000006;

    invoke-static {v9}, Lcom/byp/dts/MainActivity$100000007$100000006;->access$0(Lcom/byp/dts/MainActivity$100000007$100000006;)Lcom/byp/dts/MainActivity$100000007;

    move-result-object v9

    invoke-static {v9}, Lcom/byp/dts/MainActivity$100000007;->access$0(Lcom/byp/dts/MainActivity$100000007;)Lcom/byp/dts/MainActivity;

    move-result-object v9

    invoke-static {v9}, Lcom/byp/dts/MainActivity;->access$1000024(Lcom/byp/dts/MainActivity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 382
    :goto_1
    move-object v9, v0

    iget-object v9, v9, Lcom/byp/dts/MainActivity$100000007$100000006$100000005;->val$btnLogin:Landroid/widget/Button;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_0

    .line 375
    :cond_5
    move-object v9, v0

    :try_start_1
    iget-object v9, v9, Lcom/byp/dts/MainActivity$100000007$100000006$100000005;->val$textStatus:Landroid/widget/TextView;

    const-string v10, "#ff4444"

    invoke-static {v10}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 376
    move-object v9, v0

    iget-object v9, v9, Lcom/byp/dts/MainActivity$100000007$100000006$100000005;->val$textStatus:Landroid/widget/TextView;

    const-string v10, "Invalid Token!"

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v9

    move-object v2, v9

    .line 379
    move-object v9, v0

    iget-object v9, v9, Lcom/byp/dts/MainActivity$100000007$100000006$100000005;->val$textStatus:Landroid/widget/TextView;

    const-string v10, "#ff4444"

    invoke-static {v10}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 380
    move-object v9, v0

    iget-object v9, v9, Lcom/byp/dts/MainActivity$100000007$100000006$100000005;->val$textStatus:Landroid/widget/TextView;

    const-string v10, "Server Error"

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method
