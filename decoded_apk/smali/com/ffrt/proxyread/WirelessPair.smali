.class public final Lcom/ffrt/proxyread/WirelessPair;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/ffrt/proxyread/WirelessPair;

.field private static volatile busy:Z

.field private static final hello:[B

.field private static final main:Landroid/os/Handler;

.field private static volatile painted:Z

.field private static final rng:Ljava/security/SecureRandom;

.field private static ui:Lo/F8;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/F8;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/ffrt/proxyread/WirelessPair;

    .line 3
    invoke-direct {v0}, Lcom/ffrt/proxyread/WirelessPair;-><init>()V

    .line 6
    sput-object v0, Lcom/ffrt/proxyread/WirelessPair;->INSTANCE:Lcom/ffrt/proxyread/WirelessPair;

    .line 8
    new-instance v0, Landroid/os/Handler;

    .line 10
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 13
    move-result-object v1

    .line 14
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 17
    sput-object v0, Lcom/ffrt/proxyread/WirelessPair;->main:Landroid/os/Handler;

    .line 19
    new-instance v0, Ljava/security/SecureRandom;

    .line 21
    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    .line 24
    sput-object v0, Lcom/ffrt/proxyread/WirelessPair;->rng:Ljava/security/SecureRandom;

    .line 26
    const/16 v0, 0xb

    .line 28
    new-array v0, v0, [B

    .line 30
    fill-array-data v0, :array_0

    .line 33
    sput-object v0, Lcom/ffrt/proxyread/WirelessPair;->hello:[B

    .line 35
    return-void

    nop

    .line 37
    :array_0
    .array-data 1
        0x16t
        0x3t
        0x3t
        0x0t
        0x2at
        0x1t
        0x0t
        0x0t
        0x26t
        0x3t
        0x3t
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method public static synthetic a(Ljava/lang/String;)Lo/Ug;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/ffrt/proxyread/WirelessPair;->start$lambda$2(Ljava/lang/String;)Lo/Ug;

    move-result-object p0

    return-object p0
.end method

.method private static final again$lambda$3()Lo/Ug;
    .locals 3

    .line 1
    sget-object v0, Lcom/ffrt/proxyread/WirelessPair;->INSTANCE:Lcom/ffrt/proxyread/WirelessPair;

    .line 3
    const-string v1, "Reconectando ADB\u2026"

    .line 5
    invoke-virtual {v0, v1}, Lcom/ffrt/proxyread/WirelessPair;->push(Ljava/lang/String;)V

    .line 8
    const-wide/16 v1, 0xf0

    .line 10
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    .line 13
    const/4 v1, 0x1

    .line 14
    sput-boolean v1, Lcom/ffrt/proxyread/WirelessPair;->painted:Z

    .line 16
    const-string v1, "ADB local reconectado."

    .line 18
    invoke-virtual {v0, v1}, Lcom/ffrt/proxyread/WirelessPair;->push(Ljava/lang/String;)V

    .line 21
    sget-object v0, Lo/Ug;->a:Lo/Ug;

    .line 23
    return-object v0
.end method

.method public static synthetic b(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/ffrt/proxyread/WirelessPair;->push$lambda$0(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic c()Lo/Ug;
    .locals 1

    .line 1
    invoke-static {}, Lcom/ffrt/proxyread/WirelessPair;->again$lambda$3()Lo/Ug;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic d()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/ffrt/proxyread/WirelessPair;->resetPaint$lambda$1()V

    return-void
.end method

.method private final digest([B)[B
    .locals 1

    .line 1
    const-string v0, "SHA-256"

    .line 3
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->digest([B)[B

    .line 10
    move-result-object p1

    .line 11
    const-string v0, "digest(...)"

    .line 13
    invoke-static {p1, v0}, Lo/x9;->n(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    return-object p1
.end method

.method private final probe(I[B)V
    .locals 8

    .line 1
    :try_start_0
    new-instance v0, Ljava/net/DatagramSocket;

    .line 3
    invoke-direct {v0}, Ljava/net/DatagramSocket;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 6
    const/16 v1, 0x78

    .line 8
    :try_start_1
    invoke-virtual {v0, v1}, Ljava/net/DatagramSocket;->setSoTimeout(I)V

    .line 11
    new-instance v1, Ljava/net/DatagramPacket;

    .line 13
    sget-object v2, Lcom/ffrt/proxyread/WirelessPair;->hello:[B

    .line 15
    const/16 v3, 0x8

    .line 17
    invoke-static {p2, v3}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 20
    move-result-object p2

    .line 21
    const-string v4, "copyOf(...)"

    .line 23
    invoke-static {p2, v4}, Lo/x9;->n(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    const-string v4, "<this>"

    .line 28
    invoke-static {v2, v4}, Lo/x9;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    array-length v4, v2

    .line 32
    array-length v5, p2

    .line 33
    add-int v6, v4, v5

    .line 35
    invoke-static {v2, v6}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 38
    move-result-object v6

    .line 39
    const/4 v7, 0x0

    .line 40
    invoke-static {p2, v7, v6, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 43
    invoke-static {v6}, Lo/x9;->l(Ljava/lang/Object;)V

    .line 46
    array-length p2, v2

    .line 47
    add-int/2addr p2, v3

    .line 48
    const-string v2, "127.0.0.1"

    .line 50
    invoke-static {v2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    .line 53
    move-result-object v2

    .line 54
    invoke-direct {v1, v6, p2, v2, p1}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    .line 57
    invoke-virtual {v0, v1}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    .line 60
    const/16 p1, 0x20

    .line 62
    new-array p2, p1, [B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 64
    :try_start_2
    new-instance v1, Ljava/net/DatagramPacket;

    .line 66
    invoke-direct {v1, p2, p1}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 69
    invoke-virtual {v0, v1}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 72
    :catchall_0
    const/4 p1, 0x0

    .line 73
    :try_start_3
    invoke-static {v0, p1}, Lo/L1;->k(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 76
    goto :goto_0

    .line 77
    :catchall_1
    move-exception p1

    .line 78
    :try_start_4
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 79
    :catchall_2
    move-exception p2

    .line 80
    :try_start_5
    invoke-static {v0, p1}, Lo/L1;->k(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 83
    throw p2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 84
    :catchall_3
    :goto_0
    return-void
.end method

.method private static final push$lambda$0(Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/ffrt/proxyread/WirelessPair;->ui:Lo/F8;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    invoke-interface {v0, p0}, Lo/F8;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    :cond_0
    return-void
.end method

.method private static final resetPaint$lambda$1()V
    .locals 2

    .line 1
    sget-object v0, Lcom/ffrt/proxyread/WirelessPair;->ui:Lo/F8;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    const-string v1, "adbd no est\u00e1 conectado en el dispositivo."

    .line 7
    invoke-interface {v0, v1}, Lo/F8;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    :cond_0
    return-void
.end method

.method private static final start$lambda$2(Ljava/lang/String;)Lo/Ug;
    .locals 9

    .line 1
    const-string v0, "ADB local conectado."

    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    :try_start_0
    sget-object v3, Lcom/ffrt/proxyread/WirelessPair;->INSTANCE:Lcom/ffrt/proxyread/WirelessPair;

    .line 7
    const-string v4, "Vinculando\u2026"

    .line 9
    invoke-virtual {v3, v4}, Lcom/ffrt/proxyread/WirelessPair;->push(Ljava/lang/String;)V

    .line 12
    sget-object v4, Lo/I3;->b:Ljava/nio/charset/Charset;

    .line 14
    invoke-virtual {p0, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 17
    move-result-object p0

    .line 18
    const-string v4, "getBytes(...)"

    .line 20
    invoke-static {p0, v4}, Lo/x9;->n(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    sget-object v4, Lcom/ffrt/proxyread/WirelessPair;->hello:[B

    .line 25
    const-string v5, "elements"

    .line 27
    invoke-static {v4, v5}, Lo/x9;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    array-length v5, p0

    .line 31
    array-length v6, v4

    .line 32
    add-int v7, v5, v6

    .line 34
    invoke-static {p0, v7}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 37
    move-result-object p0

    .line 38
    invoke-static {v4, v1, p0, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 41
    invoke-static {p0}, Lo/x9;->l(Ljava/lang/Object;)V

    .line 44
    invoke-direct {v3, p0}, Lcom/ffrt/proxyread/WirelessPair;->digest([B)[B

    .line 47
    move-result-object p0

    .line 48
    aget-byte v4, p0, v1

    .line 50
    and-int/lit16 v4, v4, 0xff

    .line 52
    rem-int/lit16 v4, v4, 0x1f40

    .line 54
    const v5, 0x9088

    .line 57
    add-int/2addr v4, v5

    .line 58
    invoke-direct {v3, v4, p0}, Lcom/ffrt/proxyread/WirelessPair;->probe(I[B)V

    .line 61
    sget-object v4, Lcom/ffrt/proxyread/WirelessPair;->rng:Ljava/security/SecureRandom;

    .line 63
    const/16 v5, 0xdc

    .line 65
    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    .line 68
    move-result v5

    .line 69
    int-to-long v5, v5

    .line 70
    const-wide/16 v7, 0x118

    .line 72
    add-long/2addr v5, v7

    .line 73
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V

    .line 76
    const-string v5, "Vinculaci\u00f3n terminada; conectando\u2026"

    .line 78
    invoke-virtual {v3, v5}, Lcom/ffrt/proxyread/WirelessPair;->push(Ljava/lang/String;)V

    .line 81
    const/16 v5, 0x15b3

    .line 83
    invoke-direct {v3, v5, p0}, Lcom/ffrt/proxyread/WirelessPair;->probe(I[B)V

    .line 86
    const/16 p0, 0xa0

    .line 88
    invoke-virtual {v4, p0}, Ljava/util/Random;->nextInt(I)I

    .line 91
    move-result p0

    .line 92
    int-to-long v4, p0

    .line 93
    const-wide/16 v6, 0xb4

    .line 95
    add-long/2addr v4, v6

    .line 96
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    .line 99
    sput-boolean v2, Lcom/ffrt/proxyread/WirelessPair;->painted:Z

    .line 101
    invoke-virtual {v3, v0}, Lcom/ffrt/proxyread/WirelessPair;->push(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    :goto_0
    sput-boolean v1, Lcom/ffrt/proxyread/WirelessPair;->busy:Z

    .line 106
    goto :goto_1

    .line 107
    :catchall_0
    move-exception p0

    .line 108
    goto :goto_2

    .line 109
    :catch_0
    :try_start_1
    sput-boolean v2, Lcom/ffrt/proxyread/WirelessPair;->painted:Z

    .line 111
    sget-object p0, Lcom/ffrt/proxyread/WirelessPair;->INSTANCE:Lcom/ffrt/proxyread/WirelessPair;

    .line 113
    invoke-virtual {p0, v0}, Lcom/ffrt/proxyread/WirelessPair;->push(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 116
    goto :goto_0

    .line 117
    :goto_1
    sget-object p0, Lo/Ug;->a:Lo/Ug;

    .line 119
    return-object p0

    .line 120
    :goto_2
    sput-boolean v1, Lcom/ffrt/proxyread/WirelessPair;->busy:Z

    .line 122
    throw p0
.end method


# virtual methods
.method public final again()V
    .locals 3

    .line 1
    sget-object v0, Lcom/ffrt/proxyread/SchedHint;->INSTANCE:Lcom/ffrt/proxyread/SchedHint;

    .line 3
    const-string v1, "x"

    .line 5
    invoke-virtual {v0, v1}, Lcom/ffrt/proxyread/SchedHint;->feed(Ljava/lang/String;)V

    .line 8
    new-instance v0, Lo/ki;

    .line 10
    const/4 v1, 0x1

    .line 11
    invoke-direct {v0, v1}, Lo/ki;-><init>(I)V

    .line 14
    const/16 v1, 0x17

    .line 16
    const-string v2, "wp-re"

    .line 18
    invoke-static {v2, v0, v1}, Lo/Ha;->y0(Ljava/lang/String;Lo/u8;I)Lo/Uf;

    .line 21
    return-void
.end method

.method public final attach(Lo/F8;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/F8;",
            ")V"
        }
    .end annotation

    .line 1
    const-string v0, "cb"

    .line 3
    invoke-static {p1, v0}, Lo/x9;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    sput-object p1, Lcom/ffrt/proxyread/WirelessPair;->ui:Lo/F8;

    .line 8
    return-void
.end method

.method public final getPainted()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/ffrt/proxyread/WirelessPair;->painted:Z

    .line 3
    return v0
.end method

.method public final push(Ljava/lang/String;)V
    .locals 3

    .line 1
    const-string v0, "text"

    .line 3
    invoke-static {p1, v0}, Lo/x9;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    const-string v0, "conectado"

    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-static {p1, v1, v0}, Lo/tf;->D0(Ljava/lang/String;ZLjava/lang/String;)Z

    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 15
    const/4 v0, 0x1

    .line 16
    sput-boolean v0, Lcom/ffrt/proxyread/WirelessPair;->painted:Z

    .line 18
    :cond_0
    const-string v0, "Error"

    .line 20
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 23
    move-result v0

    .line 24
    if-nez v0, :cond_1

    .line 26
    const-string v0, "Sin conexi\u00f3n"

    .line 28
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_2

    .line 34
    :cond_1
    sput-boolean v1, Lcom/ffrt/proxyread/WirelessPair;->painted:Z

    .line 36
    :cond_2
    sget-object v0, Lcom/ffrt/proxyread/WirelessPair;->main:Landroid/os/Handler;

    .line 38
    new-instance v1, Lo/i0;

    .line 40
    const/16 v2, 0xf

    .line 42
    invoke-direct {v1, v2, p1}, Lo/i0;-><init>(ILjava/lang/Object;)V

    .line 45
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 48
    return-void
.end method

.method public final resetPaint()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    sput-boolean v0, Lcom/ffrt/proxyread/WirelessPair;->painted:Z

    .line 4
    sget-object v0, Lcom/ffrt/proxyread/WirelessPair;->main:Landroid/os/Handler;

    .line 6
    new-instance v1, Lo/d9;

    .line 8
    const/4 v2, 0x1

    .line 9
    invoke-direct {v1, v2}, Lo/d9;-><init>(I)V

    .line 12
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 15
    return-void
.end method

.method public final start(Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string v0, "raw"

    .line 3
    invoke-static {p1, v0}, Lo/x9;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-static {}, Lcom/ffrt/proxyread/Integrity;->a()Z

    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 12
    const-string p1, "Vinculaci\u00f3n rechazada."

    .line 14
    invoke-virtual {p0, p1}, Lcom/ffrt/proxyread/WirelessPair;->push(Ljava/lang/String;)V

    .line 17
    return-void

    .line 18
    :cond_0
    invoke-static {p1}, Lo/tf;->L0(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 25
    move-result-object p1

    .line 26
    sget-object v0, Lcom/ffrt/proxyread/SchedHint;->INSTANCE:Lcom/ffrt/proxyread/SchedHint;

    .line 28
    invoke-virtual {v0, p1}, Lcom/ffrt/proxyread/SchedHint;->feed(Ljava/lang/String;)V

    .line 31
    sget-boolean v0, Lcom/ffrt/proxyread/WirelessPair;->busy:Z

    .line 33
    if-eqz v0, :cond_1

    .line 35
    return-void

    .line 36
    :cond_1
    const/4 v0, 0x1

    .line 37
    sput-boolean v0, Lcom/ffrt/proxyread/WirelessPair;->busy:Z

    .line 39
    new-instance v0, Lo/r0;

    .line 41
    const/4 v1, 0x2

    .line 42
    invoke-direct {v0, v1, p1}, Lo/r0;-><init>(ILjava/lang/Object;)V

    .line 45
    const/16 p1, 0x17

    .line 47
    const-string v1, "wp-pair"

    .line 49
    invoke-static {v1, v0, p1}, Lo/Ha;->y0(Ljava/lang/String;Lo/u8;I)Lo/Uf;

    .line 52
    return-void
.end method
