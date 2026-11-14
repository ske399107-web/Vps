.class public Lcom/hda/jds/Applications;
.super Landroid/app/Application;
.source "Applications.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hda/jds/Applications$100000000;
    }
.end annotation


# instance fields
.field private uncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 45
    move-object v0, p0

    move-object v2, v0

    invoke-direct {v2}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method static synthetic access$1000002(Lcom/hda/jds/Applications;Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v4, v5}, Lcom/hda/jds/Applications;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    return-object v0
.end method

.method static synthetic access$L1000000(Lcom/hda/jds/Applications;)Ljava/lang/Thread$UncaughtExceptionHandler;
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lcom/hda/jds/Applications;->uncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    move-object v0, v3

    return-object v0
.end method

.method static synthetic access$S1000000(Lcom/hda/jds/Applications;Ljava/lang/Thread$UncaughtExceptionHandler;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/hda/jds/Applications;->uncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    return-void
.end method

.method private getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 12

    .prologue
    .line 35
    move-object v0, p0

    move-object v1, p1

    new-instance v8, Ljava/io/StringWriter;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    invoke-direct {v9}, Ljava/io/StringWriter;-><init>()V

    move-object v3, v8

    .line 36
    new-instance v8, Ljava/io/PrintWriter;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    move-object v10, v3

    invoke-direct {v9, v10}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    move-object v4, v8

    .line 37
    move-object v8, v1

    move-object v5, v8

    .line 38
    :goto_0
    move-object v8, v5

    if-nez v8, :cond_0

    .line 42
    move-object v8, v3

    invoke-virtual {v8}, Ljava/io/Writer;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v6, v8

    .line 43
    move-object v8, v4

    invoke-virtual {v8}, Ljava/io/PrintWriter;->close()V

    .line 44
    move-object v8, v6

    move-object v0, v8

    return-object v0

    .line 39
    :cond_0
    move-object v8, v5

    move-object v9, v4

    invoke-virtual {v8, v9}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 40
    move-object v8, v5

    invoke-virtual {v8}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v8

    move-object v5, v8

    goto :goto_0
.end method


# virtual methods
.method public onCreate()V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 17
    move-object v0, p0

    move-object v2, v0

    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v3

    iput-object v3, v2, Lcom/hda/jds/Applications;->uncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 18
    new-instance v2, Lcom/hda/jds/Applications$100000000;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Lcom/hda/jds/Applications$100000000;-><init>(Lcom/hda/jds/Applications;)V

    invoke-static {v2}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 32
    move-object v2, v0

    invoke-super {v2}, Landroid/app/Application;->onCreate()V

    return-void
.end method
