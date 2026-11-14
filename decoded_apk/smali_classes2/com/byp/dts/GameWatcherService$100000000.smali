.class Lcom/byp/dts/GameWatcherService$100000000;
.super Ljava/lang/Object;
.source "GameWatcherService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byp/dts/GameWatcherService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000000"
.end annotation


# instance fields
.field private final this$0:Lcom/byp/dts/GameWatcherService;


# direct methods
.method constructor <init>(Lcom/byp/dts/GameWatcherService;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/byp/dts/GameWatcherService$100000000;->this$0:Lcom/byp/dts/GameWatcherService;

    return-void
.end method

.method static access$0(Lcom/byp/dts/GameWatcherService$100000000;)Lcom/byp/dts/GameWatcherService;
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lcom/byp/dts/GameWatcherService$100000000;->this$0:Lcom/byp/dts/GameWatcherService;

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
    .line 50
    move-object v0, p0

    move-object v6, v0

    iget-object v6, v6, Lcom/byp/dts/GameWatcherService$100000000;->this$0:Lcom/byp/dts/GameWatcherService;

    const-string v7, "com.dts.freefiremax"

    invoke-static {v6, v7}, Lcom/byp/dts/GameWatcherService;->access$1000006(Lcom/byp/dts/GameWatcherService;Ljava/lang/String;)Z

    move-result v6

    move v2, v6

    .line 52
    :goto_0
    move-object v6, v0

    iget-object v6, v6, Lcom/byp/dts/GameWatcherService$100000000;->this$0:Lcom/byp/dts/GameWatcherService;

    const-string v7, "com.dts.freefiremax"

    invoke-static {v6, v7}, Lcom/byp/dts/GameWatcherService;->access$1000006(Lcom/byp/dts/GameWatcherService;Ljava/lang/String;)Z

    move-result v6

    move v3, v6

    .line 53
    move v6, v2

    if-eqz v6, :cond_0

    move v6, v3

    if-nez v6, :cond_0

    .line 54
    move-object v6, v0

    iget-object v6, v6, Lcom/byp/dts/GameWatcherService$100000000;->this$0:Lcom/byp/dts/GameWatcherService;

    invoke-static {v6}, Lcom/byp/dts/GameWatcherService;->access$1000007(Lcom/byp/dts/GameWatcherService;)V

    .line 51
    return-void

    .line 57
    :cond_0
    move v6, v3

    move v2, v6

    .line 58
    const/16 v6, 0x7d0

    int-to-long v6, v6

    :try_start_0
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v6

    move-object v4, v6

    goto :goto_0
.end method
