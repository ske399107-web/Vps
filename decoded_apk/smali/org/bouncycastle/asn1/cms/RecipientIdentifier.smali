.class public Lorg/bouncycastle/asn1/cms/RecipientIdentifier;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/asn1/ASN1Choice;


# instance fields
.field private id:Lorg/bouncycastle/asn1/ASN1Encodable;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1OctetString;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/asn1/DERTaggedObject;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, p1}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    iput-object v0, p0, Lorg/bouncycastle/asn1/cms/RecipientIdentifier;->id:Lorg/bouncycastle/asn1/ASN1Encodable;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1Primitive;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/asn1/cms/RecipientIdentifier;->id:Lorg/bouncycastle/asn1/ASN1Encodable;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/cms/IssuerAndSerialNumber;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/asn1/cms/RecipientIdentifier;->id:Lorg/bouncycastle/asn1/ASN1Encodable;

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cms/RecipientIdentifier;
    .locals 2

    .line 1
    if-eqz p0, :cond_4

    .line 3
    instance-of v0, p0, Lorg/bouncycastle/asn1/cms/RecipientIdentifier;

    .line 5
    if-eqz v0, :cond_0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    instance-of v0, p0, Lorg/bouncycastle/asn1/cms/IssuerAndSerialNumber;

    .line 10
    if-eqz v0, :cond_1

    .line 12
    new-instance v0, Lorg/bouncycastle/asn1/cms/RecipientIdentifier;

    .line 14
    check-cast p0, Lorg/bouncycastle/asn1/cms/IssuerAndSerialNumber;

    .line 16
    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/cms/RecipientIdentifier;-><init>(Lorg/bouncycastle/asn1/cms/IssuerAndSerialNumber;)V

    .line 19
    return-object v0

    .line 20
    :cond_1
    instance-of v0, p0, Lorg/bouncycastle/asn1/ASN1OctetString;

    .line 22
    if-eqz v0, :cond_2

    .line 24
    new-instance v0, Lorg/bouncycastle/asn1/cms/RecipientIdentifier;

    .line 26
    check-cast p0, Lorg/bouncycastle/asn1/ASN1OctetString;

    .line 28
    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/cms/RecipientIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1OctetString;)V

    .line 31
    return-object v0

    .line 32
    :cond_2
    instance-of v0, p0, Lorg/bouncycastle/asn1/ASN1Primitive;

    .line 34
    if-eqz v0, :cond_3

    .line 36
    new-instance v0, Lorg/bouncycastle/asn1/cms/RecipientIdentifier;

    .line 38
    check-cast p0, Lorg/bouncycastle/asn1/ASN1Primitive;

    .line 40
    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/cms/RecipientIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1Primitive;)V

    .line 43
    return-object v0

    .line 44
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 46
    const-string v1, "Illegal object in RecipientIdentifier: "

    .line 48
    invoke-static {p0, v1}, Lo/Ve;->f(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    .line 51
    move-result-object p0

    .line 52
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 55
    throw v0

    .line 56
    :cond_4
    :goto_0
    check-cast p0, Lorg/bouncycastle/asn1/cms/RecipientIdentifier;

    .line 58
    return-object p0
.end method


# virtual methods
.method public getId()Lorg/bouncycastle/asn1/ASN1Encodable;
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/RecipientIdentifier;->id:Lorg/bouncycastle/asn1/ASN1Encodable;

    instance-of v1, v0, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-static {v0}, Lorg/bouncycastle/asn1/cms/IssuerAndSerialNumber;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cms/IssuerAndSerialNumber;

    move-result-object v0

    return-object v0
.end method

.method public isTagged()Z
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/RecipientIdentifier;->id:Lorg/bouncycastle/asn1/ASN1Encodable;

    instance-of v0, v0, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    return v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/RecipientIdentifier;->id:Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {v0}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    return-object v0
.end method
