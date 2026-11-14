.class public Lcom/ffrt/proxyread/Cmd448;
.super Ljava/lang/Object;


# static fields
.field static matchInfo:Ljava/util/concurrent/ConcurrentHashMap;

.field static tcpBufs:Ljava/util/concurrent/ConcurrentHashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/ffrt/proxyread/Cmd448;->matchInfo:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/ffrt/proxyread/Cmd448;->tcpBufs:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method static cbcDec([B[B)[B
    .locals 13

    const/4 v0, 0x4

    new-array v1, v0, [I

    const/4 v2, 0x0

    invoke-static {p1, v2}, Lcom/ffrt/proxyread/Cmd448;->ri([BI)I

    move-result v3

    aput v3, v1, v2

    invoke-static {p1, v0}, Lcom/ffrt/proxyread/Cmd448;->ri([BI)I

    move-result v3

    const/4 v4, 0x1

    aput v3, v1, v4

    const/16 v3, 0x8

    invoke-static {p1, v3}, Lcom/ffrt/proxyread/Cmd448;->ri([BI)I

    move-result v5

    const/4 v6, 0x2

    aput v5, v1, v6

    const/16 v5, 0xc

    invoke-static {p1, v5}, Lcom/ffrt/proxyread/Cmd448;->ri([BI)I

    move-result p1

    const/4 v5, 0x3

    aput p1, v1, v5

    array-length p1, p0

    new-array v5, p1, [B

    new-array v7, v3, [B

    new-array v8, v3, [B

    new-array v6, v6, [I

    const/4 v9, 0x0

    :goto_0
    if-ge v9, p1, :cond_0

    invoke-static {p0, v9}, Lcom/ffrt/proxyread/Cmd448;->ri([BI)I

    move-result v10

    invoke-static {v8, v2}, Lcom/ffrt/proxyread/Cmd448;->ri([BI)I

    move-result v11

    xor-int/2addr v10, v11

    aput v10, v6, v2

    add-int/lit8 v10, v9, 0x4

    invoke-static {p0, v10}, Lcom/ffrt/proxyread/Cmd448;->ri([BI)I

    move-result v11

    invoke-static {v8, v0}, Lcom/ffrt/proxyread/Cmd448;->ri([BI)I

    move-result v12

    xor-int/2addr v11, v12

    aput v11, v6, v4

    invoke-static {v6, v1}, Lcom/ffrt/proxyread/Cmd448;->teaD([I[I)V

    aget v11, v6, v2

    invoke-static {v7, v2}, Lcom/ffrt/proxyread/Cmd448;->ri([BI)I

    move-result v12

    xor-int/2addr v11, v12

    invoke-static {v5, v9, v11}, Lcom/ffrt/proxyread/Cmd448;->wi([BII)V

    aget v11, v6, v4

    invoke-static {v7, v0}, Lcom/ffrt/proxyread/Cmd448;->ri([BI)I

    move-result v12

    xor-int/2addr v11, v12

    invoke-static {v5, v10, v11}, Lcom/ffrt/proxyread/Cmd448;->wi([BII)V

    invoke-static {p0, v9, v7, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget v11, v6, v2

    invoke-static {v8, v2, v11}, Lcom/ffrt/proxyread/Cmd448;->wi([BII)V

    aget v11, v6, v4

    invoke-static {v8, v0, v11}, Lcom/ffrt/proxyread/Cmd448;->wi([BII)V

    add-int/lit8 v9, v9, 0x8

    goto :goto_0

    :cond_0
    return-object v5
.end method

.method static cbcEnc([B[B)[B
    .locals 13

    const/4 v0, 0x4

    new-array v1, v0, [I

    const/4 v2, 0x0

    invoke-static {p1, v2}, Lcom/ffrt/proxyread/Cmd448;->ri([BI)I

    move-result v3

    aput v3, v1, v2

    invoke-static {p1, v0}, Lcom/ffrt/proxyread/Cmd448;->ri([BI)I

    move-result v3

    const/4 v4, 0x1

    aput v3, v1, v4

    const/16 v3, 0x8

    invoke-static {p1, v3}, Lcom/ffrt/proxyread/Cmd448;->ri([BI)I

    move-result v5

    const/4 v6, 0x2

    aput v5, v1, v6

    const/16 v5, 0xc

    invoke-static {p1, v5}, Lcom/ffrt/proxyread/Cmd448;->ri([BI)I

    move-result p1

    const/4 v5, 0x3

    aput p1, v1, v5

    array-length p1, p0

    new-array v5, p1, [B

    new-array v7, v3, [B

    new-array v8, v3, [B

    const/4 v10, 0x4

    new-array v6, v10, [I

    const/4 v9, 0x0

    :goto_0
    if-ge v9, p1, :cond_0

    invoke-static {p0, v9}, Lcom/ffrt/proxyread/Cmd448;->ri([BI)I

    move-result v10

    invoke-static {v7, v2}, Lcom/ffrt/proxyread/Cmd448;->ri([BI)I

    move-result v11

    xor-int/2addr v10, v11

    aput v10, v6, v2

    const/4 v11, 0x2

    aput v10, v6, v11

    add-int/lit8 v10, v9, 0x4

    invoke-static {p0, v10}, Lcom/ffrt/proxyread/Cmd448;->ri([BI)I

    move-result v11

    invoke-static {v7, v0}, Lcom/ffrt/proxyread/Cmd448;->ri([BI)I

    move-result v12

    xor-int/2addr v11, v12

    aput v11, v6, v4

    const/4 v12, 0x3

    aput v11, v6, v12

    invoke-static {v6, v1}, Lcom/ffrt/proxyread/Cmd448;->teaE([I[I)V

    aget v11, v6, v2

    invoke-static {v8, v2}, Lcom/ffrt/proxyread/Cmd448;->ri([BI)I

    move-result v12

    xor-int/2addr v11, v12

    invoke-static {v5, v9, v11}, Lcom/ffrt/proxyread/Cmd448;->wi([BII)V

    aget v11, v6, v4

    invoke-static {v8, v0}, Lcom/ffrt/proxyread/Cmd448;->ri([BI)I

    move-result v12

    xor-int/2addr v11, v12

    invoke-static {v5, v10, v11}, Lcom/ffrt/proxyread/Cmd448;->wi([BII)V

    invoke-static {v5, v9, v7, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v11, 0x2

    aget v12, v6, v11

    invoke-static {v8, v2, v12}, Lcom/ffrt/proxyread/Cmd448;->wi([BII)V

    const/4 v11, 0x3

    aget v12, v6, v11

    invoke-static {v8, v0, v12}, Lcom/ffrt/proxyread/Cmd448;->wi([BII)V

    add-int/lit8 v9, v9, 0x8

    goto :goto_0

    :cond_0
    return-object v5
.end method

.method static crc7([BII)I
    .locals 5

    const/4 v0, 0x0

    move v1, p1

    add-int v2, p1, p2

    :goto_0
    if-ge v1, v2, :cond_2

    aget-byte v3, p0, v1

    and-int/lit16 v3, v3, 0xff

    xor-int/2addr v0, v3

    const/4 v3, 0x0

    :goto_1
    const/16 v4, 0x8

    if-ge v3, v4, :cond_1

    and-int/lit16 v4, v0, 0x80

    shl-int/lit8 v0, v0, 0x1

    if-eqz v4, :cond_0

    xor-int/lit8 v0, v0, 0x12

    :cond_0
    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    ushr-int/lit8 v0, v0, 0x1

    and-int/lit8 v0, v0, 0x7f

    return v0
.end method

.method public static handleTcp(Ljava/lang/String;[B)V
    .locals 8

    sget-object v0, Lcom/ffrt/proxyread/Cmd448;->tcpBufs:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    if-nez v1, :cond_0

    const/4 v2, 0x0

    new-array v1, v2, [B

    :cond_0
    array-length v2, v1

    array-length v3, p1

    add-int/2addr v3, v2

    new-array v3, v3, [B

    const/4 v4, 0x0

    invoke-static {v1, v4, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v2, v1

    array-length v5, p1

    invoke-static {p1, v4, v3, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    array-length v1, v3

    const/4 v2, 0x5

    if-lt v1, v2, :cond_3

    aget-byte v1, v3, v4

    const/4 v5, 0x3

    if-eq v1, v5, :cond_1

    new-array v3, v4, [B

    goto :goto_1

    :cond_1
    const/4 v1, 0x1

    aget-byte v1, v3, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    const/4 v5, 0x2

    aget-byte v5, v3, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v1, v5

    const/4 v5, 0x3

    aget-byte v5, v3, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v1, v5

    const/4 v5, 0x4

    aget-byte v5, v3, v5

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v1, v5

    if-lez v1, :cond_2

    const v5, 0xa00000

    if-le v1, v5, :cond_4

    :cond_2
    new-array v3, v4, [B

    :cond_3
    :goto_1
    invoke-virtual {v0, p0, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_4
    add-int/lit8 v5, v1, 0x5

    array-length v6, v3

    if-ge v6, v5, :cond_5

    goto :goto_1

    :cond_5
    invoke-static {v3, v2, v5}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v6

    invoke-static {v6}, Lcom/ffrt/proxyread/Cmd448;->parseMatch([B)V

    array-length v6, v3

    invoke-static {v3, v5, v6}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    goto :goto_0
.end method

.method static hex2b(Ljava/lang/String;)[B
    .locals 7

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v1, v0, 0x2

    new-array v2, v1, [B

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x10

    invoke-static {v5, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    add-int/2addr v4, v5

    div-int/lit8 v5, v3, 0x2

    int-to-byte v4, v4

    aput-byte v4, v2, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method static pHdr([BII[III)[I
    .locals 9

    const/4 v0, 0x6

    new-array v0, v0, [I

    add-int/lit8 v1, p1, 0x2

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x5

    if-ge v2, v3, :cond_4

    aget v4, p3, v2

    const/4 v5, 0x1

    if-eqz v4, :cond_0

    const/4 v6, 0x3

    if-ne v4, v6, :cond_1

    :cond_0
    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    const/4 v5, 0x2

    :goto_1
    add-int v6, v1, v5

    add-int v7, p1, p2

    if-le v6, v7, :cond_2

    const/4 p0, 0x0

    return-object p0

    :cond_2
    const/4 v7, 0x1

    if-ne v5, v7, :cond_3

    aget-byte v7, p0, v1

    and-int/lit16 v7, v7, 0xff

    xor-int/2addr v7, p4

    goto :goto_2

    :cond_3
    aget-byte v7, p0, v1

    and-int/lit16 v7, v7, 0xff

    add-int/lit8 v8, v1, 0x1

    aget-byte v8, p0, v8

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x8

    or-int/2addr v7, v8

    xor-int/2addr v7, p5

    const v8, 0xffff

    and-int/2addr v7, v8

    :goto_2
    aput v7, v0, v4

    move v1, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    sub-int/2addr v1, p1

    aput v1, v0, v3

    return-object v0
.end method

.method static pad([B)[B
    .locals 5

    array-length v0, p0

    add-int/lit8 v1, v0, 0xa

    rem-int/lit8 v1, v1, 0x8

    rsub-int/lit8 v1, v1, 0x8

    rem-int/lit8 v1, v1, 0x8

    add-int/lit8 v2, v1, 0xa

    add-int/2addr v2, v0

    new-array v2, v2, [B

    int-to-byte v3, v1

    const/4 v4, 0x0

    aput-byte v3, v2, v4

    add-int/lit8 v1, v1, 0x3

    invoke-static {p0, v4, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method

.method static parseMatch([B)V
    .locals 15

    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-static {v0}, Lcom/ffrt/proxyread/Cmd448;->rv(Ljava/nio/ByteBuffer;)J

    move-result-wide v1

    const/4 v3, 0x3

    ushr-long v4, v1, v3

    long-to-int v4, v4

    const-wide/16 v5, 0x7

    and-long/2addr v1, v5

    long-to-int v1, v1

    const/4 v2, 0x5

    const/4 v5, 0x2

    if-ne v4, v2, :cond_8

    if-ne v1, v5, :cond_8

    invoke-static {v0}, Lcom/ffrt/proxyread/Cmd448;->rv(Ljava/nio/ByteBuffer;)J

    move-result-wide v1

    long-to-int v1, v1

    new-array v2, v1, [B

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    move-object v4, v2

    const-string v6, ""

    const-string v12, ""

    const-wide/16 v13, 0x0

    :goto_1
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-static {v0}, Lcom/ffrt/proxyread/Cmd448;->rv(Ljava/nio/ByteBuffer;)J

    move-result-wide v7

    ushr-long v9, v7, v3

    long-to-int v9, v9

    const-wide/16 v10, 0x7

    and-long/2addr v7, v10

    long-to-int v7, v7

    if-ne v9, v5, :cond_0

    if-ne v7, v5, :cond_0

    invoke-static {v0}, Lcom/ffrt/proxyread/Cmd448;->rv(Ljava/nio/ByteBuffer;)J

    move-result-wide v7

    long-to-int v7, v7

    new-array v8, v7, [B

    invoke-virtual {v0, v8}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v8}, Ljava/lang/String;-><init>([B)V

    goto :goto_1

    :cond_0
    if-ne v9, v3, :cond_1

    if-ne v7, v5, :cond_1

    invoke-static {v0}, Lcom/ffrt/proxyread/Cmd448;->rv(Ljava/nio/ByteBuffer;)J

    move-result-wide v7

    long-to-int v7, v7

    new-array v8, v7, [B

    invoke-virtual {v0, v8}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v8}, Ljava/lang/String;-><init>([B)V

    goto :goto_1

    :cond_1
    const/16 v8, 0x2a

    if-ne v9, v8, :cond_3

    if-ne v7, v5, :cond_2

    invoke-static {v0}, Lcom/ffrt/proxyread/Cmd448;->rv(Ljava/nio/ByteBuffer;)J

    move-result-wide v7

    long-to-int v7, v7

    new-array v8, v7, [B

    invoke-virtual {v0, v8}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v8}, Ljava/lang/String;-><init>([B)V

    goto :goto_1

    :cond_2
    if-nez v7, :cond_5

    invoke-static {v0}, Lcom/ffrt/proxyread/Cmd448;->rv(Ljava/nio/ByteBuffer;)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_1

    :cond_3
    const/4 v8, 0x1

    if-ne v9, v8, :cond_4

    if-nez v7, :cond_5

    invoke-static {v0}, Lcom/ffrt/proxyread/Cmd448;->rv(Ljava/nio/ByteBuffer;)J

    move-result-wide v13

    goto/16 :goto_1

    :cond_4
    const/4 v8, 0x4

    if-ne v9, v8, :cond_5

    if-ne v7, v5, :cond_5

    invoke-static {v0}, Lcom/ffrt/proxyread/Cmd448;->rv(Ljava/nio/ByteBuffer;)J

    move-result-wide v7

    long-to-int v7, v7

    new-array v8, v7, [B

    invoke-virtual {v0, v8}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    new-instance v12, Ljava/lang/String;

    invoke-direct {v12, v8}, Ljava/lang/String;-><init>([B)V

    goto/16 :goto_1

    :cond_5
    invoke-static {v0, v7}, Lcom/ffrt/proxyread/Cmd448;->skipWt(Ljava/nio/ByteBuffer;I)V

    goto/16 :goto_1

    :cond_6
    if-eqz v4, :cond_9

    if-eqz v2, :cond_9

    new-array v0, v3, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object v6, v0, v1

    aput-object v4, v0, v5

    sget-object v1, Lcom/ffrt/proxyread/Cmd448;->matchInfo:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v4, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{\n  \"match_id\": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",\n  \"server_addr\": \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\",\n  \"secret\": \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\",\n  \"prepare_token\": \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\",\n  \"field_42\": \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\"\n}\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    const-string v2, "/storage/emulated/0/Android/data/com.ffrt.proxyread/files/#DUMP/"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_7

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :cond_7
    new-instance v2, Ljava/io/File;

    const-string v3, "Matchinfo.json"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v1, Ljava/io/FileOutputStream;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    goto/16 :goto_2

    :cond_8
    invoke-static {v0, v1}, Lcom/ffrt/proxyread/Cmd448;->skipWt(Ljava/nio/ByteBuffer;I)V

    goto/16 :goto_0

    :cond_9
    :goto_2
    return-void
.end method

.method static readV([B[I)J
    .locals 10

    const/4 v0, 0x0

    aget v1, p1, v0

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    :goto_0
    aget-byte v5, p0, v1

    add-int/lit8 v1, v1, 0x1

    and-int/lit16 v5, v5, 0xff

    int-to-long v6, v5

    const-wide/16 v8, 0x7f

    and-long/2addr v6, v8

    shl-long/2addr v6, v4

    or-long/2addr v2, v6

    and-int/lit16 v5, v5, 0x80

    if-nez v5, :cond_0

    aput v1, p1, v0

    return-wide v2

    :cond_0
    add-int/lit8 v4, v4, 0x7

    goto :goto_0
.end method

.method public static rewriteUdp([BIILjava/lang/String;I)[B
    .locals 22

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    const/16 v3, 0x8

    if-ge v2, v3, :cond_0

    add-int v3, v1, v2

    invoke-static {v0, v1, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v4, p3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v4, p4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/ffrt/proxyread/Cmd448;->matchInfo:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    if-nez v3, :cond_1

    add-int v3, v1, v2

    invoke-static {v0, v1, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v4, 0x0

    aget-object v4, v3, v4

    const/4 v5, 0x1

    aget-object v5, v3, v5

    invoke-static {v4}, Lcom/ffrt/proxyread/Cmd448;->hex2b(Ljava/lang/String;)[B

    move-result-object v4

    const/4 v6, 0x0

    aget-byte v6, v4, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v7, v6, 0x8

    or-int/2addr v7, v6

    const/4 v8, 0x2

    const/4 v9, 0x5

    new-array v10, v8, [[I

    new-array v11, v9, [I

    fill-array-data v11, :array_0

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v12

    if-ne v12, v9, :cond_2

    const/4 v12, 0x0

    :goto_0
    if-ge v12, v9, :cond_2

    invoke-virtual {v5, v12}, Ljava/lang/String;->charAt(I)C

    move-result v13

    add-int/lit8 v13, v13, -0x30

    aput v13, v11, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    aput-object v11, v10, v5

    new-array v9, v9, [I

    fill-array-data v9, :array_1

    const/4 v5, 0x1

    aput-object v9, v10, v5

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v8, :cond_c

    aget-object v9, v10, v5

    move-object/from16 v16, v0

    move/from16 v17, v1

    move/from16 v18, v2

    move-object/from16 v19, v9

    move/from16 v20, v6

    move/from16 v21, v7

    invoke-static/range {v16 .. v21}, Lcom/ffrt/proxyread/Cmd448;->pHdr([BII[III)[I

    move-result-object v11

    if-eqz v11, :cond_b

    const/4 v12, 0x1

    aget v12, v11, v12

    const/16 v13, 0x1c0

    if-ne v12, v13, :cond_b

    const/4 v12, 0x3

    aget v12, v11, v12

    const/4 v13, 0x7

    if-gt v12, v13, :cond_b

    const/4 v13, 0x5

    aget v13, v11, v13

    const/4 v14, 0x4

    aget v14, v11, v14

    sub-int v15, v2, v13

    if-eq v14, v15, :cond_3

    goto :goto_5

    :cond_3
    add-int v14, v1, v13

    add-int v15, v1, v2

    invoke-static {v0, v14, v15}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v14

    and-int/lit8 v12, v12, 0x1

    if-eqz v12, :cond_5

    array-length v15, v14

    rem-int/lit8 v15, v15, 0x8

    if-eqz v15, :cond_4

    goto :goto_5

    :cond_4
    invoke-static {v14, v4}, Lcom/ffrt/proxyread/Cmd448;->cbcDec([B[B)[B

    move-result-object v14

    invoke-static {v14}, Lcom/ffrt/proxyread/Cmd448;->unpad([B)[B

    move-result-object v14

    if-nez v14, :cond_5

    goto :goto_5

    :cond_5
    invoke-static {v14}, Lcom/ffrt/proxyread/Cmd448;->rw([B)[B

    move-result-object v14

    if-eqz v12, :cond_6

    invoke-static {v14}, Lcom/ffrt/proxyread/Cmd448;->pad([B)[B

    move-result-object v12

    invoke-static {v12, v4}, Lcom/ffrt/proxyread/Cmd448;->cbcEnc([B[B)[B

    move-result-object v14

    :cond_6
    array-length v12, v14

    add-int/2addr v12, v13

    new-array v12, v12, [B

    aget-byte v15, p0, p1

    const/4 v8, 0x0

    aput-byte v15, v12, v8

    const/4 v8, 0x2

    const/4 v15, 0x0

    :goto_2
    const/16 v16, 0x5

    move/from16 v0, v16

    if-ge v15, v0, :cond_a

    aget v0, v9, v15

    const/16 v16, 0x4

    move/from16 v3, v16

    if-ne v0, v3, :cond_7

    array-length v3, v14

    goto :goto_3

    :cond_7
    aget v3, v11, v0

    :goto_3
    if-eqz v0, :cond_8

    const/4 v4, 0x3

    if-ne v0, v4, :cond_9

    :cond_8
    xor-int v0, v3, v6

    int-to-byte v0, v0

    aput-byte v0, v12, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_9
    xor-int v0, v3, v7

    int-to-byte v3, v0

    aput-byte v3, v12, v8

    add-int/lit8 v3, v8, 0x1

    shr-int/lit8 v0, v0, 0x8

    int-to-byte v0, v0

    aput-byte v0, v12, v3

    add-int/lit8 v8, v8, 0x2

    :goto_4
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    :cond_a
    const/4 v0, 0x0

    array-length v3, v14

    invoke-static {v14, v0, v12, v13, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v0, 0x2

    array-length v3, v12

    sub-int/2addr v3, v0

    invoke-static {v12, v0, v3}, Lcom/ffrt/proxyread/Cmd448;->crc7([BII)I

    move-result v0

    add-int/lit8 v3, p1, 0x1

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0x80

    or-int/2addr v0, v3

    int-to-byte v0, v0

    const/4 v3, 0x1

    aput-byte v0, v12, v3

    return-object v12

    :cond_b
    :goto_5
    add-int/lit8 v5, v5, 0x1

    const/4 v8, 0x2

    goto/16 :goto_1

    :cond_c
    move-object/from16 v3, p0

    add-int v0, v1, v2

    invoke-static {v3, v1, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    return-object v0

    nop

    :array_0
    .array-data 4
        0x0
        0x3
        0x1
        0x4
        0x2
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x2
        0x3
        0x4
        0x1
    .end array-data
.end method

.method static ri([BI)I
    .locals 4

    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x3

    aget-byte p0, p0, v1

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x18

    or-int/2addr p0, v0

    return p0
.end method

.method static rv(Ljava/nio/ByteBuffer;)J
    .locals 8

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    int-to-long v4, v3

    const-wide/16 v6, 0x7f

    and-long/2addr v4, v6

    shl-long/2addr v4, v2

    or-long/2addr v0, v4

    and-int/lit16 v3, v3, 0x80

    if-nez v3, :cond_0

    return-wide v0

    :cond_0
    add-int/lit8 v2, v2, 0x7

    goto :goto_0
.end method

.method static rw([B)[B
    .locals 9

    const-string v0, "uuuuuuuuuuuuuuuuusuuuuuuuusssuuuuusussuLLuuuLsLuuuuuLuusuuuuuuzuu"

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput v2, v1, v2

    const/4 v3, 0x0

    :goto_0
    const/16 v4, 0x41

    if-ge v3, v4, :cond_2

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {p0, v1}, Lcom/ffrt/proxyread/Cmd448;->readV([B[I)J

    move-result-wide v5

    const/16 v7, 0x73

    if-eq v4, v7, :cond_0

    const/16 v7, 0x4c

    if-ne v4, v7, :cond_1

    :cond_0
    invoke-static {v5, v6}, Lcom/ffrt/proxyread/Cmd448;->zag(J)J

    move-result-wide v4

    aget v6, v1, v2

    long-to-int v4, v4

    add-int/2addr v6, v4

    aput v6, v1, v2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    invoke-static {p0, v1}, Lcom/ffrt/proxyread/Cmd448;->readV([B[I)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/ffrt/proxyread/Cmd448;->zag(J)J

    move-result-wide v3

    aget v5, v1, v2

    long-to-int v3, v3

    add-int/2addr v5, v3

    aput v5, v1, v2

    aget v3, v1, v2

    invoke-static {p0, v1}, Lcom/ffrt/proxyread/Cmd448;->readV([B[I)J

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/ffrt/proxyread/Cmd448;->zag(J)J

    move-result-wide v5

    aget v7, v1, v2

    long-to-int v5, v5

    add-int/2addr v7, v5

    aput v7, v1, v2

    aget v1, v1, v2

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v4, 0x0

    invoke-virtual {v2, p0, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    invoke-virtual {v2, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    array-length v4, p0

    sub-int/2addr v4, v1

    invoke-virtual {v2, p0, v1, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method static skipWt(Ljava/nio/ByteBuffer;I)V
    .locals 2

    if-nez p1, :cond_0

    invoke-static {p0}, Lcom/ffrt/proxyread/Cmd448;->rv(Ljava/nio/ByteBuffer;)J

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/lit8 v0, v0, 0x8

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    invoke-static {p0}, Lcom/ffrt/proxyread/Cmd448;->rv(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    long-to-int v0, v0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_0

    :cond_2
    const/4 v0, 0x5

    if-ne p1, v0, :cond_3

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    :cond_3
    :goto_0
    return-void
.end method

.method static teaD([I[I)V
    .locals 9

    const/4 v0, 0x0

    aget v1, p0, v0

    const/4 v2, 0x1

    aget v3, p0, v2

    const v4, -0x1c886470

    const/4 v5, 0x0

    :goto_0
    const/16 v6, 0x10

    if-ge v5, v6, :cond_0

    shl-int/lit8 v6, v1, 0x4

    const/4 v7, 0x2

    aget v7, p1, v7

    add-int/2addr v6, v7

    add-int v7, v1, v4

    xor-int/2addr v6, v7

    ushr-int/lit8 v7, v1, 0x5

    const/4 v8, 0x3

    aget v8, p1, v8

    add-int/2addr v7, v8

    xor-int/2addr v6, v7

    sub-int/2addr v3, v6

    shl-int/lit8 v6, v3, 0x4

    aget v7, p1, v0

    add-int/2addr v6, v7

    add-int v7, v3, v4

    xor-int/2addr v6, v7

    ushr-int/lit8 v7, v3, 0x5

    aget v8, p1, v2

    add-int/2addr v7, v8

    xor-int/2addr v6, v7

    sub-int/2addr v1, v6

    const v6, -0x61c88647

    sub-int/2addr v4, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    aput v1, p0, v0

    aput v3, p0, v2

    return-void
.end method

.method static teaE([I[I)V
    .locals 9

    const/4 v0, 0x0

    aget v1, p0, v0

    const/4 v2, 0x1

    aget v3, p0, v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    const/16 v6, 0x10

    if-ge v5, v6, :cond_0

    const v6, -0x61c88647

    add-int/2addr v4, v6

    shl-int/lit8 v6, v3, 0x4

    aget v7, p1, v0

    add-int/2addr v6, v7

    add-int v7, v3, v4

    xor-int/2addr v6, v7

    ushr-int/lit8 v7, v3, 0x5

    aget v8, p1, v2

    add-int/2addr v7, v8

    xor-int/2addr v6, v7

    add-int/2addr v1, v6

    shl-int/lit8 v6, v1, 0x4

    const/4 v7, 0x2

    aget v7, p1, v7

    add-int/2addr v6, v7

    add-int v7, v1, v4

    xor-int/2addr v6, v7

    ushr-int/lit8 v7, v1, 0x5

    const/4 v8, 0x3

    aget v8, p1, v8

    add-int/2addr v7, v8

    xor-int/2addr v6, v7

    add-int/2addr v3, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    aput v1, p0, v0

    aput v3, p0, v2

    return-void
.end method

.method static unpad([B)[B
    .locals 4

    array-length v0, p0

    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v1, 0x0

    aget-byte v1, p0, v1

    and-int/lit8 v1, v1, 0x7

    add-int/lit8 v1, v1, 0x3

    add-int/lit8 v0, v0, -0x7

    if-lt v1, v0, :cond_1

    const/4 v0, 0x0

    new-array v0, v0, [B

    return-object v0

    :cond_1
    invoke-static {p0, v1, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    return-object p0
.end method

.method static wi([BII)V
    .locals 2

    int-to-byte v0, p2

    aput-byte v0, p0, p1

    add-int/lit8 v0, p1, 0x1

    shr-int/lit8 v1, p2, 0x8

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    add-int/lit8 v0, p1, 0x2

    shr-int/lit8 v1, p2, 0x10

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    add-int/lit8 p1, p1, 0x3

    shr-int/lit8 p2, p2, 0x18

    int-to-byte p2, p2

    aput-byte p2, p0, p1

    return-void
.end method

.method static zag(J)J
    .locals 5

    const/4 v0, 0x1

    ushr-long v1, p0, v0

    const-wide/16 v3, 0x1

    and-long/2addr p0, v3

    neg-long p0, p0

    xor-long p0, v1, p0

    return-wide p0
.end method
