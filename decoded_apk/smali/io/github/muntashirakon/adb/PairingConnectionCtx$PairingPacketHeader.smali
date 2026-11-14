.class Lio/github/muntashirakon/adb/PairingConnectionCtx$PairingPacketHeader;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/muntashirakon/adb/PairingConnectionCtx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PairingPacketHeader"
.end annotation


# static fields
.field public static final CURRENT_KEY_HEADER_VERSION:B = 0x1t

.field public static final MAX_PAYLOAD_SIZE:I = 0x4000

.field public static final MAX_SUPPORTED_KEY_HEADER_VERSION:B = 0x1t

.field public static final MIN_SUPPORTED_KEY_HEADER_VERSION:B = 0x1t

.field public static final PAIRING_PACKET_HEADER_SIZE:B = 0x6t

.field public static final PEER_INFO:B = 0x1t

.field public static final SPAKE2_MSG:B


# instance fields
.field private final payloadSize:I

.field private final type:B

.field private final version:B


# direct methods
.method public constructor <init>(BBI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-byte p1, p0, Lio/github/muntashirakon/adb/PairingConnectionCtx$PairingPacketHeader;->version:B

    .line 6
    iput-byte p2, p0, Lio/github/muntashirakon/adb/PairingConnectionCtx$PairingPacketHeader;->type:B

    .line 8
    iput p3, p0, Lio/github/muntashirakon/adb/PairingConnectionCtx$PairingPacketHeader;->payloadSize:I

    .line 10
    return-void
.end method

.method public static synthetic access$000(Lio/github/muntashirakon/adb/PairingConnectionCtx$PairingPacketHeader;)B
    .locals 0

    .line 1
    iget-byte p0, p0, Lio/github/muntashirakon/adb/PairingConnectionCtx$PairingPacketHeader;->type:B

    .line 3
    return p0
.end method

.method public static synthetic access$100(Lio/github/muntashirakon/adb/PairingConnectionCtx$PairingPacketHeader;)I
    .locals 0

    .line 1
    iget p0, p0, Lio/github/muntashirakon/adb/PairingConnectionCtx$PairingPacketHeader;->payloadSize:I

    .line 3
    return p0
.end method

.method public static readFrom(Ljava/nio/ByteBuffer;)Lio/github/muntashirakon/adb/PairingConnectionCtx$PairingPacketHeader;
    .locals 5

    .line 1
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    .line 8
    move-result v1

    .line 9
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    .line 12
    move-result p0

    .line 13
    const-string v2, ")"

    .line 15
    const/4 v3, 0x0

    .line 16
    const/4 v4, 0x1

    .line 17
    if-lt v0, v4, :cond_4

    .line 19
    if-le v0, v4, :cond_0

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    if-eqz v1, :cond_1

    .line 24
    if-eq v1, v4, :cond_1

    .line 26
    sget-object p0, Lio/github/muntashirakon/adb/PairingConnectionCtx;->TAG:Ljava/lang/String;

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    .line 30
    const-string v2, "Unknown PairingPacket type "

    .line 32
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    move-result-object v0

    .line 42
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    return-object v3

    .line 46
    :cond_1
    if-lez p0, :cond_3

    .line 48
    const/16 v4, 0x4000

    .line 50
    if-le p0, v4, :cond_2

    .line 52
    goto :goto_0

    .line 53
    :cond_2
    new-instance v2, Lio/github/muntashirakon/adb/PairingConnectionCtx$PairingPacketHeader;

    .line 55
    invoke-direct {v2, v0, v1, p0}, Lio/github/muntashirakon/adb/PairingConnectionCtx$PairingPacketHeader;-><init>(BBI)V

    .line 58
    return-object v2

    .line 59
    :cond_3
    :goto_0
    sget-object v0, Lio/github/muntashirakon/adb/PairingConnectionCtx;->TAG:Ljava/lang/String;

    .line 61
    new-instance v1, Ljava/lang/StringBuilder;

    .line 63
    const-string v4, "Header payload not within a safe payload size (size="

    .line 65
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 68
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 71
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    move-result-object p0

    .line 78
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    return-object v3

    .line 82
    :cond_4
    :goto_1
    sget-object p0, Lio/github/muntashirakon/adb/PairingConnectionCtx;->TAG:Ljava/lang/String;

    .line 84
    new-instance v1, Ljava/lang/StringBuilder;

    .line 86
    const-string v4, "PairingPacketHeader version mismatch (us=1 them="

    .line 88
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 91
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 94
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    move-result-object v0

    .line 101
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    return-object v3
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string v1, "PairingPacketHeader{version="

    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    iget-byte v1, p0, Lio/github/muntashirakon/adb/PairingConnectionCtx$PairingPacketHeader;->version:B

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 13
    const-string v1, ", type="

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    iget-byte v1, p0, Lio/github/muntashirakon/adb/PairingConnectionCtx$PairingPacketHeader;->type:B

    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    const-string v1, ", payloadSize="

    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    iget v1, p0, Lio/github/muntashirakon/adb/PairingConnectionCtx$PairingPacketHeader;->payloadSize:I

    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    const/16 v1, 0x7d

    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    move-result-object v0

    .line 42
    return-object v0
.end method

.method public writeTo(Ljava/nio/ByteBuffer;)V
    .locals 1

    .line 1
    iget-byte v0, p0, Lio/github/muntashirakon/adb/PairingConnectionCtx$PairingPacketHeader;->version:B

    .line 3
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 6
    move-result-object p1

    .line 7
    iget-byte v0, p0, Lio/github/muntashirakon/adb/PairingConnectionCtx$PairingPacketHeader;->type:B

    .line 9
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 12
    move-result-object p1

    .line 13
    iget v0, p0, Lio/github/muntashirakon/adb/PairingConnectionCtx$PairingPacketHeader;->payloadSize:I

    .line 15
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 18
    return-void
.end method
