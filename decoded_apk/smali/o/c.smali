.class public final synthetic Lo/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/github/muntashirakon/adb/android/AdbMdns$OnAdbDaemonDiscoveredListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/util/concurrent/atomic/AtomicReference;

.field public final synthetic c:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final synthetic d:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/CountDownLatch;I)V
    .locals 0

    .line 1
    iput p4, p0, Lo/c;->a:I

    iput-object p1, p0, Lo/c;->b:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p2, p0, Lo/c;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p3, p0, Lo/c;->d:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPortChanged(Ljava/net/InetAddress;I)V
    .locals 3

    .line 1
    iget v0, p0, Lo/c;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lo/c;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v1, p0, Lo/c;->d:Ljava/util/concurrent/CountDownLatch;

    iget-object v2, p0, Lo/c;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v2, v0, v1, p1, p2}, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->b(Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/CountDownLatch;Ljava/net/InetAddress;I)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lo/c;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v1, p0, Lo/c;->d:Ljava/util/concurrent/CountDownLatch;

    iget-object v2, p0, Lo/c;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v2, v0, v1, p1, p2}, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/CountDownLatch;Ljava/net/InetAddress;I)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lo/c;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v1, p0, Lo/c;->d:Ljava/util/concurrent/CountDownLatch;

    iget-object v2, p0, Lo/c;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v2, v0, v1, p1, p2}, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->c(Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/CountDownLatch;Ljava/net/InetAddress;I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
