.class Lcom/byp/dts/MainActivity$100000010$100000009;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byp/dts/MainActivity$100000010;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000009"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byp/dts/MainActivity$100000010$100000009$100000006;,
        Lcom/byp/dts/MainActivity$100000010$100000009$100000007;,
        Lcom/byp/dts/MainActivity$100000010$100000009$100000008;
    }
.end annotation


# instance fields
.field private final this$0:Lcom/byp/dts/MainActivity$100000010;

.field private final val$btnLogin:Landroid/widget/Button;

.field private final val$context:Landroid/content/Context;

.field private final val$key:Ljava/lang/String;

.field private final val$textStatus:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/byp/dts/MainActivity$100000010;Landroid/content/Context;Ljava/lang/String;Landroid/widget/TextView;Landroid/widget/Button;)V
    .locals 9

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v7, v0

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    move-object v7, v0

    move-object v8, v1

    iput-object v8, v7, Lcom/byp/dts/MainActivity$100000010$100000009;->this$0:Lcom/byp/dts/MainActivity$100000010;

    move-object v7, v0

    move-object v8, v2

    iput-object v8, v7, Lcom/byp/dts/MainActivity$100000010$100000009;->val$context:Landroid/content/Context;

    move-object v7, v0

    move-object v8, v3

    iput-object v8, v7, Lcom/byp/dts/MainActivity$100000010$100000009;->val$key:Ljava/lang/String;

    move-object v7, v0

    move-object v8, v4

    iput-object v8, v7, Lcom/byp/dts/MainActivity$100000010$100000009;->val$textStatus:Landroid/widget/TextView;

    move-object v7, v0

    move-object v8, v5

    iput-object v8, v7, Lcom/byp/dts/MainActivity$100000010$100000009;->val$btnLogin:Landroid/widget/Button;

    return-void
.end method

