.class Lcom/byp/dts/MainActivity$100000009$100000008;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byp/dts/MainActivity$100000009;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000008"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byp/dts/MainActivity$100000009$100000008$100000005;,
        Lcom/byp/dts/MainActivity$100000009$100000008$100000006;,
        Lcom/byp/dts/MainActivity$100000009$100000008$100000007;
    }
.end annotation


# instance fields
.field private final this$0:Lcom/byp/dts/MainActivity$100000009;

.field private final val$alertDialog:Landroid/app/AlertDialog;

.field private final val$btnLogin:Landroid/widget/Button;

.field private final val$context:Landroid/content/Context;

.field private final val$key:Ljava/lang/String;

.field private final val$textStatus:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/byp/dts/MainActivity$100000009;Landroid/content/Context;Ljava/lang/String;Landroid/app/AlertDialog;Landroid/widget/TextView;Landroid/widget/Button;)V
    .locals 10

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object v8, v0

    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    move-object v8, v0

    move-object v9, v1

    iput-object v9, v8, Lcom/byp/dts/MainActivity$100000009$100000008;->this$0:Lcom/byp/dts/MainActivity$100000009;

    move-object v8, v0

    move-object v9, v2

    iput-object v9, v8, Lcom/byp/dts/MainActivity$100000009$100000008;->val$context:Landroid/content/Context;

    move-object v8, v0

    move-object v9, v3

    iput-object v9, v8, Lcom/byp/dts/MainActivity$100000009$100000008;->val$key:Ljava/lang/String;

    move-object v8, v0

    move-object v9, v4

    iput-object v9, v8, Lcom/byp/dts/MainActivity$100000009$100000008;->val$alertDialog:Landroid/app/AlertDialog;

    move-object v8, v0

    move-object v9, v5

    iput-object v9, v8, Lcom/byp/dts/MainActivity$100000009$100000008;->val$textStatus:Landroid/widget/TextView;

    move-object v8, v0

    move-object v9, v6

    iput-object v9, v8, Lcom/byp/dts/MainActivity$100000009$100000008;->val$btnLogin:Landroid/widget/Button;

    return-void
.end method

