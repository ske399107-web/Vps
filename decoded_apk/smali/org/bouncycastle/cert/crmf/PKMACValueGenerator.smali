.class abstract Lorg/bouncycastle/cert/crmf/PKMACValueGenerator;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static generate(Lorg/bouncycastle/cert/crmf/PKMACBuilder;[CLorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)Lorg/bouncycastle/asn1/crmf/PKMACValue;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cert/crmf/CRMFException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lorg/bouncycastle/cert/crmf/PKMACBuilder;->build([C)Lorg/bouncycastle/operator/MacCalculator;

    .line 4
    move-result-object p0

    .line 5
    invoke-interface {p0}, Lorg/bouncycastle/operator/MacCalculator;->getOutputStream()Ljava/io/OutputStream;

    .line 8
    move-result-object p1

    .line 9
    :try_start_0
    const-string v0, "DER"

    .line 11
    invoke-virtual {p2, v0}, Lorg/bouncycastle/asn1/ASN1Object;->getEncoded(Ljava/lang/String;)[B

    .line 14
    move-result-object p2

    .line 15
    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    .line 18
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    new-instance p1, Lorg/bouncycastle/asn1/crmf/PKMACValue;

    .line 23
    invoke-interface {p0}, Lorg/bouncycastle/operator/MacCalculator;->getAlgorithmIdentifier()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 26
    move-result-object p2

    .line 27
    new-instance v0, Lorg/bouncycastle/asn1/DERBitString;

    .line 29
    invoke-interface {p0}, Lorg/bouncycastle/operator/MacCalculator;->getMac()[B

    .line 32
    move-result-object p0

    .line 33
    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/DERBitString;-><init>([B)V

    .line 36
    invoke-direct {p1, p2, v0}, Lorg/bouncycastle/asn1/crmf/PKMACValue;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/DERBitString;)V

    .line 39
    return-object p1

    .line 40
    :catch_0
    move-exception p0

    .line 41
    new-instance p1, Lorg/bouncycastle/cert/crmf/CRMFException;

    .line 43
    new-instance p2, Ljava/lang/StringBuilder;

    .line 45
    const-string v0, "exception encoding mac input: "

    .line 47
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50
    invoke-static {p0, p2}, Lo/Ve;->d(Ljava/io/IOException;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 53
    move-result-object p2

    .line 54
    invoke-direct {p1, p2, p0}, Lorg/bouncycastle/cert/crmf/CRMFException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 57
    throw p1
.end method