.method static access$0(Lcom/byp/dts/MainActivity$100000010$100000009;)Lcom/byp/dts/MainActivity$100000010;
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lcom/byp/dts/MainActivity$100000010$100000009;->this$0:Lcom/byp/dts/MainActivity$100000010;

    move-object v0, v3

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 346
    move-object/from16 v1, p0

    move-object v9, v1

    :try_start_0
    iget-object v9, v9, Lcom/byp/dts/MainActivity$100000010$100000009;->val$context:Landroid/content/Context;

    invoke-static {v9}, Lcom/byp/dts/MainActivity;->access$1000022(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    move-object v3, v9

    .line 347
    new-instance v9, Ljava/lang/StringBuffer;

    move-object/from16 v20, v9

    move-object/from16 v9, v20

    move-object/from16 v10, v20

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v10, Ljava/lang/StringBuffer;

    move-object/from16 v20, v10

    move-object/from16 v10, v20

    move-object/from16 v11, v20

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v11, Ljava/lang/StringBuffer;

    move-object/from16 v20, v11

    move-object/from16 v11, v20

    move-object/from16 v12, v20

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v12, Ljava/lang/StringBuffer;

    move-object/from16 v20, v12

    move-object/from16 v12, v20

    move-object/from16 v13, v20

    invoke-direct {v13}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v13, Ljava/lang/StringBuffer;

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    invoke-direct {v14}, Ljava/lang/StringBuffer;-><init>()V

    const-string v14, "game="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v13

    invoke-static {}, Lcom/byp/dts/MainActivity;->access$L1000003()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    const-string v13, "&user_key="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    move-object v12, v1

    iget-object v12, v12, Lcom/byp/dts/MainActivity$100000010$100000009;->val$key:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    const-string v11, "&serial="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    move-object v10, v3

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    move-object v4, v9

    .line 348
    invoke-static {}, Lcom/byp/dts/MainActivity;->access$L1000002()Ljava/lang/String;

    move-result-object v9

    move-object v10, v4

    invoke-static {v9, v10}, Lcom/byp/dts/MainActivity;->urlRequest(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v9

    move-object v5, v9

    .line 351
    :try_start_1
    new-instance v9, Lorg/json/JSONObject;

    move-object/from16 v20, v9

    move-object/from16 v9, v20

    move-object/from16 v10, v20

    move-object v11, v5

    invoke-direct {v10, v11}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object v6, v9

    .line 352
    move-object v9, v6

    const-string v10, "status"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    move v7, v9

    .line 354
    move-object v9, v1

    iget-object v9, v9, Lcom/byp/dts/MainActivity$100000010$100000009;->val$context:Landroid/content/Context;

    check-cast v9, Landroid/app/Activity;

    new-instance v10, Lcom/byp/dts/MainActivity$100000010$100000009$100000006;

    move-object/from16 v20, v10

    move-object/from16 v10, v20

    move-object/from16 v11, v20

    move-object v12, v1

    move v13, v7

    move-object v14, v6

    move-object v15, v1

    iget-object v15, v15, Lcom/byp/dts/MainActivity$100000010$100000009;->val$key:Ljava/lang/String;

    move-object/from16 v16, v3

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/byp/dts/MainActivity$100000010$100000009;->val$context:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v18, v1

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/byp/dts/MainActivity$100000010$100000009;->val$textStatus:Landroid/widget/TextView;

    move-object/from16 v18, v0

    move-object/from16 v19, v1

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/byp/dts/MainActivity$100000010$100000009;->val$btnLogin:Landroid/widget/Button;

    move-object/from16 v19, v0

    invoke-direct/range {v11 .. v19}, Lcom/byp/dts/MainActivity$100000010$100000009$100000006;-><init>(Lcom/byp/dts/MainActivity$100000010$100000009;ZLorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/widget/TextView;Landroid/widget/Button;)V

    invoke-virtual {v9, v10}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 398
    :goto_0
    return-void

    .line 354
    :catch_0
    move-exception v9

    move-object v6, v9

    .line 388
    move-object v9, v1

    :try_start_2
    iget-object v9, v9, Lcom/byp/dts/MainActivity$100000010$100000009;->val$context:Landroid/content/Context;

    check-cast v9, Landroid/app/Activity;

    new-instance v10, Lcom/byp/dts/MainActivity$100000010$100000009$100000007;

    move-object/from16 v20, v10

    move-object/from16 v10, v20

    move-object/from16 v11, v20

    move-object v12, v1

    move-object v13, v1

    iget-object v13, v13, Lcom/byp/dts/MainActivity$100000010$100000009;->val$textStatus:Landroid/widget/TextView;

    move-object v14, v1

    iget-object v14, v14, Lcom/byp/dts/MainActivity$100000010$100000009;->val$btnLogin:Landroid/widget/Button;

    invoke-direct {v11, v12, v13, v14}, Lcom/byp/dts/MainActivity$100000010$100000009$100000007;-><init>(Lcom/byp/dts/MainActivity$100000010$100000009;Landroid/widget/TextView;Landroid/widget/Button;)V

    invoke-virtual {v9, v10}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v9

    move-object v3, v9

    .line 398
    move-object v9, v1

    iget-object v9, v9, Lcom/byp/dts/MainActivity$100000010$100000009;->val$context:Landroid/content/Context;

    check-cast v9, Landroid/app/Activity;

    new-instance v10, Lcom/byp/dts/MainActivity$100000010$100000009$100000008;

    move-object/from16 v20, v10

    move-object/from16 v10, v20

    move-object/from16 v11, v20

    move-object v12, v1

    move-object v13, v1

    iget-object v13, v13, Lcom/byp/dts/MainActivity$100000010$100000009;->val$textStatus:Landroid/widget/TextView;

    move-object v14, v1

    iget-object v14, v14, Lcom/byp/dts/MainActivity$100000010$100000009;->val$btnLogin:Landroid/widget/Button;

    invoke-direct {v11, v12, v13, v14}, Lcom/byp/dts/MainActivity$100000010$100000009$100000008;-><init>(Lcom/byp/dts/MainActivity$100000010$100000009;Landroid/widget/TextView;Landroid/widget/Button;)V

    invoke-virtual {v9, v10}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
