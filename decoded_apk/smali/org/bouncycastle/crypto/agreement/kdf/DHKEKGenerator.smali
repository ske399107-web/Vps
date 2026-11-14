.class public Lorg/bouncycastle/crypto/agreement/kdf/DHKEKGenerator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/crypto/DerivationFunction;


# instance fields
.field private algorithm:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field private final digest:Lorg/bouncycastle/crypto/Digest;

.field private keySize:I

.field private partyAInfo:[B

.field private z:[B


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/Digest;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/crypto/agreement/kdf/DHKEKGenerator;->digest:Lorg/bouncycastle/crypto/Digest;

    return-void
.end method


# virtual methods
.method public generateBytes([BII)I
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1
    move-object/from16 v1, p0

    .line 3
    move-object/from16 v0, p1

    .line 5
    move/from16 v2, p3

    .line 7
    array-length v3, v0

    .line 8
    sub-int/2addr v3, v2

    .line 9
    move/from16 v4, p2

    .line 11
    if-lt v3, v4, :cond_4

    .line 13
    int-to-long v5, v2

    .line 14
    iget-object v3, v1, Lorg/bouncycastle/crypto/agreement/kdf/DHKEKGenerator;->digest:Lorg/bouncycastle/crypto/Digest;

    .line 16
    invoke-interface {v3}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    .line 19
    move-result v3

    .line 20
    const-wide v7, 0x1ffffffffL

    .line 25
    cmp-long v7, v5, v7

    .line 27
    if-gtz v7, :cond_3

    .line 29
    int-to-long v7, v3

    .line 30
    add-long v9, v5, v7

    .line 32
    const-wide/16 v11, 0x1

    .line 34
    sub-long/2addr v9, v11

    .line 35
    div-long/2addr v9, v7

    .line 36
    long-to-int v7, v9

    .line 37
    iget-object v8, v1, Lorg/bouncycastle/crypto/agreement/kdf/DHKEKGenerator;->digest:Lorg/bouncycastle/crypto/Digest;

    .line 39
    invoke-interface {v8}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    .line 42
    move-result v8

    .line 43
    new-array v8, v8, [B

    .line 45
    const/4 v10, 0x0

    .line 46
    move v11, v10

    .line 47
    const/4 v12, 0x1

    .line 48
    :goto_0
    if-ge v11, v7, :cond_2

    .line 50
    iget-object v13, v1, Lorg/bouncycastle/crypto/agreement/kdf/DHKEKGenerator;->digest:Lorg/bouncycastle/crypto/Digest;

    .line 52
    iget-object v14, v1, Lorg/bouncycastle/crypto/agreement/kdf/DHKEKGenerator;->z:[B

    .line 54
    array-length v15, v14

    .line 55
    invoke-interface {v13, v14, v10, v15}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 58
    new-instance v13, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    .line 60
    invoke-direct {v13}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 63
    new-instance v14, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    .line 65
    invoke-direct {v14}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 68
    iget-object v15, v1, Lorg/bouncycastle/crypto/agreement/kdf/DHKEKGenerator;->algorithm:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 70
    invoke-virtual {v14, v15}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 73
    new-instance v15, Lorg/bouncycastle/asn1/DEROctetString;

    .line 75
    invoke-static {v12}, Lorg/bouncycastle/util/Pack;->intToBigEndian(I)[B

    .line 78
    move-result-object v9

    .line 79
    invoke-direct {v15, v9}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    .line 82
    invoke-virtual {v14, v15}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 85
    new-instance v9, Lorg/bouncycastle/asn1/DERSequence;

    .line 87
    invoke-direct {v9, v14}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    .line 90
    invoke-virtual {v13, v9}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 93
    iget-object v9, v1, Lorg/bouncycastle/crypto/agreement/kdf/DHKEKGenerator;->partyAInfo:[B

    .line 95
    if-eqz v9, :cond_0

    .line 97
    new-instance v9, Lorg/bouncycastle/asn1/DERTaggedObject;

    .line 99
    new-instance v14, Lorg/bouncycastle/asn1/DEROctetString;

    .line 101
    iget-object v15, v1, Lorg/bouncycastle/crypto/agreement/kdf/DHKEKGenerator;->partyAInfo:[B

    .line 103
    invoke-direct {v14, v15}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    .line 106
    const/4 v15, 0x1

    .line 107
    invoke-direct {v9, v15, v10, v14}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 110
    invoke-virtual {v13, v9}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 113
    goto :goto_1

    .line 114
    :cond_0
    const/4 v15, 0x1

    .line 115
    :goto_1
    new-instance v9, Lorg/bouncycastle/asn1/DERTaggedObject;

    .line 117
    new-instance v14, Lorg/bouncycastle/asn1/DEROctetString;

    .line 119
    iget v10, v1, Lorg/bouncycastle/crypto/agreement/kdf/DHKEKGenerator;->keySize:I

    .line 121
    invoke-static {v10}, Lorg/bouncycastle/util/Pack;->intToBigEndian(I)[B

    .line 124
    move-result-object v10

    .line 125
    invoke-direct {v14, v10}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    .line 128
    const/4 v10, 0x2

    .line 129
    invoke-direct {v9, v15, v10, v14}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 132
    invoke-virtual {v13, v9}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 135
    :try_start_0
    new-instance v9, Lorg/bouncycastle/asn1/DERSequence;

    .line 137
    invoke-direct {v9, v13}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    .line 140
    const-string v10, "DER"

    .line 142
    invoke-virtual {v9, v10}, Lorg/bouncycastle/asn1/ASN1Object;->getEncoded(Ljava/lang/String;)[B

    .line 145
    move-result-object v9

    .line 146
    iget-object v10, v1, Lorg/bouncycastle/crypto/agreement/kdf/DHKEKGenerator;->digest:Lorg/bouncycastle/crypto/Digest;

    .line 148
    array-length v13, v9

    .line 149
    const/4 v14, 0x0

    .line 150
    invoke-interface {v10, v9, v14, v13}, Lorg/bouncycastle/crypto/Digest;->update([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    iget-object v9, v1, Lorg/bouncycastle/crypto/agreement/kdf/DHKEKGenerator;->digest:Lorg/bouncycastle/crypto/Digest;

    .line 155
    invoke-interface {v9, v8, v14}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 158
    if-le v2, v3, :cond_1

    .line 160
    invoke-static {v8, v14, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 163
    add-int/2addr v4, v3

    .line 164
    sub-int/2addr v2, v3

    .line 165
    goto :goto_2

    .line 166
    :cond_1
    invoke-static {v8, v14, v0, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 169
    :goto_2
    add-int/lit8 v12, v12, 0x1

    .line 171
    add-int/lit8 v11, v11, 0x1

    .line 173
    move v10, v14

    .line 174
    goto :goto_0

    .line 175
    :catch_0
    move-exception v0

    .line 176
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 178
    new-instance v3, Ljava/lang/StringBuilder;

    .line 180
    const-string v4, "unable to encode parameter info: "

    .line 182
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 185
    invoke-static {v0, v3}, Lo/Ve;->d(Ljava/io/IOException;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 188
    move-result-object v0

    .line 189
    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 192
    throw v2

    .line 193
    :cond_2
    iget-object v0, v1, Lorg/bouncycastle/crypto/agreement/kdf/DHKEKGenerator;->digest:Lorg/bouncycastle/crypto/Digest;

    .line 195
    invoke-interface {v0}, Lorg/bouncycastle/crypto/Digest;->reset()V

    .line 198
    long-to-int v0, v5

    .line 199
    return v0

    .line 200
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 202
    const-string v2, "Output length too large"

    .line 204
    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 207
    throw v0

    .line 208
    :cond_4
    new-instance v0, Lorg/bouncycastle/crypto/OutputLengthException;

    .line 210
    const-string v2, "output buffer too small"

    .line 212
    invoke-direct {v0, v2}, Lorg/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    .line 215
    throw v0
.end method

.method public getDigest()Lorg/bouncycastle/crypto/Digest;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/agreement/kdf/DHKEKGenerator;->digest:Lorg/bouncycastle/crypto/Digest;

    return-object v0
.end method

.method public init(Lorg/bouncycastle/crypto/DerivationParameters;)V
    .locals 1

    check-cast p1, Lorg/bouncycastle/crypto/agreement/kdf/DHKDFParameters;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/agreement/kdf/DHKDFParameters;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/agreement/kdf/DHKEKGenerator;->algorithm:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/agreement/kdf/DHKDFParameters;->getKeySize()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/crypto/agreement/kdf/DHKEKGenerator;->keySize:I

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/agreement/kdf/DHKDFParameters;->getZ()[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/agreement/kdf/DHKEKGenerator;->z:[B

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/agreement/kdf/DHKDFParameters;->getExtraInfo()[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/crypto/agreement/kdf/DHKEKGenerator;->partyAInfo:[B

    return-void
.end method
