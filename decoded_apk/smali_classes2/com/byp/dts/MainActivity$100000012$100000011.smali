.class Lcom/byp/dts/MainActivity$100000012$100000011;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byp/dts/MainActivity$100000012;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000011"
.end annotation


# instance fields
.field private final this$0:Lcom/byp/dts/MainActivity$100000012;

.field private final val$context:Landroid/content/Context;

.field private final val$targetPackage:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/byp/dts/MainActivity$100000012;Ljava/lang/String;Landroid/content/Context;)V
    .locals 7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, v0

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Lcom/byp/dts/MainActivity$100000012$100000011;->this$0:Lcom/byp/dts/MainActivity$100000012;

    move-object v5, v0

    move-object v6, v2

    iput-object v6, v5, Lcom/byp/dts/MainActivity$100000012$100000011;->val$targetPackage:Ljava/lang/String;

    move-object v5, v0

    move-object v6, v3

    iput-object v6, v5, Lcom/byp/dts/MainActivity$100000012$100000011;->val$context:Landroid/content/Context;

    return-void
.end method

.method static access$0(Lcom/byp/dts/MainActivity$100000012$100000011;)Lcom/byp/dts/MainActivity$100000012;
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lcom/byp/dts/MainActivity$100000012$100000011;->this$0:Lcom/byp/dts/MainActivity$100000012;

    move-object v0, v3

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 425
    move-object v0, p0

    :try_start_0
    new-instance v4, Landroid/content/Intent;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const-string v6, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v2, v4

    .line 426
    move-object v4, v2

    new-instance v5, Ljava/lang/StringBuffer;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "package:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    move-object v6, v0

    iget-object v6, v6, Lcom/byp/dts/MainActivity$100000012$100000011;->val$targetPackage:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v4

    .line 427
    move-object v4, v2

    const/high16 v5, 0x10000000

    invoke-virtual {v4, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v4

    .line 428
    move-object v4, v0

    iget-object v4, v4, Lcom/byp/dts/MainActivity$100000012$100000011;->val$context:Landroid/content/Context;

    move-object v5, v2

    invoke-virtual {v4, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 430
    move-object v4, v0

    iget-object v4, v4, Lcom/byp/dts/MainActivity$100000012$100000011;->val$context:Landroid/content/Context;

    const-string v5, "Please tap \'Clear Data\' to continue"

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 432
    :goto_0
    return-void

    .line 430
    :catch_0
    move-exception v4

    move-object v2, v4

    .line 432
    move-object v4, v0

    iget-object v4, v4, Lcom/byp/dts/MainActivity$100000012$100000011;->val$context:Landroid/content/Context;

    const-string v5, "Cannot open settings"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
