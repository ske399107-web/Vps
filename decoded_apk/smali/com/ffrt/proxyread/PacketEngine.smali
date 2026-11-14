.class public final Lcom/ffrt/proxyread/PacketEngine;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final Companion:Lo/wc;

.field private static final MATCH_SECRET_WINDOW:I = 0x1000

.field private static final MSS:I = 0x800

.field private static final POSE_Q:I = 0x40

.field private static final TCP_SNIFF_TAIL:I = 0x1000

.field private static packetCounter:I


# instance fields
.field private final addrCache:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation
.end field

.field private final lookQ:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "Lo/xc;",
            ">;"
        }
    .end annotation
.end field

.field private final poseQ:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "Lo/xc;",
            ">;"
        }
    .end annotation
.end field

.field private final running:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final s2cQ:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "Lo/xc;",
            ">;"
        }
    .end annotation
.end field

.field private final tcpFlows:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lo/yc;",
            ">;"
        }
    .end annotation
.end field

.field private final tunIn:Ljava/io/FileInputStream;

.field private final tunLock:Ljava/lang/Object;

.field private final tunOut:Ljava/io/FileOutputStream;

.field private final udpFlows:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lo/zc;",
            ">;"
        }
    .end annotation
.end field

.field private final vpn:Landroid/net/VpnService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lo/wc;

    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 6
    sput-object v0, Lcom/ffrt/proxyread/PacketEngine;->Companion:Lo/wc;

    .line 8
    return-void
.end method

.method public constructor <init>(Landroid/net/VpnService;Ljava/io/FileInputStream;Ljava/io/FileOutputStream;)V
    .locals 1

    .line 1
    const-string v0, "vpn"

    .line 3
    invoke-static {p1, v0}, Lo/x9;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    const-string v0, "tunIn"

    .line 8
    invoke-static {p2, v0}, Lo/x9;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    const-string v0, "tunOut"

    .line 13
    invoke-static {p3, v0}, Lo/x9;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/ffrt/proxyread/PacketEngine;->vpn:Landroid/net/VpnService;

    .line 21
    iput-object p2, p0, Lcom/ffrt/proxyread/PacketEngine;->tunIn:Ljava/io/FileInputStream;

    .line 23
    iput-object p3, p0, Lcom/ffrt/proxyread/PacketEngine;->tunOut:Ljava/io/FileOutputStream;

    .line 25
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 27
    const/4 p2, 0x1

    .line 28
    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 31
    iput-object p1, p0, Lcom/ffrt/proxyread/PacketEngine;->running:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 33
    new-instance p1, Ljava/lang/Object;

    .line 35
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/ffrt/proxyread/PacketEngine;->tunLock:Ljava/lang/Object;

    .line 40
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    .line 42
    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/ffrt/proxyread/PacketEngine;->udpFlows:Ljava/util/concurrent/ConcurrentHashMap;

    .line 47
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    .line 49
    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/ffrt/proxyread/PacketEngine;->tcpFlows:Ljava/util/concurrent/ConcurrentHashMap;

    .line 54
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    .line 56
    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/ffrt/proxyread/PacketEngine;->addrCache:Ljava/util/concurrent/ConcurrentHashMap;

    .line 61
    new-instance p1, Ljava/util/concurrent/LinkedBlockingQueue;

    .line 63
    const/16 p3, 0x40

    .line 65
    invoke-direct {p1, p3}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    .line 68
    iput-object p1, p0, Lcom/ffrt/proxyread/PacketEngine;->poseQ:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 70
    new-instance p1, Ljava/util/concurrent/LinkedBlockingQueue;

    .line 72
    invoke-direct {p1, p2}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    .line 75
    iput-object p1, p0, Lcom/ffrt/proxyread/PacketEngine;->lookQ:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 77
    new-instance p1, Ljava/util/concurrent/LinkedBlockingQueue;

    .line 79
    invoke-direct {p1, p2}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    .line 82
    iput-object p1, p0, Lcom/ffrt/proxyread/PacketEngine;->s2cQ:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 84
    return-void
.end method

.method public static synthetic a(Lcom/ffrt/proxyread/PacketEngine;Lo/yc;)Lo/Ug;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/ffrt/proxyread/PacketEngine;->tcpConnect$lambda$20(Lcom/ffrt/proxyread/PacketEngine;Lo/yc;)Lo/Ug;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lcom/ffrt/proxyread/PacketEngine;)Lo/Ug;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/ffrt/proxyread/PacketEngine;->loop$lambda$0(Lcom/ffrt/proxyread/PacketEngine;)Lo/Ug;

    move-result-object p0

    return-object p0
.end method

