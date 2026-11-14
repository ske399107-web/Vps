.class Lcom/byp/dts/MainActivity$100000012;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byp/dts/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000012"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byp/dts/MainActivity$100000012$100000011;
    }
.end annotation


# instance fields
.field private final val$context:Landroid/content/Context;

.field private final val$targetPackage:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/byp/dts/MainActivity$100000012;->val$context:Landroid/content/Context;

    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lcom/byp/dts/MainActivity$100000012;->val$targetPackage:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 415
    move-object v0, p0

    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Lcom/byp/dts/MainActivity$100000012;->val$context:Landroid/content/Context;

    const-string v5, "activity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager;

    move-object v2, v4

    .line 416
    move-object v4, v2

    if-eqz v4, :cond_0

    .line 417
    move-object v4, v2

    move-object v5, v0

    iget-object v5, v5, Lcom/byp/dts/MainActivity$100000012;->val$targetPackage:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/app/ActivityManager;->killBackgroundProcesses(Ljava/lang/String;)V

    .line 421
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lcom/byp/dts/MainActivity$100000012;->val$context:Landroid/content/Context;

    check-cast v4, Landroid/app/Activity;

    new-instance v5, Lcom/byp/dts/MainActivity$100000012$100000011;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v0

    move-object v8, v0

    iget-object v8, v8, Lcom/byp/dts/MainActivity$100000012;->val$targetPackage:Ljava/lang/String;

    move-object v9, v0

    iget-object v9, v9, Lcom/byp/dts/MainActivity$100000012;->val$context:Landroid/content/Context;

    invoke-direct {v6, v7, v8, v9}, Lcom/byp/dts/MainActivity$100000012$100000011;-><init>(Lcom/byp/dts/MainActivity$100000012;Ljava/lang/String;Landroid/content/Context;)V

    invoke-virtual {v4, v5}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v4

    move-object v2, v4

    goto :goto_0
.end method
