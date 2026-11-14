.class final Lio/github/muntashirakon/adb/AndroidPubkey;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ANDROID_PUBKEY_ENCODED_SIZE:I = 0x20c

.field public static final ANDROID_PUBKEY_MODULUS_SIZE:I = 0x100

.field public static final ANDROID_PUBKEY_MODULUS_SIZE_WORDS:I = 0x40

.field private static final RSA_SHA_PKCS1_SIGNATURE_PADDING:[B

.field private static final SIGNATURE_PADDING_AS_INT:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    const/16 v1, 0xec

    .line 4
    new-array v1, v1, [I

    .line 6
    fill-array-data v1, :array_0

    .line 9
    sput-object v1, Lio/github/muntashirakon/adb/AndroidPubkey;->SIGNATURE_PADDING_AS_INT:[I

    .line 11
    array-length v1, v1

    .line 12
    new-array v1, v1, [B

    .line 14
    sput-object v1, Lio/github/muntashirakon/adb/AndroidPubkey;->RSA_SHA_PKCS1_SIGNATURE_PADDING:[B

    .line 16
    :goto_0
    sget-object v1, Lio/github/muntashirakon/adb/AndroidPubkey;->RSA_SHA_PKCS1_SIGNATURE_PADDING:[B

    .line 18
    array-length v2, v1

    .line 19
    if-ge v0, v2, :cond_0

    .line 21
    sget-object v2, Lio/github/muntashirakon/adb/AndroidPubkey;->SIGNATURE_PADDING_AS_INT:[I

    .line 23
    aget v2, v2, v0

    .line 25
    int-to-byte v2, v2

    .line 26
    aput-byte v2, v1, v0

    .line 28
    add-int/lit8 v0, v0, 0x1

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    return-void

    nop

    .line 33
    :array_0
    .array-data 4
        0x0
        0x1
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0x0
        0x30
        0x21
        0x30
        0x9
        0x6
        0x5
        0x2b
        0xe
        0x3
        0x2
        0x1a
        0x5
        0x0
        0x4
        0x14
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method private static BigEndianToLittleEndianPadded(ILjava/math/BigInteger;)[B
    .locals 2

    .line 1
    new-array v0, p0, [B

    .line 3
    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    .line 6
    move-result-object p1

    .line 7
    invoke-static {p1}, Lio/github/muntashirakon/adb/AndroidPubkey;->swapEndianness([B)[B

    .line 10
    move-result-object p1

    .line 11
    array-length v1, p1

    .line 12
    if-ge p0, v1, :cond_0

    .line 14
    invoke-static {p1, v1, p0}, Lio/github/muntashirakon/adb/AndroidPubkey;->fitsInBytes([BII)Z

    .line 17
    move-result v1

    .line 18
    if-nez v1, :cond_1

    .line 20
    const/4 p0, 0x0

    .line 21
    return-object p0

    .line 22
    :cond_0
    move p0, v1

    .line 23
    :cond_1
    const/4 v1, 0x0

    .line 24
    invoke-static {p1, v1, v0, v1, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 27
    return-object v0
.end method

.method public static adbAuthSign(Ljava/security/PrivateKey;[B)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    const-string v0, "RSA/ECB/NoPadding"

    .line 3
    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x1

    .line 8
    invoke-virtual {v0, v1, p0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 11
    sget-object p0, Lio/github/muntashirakon/adb/AndroidPubkey;->RSA_SHA_PKCS1_SIGNATURE_PADDING:[B

    .line 13
    invoke-virtual {v0, p0}, Ljavax/crypto/Cipher;->update([B)[B

    .line 16
    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    .line 19
    move-result-object p0

    .line 20
    return-object p0
.end method

.method public static decode([B)Ljava/security/interfaces/RSAPublicKey;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .line 1
    array-length v0, p0

    .line 2
    const/16 v1, 0x20c

    .line 4
    if-lt v0, v1, :cond_1

    .line 6
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 9
    move-result-object p0

    .line 10
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 12
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 15
    move-result-object p0

    .line 16
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    .line 19
    move-result v0

    .line 20
    const/16 v1, 0x40

    .line 22
    if-ne v0, v1, :cond_0

    .line 24
    const/16 v0, 0x100

    .line 26
    new-array v0, v0, [B

    .line 28
    const/16 v1, 0x8

    .line 30
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 33
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 36
    new-instance v1, Ljava/math/BigInteger;

    .line 38
    const/4 v2, 0x1

    .line 39
    invoke-static {v0}, Lio/github/muntashirakon/adb/AndroidPubkey;->swapEndianness([B)[B

    .line 42
    move-result-object v0

    .line 43
    invoke-direct {v1, v2, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 46
    const/16 v0, 0x208

    .line 48
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 51
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    .line 54
    move-result p0

    .line 55
    int-to-long v2, p0

    .line 56
    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    .line 59
    move-result-object p0

    .line 60
    const-string v0, "RSA"

    .line 62
    invoke-static {v0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    .line 65
    move-result-object v0

    .line 66
    new-instance v2, Ljava/security/spec/RSAPublicKeySpec;

    .line 68
    invoke-direct {v2, v1, p0}, Ljava/security/spec/RSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 71
    invoke-virtual {v0, v2}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    .line 74
    move-result-object p0

    .line 75
    check-cast p0, Ljava/security/interfaces/RSAPublicKey;

    .line 77
    return-object p0

    .line 78
    :cond_0
    new-instance p0, Ljava/security/InvalidKeyException;

    .line 80
    const-string v0, "Invalid modulus length."

    .line 82
    invoke-direct {p0, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    .line 85
    throw p0

    .line 86
    :cond_1
    new-instance p0, Ljava/security/InvalidKeyException;

    .line 88
    const-string v0, "Invalid key length"

    .line 90
    invoke-direct {p0, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    .line 93
    throw p0
.end method

.method public static encode(Ljava/security/interfaces/RSAPublicKey;)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/security/interfaces/RSAKey;->getModulus()Ljava/math/BigInteger;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    .line 8
    move-result-object v0

    .line 9
    array-length v0, v0

    .line 10
    const/16 v1, 0x100

    .line 12
    if-lt v0, v1, :cond_0

    .line 14
    const/16 v0, 0x20c

    .line 16
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 19
    move-result-object v0

    .line 20
    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 22
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 25
    move-result-object v0

    .line 26
    const/16 v2, 0x40

    .line 28
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 31
    sget-object v2, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    .line 33
    const/16 v3, 0x20

    .line 35
    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->setBit(I)Ljava/math/BigInteger;

    .line 38
    move-result-object v3

    .line 39
    invoke-interface {p0}, Ljava/security/interfaces/RSAKey;->getModulus()Ljava/math/BigInteger;

    .line 42
    move-result-object v4

    .line 43
    invoke-virtual {v4, v3}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 46
    move-result-object v4

    .line 47
    invoke-virtual {v4, v3}, Ljava/math/BigInteger;->modInverse(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 50
    move-result-object v4

    .line 51
    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 54
    move-result-object v3

    .line 55
    invoke-virtual {v3}, Ljava/math/BigInteger;->intValue()I

    .line 58
    move-result v3

    .line 59
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 62
    invoke-interface {p0}, Ljava/security/interfaces/RSAKey;->getModulus()Ljava/math/BigInteger;

    .line 65
    move-result-object v3

    .line 66
    invoke-static {v1, v3}, Lio/github/muntashirakon/adb/AndroidPubkey;->BigEndianToLittleEndianPadded(ILjava/math/BigInteger;)[B

    .line 69
    move-result-object v3

    .line 70
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    check-cast v3, [B

    .line 75
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 78
    const/16 v3, 0x800

    .line 80
    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->setBit(I)Ljava/math/BigInteger;

    .line 83
    move-result-object v2

    .line 84
    const-wide/16 v3, 0x2

    .line 86
    invoke-static {v3, v4}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    .line 89
    move-result-object v3

    .line 90
    invoke-interface {p0}, Ljava/security/interfaces/RSAKey;->getModulus()Ljava/math/BigInteger;

    .line 93
    move-result-object v4

    .line 94
    invoke-virtual {v2, v3, v4}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 97
    move-result-object v2

    .line 98
    invoke-static {v1, v2}, Lio/github/muntashirakon/adb/AndroidPubkey;->BigEndianToLittleEndianPadded(ILjava/math/BigInteger;)[B

    .line 101
    move-result-object v1

    .line 102
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    check-cast v1, [B

    .line 107
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 110
    invoke-interface {p0}, Ljava/security/interfaces/RSAPublicKey;->getPublicExponent()Ljava/math/BigInteger;

    .line 113
    move-result-object p0

    .line 114
    invoke-virtual {p0}, Ljava/math/BigInteger;->intValue()I

    .line 117
    move-result p0

    .line 118
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 121
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    .line 124
    move-result-object p0

    .line 125
    return-object p0

    .line 126
    :cond_0
    new-instance v0, Ljava/security/InvalidKeyException;

    .line 128
    new-instance v1, Ljava/lang/StringBuilder;

    .line 130
    const-string v2, "Invalid key length "

    .line 132
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 135
    invoke-interface {p0}, Ljava/security/interfaces/RSAKey;->getModulus()Ljava/math/BigInteger;

    .line 138
    move-result-object p0

    .line 139
    invoke-virtual {p0}, Ljava/math/BigInteger;->toByteArray()[B

    .line 142
    move-result-object p0

    .line 143
    array-length p0, p0

    .line 144
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 147
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 150
    move-result-object p0

    .line 151
    invoke-direct {v0, p0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    .line 154
    throw v0
.end method

.method public static encodeWithName(Ljava/security/interfaces/RSAPublicKey;Ljava/lang/String;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 1
    const-wide v0, 0x4065d55555555555L    # 174.66666666666666

    .line 6
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    .line 9
    move-result-wide v0

    .line 10
    double-to-int v0, v0

    .line 11
    mul-int/lit8 v0, v0, 0x4

    .line 13
    new-instance v1, Lio/github/muntashirakon/adb/ByteArrayNoThrowOutputStream;

    .line 15
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 18
    move-result v2

    .line 19
    add-int/2addr v2, v0

    .line 20
    add-int/lit8 v2, v2, 0x2

    .line 22
    invoke-direct {v1, v2}, Lio/github/muntashirakon/adb/ByteArrayNoThrowOutputStream;-><init>(I)V

    .line 25
    :try_start_0
    invoke-static {p0}, Lio/github/muntashirakon/adb/AndroidPubkey;->encode(Ljava/security/interfaces/RSAPublicKey;)[B

    .line 28
    move-result-object p0

    .line 29
    invoke-static {p0}, Lorg/bouncycastle/util/encoders/Base64;->encode([B)[B

    .line 32
    move-result-object p0

    .line 33
    invoke-virtual {v1, p0}, Lio/github/muntashirakon/adb/ByteArrayNoThrowOutputStream;->write([B)V

    .line 36
    invoke-static {p1}, Lio/github/muntashirakon/adb/AndroidPubkey;->getUserInfo(Ljava/lang/String;)[B

    .line 39
    move-result-object p0

    .line 40
    invoke-virtual {v1, p0}, Lio/github/muntashirakon/adb/ByteArrayNoThrowOutputStream;->write([B)V

    .line 43
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 46
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    invoke-virtual {v1}, Lio/github/muntashirakon/adb/ByteArrayNoThrowOutputStream;->close()V

    .line 50
    return-object p0

    .line 51
    :catchall_0
    move-exception p0

    .line 52
    :try_start_1
    invoke-virtual {v1}, Lio/github/muntashirakon/adb/ByteArrayNoThrowOutputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 55
    goto :goto_0

    .line 56
    :catchall_1
    move-exception p1

    .line 57
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 60
    :goto_0
    throw p0
.end method

.method public static fitsInBytes([BII)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    if-ge p2, p1, :cond_0

    .line 5
    aget-byte v2, p0, p2

    .line 7
    or-int/2addr v1, v2

    .line 8
    int-to-byte v1, v1

    .line 9
    add-int/lit8 p2, p2, 0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    if-nez v1, :cond_1

    .line 14
    const/4 v0, 0x1

    .line 15
    :cond_1
    return v0
.end method

.method public static getUserInfo(Ljava/lang/String;)[B
    .locals 2

    .line 1
    const-string v0, " "

    .line 3
    const-string v1, "\u0000"

    .line 5
    invoke-static {v0, p0, v1}, Lo/o5;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    move-result-object p0

    .line 9
    const-string v0, "UTF-8"

    .line 11
    invoke-static {p0, v0}, Lio/github/muntashirakon/adb/StringCompat;->getBytes(Ljava/lang/String;Ljava/lang/String;)[B

    .line 14
    move-result-object p0

    .line 15
    return-object p0
.end method

.method private static swapEndianness([B)[B
    .locals 4

    .line 1
    array-length v0, p0

    .line 2
    new-array v1, v0, [B

    .line 4
    const/4 v2, 0x0

    .line 5
    :goto_0
    if-ge v2, v0, :cond_0

    .line 7
    sub-int v3, v0, v2

    .line 9
    add-int/lit8 v3, v3, -0x1

    .line 11
    aget-byte v3, p0, v3

    .line 13
    aput-byte v3, v1, v2

    .line 15
    add-int/lit8 v2, v2, 0x1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    return-object v1
.end method
