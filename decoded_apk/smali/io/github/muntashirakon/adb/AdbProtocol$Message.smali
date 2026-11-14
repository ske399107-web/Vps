.class final Lio/github/muntashirakon/adb/AdbProtocol$Message;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/muntashirakon/adb/AdbProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Message"
.end annotation


# instance fields
.field public final arg0:I

.field public final arg1:I

.field public final command:I

.field public final dataCheck:I

.field public final dataLength:I

.field public final magic:I

.field public payload:[B


# direct methods
.method private constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    .line 7
    move-result v0

    .line 8
    iput v0, p0, Lio/github/muntashirakon/adb/AdbProtocol$Message;->command:I

    .line 10
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    .line 13
    move-result v0

    .line 14
    iput v0, p0, Lio/github/muntashirakon/adb/AdbProtocol$Message;->arg0:I

    .line 16
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    .line 19
    move-result v0

    .line 20
    iput v0, p0, Lio/github/muntashirakon/adb/AdbProtocol$Message;->arg1:I

    .line 22
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    .line 25
    move-result v0

    .line 26
    iput v0, p0, Lio/github/muntashirakon/adb/AdbProtocol$Message;->dataLength:I

    .line 28
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    .line 31
    move-result v0

    .line 32
    iput v0, p0, Lio/github/muntashirakon/adb/AdbProtocol$Message;->dataCheck:I

    .line 34
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    .line 37
    move-result p1

    .line 38
    iput p1, p0, Lio/github/muntashirakon/adb/AdbProtocol$Message;->magic:I

    .line 40
    return-void
.end method

.method public static parse(Ljava/io/InputStream;II)Lio/github/muntashirakon/adb/AdbProtocol$Message;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const/16 v0, 0x18

    .line 3
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 6
    move-result-object v1

    .line 7
    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 9
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 12
    move-result-object v1

    .line 13
    const/4 v2, 0x0

    .line 14
    move v3, v2

    .line 15
    :cond_0
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    .line 18
    move-result-object v4

    .line 19
    rsub-int/lit8 v5, v3, 0x18

    .line 21
    invoke-virtual {p0, v4, v3, v5}, Ljava/io/InputStream;->read([BII)I

    .line 24
    move-result v4

    .line 25
    const-string v5, "Stream closed"

    .line 27
    if-ltz v4, :cond_b

    .line 29
    add-int/2addr v3, v4

    .line 30
    if-lt v3, v0, :cond_0

    .line 32
    new-instance v0, Lio/github/muntashirakon/adb/AdbProtocol$Message;

    .line 34
    invoke-direct {v0, v1}, Lio/github/muntashirakon/adb/AdbProtocol$Message;-><init>(Ljava/nio/ByteBuffer;)V

    .line 37
    iget v1, v0, Lio/github/muntashirakon/adb/AdbProtocol$Message;->command:I

    .line 39
    iget v3, v0, Lio/github/muntashirakon/adb/AdbProtocol$Message;->magic:I

    .line 41
    not-int v3, v3

    .line 42
    if-ne v1, v3, :cond_a

    .line 44
    const v3, 0x434e5953

    .line 47
    const v4, 0x4e584e43    # 9.072519E8f

    .line 50
    if-eq v1, v3, :cond_2

    .line 52
    if-eq v1, v4, :cond_2

    .line 54
    const v3, 0x4e45504f    # 8.2759366E8f

    .line 57
    if-eq v1, v3, :cond_2

    .line 59
    const v3, 0x59414b4f

    .line 62
    if-eq v1, v3, :cond_2

    .line 64
    const v3, 0x45534c43

    .line 67
    if-eq v1, v3, :cond_2

    .line 69
    const v3, 0x45545257

    .line 72
    if-eq v1, v3, :cond_2

    .line 74
    const v3, 0x48545541

    .line 77
    if-eq v1, v3, :cond_2

    .line 79
    const v3, 0x534c5453

    .line 82
    if-ne v1, v3, :cond_1

    .line 84
    goto :goto_0

    .line 85
    :cond_1
    new-instance p0, Ljava/io/StreamCorruptedException;

    .line 87
    iget p1, v0, Lio/github/muntashirakon/adb/AdbProtocol$Message;->command:I

    .line 89
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 92
    move-result-object p1

    .line 93
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 96
    move-result-object p1

    .line 97
    const-string p2, "Invalid header: Invalid command 0x%x."

    .line 99
    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 102
    move-result-object p1

    .line 103
    invoke-direct {p0, p1}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    .line 106
    throw p0

    .line 107
    :cond_2
    :goto_0
    iget v1, v0, Lio/github/muntashirakon/adb/AdbProtocol$Message;->dataLength:I

    .line 109
    if-ltz v1, :cond_9

    .line 111
    if-gt v1, p2, :cond_9

    .line 113
    if-nez v1, :cond_3

    .line 115
    return-object v0

    .line 116
    :cond_3
    new-array p2, v1, [B

    .line 118
    iput-object p2, v0, Lio/github/muntashirakon/adb/AdbProtocol$Message;->payload:[B

    .line 120
    :cond_4
    iget-object p2, v0, Lio/github/muntashirakon/adb/AdbProtocol$Message;->payload:[B

    .line 122
    iget v1, v0, Lio/github/muntashirakon/adb/AdbProtocol$Message;->dataLength:I

    .line 124
    sub-int/2addr v1, v2

    .line 125
    invoke-virtual {p0, p2, v2, v1}, Ljava/io/InputStream;->read([BII)I

    .line 128
    move-result p2

    .line 129
    if-ltz p2, :cond_8

    .line 131
    add-int/2addr v2, p2

    .line 132
    iget p2, v0, Lio/github/muntashirakon/adb/AdbProtocol$Message;->dataLength:I

    .line 134
    if-lt v2, p2, :cond_4

    .line 136
    const/high16 p0, 0x1000000

    .line 138
    if-le p1, p0, :cond_5

    .line 140
    iget p1, v0, Lio/github/muntashirakon/adb/AdbProtocol$Message;->command:I

    .line 142
    if-ne p1, v4, :cond_6

    .line 144
    iget p1, v0, Lio/github/muntashirakon/adb/AdbProtocol$Message;->arg0:I

    .line 146
    if-gt p1, p0, :cond_6

    .line 148
    :cond_5
    iget-object p0, v0, Lio/github/muntashirakon/adb/AdbProtocol$Message;->payload:[B

    .line 150
    invoke-static {p0}, Lio/github/muntashirakon/adb/AdbProtocol;->access$000([B)I

    .line 153
    move-result p0

    .line 154
    iget p1, v0, Lio/github/muntashirakon/adb/AdbProtocol$Message;->dataCheck:I

    .line 156
    if-ne p0, p1, :cond_7

    .line 158
    :cond_6
    return-object v0

    .line 159
    :cond_7
    new-instance p0, Ljava/io/StreamCorruptedException;

    .line 161
    const-string p1, "Invalid header: Checksum mismatched."

    .line 163
    invoke-direct {p0, p1}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    .line 166
    throw p0

    .line 167
    :cond_8
    new-instance p0, Ljava/io/IOException;

    .line 169
    invoke-direct {p0, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 172
    throw p0

    .line 173
    :cond_9
    new-instance p0, Ljava/io/StreamCorruptedException;

    .line 175
    iget p1, v0, Lio/github/muntashirakon/adb/AdbProtocol$Message;->dataLength:I

    .line 177
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 180
    move-result-object p1

    .line 181
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 184
    move-result-object p1

    .line 185
    const-string p2, "Invalid header: Invalid data length %d"

    .line 187
    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 190
    move-result-object p1

    .line 191
    invoke-direct {p0, p1}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    .line 194
    throw p0

    .line 195
    :cond_a
    new-instance p0, Ljava/io/StreamCorruptedException;

    .line 197
    iget p1, v0, Lio/github/muntashirakon/adb/AdbProtocol$Message;->magic:I

    .line 199
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 202
    move-result-object p1

    .line 203
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 206
    move-result-object p1

    .line 207
    const-string p2, "Invalid header: Invalid magic 0x%x."

    .line 209
    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 212
    move-result-object p1

    .line 213
    invoke-direct {p0, p1}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    .line 216
    throw p0

    .line 217
    :cond_b
    new-instance p0, Ljava/io/IOException;

    .line 219
    invoke-direct {p0, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 222
    throw p0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    iget v0, p0, Lio/github/muntashirakon/adb/AdbProtocol$Message;->command:I

    .line 3
    sparse-switch v0, :sswitch_data_0

    .line 6
    const-string v0, "????"

    .line 8
    goto :goto_0

    .line 9
    :sswitch_0
    const-string v0, "OKAY"

    .line 11
    goto :goto_0

    .line 12
    :sswitch_1
    const-string v0, "STLS"

    .line 14
    goto :goto_0

    .line 15
    :sswitch_2
    const-string v0, "CNXN"

    .line 17
    goto :goto_0

    .line 18
    :sswitch_3
    const-string v0, "OPEN"

    .line 20
    goto :goto_0

    .line 21
    :sswitch_4
    const-string v0, "AUTH"

    .line 23
    goto :goto_0

    .line 24
    :sswitch_5
    const-string v0, "WRTE"

    .line 26
    goto :goto_0

    .line 27
    :sswitch_6
    const-string v0, "CLSE"

    .line 29
    goto :goto_0

    .line 30
    :sswitch_7
    const-string v0, "SYNC"

    .line 32
    :goto_0
    const-string v1, "Message{command="

    .line 34
    const-string v2, ", arg0=0x"

    .line 36
    invoke-static {v1, v0, v2}, Lo/Ve;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    move-result-object v0

    .line 40
    iget v1, p0, Lio/github/muntashirakon/adb/AdbProtocol$Message;->arg0:I

    .line 42
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 45
    move-result-object v1

    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    const-string v1, ", arg1=0x"

    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    iget v1, p0, Lio/github/muntashirakon/adb/AdbProtocol$Message;->arg1:I

    .line 56
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 59
    move-result-object v1

    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    const-string v1, ", payloadLength="

    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    iget v1, p0, Lio/github/muntashirakon/adb/AdbProtocol$Message;->dataLength:I

    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 73
    const-string v1, ", checksum="

    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    iget v1, p0, Lio/github/muntashirakon/adb/AdbProtocol$Message;->dataCheck:I

    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 83
    const-string v1, ", magic=0x"

    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    iget v1, p0, Lio/github/muntashirakon/adb/AdbProtocol$Message;->magic:I

    .line 90
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 93
    move-result-object v1

    .line 94
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    const-string v1, ", payload="

    .line 99
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    iget-object v1, p0, Lio/github/muntashirakon/adb/AdbProtocol$Message;->payload:[B

    .line 104
    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    .line 107
    move-result-object v1

    .line 108
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    const/16 v1, 0x7d

    .line 113
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 116
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 119
    move-result-object v0

    .line 120
    return-object v0

    .line 121
    :sswitch_data_0
    .sparse-switch
        0x434e5953 -> :sswitch_7
        0x45534c43 -> :sswitch_6
        0x45545257 -> :sswitch_5
        0x48545541 -> :sswitch_4
        0x4e45504f -> :sswitch_3
        0x4e584e43 -> :sswitch_2
        0x534c5453 -> :sswitch_1
        0x59414b4f -> :sswitch_0
    .end sparse-switch
.end method
