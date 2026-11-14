.class Lcom/byp/dts/Applications$100000000;
.super Ljava/lang/Object;
.source "Applications.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byp/dts/Applications;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000000"
.end annotation


# instance fields
.field private final this$0:Lcom/byp/dts/Applications;


# direct methods
.method constructor <init>(Lcom/byp/dts/Applications;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/byp/dts/Applications$100000000;->this$0:Lcom/byp/dts/Applications;

    return-void
.end method

.method static access$0(Lcom/byp/dts/Applications$100000000;)Lcom/byp/dts/Applications;
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lcom/byp/dts/Applications$100000000;->this$0:Lcom/byp/dts/Applications;

    move-object v0, v3

    return-object v0
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Thread;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 21
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    new-instance v10, Landroid/content/Intent;

    move-object/from16 v17, v10

    move-object/from16 v10, v17

    move-object/from16 v11, v17

    move-object v12, v1

    iget-object v12, v12, Lcom/byp/dts/Applications$100000000;->this$0:Lcom/byp/dts/Applications;

    invoke-virtual {v12}, Lcom/byp/dts/Applications;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    :try_start_0
    const-string v13, "com.byp.dts.DebugActivity"

    invoke-static {v13}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v13

    invoke-direct {v11, v12, v13}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object v5, v10

    .line 22
    move-object v10, v5

    const v11, 0x8000

    invoke-virtual {v10, v11}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v10

    .line 23
    move-object v10, v5

    const-string v11, "error"

    move-object v12, v1

    iget-object v12, v12, Lcom/byp/dts/Applications$100000000;->this$0:Lcom/byp/dts/Applications;

    move-object v13, v3

    invoke-static {v12, v13}, Lcom/byp/dts/Applications;->access$1000002(Lcom/byp/dts/Applications;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v10

    .line 24
    move-object v10, v1

    iget-object v10, v10, Lcom/byp/dts/Applications$100000000;->this$0:Lcom/byp/dts/Applications;

    invoke-virtual {v10}, Lcom/byp/dts/Applications;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    const/16 v11, 0x2b67

    move-object v12, v5

    const/high16 v13, 0x40000000    # 2.0f

    invoke-static {v10, v11, v12, v13}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v10

    move-object v7, v10

    .line 25
    move-object v10, v1

    iget-object v10, v10, Lcom/byp/dts/Applications$100000000;->this$0:Lcom/byp/dts/Applications;

    const-string v11, "alarm"

    invoke-virtual {v10, v11}, Lcom/byp/dts/Applications;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/AlarmManager;

    move-object v8, v10

    .line 26
    move-object v10, v8

    const/4 v11, 0x2

    const/16 v12, 0x3e8

    int-to-long v12, v12

    move-object v14, v7

    invoke-virtual {v10, v11, v12, v13, v14}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 27
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v10

    invoke-static {v10}, Landroid/os/Process;->killProcess(I)V

    .line 28
    const/4 v10, 0x2

    invoke-static {v10}, Ljava/lang/System;->exit(I)V

    .line 29
    move-object v10, v1

    iget-object v10, v10, Lcom/byp/dts/Applications$100000000;->this$0:Lcom/byp/dts/Applications;

    invoke-static {v10}, Lcom/byp/dts/Applications;->access$L1000000(Lcom/byp/dts/Applications;)Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v10

    move-object v11, v2

    move-object v12, v3

    invoke-interface {v10, v11, v12}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    return-void

    .line 21
    :catch_0
    move-exception v10

    move-object v6, v10

    new-instance v10, Ljava/lang/NoClassDefFoundError;

    move-object/from16 v17, v10

    move-object/from16 v10, v17

    move-object/from16 v11, v17

    move-object v12, v6

    invoke-virtual {v12}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v10
.end method
