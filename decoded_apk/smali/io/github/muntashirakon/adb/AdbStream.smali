.class public Lio/github/muntashirakon/adb/AdbStream;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field private final mAdbConnection:Lio/github/muntashirakon/adb/AdbConnection;

.field private volatile mIsClosed:Z

.field private final mLocalId:I

.field private volatile mPendingClose:Z

.field private final mReadBuffer:Ljava/nio/ByteBuffer;

.field private final mReadQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "[B>;"
        }
    .end annotation
.end field

.field private volatile mRemoteId:I

.field private final mWriteReady:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Lio/github/muntashirakon/adb/AdbConnection;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;,
            Lio/github/muntashirakon/adb/AdbPairingRequiredException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lio/github/muntashirakon/adb/AdbStream;->mAdbConnection:Lio/github/muntashirakon/adb/AdbConnection;

    .line 6
    iput p2, p0, Lio/github/muntashirakon/adb/AdbStream;->mLocalId:I

    .line 8
    new-instance p2, Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 10
    invoke-direct {p2}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    .line 13
    iput-object p2, p0, Lio/github/muntashirakon/adb/AdbStream;->mReadQueue:Ljava/util/Queue;

    .line 15
    invoke-virtual {p1}, Lio/github/muntashirakon/adb/AdbConnection;->getMaxData()I

    .line 18
    move-result p1

    .line 19
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 22
    move-result-object p1

    .line 23
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 26
    move-result-object p1

    .line 27
    check-cast p1, Ljava/nio/ByteBuffer;

    .line 29
    iput-object p1, p0, Lio/github/muntashirakon/adb/AdbStream;->mReadBuffer:Ljava/nio/ByteBuffer;

    .line 31
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 33
    const/4 p2, 0x0

    .line 34
    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 37
    iput-object p1, p0, Lio/github/muntashirakon/adb/AdbStream;->mWriteReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 39
    iput-boolean p2, p0, Lio/github/muntashirakon/adb/AdbStream;->mIsClosed:Z

    .line 41
    return-void
.end method

