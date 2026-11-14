.class public Lorg/bouncycastle/eac/EACCertificateRequestHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private request:Lorg/bouncycastle/asn1/eac/CVCertificateRequest;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/eac/CVCertificateRequest;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/eac/EACCertificateRequestHolder;->request:Lorg/bouncycastle/asn1/eac/CVCertificateRequest;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    invoke-static {p1}, Lorg/bouncycastle/eac/EACCertificateRequestHolder;->parseBytes([B)Lorg/bouncycastle/asn1/eac/CVCertificateRequest;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/eac/EACCertificateRequestHolder;-><init>(Lorg/bouncycastle/asn1/eac/CVCertificateRequest;)V

    return-void
.end method

.method private static parseBytes([B)Lorg/bouncycastle/asn1/eac/CVCertificateRequest;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const-string v0, "malformed data: "

    .line 3
    :try_start_0
    invoke-static {p0}, Lorg/bouncycastle/asn1/eac/CVCertificateRequest;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/eac/CVCertificateRequest;

    .line 6
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/bouncycastle/asn1/ASN1ParsingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    return-object p0

    .line 8
    :catch_0
    move-exception p0

    .line 9
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1ParsingException;->getCause()Ljava/lang/Throwable;

    .line 12
    move-result-object v1

    .line 13
    instance-of v1, v1, Ljava/io/IOException;

    .line 15
    if-eqz v1, :cond_0

    .line 17
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1ParsingException;->getCause()Ljava/lang/Throwable;

    .line 20
    move-result-object p0

    .line 21
    check-cast p0, Ljava/io/IOException;

    .line 23
    throw p0

    .line 24
    :cond_0
    new-instance v1, Lorg/bouncycastle/eac/EACIOException;

    .line 26
    new-instance v2, Ljava/lang/StringBuilder;

    .line 28
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    move-result-object v0

    .line 42
    invoke-direct {v1, v0, p0}, Lorg/bouncycastle/eac/EACIOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 45
    throw v1

    .line 46
    :catch_1
    move-exception p0

    .line 47
    new-instance v1, Lorg/bouncycastle/eac/EACIOException;

    .line 49
    new-instance v2, Ljava/lang/StringBuilder;

    .line 51
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 54
    invoke-static {p0, v2}, Lo/jf;->c(Ljava/lang/IllegalArgumentException;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 57
    move-result-object v0

    .line 58
    invoke-direct {v1, v0, p0}, Lorg/bouncycastle/eac/EACIOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 61
    throw v1

    .line 62
    :catch_2
    move-exception p0

    .line 63
    new-instance v1, Lorg/bouncycastle/eac/EACIOException;

    .line 65
    new-instance v2, Ljava/lang/StringBuilder;

    .line 67
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 73
    move-result-object v0

    .line 74
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    move-result-object v0

    .line 81
    invoke-direct {v1, v0, p0}, Lorg/bouncycastle/eac/EACIOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 84
    throw v1
.end method


# virtual methods
.method public getPublicKeyDataObject()Lorg/bouncycastle/asn1/eac/PublicKeyDataObject;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/eac/EACCertificateRequestHolder;->request:Lorg/bouncycastle/asn1/eac/CVCertificateRequest;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/eac/CVCertificateRequest;->getPublicKey()Lorg/bouncycastle/asn1/eac/PublicKeyDataObject;

    move-result-object v0

    return-object v0
.end method

.method public isInnerSignatureValid(Lorg/bouncycastle/eac/operator/EACSignatureVerifier;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/eac/EACException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-interface {p1}, Lorg/bouncycastle/eac/operator/EACSignatureVerifier;->getOutputStream()Ljava/io/OutputStream;

    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lorg/bouncycastle/eac/EACCertificateRequestHolder;->request:Lorg/bouncycastle/asn1/eac/CVCertificateRequest;

    .line 7
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/eac/CVCertificateRequest;->getCertificateBody()Lorg/bouncycastle/asn1/eac/CertificateBody;

    .line 10
    move-result-object v1

    .line 11
    const-string v2, "DER"

    .line 13
    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/ASN1Object;->getEncoded(Ljava/lang/String;)[B

    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 20
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 23
    iget-object v0, p0, Lorg/bouncycastle/eac/EACCertificateRequestHolder;->request:Lorg/bouncycastle/asn1/eac/CVCertificateRequest;

    .line 25
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/eac/CVCertificateRequest;->getInnerSignature()[B

    .line 28
    move-result-object v0

    .line 29
    invoke-interface {p1, v0}, Lorg/bouncycastle/eac/operator/EACSignatureVerifier;->verify([B)Z

    .line 32
    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    return p1

    .line 34
    :catch_0
    move-exception p1

    .line 35
    new-instance v0, Lorg/bouncycastle/eac/EACException;

    .line 37
    new-instance v1, Ljava/lang/StringBuilder;

    .line 39
    const-string v2, "unable to process signature: "

    .line 41
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 44
    invoke-static {p1, v1}, Lo/jf;->b(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 47
    move-result-object v1

    .line 48
    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/eac/EACException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 51
    throw v0
.end method

.method public toASN1Structure()Lorg/bouncycastle/asn1/eac/CVCertificateRequest;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/eac/EACCertificateRequestHolder;->request:Lorg/bouncycastle/asn1/eac/CVCertificateRequest;

    return-object v0
.end method
