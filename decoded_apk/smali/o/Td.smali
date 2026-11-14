.class public final Lo/Td;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# virtual methods
.method public final newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 1

    .line 1
    new-instance v0, Lo/Sd;

    .line 3
    invoke-direct {v0, p1}, Lo/Sd;-><init>(Ljava/lang/Runnable;)V

    .line 6
    return-object v0
.end method
