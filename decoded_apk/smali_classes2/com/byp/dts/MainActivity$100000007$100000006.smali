.class Lcom/byp/dts/MainActivity$100000007$100000006;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byp/dts/MainActivity$100000007;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000006"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byp/dts/MainActivity$100000007$100000006$100000005;
    }
.end annotation


# instance fields
.field private final this$0:Lcom/byp/dts/MainActivity$100000007;

.field private final val$btnLogin:Landroid/widget/Button;

.field private final val$context:Landroid/content/Context;

.field private final val$key:Ljava/lang/String;

.field private final val$textStatus:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/byp/dts/MainActivity$100000007;Landroid/content/Context;Ljava/lang/String;Landroid/widget/TextView;Landroid/widget/Button;)V
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

    iput-object v8, v7, Lcom/byp/dts/MainActivity$100000007$100000006;->this$0:Lcom/byp/dts/MainActivity$100000007;

    move-object v7, v0

    move-object v8, v2

    iput-object v8, v7, Lcom/byp/dts/MainActivity$100000007$100000006;->val$context:Landroid/content/Context;

    move-object v7, v0

    move-object v8, v3

    iput-object v8, v7, Lcom/byp/dts/MainActivity$100000007$100000006;->val$key:Ljava/lang/String;

    move-object v7, v0

    move-object v8, v4

    iput-object v8, v7, Lcom/byp/dts/MainActivity$100000007$100000006;->val$textStatus:Landroid/widget/TextView;

    move-object v7, v0

    move-object v8, v5

    iput-object v8, v7, Lcom/byp/dts/MainActivity$100000007$100000006;->val$btnLogin:Landroid/widget/Button;

    return-void
.end method

.method static access$0(Lcom/byp/dts/MainActivity$100000007$100000006;)Lcom/byp/dts/MainActivity$100000007;
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lcom/byp/dts/MainActivity$100000007$100000006;->this$0:Lcom/byp/dts/MainActivity$100000007;

    move-object v0, v3

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 310
    move-object/from16 v1, p0

    const-string v8, ""

    move-object v3, v8

    .line 311
    const/4 v8, 0x0

    move v4, v8

    .line 313
    move-object v8, v1

    :try_start_0
    iget-object v8, v8, Lcom/byp/dts/MainActivity$100000007$100000006;->val$context:Landroid/content/Context;

    invoke-static {v8}, Lcom/byp/dts/MainActivity;->access$1000027(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    move-object v5, v8

    .line 314
    new-instance v8, Ljava/lang/StringBuffer;

    move-object/from16 v18, v8

    move-object/from16 v8, v18

    move-object/from16 v9, v18

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v9, Ljava/lang/StringBuffer;

    move-object/from16 v18, v9

    move-object/from16 v9, v18

    move-object/from16 v10, v18

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v10, Ljava/lang/StringBuffer;

    move-object/from16 v18, v10

    move-object/from16 v10, v18

    move-object/from16 v11, v18

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v11, Ljava/lang/StringBuffer;

    move-object/from16 v18, v11

    move-object/from16 v11, v18

    move-object/from16 v12, v18

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v12, Ljava/lang/StringBuffer;

    move-object/from16 v18, v12

    move-object/from16 v12, v18

    move-object/from16 v13, v18

    invoke-direct {v13}, Ljava/lang/StringBuffer;-><init>()V

    const-string v13, "game="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    invoke-static {}, Lcom/byp/dts/MainActivity;->access$L1000003()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    const-string v12, "&user_key="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    move-object v11, v1

    iget-object v11, v11, Lcom/byp/dts/MainActivity$100000007$100000006;->val$key:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    const-string v10, "&serial="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    move-object v9, v5

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v6, v8

    .line 315
    invoke-static {}, Lcom/byp/dts/MainActivity;->access$L1000002()Ljava/lang/String;

    move-result-object v8

    move-object v9, v6

    invoke-static {v8, v9}, Lcom/byp/dts/MainActivity;->urlRequest(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    move-object v3, v8

    .line 320
    :goto_0
    move-object v8, v3

    move-object v5, v8

    .line 321
    move v8, v4

    move v6, v8

    .line 323
    move-object v8, v1

    iget-object v8, v8, Lcom/byp/dts/MainActivity$100000007$100000006;->this$0:Lcom/byp/dts/MainActivity$100000007;

    invoke-static {v8}, Lcom/byp/dts/MainActivity$100000007;->access$0(Lcom/byp/dts/MainActivity$100000007;)Lcom/byp/dts/MainActivity;

    move-result-object v8

    new-instance v9, Lcom/byp/dts/MainActivity$100000007$100000006$100000005;

    move-object/from16 v18, v9

    move-object/from16 v9, v18

    move-object/from16 v10, v18

    move-object v11, v1

    move v12, v6

    move-object v13, v1

    iget-object v13, v13, Lcom/byp/dts/MainActivity$100000007$100000006;->val$textStatus:Landroid/widget/TextView;

    move-object v14, v1

    iget-object v14, v14, Lcom/byp/dts/MainActivity$100000007$100000006;->val$btnLogin:Landroid/widget/Button;

    move-object v15, v5

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/byp/dts/MainActivity$100000007$100000006;->val$key:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/byp/dts/MainActivity$100000007$100000006;->val$context:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-direct/range {v10 .. v17}, Lcom/byp/dts/MainActivity$100000007$100000006$100000005;-><init>(Lcom/byp/dts/MainActivity$100000007$100000006;ZLandroid/widget/TextView;Landroid/widget/Button;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    invoke-virtual {v8, v9}, Lcom/byp/dts/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    .line 315
    :catch_0
    move-exception v8

    move-object v5, v8

    .line 317
    const/4 v8, 0x1

    move v4, v8

    goto :goto_0
.end method
