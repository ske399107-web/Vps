.class Lorg/bouncycastle/est/CTEBase64InputStream;
.super Ljava/io/InputStream;
.source "SourceFile"


# instance fields
.field protected final data:[B

.field protected final dataOutputStream:Ljava/io/OutputStream;

.field protected end:Z

.field protected final max:Ljava/lang/Long;

.field protected final rawBuf:[B

.field protected read:J

.field protected rp:I

.field protected final src:Ljava/io/InputStream;

.field protected wp:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/est/CTEBase64InputStream;-><init>(Ljava/io/InputStream;Ljava/lang/Long;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/Long;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/16 v0, 0x400

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/est/CTEBase64InputStream;->rawBuf:[B

    const/16 v0, 0x300

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/est/CTEBase64InputStream;->data:[B

    iput-object p1, p0, Lorg/bouncycastle/est/CTEBase64InputStream;->src:Ljava/io/InputStream;

    new-instance p1, Lorg/bouncycastle/est/CTEBase64InputStream$1;

    invoke-direct {p1, p0}, Lorg/bouncycastle/est/CTEBase64InputStream$1;-><init>(Lorg/bouncycastle/est/CTEBase64InputStream;)V

    iput-object p1, p0, Lorg/bouncycastle/est/CTEBase64InputStream;->dataOutputStream:Ljava/io/OutputStream;

    iput-object p2, p0, Lorg/bouncycastle/est/CTEBase64InputStream;->max:Ljava/lang/Long;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/est/CTEBase64InputStream;->src:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method public pullFromSrc()I
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :cond_0
    iget-object v2, p0, Lorg/bouncycastle/est/CTEBase64InputStream;->max:Ljava/lang/Long;

    .line 5
    const/4 v3, -0x1

    .line 6
    if-eqz v2, :cond_1

    .line 8
    iget-wide v4, p0, Lorg/bouncycastle/est/CTEBase64InputStream;->read:J

    .line 10
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 13
    move-result-wide v6

    .line 14
    cmp-long v2, v4, v6

    .line 16
    if-lez v2, :cond_1

    .line 18
    return v3

    .line 19
    :cond_1
    iget-object v2, p0, Lorg/bouncycastle/est/CTEBase64InputStream;->src:Ljava/io/InputStream;

    .line 21
    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    .line 24
    move-result v2

    .line 25
    const/16 v4, 0x21

    .line 27
    const-wide/16 v5, 0x1

    .line 29
    const/16 v7, 0xa

    .line 31
    if-ge v2, v4, :cond_3

    .line 33
    const/16 v4, 0xd

    .line 35
    if-eq v2, v4, :cond_3

    .line 37
    if-ne v2, v7, :cond_2

    .line 39
    goto :goto_0

    .line 40
    :cond_2
    if-ltz v2, :cond_4

    .line 42
    iget-wide v8, p0, Lorg/bouncycastle/est/CTEBase64InputStream;->read:J

    .line 44
    add-long/2addr v8, v5

    .line 45
    iput-wide v8, p0, Lorg/bouncycastle/est/CTEBase64InputStream;->read:J

    .line 47
    goto :goto_1

    .line 48
    :cond_3
    :goto_0
    iget-object v4, p0, Lorg/bouncycastle/est/CTEBase64InputStream;->rawBuf:[B

    .line 50
    array-length v8, v4

    .line 51
    if-ge v1, v8, :cond_8

    .line 53
    add-int/lit8 v8, v1, 0x1

    .line 55
    int-to-byte v9, v2

    .line 56
    aput-byte v9, v4, v1

    .line 58
    iget-wide v9, p0, Lorg/bouncycastle/est/CTEBase64InputStream;->read:J

    .line 60
    add-long/2addr v9, v5

    .line 61
    iput-wide v9, p0, Lorg/bouncycastle/est/CTEBase64InputStream;->read:J

    .line 63
    move v1, v8

    .line 64
    :cond_4
    :goto_1
    if-le v2, v3, :cond_5

    .line 66
    iget-object v4, p0, Lorg/bouncycastle/est/CTEBase64InputStream;->rawBuf:[B

    .line 68
    array-length v4, v4

    .line 69
    if-ge v1, v4, :cond_5

    .line 71
    if-ne v2, v7, :cond_0

    .line 73
    :cond_5
    if-lez v1, :cond_6

    .line 75
    :try_start_0
    iget-object v2, p0, Lorg/bouncycastle/est/CTEBase64InputStream;->rawBuf:[B

    .line 77
    iget-object v3, p0, Lorg/bouncycastle/est/CTEBase64InputStream;->dataOutputStream:Ljava/io/OutputStream;

    .line 79
    invoke-static {v2, v0, v1, v3}, Lorg/bouncycastle/util/encoders/Base64;->decode([BIILjava/io/OutputStream;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    goto :goto_2

    .line 83
    :catch_0
    move-exception v0

    .line 84
    new-instance v1, Ljava/io/IOException;

    .line 86
    const-string v2, "Decode Base64 Content-Transfer-Encoding: "

    .line 88
    invoke-static {v2, v0}, Lo/Ve;->g(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;

    .line 91
    move-result-object v0

    .line 92
    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 95
    throw v1

    .line 96
    :cond_6
    if-ne v2, v3, :cond_7

    .line 98
    return v3

    .line 99
    :cond_7
    :goto_2
    iget v0, p0, Lorg/bouncycastle/est/CTEBase64InputStream;->wp:I

    .line 101
    return v0

    .line 102
    :cond_8
    new-instance v0, Ljava/io/IOException;

    .line 104
    const-string v1, "Content Transfer Encoding, base64 line length > 1024"

    .line 106
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 109
    throw v0
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lorg/bouncycastle/est/CTEBase64InputStream;->rp:I

    iget v1, p0, Lorg/bouncycastle/est/CTEBase64InputStream;->wp:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/est/CTEBase64InputStream;->rp:I

    iput v0, p0, Lorg/bouncycastle/est/CTEBase64InputStream;->wp:I

    invoke-virtual {p0}, Lorg/bouncycastle/est/CTEBase64InputStream;->pullFromSrc()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return v0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/est/CTEBase64InputStream;->data:[B

    iget v1, p0, Lorg/bouncycastle/est/CTEBase64InputStream;->rp:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/bouncycastle/est/CTEBase64InputStream;->rp:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method