.method private readBuffer([BII)I
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, p2

    .line 3
    :goto_0
    add-int v2, p2, p3

    .line 5
    if-ge v1, v2, :cond_1

    .line 7
    iget-object v2, p0, Lio/github/muntashirakon/adb/AdbStream;->mReadBuffer:Ljava/nio/ByteBuffer;

    .line 9
    invoke-virtual {v2}, Ljava/nio/Buffer;->hasRemaining()Z

    .line 12
    move-result v2

    .line 13
    if-eqz v2, :cond_0

    .line 15
    iget-object v2, p0, Lio/github/muntashirakon/adb/AdbStream;->mReadBuffer:Ljava/nio/ByteBuffer;

    .line 17
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->get()B

    .line 20
    move-result v2

    .line 21
    aput-byte v2, p1, v1

    .line 23
    add-int/lit8 v0, v0, 0x1

    .line 25
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 27
    goto :goto_0

    .line 28
    :cond_1
    return v0
.end method


# virtual methods
.method public addPayload([B)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/github/muntashirakon/adb/AdbStream;->mReadQueue:Ljava/util/Queue;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lio/github/muntashirakon/adb/AdbStream;->mReadQueue:Ljava/util/Queue;

    .line 6
    invoke-interface {v1, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 9
    iget-object p1, p0, Lio/github/muntashirakon/adb/AdbStream;->mReadQueue:Ljava/util/Queue;

    .line 11
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 14
    monitor-exit v0

    .line 15
    return-void

    .line 16
    :catchall_0
    move-exception p1

    .line 17
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    throw p1
.end method

.method public available()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lio/github/muntashirakon/adb/AdbStream;->mIsClosed:Z

    .line 4
    if-nez v0, :cond_2

    .line 6
    iget-object v0, p0, Lio/github/muntashirakon/adb/AdbStream;->mReadBuffer:Ljava/nio/ByteBuffer;

    .line 8
    invoke-virtual {v0}, Ljava/nio/Buffer;->hasRemaining()Z

    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 14
    iget-object v0, p0, Lio/github/muntashirakon/adb/AdbStream;->mReadBuffer:Ljava/nio/ByteBuffer;

    .line 16
    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    .line 19
    move-result v0

    .line 20
    monitor-exit p0

    .line 21
    return v0

    .line 22
    :catchall_0
    move-exception v0

    .line 23
    goto :goto_1

    .line 24
    :cond_0
    iget-object v0, p0, Lio/github/muntashirakon/adb/AdbStream;->mReadQueue:Ljava/util/Queue;

    .line 26
    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    .line 29
    move-result-object v0

    .line 30
    check-cast v0, [B

    .line 32
    if-nez v0, :cond_1

    .line 34
    const/4 v0, 0x0

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    array-length v0, v0

    .line 37
    :goto_0
    monitor-exit p0

    .line 38
    return v0

    .line 39
    :cond_2
    new-instance v0, Ljava/io/IOException;

    .line 41
    const-string v1, "Stream closed."

    .line 43
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 46
    throw v0

    .line 47
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    throw v0
.end method

.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lio/github/muntashirakon/adb/AdbStream;->mIsClosed:Z

    .line 4
    if-eqz v0, :cond_0

    .line 6
    monitor-exit p0

    .line 7
    return-void

    .line 8
    :catchall_0
    move-exception v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    invoke-virtual {p0, v0}, Lio/github/muntashirakon/adb/AdbStream;->notifyClose(Z)V

    .line 14
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    iget-object v0, p0, Lio/github/muntashirakon/adb/AdbStream;->mAdbConnection:Lio/github/muntashirakon/adb/AdbConnection;

    .line 17
    iget v1, p0, Lio/github/muntashirakon/adb/AdbStream;->mLocalId:I

    .line 19
    iget v2, p0, Lio/github/muntashirakon/adb/AdbStream;->mRemoteId:I

    .line 21
    invoke-static {v1, v2}, Lio/github/muntashirakon/adb/AdbProtocol;->generateClose(II)[B

    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v0, v1}, Lio/github/muntashirakon/adb/AdbConnection;->sendPacket([B)V

    .line 28
    return-void

    .line 29
    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 30
    throw v0
.end method

.method public flush()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lio/github/muntashirakon/adb/AdbStream;->mIsClosed:Z

    .line 3
    if-nez v0, :cond_0

    .line 5
    iget-object v0, p0, Lio/github/muntashirakon/adb/AdbStream;->mAdbConnection:Lio/github/muntashirakon/adb/AdbConnection;

    .line 7
    invoke-virtual {v0}, Lio/github/muntashirakon/adb/AdbConnection;->flushPacket()V

    .line 10
    return-void

    .line 11
    :cond_0
    new-instance v0, Ljava/io/IOException;

    .line 13
    const-string v1, "Stream closed"

    .line 15
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 18
    throw v0
.end method

.method public isClosed()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/github/muntashirakon/adb/AdbStream;->mIsClosed:Z

    .line 3
    return v0
.end method

.method public notifyClose(Z)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lio/github/muntashirakon/adb/AdbStream;->mReadQueue:Ljava/util/Queue;

    .line 6
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 9
    move-result p1

    .line 10
    if-nez p1, :cond_0

    .line 12
    iput-boolean v0, p0, Lio/github/muntashirakon/adb/AdbStream;->mPendingClose:Z

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iput-boolean v0, p0, Lio/github/muntashirakon/adb/AdbStream;->mIsClosed:Z

    .line 17
    :goto_0
    monitor-enter p0

    .line 18
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 21
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 22
    iget-object p1, p0, Lio/github/muntashirakon/adb/AdbStream;->mReadQueue:Ljava/util/Queue;

    .line 24
    monitor-enter p1

    .line 25
    :try_start_1
    iget-object v0, p0, Lio/github/muntashirakon/adb/AdbStream;->mReadQueue:Ljava/util/Queue;

    .line 27
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 30
    monitor-exit p1

    .line 31
    return-void

    .line 32
    :catchall_0
    move-exception v0

    .line 33
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 34
    throw v0

    .line 35
    :catchall_1
    move-exception p1

    .line 36
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 37
    throw p1
.end method

.method public openInputStream()Lio/github/muntashirakon/adb/AdbInputStream;
    .locals 1

    .line 1
    new-instance v0, Lio/github/muntashirakon/adb/AdbInputStream;

    .line 3
    invoke-direct {v0, p0}, Lio/github/muntashirakon/adb/AdbInputStream;-><init>(Lio/github/muntashirakon/adb/AdbStream;)V

    .line 6
    return-object v0
.end method

.method public openOutputStream()Lio/github/muntashirakon/adb/AdbOutputStream;
    .locals 1

    .line 1
    new-instance v0, Lio/github/muntashirakon/adb/AdbOutputStream;

    .line 3
    invoke-direct {v0, p0}, Lio/github/muntashirakon/adb/AdbOutputStream;-><init>(Lio/github/muntashirakon/adb/AdbStream;)V

    .line 6
    return-object v0
.end method

.method public read([BII)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/github/muntashirakon/adb/AdbStream;->mReadBuffer:Ljava/nio/ByteBuffer;

    .line 3
    invoke-virtual {v0}, Ljava/nio/Buffer;->hasRemaining()Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 9
    invoke-direct {p0, p1, p2, p3}, Lio/github/muntashirakon/adb/AdbStream;->readBuffer([BII)I

    .line 12
    move-result p1

    .line 13
    return p1

    .line 14
    :cond_0
    iget-object v0, p0, Lio/github/muntashirakon/adb/AdbStream;->mReadQueue:Ljava/util/Queue;

    .line 16
    monitor-enter v0

    .line 17
    :goto_0
    :try_start_0
    iget-object v1, p0, Lio/github/muntashirakon/adb/AdbStream;->mReadQueue:Ljava/util/Queue;

    .line 19
    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    .line 22
    move-result-object v1

    .line 23
    check-cast v1, [B

    .line 25
    if-nez v1, :cond_1

    .line 27
    iget-boolean v2, p0, Lio/github/muntashirakon/adb/AdbStream;->mIsClosed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    if-nez v2, :cond_1

    .line 31
    :try_start_1
    iget-object v1, p0, Lio/github/muntashirakon/adb/AdbStream;->mReadQueue:Ljava/util/Queue;

    .line 33
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 36
    goto :goto_0

    .line 37
    :catchall_0
    move-exception p1

    .line 38
    goto :goto_1

    .line 39
    :catch_0
    move-exception p1

    .line 40
    :try_start_2
    new-instance p2, Ljava/io/IOException;

    .line 42
    invoke-direct {p2}, Ljava/io/IOException;-><init>()V

    .line 45
    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 48
    move-result-object p1

    .line 49
    check-cast p1, Ljava/io/IOException;

    .line 51
    throw p1

    .line 52
    :cond_1
    if-eqz v1, :cond_2

    .line 54
    iget-object v2, p0, Lio/github/muntashirakon/adb/AdbStream;->mReadBuffer:Ljava/nio/ByteBuffer;

    .line 56
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 59
    iget-object v2, p0, Lio/github/muntashirakon/adb/AdbStream;->mReadBuffer:Ljava/nio/ByteBuffer;

    .line 61
    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 64
    iget-object v1, p0, Lio/github/muntashirakon/adb/AdbStream;->mReadBuffer:Ljava/nio/ByteBuffer;

    .line 66
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 69
    iget-object v1, p0, Lio/github/muntashirakon/adb/AdbStream;->mReadBuffer:Ljava/nio/ByteBuffer;

    .line 71
    invoke-virtual {v1}, Ljava/nio/Buffer;->hasRemaining()Z

    .line 74
    move-result v1

    .line 75
    if-eqz v1, :cond_2

    .line 77
    invoke-direct {p0, p1, p2, p3}, Lio/github/muntashirakon/adb/AdbStream;->readBuffer([BII)I

    .line 80
    move-result p1

    .line 81
    monitor-exit v0

    .line 82
    return p1

    .line 83
    :cond_2
    iget-boolean p1, p0, Lio/github/muntashirakon/adb/AdbStream;->mIsClosed:Z

    .line 85
    if-nez p1, :cond_4

    .line 87
    iget-boolean p1, p0, Lio/github/muntashirakon/adb/AdbStream;->mPendingClose:Z

    .line 89
    if-eqz p1, :cond_3

    .line 91
    iget-object p1, p0, Lio/github/muntashirakon/adb/AdbStream;->mReadQueue:Ljava/util/Queue;

    .line 93
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 96
    move-result p1

    .line 97
    if-eqz p1, :cond_3

    .line 99
    const/4 p1, 0x1

    .line 100
    iput-boolean p1, p0, Lio/github/muntashirakon/adb/AdbStream;->mIsClosed:Z

    .line 102
    :cond_3
    monitor-exit v0

    .line 103
    const/4 p1, -0x1

    .line 104
    return p1

    .line 105
    :cond_4
    new-instance p1, Ljava/io/IOException;

    .line 107
    const-string p2, "Stream closed."

    .line 109
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 112
    throw p1

    .line 113
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 114
    throw p1
.end method

.method public readyForWrite()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/github/muntashirakon/adb/AdbStream;->mWriteReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 7
    return-void
.end method

.method public sendReady()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/github/muntashirakon/adb/AdbStream;->mAdbConnection:Lio/github/muntashirakon/adb/AdbConnection;

    .line 3
    iget v1, p0, Lio/github/muntashirakon/adb/AdbStream;->mLocalId:I

    .line 5
    iget v2, p0, Lio/github/muntashirakon/adb/AdbStream;->mRemoteId:I

    .line 7
    invoke-static {v1, v2}, Lio/github/muntashirakon/adb/AdbProtocol;->generateReady(II)[B

    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v0, v1}, Lio/github/muntashirakon/adb/AdbConnection;->sendPacket([B)V

    .line 14
    return-void
.end method

.method public updateRemoteId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lio/github/muntashirakon/adb/AdbStream;->mRemoteId:I

    .line 3
    return-void
.end method

.method public write([BII)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lio/github/muntashirakon/adb/AdbStream;->mIsClosed:Z

    .line 4
    const/4 v1, 0x0

    .line 5
    if-nez v0, :cond_0

    .line 7
    iget-object v0, p0, Lio/github/muntashirakon/adb/AdbStream;->mWriteReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 9
    const/4 v2, 0x1

    .line 10
    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 13
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    if-nez v0, :cond_0

    .line 16
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception p1

    .line 21
    goto :goto_3

    .line 22
    :catch_0
    move-exception p1

    .line 23
    :try_start_2
    new-instance p2, Ljava/io/IOException;

    .line 25
    invoke-direct {p2}, Ljava/io/IOException;-><init>()V

    .line 28
    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 31
    move-result-object p1

    .line 32
    check-cast p1, Ljava/io/IOException;

    .line 34
    throw p1

    .line 35
    :cond_0
    iget-boolean v0, p0, Lio/github/muntashirakon/adb/AdbStream;->mIsClosed:Z

    .line 37
    if-nez v0, :cond_3

    .line 39
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 40
    :try_start_3
    iget-object v0, p0, Lio/github/muntashirakon/adb/AdbStream;->mAdbConnection:Lio/github/muntashirakon/adb/AdbConnection;

    .line 42
    invoke-virtual {v0}, Lio/github/muntashirakon/adb/AdbConnection;->getMaxData()I

    .line 45
    move-result v0
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lio/github/muntashirakon/adb/AdbPairingRequiredException; {:try_start_3 .. :try_end_3} :catch_1

    .line 46
    :goto_1
    if-eqz p3, :cond_2

    .line 48
    if-gt p3, v0, :cond_1

    .line 50
    iget-object v2, p0, Lio/github/muntashirakon/adb/AdbStream;->mAdbConnection:Lio/github/muntashirakon/adb/AdbConnection;

    .line 52
    iget v3, p0, Lio/github/muntashirakon/adb/AdbStream;->mLocalId:I

    .line 54
    iget v4, p0, Lio/github/muntashirakon/adb/AdbStream;->mRemoteId:I

    .line 56
    invoke-static {v3, v4, p1, p2, p3}, Lio/github/muntashirakon/adb/AdbProtocol;->generateWrite(II[BII)[B

    .line 59
    move-result-object v3

    .line 60
    invoke-virtual {v2, v3}, Lio/github/muntashirakon/adb/AdbConnection;->sendPacket([B)V

    .line 63
    add-int/2addr p2, p3

    .line 64
    move p3, v1

    .line 65
    goto :goto_1

    .line 66
    :cond_1
    iget-object v2, p0, Lio/github/muntashirakon/adb/AdbStream;->mAdbConnection:Lio/github/muntashirakon/adb/AdbConnection;

    .line 68
    iget v3, p0, Lio/github/muntashirakon/adb/AdbStream;->mLocalId:I

    .line 70
    iget v4, p0, Lio/github/muntashirakon/adb/AdbStream;->mRemoteId:I

    .line 72
    invoke-static {v3, v4, p1, p2, v0}, Lio/github/muntashirakon/adb/AdbProtocol;->generateWrite(II[BII)[B

    .line 75
    move-result-object v3

    .line 76
    invoke-virtual {v2, v3}, Lio/github/muntashirakon/adb/AdbConnection;->sendPacket([B)V

    .line 79
    add-int/2addr p2, v0

    .line 80
    sub-int/2addr p3, v0

    .line 81
    goto :goto_1

    .line 82
    :cond_2
    return-void

    .line 83
    :catch_1
    move-exception p1

    .line 84
    goto :goto_2

    .line 85
    :catch_2
    move-exception p1

    .line 86
    :goto_2
    new-instance p2, Ljava/io/IOException;

    .line 88
    invoke-direct {p2}, Ljava/io/IOException;-><init>()V

    .line 91
    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 94
    move-result-object p1

    .line 95
    check-cast p1, Ljava/io/IOException;

    .line 97
    throw p1

    .line 98
    :cond_3
    :try_start_4
    new-instance p1, Ljava/io/IOException;

    .line 100
    const-string p2, "Stream closed"

    .line 102
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 105
    throw p1

    .line 106
    :goto_3
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 107
    throw p1
.end method
