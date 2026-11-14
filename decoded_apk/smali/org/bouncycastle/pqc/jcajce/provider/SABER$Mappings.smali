.class public Lorg/bouncycastle/pqc/jcajce/provider/SABER$Mappings;
.super Lorg/bouncycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/pqc/jcajce/provider/SABER;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Mappings"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public configure(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;)V
    .locals 4

    .line 1
    const-string v0, "KeyFactory.SABER"

    .line 3
    const-string v1, "org.bouncycastle.pqc.jcajce.provider.saber.SABERKeyFactorySpi"

    .line 5
    invoke-interface {p1, v0, v1}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    const-string v0, "KeyPairGenerator.SABER"

    .line 10
    const-string v1, "org.bouncycastle.pqc.jcajce.provider.saber.SABERKeyPairGeneratorSpi"

    .line 12
    invoke-interface {p1, v0, v1}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    const-string v0, "KeyGenerator.SABER"

    .line 17
    const-string v1, "org.bouncycastle.pqc.jcajce.provider.saber.SABERKeyGeneratorSpi"

    .line 19
    invoke-interface {p1, v0, v1}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    new-instance v0, Lorg/bouncycastle/pqc/jcajce/provider/saber/SABERKeyFactorySpi;

    .line 24
    invoke-direct {v0}, Lorg/bouncycastle/pqc/jcajce/provider/saber/SABERKeyFactorySpi;-><init>()V

    .line 27
    const-string v1, "Cipher.SABER"

    .line 29
    const-string v2, "org.bouncycastle.pqc.jcajce.provider.saber.SABERCipherSpi$Base"

    .line 31
    const-string v3, "Alg.Alias.Cipher."

    .line 33
    invoke-static {p1, v1, v2, v3}, Lo/Ve;->s(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    move-result-object v1

    .line 37
    sget-object v2, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->pqc_kem_saber:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 39
    const-string v3, "SABER"

    .line 41
    invoke-static {v1, v2, p1, v3}, Lo/Ve;->u(Ljava/lang/StringBuilder;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;)V

    .line 44
    invoke-virtual {p0, p1, v2, v3, v0}, Lorg/bouncycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;->registerOid(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    .line 47
    invoke-virtual {p0, p1, v2, v3}, Lorg/bouncycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;->registerOidAlgorithmParameters(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    .line 50
    return-void
.end method
