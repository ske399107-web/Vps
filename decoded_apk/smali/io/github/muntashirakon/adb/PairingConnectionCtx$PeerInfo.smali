.class Lio/github/muntashirakon/adb/PairingConnectionCtx$PeerInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/muntashirakon/adb/PairingConnectionCtx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PeerInfo"
.end annotation


# static fields
.field public static final ADB_DEVICE_GUID:B = 0x0t

.field public static final ADB_RSA_PUB_KEY:B = 0x0t

.field public static final MAX_PEER_INFO_SIZE:I = 0x2000


# instance fields
.field private final data:[B

.field private final type:B


# direct methods
.method public constructor <init>(B[B)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/16 v0, 0x1fff

    .line 6
    new-array v1, v0, [B

    .line 8
    iput-object v1, p0, Lio/github/muntashirakon/adb/PairingConnectionCtx$PeerInfo;->data:[B

    .line 10
    iput-byte p1, p0, Lio/github/muntashirakon/adb/PairingConnectionCtx$PeerInfo;->type:B

    .line 12
    array-length p1, p2

    .line 13
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    .line 16
    move-result p1

    .line 17
    const/4 v0, 0x0

    .line 18
    invoke-static {p2, v0, v1, v0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 21
    return-void
.end method

.method public static readFrom(Ljava/nio/ByteBuffer;)Lio/github/muntashirakon/adb/PairingConnectionCtx$PeerInfo;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x1fff

    .line 7
    new-array v1, v1, [B

    .line 9
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 12
    new-instance p0, Lio/github/muntashirakon/adb/PairingConnectionCtx$PeerInfo;

    .line 14
    invoke-direct {p0, v0, v1}, Lio/github/muntashirakon/adb/PairingConnectionCtx$PeerInfo;-><init>(B[B)V

    .line 17
    return-object p0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string v1, "PeerInfo{type="

    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    iget-byte v1, p0, Lio/github/muntashirakon/adb/PairingConnectionCtx$PeerInfo;->type:B

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 13
    const-string v1, ", data="

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    iget-object v1, p0, Lio/github/muntashirakon/adb/PairingConnectionCtx$PeerInfo;->data:[B

    .line 20
    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    const/16 v1, 0x7d

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    move-result-object v0

    .line 36
    return-object v0
.end method

.method public writeTo(Ljava/nio/ByteBuffer;)V
    .locals 1

    .line 1
    iget-byte v0, p0, Lio/github/muntashirakon/adb/PairingConnectionCtx$PeerInfo;->type:B

    .line 3
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 6
    move-result-object p1

    .line 7
    iget-object v0, p0, Lio/github/muntashirakon/adb/PairingConnectionCtx$PeerInfo;->data:[B

    .line 9
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 12
    return-void
.end method
