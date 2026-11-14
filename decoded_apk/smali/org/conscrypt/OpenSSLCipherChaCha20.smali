.class public Lorg/conscrypt/OpenSSLCipherChaCha20;
.super Lorg/conscrypt/OpenSSLCipher;
.source "SourceFile"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final BLOCK_SIZE_BYTES:I = 0x40

.field private static final NONCE_SIZE_BYTES:I = 0xc


# instance fields
.field private blockCounter:I

.field private currentBlockConsumedBytes:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/conscrypt/OpenSSLCipher;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lorg/conscrypt/OpenSSLCipherChaCha20;->currentBlockConsumedBytes:I

    .line 7
    iput v0, p0, Lorg/conscrypt/OpenSSLCipherChaCha20;->blockCounter:I

    .line 9
    return-void
.end method

.method private reset()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lorg/conscrypt/OpenSSLCipherChaCha20;->blockCounter:I

    .line 4
    iput v0, p0, Lorg/conscrypt/OpenSSLCipherChaCha20;->currentBlockConsumedBytes:I

    .line 6
    return-void
.end method


# virtual methods
.method public checkSupportedKeySize(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 1
    const/16 v0, 0x20

    .line 3
    if-ne p1, v0, :cond_0

    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v0, Ljava/security/InvalidKeyException;

    .line 8
    const-string v1, "Unsupported key size: "

    .line 10
    const-string v2, " bytes (must be 32)"

    .line 12
    invoke-static {v1, p1, v2}, Lo/o5;->e(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 15
    move-result-object p1

    .line 16
    invoke-direct {v0, p1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    .line 19
    throw v0
.end method

.method public checkSupportedMode(Lorg/conscrypt/OpenSSLCipher$Mode;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 1
    sget-object v0, Lorg/conscrypt/OpenSSLCipher$Mode;->NONE:Lorg/conscrypt/OpenSSLCipher$Mode;

    .line 3
    if-ne p1, v0, :cond_0

    .line 5
    return-void

    .line 6
    :cond_0
    new-instance p1, Ljava/security/NoSuchAlgorithmException;

    .line 8
    const-string v0, "Mode must be NONE"

    .line 10
    invoke-direct {p1, v0}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    .line 13
    throw p1
.end method

.method public checkSupportedPadding(Lorg/conscrypt/OpenSSLCipher$Padding;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/NoSuchPaddingException;
        }
    .end annotation

    .line 1
    sget-object v0, Lorg/conscrypt/OpenSSLCipher$Padding;->NOPADDING:Lorg/conscrypt/OpenSSLCipher$Padding;

    .line 3
    if-ne p1, v0, :cond_0

    .line 5
    return-void

    .line 6
    :cond_0
    new-instance p1, Ljavax/crypto/NoSuchPaddingException;

    .line 8
    const-string v0, "Must be NoPadding"

    .line 10
    invoke-direct {p1, v0}, Ljavax/crypto/NoSuchPaddingException;-><init>(Ljava/lang/String;)V

    .line 13
    throw p1
.end method

.method public doFinalInternal([BII)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;,
            Ljavax/crypto/ShortBufferException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lorg/conscrypt/OpenSSLCipherChaCha20;->reset()V

    .line 4
    const/4 p1, 0x0

    .line 5
    return p1
.end method

.method public engineInitInternal([BLjava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 1
    instance-of p1, p2, Ljavax/crypto/spec/IvParameterSpec;

    .line 3
    const/16 v0, 0xc

    .line 5
    if-eqz p1, :cond_1

    .line 7
    check-cast p2, Ljavax/crypto/spec/IvParameterSpec;

    .line 9
    invoke-virtual {p2}, Ljavax/crypto/spec/IvParameterSpec;->getIV()[B

    .line 12
    move-result-object p1

    .line 13
    array-length p1, p1

    .line 14
    if-ne p1, v0, :cond_0

    .line 16
    invoke-virtual {p2}, Ljavax/crypto/spec/IvParameterSpec;->getIV()[B

    .line 19
    move-result-object p1

    .line 20
    iput-object p1, p0, Lorg/conscrypt/OpenSSLCipher;->iv:[B

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    .line 25
    const-string p2, "IV must be 12 bytes long"

    .line 27
    invoke-direct {p1, p2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    .line 30
    throw p1

    .line 31
    :cond_1
    invoke-virtual {p0}, Lorg/conscrypt/OpenSSLCipher;->isEncrypting()Z

    .line 34
    move-result p1

    .line 35
    if-eqz p1, :cond_3

    .line 37
    new-array p1, v0, [B

    .line 39
    iput-object p1, p0, Lorg/conscrypt/OpenSSLCipher;->iv:[B

    .line 41
    if-eqz p3, :cond_2

    .line 43
    invoke-virtual {p3, p1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 46
    goto :goto_0

    .line 47
    :cond_2
    invoke-static {p1}, Lorg/conscrypt/NativeCrypto;->RAND_bytes([B)V

    .line 50
    :goto_0
    return-void

    .line 51
    :cond_3
    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    .line 53
    const-string p2, "IV must be specified when decrypting"

    .line 55
    invoke-direct {p1, p2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    .line 58
    throw p1
.end method

.method public getBaseCipherName()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "ChaCha20"

    .line 3
    return-object v0
.end method

.method public getCipherBlockSize()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getOutputSizeForFinal(I)I
    .locals 0

    return p1
.end method

.method public getOutputSizeForUpdate(I)I
    .locals 0

    return p1
.end method

.method public updateInternal([BII[BII)I
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 3
    move/from16 v1, p2

    .line 5
    move/from16 v2, p3

    .line 7
    move-object/from16 v5, p4

    .line 9
    move/from16 v3, p5

    .line 11
    array-length v4, v5

    .line 12
    sub-int/2addr v4, v3

    .line 13
    if-gt v2, v4, :cond_2

    .line 15
    iget v4, v0, Lorg/conscrypt/OpenSSLCipherChaCha20;->currentBlockConsumedBytes:I

    .line 17
    const/16 v11, 0x40

    .line 19
    if-lez v4, :cond_1

    .line 21
    rsub-int/lit8 v4, v4, 0x40

    .line 23
    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    .line 26
    move-result v4

    .line 27
    new-array v12, v11, [B

    .line 29
    new-array v6, v11, [B

    .line 31
    iget v7, v0, Lorg/conscrypt/OpenSSLCipherChaCha20;->currentBlockConsumedBytes:I

    .line 33
    move-object/from16 v8, p1

    .line 35
    invoke-static {v8, v1, v12, v7, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 38
    iget-object v7, v0, Lorg/conscrypt/OpenSSLCipher;->encodedKey:[B

    .line 40
    iget-object v9, v0, Lorg/conscrypt/OpenSSLCipher;->iv:[B

    .line 42
    iget v10, v0, Lorg/conscrypt/OpenSSLCipherChaCha20;->blockCounter:I

    .line 44
    const/4 v13, 0x0

    .line 45
    const/4 v15, 0x0

    .line 46
    const/16 v16, 0x40

    .line 48
    move-object v14, v6

    .line 49
    move-object/from16 v17, v7

    .line 51
    move-object/from16 v18, v9

    .line 53
    move/from16 v19, v10

    .line 55
    invoke-static/range {v12 .. v19}, Lorg/conscrypt/NativeCrypto;->chacha20_encrypt_decrypt([BI[BII[B[BI)V

    .line 58
    iget v7, v0, Lorg/conscrypt/OpenSSLCipherChaCha20;->currentBlockConsumedBytes:I

    .line 60
    invoke-static {v6, v7, v5, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 63
    iget v6, v0, Lorg/conscrypt/OpenSSLCipherChaCha20;->currentBlockConsumedBytes:I

    .line 65
    add-int/2addr v6, v4

    .line 66
    iput v6, v0, Lorg/conscrypt/OpenSSLCipherChaCha20;->currentBlockConsumedBytes:I

    .line 68
    if-ge v6, v11, :cond_0

    .line 70
    return v4

    .line 71
    :cond_0
    const/4 v6, 0x0

    .line 72
    iput v6, v0, Lorg/conscrypt/OpenSSLCipherChaCha20;->currentBlockConsumedBytes:I

    .line 74
    add-int/2addr v1, v4

    .line 75
    add-int/2addr v3, v4

    .line 76
    sub-int v4, v2, v4

    .line 78
    iget v6, v0, Lorg/conscrypt/OpenSSLCipherChaCha20;->blockCounter:I

    .line 80
    add-int/lit8 v6, v6, 0x1

    .line 82
    iput v6, v0, Lorg/conscrypt/OpenSSLCipherChaCha20;->blockCounter:I

    .line 84
    move v6, v3

    .line 85
    move/from16 v20, v4

    .line 87
    move v4, v1

    .line 88
    move/from16 v1, v20

    .line 90
    goto :goto_0

    .line 91
    :cond_1
    move-object/from16 v8, p1

    .line 93
    move v4, v1

    .line 94
    move v1, v2

    .line 95
    move v6, v3

    .line 96
    :goto_0
    iget-object v9, v0, Lorg/conscrypt/OpenSSLCipher;->encodedKey:[B

    .line 98
    iget-object v10, v0, Lorg/conscrypt/OpenSSLCipher;->iv:[B

    .line 100
    iget v12, v0, Lorg/conscrypt/OpenSSLCipherChaCha20;->blockCounter:I

    .line 102
    move-object/from16 v3, p1

    .line 104
    move-object/from16 v5, p4

    .line 106
    move v7, v1

    .line 107
    move-object v8, v9

    .line 108
    move-object v9, v10

    .line 109
    move v10, v12

    .line 110
    invoke-static/range {v3 .. v10}, Lorg/conscrypt/NativeCrypto;->chacha20_encrypt_decrypt([BI[BII[B[BI)V

    .line 113
    rem-int/lit8 v3, v1, 0x40

    .line 115
    iput v3, v0, Lorg/conscrypt/OpenSSLCipherChaCha20;->currentBlockConsumedBytes:I

    .line 117
    iget v3, v0, Lorg/conscrypt/OpenSSLCipherChaCha20;->blockCounter:I

    .line 119
    div-int/2addr v1, v11

    .line 120
    add-int/2addr v1, v3

    .line 121
    iput v1, v0, Lorg/conscrypt/OpenSSLCipherChaCha20;->blockCounter:I

    .line 123
    return v2

    .line 124
    :cond_2
    new-instance v1, Lorg/conscrypt/ShortBufferWithoutStackTraceException;

    .line 126
    const-string v2, "Insufficient output space"

    .line 128
    invoke-direct {v1, v2}, Lorg/conscrypt/ShortBufferWithoutStackTraceException;-><init>(Ljava/lang/String;)V

    .line 131
    throw v1
.end method
