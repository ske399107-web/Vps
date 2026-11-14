.class Lcom/byp/dts/MainActivity$100000008$100000007$100000005;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byp/dts/MainActivity$100000008$100000007;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000005"
.end annotation


# instance fields
.field private final this$0:Lcom/byp/dts/MainActivity$100000008$100000007;

.field private final val$btnLogin:Landroid/widget/Button;

.field private final val$context:Landroid/content/Context;

.field private final val$json:Lorg/json/JSONObject;

.field private final val$key:Ljava/lang/String;

.field private final val$serial:Ljava/lang/String;

.field private final val$status:Z

.field private final val$textStatus:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/byp/dts/MainActivity$100000008$100000007;ZLorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/widget/TextView;Landroid/widget/Button;)V
    .locals 12

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object v10, v0

    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    move-object v10, v0

    move-object v11, v1

    iput-object v11, v10, Lcom/byp/dts/MainActivity$100000008$100000007$100000005;->this$0:Lcom/byp/dts/MainActivity$100000008$100000007;

    move-object v10, v0

    move v11, v2

    iput-boolean v11, v10, Lcom/byp/dts/MainActivity$100000008$100000007$100000005;->val$status:Z

    move-object v10, v0

    move-object v11, v3

    iput-object v11, v10, Lcom/byp/dts/MainActivity$100000008$100000007$100000005;->val$json:Lorg/json/JSONObject;

    move-object v10, v0

    move-object v11, v4

    iput-object v11, v10, Lcom/byp/dts/MainActivity$100000008$100000007$100000005;->val$key:Ljava/lang/String;

    move-object v10, v0

    move-object v11, v5

    iput-object v11, v10, Lcom/byp/dts/MainActivity$100000008$100000007$100000005;->val$serial:Ljava/lang/String;

    move-object v10, v0

    move-object v11, v6

    iput-object v11, v10, Lcom/byp/dts/MainActivity$100000008$100000007$100000005;->val$context:Landroid/content/Context;

    move-object v10, v0

    move-object v11, v7

    iput-object v11, v10, Lcom/byp/dts/MainActivity$100000008$100000007$100000005;->val$textStatus:Landroid/widget/TextView;

    move-object v10, v0

    move-object v11, v8

    iput-object v11, v10, Lcom/byp/dts/MainActivity$100000008$100000007$100000005;->val$btnLogin:Landroid/widget/Button;

    return-void
.end method

