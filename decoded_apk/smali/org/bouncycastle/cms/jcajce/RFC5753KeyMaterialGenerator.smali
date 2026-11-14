.class Lorg/bouncycastle/cms/jcajce/RFC5753KeyMaterialGenerator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/cms/jcajce/KeyMaterialGenerator;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public generateKDFMaterial(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;I[B)[B
    .locals 1

    .line 1
    new-instance v0, Lorg/bouncycastle/asn1/cms/ecc/ECCCMSSharedInfo;

    .line 3
    invoke-static {p2}, Lorg/bouncycastle/util/Pack;->intToBigEndian(I)[B

    .line 6
    move-result-object p2

    .line 7
    invoke-direct {v0, p1, p3, p2}, Lorg/bouncycastle/asn1/cms/ecc/ECCCMSSharedInfo;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[B[B)V

    .line 10
    :try_start_0
    const-string p1, "DER"

    .line 12
    invoke-virtual {v0, p1}, Lorg/bouncycastle/asn1/ASN1Object;->getEncoded(Ljava/lang/String;)[B

    .line 15
    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    return-object p1

    .line 17
    :catch_0
    move-exception p1

    .line 18
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 20
    const-string p3, "Unable to create KDF material: "

    .line 22
    invoke-static {p3, p1}, Lo/o5;->f(Ljava/lang/String;Ljava/io/IOException;)Ljava/lang/String;

    .line 25
    move-result-object p1

    .line 26
    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 29
    throw p2
.end method