.method static access$0(Lcom/byp/dts/MainActivity$100000009$100000008;)Lcom/byp/dts/MainActivity$100000009;
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lcom/byp/dts/MainActivity$100000009$100000008;->this$0:Lcom/byp/dts/MainActivity$100000009;

    move-object v0, v3

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 317
    move-object/from16 v1, p0

    move-object v9, v1

    :try_start_0
    iget-object v9, v9, Lcom/byp/dts/MainActivity$100000009$100000008;->val$context:Landroid/content/Context;

    invoke-static {v9}, Lcom/byp/dts/MainActivity;->access$1000029(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    move-object v3, v9

    .line 318
    new-instance v9, Ljava/lang/StringBuffer;

    move-object/from16 v21, v9

    move-object/from16 v9, v21

    move-object/from16 v10, v21

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v10, Ljava/lang/StringBuffer;

    move-object/from16 v21, v10

    move-object/from16 v10, v21

    move-object/from16 v11, v21

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v11, Ljava/lang/StringBuffer;

    move-object/from16 v21, v11

    move-object/from16 v11, v21

    move-object/from16 v12, v21

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v12, Ljava/lang/StringBuffer;

    move-object/from16 v21, v12

    move-object/from16 v12, v21

    move-object/from16 v13, v21

    invoke-direct {v13}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v13, Ljava/lang/StringBuffer;

    move-object/from16 v21, v13

    move-object/from16 v13, v21

    move-object/from16 v14, v21

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

    iget-object v12, v12, Lcom/byp/dts/MainActivity$100000009$100000008;->val$key:Ljava/lang/String;

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

    .line 319
    invoke-static {}, Lcom/byp/dts/MainActivity;->access$L1000002()Ljava/lang/String;

    move-result-object v9

    move-object v10, v4

    invoke-static {v9, v10}, Lcom/byp/dts/MainActivity;->urlRequest(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v9

    move-object v5, v9

    .line 322
    :try_start_1
    new-instance v9, Lorg/json/JSONObject;

    move-object/from16 v21, v9

    move-object/from16 v9, v21

    move-object/from16 v10, v21

    move-object v11, v5

    invoke-direct {v10, v11}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object v6, v9

    .line 323
    move-object v9, v6

    const-string v10, "status"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    move v7, v9

    .line 325
    move-object v9, v1

    iget-object v9, v9, Lcom/byp/dts/MainActivity$100000009$100000008;->val$context:Landroid/content/Context;

    check-cast v9, Landroid/app/Activity;

    new-instance v10, Lcom/byp/dts/MainActivity$100000009$100000008$100000005;

    move-object/from16 v21, v10

    move-object/from16 v10, v21

    move-object/from16 v11, v21

    move-object v12, v1

    move v13, v7

    move-object v14, v6

    move-object v15, v1

    iget-object v15, v15, Lcom/byp/dts/MainActivity$100000009$100000008;->val$key:Ljava/lang/String;

    move-object/from16 v16, v3

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/byp/dts/MainActivity$100000009$100000008;->val$alertDialog:Landroid/app/AlertDialog;

    move-object/from16 v17, v0

    move-object/from16 v18, v1

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/byp/dts/MainActivity$100000009$100000008;->val$context:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v19, v1

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/byp/dts/MainActivity$100000009$100000008;->val$textStatus:Landroid/widget/TextView;

    move-object/from16 v19, v0

    move-object/from16 v20, v1

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/byp/dts/MainActivity$100000009$100000008;->val$btnLogin:Landroid/widget/Button;

    move-object/from16 v20, v0

    invoke-direct/range {v11 .. v20}, Lcom/byp/dts/MainActivity$100000009$100000008$100000005;-><init>(Lcom/byp/dts/MainActivity$100000009$100000008;ZLorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Landroid/app/AlertDialog;Landroid/content/Context;Landroid/widget/TextView;Landroid/widget/Button;)V

    invoke-virtual {v9, v10}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 367
    :goto_0
    return-void

    .line 325
    :catch_0
    move-exception v9

    move-object v6, v9

    .line 357
    move-object v9, v1

    :try_start_2
    iget-object v9, v9, Lcom/byp/dts/MainActivity$100000009$100000008;->val$context:Landroid/content/Context;

    check-cast v9, Landroid/app/Activity;

    new-instance v10, Lcom/byp/dts/MainActivity$100000009$100000008$100000006;

    move-object/from16 v21, v10

    move-object/from16 v10, v21

    move-object/from16 v11, v21

    move-object v12, v1

    move-object v13, v1

    iget-object v13, v13, Lcom/byp/dts/MainActivity$100000009$100000008;->val$textStatus:Landroid/widget/TextView;

    move-object v14, v1

    iget-object v14, v14, Lcom/byp/dts/MainActivity$100000009$100000008;->val$btnLogin:Landroid/widget/Button;

    invoke-direct {v11, v12, v13, v14}, Lcom/byp/dts/MainActivity$100000009$100000008$100000006;-><init>(Lcom/byp/dts/MainActivity$100000009$100000008;Landroid/widget/TextView;Landroid/widget/Button;)V

    invoke-virtual {v9, v10}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v9

    move-object v3, v9

    .line 367
    move-object v9, v1

    iget-object v9, v9, Lcom/byp/dts/MainActivity$100000009$100000008;->val$context:Landroid/content/Context;

    check-cast v9, Landroid/app/Activity;

    new-instance v10, Lcom/byp/dts/MainActivity$100000009$100000008$100000007;

    move-object/from16 v21, v10

    move-object/from16 v10, v21

    move-object/from16 v11, v21

    move-object v12, v1

    move-object v13, v1

    iget-object v13, v13, Lcom/byp/dts/MainActivity$100000009$100000008;->val$textStatus:Landroid/widget/TextView;

    move-object v14, v1

    iget-object v14, v14, Lcom/byp/dts/MainActivity$100000009$100000008;->val$btnLogin:Landroid/widget/Button;

    invoke-direct {v11, v12, v13, v14}, Lcom/byp/dts/MainActivity$100000009$100000008$100000007;-><init>(Lcom/byp/dts/MainActivity$100000009$100000008;Landroid/widget/TextView;Landroid/widget/Button;)V

    invoke-virtual {v9, v10}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
