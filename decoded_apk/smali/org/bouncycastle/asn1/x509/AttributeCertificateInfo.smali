.class public Lorg/bouncycastle/asn1/x509/AttributeCertificateInfo;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "SourceFile"


# instance fields
.field private attrCertValidityPeriod:Lorg/bouncycastle/asn1/x509/AttCertValidityPeriod;

.field private attributes:Lorg/bouncycastle/asn1/ASN1Sequence;

.field private extensions:Lorg/bouncycastle/asn1/x509/Extensions;

.field private holder:Lorg/bouncycastle/asn1/x509/Holder;

.field private issuer:Lorg/bouncycastle/asn1/x509/AttCertIssuer;

.field private issuerUniqueID:Lorg/bouncycastle/asn1/ASN1BitString;

.field private serialNumber:Lorg/bouncycastle/asn1/ASN1Integer;

.field private signature:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private version:Lorg/bouncycastle/asn1/ASN1Integer;


# direct methods
.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 4
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    .line 7
    move-result v0

    .line 8
    const/4 v1, 0x6

    .line 9
    if-lt v0, v1, :cond_5

    .line 11
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    .line 14
    move-result v0

    .line 15
    const/16 v2, 0x9

    .line 17
    if-gt v0, v2, :cond_5

    .line 19
    const/4 v0, 0x0

    .line 20
    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 23
    move-result-object v2

    .line 24
    instance-of v2, v2, Lorg/bouncycastle/asn1/ASN1Integer;

    .line 26
    if-eqz v2, :cond_0

    .line 28
    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 31
    move-result-object v0

    .line 32
    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Integer;

    .line 35
    move-result-object v0

    .line 36
    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/AttributeCertificateInfo;->version:Lorg/bouncycastle/asn1/ASN1Integer;

    .line 38
    const/4 v0, 0x1

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    new-instance v2, Lorg/bouncycastle/asn1/ASN1Integer;

    .line 42
    const-wide/16 v3, 0x0

    .line 44
    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    .line 47
    iput-object v2, p0, Lorg/bouncycastle/asn1/x509/AttributeCertificateInfo;->version:Lorg/bouncycastle/asn1/ASN1Integer;

    .line 49
    :goto_0
    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 52
    move-result-object v2

    .line 53
    invoke-static {v2}, Lorg/bouncycastle/asn1/x509/Holder;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/Holder;

    .line 56
    move-result-object v2

    .line 57
    iput-object v2, p0, Lorg/bouncycastle/asn1/x509/AttributeCertificateInfo;->holder:Lorg/bouncycastle/asn1/x509/Holder;

    .line 59
    add-int/lit8 v2, v0, 0x1

    .line 61
    invoke-virtual {p1, v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 64
    move-result-object v2

    .line 65
    invoke-static {v2}, Lorg/bouncycastle/asn1/x509/AttCertIssuer;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/AttCertIssuer;

    .line 68
    move-result-object v2

    .line 69
    iput-object v2, p0, Lorg/bouncycastle/asn1/x509/AttributeCertificateInfo;->issuer:Lorg/bouncycastle/asn1/x509/AttCertIssuer;

    .line 71
    add-int/lit8 v2, v0, 0x2

    .line 73
    invoke-virtual {p1, v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 76
    move-result-object v2

    .line 77
    invoke-static {v2}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 80
    move-result-object v2

    .line 81
    iput-object v2, p0, Lorg/bouncycastle/asn1/x509/AttributeCertificateInfo;->signature:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 83
    add-int/lit8 v2, v0, 0x3

    .line 85
    invoke-virtual {p1, v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 88
    move-result-object v2

    .line 89
    invoke-static {v2}, Lorg/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Integer;

    .line 92
    move-result-object v2

    .line 93
    iput-object v2, p0, Lorg/bouncycastle/asn1/x509/AttributeCertificateInfo;->serialNumber:Lorg/bouncycastle/asn1/ASN1Integer;

    .line 95
    add-int/lit8 v2, v0, 0x4

    .line 97
    invoke-virtual {p1, v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 100
    move-result-object v2

    .line 101
    invoke-static {v2}, Lorg/bouncycastle/asn1/x509/AttCertValidityPeriod;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/AttCertValidityPeriod;

    .line 104
    move-result-object v2

    .line 105
    iput-object v2, p0, Lorg/bouncycastle/asn1/x509/AttributeCertificateInfo;->attrCertValidityPeriod:Lorg/bouncycastle/asn1/x509/AttCertValidityPeriod;

    .line 107
    add-int/lit8 v2, v0, 0x5

    .line 109
    invoke-virtual {p1, v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 112
    move-result-object v2

    .line 113
    invoke-static {v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 116
    move-result-object v2

    .line 117
    iput-object v2, p0, Lorg/bouncycastle/asn1/x509/AttributeCertificateInfo;->attributes:Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 119
    add-int/2addr v0, v1

    .line 120
    :goto_1
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    .line 123
    move-result v1

    .line 124
    if-ge v0, v1, :cond_4

    .line 126
    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 129
    move-result-object v1

    .line 130
    instance-of v2, v1, Lorg/bouncycastle/asn1/ASN1BitString;

    .line 132
    if-eqz v2, :cond_1

    .line 134
    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 137
    move-result-object v1

    .line 138
    invoke-static {v1}, Lorg/bouncycastle/asn1/ASN1BitString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1BitString;

    .line 141
    move-result-object v1

    .line 142
    iput-object v1, p0, Lorg/bouncycastle/asn1/x509/AttributeCertificateInfo;->issuerUniqueID:Lorg/bouncycastle/asn1/ASN1BitString;

    .line 144
    goto :goto_2

    .line 145
    :cond_1
    instance-of v2, v1, Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 147
    if-nez v2, :cond_2

    .line 149
    instance-of v1, v1, Lorg/bouncycastle/asn1/x509/Extensions;

    .line 151
    if-eqz v1, :cond_3

    .line 153
    :cond_2
    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 156
    move-result-object v1

    .line 157
    invoke-static {v1}, Lorg/bouncycastle/asn1/x509/Extensions;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/Extensions;

    .line 160
    move-result-object v1

    .line 161
    iput-object v1, p0, Lorg/bouncycastle/asn1/x509/AttributeCertificateInfo;->extensions:Lorg/bouncycastle/asn1/x509/Extensions;

    .line 163
    :cond_3
    :goto_2
    add-int/lit8 v0, v0, 0x1

    .line 165
    goto :goto_1

    .line 166
    :cond_4
    return-void

    .line 167
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 169
    new-instance v1, Ljava/lang/StringBuilder;

    .line 171
    const-string v2, "Bad sequence size: "

    .line 173
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 176
    invoke-static {p1, v1}, Lo/Ve;->n(Lorg/bouncycastle/asn1/ASN1Sequence;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 179
    move-result-object p1

    .line 180
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 183
    throw v0
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/AttributeCertificateInfo;
    .locals 1

    .line 1
    instance-of v0, p0, Lorg/bouncycastle/asn1/x509/AttributeCertificateInfo;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/asn1/x509/AttributeCertificateInfo;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lorg/bouncycastle/asn1/x509/AttributeCertificateInfo;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/x509/AttributeCertificateInfo;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/x509/AttributeCertificateInfo;
    .locals 0

    .line 2
    invoke-static {p0, p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/asn1/x509/AttributeCertificateInfo;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/AttributeCertificateInfo;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getAttrCertValidityPeriod()Lorg/bouncycastle/asn1/x509/AttCertValidityPeriod;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/AttributeCertificateInfo;->attrCertValidityPeriod:Lorg/bouncycastle/asn1/x509/AttCertValidityPeriod;

    return-object v0
.end method

.method public getAttributes()Lorg/bouncycastle/asn1/ASN1Sequence;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/AttributeCertificateInfo;->attributes:Lorg/bouncycastle/asn1/ASN1Sequence;

    return-object v0
.end method

.method public getExtensions()Lorg/bouncycastle/asn1/x509/Extensions;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/AttributeCertificateInfo;->extensions:Lorg/bouncycastle/asn1/x509/Extensions;

    return-object v0
.end method

.method public getHolder()Lorg/bouncycastle/asn1/x509/Holder;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/AttributeCertificateInfo;->holder:Lorg/bouncycastle/asn1/x509/Holder;

    return-object v0
.end method

.method public getIssuer()Lorg/bouncycastle/asn1/x509/AttCertIssuer;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/AttributeCertificateInfo;->issuer:Lorg/bouncycastle/asn1/x509/AttCertIssuer;

    return-object v0
.end method

.method public getIssuerUniqueID()Lorg/bouncycastle/asn1/ASN1BitString;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/AttributeCertificateInfo;->issuerUniqueID:Lorg/bouncycastle/asn1/ASN1BitString;

    return-object v0
.end method

.method public getSerialNumber()Lorg/bouncycastle/asn1/ASN1Integer;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/AttributeCertificateInfo;->serialNumber:Lorg/bouncycastle/asn1/ASN1Integer;

    return-object v0
.end method

.method public getSignature()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/AttributeCertificateInfo;->signature:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public getVersion()Lorg/bouncycastle/asn1/ASN1Integer;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/AttributeCertificateInfo;->version:Lorg/bouncycastle/asn1/ASN1Integer;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 3

    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/x509/AttributeCertificateInfo;->version:Lorg/bouncycastle/asn1/ASN1Integer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/ASN1Integer;->hasValue(I)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/bouncycastle/asn1/x509/AttributeCertificateInfo;->version:Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/asn1/x509/AttributeCertificateInfo;->holder:Lorg/bouncycastle/asn1/x509/Holder;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/x509/AttributeCertificateInfo;->issuer:Lorg/bouncycastle/asn1/x509/AttCertIssuer;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/x509/AttributeCertificateInfo;->signature:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/x509/AttributeCertificateInfo;->serialNumber:Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/x509/AttributeCertificateInfo;->attrCertValidityPeriod:Lorg/bouncycastle/asn1/x509/AttCertValidityPeriod;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/x509/AttributeCertificateInfo;->attributes:Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/x509/AttributeCertificateInfo;->issuerUniqueID:Lorg/bouncycastle/asn1/ASN1BitString;

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_1
    iget-object v1, p0, Lorg/bouncycastle/asn1/x509/AttributeCertificateInfo;->extensions:Lorg/bouncycastle/asn1/x509/Extensions;

    if-eqz v1, :cond_2

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_2
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