.method private final buildTcp(Ljava/lang/String;ILjava/lang/String;IJJI[BII)[B
    .locals 16

    move-object/from16 v0, p10

    move/from16 v1, p12

    const/4 v2, 0x2

    const/4 v3, 0x4

    const/4 v4, 0x0

    if-lez v1, :cond_0

    .line 1
    new-array v5, v3, [B

    aput-byte v2, v5, v4

    const/4 v6, 0x1

    aput-byte v3, v5, v6

    ushr-int/lit8 v6, v1, 0x8

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v5, v2

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v6, 0x3

    aput-byte v1, v5, v6

    goto :goto_0

    .line 2
    :cond_0
    new-array v5, v4, [B

    .line 3
    :goto_0
    array-length v1, v5

    add-int/lit8 v6, v1, 0x14

    const/16 v7, 0x28

    add-int/2addr v1, v7

    .line 4
    array-length v8, v0

    add-int/2addr v8, v1

    .line 5
    new-array v9, v8, [B

    const/16 v10, 0x45

    .line 6
    aput-byte v10, v9, v4

    const/16 v10, 0x40

    const/16 v11, 0x8

    .line 7
    aput-byte v10, v9, v11

    const/16 v10, 0x9

    const/4 v11, 0x6

    .line 8
    aput-byte v11, v9, v10

    .line 9
    sget-object v10, Lcom/ffrt/proxyread/PacketEngine;->Companion:Lo/wc;

    invoke-static {v10, v9, v2, v8}, Lo/wc;->c(Lo/wc;[BII)V

    .line 10
    sget-object v2, Lo/jd;->a:Lo/id;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    sget-object v2, Lo/jd;->b:Lo/h;

    .line 12
    invoke-virtual {v2}, Lo/jd;->b()I

    move-result v2

    .line 13
    invoke-static {v10, v9, v3, v2}, Lo/wc;->c(Lo/wc;[BII)V

    const/16 v2, 0xc

    move-object/from16 v8, p1

    .line 14
    invoke-static {v10, v9, v2, v8}, Lo/wc;->b(Lo/wc;[BILjava/lang/String;)V

    const/16 v2, 0x10

    move-object/from16 v12, p3

    .line 15
    invoke-static {v10, v9, v2, v12}, Lo/wc;->b(Lo/wc;[BILjava/lang/String;)V

    const/16 v2, 0xa

    .line 16
    aput-byte v4, v9, v2

    const/16 v13, 0xb

    .line 17
    aput-byte v4, v9, v13

    const/16 v13, 0x14

    .line 18
    invoke-static {v9, v4, v13, v4}, Lo/wc;->f([BIII)I

    move-result v14

    .line 19
    invoke-static {v10, v9, v2, v14}, Lo/wc;->c(Lo/wc;[BII)V

    move/from16 v2, p2

    .line 20
    invoke-static {v10, v9, v13, v2}, Lo/wc;->c(Lo/wc;[BII)V

    const/16 v2, 0x16

    move/from16 v14, p4

    .line 21
    invoke-static {v10, v9, v2, v14}, Lo/wc;->c(Lo/wc;[BII)V

    const/16 v2, 0x18

    move-wide/from16 v14, p5

    .line 22
    invoke-static {v10, v9, v2, v14, v15}, Lo/wc;->d(Lo/wc;[BIJ)V

    const/16 v2, 0x1c

    move-wide/from16 v14, p7

    .line 23
    invoke-static {v10, v9, v2, v14, v15}, Lo/wc;->d(Lo/wc;[BIJ)V

    .line 24
    div-int/lit8 v2, v6, 0x4

    shl-int/2addr v2, v3

    int-to-byte v2, v2

    const/16 v3, 0x20

    aput-byte v2, v9, v3

    const/16 v2, 0x21

    move/from16 v3, p9

    int-to-byte v3, v3

    .line 25
    aput-byte v3, v9, v2

    const/16 v2, 0x22

    move/from16 v3, p11

    .line 26
    invoke-static {v10, v9, v2, v3}, Lo/wc;->c(Lo/wc;[BII)V

    .line 27
    array-length v2, v5

    if-nez v2, :cond_1

    goto :goto_1

    .line 28
    :cond_1
    array-length v2, v5

    invoke-static {v5, v4, v9, v7, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 29
    :goto_1
    array-length v2, v0

    if-nez v2, :cond_2

    goto :goto_2

    .line 30
    :cond_2
    array-length v2, v0

    invoke-static {v0, v4, v9, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 31
    :goto_2
    array-length v1, v0

    add-int/2addr v1, v6

    .line 32
    invoke-static/range {p1 .. p1}, Lo/wc;->g(Ljava/lang/String;)I

    move-result v2

    invoke-static/range {p3 .. p3}, Lo/wc;->g(Ljava/lang/String;)I

    move-result v3

    add-int/2addr v3, v2

    add-int/2addr v3, v11

    add-int/2addr v3, v1

    .line 33
    array-length v0, v0

    add-int/2addr v6, v0

    .line 34
    invoke-static {v9, v13, v6, v3}, Lo/wc;->f([BIII)I

    move-result v0

    const/16 v1, 0x24

    .line 35
    invoke-static {v10, v9, v1, v0}, Lo/wc;->c(Lo/wc;[BII)V

    return-object v9
.end method

.method public static synthetic buildTcp$default(Lcom/ffrt/proxyread/PacketEngine;Ljava/lang/String;ILjava/lang/String;IJJI[BIIILjava/lang/Object;)[B
    .locals 15

    move/from16 v0, p13

    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_0

    const v1, 0xffff

    move v13, v1

    goto :goto_0

    :cond_0
    move/from16 v13, p11

    :goto_0
    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    move v14, v0

    goto :goto_1

    :cond_1
    move/from16 v14, p12

    :goto_1
    move-object v2, p0

    move-object/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v6, p4

    move-wide/from16 v7, p5

    move-wide/from16 v9, p7

    move/from16 v11, p9

    move-object/from16 v12, p10

    .line 1
    invoke-direct/range {v2 .. v14}, Lcom/ffrt/proxyread/PacketEngine;->buildTcp(Ljava/lang/String;ILjava/lang/String;IJJI[BII)[B

    move-result-object v0

    return-object v0
.end method

.method public static synthetic c(Lcom/ffrt/proxyread/PacketEngine;Lo/zc;Ljava/lang/String;)Lo/Ug;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/ffrt/proxyread/PacketEngine;->udpFlow$lambda$13(Lcom/ffrt/proxyread/PacketEngine;Lo/zc;Ljava/lang/String;)Lo/Ug;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lcom/ffrt/proxyread/PacketEngine;)Lo/Ug;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/ffrt/proxyread/PacketEngine;->loop$lambda$2(Lcom/ffrt/proxyread/PacketEngine;)Lo/Ug;

    move-result-object p0

    return-object p0
.end method

.method public static dumpLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[BII)V
    .locals 8

    if-nez p4, :cond_0

    return-void

    :cond_0
    if-gtz p6, :cond_1

    return-void

    :cond_1
    :try_start_0
    new-instance v6, Ljava/io/File;

    const-string v0, "/storage/emulated/0/Android/data/com.ffrt.proxyread/files/#DUMP/"

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    :cond_2
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v6, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v5, Ljava/io/FileOutputStream;

    const/4 v0, 0x1

    invoke-direct {v5, v7, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    sget v0, Lcom/ffrt/proxyread/PacketEngine;->packetCounter:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/ffrt/proxyread/PacketEngine;->packetCounter:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "0123456789abcdef"

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p6, :cond_3

    add-int v3, p5, v0

    aget-byte v3, p4, v3

    and-int/lit16 v3, v3, 0xff

    ushr-int/lit8 v4, v3, 0x4

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    and-int/lit8 v4, v3, 0xf

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public static synthetic e(Lcom/ffrt/proxyread/PacketEngine;Lo/yc;)Lo/Ug;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/ffrt/proxyread/PacketEngine;->onTcp$lambda$15(Lcom/ffrt/proxyread/PacketEngine;Lo/yc;)Lo/Ug;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f(Lcom/ffrt/proxyread/PacketEngine;)Lo/Ug;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/ffrt/proxyread/PacketEngine;->loop$lambda$1(Lcom/ffrt/proxyread/PacketEngine;)Lo/Ug;

    move-result-object p0

    return-object p0
.end method

.method private final inet(Ljava/lang/String;)Ljava/net/InetAddress;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ffrt/proxyread/PacketEngine;->addrCache:Ljava/util/concurrent/ConcurrentHashMap;

    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object v1

    .line 7
    if-nez v1, :cond_1

    .line 9
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    .line 12
    move-result-object v1

    .line 13
    invoke-interface {v0, p1, v1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    move-result-object p1

    .line 17
    if-nez p1, :cond_0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    move-object v1, p1

    .line 21
    :cond_1
    :goto_0
    const-string p1, "getOrPut(...)"

    .line 23
    invoke-static {v1, p1}, Lo/x9;->n(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    check-cast v1, Ljava/net/InetAddress;

    .line 28
    return-object v1
.end method

.method private static final loop$lambda$0(Lcom/ffrt/proxyread/PacketEngine;)Lo/Ug;
    .locals 4

    .line 1
    const/4 v0, -0x4

    .line 2
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 5
    :catch_0
    :goto_0
    iget-object v0, p0, Lcom/ffrt/proxyread/PacketEngine;->running:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 7
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_1

    .line 13
    iget-object v0, p0, Lcom/ffrt/proxyread/PacketEngine;->lookQ:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 15
    const-wide/16 v1, 0xc8

    .line 17
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 19
    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/LinkedBlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Lo/xc;

    .line 25
    if-nez v0, :cond_0

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    :try_start_0
    sget-object v1, Lo/Nc;->a:Ljava/lang/String;

    .line 30
    iget-object v1, v0, Lo/xc;->b:[B

    .line 32
    iget-object v0, v0, Lo/xc;->c:Ljava/lang/String;

    .line 34
    const/4 v2, 0x0

    .line 35
    invoke-static {v2, v1, v0}, Lo/Nc;->e(Z[BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    goto :goto_0

    .line 39
    :cond_1
    sget-object p0, Lo/Ug;->a:Lo/Ug;

    .line 41
    return-object p0
.end method

.method private static final loop$lambda$1(Lcom/ffrt/proxyread/PacketEngine;)Lo/Ug;
    .locals 4

    .line 1
    const/4 v0, -0x4

    .line 2
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 5
    :catch_0
    :goto_0
    iget-object v0, p0, Lcom/ffrt/proxyread/PacketEngine;->running:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 7
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_2

    .line 13
    iget-object v0, p0, Lcom/ffrt/proxyread/PacketEngine;->s2cQ:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 15
    const-wide/16 v1, 0xc8

    .line 17
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 19
    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/LinkedBlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Lo/xc;

    .line 25
    if-nez v0, :cond_0

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    :try_start_0
    sget-object v1, Lo/Nc;->a:Ljava/lang/String;

    .line 30
    iget-object v1, v0, Lo/xc;->b:[B

    .line 32
    iget-object v0, v0, Lo/xc;->c:Ljava/lang/String;

    .line 34
    const-string v2, "inner"

    .line 36
    invoke-static {v1, v2}, Lo/x9;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    const-string v2, "flowId"

    .line 41
    invoke-static {v0, v2}, Lo/x9;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    array-length v2, v1

    .line 45
    if-nez v2, :cond_1

    .line 47
    goto :goto_0

    .line 48
    :cond_1
    invoke-static {v0}, Lo/Nc;->c(Ljava/lang/String;)V

    .line 51
    sget-object v0, Lo/Nc;->n:Ljava/lang/Object;

    .line 53
    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    :try_start_1
    invoke-static {v1}, Lo/Nc;->f([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 57
    :try_start_2
    monitor-exit v0

    .line 58
    goto :goto_0

    .line 59
    :catchall_0
    move-exception v1

    .line 60
    monitor-exit v0

    .line 61
    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 62
    :cond_2
    sget-object p0, Lo/Ug;->a:Lo/Ug;

    .line 64
    return-object p0
.end method

.method private static final loop$lambda$2(Lcom/ffrt/proxyread/PacketEngine;)Lo/Ug;
    .locals 4

    .line 1
    :catch_0
    :goto_0
    iget-object v0, p0, Lcom/ffrt/proxyread/PacketEngine;->running:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1

    .line 9
    iget-object v0, p0, Lcom/ffrt/proxyread/PacketEngine;->poseQ:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 11
    const-wide/16 v1, 0xc8

    .line 13
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 15
    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/LinkedBlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Lo/xc;

    .line 21
    if-nez v0, :cond_0

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    :try_start_0
    sget-object v1, Lo/Nc;->a:Ljava/lang/String;

    .line 26
    iget-boolean v1, v0, Lo/xc;->a:Z

    .line 28
    iget-object v2, v0, Lo/xc;->b:[B

    .line 30
    iget-object v0, v0, Lo/xc;->c:Ljava/lang/String;

    .line 32
    invoke-static {v1, v2, v0}, Lo/Nc;->e(Z[BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    sget-object p0, Lo/Ug;->a:Lo/Ug;

    .line 38
    return-object p0
.end method

.method private final offerLatest(Ljava/util/concurrent/LinkedBlockingQueue;Lo/xc;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "Lo/xc;",
            ">;",
            "Lo/xc;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1, p2}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {p1}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    .line 11
    invoke-virtual {p1, p2}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 14
    return-void
.end method

.method private final offerPose(Z[BLjava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Lo/xc;

    .line 3
    invoke-direct {v0, p1, p2, p3}, Lo/xc;-><init>(Z[BLjava/lang/String;)V

    .line 6
    iget-object p1, p0, Lcom/ffrt/proxyread/PacketEngine;->poseQ:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 8
    invoke-virtual {p1, v0}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 11
    move-result p1

    .line 12
    if-eqz p1, :cond_0

    .line 14
    return-void

    .line 15
    :cond_0
    iget-object p1, p0, Lcom/ffrt/proxyread/PacketEngine;->poseQ:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 17
    invoke-virtual {p1}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    .line 20
    iget-object p1, p0, Lcom/ffrt/proxyread/PacketEngine;->poseQ:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 22
    invoke-virtual {p1, v0}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 25
    return-void
.end method

.method private final onTcp([BII)V
    .locals 26

    .line 1
    move-object/from16 v15, p0

    .line 3
    move-object/from16 v0, p1

    .line 5
    move/from16 v1, p2

    .line 7
    move/from16 v2, p3

    .line 9
    add-int/lit8 v3, v2, 0x14

    .line 11
    if-ge v1, v3, :cond_0

    .line 13
    return-void

    .line 14
    :cond_0
    sget-object v4, Lcom/ffrt/proxyread/PacketEngine;->Companion:Lo/wc;

    .line 16
    const/16 v5, 0xc

    .line 18
    invoke-static {v4, v0, v5}, Lo/wc;->a(Lo/wc;[BI)Ljava/lang/String;

    .line 21
    move-result-object v7

    .line 22
    const/16 v5, 0x10

    .line 24
    invoke-static {v4, v0, v5}, Lo/wc;->a(Lo/wc;[BI)Ljava/lang/String;

    .line 27
    move-result-object v9

    .line 28
    invoke-static {v4, v0, v2}, Lo/wc;->e(Lo/wc;[BI)I

    .line 31
    move-result v13

    .line 32
    add-int/lit8 v6, v2, 0x2

    .line 34
    invoke-static {v4, v0, v6}, Lo/wc;->e(Lo/wc;[BI)I

    .line 37
    move-result v10

    .line 38
    add-int/lit8 v4, v2, 0x4

    .line 40
    aget-byte v4, v0, v4

    .line 42
    int-to-long v11, v4

    .line 43
    const-wide/16 v16, 0xff

    .line 45
    and-long v11, v11, v16

    .line 47
    const/16 v4, 0x18

    .line 49
    shl-long/2addr v11, v4

    .line 50
    add-int/lit8 v4, v2, 0x5

    .line 52
    aget-byte v4, v0, v4

    .line 54
    move v14, v3

    .line 55
    int-to-long v3, v4

    .line 56
    and-long v3, v3, v16

    .line 58
    shl-long/2addr v3, v5

    .line 59
    or-long/2addr v3, v11

    .line 60
    add-int/lit8 v5, v2, 0x6

    .line 62
    aget-byte v5, v0, v5

    .line 64
    int-to-long v5, v5

    .line 65
    and-long v5, v5, v16

    .line 67
    const/16 v18, 0x8

    .line 69
    shl-long v5, v5, v18

    .line 71
    or-long/2addr v3, v5

    .line 72
    add-int/lit8 v5, v2, 0x7

    .line 74
    aget-byte v5, v0, v5

    .line 76
    int-to-long v5, v5

    .line 77
    and-long v5, v5, v16

    .line 79
    or-long v11, v3, v5

    .line 81
    add-int/lit8 v3, v2, 0xd

    .line 83
    aget-byte v3, v0, v3

    .line 85
    add-int/lit8 v4, v2, 0xc

    .line 87
    aget-byte v4, v0, v4

    .line 89
    const/4 v5, 0x4

    .line 90
    ushr-int/2addr v4, v5

    .line 91
    and-int/lit8 v4, v4, 0xf

    .line 93
    mul-int/2addr v4, v5

    .line 94
    and-int/lit8 v6, v3, 0x2

    .line 96
    const/4 v8, 0x1

    .line 97
    move/from16 v16, v14

    .line 99
    if-eqz v6, :cond_1

    .line 101
    move v6, v8

    .line 102
    goto :goto_0

    .line 103
    :cond_1
    const/4 v6, 0x0

    .line 104
    :goto_0
    and-int/lit8 v17, v3, 0x10

    .line 106
    if-eqz v17, :cond_2

    .line 108
    move/from16 v17, v8

    .line 110
    goto :goto_1

    .line 111
    :cond_2
    const/16 v17, 0x0

    .line 113
    :goto_1
    and-int/lit8 v19, v3, 0x4

    .line 115
    if-eqz v19, :cond_3

    .line 117
    move/from16 v19, v8

    .line 119
    goto :goto_2

    .line 120
    :cond_3
    const/16 v19, 0x0

    .line 122
    :goto_2
    and-int/2addr v3, v8

    .line 123
    if-eqz v3, :cond_4

    .line 125
    move/from16 v20, v8

    .line 127
    goto :goto_3

    .line 128
    :cond_4
    const/16 v20, 0x0

    .line 130
    :goto_3
    new-instance v3, Ljava/lang/StringBuilder;

    .line 132
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 135
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    const-string v8, ":"

    .line 140
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 146
    const-string v14, "->"

    .line 148
    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 160
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 163
    move-result-object v3

    .line 164
    if-eqz v19, :cond_6

    .line 166
    iget-object v0, v15, Lcom/ffrt/proxyread/PacketEngine;->tcpFlows:Ljava/util/concurrent/ConcurrentHashMap;

    .line 168
    invoke-virtual {v0, v3}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    move-result-object v0

    .line 172
    check-cast v0, Lo/yc;

    .line 174
    if-eqz v0, :cond_5

    .line 176
    invoke-virtual {v0}, Lo/yc;->b()V

    .line 179
    :cond_5
    return-void

    .line 180
    :cond_6
    if-eqz v6, :cond_f

    .line 182
    if-nez v17, :cond_f

    .line 184
    iget-object v1, v15, Lcom/ffrt/proxyread/PacketEngine;->tcpFlows:Ljava/util/concurrent/ConcurrentHashMap;

    .line 186
    invoke-virtual {v1, v3}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 189
    move-result v1

    .line 190
    if-eqz v1, :cond_7

    .line 192
    return-void

    .line 193
    :cond_7
    new-instance v1, Lo/yc;

    .line 195
    move-object v6, v1

    .line 196
    const/4 v14, 0x1

    .line 197
    move v8, v13

    .line 198
    invoke-direct/range {v6 .. v12}, Lo/yc;-><init>(Ljava/lang/String;ILjava/lang/String;IJ)V

    .line 201
    add-int/2addr v2, v4

    .line 202
    array-length v4, v0

    .line 203
    if-le v2, v4, :cond_8

    .line 205
    move v2, v4

    .line 206
    :cond_8
    move/from16 v4, v16

    .line 208
    :goto_4
    const/16 v6, 0x5b4

    .line 210
    if-ge v4, v2, :cond_e

    .line 212
    aget-byte v7, v0, v4

    .line 214
    and-int/lit16 v7, v7, 0xff

    .line 216
    if-eqz v7, :cond_e

    .line 218
    if-eq v7, v14, :cond_d

    .line 220
    const/4 v8, 0x2

    .line 221
    if-eq v7, v8, :cond_b

    .line 223
    add-int/lit8 v7, v4, 0x1

    .line 225
    if-lt v7, v2, :cond_9

    .line 227
    goto :goto_5

    .line 228
    :cond_9
    aget-byte v7, v0, v7

    .line 230
    and-int/lit16 v7, v7, 0xff

    .line 232
    if-ge v7, v8, :cond_a

    .line 234
    goto :goto_5

    .line 235
    :cond_a
    add-int/2addr v4, v7

    .line 236
    goto :goto_4

    .line 237
    :cond_b
    add-int/lit8 v6, v4, 0x3

    .line 239
    if-ge v6, v2, :cond_c

    .line 241
    add-int/lit8 v7, v4, 0x1

    .line 243
    aget-byte v7, v0, v7

    .line 245
    and-int/lit16 v7, v7, 0xff

    .line 247
    if-ne v7, v5, :cond_c

    .line 249
    add-int/lit8 v7, v4, 0x2

    .line 251
    aget-byte v7, v0, v7

    .line 253
    and-int/lit16 v7, v7, 0xff

    .line 255
    shl-int/lit8 v7, v7, 0x8

    .line 257
    aget-byte v6, v0, v6

    .line 259
    and-int/lit16 v6, v6, 0xff

    .line 261
    or-int/2addr v6, v7

    .line 262
    const/16 v7, 0x218

    .line 264
    if-gt v7, v6, :cond_c

    .line 266
    const/16 v7, 0x7d0

    .line 268
    if-ge v6, v7, :cond_c

    .line 270
    goto :goto_5

    .line 271
    :cond_c
    add-int/lit8 v4, v4, 0x4

    .line 273
    goto :goto_4

    .line 274
    :cond_d
    add-int/lit8 v4, v4, 0x1

    .line 276
    goto :goto_4

    .line 277
    :cond_e
    :goto_5
    iput v6, v1, Lo/yc;->m:I

    .line 279
    iget-object v0, v15, Lcom/ffrt/proxyread/PacketEngine;->tcpFlows:Ljava/util/concurrent/ConcurrentHashMap;

    .line 281
    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    new-instance v0, Ljava/lang/StringBuilder;

    .line 286
    const-string v2, "pr-tcp-"

    .line 288
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 291
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 294
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 297
    move-result-object v0

    .line 298
    new-instance v2, Lo/vc;

    .line 300
    const/4 v3, 0x0

    .line 301
    invoke-direct {v2, v15, v1, v3}, Lo/vc;-><init>(Lcom/ffrt/proxyread/PacketEngine;Lo/yc;I)V

    .line 304
    const/16 v1, 0x15

    .line 306
    invoke-static {v0, v2, v1}, Lo/Ha;->y0(Ljava/lang/String;Lo/u8;I)Lo/Uf;

    .line 309
    return-void

    .line 310
    :cond_f
    const/4 v14, 0x1

    .line 311
    iget-object v5, v15, Lcom/ffrt/proxyread/PacketEngine;->tcpFlows:Ljava/util/concurrent/ConcurrentHashMap;

    .line 313
    invoke-virtual {v5, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    move-result-object v3

    .line 317
    move-object v13, v3

    .line 318
    check-cast v13, Lo/yc;

    .line 320
    if-nez v13, :cond_10

    .line 322
    return-void

    .line 323
    :cond_10
    add-int/2addr v2, v4

    .line 324
    if-ge v2, v1, :cond_11

    .line 326
    const/16 v3, 0x14

    .line 328
    if-lt v4, v3, :cond_11

    .line 330
    invoke-static {v0, v2, v1}, Lo/H2;->n0([BII)[B

    .line 333
    move-result-object v0

    .line 334
    move-object v10, v0

    .line 335
    goto :goto_6

    .line 336
    :cond_11
    const/4 v0, 0x0

    .line 337
    new-array v1, v0, [B

    .line 339
    move-object v10, v1

    .line 340
    :goto_6
    iget-boolean v0, v13, Lo/yc;->i:Z

    .line 342
    if-nez v0, :cond_12

    .line 344
    if-eqz v17, :cond_12

    .line 346
    iput-boolean v14, v13, Lo/yc;->i:Z

    .line 348
    :cond_12
    array-length v0, v10

    .line 349
    if-nez v0, :cond_13

    .line 351
    move v8, v14

    .line 352
    goto :goto_7

    .line 353
    :cond_13
    const/4 v8, 0x0

    .line 354
    :goto_7
    const-wide v16, 0xffffffffL

    .line 359
    if-nez v8, :cond_15

    .line 361
    iget-wide v0, v13, Lo/yc;->g:J

    .line 363
    cmp-long v0, v11, v0

    .line 365
    if-nez v0, :cond_14

    .line 367
    iget-object v0, v13, Lo/yc;->e:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 369
    invoke-virtual {v0, v10}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 372
    move-result v0

    .line 373
    if-eqz v0, :cond_14

    .line 375
    array-length v0, v10

    .line 376
    int-to-long v0, v0

    .line 377
    add-long/2addr v11, v0

    .line 378
    and-long v0, v11, v16

    .line 380
    iput-wide v0, v13, Lo/yc;->g:J

    .line 382
    :cond_14
    iget-object v1, v13, Lo/yc;->c:Ljava/lang/String;

    .line 384
    iget v2, v13, Lo/yc;->d:I

    .line 386
    iget-object v3, v13, Lo/yc;->a:Ljava/lang/String;

    .line 388
    iget v4, v13, Lo/yc;->b:I

    .line 390
    iget-wide v5, v13, Lo/yc;->f:J

    .line 392
    iget-wide v7, v13, Lo/yc;->g:J

    .line 394
    const/4 v12, 0x0

    .line 395
    new-array v11, v12, [B

    .line 397
    invoke-direct {v15, v13}, Lcom/ffrt/proxyread/PacketEngine;->windowOf(Lo/yc;)I

    .line 400
    move-result v18

    .line 401
    const/16 v9, 0x10

    .line 403
    const/16 v19, 0x0

    .line 405
    const/16 v21, 0x200

    .line 407
    const/16 v22, 0x0

    .line 409
    move-object/from16 v0, p0

    .line 411
    move-object/from16 v23, v10

    .line 413
    move-object v10, v11

    .line 414
    move/from16 v11, v18

    .line 416
    move/from16 v18, v12

    .line 418
    move/from16 v12, v19

    .line 420
    move-object/from16 v24, v13

    .line 422
    move/from16 v13, v21

    .line 424
    move-object/from16 v14, v22

    .line 426
    invoke-static/range {v0 .. v14}, Lcom/ffrt/proxyread/PacketEngine;->buildTcp$default(Lcom/ffrt/proxyread/PacketEngine;Ljava/lang/String;ILjava/lang/String;IJJI[BIIILjava/lang/Object;)[B

    .line 429
    move-result-object v0

    .line 430
    invoke-direct {v15, v0}, Lcom/ffrt/proxyread/PacketEngine;->writeTun([B)V

    .line 433
    const-string v0, "C2S"

    .line 435
    move-object/from16 v1, v23

    .line 437
    move-object/from16 v14, v24

    .line 439
    invoke-virtual {v14, v0, v1}, Lo/yc;->e(Ljava/lang/String;[B)V

    const-string v0, "TCP.log"

    const-string v1, "sent"

    iget-object v2, v14, Lo/yc;->c:Ljava/lang/String;

    iget v3, v14, Lo/yc;->d:I

    move-object/from16 v4, v23

    const/4 v5, 0x0

    array-length v6, v4

    invoke-static/range {v0 .. v6}, Lcom/ffrt/proxyread/PacketEngine;->dumpLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[BII)V

    .line 442
    goto :goto_8

    .line 443
    :cond_15
    move-object v14, v13

    .line 444
    :goto_8
    if-eqz v20, :cond_16

    .line 446
    iget-wide v0, v14, Lo/yc;->g:J

    .line 448
    const-wide/16 v2, 0x1

    .line 450
    add-long/2addr v0, v2

    .line 451
    and-long v0, v0, v16

    .line 453
    iput-wide v0, v14, Lo/yc;->g:J

    .line 455
    iget-object v1, v14, Lo/yc;->c:Ljava/lang/String;

    .line 457
    iget v2, v14, Lo/yc;->d:I

    .line 459
    iget-object v3, v14, Lo/yc;->a:Ljava/lang/String;

    .line 461
    iget v4, v14, Lo/yc;->b:I

    .line 463
    iget-wide v5, v14, Lo/yc;->f:J

    .line 465
    iget-wide v7, v14, Lo/yc;->g:J

    .line 467
    const/4 v0, 0x0

    .line 468
    new-array v10, v0, [B

    .line 470
    invoke-direct {v15, v14}, Lcom/ffrt/proxyread/PacketEngine;->windowOf(Lo/yc;)I

    .line 473
    move-result v11

    .line 474
    const/16 v9, 0x10

    .line 476
    const/4 v12, 0x0

    .line 477
    const/16 v13, 0x200

    .line 479
    const/16 v16, 0x0

    .line 481
    move-object/from16 v0, p0

    .line 483
    move-object/from16 v25, v14

    .line 485
    move-object/from16 v14, v16

    .line 487
    invoke-static/range {v0 .. v14}, Lcom/ffrt/proxyread/PacketEngine;->buildTcp$default(Lcom/ffrt/proxyread/PacketEngine;Ljava/lang/String;ILjava/lang/String;IJJI[BIIILjava/lang/Object;)[B

    .line 490
    move-result-object v0

    .line 491
    invoke-direct {v15, v0}, Lcom/ffrt/proxyread/PacketEngine;->writeTun([B)V

    .line 494
    move-object/from16 v3, v25

    .line 496
    const/4 v0, 0x1

    .line 497
    iput-boolean v0, v3, Lo/yc;->j:Z

    .line 499
    :try_start_0
    iget-object v0, v3, Lo/yc;->h:Ljava/net/Socket;

    .line 501
    if-eqz v0, :cond_16

    .line 503
    invoke-virtual {v0}, Ljava/net/Socket;->shutdownOutput()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 506
    :catchall_0
    :cond_16
    return-void
.end method

.method private static final onTcp$lambda$15(Lcom/ffrt/proxyread/PacketEngine;Lo/yc;)Lo/Ug;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/ffrt/proxyread/PacketEngine;->tcpConnect(Lo/yc;)V

    .line 4
    sget-object p0, Lo/Ug;->a:Lo/Ug;

    .line 6
    return-object p0
.end method

.method private final onUdp([BII)V
    .locals 25

    .line 1
    move-object/from16 v7, p0

    .line 3
    move-object/from16 v0, p1

    .line 5
    move/from16 v1, p2

    .line 7
    move/from16 v2, p3

    .line 9
    const/16 v3, 0x8

    .line 11
    add-int/lit8 v8, v2, 0x8

    .line 13
    if-ge v1, v8, :cond_0

    .line 15
    return-void

    .line 16
    :cond_0
    sget-object v4, Lcom/ffrt/proxyread/PacketEngine;->Companion:Lo/wc;

    .line 18
    const/16 v5, 0xc

    .line 20
    invoke-static {v4, v0, v5}, Lo/wc;->a(Lo/wc;[BI)Ljava/lang/String;

    .line 23
    move-result-object v9

    .line 24
    const/16 v5, 0x10

    .line 26
    invoke-static {v4, v0, v5}, Lo/wc;->a(Lo/wc;[BI)Ljava/lang/String;

    .line 29
    move-result-object v10

    .line 30
    invoke-static {v4, v0, v2}, Lo/wc;->e(Lo/wc;[BI)I

    .line 33
    move-result v11

    .line 34
    add-int/lit8 v5, v2, 0x2

    .line 36
    invoke-static {v4, v0, v5}, Lo/wc;->e(Lo/wc;[BI)I

    .line 39
    move-result v12

    .line 40
    add-int/lit8 v5, v2, 0x4

    .line 42
    invoke-static {v4, v0, v5}, Lo/wc;->e(Lo/wc;[BI)I

    .line 45
    move-result v4

    .line 46
    sub-int/2addr v1, v2

    .line 47
    if-le v4, v1, :cond_1

    .line 49
    move v4, v1

    .line 50
    :cond_1
    if-ge v4, v3, :cond_2

    .line 52
    return-void

    .line 53
    :cond_2
    add-int/lit8 v13, v4, -0x8

    .line 55
    new-instance v1, Ljava/lang/StringBuilder;

    .line 57
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 60
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    const-string v14, ":"

    .line 65
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 71
    const-string v2, "->"

    .line 73
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 85
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    move-result-object v15

    .line 89
    move-object/from16 v1, p0

    .line 91
    move-object v2, v15

    .line 92
    move-object v3, v9

    .line 93
    move v4, v11

    .line 94
    move-object v5, v10

    .line 95
    move v6, v12

    .line 96
    invoke-direct/range {v1 .. v6}, Lcom/ffrt/proxyread/PacketEngine;->udpFlow(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)Lo/zc;

    .line 99
    move-result-object v6

    .line 100
    invoke-direct {v7, v10}, Lcom/ffrt/proxyread/PacketEngine;->inet(Ljava/lang/String;)Ljava/net/InetAddress;

    .line 103
    move-result-object v16

    .line 104
    :try_start_0
    iget-object v5, v6, Lo/zc;->e:Ljava/net/DatagramSocket;

    .line 106
    new-instance v4, Ljava/net/DatagramPacket;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    invoke-static {v0, v8, v13, v10, v12}, Lcom/ffrt/proxyread/Cmd448;->rewriteUdp([BIILjava/lang/String;I)[B

    move-result-object v24

    nop

    move-object/from16 v1, v24

    array-length v13, v1

    move-object v1, v4

    move-object/from16 v2, v24

    const/4 v3, 0x0

    .line 112
    move-object/from16 p2, v14

    .line 114
    move-object v14, v4

    .line 115
    move v4, v13

    .line 116
    move-object v0, v5

    .line 117
    move-object/from16 v5, v16

    .line 119
    move/from16 p3, v13

    .line 121
    move-object v13, v6

    .line 122
    move v6, v12

    .line 123
    :try_start_1
    invoke-direct/range {v1 .. v6}, Ljava/net/DatagramPacket;-><init>([BIILjava/net/InetAddress;I)V

    .line 126
    invoke-virtual {v0, v14}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    const-string v0, "UDP.log"

    const-string v1, "sent"

    move-object v2, v10

    move v3, v12

    move-object/from16 v4, v24

    const/4 v5, 0x0

    move/from16 v6, p3

    invoke-static/range {v0 .. v6}, Lcom/ffrt/proxyread/PacketEngine;->dumpLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[BII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 129
    goto :goto_0

    .line 130
    :catch_0
    add-int v1, v8, v13

    invoke-static {v0, v8, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v24

    move/from16 p3, v13

    .line 132
    move-object/from16 p2, v14

    .line 134
    move-object v13, v6

    .line 135
    :catch_1
    iget-object v0, v7, Lcom/ffrt/proxyread/PacketEngine;->udpFlows:Ljava/util/concurrent/ConcurrentHashMap;

    .line 137
    invoke-virtual {v0, v15, v13}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 140
    :try_start_2
    iget-object v0, v13, Lo/zc;->e:Ljava/net/DatagramSocket;

    .line 142
    invoke-virtual {v0}, Ljava/net/DatagramSocket;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 145
    :catchall_0
    move-object/from16 v1, p0

    .line 147
    move-object v2, v15

    .line 148
    move-object v3, v9

    .line 149
    move v4, v11

    .line 150
    move-object v5, v10

    .line 151
    move v6, v12

    .line 152
    invoke-direct/range {v1 .. v6}, Lcom/ffrt/proxyread/PacketEngine;->udpFlow(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)Lo/zc;

    .line 155
    move-result-object v0

    .line 156
    :try_start_3
    iget-object v0, v0, Lo/zc;->e:Ljava/net/DatagramSocket;

    .line 158
    new-instance v9, Ljava/net/DatagramPacket;

    .line 160
    move-object v1, v9

    .line 161
    move-object/from16 v2, p1

    .line 163
    move v3, v8

    .line 164
    move/from16 v4, p3

    .line 166
    move-object/from16 v5, v16

    .line 168
    move v6, v12

    .line 169
    invoke-direct/range {v1 .. v6}, Ljava/net/DatagramPacket;-><init>([BIILjava/net/InetAddress;I)V

    .line 172
    invoke-virtual {v0, v9}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 175
    :goto_0
    sget-object v1, Lo/Tg;->a:Lo/Tg;

    .line 177
    const/16 v0, 0x271d

    .line 179
    if-eq v12, v0, :cond_3

    .line 181
    const/16 v0, 0x271c

    .line 183
    if-eq v12, v0, :cond_3

    .line 185
    const/16 v0, 0x2710

    .line 187
    if-gt v0, v12, :cond_5

    .line 189
    const/16 v0, 0x2775

    .line 191
    if-ge v12, v0, :cond_5

    .line 193
    :cond_3
    move-object/from16 v0, p1

    .line 195
    if-lez p3, :cond_4

    .line 197
    aget-byte v2, v0, v8

    .line 199
    and-int/lit16 v2, v2, 0xff

    .line 201
    invoke-virtual {v1, v2}, Lo/Tg;->o(I)V

    .line 204
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    .line 206
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 209
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    move-object/from16 v9, p2

    .line 214
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 220
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 223
    move-result-object v5

    .line 224
    const/4 v6, 0x0

    .line 225
    move-object/from16 v2, p1

    .line 227
    move v3, v8

    .line 228
    move/from16 v4, p3

    .line 230
    invoke-virtual/range {v1 .. v6}, Lo/Tg;->r([BIILjava/lang/String;Z)V

    .line 233
    iget-object v1, v7, Lcom/ffrt/proxyread/PacketEngine;->lookQ:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 235
    new-instance v2, Lo/xc;

    .line 237
    move-object/from16 v0, v24

    .line 243
    new-instance v3, Ljava/lang/StringBuilder;

    .line 245
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 248
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 257
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 260
    move-result-object v3

    .line 261
    const/4 v4, 0x0

    .line 262
    invoke-direct {v2, v4, v0, v3}, Lo/xc;-><init>(Z[BLjava/lang/String;)V

    .line 265
    invoke-direct {v7, v1, v2}, Lcom/ffrt/proxyread/PacketEngine;->offerLatest(Ljava/util/concurrent/LinkedBlockingQueue;Lo/xc;)V

    .line 268
    :cond_5
    return-void

    .line 269
    :catch_2
    move-exception v0

    .line 270
    sget v1, Lo/ta;->a:I

    .line 272
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 275
    move-result-object v0

    .line 276
    new-instance v1, Ljava/lang/StringBuilder;

    .line 278
    const-string v2, "UDP send "

    .line 280
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 283
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 289
    move-result-object v0

    .line 290
    invoke-static {v0}, Lo/ta;->a(Ljava/lang/String;)V

    .line 293
    return-void
.end method

.method private final tcpConnect(Lo/yc;)V
    .locals 29

    .line 1
    move-object/from16 v14, p0

    .line 3
    move-object/from16 v15, p1

    .line 5
    const/4 v13, 0x1

    .line 6
    const-string v12, "->"

    .line 8
    const-string v11, ":"

    .line 10
    const-string v0, "pr-tcp-r-"

    .line 12
    const-wide/16 v16, 0x1

    .line 14
    const-wide v18, 0xffffffffL

    .line 19
    const/4 v8, 0x0

    .line 20
    :try_start_0
    new-instance v9, Ljava/net/Socket;

    .line 22
    invoke-direct {v9}, Ljava/net/Socket;-><init>()V

    .line 25
    iget-object v1, v14, Lcom/ffrt/proxyread/PacketEngine;->vpn:Landroid/net/VpnService;

    .line 27
    invoke-virtual {v1, v9}, Landroid/net/VpnService;->protect(Ljava/net/Socket;)Z

    .line 30
    invoke-virtual {v9, v13}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    .line 33
    invoke-virtual {v9, v13}, Ljava/net/Socket;->setKeepAlive(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_8
    .catchall {:try_start_0 .. :try_end_0} :catchall_c

    .line 36
    const/high16 v1, 0x40000

    .line 38
    :try_start_1
    invoke-virtual {v9, v1}, Ljava/net/Socket;->setSendBufferSize(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 41
    :catchall_0
    :try_start_2
    invoke-virtual {v9, v1}, Ljava/net/Socket;->setReceiveBufferSize(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 44
    :catchall_1
    :try_start_3
    new-instance v1, Ljava/net/InetSocketAddress;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_8
    .catchall {:try_start_3 .. :try_end_3} :catchall_c

    .line 46
    :try_start_4
    iget-object v2, v15, Lo/yc;->c:Ljava/lang/String;

    .line 48
    iget v3, v15, Lo/yc;->d:I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_7
    .catchall {:try_start_4 .. :try_end_4} :catchall_b

    .line 50
    :try_start_5
    invoke-direct {v1, v2, v3}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 53
    const/16 v2, 0x2ee0

    .line 55
    invoke-virtual {v9, v1, v2}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 58
    iget-object v1, v14, Lcom/ffrt/proxyread/PacketEngine;->running:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 60
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 63
    move-result v1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_8
    .catchall {:try_start_5 .. :try_end_5} :catchall_c

    .line 64
    if-eqz v1, :cond_0

    .line 66
    :try_start_6
    iget-boolean v1, v15, Lo/yc;->l:Z

    .line 68
    if-eqz v1, :cond_1

    .line 70
    :cond_0
    move-object/from16 v26, v9

    .line 72
    move-object v6, v11

    .line 73
    move-object v7, v12

    .line 74
    goto/16 :goto_6

    .line 76
    :cond_1
    iput-object v9, v15, Lo/yc;->h:Ljava/net/Socket;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_7
    .catchall {:try_start_6 .. :try_end_6} :catchall_b

    .line 78
    :try_start_7
    sget-object v1, Lo/jd;->a:Lo/id;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_8
    .catchall {:try_start_7 .. :try_end_7} :catchall_c

    .line 80
    :try_start_8
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 83
    sget-object v1, Lo/jd;->b:Lo/h;

    .line 85
    invoke-virtual {v1}, Lo/h;->a()I

    .line 88
    move-result v1

    .line 89
    int-to-long v1, v1

    .line 90
    and-long v6, v1, v18

    .line 92
    iput-wide v6, v15, Lo/yc;->f:J

    .line 94
    iget-object v2, v15, Lo/yc;->c:Ljava/lang/String;

    .line 96
    iget v3, v15, Lo/yc;->d:I

    .line 98
    iget-object v4, v15, Lo/yc;->a:Ljava/lang/String;

    .line 100
    iget v5, v15, Lo/yc;->b:I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_7
    .catchall {:try_start_8 .. :try_end_8} :catchall_b

    .line 102
    move-object/from16 v20, v11

    .line 104
    :try_start_9
    iget-wide v10, v15, Lo/yc;->g:J
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6
    .catchall {:try_start_9 .. :try_end_9} :catchall_a

    .line 106
    :try_start_a
    new-array v1, v8, [B
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_5
    .catchall {:try_start_a .. :try_end_a} :catchall_9

    .line 108
    const/16 v21, 0x800

    .line 110
    const/16 v22, 0x12

    .line 112
    const v23, 0xffff

    .line 115
    move-object/from16 v24, v1

    .line 117
    move-object/from16 v1, p0

    .line 119
    move/from16 v25, v8

    .line 121
    move-object/from16 v26, v9

    .line 123
    move-wide v8, v10

    .line 124
    const/16 v11, 0x11

    .line 126
    move/from16 v10, v22

    .line 128
    move-object/from16 v27, v20

    .line 130
    move-object/from16 v11, v24

    .line 132
    move-object/from16 v28, v12

    .line 134
    move/from16 v12, v23

    .line 136
    move/from16 v13, v21

    .line 138
    :try_start_b
    invoke-direct/range {v1 .. v13}, Lcom/ffrt/proxyread/PacketEngine;->buildTcp(Ljava/lang/String;ILjava/lang/String;IJJI[BII)[B

    .line 141
    move-result-object v1
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    .line 142
    :try_start_c
    iget-wide v2, v15, Lo/yc;->f:J

    .line 144
    add-long v2, v2, v16

    .line 146
    and-long v2, v2, v18

    .line 148
    iput-wide v2, v15, Lo/yc;->f:J
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_4
    .catchall {:try_start_c .. :try_end_c} :catchall_8

    .line 150
    :try_start_d
    invoke-direct {v14, v1}, Lcom/ffrt/proxyread/PacketEngine;->writeTun([B)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_3
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    .line 153
    :try_start_e
    iget v1, v15, Lo/yc;->b:I

    .line 155
    new-instance v2, Ljava/lang/StringBuilder;

    .line 157
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 160
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 163
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 166
    move-result-object v0

    .line 167
    new-instance v1, Lo/vc;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_2
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    .line 169
    const/4 v2, 0x1

    .line 170
    :try_start_f
    invoke-direct {v1, v14, v15, v2}, Lo/vc;-><init>(Lcom/ffrt/proxyread/PacketEngine;Lo/yc;I)V

    .line 173
    const/16 v3, 0x15

    .line 175
    invoke-static {v0, v1, v3}, Lo/Ha;->y0(Ljava/lang/String;Lo/u8;I)Lo/Uf;

    .line 178
    invoke-virtual/range {v26 .. v26}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    .line 181
    move-result-object v0

    .line 182
    :cond_2
    iget-object v1, v14, Lcom/ffrt/proxyread/PacketEngine;->running:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 184
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 187
    move-result v1
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_1
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    .line 188
    if-eqz v1, :cond_5

    .line 190
    :try_start_10
    iget-boolean v1, v15, Lo/yc;->l:Z

    .line 192
    if-nez v1, :cond_5

    .line 194
    iget-object v1, v15, Lo/yc;->e:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 196
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 198
    const-wide/16 v4, 0x12c

    .line 200
    invoke-virtual {v1, v4, v5, v3}, Ljava/util/concurrent/LinkedBlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    .line 203
    move-result-object v1

    .line 204
    check-cast v1, [B

    .line 206
    if-eqz v1, :cond_4

    .line 208
    array-length v3, v1

    .line 209
    if-nez v3, :cond_3

    .line 211
    goto :goto_0

    .line 212
    :cond_3
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 215
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 218
    goto :goto_0

    .line 219
    :catchall_2
    move-exception v0

    .line 220
    move v13, v2

    .line 221
    move-object/from16 v6, v27

    .line 223
    move-object/from16 v7, v28

    .line 225
    const/16 v1, 0x11

    .line 227
    goto/16 :goto_a

    .line 229
    :catch_0
    move-exception v0

    .line 230
    move v13, v2

    .line 231
    move-object/from16 v6, v27

    .line 233
    move-object/from16 v7, v28

    .line 235
    const/16 v1, 0x11

    .line 237
    goto/16 :goto_7

    .line 239
    :cond_4
    :goto_0
    iget-boolean v1, v15, Lo/yc;->j:Z
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_0
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    .line 241
    if-eqz v1, :cond_2

    .line 243
    :try_start_11
    invoke-virtual/range {v26 .. v26}, Ljava/net/Socket;->shutdownOutput()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    .line 246
    :catchall_3
    :cond_5
    iget-boolean v0, v15, Lo/yc;->l:Z

    .line 248
    if-nez v0, :cond_6

    .line 250
    iget-boolean v0, v15, Lo/yc;->k:Z

    .line 252
    if-nez v0, :cond_6

    .line 254
    iget-boolean v0, v15, Lo/yc;->j:Z

    .line 256
    if-nez v0, :cond_6

    .line 258
    const/16 v1, 0x11

    .line 260
    :try_start_12
    invoke-direct {v14, v15, v1}, Lcom/ffrt/proxyread/PacketEngine;->tcpFlags(Lo/yc;I)[B

    .line 263
    move-result-object v0

    .line 264
    invoke-direct {v14, v0}, Lcom/ffrt/proxyread/PacketEngine;->writeTun([B)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_4

    .line 267
    :catchall_4
    :cond_6
    invoke-virtual/range {p1 .. p1}, Lo/yc;->b()V

    .line 270
    iget-object v0, v14, Lcom/ffrt/proxyread/PacketEngine;->tcpFlows:Ljava/util/concurrent/ConcurrentHashMap;

    .line 272
    iget-object v1, v15, Lo/yc;->a:Ljava/lang/String;

    .line 274
    iget v2, v15, Lo/yc;->b:I

    .line 276
    iget-object v3, v15, Lo/yc;->c:Ljava/lang/String;

    .line 278
    iget v4, v15, Lo/yc;->d:I

    .line 280
    new-instance v5, Ljava/lang/StringBuilder;

    .line 282
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 285
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    move-object/from16 v6, v27

    .line 290
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 296
    move-object/from16 v7, v28

    .line 298
    :goto_1
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 310
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 313
    move-result-object v1

    .line 314
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    goto/16 :goto_9

    .line 319
    :catchall_5
    move-exception v0

    .line 320
    move-object/from16 v6, v27

    .line 322
    move-object/from16 v7, v28

    .line 324
    const/16 v1, 0x11

    .line 326
    :goto_2
    move v13, v2

    .line 327
    goto/16 :goto_a

    .line 329
    :catch_1
    move-exception v0

    .line 330
    move-object/from16 v6, v27

    .line 332
    move-object/from16 v7, v28

    .line 334
    const/16 v1, 0x11

    .line 336
    :goto_3
    move v13, v2

    .line 337
    goto/16 :goto_7

    .line 339
    :catchall_6
    move-exception v0

    .line 340
    move-object/from16 v6, v27

    .line 342
    move-object/from16 v7, v28

    .line 344
    const/16 v1, 0x11

    .line 346
    const/4 v2, 0x1

    .line 347
    goto :goto_2

    .line 348
    :catch_2
    move-exception v0

    .line 349
    move-object/from16 v6, v27

    .line 351
    move-object/from16 v7, v28

    .line 353
    const/16 v1, 0x11

    .line 355
    const/4 v2, 0x1

    .line 356
    goto :goto_3

    .line 357
    :catchall_7
    move-exception v0

    .line 358
    move-object/from16 v6, v27

    .line 360
    move-object/from16 v7, v28

    .line 362
    :goto_4
    const/16 v1, 0x11

    .line 364
    move/from16 v13, v25

    .line 366
    goto/16 :goto_a

    .line 368
    :catch_3
    move-exception v0

    .line 369
    move-object/from16 v6, v27

    .line 371
    move-object/from16 v7, v28

    .line 373
    :goto_5
    const/16 v1, 0x11

    .line 375
    move/from16 v13, v25

    .line 377
    goto/16 :goto_7

    .line 379
    :catchall_8
    move-exception v0

    .line 380
    move-object/from16 v6, v27

    .line 382
    move-object/from16 v7, v28

    .line 384
    goto :goto_4

    .line 385
    :catch_4
    move-exception v0

    .line 386
    move-object/from16 v6, v27

    .line 388
    move-object/from16 v7, v28

    .line 390
    goto :goto_5

    .line 391
    :catchall_9
    move-exception v0

    .line 392
    move/from16 v25, v8

    .line 394
    move-object v7, v12

    .line 395
    move-object/from16 v6, v20

    .line 397
    goto :goto_4

    .line 398
    :catch_5
    move-exception v0

    .line 399
    move/from16 v25, v8

    .line 401
    move-object v7, v12

    .line 402
    move-object/from16 v6, v20

    .line 404
    goto :goto_5

    .line 405
    :catchall_a
    move-exception v0

    .line 406
    move/from16 v25, v8

    .line 408
    move-object v7, v12

    .line 409
    move-object/from16 v6, v20

    .line 411
    goto :goto_4

    .line 412
    :catch_6
    move-exception v0

    .line 413
    move/from16 v25, v8

    .line 415
    move-object v7, v12

    .line 416
    move-object/from16 v6, v20

    .line 418
    goto :goto_5

    .line 419
    :catchall_b
    move-exception v0

    .line 420
    move/from16 v25, v8

    .line 422
    move-object v6, v11

    .line 423
    move-object v7, v12

    .line 424
    goto :goto_4

    .line 425
    :catch_7
    move-exception v0

    .line 426
    move/from16 v25, v8

    .line 428
    move-object v6, v11

    .line 429
    move-object v7, v12

    .line 430
    goto :goto_5

    .line 431
    :catchall_c
    move-exception v0

    .line 432
    move/from16 v25, v8

    .line 434
    move-object v6, v11

    .line 435
    move-object v7, v12

    .line 436
    goto :goto_4

    .line 437
    :catch_8
    move-exception v0

    .line 438
    move/from16 v25, v8

    .line 440
    move-object v6, v11

    .line 441
    move-object v7, v12

    .line 442
    goto :goto_5

    .line 443
    :goto_6
    :try_start_13
    invoke-virtual/range {v26 .. v26}, Ljava/net/Socket;->close()V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_d

    .line 446
    :catchall_d
    invoke-virtual/range {p1 .. p1}, Lo/yc;->b()V

    .line 449
    iget-object v0, v14, Lcom/ffrt/proxyread/PacketEngine;->tcpFlows:Ljava/util/concurrent/ConcurrentHashMap;

    .line 451
    iget-object v1, v15, Lo/yc;->a:Ljava/lang/String;

    .line 453
    iget v2, v15, Lo/yc;->b:I

    .line 455
    iget-object v3, v15, Lo/yc;->c:Ljava/lang/String;

    .line 457
    iget v4, v15, Lo/yc;->d:I

    .line 459
    new-instance v5, Ljava/lang/StringBuilder;

    .line 461
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 464
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 467
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 470
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 473
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 476
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 479
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 482
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 485
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 488
    move-result-object v1

    .line 489
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 492
    return-void

    .line 493
    :goto_7
    :try_start_14
    iget-boolean v2, v15, Lo/yc;->l:Z

    .line 495
    if-nez v2, :cond_8

    .line 497
    if-nez v13, :cond_7

    .line 499
    sget v2, Lo/ta;->a:I

    .line 501
    iget-object v2, v15, Lo/yc;->c:Ljava/lang/String;

    .line 503
    iget v3, v15, Lo/yc;->d:I

    .line 505
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 508
    move-result-object v0

    .line 509
    new-instance v4, Ljava/lang/StringBuilder;

    .line 511
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 514
    const-string v5, "TCP "

    .line 516
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 519
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 522
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 525
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 528
    const-string v2, " "

    .line 530
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 533
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 536
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 539
    move-result-object v0

    .line 540
    invoke-static {v0}, Lo/ta;->a(Ljava/lang/String;)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_e

    .line 543
    const/4 v0, 0x4

    .line 544
    :try_start_15
    invoke-direct {v14, v15, v0}, Lcom/ffrt/proxyread/PacketEngine;->tcpFlags(Lo/yc;I)[B

    .line 547
    move-result-object v0

    .line 548
    invoke-direct {v14, v0}, Lcom/ffrt/proxyread/PacketEngine;->writeTun([B)V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_10

    .line 551
    goto :goto_8

    .line 552
    :catchall_e
    move-exception v0

    .line 553
    goto :goto_a

    .line 554
    :cond_7
    :try_start_16
    invoke-direct {v14, v15, v1}, Lcom/ffrt/proxyread/PacketEngine;->tcpFlags(Lo/yc;I)[B

    .line 557
    move-result-object v0

    .line 558
    invoke-direct {v14, v0}, Lcom/ffrt/proxyread/PacketEngine;->writeTun([B)V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_f

    .line 561
    :catchall_f
    :try_start_17
    iget-wide v2, v15, Lo/yc;->f:J

    .line 563
    add-long v2, v2, v16

    .line 565
    and-long v2, v2, v18

    .line 567
    iput-wide v2, v15, Lo/yc;->f:J
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_e

    .line 569
    :catchall_10
    :cond_8
    :goto_8
    if-eqz v13, :cond_9

    .line 571
    iget-boolean v0, v15, Lo/yc;->l:Z

    .line 573
    if-nez v0, :cond_9

    .line 575
    iget-boolean v0, v15, Lo/yc;->k:Z

    .line 577
    if-nez v0, :cond_9

    .line 579
    iget-boolean v0, v15, Lo/yc;->j:Z

    .line 581
    if-nez v0, :cond_9

    .line 583
    :try_start_18
    invoke-direct {v14, v15, v1}, Lcom/ffrt/proxyread/PacketEngine;->tcpFlags(Lo/yc;I)[B

    .line 586
    move-result-object v0

    .line 587
    invoke-direct {v14, v0}, Lcom/ffrt/proxyread/PacketEngine;->writeTun([B)V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_11

    .line 590
    :catchall_11
    :cond_9
    invoke-virtual/range {p1 .. p1}, Lo/yc;->b()V

    .line 593
    iget-object v0, v14, Lcom/ffrt/proxyread/PacketEngine;->tcpFlows:Ljava/util/concurrent/ConcurrentHashMap;

    .line 595
    iget-object v1, v15, Lo/yc;->a:Ljava/lang/String;

    .line 597
    iget v2, v15, Lo/yc;->b:I

    .line 599
    iget-object v3, v15, Lo/yc;->c:Ljava/lang/String;

    .line 601
    iget v4, v15, Lo/yc;->d:I

    .line 603
    new-instance v5, Ljava/lang/StringBuilder;

    .line 605
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 608
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 611
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 614
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 617
    goto/16 :goto_1

    .line 619
    :goto_9
    return-void

    .line 620
    :goto_a
    if-eqz v13, :cond_a

    .line 622
    iget-boolean v2, v15, Lo/yc;->l:Z

    .line 624
    if-nez v2, :cond_a

    .line 626
    iget-boolean v2, v15, Lo/yc;->k:Z

    .line 628
    if-nez v2, :cond_a

    .line 630
    iget-boolean v2, v15, Lo/yc;->j:Z

    .line 632
    if-nez v2, :cond_a

    .line 634
    :try_start_19
    invoke-direct {v14, v15, v1}, Lcom/ffrt/proxyread/PacketEngine;->tcpFlags(Lo/yc;I)[B

    .line 637
    move-result-object v1

    .line 638
    invoke-direct {v14, v1}, Lcom/ffrt/proxyread/PacketEngine;->writeTun([B)V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_12

    .line 641
    :catchall_12
    :cond_a
    invoke-virtual/range {p1 .. p1}, Lo/yc;->b()V

    .line 644
    iget-object v1, v14, Lcom/ffrt/proxyread/PacketEngine;->tcpFlows:Ljava/util/concurrent/ConcurrentHashMap;

    .line 646
    iget-object v2, v15, Lo/yc;->a:Ljava/lang/String;

    .line 648
    iget v3, v15, Lo/yc;->b:I

    .line 650
    iget-object v4, v15, Lo/yc;->c:Ljava/lang/String;

    .line 652
    iget v5, v15, Lo/yc;->d:I

    .line 654
    new-instance v8, Ljava/lang/StringBuilder;

    .line 656
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 659
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 662
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 665
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 668
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 671
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 674
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 677
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 680
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 683
    move-result-object v2

    .line 684
    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 687
    throw v0
.end method

.method private static final tcpConnect$lambda$20(Lcom/ffrt/proxyread/PacketEngine;Lo/yc;)Lo/Ug;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/ffrt/proxyread/PacketEngine;->tcpRead(Lo/yc;)V

    .line 4
    sget-object p0, Lo/Ug;->a:Lo/Ug;

    .line 6
    return-object p0
.end method

.method private final tcpFlags(Lo/yc;I)[B
    .locals 15

    .line 1
    move-object/from16 v0, p1

    .line 3
    iget-object v1, v0, Lo/yc;->c:Ljava/lang/String;

    .line 5
    iget v2, v0, Lo/yc;->d:I

    .line 7
    iget-object v3, v0, Lo/yc;->a:Ljava/lang/String;

    .line 9
    iget v4, v0, Lo/yc;->b:I

    .line 11
    iget-wide v5, v0, Lo/yc;->f:J

    .line 13
    iget-wide v7, v0, Lo/yc;->g:J

    .line 15
    const/4 v9, 0x0

    .line 16
    new-array v10, v9, [B

    .line 18
    invoke-direct/range {p0 .. p1}, Lcom/ffrt/proxyread/PacketEngine;->windowOf(Lo/yc;)I

    .line 21
    move-result v11

    .line 22
    const/16 v13, 0x200

    .line 24
    const/4 v14, 0x0

    .line 25
    const/4 v12, 0x0

    .line 26
    move-object v0, p0

    .line 27
    move/from16 v9, p2

    .line 29
    invoke-static/range {v0 .. v14}, Lcom/ffrt/proxyread/PacketEngine;->buildTcp$default(Lcom/ffrt/proxyread/PacketEngine;Ljava/lang/String;ILjava/lang/String;IJJI[BIIILjava/lang/Object;)[B

    .line 32
    move-result-object v0

    .line 33
    return-object v0
.end method

.method private final tcpRead(Lo/yc;)V
    .locals 24

    .line 1
    move-object/from16 v15, p0

    .line 3
    move-object/from16 v14, p1

    const/16 v0, 0xfa0

    new-array v13, v0, [B

    .line 20
    :try_start_0
    iget-object v0, v14, Lo/yc;->h:Ljava/net/Socket;

    .line 22
    if-eqz v0, :cond_2

    .line 24
    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    .line 27
    move-result-object v12

    .line 28
    if-nez v12, :cond_0

    .line 30
    goto/16 :goto_1

    .line 32
    :cond_0
    :goto_0
    iget-object v0, v15, Lcom/ffrt/proxyread/PacketEngine;->running:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 34
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 37
    move-result v0

    .line 38
    const-wide v16, 0xffffffffL

    .line 43
    if-eqz v0, :cond_1

    .line 45
    iget-boolean v0, v14, Lo/yc;->l:Z

    .line 47
    if-nez v0, :cond_1

    .line 49
    invoke-virtual {v12, v13}, Ljava/io/InputStream;->read([B)I

    .line 52
    move-result v11

    .line 53
    if-ltz v11, :cond_1

    .line 55
    if-eqz v11, :cond_0

    .line 57
    invoke-static {v13, v11}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 60
    move-result-object v10

    iget-object v0, v14, Lo/yc;->c:Ljava/lang/String;

    iget v1, v14, Lo/yc;->d:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v10}, Lcom/ffrt/proxyread/Cmd448;->handleTcp(Ljava/lang/String;[B)V

    .line 61
    const-string v0, "copyOf(...)"

    .line 63
    invoke-static {v10, v0}, Lo/x9;->n(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    iget-object v1, v14, Lo/yc;->c:Ljava/lang/String;

    .line 68
    iget v2, v14, Lo/yc;->d:I

    .line 70
    iget-object v3, v14, Lo/yc;->a:Ljava/lang/String;

    .line 72
    iget v4, v14, Lo/yc;->b:I

    .line 74
    iget-wide v5, v14, Lo/yc;->f:J

    .line 76
    iget-wide v7, v14, Lo/yc;->g:J

    .line 78
    invoke-direct/range {p0 .. p1}, Lcom/ffrt/proxyread/PacketEngine;->windowOf(Lo/yc;)I

    .line 81
    move-result v18

    .line 82
    const/16 v9, 0x18

    .line 84
    const/16 v19, 0x0

    .line 86
    const/16 v20, 0x200

    .line 88
    const/16 v21, 0x0

    .line 90
    move-object/from16 v0, p0

    .line 92
    move-object/from16 v22, v10

    .line 94
    move/from16 v23, v11

    .line 96
    move/from16 v11, v18

    .line 98
    move-object/from16 v18, v12

    .line 100
    move/from16 v12, v19

    .line 102
    move-object/from16 v19, v13

    .line 104
    move/from16 v13, v20

    .line 106
    move-object/from16 v14, v21

    .line 108
    invoke-static/range {v0 .. v14}, Lcom/ffrt/proxyread/PacketEngine;->buildTcp$default(Lcom/ffrt/proxyread/PacketEngine;Ljava/lang/String;ILjava/lang/String;IJJI[BIIILjava/lang/Object;)[B

    .line 111
    move-result-object v0

    .line 112
    invoke-direct {v15, v0}, Lcom/ffrt/proxyread/PacketEngine;->writeTun([B)V

    .line 115
    move-object/from16 v0, p1

    .line 117
    iget-wide v1, v0, Lo/yc;->f:J

    .line 119
    move/from16 v3, v23

    .line 121
    int-to-long v3, v3

    .line 122
    add-long/2addr v1, v3

    .line 123
    and-long v1, v1, v16

    .line 125
    iput-wide v1, v0, Lo/yc;->f:J

    .line 127
    const-string v1, "S2C"

    .line 129
    move-object/from16 v2, v22

    .line 131
    invoke-virtual {v0, v1, v2}, Lo/yc;->e(Ljava/lang/String;[B)V

    const-string v2, "TCP.log"

    const-string v3, "receive"

    iget-object v4, v0, Lo/yc;->c:Ljava/lang/String;

    iget v5, v0, Lo/yc;->d:I

    move-object/from16 v6, v22

    const/4 v7, 0x0

    array-length v8, v6

    invoke-static/range {v2 .. v8}, Lcom/ffrt/proxyread/PacketEngine;->dumpLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[BII)V

    .line 134
    move-object v14, v0

    .line 135
    move-object/from16 v12, v18

    .line 137
    move-object/from16 v13, v19

    .line 139
    goto/16 :goto_0

    .line 140
    :cond_1
    move-object v0, v14

    .line 141
    iget-boolean v1, v0, Lo/yc;->l:Z

    .line 143
    if-nez v1, :cond_2

    .line 145
    const/16 v1, 0x11

    .line 147
    invoke-direct {v15, v0, v1}, Lcom/ffrt/proxyread/PacketEngine;->tcpFlags(Lo/yc;I)[B

    .line 150
    move-result-object v1

    .line 151
    invoke-direct {v15, v1}, Lcom/ffrt/proxyread/PacketEngine;->writeTun([B)V

    .line 154
    iget-wide v1, v0, Lo/yc;->f:J

    .line 156
    const-wide/16 v3, 0x1

    .line 158
    add-long/2addr v1, v3

    .line 159
    and-long v1, v1, v16

    .line 161
    iput-wide v1, v0, Lo/yc;->f:J

    .line 163
    const/4 v1, 0x1

    .line 164
    iput-boolean v1, v0, Lo/yc;->k:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    nop

    .line 167
    :catch_0
    :cond_2
    :goto_1
    return-void
.end method

.method private final udpFlow(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)Lo/zc;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/ffrt/proxyread/PacketEngine;->udpFlows:Ljava/util/concurrent/ConcurrentHashMap;

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lo/zc;

    .line 9
    if-eqz v0, :cond_0

    .line 11
    iget-object v1, v0, Lo/zc;->e:Ljava/net/DatagramSocket;

    .line 13
    invoke-virtual {v1}, Ljava/net/DatagramSocket;->isClosed()Z

    .line 16
    move-result v1

    .line 17
    if-nez v1, :cond_0

    .line 19
    return-object v0

    .line 20
    :cond_0
    new-instance v7, Ljava/net/DatagramSocket;

    .line 22
    invoke-direct {v7}, Ljava/net/DatagramSocket;-><init>()V

    .line 25
    iget-object v0, p0, Lcom/ffrt/proxyread/PacketEngine;->vpn:Landroid/net/VpnService;

    .line 27
    invoke-virtual {v0, v7}, Landroid/net/VpnService;->protect(Ljava/net/DatagramSocket;)Z

    .line 30
    const/4 v0, 0x0

    .line 31
    invoke-virtual {v7, v0}, Ljava/net/DatagramSocket;->setSoTimeout(I)V

    .line 34
    const/high16 v0, 0x80000

    .line 36
    :try_start_0
    invoke-virtual {v7, v0}, Ljava/net/DatagramSocket;->setReceiveBufferSize(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    :catchall_0
    :try_start_1
    invoke-virtual {v7, v0}, Ljava/net/DatagramSocket;->setSendBufferSize(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 42
    :catchall_1
    new-instance v0, Lo/zc;

    .line 44
    move-object v2, v0

    .line 45
    move-object v3, p2

    .line 46
    move v4, p3

    .line 47
    move-object v5, p4

    .line 48
    move v6, p5

    .line 49
    invoke-direct/range {v2 .. v7}, Lo/zc;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/net/DatagramSocket;)V

    .line 52
    iget-object p2, p0, Lcom/ffrt/proxyread/PacketEngine;->udpFlows:Ljava/util/concurrent/ConcurrentHashMap;

    .line 54
    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    new-instance p2, Ljava/lang/StringBuilder;

    .line 59
    const-string p4, "pr-udp-"

    .line 61
    invoke-direct {p2, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 67
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    move-result-object p2

    .line 71
    new-instance p3, Lo/uc;

    .line 73
    invoke-direct {p3, p0, v0, p1}, Lo/uc;-><init>(Lcom/ffrt/proxyread/PacketEngine;Lo/zc;Ljava/lang/String;)V

    .line 76
    const/16 p1, 0x15

    .line 78
    invoke-static {p2, p3, p1}, Lo/Ha;->y0(Ljava/lang/String;Lo/u8;I)Lo/Uf;

    .line 81
    return-object v0
.end method

.method private static final udpFlow$lambda$13(Lcom/ffrt/proxyread/PacketEngine;Lo/zc;Ljava/lang/String;)Lo/Ug;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/ffrt/proxyread/PacketEngine;->udpRecv(Lo/zc;Ljava/lang/String;)V

    .line 4
    sget-object p0, Lo/Ug;->a:Lo/Ug;

    .line 6
    return-object p0
.end method

.method private final udpRecv(Lo/zc;Ljava/lang/String;)V
    .locals 13

    .line 1
    const-string v0, "getData(...)"

    .line 3
    const v1, 0xffff

    .line 6
    new-array v2, v1, [B

    .line 8
    new-instance v3, Ljava/net/DatagramPacket;

    .line 10
    invoke-direct {v3, v2, v1}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 13
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/ffrt/proxyread/PacketEngine;->running:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 15
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_6

    .line 21
    iget-object v1, p1, Lo/zc;->e:Ljava/net/DatagramSocket;

    .line 23
    invoke-virtual {v1}, Ljava/net/DatagramSocket;->isClosed()Z

    .line 26
    move-result v1

    .line 27
    if-nez v1, :cond_6

    .line 29
    iget-object v1, p1, Lo/zc;->e:Ljava/net/DatagramSocket;

    .line 31
    invoke-virtual {v1, v3}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 34
    invoke-virtual {v3}, Ljava/net/DatagramPacket;->getLength()I

    .line 37
    move-result v1

    .line 38
    invoke-virtual {v3}, Ljava/net/DatagramPacket;->getOffset()I

    .line 41
    move-result v2

    const-string v4, "UDP.log"

    const-string v5, "receive"

    iget-object v6, p1, Lo/zc;->c:Ljava/lang/String;

    iget v7, p1, Lo/zc;->d:I

    invoke-virtual {v3}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v8

    move v9, v2

    move v10, v1

    invoke-static/range {v4 .. v10}, Lcom/ffrt/proxyread/PacketEngine;->dumpLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[BII)V

    .line 42
    iget-object v5, p1, Lo/zc;->c:Ljava/lang/String;

    .line 44
    iget v6, p1, Lo/zc;->d:I

    .line 46
    iget-object v7, p1, Lo/zc;->a:Ljava/lang/String;

    .line 48
    iget v8, p1, Lo/zc;->b:I

    .line 50
    invoke-virtual {v3}, Ljava/net/DatagramPacket;->getData()[B

    .line 53
    move-result-object v9

    .line 54
    invoke-static {v9, v0}, Lo/x9;->n(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    move-object v4, p0

    .line 58
    move v10, v2

    .line 59
    move v11, v1

    .line 60
    invoke-direct/range {v4 .. v11}, Lcom/ffrt/proxyread/PacketEngine;->writeUdpToTun(Ljava/lang/String;ILjava/lang/String;I[BII)V

    .line 63
    sget-object v4, Lo/Tg;->a:Lo/Tg;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    const/16 v5, 0x271d

    .line 67
    const/4 v10, 0x1

    .line 68
    const/4 v11, 0x0

    .line 69
    iget v6, p1, Lo/zc;->d:I

    .line 71
    if-eq v6, v5, :cond_2

    .line 73
    const/16 v5, 0x271c

    .line 75
    if-eq v6, v5, :cond_2

    .line 77
    const/16 v5, 0x2710

    .line 79
    if-gt v5, v6, :cond_1

    .line 81
    const/16 v5, 0x2775

    .line 83
    if-ge v6, v5, :cond_1

    .line 85
    goto :goto_0

    .line 86
    :cond_1
    move v5, v11

    .line 87
    goto :goto_1

    .line 88
    :cond_2
    :goto_0
    move v5, v10

    .line 89
    :goto_1
    if-eqz v5, :cond_0

    .line 91
    :try_start_1
    iget-object v5, p1, Lo/zc;->c:Ljava/lang/String;

    .line 93
    new-instance v7, Ljava/lang/StringBuilder;

    .line 95
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 98
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    const-string v5, ":"

    .line 103
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 109
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    move-result-object v12

    .line 113
    if-lez v1, :cond_3

    .line 115
    invoke-virtual {v3}, Ljava/net/DatagramPacket;->getData()[B

    .line 118
    move-result-object v5

    .line 119
    aget-byte v5, v5, v2

    .line 121
    and-int/lit16 v5, v5, 0xff

    .line 123
    invoke-virtual {v4, v5}, Lo/Tg;->o(I)V

    .line 126
    invoke-virtual {v3}, Ljava/net/DatagramPacket;->getData()[B

    .line 129
    move-result-object v5

    .line 130
    invoke-static {v5, v0}, Lo/x9;->n(Ljava/lang/Object;Ljava/lang/String;)V

    .line 133
    invoke-virtual {v4, v2, v1, v12, v5}, Lo/Tg;->k(IILjava/lang/String;[B)V

    .line 136
    goto :goto_2

    .line 137
    :catchall_0
    move-exception v0

    .line 138
    goto/16 :goto_8

    .line 140
    :cond_3
    :goto_2
    invoke-virtual {v3}, Ljava/net/DatagramPacket;->getData()[B

    .line 143
    move-result-object v5

    .line 144
    invoke-static {v5, v0}, Lo/x9;->n(Ljava/lang/Object;Ljava/lang/String;)V

    .line 147
    const/4 v9, 0x1

    .line 148
    move v6, v2

    .line 149
    move v7, v1

    .line 150
    move-object v8, v12

    .line 151
    invoke-virtual/range {v4 .. v9}, Lo/Tg;->r([BIILjava/lang/String;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 154
    :try_start_2
    invoke-virtual {v3}, Ljava/net/DatagramPacket;->getData()[B

    .line 157
    move-result-object v4

    .line 158
    invoke-static {v4, v0}, Lo/x9;->n(Ljava/lang/Object;Ljava/lang/String;)V

    .line 161
    invoke-static {v2, v1, v12, v4}, Lo/Tg;->j(IILjava/lang/String;[B)[B

    .line 164
    move-result-object v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 165
    goto :goto_3

    .line 166
    :catch_0
    :try_start_3
    new-array v4, v11, [B

    .line 168
    :goto_3
    array-length v5, v4

    .line 169
    if-nez v5, :cond_4

    .line 171
    invoke-virtual {v3}, Ljava/net/DatagramPacket;->getData()[B

    .line 174
    move-result-object v4

    .line 175
    invoke-static {v4, v0}, Lo/x9;->n(Ljava/lang/Object;Ljava/lang/String;)V

    .line 178
    add-int v5, v2, v1

    .line 180
    invoke-static {v4, v2, v5}, Lo/H2;->n0([BII)[B

    .line 183
    move-result-object v4

    .line 184
    invoke-direct {p0, v10, v4, v12}, Lcom/ffrt/proxyread/PacketEngine;->offerPose(Z[BLjava/lang/String;)V

    .line 187
    sget-object v4, Lo/Tg;->a:Lo/Tg;

    .line 189
    invoke-virtual {v3}, Ljava/net/DatagramPacket;->getData()[B

    .line 192
    move-result-object v5

    .line 193
    invoke-static {v5, v0}, Lo/x9;->n(Ljava/lang/Object;Ljava/lang/String;)V

    .line 196
    invoke-virtual {v4, v2, v1, v12, v5}, Lo/Tg;->s(IILjava/lang/String;[B)V

    .line 199
    goto :goto_4

    .line 200
    :cond_4
    iget-object v1, p0, Lcom/ffrt/proxyread/PacketEngine;->s2cQ:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 202
    new-instance v2, Lo/xc;

    .line 204
    invoke-direct {v2, v10, v4, v12}, Lo/xc;-><init>(Z[BLjava/lang/String;)V

    .line 207
    invoke-direct {p0, v1, v2}, Lcom/ffrt/proxyread/PacketEngine;->offerLatest(Ljava/util/concurrent/LinkedBlockingQueue;Lo/xc;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 210
    :goto_4
    :try_start_4
    sget-object v1, Lo/Hb;->a:[B

    .line 212
    invoke-static {v12}, Lo/Hb;->m(Ljava/lang/String;)Ljava/util/List;

    .line 215
    move-result-object v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 216
    goto :goto_5

    .line 217
    :catch_1
    :try_start_5
    sget-object v1, Lo/V6;->a:Lo/V6;

    .line 219
    :goto_5
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 222
    move-result-object v1

    .line 223
    :cond_5
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 226
    move-result v2

    .line 227
    if-eqz v2, :cond_0

    .line 229
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 232
    move-result-object v2

    .line 233
    move-object v9, v2

    .line 234
    check-cast v9, [B

    .line 236
    array-length v2, v9

    .line 237
    const/16 v4, 0x10

    .line 239
    if-gt v4, v2, :cond_5

    .line 241
    const/16 v4, 0x259

    .line 243
    if-ge v2, v4, :cond_5

    .line 245
    iget-object v5, p1, Lo/zc;->c:Ljava/lang/String;

    .line 247
    iget v6, p1, Lo/zc;->d:I

    .line 249
    iget-object v7, p1, Lo/zc;->a:Ljava/lang/String;

    .line 251
    iget v8, p1, Lo/zc;->b:I

    .line 253
    array-length v11, v9

    .line 254
    const/4 v10, 0x0

    .line 255
    move-object v4, p0

    .line 256
    invoke-direct/range {v4 .. v11}, Lcom/ffrt/proxyread/PacketEngine;->writeUdpToTun(Ljava/lang/String;ILjava/lang/String;I[BII)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 259
    goto :goto_6

    .line 260
    :cond_6
    iget-object v0, p0, Lcom/ffrt/proxyread/PacketEngine;->udpFlows:Ljava/util/concurrent/ConcurrentHashMap;

    .line 262
    invoke-virtual {v0, p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 265
    :goto_7
    :try_start_6
    iget-object p1, p1, Lo/zc;->e:Ljava/net/DatagramSocket;

    .line 267
    invoke-virtual {p1}, Ljava/net/DatagramSocket;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 270
    goto :goto_9

    .line 271
    :goto_8
    iget-object v1, p0, Lcom/ffrt/proxyread/PacketEngine;->udpFlows:Ljava/util/concurrent/ConcurrentHashMap;

    .line 273
    invoke-virtual {v1, p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 276
    :try_start_7
    iget-object p1, p1, Lo/zc;->e:Ljava/net/DatagramSocket;

    .line 278
    invoke-virtual {p1}, Ljava/net/DatagramSocket;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 281
    :catchall_1
    throw v0

    .line 282
    :catch_2
    iget-object v0, p0, Lcom/ffrt/proxyread/PacketEngine;->udpFlows:Ljava/util/concurrent/ConcurrentHashMap;

    .line 284
    invoke-virtual {v0, p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 287
    goto :goto_7

    .line 288
    :catchall_2
    :goto_9
    return-void
.end method

.method private final windowOf(Lo/yc;)I
    .locals 1

    .line 1
    iget-object p1, p1, Lo/yc;->e:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 3
    invoke-virtual {p1}, Ljava/util/concurrent/LinkedBlockingQueue;->remainingCapacity()I

    .line 6
    move-result p1

    .line 7
    if-gtz p1, :cond_0

    .line 9
    const/4 p1, 0x0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/16 v0, 0x10

    .line 13
    if-ge p1, v0, :cond_1

    .line 15
    const/16 p1, 0x2000

    .line 17
    goto :goto_0

    .line 18
    :cond_1
    const p1, 0xffff

    .line 21
    :goto_0
    return p1
.end method

.method private final writeTun([B)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ffrt/proxyread/PacketEngine;->tunLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/ffrt/proxyread/PacketEngine;->tunOut:Ljava/io/FileOutputStream;

    .line 6
    invoke-virtual {v1, p1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    goto :goto_0

    .line 10
    :catchall_0
    move-exception p1

    .line 11
    monitor-exit v0

    .line 12
    throw p1

    .line 13
    :catch_0
    :goto_0
    monitor-exit v0

    .line 14
    return-void
.end method

.method private final writeUdpToTun(Ljava/lang/String;ILjava/lang/String;I[BII)V
    .locals 7

    .line 1
    add-int/lit8 v0, p7, 0x8

    .line 3
    add-int/lit8 v1, p7, 0x1c

    .line 5
    new-array v2, v1, [B

    .line 7
    const/4 v3, 0x0

    .line 8
    const/16 v4, 0x45

    .line 10
    aput-byte v4, v2, v3

    .line 12
    const/16 v4, 0x40

    .line 14
    const/16 v5, 0x8

    .line 16
    aput-byte v4, v2, v5

    .line 18
    const/16 v4, 0x9

    .line 20
    const/16 v5, 0x11

    .line 22
    aput-byte v5, v2, v4

    .line 24
    sget-object v4, Lcom/ffrt/proxyread/PacketEngine;->Companion:Lo/wc;

    .line 26
    const/16 v6, 0xc

    .line 28
    invoke-static {v4, v2, v6, p1}, Lo/wc;->b(Lo/wc;[BILjava/lang/String;)V

    .line 31
    const/16 v6, 0x10

    .line 33
    invoke-static {v4, v2, v6, p3}, Lo/wc;->b(Lo/wc;[BILjava/lang/String;)V

    .line 36
    const/4 v6, 0x2

    .line 37
    invoke-static {v4, v2, v6, v1}, Lo/wc;->c(Lo/wc;[BII)V

    .line 40
    sget-object v1, Lo/jd;->a:Lo/id;

    .line 42
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    sget-object v1, Lo/jd;->b:Lo/h;

    .line 47
    invoke-virtual {v1}, Lo/jd;->b()I

    .line 50
    move-result v1

    .line 51
    const/4 v6, 0x4

    .line 52
    invoke-static {v4, v2, v6, v1}, Lo/wc;->c(Lo/wc;[BII)V

    .line 55
    const/16 v1, 0xa

    .line 57
    aput-byte v3, v2, v1

    .line 59
    const/16 v6, 0xb

    .line 61
    aput-byte v3, v2, v6

    .line 63
    const/16 v6, 0x14

    .line 65
    invoke-static {v2, v3, v6, v3}, Lo/wc;->f([BIII)I

    .line 68
    move-result v3

    .line 69
    invoke-static {v4, v2, v1, v3}, Lo/wc;->c(Lo/wc;[BII)V

    .line 72
    invoke-static {v4, v2, v6, p2}, Lo/wc;->c(Lo/wc;[BII)V

    .line 75
    const/16 p2, 0x16

    .line 77
    invoke-static {v4, v2, p2, p4}, Lo/wc;->c(Lo/wc;[BII)V

    .line 80
    const/16 p2, 0x18

    .line 82
    invoke-static {v4, v2, p2, v0}, Lo/wc;->c(Lo/wc;[BII)V

    .line 85
    const/16 p2, 0x1c

    .line 87
    invoke-static {p5, p6, v2, p2, p7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 90
    invoke-static {p1}, Lo/wc;->g(Ljava/lang/String;)I

    .line 93
    move-result p1

    .line 94
    invoke-static {p3}, Lo/wc;->g(Ljava/lang/String;)I

    .line 97
    move-result p2

    .line 98
    add-int/2addr p2, p1

    .line 99
    add-int/2addr p2, v5

    .line 100
    add-int/2addr p2, v0

    .line 101
    invoke-static {v2, v6, v0, p2}, Lo/wc;->f([BIII)I

    .line 104
    move-result p1

    .line 105
    if-nez p1, :cond_0

    .line 107
    const p1, 0xffff

    .line 110
    :cond_0
    const/16 p2, 0x1a

    .line 112
    invoke-static {v4, v2, p2, p1}, Lo/wc;->c(Lo/wc;[BII)V

    .line 115
    invoke-direct {p0, v2}, Lcom/ffrt/proxyread/PacketEngine;->writeTun([B)V

    .line 118
    return-void
.end method

.method public static synthetic writeUdpToTun$default(Lcom/ffrt/proxyread/PacketEngine;Ljava/lang/String;ILjava/lang/String;I[BIIILjava/lang/Object;)V
    .locals 9

    .line 1
    and-int/lit8 v0, p8, 0x20

    .line 3
    if-eqz v0, :cond_0

    .line 5
    const/4 v0, 0x0

    .line 6
    move v7, v0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    move v7, p6

    .line 9
    :goto_0
    and-int/lit8 v0, p8, 0x40

    .line 11
    if-eqz v0, :cond_1

    .line 13
    move-object v0, p5

    .line 14
    array-length v1, v0

    .line 15
    move v8, v1

    .line 16
    goto :goto_1

    .line 17
    :cond_1
    move-object v0, p5

    .line 18
    move/from16 v8, p7

    .line 20
    :goto_1
    move-object v1, p0

    .line 21
    move-object v2, p1

    .line 22
    move v3, p2

    .line 23
    move-object v4, p3

    .line 24
    move v5, p4

    .line 25
    move-object v6, p5

    .line 26
    invoke-direct/range {v1 .. v8}, Lcom/ffrt/proxyread/PacketEngine;->writeUdpToTun(Ljava/lang/String;ILjava/lang/String;I[BII)V

    .line 29
    return-void
.end method


# virtual methods
.method public final loop()V
    .locals 9

    .line 1
    new-instance v0, Lo/tc;

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lo/tc;-><init>(Lcom/ffrt/proxyread/PacketEngine;I)V

    .line 7
    const-string v1, "pr-look"

    .line 9
    const/16 v2, 0x15

    .line 11
    invoke-static {v1, v0, v2}, Lo/Ha;->y0(Ljava/lang/String;Lo/u8;I)Lo/Uf;

    .line 14
    move-result-object v0

    .line 15
    new-instance v1, Lo/tc;

    .line 17
    const/4 v3, 0x1

    .line 18
    invoke-direct {v1, p0, v3}, Lo/tc;-><init>(Lcom/ffrt/proxyread/PacketEngine;I)V

    .line 21
    const-string v3, "pr-s2c"

    .line 23
    invoke-static {v3, v1, v2}, Lo/Ha;->y0(Ljava/lang/String;Lo/u8;I)Lo/Uf;

    .line 26
    move-result-object v1

    .line 27
    new-instance v3, Lo/tc;

    .line 29
    const/4 v4, 0x2

    .line 30
    invoke-direct {v3, p0, v4}, Lo/tc;-><init>(Lcom/ffrt/proxyread/PacketEngine;I)V

    .line 33
    const-string v4, "pr-pose"

    .line 35
    invoke-static {v4, v3, v2}, Lo/Ha;->y0(Ljava/lang/String;Lo/u8;I)Lo/Uf;

    .line 38
    move-result-object v2

    .line 39
    const/16 v3, 0x7fff

    .line 41
    new-array v3, v3, [B

    .line 43
    :catch_0
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/ffrt/proxyread/PacketEngine;->running:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 45
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 48
    move-result v4

    .line 49
    const/4 v5, 0x0

    .line 50
    if-eqz v4, :cond_4

    .line 52
    :try_start_0
    iget-object v4, p0, Lcom/ffrt/proxyread/PacketEngine;->tunIn:Ljava/io/FileInputStream;

    .line 54
    invoke-virtual {v4, v3}, Ljava/io/FileInputStream;->read([B)I

    .line 57
    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 58
    if-ltz v4, :cond_4

    .line 60
    const/16 v6, 0x14

    .line 62
    if-lt v4, v6, :cond_0

    .line 64
    aget-byte v5, v3, v5

    .line 66
    ushr-int/lit8 v7, v5, 0x4

    .line 68
    and-int/lit8 v7, v7, 0xf

    .line 70
    const/4 v8, 0x4

    .line 71
    if-ne v7, v8, :cond_0

    .line 73
    and-int/lit8 v5, v5, 0xf

    .line 75
    mul-int/2addr v5, v8

    .line 76
    if-lt v5, v6, :cond_0

    .line 78
    if-ge v4, v5, :cond_1

    .line 80
    goto :goto_0

    .line 81
    :cond_1
    sget-object v6, Lcom/ffrt/proxyread/PacketEngine;->Companion:Lo/wc;

    .line 83
    const/4 v7, 0x6

    .line 84
    invoke-static {v6, v3, v7}, Lo/wc;->e(Lo/wc;[BI)I

    .line 87
    move-result v6

    .line 88
    and-int/lit16 v6, v6, 0x3fff

    .line 90
    if-nez v6, :cond_0

    .line 92
    const/16 v6, 0x9

    .line 94
    :try_start_1
    aget-byte v6, v3, v6

    .line 96
    and-int/lit16 v6, v6, 0xff

    .line 98
    if-eq v6, v7, :cond_3

    .line 100
    const/16 v7, 0x11

    .line 102
    if-eq v6, v7, :cond_2

    .line 104
    goto :goto_0

    .line 105
    :cond_2
    invoke-direct {p0, v3, v4, v5}, Lcom/ffrt/proxyread/PacketEngine;->onUdp([BII)V

    .line 108
    goto :goto_0

    .line 109
    :cond_3
    invoke-direct {p0, v3, v4, v5}, Lcom/ffrt/proxyread/PacketEngine;->onTcp([BII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 112
    goto :goto_0

    .line 113
    :catch_1
    :cond_4
    iget-object v3, p0, Lcom/ffrt/proxyread/PacketEngine;->running:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 115
    invoke-virtual {v3, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 118
    iget-object v3, p0, Lcom/ffrt/proxyread/PacketEngine;->lookQ:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 120
    invoke-virtual {v3}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    .line 123
    iget-object v3, p0, Lcom/ffrt/proxyread/PacketEngine;->s2cQ:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 125
    invoke-virtual {v3}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    .line 128
    iget-object v3, p0, Lcom/ffrt/proxyread/PacketEngine;->poseQ:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 130
    invoke-virtual {v3}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    .line 133
    const-wide/16 v3, 0x12c

    .line 135
    :try_start_2
    invoke-virtual {v0, v3, v4}, Ljava/lang/Thread;->join(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 138
    :catchall_0
    :try_start_3
    invoke-virtual {v1, v3, v4}, Ljava/lang/Thread;->join(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 141
    :catchall_1
    const-wide/16 v0, 0x190

    .line 143
    :try_start_4
    invoke-virtual {v2, v0, v1}, Ljava/lang/Thread;->join(J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 146
    :catchall_2
    iget-object v0, p0, Lcom/ffrt/proxyread/PacketEngine;->udpFlows:Ljava/util/concurrent/ConcurrentHashMap;

    .line 148
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    .line 151
    move-result-object v0

    .line 152
    const-string v1, "<get-values>(...)"

    .line 154
    invoke-static {v0, v1}, Lo/x9;->n(Ljava/lang/Object;Ljava/lang/String;)V

    .line 157
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 160
    move-result-object v0

    .line 161
    :catchall_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 164
    move-result v2

    .line 165
    if-eqz v2, :cond_5

    .line 167
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 170
    move-result-object v2

    .line 171
    check-cast v2, Lo/zc;

    .line 173
    :try_start_5
    iget-object v2, v2, Lo/zc;->e:Ljava/net/DatagramSocket;

    .line 175
    invoke-virtual {v2}, Ljava/net/DatagramSocket;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 178
    goto :goto_1

    .line 179
    :cond_5
    iget-object v0, p0, Lcom/ffrt/proxyread/PacketEngine;->udpFlows:Ljava/util/concurrent/ConcurrentHashMap;

    .line 181
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 184
    iget-object v0, p0, Lcom/ffrt/proxyread/PacketEngine;->tcpFlows:Ljava/util/concurrent/ConcurrentHashMap;

    .line 186
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    .line 189
    move-result-object v0

    .line 190
    invoke-static {v0, v1}, Lo/x9;->n(Ljava/lang/Object;Ljava/lang/String;)V

    .line 193
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 196
    move-result-object v0

    .line 197
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 200
    move-result v1

    .line 201
    if-eqz v1, :cond_6

    .line 203
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 206
    move-result-object v1

    .line 207
    check-cast v1, Lo/yc;

    .line 209
    invoke-virtual {v1}, Lo/yc;->b()V

    .line 212
    goto :goto_2

    .line 213
    :cond_6
    iget-object v0, p0, Lcom/ffrt/proxyread/PacketEngine;->tcpFlows:Ljava/util/concurrent/ConcurrentHashMap;

    .line 215
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 218
    return-void
.end method

.method public final stop()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ffrt/proxyread/PacketEngine;->running:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 7
    return-void
.end method