.method static access$0(Lcom/byp/dts/MainActivity$100000008$100000007$100000005;)Lcom/byp/dts/MainActivity$100000008$100000007;
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lcom/byp/dts/MainActivity$100000008$100000007$100000005;->this$0:Lcom/byp/dts/MainActivity$100000008$100000007;

    move-object v0, v3

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 12
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

    move-object v6, v0

    :try_start_0
    iget-boolean v6, v6, Lcom/byp/dts/MainActivity$100000008$100000007$100000005;->val$status:Z

    if-eqz v6, :cond_2

    move-object v6, v0

    iget-object v6, v6, Lcom/byp/dts/MainActivity$100000008$100000007$100000005;->val$json:Lorg/json/JSONObject;

    const-string v7, "data"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 328
    move-object v6, v0

    iget-object v6, v6, Lcom/byp/dts/MainActivity$100000008$100000007$100000005;->val$json:Lorg/json/JSONObject;

    const-string v7, "data"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    move-object v2, v6

    .line 329
    move-object v6, v2

    const-string v7, "token"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 330
    move-object v6, v2

    const-string v7, "token"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v3, v6

    .line 331
    new-instance v6, Ljava/lang/StringBuffer;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v7, Ljava/lang/StringBuffer;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v8, Ljava/lang/StringBuffer;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v9, Ljava/lang/StringBuffer;

    move-object v11, v9

    move-object v9, v11

    move-object v10, v11

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    const-string v10, "PUBG-"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    move-object v10, v0

    iget-object v10, v10, Lcom/byp/dts/MainActivity$100000008$100000007$100000005;->val$key:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string v9, "-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    move-object v8, v0

    iget-object v8, v8, Lcom/byp/dts/MainActivity$100000008$100000007$100000005;->val$serial:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, "-Vm8Lk7Uj2JmsjCPVPVjrLa7zgfx3uz9E"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/byp/dts/MainActivity;->MD5_Hash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v4, v6

    .line 332
    move-object v6, v3

    move-object v7, v4

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 333
    move-object v6, v0

    iget-object v6, v6, Lcom/byp/dts/MainActivity$100000008$100000007$100000005;->val$context:Landroid/content/Context;

    const-string v7, "LOGIN SUCCESSFUL! WELCOME TO MODDER GANG "

    const/4 v8, 0x1

    invoke-static {v6, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 334
    move-object v6, v0

    iget-object v6, v6, Lcom/byp/dts/MainActivity$100000008$100000007$100000005;->val$textStatus:Landroid/widget/TextView;

    const-string v7, "#00ff88"

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 335
    move-object v6, v0

    iget-object v6, v6, Lcom/byp/dts/MainActivity$100000008$100000007$100000005;->val$textStatus:Landroid/widget/TextView;

    const-string v7, "Logged in! Tap EXIT to exit."

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 337
    move-object v6, v0

    iget-object v6, v6, Lcom/byp/dts/MainActivity$100000008$100000007$100000005;->this$0:Lcom/byp/dts/MainActivity$100000008$100000007;

    invoke-static {v6}, Lcom/byp/dts/MainActivity$100000008$100000007;->access$0(Lcom/byp/dts/MainActivity$100000008$100000007;)Lcom/byp/dts/MainActivity$100000008;

    move-result-object v6

    invoke-static {v6}, Lcom/byp/dts/MainActivity$100000008;->access$0(Lcom/byp/dts/MainActivity$100000008;)Lcom/byp/dts/MainActivity;

    move-result-object v6

    invoke-static {v6}, Lcom/byp/dts/MainActivity;->access$1000021(Lcom/byp/dts/MainActivity;)V

    .line 338
    move-object v6, v0

    iget-object v6, v6, Lcom/byp/dts/MainActivity$100000008$100000007$100000005;->this$0:Lcom/byp/dts/MainActivity$100000008$100000007;

    invoke-static {v6}, Lcom/byp/dts/MainActivity$100000008$100000007;->access$0(Lcom/byp/dts/MainActivity$100000008$100000007;)Lcom/byp/dts/MainActivity$100000008;

    move-result-object v6

    invoke-static {v6}, Lcom/byp/dts/MainActivity$100000008;->access$0(Lcom/byp/dts/MainActivity$100000008;)Lcom/byp/dts/MainActivity;

    move-result-object v6

    invoke-static {v6}, Lcom/byp/dts/MainActivity;->access$1000025(Lcom/byp/dts/MainActivity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 355
    :goto_0
    move-object v6, v0

    iget-object v6, v6, Lcom/byp/dts/MainActivity$100000008$100000007$100000005;->val$btnLogin:Landroid/widget/Button;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setEnabled(Z)V

    return-void

    .line 340
    :cond_0
    move-object v6, v0

    :try_start_1
    iget-object v6, v6, Lcom/byp/dts/MainActivity$100000008$100000007$100000005;->val$textStatus:Landroid/widget/TextView;

    const-string v7, "#ff4444"

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 341
    move-object v6, v0

    iget-object v6, v6, Lcom/byp/dts/MainActivity$100000008$100000007$100000005;->val$textStatus:Landroid/widget/TextView;

    const-string v7, "Invalid Token!"

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 349
    :catch_0
    move-exception v6

    move-object v2, v6

    .line 352
    move-object v6, v0

    iget-object v6, v6, Lcom/byp/dts/MainActivity$100000008$100000007$100000005;->val$textStatus:Landroid/widget/TextView;

    const-string v7, "#ff4444"

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 353
    move-object v6, v0

    iget-object v6, v6, Lcom/byp/dts/MainActivity$100000008$100000007$100000005;->val$textStatus:Landroid/widget/TextView;

    const-string v7, "Server Error"

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 344
    :cond_1
    move-object v6, v0

    :try_start_2
    iget-object v6, v6, Lcom/byp/dts/MainActivity$100000008$100000007$100000005;->val$textStatus:Landroid/widget/TextView;

    const-string v7, "#ff4444"

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 345
    move-object v6, v0

    iget-object v6, v6, Lcom/byp/dts/MainActivity$100000008$100000007$100000005;->val$textStatus:Landroid/widget/TextView;

    const-string v7, "Invalid server response"

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 348
    :cond_2
    move-object v6, v0

    iget-object v6, v6, Lcom/byp/dts/MainActivity$100000008$100000007$100000005;->val$textStatus:Landroid/widget/TextView;

    const-string v7, "#ff4444"

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 349
    move-object v6, v0

    iget-object v6, v6, Lcom/byp/dts/MainActivity$100000008$100000007$100000005;->val$textStatus:Landroid/widget/TextView;

    move-object v7, v0

    iget-object v7, v7, Lcom/byp/dts/MainActivity$100000008$100000007$100000005;->val$json:Lorg/json/JSONObject;

    const-string v8, "reason"

    const-string v9, "Login Failed"

    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0
.end method
