.class public Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/operator/SignatureAlgorithmIdentifierFinder;


# static fields
.field private static algorithms:Ljava/util/Map;

.field private static digestOids:Ljava/util/Map;

.field private static noParams:Ljava/util/Set;

.field private static params:Ljava/util/Map;

.field private static pkcs15RsaEncryption:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 171

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->algorithms:Ljava/util/Map;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->params:Ljava/util/Map;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->pkcs15RsaEncryption:Ljava/util/Set;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->digestOids:Ljava/util/Map;

    const-string v0, "COMPOSITE"

    sget-object v1, Lorg/bouncycastle/asn1/misc/MiscObjectIdentifiers;->id_alg_composite:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v0, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->md2WithRSAEncryption:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "MD2WITHRSAENCRYPTION"

    invoke-static {v1, v0}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v1, "MD2WITHRSA"

    invoke-static {v1, v0}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v1, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->md5WithRSAEncryption:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "MD5WITHRSAENCRYPTION"

    invoke-static {v2, v1}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v2, "MD5WITHRSA"

    invoke-static {v2, v1}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v2, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->sha1WithRSAEncryption:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v3, "SHA1WITHRSAENCRYPTION"

    invoke-static {v3, v2}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v3, "SHA1WITHRSA"

    invoke-static {v3, v2}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v3, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->sha224WithRSAEncryption:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v4, "SHA224WITHRSAENCRYPTION"

    invoke-static {v4, v3}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v4, "SHA224WITHRSA"

    invoke-static {v4, v3}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v4, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->sha256WithRSAEncryption:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v5, "SHA256WITHRSAENCRYPTION"

    invoke-static {v5, v4}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v5, "SHA256WITHRSA"

    invoke-static {v5, v4}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v5, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->sha384WithRSAEncryption:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v6, "SHA384WITHRSAENCRYPTION"

    invoke-static {v6, v5}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v6, "SHA384WITHRSA"

    invoke-static {v6, v5}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v6, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->sha512WithRSAEncryption:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v7, "SHA512WITHRSAENCRYPTION"

    invoke-static {v7, v6}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v7, "SHA512WITHRSA"

    invoke-static {v7, v6}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v7, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->sha512_224WithRSAEncryption:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v8, "SHA512(224)WITHRSAENCRYPTION"

    invoke-static {v8, v7}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v8, "SHA512(224)WITHRSA"

    invoke-static {v8, v7}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v8, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->sha512_256WithRSAEncryption:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v9, "SHA512(256)WITHRSAENCRYPTION"

    invoke-static {v9, v8}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v9, "SHA512(256)WITHRSA"

    invoke-static {v9, v8}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v9, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_RSASSA_PSS:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v10, "SHA1WITHRSAANDMGF1"

    invoke-static {v10, v9}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v11, "SHA224WITHRSAANDMGF1"

    invoke-static {v11, v9}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v12, "SHA256WITHRSAANDMGF1"

    invoke-static {v12, v9}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v13, "SHA384WITHRSAANDMGF1"

    invoke-static {v13, v9}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v14, "SHA512WITHRSAANDMGF1"

    invoke-static {v14, v9}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v15, "SHA3-224WITHRSAANDMGF1"

    invoke-static {v15, v9}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    move-object/from16 v16, v1

    const-string v1, "SHA3-256WITHRSAANDMGF1"

    invoke-static {v1, v9}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    move-object/from16 v17, v0

    const-string v0, "SHA3-384WITHRSAANDMGF1"

    invoke-static {v0, v9}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    move-object/from16 v18, v0

    const-string v0, "SHA3-512WITHRSAANDMGF1"

    invoke-static {v0, v9}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v9, Lorg/bouncycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->rsaSignatureWithripemd160:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v19, v0

    const-string v0, "RIPEMD160WITHRSAENCRYPTION"

    invoke-static {v0, v9}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "RIPEMD160WITHRSA"

    invoke-static {v0, v9}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v0, Lorg/bouncycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->rsaSignatureWithripemd128:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v20, v1

    const-string v1, "RIPEMD128WITHRSAENCRYPTION"

    invoke-static {v1, v0}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v1, "RIPEMD128WITHRSA"

    invoke-static {v1, v0}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v1, Lorg/bouncycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->rsaSignatureWithripemd256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v21, v15

    const-string v15, "RIPEMD256WITHRSAENCRYPTION"

    invoke-static {v15, v1}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v15, "RIPEMD256WITHRSA"

    invoke-static {v15, v1}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v15, Lorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->id_dsa_with_sha1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v22, v14

    const-string v14, "SHA1WITHDSA"

    invoke-static {v14, v15}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v14, "DSAWITHSHA1"

    invoke-static {v14, v15}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v14, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->dsa_with_sha224:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v23, v13

    const-string v13, "SHA224WITHDSA"

    invoke-static {v13, v14}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v13, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->dsa_with_sha256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v24, v12

    const-string v12, "SHA256WITHDSA"

    invoke-static {v12, v13}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v12, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->dsa_with_sha384:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v25, v11

    const-string v11, "SHA384WITHDSA"

    invoke-static {v11, v12}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v11, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->dsa_with_sha512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v26, v10

    const-string v10, "SHA512WITHDSA"

    invoke-static {v10, v11}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v10, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_dsa_with_sha3_224:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v27, v1

    const-string v1, "SHA3-224WITHDSA"

    invoke-static {v1, v10}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v1, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_dsa_with_sha3_256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v28, v9

    const-string v9, "SHA3-256WITHDSA"

    invoke-static {v9, v1}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v9, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_dsa_with_sha3_384:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v29, v0

    const-string v0, "SHA3-384WITHDSA"

    invoke-static {v0, v9}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_dsa_with_sha3_512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v30, v8

    const-string v8, "SHA3-512WITHDSA"

    invoke-static {v8, v0}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v8, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_ecdsa_with_sha3_224:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v31, v7

    const-string v7, "SHA3-224WITHECDSA"

    invoke-static {v7, v8}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v7, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_ecdsa_with_sha3_256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v32, v6

    const-string v6, "SHA3-256WITHECDSA"

    invoke-static {v6, v7}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v6, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_ecdsa_with_sha3_384:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v33, v5

    const-string v5, "SHA3-384WITHECDSA"

    invoke-static {v5, v6}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v5, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_ecdsa_with_sha3_512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v34, v4

    const-string v4, "SHA3-512WITHECDSA"

    invoke-static {v4, v5}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v4, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_rsassa_pkcs1_v1_5_with_sha3_224:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v35, v3

    const-string v3, "SHA3-224WITHRSA"

    invoke-static {v3, v4}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v3, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_rsassa_pkcs1_v1_5_with_sha3_256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v36, v2

    const-string v2, "SHA3-256WITHRSA"

    invoke-static {v2, v3}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v2, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_rsassa_pkcs1_v1_5_with_sha3_384:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v37, v5

    const-string v5, "SHA3-384WITHRSA"

    invoke-static {v5, v2}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v5, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_rsassa_pkcs1_v1_5_with_sha3_512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v38, v6

    const-string v6, "SHA3-512WITHRSA"

    invoke-static {v6, v5}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v6, "SHA3-224WITHRSAENCRYPTION"

    invoke-static {v6, v4}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v6, "SHA3-256WITHRSAENCRYPTION"

    invoke-static {v6, v3}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v6, "SHA3-384WITHRSAENCRYPTION"

    invoke-static {v6, v2}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v6, "SHA3-512WITHRSAENCRYPTION"

    invoke-static {v6, v5}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v6, Lorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->ecdsa_with_SHA1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v39, v5

    const-string v5, "SHA1WITHECDSA"

    invoke-static {v5, v6}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v5, "ECDSAWITHSHA1"

    invoke-static {v5, v6}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v5, Lorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->ecdsa_with_SHA224:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v40, v2

    const-string v2, "SHA224WITHECDSA"

    invoke-static {v2, v5}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v2, Lorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->ecdsa_with_SHA256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v41, v3

    const-string v3, "SHA256WITHECDSA"

    invoke-static {v3, v2}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v3, Lorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->ecdsa_with_SHA384:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v42, v4

    const-string v4, "SHA384WITHECDSA"

    invoke-static {v4, v3}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v4, Lorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->ecdsa_with_SHA512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v43, v7

    const-string v7, "SHA512WITHECDSA"

    invoke-static {v7, v4}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v7, Lorg/bouncycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->gostR3411_94_with_gostR3410_94:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v44, v8

    const-string v8, "GOST3411WITHGOST3410"

    invoke-static {v8, v7}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v8, "GOST3411WITHGOST3410-94"

    invoke-static {v8, v7}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v8, Lorg/bouncycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->gostR3411_94_with_gostR3410_2001:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v45, v7

    const-string v7, "GOST3411WITHECGOST3410"

    invoke-static {v7, v8}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v7, "GOST3411WITHECGOST3410-2001"

    invoke-static {v7, v8}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v7, "GOST3411WITHGOST3410-2001"

    invoke-static {v7, v8}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v7, Lorg/bouncycastle/asn1/rosstandart/RosstandartObjectIdentifiers;->id_tc26_signwithdigest_gost_3410_12_256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v46, v8

    const-string v8, "GOST3411WITHECGOST3410-2012-256"

    invoke-static {v8, v7}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v8, Lorg/bouncycastle/asn1/rosstandart/RosstandartObjectIdentifiers;->id_tc26_signwithdigest_gost_3410_12_512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v47, v0

    const-string v0, "GOST3411WITHECGOST3410-2012-512"

    invoke-static {v0, v8}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "GOST3411WITHGOST3410-2012-256"

    invoke-static {v0, v7}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "GOST3411WITHGOST3410-2012-512"

    invoke-static {v0, v8}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "GOST3411-2012-256WITHECGOST3410-2012-256"

    invoke-static {v0, v7}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "GOST3411-2012-512WITHECGOST3410-2012-512"

    invoke-static {v0, v8}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "GOST3411-2012-256WITHGOST3410-2012-256"

    invoke-static {v0, v7}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "GOST3411-2012-512WITHGOST3410-2012-512"

    invoke-static {v0, v8}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "SHA1WITHCVC-ECDSA"

    move-object/from16 v48, v8

    sget-object v8, Lorg/bouncycastle/asn1/eac/EACObjectIdentifiers;->id_TA_ECDSA_SHA_1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v8}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "SHA224WITHCVC-ECDSA"

    sget-object v8, Lorg/bouncycastle/asn1/eac/EACObjectIdentifiers;->id_TA_ECDSA_SHA_224:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v8}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "SHA256WITHCVC-ECDSA"

    sget-object v8, Lorg/bouncycastle/asn1/eac/EACObjectIdentifiers;->id_TA_ECDSA_SHA_256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v8}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "SHA384WITHCVC-ECDSA"

    sget-object v8, Lorg/bouncycastle/asn1/eac/EACObjectIdentifiers;->id_TA_ECDSA_SHA_384:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v8}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "SHA512WITHCVC-ECDSA"

    sget-object v8, Lorg/bouncycastle/asn1/eac/EACObjectIdentifiers;->id_TA_ECDSA_SHA_512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v8}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v0, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincs256_with_SHA3_512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v8, "SHA3-512WITHSPHINCS256"

    invoke-static {v8, v0}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v8, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincs256_with_SHA512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v49, v0

    const-string v0, "SHA512WITHSPHINCS256"

    invoke-static {v0, v8}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "SHA1WITHPLAIN-ECDSA"

    move-object/from16 v50, v8

    sget-object v8, Lorg/bouncycastle/asn1/bsi/BSIObjectIdentifiers;->ecdsa_plain_SHA1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v8}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "RIPEMD160WITHPLAIN-ECDSA"

    sget-object v8, Lorg/bouncycastle/asn1/bsi/BSIObjectIdentifiers;->ecdsa_plain_RIPEMD160:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v8}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v0, Lorg/bouncycastle/asn1/bsi/BSIObjectIdentifiers;->ecdsa_plain_SHA224:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v8, "SHA224WITHPLAIN-ECDSA"

    invoke-static {v8, v0}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v8, Lorg/bouncycastle/asn1/bsi/BSIObjectIdentifiers;->ecdsa_plain_SHA256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v51, v7

    const-string v7, "SHA256WITHPLAIN-ECDSA"

    invoke-static {v7, v8}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v7, Lorg/bouncycastle/asn1/bsi/BSIObjectIdentifiers;->ecdsa_plain_SHA384:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v52, v8

    const-string v8, "SHA384WITHPLAIN-ECDSA"

    invoke-static {v8, v7}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v8, Lorg/bouncycastle/asn1/bsi/BSIObjectIdentifiers;->ecdsa_plain_SHA512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v53, v7

    const-string v7, "SHA512WITHPLAIN-ECDSA"

    invoke-static {v7, v8}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v7, Lorg/bouncycastle/asn1/bsi/BSIObjectIdentifiers;->ecdsa_plain_SHA3_224:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v54, v8

    const-string v8, "SHA3-224WITHPLAIN-ECDSA"

    invoke-static {v8, v7}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v8, Lorg/bouncycastle/asn1/bsi/BSIObjectIdentifiers;->ecdsa_plain_SHA3_256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v55, v7

    const-string v7, "SHA3-256WITHPLAIN-ECDSA"

    invoke-static {v7, v8}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v7, Lorg/bouncycastle/asn1/bsi/BSIObjectIdentifiers;->ecdsa_plain_SHA3_384:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v56, v8

    const-string v8, "SHA3-384WITHPLAIN-ECDSA"

    invoke-static {v8, v7}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v8, Lorg/bouncycastle/asn1/bsi/BSIObjectIdentifiers;->ecdsa_plain_SHA3_512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v57, v7

    const-string v7, "SHA3-512WITHPLAIN-ECDSA"

    invoke-static {v7, v8}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v7, Lorg/bouncycastle/asn1/edec/EdECObjectIdentifiers;->id_Ed25519:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v58, v8

    const-string v8, "ED25519"

    invoke-static {v8, v7}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v8, Lorg/bouncycastle/asn1/edec/EdECObjectIdentifiers;->id_Ed448:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v59, v7

    const-string v7, "ED448"

    invoke-static {v7, v8}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v7, Lorg/bouncycastle/asn1/x509/X509ObjectIdentifiers;->id_rsassa_pss_shake128:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v60, v8

    const-string v8, "SHAKE128WITHRSAPSS"

    invoke-static {v8, v7}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v8, Lorg/bouncycastle/asn1/x509/X509ObjectIdentifiers;->id_rsassa_pss_shake256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v61, v0

    const-string v0, "SHAKE256WITHRSAPSS"

    invoke-static {v0, v8}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "SHAKE128WITHRSASSA-PSS"

    invoke-static {v0, v7}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "SHAKE256WITHRSASSA-PSS"

    invoke-static {v0, v8}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v0, Lorg/bouncycastle/asn1/x509/X509ObjectIdentifiers;->id_ecdsa_with_shake128:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v62, v8

    const-string v8, "SHAKE128WITHECDSA"

    invoke-static {v8, v0}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v8, Lorg/bouncycastle/asn1/x509/X509ObjectIdentifiers;->id_ecdsa_with_shake256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v63, v0

    const-string v0, "SHAKE256WITHECDSA"

    invoke-static {v0, v8}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v0, Lorg/bouncycastle/asn1/gm/GMObjectIdentifiers;->sm2sign_with_sha256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v64, v8

    const-string v8, "SHA256WITHSM2"

    invoke-static {v8, v0}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v8, Lorg/bouncycastle/asn1/gm/GMObjectIdentifiers;->sm2sign_with_sm3:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v65, v7

    const-string v7, "SM3WITHSM2"

    invoke-static {v7, v8}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v7, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->xmss_SHA256ph:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v66, v8

    const-string v8, "SHA256WITHXMSS"

    invoke-static {v8, v7}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v8, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->xmss_SHA512ph:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v67, v0

    const-string v0, "SHA512WITHXMSS"

    invoke-static {v0, v8}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v0, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->xmss_SHAKE128ph:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v68, v9

    const-string v9, "SHAKE128WITHXMSS"

    invoke-static {v9, v0}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v9, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->xmss_SHAKE256ph:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v69, v1

    const-string v1, "SHAKE256WITHXMSS"

    invoke-static {v1, v9}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v1, "SHAKE128(512)WITHXMSS"

    move-object/from16 v70, v10

    sget-object v10, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->xmss_SHAKE128_512ph:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v1, v10}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v1, "SHAKE256(1024)WITHXMSS"

    sget-object v10, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->xmss_SHAKE256_1024ph:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v1, v10}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v1, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->xmss_mt_SHA256ph:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v10, "SHA256WITHXMSSMT"

    invoke-static {v10, v1}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v10, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->xmss_mt_SHA512ph:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v71, v11

    const-string v11, "SHA512WITHXMSSMT"

    invoke-static {v11, v10}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v11, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->xmss_mt_SHAKE128ph:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v72, v12

    const-string v12, "SHAKE128WITHXMSSMT"

    invoke-static {v12, v11}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v12, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->xmss_mt_SHAKE256ph:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v73, v13

    const-string v13, "SHAKE256WITHXMSSMT"

    invoke-static {v13, v12}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v13, "SHA256WITHXMSS-SHA256"

    invoke-static {v13, v7}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v13, "SHA512WITHXMSS-SHA512"

    invoke-static {v13, v8}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v13, "SHAKE128WITHXMSS-SHAKE128"

    invoke-static {v13, v0}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v13, "SHAKE256WITHXMSS-SHAKE256"

    invoke-static {v13, v9}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v13, "SHA256WITHXMSSMT-SHA256"

    invoke-static {v13, v1}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v13, "SHA512WITHXMSSMT-SHA512"

    invoke-static {v13, v10}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v13, "SHAKE128WITHXMSSMT-SHAKE128"

    invoke-static {v13, v11}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v13, "SHAKE256WITHXMSSMT-SHAKE256"

    invoke-static {v13, v12}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v13, "SHAKE128(512)WITHXMSSMT-SHAKE128"

    move-object/from16 v74, v12

    sget-object v12, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->xmss_mt_SHAKE128_512ph:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v13, v12}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v12, "SHAKE256(1024)WITHXMSSMT-SHAKE256"

    sget-object v13, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->xmss_mt_SHAKE256_1024ph:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v12, v13}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v12, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_alg_hss_lms_hashsig:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v13, "LMS"

    invoke-static {v13, v12}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v13, Lorg/bouncycastle/asn1/isara/IsaraObjectIdentifiers;->id_alg_xmss:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v75, v11

    const-string v11, "XMSS"

    invoke-static {v11, v13}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v11, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->xmss_SHA256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v76, v13

    const-string v13, "XMSS-SHA256"

    invoke-static {v13, v11}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v13, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->xmss_SHA512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v77, v11

    const-string v11, "XMSS-SHA512"

    invoke-static {v11, v13}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v11, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->xmss_SHAKE128:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v78, v13

    const-string v13, "XMSS-SHAKE128"

    invoke-static {v13, v11}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v13, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->xmss_SHAKE256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v79, v11

    const-string v11, "XMSS-SHAKE256"

    invoke-static {v11, v13}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v11, Lorg/bouncycastle/asn1/isara/IsaraObjectIdentifiers;->id_alg_xmssmt:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v80, v13

    const-string v13, "XMSSMT"

    invoke-static {v13, v11}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v13, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->xmss_mt_SHA256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v81, v11

    const-string v11, "XMSSMT-SHA256"

    invoke-static {v11, v13}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v11, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->xmss_mt_SHA512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v82, v13

    const-string v13, "XMSSMT-SHA512"

    invoke-static {v13, v11}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v13, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->xmss_mt_SHAKE128:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v83, v11

    const-string v11, "XMSSMT-SHAKE128"

    invoke-static {v11, v13}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v11, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->xmss_mt_SHAKE256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v84, v13

    const-string v13, "XMSSMT-SHAKE256"

    invoke-static {v13, v11}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v13, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincsPlus:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v85, v11

    const-string v11, "SPHINCS+"

    invoke-static {v11, v13}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v11, "SPHINCSPLUS"

    invoke-static {v11, v13}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v11, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincsPlus_sha2_128s:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v86, v10

    const-string v10, "SPHINCS+-SHA2-128S"

    invoke-static {v10, v11}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v10, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincsPlus_sha2_128f:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v87, v1

    const-string v1, "SPHINCS+-SHA2-128F"

    invoke-static {v1, v10}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v1, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincsPlus_sha2_192s:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v88, v9

    const-string v9, "SPHINCS+-SHA2-192S"

    invoke-static {v9, v1}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v9, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincsPlus_sha2_192f:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v89, v0

    const-string v0, "SPHINCS+-SHA2-192F"

    invoke-static {v0, v9}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v0, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincsPlus_sha2_256s:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v90, v8

    const-string v8, "SPHINCS+-SHA2-256S"

    invoke-static {v8, v0}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v8, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincsPlus_sha2_256f:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v91, v7

    const-string v7, "SPHINCS+-SHA2-256F"

    invoke-static {v7, v8}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v7, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincsPlus_shake_128s:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v92, v12

    const-string v12, "SPHINCS+-SHAKE-128S"

    invoke-static {v12, v7}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v12, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincsPlus_shake_128f:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v93, v8

    const-string v8, "SPHINCS+-SHAKE-128F"

    invoke-static {v8, v12}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v8, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincsPlus_shake_192s:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v94, v0

    const-string v0, "SPHINCS+-SHAKE-192S"

    invoke-static {v0, v8}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v0, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincsPlus_shake_192f:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v95, v8

    const-string v8, "SPHINCS+-SHAKE-192F"

    invoke-static {v8, v0}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v8, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincsPlus_shake_256s:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v96, v0

    const-string v0, "SPHINCS+-SHAKE-256S"

    invoke-static {v0, v8}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v0, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincsPlus_shake_256f:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v97, v8

    const-string v8, "SPHINCS+-SHAKE-256F"

    invoke-static {v8, v0}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v8, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincsPlus_haraka_128s_r3:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v98, v0

    const-string v0, "SPHINCS+-HARAKA-128S-ROBUST"

    invoke-static {v0, v8}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v0, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincsPlus_haraka_128f_r3:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v99, v9

    const-string v9, "SPHINCS+-HARAKA-128F-ROBUST"

    invoke-static {v9, v0}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v9, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincsPlus_haraka_192s_r3:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v100, v1

    const-string v1, "SPHINCS+-HARAKA-192S-ROBUST"

    invoke-static {v1, v9}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v1, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincsPlus_haraka_192f_r3:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v101, v12

    const-string v12, "SPHINCS+-HARAKA-192F-ROBUST"

    invoke-static {v12, v1}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v12, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincsPlus_haraka_256s_r3:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v102, v7

    const-string v7, "SPHINCS+-HARAKA-256S-ROBUST"

    invoke-static {v7, v12}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v7, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincsPlus_haraka_256f_r3:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v103, v10

    const-string v10, "SPHINCS+-HARAKA-256F-ROBUST"

    invoke-static {v10, v7}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v10, "SPHINCS+-HARAKA-128S-SIMPLE"

    move-object/from16 v104, v11

    sget-object v11, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincsPlus_haraka_128s_r3_simple:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v10, v11}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v10, "SPHINCS+-HARAKA-128F-SIMPLE"

    sget-object v11, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincsPlus_haraka_128f_r3_simple:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v10, v11}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v10, "SPHINCS+-HARAKA-192S-SIMPLE"

    sget-object v11, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincsPlus_haraka_192s_r3_simple:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v10, v11}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v10, "SPHINCS+-HARAKA-192F-SIMPLE"

    sget-object v11, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincsPlus_haraka_192f_r3_simple:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v10, v11}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v10, "SPHINCS+-HARAKA-256S-SIMPLE"

    sget-object v11, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincsPlus_haraka_256s_r3_simple:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v10, v11}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v10, "SPHINCS+-HARAKA-256F-SIMPLE"

    sget-object v11, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincsPlus_haraka_256f_r3_simple:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v10, v11}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v10, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_ml_dsa_44:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v11, "DILITHIUM2"

    invoke-static {v11, v10}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v11, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_ml_dsa_65:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v105, v7

    const-string v7, "DILITHIUM3"

    invoke-static {v7, v11}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v7, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_ml_dsa_87:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v106, v12

    const-string v12, "DILITHIUM5"

    invoke-static {v12, v7}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v12, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->dilithium2_aes:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v107, v1

    const-string v1, "DILITHIUM2-AES"

    invoke-static {v1, v12}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v1, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->dilithium3_aes:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v108, v12

    const-string v12, "DILITHIUM3-AES"

    invoke-static {v12, v1}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v12, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->dilithium5_aes:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v109, v1

    const-string v1, "DILITHIUM5-AES"

    invoke-static {v1, v12}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v1, "ML-DSA-44"

    invoke-static {v1, v10}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v1, "ML-DSA-65"

    invoke-static {v1, v11}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v1, "ML-DSA-87"

    invoke-static {v1, v7}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v1, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_hash_ml_dsa_44_with_sha512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v110, v7

    const-string v7, "ML-DSA-44-WITH-SHA512"

    invoke-static {v7, v1}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v7, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_hash_ml_dsa_65_with_sha512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v111, v1

    const-string v1, "ML-DSA-65-WITH-SHA512"

    invoke-static {v1, v7}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v1, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_hash_ml_dsa_87_with_sha512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v112, v7

    const-string v7, "ML-DSA-87-WITH-SHA512"

    invoke-static {v7, v1}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v7, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_slh_dsa_sha2_128s:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v113, v1

    const-string v1, "SLH-DSA-SHA2-128S"

    invoke-static {v1, v7}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v1, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_slh_dsa_sha2_128f:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v114, v11

    const-string v11, "SLH-DSA-SHA2-128F"

    invoke-static {v11, v1}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v11, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_slh_dsa_sha2_192s:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v115, v10

    const-string v10, "SLH-DSA-SHA2-192S"

    invoke-static {v10, v11}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v10, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_slh_dsa_sha2_192f:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v116, v12

    const-string v12, "SLH-DSA-SHA2-192F"

    invoke-static {v12, v10}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v12, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_slh_dsa_sha2_256s:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v117, v9

    const-string v9, "SLH-DSA-SHA2-256S"

    invoke-static {v9, v12}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v9, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_slh_dsa_sha2_256f:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v118, v0

    const-string v0, "SLH-DSA-SHA2-256F"

    invoke-static {v0, v9}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_slh_dsa_shake_128s:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v119, v8

    const-string v8, "SLH-DSA-SHAKE-128S"

    invoke-static {v8, v0}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v8, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_slh_dsa_shake_128f:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v120, v13

    const-string v13, "SLH-DSA-SHAKE-128F"

    invoke-static {v13, v8}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v13, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_slh_dsa_shake_192s:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v121, v8

    const-string v8, "SLH-DSA-SHAKE-192S"

    invoke-static {v8, v13}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v8, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_slh_dsa_shake_192f:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v122, v13

    const-string v13, "SLH-DSA-SHAKE-192F"

    invoke-static {v13, v8}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v13, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_slh_dsa_shake_256s:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v123, v8

    const-string v8, "SLH-DSA-SHAKE-256S"

    invoke-static {v8, v13}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v8, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_slh_dsa_shake_256f:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v124, v13

    const-string v13, "SLH-DSA-SHAKE-256F"

    invoke-static {v13, v8}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v13, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_hash_slh_dsa_sha2_128s_with_sha256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v125, v8

    const-string v8, "SLH-DSA-SHA2-128S-WITH-SHA256"

    invoke-static {v8, v13}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v8, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_hash_slh_dsa_sha2_128f_with_sha256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v126, v13

    const-string v13, "SLH-DSA-SHA2-128F-WITH-SHA256"

    invoke-static {v13, v8}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v13, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_hash_slh_dsa_sha2_192s_with_sha512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v127, v8

    const-string v8, "SLH-DSA-SHA2-192S-WITH-SHA512"

    invoke-static {v8, v13}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v8, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_hash_slh_dsa_sha2_192f_with_sha512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v128, v13

    const-string v13, "SLH-DSA-SHA2-192F-WITH-SHA512"

    invoke-static {v13, v8}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v13, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_hash_slh_dsa_sha2_256s_with_sha512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v129, v8

    const-string v8, "SLH-DSA-SHA2-256S-WITH-SHA512"

    invoke-static {v8, v13}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v8, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_hash_slh_dsa_sha2_256f_with_sha512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v130, v13

    const-string v13, "SLH-DSA-SHA2-256F-WITH-SHA512"

    invoke-static {v13, v8}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v13, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_hash_slh_dsa_shake_128s_with_shake128:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v131, v8

    const-string v8, "SLH-DSA-SHAKE-128S-WITH-SHAKE128"

    invoke-static {v8, v13}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v8, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_hash_slh_dsa_shake_128f_with_shake128:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v132, v13

    const-string v13, "SLH-DSA-SHAKE-128F-WITH-SHAKE128"

    invoke-static {v13, v8}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v13, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_hash_slh_dsa_shake_192s_with_shake256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v133, v8

    const-string v8, "SLH-DSA-SHAKE-192S-WITH-SHAKE256"

    invoke-static {v8, v13}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v8, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_hash_slh_dsa_shake_192f_with_shake256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v134, v13

    const-string v13, "SLH-DSA-SHAKE-192F-WITH-SHAKE256"

    invoke-static {v13, v8}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v13, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_hash_slh_dsa_shake_256s_with_shake256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v135, v8

    const-string v8, "SLH-DSA-SHAKE-256S-WITH-SHAKE256"

    invoke-static {v8, v13}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v8, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_hash_slh_dsa_shake_256f_with_shake256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v136, v13

    const-string v13, "SLH-DSA-SHAKE-256F-WITH-SHAKE256"

    invoke-static {v13, v8}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v13, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->falcon_512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v137, v8

    const-string v8, "FALCON-512"

    invoke-static {v8, v13}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v8, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->falcon_1024:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v138, v13

    const-string v13, "FALCON-1024"

    invoke-static {v13, v8}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v13, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->picnic_signature:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v139, v8

    const-string v8, "PICNIC"

    invoke-static {v8, v13}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v8, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->picnic_with_sha512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v140, v13

    const-string v13, "SHA512WITHPICNIC"

    invoke-static {v13, v8}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v13, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->picnic_with_sha3_512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v141, v8

    const-string v8, "SHA3-512WITHPICNIC"

    invoke-static {v8, v13}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v8, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->picnic_with_shake256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v142, v13

    const-string v13, "SHAKE256WITHPICNIC"

    invoke-static {v13, v8}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v13, Lorg/bouncycastle/asn1/misc/MiscObjectIdentifiers;->id_MLDSA44_RSA2048_PSS_SHA256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v143, v8

    const-string v8, "MLDSA44-RSA2048-PSS-SHA256"

    invoke-static {v8, v13}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v8, Lorg/bouncycastle/asn1/misc/MiscObjectIdentifiers;->id_MLDSA44_RSA2048_PKCS15_SHA256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v144, v13

    const-string v13, "MLDSA44-RSA2048-PKCS15-SHA256"

    invoke-static {v13, v8}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v13, Lorg/bouncycastle/asn1/misc/MiscObjectIdentifiers;->id_MLDSA44_Ed25519_SHA512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v145, v8

    const-string v8, "MLDSA44-ED25519-SHA512"

    invoke-static {v8, v13}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v8, Lorg/bouncycastle/asn1/misc/MiscObjectIdentifiers;->id_MLDSA44_ECDSA_P256_SHA256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v146, v13

    const-string v13, "MLDSA44-ECDSA-P256-SHA256"

    invoke-static {v13, v8}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v13, Lorg/bouncycastle/asn1/misc/MiscObjectIdentifiers;->id_MLDSA65_RSA3072_PSS_SHA256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v147, v8

    const-string v8, "MLDSA65-RSA3072-PSS-SHA256"

    invoke-static {v8, v13}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v8, Lorg/bouncycastle/asn1/misc/MiscObjectIdentifiers;->id_MLDSA65_RSA3072_PKCS15_SHA256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v148, v13

    const-string v13, "MLDSA65-RSA3072-PKCS15-SHA256"

    invoke-static {v13, v8}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v13, Lorg/bouncycastle/asn1/misc/MiscObjectIdentifiers;->id_MLDSA65_RSA4096_PSS_SHA384:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v149, v8

    const-string v8, "MLDSA65-RSA4096-PSS-SHA384"

    invoke-static {v8, v13}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v8, Lorg/bouncycastle/asn1/misc/MiscObjectIdentifiers;->id_MLDSA65_RSA4096_PKCS15_SHA384:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v150, v13

    const-string v13, "MLDSA65-RSA4096-PKCS15-SHA384"

    invoke-static {v13, v8}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v13, Lorg/bouncycastle/asn1/misc/MiscObjectIdentifiers;->id_MLDSA65_ECDSA_P384_SHA384:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v151, v8

    const-string v8, "MLDSA65-ECDSA-P384-SHA384"

    invoke-static {v8, v13}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v8, Lorg/bouncycastle/asn1/misc/MiscObjectIdentifiers;->id_MLDSA65_ECDSA_brainpoolP256r1_SHA256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v152, v13

    const-string v13, "MLDSA65-ECDSA-BRAINPOOLP256R1-SHA256"

    invoke-static {v13, v8}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v13, Lorg/bouncycastle/asn1/misc/MiscObjectIdentifiers;->id_MLDSA65_Ed25519_SHA512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v153, v8

    const-string v8, "MLDSA65-ED25519-SHA512"

    invoke-static {v8, v13}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v8, Lorg/bouncycastle/asn1/misc/MiscObjectIdentifiers;->id_MLDSA87_ECDSA_P384_SHA384:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v154, v13

    const-string v13, "MLDSA87-ECDSA-P384-SHA384"

    invoke-static {v13, v8}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v13, Lorg/bouncycastle/asn1/misc/MiscObjectIdentifiers;->id_MLDSA87_ECDSA_brainpoolP384r1_SHA384:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v155, v8

    const-string v8, "MLDSA87-ECDSA-BRAINPOOLP384R1-SHA384"

    invoke-static {v8, v13}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v8, Lorg/bouncycastle/asn1/misc/MiscObjectIdentifiers;->id_MLDSA87_Ed448_SHA512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v156, v13

    const-string v13, "MLDSA87-ED448-SHA512"

    invoke-static {v13, v8}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v13, Lorg/bouncycastle/asn1/misc/MiscObjectIdentifiers;->id_HashMLDSA44_RSA2048_PSS_SHA256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v157, v8

    const-string v8, "HASHMLDSA44-RSA2048-PSS-SHA256"

    invoke-static {v8, v13}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v8, Lorg/bouncycastle/asn1/misc/MiscObjectIdentifiers;->id_HashMLDSA44_RSA2048_PKCS15_SHA256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v158, v13

    const-string v13, "HASHMLDSA44-RSA2048-PKCS15-SHA256"

    invoke-static {v13, v8}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v13, Lorg/bouncycastle/asn1/misc/MiscObjectIdentifiers;->id_HashMLDSA44_Ed25519_SHA512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v159, v8

    const-string v8, "HASHMLDSA44-ED25519-SHA512"

    invoke-static {v8, v13}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v8, Lorg/bouncycastle/asn1/misc/MiscObjectIdentifiers;->id_HashMLDSA44_ECDSA_P256_SHA256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v160, v13

    const-string v13, "HASHMLDSA44-ECDSA-P256-SHA256"

    invoke-static {v13, v8}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v13, Lorg/bouncycastle/asn1/misc/MiscObjectIdentifiers;->id_HashMLDSA65_RSA3072_PSS_SHA512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v161, v8

    const-string v8, "HASHMLDSA65-RSA3072-PSS-SHA512"

    invoke-static {v8, v13}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v8, Lorg/bouncycastle/asn1/misc/MiscObjectIdentifiers;->id_HashMLDSA65_RSA3072_PKCS15_SHA512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v162, v13

    const-string v13, "HASHMLDSA65-RSA3072-PKCS15-SHA512"

    invoke-static {v13, v8}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v13, Lorg/bouncycastle/asn1/misc/MiscObjectIdentifiers;->id_HashMLDSA65_RSA4096_PSS_SHA512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v163, v8

    const-string v8, "HASHMLDSA65-RSA4096-PSS-SHA512"

    invoke-static {v8, v13}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v8, Lorg/bouncycastle/asn1/misc/MiscObjectIdentifiers;->id_HashMLDSA65_RSA4096_PKCS15_SHA512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v164, v13

    const-string v13, "HASHMLDSA65-RSA4096-PKCS15-SHA512"

    invoke-static {v13, v8}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v13, Lorg/bouncycastle/asn1/misc/MiscObjectIdentifiers;->id_HashMLDSA65_ECDSA_P384_SHA512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v165, v8

    const-string v8, "HASHMLDSA65-ECDSA-P384-SHA512"

    invoke-static {v8, v13}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v8, Lorg/bouncycastle/asn1/misc/MiscObjectIdentifiers;->id_HashMLDSA65_ECDSA_brainpoolP256r1_SHA512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v166, v13

    const-string v13, "HASHMLDSA65-ECDSA-BRAINPOOLP256R1-SHA512"

    invoke-static {v13, v8}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v13, Lorg/bouncycastle/asn1/misc/MiscObjectIdentifiers;->id_HashMLDSA65_Ed25519_SHA512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v167, v8

    const-string v8, "HASHMLDSA65-ED25519-SHA512"

    invoke-static {v8, v13}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v8, Lorg/bouncycastle/asn1/misc/MiscObjectIdentifiers;->id_HashMLDSA87_ECDSA_P384_SHA512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v168, v13

    const-string v13, "HASHMLDSA87-ECDSA-P384-SHA512"

    invoke-static {v13, v8}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v13, Lorg/bouncycastle/asn1/misc/MiscObjectIdentifiers;->id_HashMLDSA87_ECDSA_brainpoolP384r1_SHA512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v169, v8

    const-string v8, "HASHMLDSA87-ECDSA-BRAINPOOLP384R1-SHA512"

    invoke-static {v8, v13}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v8, Lorg/bouncycastle/asn1/misc/MiscObjectIdentifiers;->id_HashMLDSA87_Ed448_SHA512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v170, v13

    const-string v13, "HASHMLDSA87-ED448-SHA512"

    invoke-static {v13, v8}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v13, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    invoke-interface {v13, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v6, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    invoke-interface {v6, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v5, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    invoke-interface {v5, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v2, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v2, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v2, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    invoke-interface {v2, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v2, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    sget-object v3, Lorg/bouncycastle/asn1/oiw/OIWObjectIdentifiers;->dsaWithSHA1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v2, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    invoke-interface {v2, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v2, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    move-object/from16 v3, v73

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v2, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    move-object/from16 v4, v72

    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v2, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    move-object/from16 v5, v71

    invoke-interface {v2, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v2, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    move-object/from16 v6, v70

    invoke-interface {v2, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v2, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    move-object/from16 v13, v69

    invoke-interface {v2, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v2, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    move-object/from16 v15, v68

    invoke-interface {v2, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v2, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    move-object/from16 v15, v47

    invoke-interface {v2, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v2, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    move-object/from16 v15, v44

    invoke-interface {v2, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v2, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    move-object/from16 v15, v43

    invoke-interface {v2, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v2, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    move-object/from16 v15, v38

    invoke-interface {v2, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v2, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    move-object/from16 v15, v37

    invoke-interface {v2, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v2, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    move-object/from16 v15, v61

    invoke-interface {v2, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v2, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    move-object/from16 v15, v52

    invoke-interface {v2, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v2, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    move-object/from16 v15, v53

    invoke-interface {v2, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v2, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    move-object/from16 v15, v54

    invoke-interface {v2, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v2, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    move-object/from16 v15, v55

    invoke-interface {v2, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v2, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    move-object/from16 v15, v56

    invoke-interface {v2, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v2, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    move-object/from16 v15, v57

    invoke-interface {v2, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v2, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    move-object/from16 v15, v58

    invoke-interface {v2, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v2, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    move-object/from16 v15, v45

    invoke-interface {v2, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v2, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    move-object/from16 v15, v46

    invoke-interface {v2, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v2, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    move-object/from16 v15, v51

    invoke-interface {v2, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v2, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    move-object/from16 v15, v48

    invoke-interface {v2, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v2, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    move-object/from16 v15, v50

    invoke-interface {v2, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v2, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    move-object/from16 v15, v49

    invoke-interface {v2, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v2, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    invoke-interface {v2, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v2, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v2, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    invoke-interface {v2, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v2, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    invoke-interface {v2, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v2, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    invoke-interface {v2, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v2, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    invoke-interface {v2, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v2, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v2, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    move-object/from16 v15, v121

    invoke-interface {v2, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v2, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    move-object/from16 v15, v122

    invoke-interface {v2, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v2, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    move-object/from16 v15, v123

    invoke-interface {v2, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v2, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    move-object/from16 v15, v124

    invoke-interface {v2, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v2, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    move-object/from16 v15, v125

    invoke-interface {v2, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v2, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    move-object/from16 v15, v127

    invoke-interface {v2, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v2, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    move-object/from16 v15, v126

    invoke-interface {v2, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v2, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    move-object/from16 v15, v128

    invoke-interface {v2, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v2, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    move-object/from16 v15, v129

    invoke-interface {v2, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v2, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    move-object/from16 v15, v130

    invoke-interface {v2, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v2, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    move-object/from16 v15, v131

    invoke-interface {v2, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v2, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    move-object/from16 v15, v132

    invoke-interface {v2, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v2, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    move-object/from16 v15, v133

    invoke-interface {v2, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v2, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    move-object/from16 v15, v134

    invoke-interface {v2, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v2, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    move-object/from16 v15, v135

    invoke-interface {v2, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v2, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    move-object/from16 v15, v136

    invoke-interface {v2, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v2, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    move-object/from16 v15, v137

    invoke-interface {v2, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v2, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    move-object/from16 v15, v120

    invoke-interface {v2, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v2, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    sget-object v15, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincsPlus_sha2_128s_r3:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v2, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v2, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    move-object/from16 v49, v0

    sget-object v0, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincsPlus_sha2_128f_r3:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v2, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    move-object/from16 v50, v9

    sget-object v9, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincsPlus_shake_128s_r3:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v2, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v2, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    move-object/from16 v52, v12

    sget-object v12, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincsPlus_shake_128f_r3:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v2, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v2, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    move-object/from16 v53, v10

    move-object/from16 v10, v119

    invoke-interface {v2, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v2, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    move-object/from16 v10, v118

    invoke-interface {v2, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v2, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    sget-object v10, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincsPlus_sha2_192s_r3:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v2, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v2, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    move-object/from16 v54, v11

    sget-object v11, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincsPlus_sha2_192f_r3:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v2, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v2, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    move-object/from16 v55, v1

    sget-object v1, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincsPlus_shake_192s_r3:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v2, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    move-object/from16 v56, v7

    sget-object v7, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincsPlus_shake_192f_r3:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v2, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v2, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    move-object/from16 v57, v7

    move-object/from16 v7, v117

    invoke-interface {v2, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v2, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    move-object/from16 v7, v107

    invoke-interface {v2, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v2, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    sget-object v7, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincsPlus_sha2_256s_r3:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v2, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v2, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    move-object/from16 v58, v7

    sget-object v7, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincsPlus_sha2_256f_r3:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v2, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v2, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    move-object/from16 v61, v7

    sget-object v7, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincsPlus_shake_256s_r3:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v2, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v2, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    move-object/from16 v69, v7

    sget-object v7, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincsPlus_shake_256f_r3:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v2, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v2, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    move-object/from16 v70, v7

    move-object/from16 v7, v106

    invoke-interface {v2, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v2, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    move-object/from16 v7, v105

    invoke-interface {v2, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v2, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    move-object/from16 v7, v104

    invoke-interface {v2, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v2, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    move-object/from16 v7, v103

    invoke-interface {v2, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v2, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    move-object/from16 v7, v102

    invoke-interface {v2, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v2, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    move-object/from16 v7, v101

    invoke-interface {v2, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v2, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    move-object/from16 v7, v100

    invoke-interface {v2, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v2, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    move-object/from16 v7, v99

    invoke-interface {v2, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v2, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    move-object/from16 v7, v95

    invoke-interface {v2, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v2, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    move-object/from16 v7, v96

    invoke-interface {v2, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v2, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    move-object/from16 v7, v94

    invoke-interface {v2, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v2, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    move-object/from16 v7, v93

    invoke-interface {v2, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v2, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    move-object/from16 v7, v97

    invoke-interface {v2, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v2, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    move-object/from16 v7, v98

    invoke-interface {v2, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v2, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    sget-object v7, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->dilithium:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v2, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v2, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    move-object/from16 v7, v108

    invoke-interface {v2, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v2, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    move-object/from16 v7, v109

    invoke-interface {v2, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v2, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    move-object/from16 v7, v116

    invoke-interface {v2, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v2, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    move-object/from16 v7, v92

    invoke-interface {v2, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v2, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    move-object/from16 v7, v115

    invoke-interface {v2, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v2, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    move-object/from16 v7, v114

    invoke-interface {v2, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v2, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    move-object/from16 v7, v110

    invoke-interface {v2, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v2, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    move-object/from16 v7, v111

    invoke-interface {v2, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v2, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    move-object/from16 v7, v112

    invoke-interface {v2, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v2, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    move-object/from16 v7, v113

    invoke-interface {v2, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v2, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    sget-object v7, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->falcon:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v2, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v2, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    move-object/from16 v7, v138

    invoke-interface {v2, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v2, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    move-object/from16 v7, v139

    invoke-interface {v2, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v2, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    move-object/from16 v7, v140

    invoke-interface {v2, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v2, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    move-object/from16 v7, v141

    invoke-interface {v2, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v2, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    move-object/from16 v7, v142

    invoke-interface {v2, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v2, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    move-object/from16 v7, v143

    invoke-interface {v2, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v2, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    move-object/from16 v7, v91

    invoke-interface {v2, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v2, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    move-object/from16 v7, v90

    invoke-interface {v2, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v2, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    move-object/from16 v7, v89

    invoke-interface {v2, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v2, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    move-object/from16 v7, v88

    invoke-interface {v2, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v2, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    move-object/from16 v7, v87

    invoke-interface {v2, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v2, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    move-object/from16 v7, v86

    invoke-interface {v2, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v2, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    move-object/from16 v7, v75

    invoke-interface {v2, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v2, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    move-object/from16 v71, v1

    move-object/from16 v1, v74

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v2, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    invoke-interface {v2, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v2, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v1, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    move-object/from16 v2, v77

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v1, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    move-object/from16 v2, v78

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v1, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    move-object/from16 v2, v79

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v1, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    move-object/from16 v2, v80

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v1, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    move-object/from16 v2, v82

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v1, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    move-object/from16 v2, v83

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v1, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    move-object/from16 v2, v84

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v1, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    move-object/from16 v2, v85

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v1, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    move-object/from16 v2, v76

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v1, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    move-object/from16 v2, v81

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v1, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    sget-object v2, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->qTESLA_p_I:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v1, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    sget-object v2, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->qTESLA_p_III:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v1, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    move-object/from16 v2, v67

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v1, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    move-object/from16 v7, v66

    invoke-interface {v1, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v1, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    move-object/from16 v7, v59

    invoke-interface {v1, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v1, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    move-object/from16 v7, v60

    invoke-interface {v1, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v1, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    move-object/from16 v7, v65

    invoke-interface {v1, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v1, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    move-object/from16 v7, v62

    invoke-interface {v1, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v1, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    move-object/from16 v7, v63

    invoke-interface {v1, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v1, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    move-object/from16 v7, v64

    invoke-interface {v1, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v1, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    move-object/from16 v7, v144

    invoke-interface {v1, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v1, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    move-object/from16 v7, v145

    invoke-interface {v1, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v1, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    move-object/from16 v7, v146

    invoke-interface {v1, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v1, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    move-object/from16 v7, v147

    invoke-interface {v1, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v1, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    move-object/from16 v7, v148

    invoke-interface {v1, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v1, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    move-object/from16 v7, v149

    invoke-interface {v1, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v1, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    move-object/from16 v7, v150

    invoke-interface {v1, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v1, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    move-object/from16 v7, v151

    invoke-interface {v1, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v1, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    move-object/from16 v7, v152

    invoke-interface {v1, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v1, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    move-object/from16 v7, v153

    invoke-interface {v1, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v1, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    move-object/from16 v7, v154

    invoke-interface {v1, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v1, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    move-object/from16 v7, v155

    invoke-interface {v1, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v1, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    move-object/from16 v7, v156

    invoke-interface {v1, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v1, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    move-object/from16 v7, v157

    invoke-interface {v1, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v1, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    move-object/from16 v7, v158

    invoke-interface {v1, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v1, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    move-object/from16 v7, v159

    invoke-interface {v1, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v1, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    move-object/from16 v7, v160

    invoke-interface {v1, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v1, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    move-object/from16 v7, v161

    invoke-interface {v1, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v1, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    move-object/from16 v7, v162

    invoke-interface {v1, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v1, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    move-object/from16 v7, v163

    invoke-interface {v1, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v1, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    move-object/from16 v7, v164

    invoke-interface {v1, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v1, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    move-object/from16 v7, v165

    invoke-interface {v1, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v1, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    move-object/from16 v7, v166

    invoke-interface {v1, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v1, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    move-object/from16 v7, v167

    invoke-interface {v1, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v1, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    move-object/from16 v7, v168

    invoke-interface {v1, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v1, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    move-object/from16 v7, v169

    invoke-interface {v1, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v1, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    move-object/from16 v7, v170

    invoke-interface {v1, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v1, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    invoke-interface {v1, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v1, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->pkcs15RsaEncryption:Ljava/util/Set;

    move-object/from16 v7, v36

    invoke-interface {v1, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v1, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->pkcs15RsaEncryption:Ljava/util/Set;

    move-object/from16 v8, v35

    invoke-interface {v1, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v1, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->pkcs15RsaEncryption:Ljava/util/Set;

    move-object/from16 v2, v34

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v1, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->pkcs15RsaEncryption:Ljava/util/Set;

    move-object/from16 v34, v11

    move-object/from16 v11, v33

    invoke-interface {v1, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v1, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->pkcs15RsaEncryption:Ljava/util/Set;

    move-object/from16 v33, v10

    move-object/from16 v10, v32

    invoke-interface {v1, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v1, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->pkcs15RsaEncryption:Ljava/util/Set;

    move-object/from16 v32, v12

    move-object/from16 v12, v31

    invoke-interface {v1, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v1, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->pkcs15RsaEncryption:Ljava/util/Set;

    move-object/from16 v31, v9

    move-object/from16 v9, v30

    invoke-interface {v1, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v1, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->pkcs15RsaEncryption:Ljava/util/Set;

    move-object/from16 v30, v0

    move-object/from16 v0, v29

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v1, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->pkcs15RsaEncryption:Ljava/util/Set;

    move-object/from16 v29, v15

    move-object/from16 v15, v28

    invoke-interface {v1, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v1, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->pkcs15RsaEncryption:Ljava/util/Set;

    move-object/from16 v15, v27

    invoke-interface {v1, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v1, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->pkcs15RsaEncryption:Ljava/util/Set;

    move-object/from16 v15, v42

    invoke-interface {v1, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v1, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->pkcs15RsaEncryption:Ljava/util/Set;

    move-object/from16 v35, v0

    move-object/from16 v0, v41

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v1, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->pkcs15RsaEncryption:Ljava/util/Set;

    move-object/from16 v7, v40

    invoke-interface {v1, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v1, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->pkcs15RsaEncryption:Ljava/util/Set;

    move-object/from16 v7, v39

    invoke-interface {v1, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v1, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v7, Lorg/bouncycastle/asn1/oiw/OIWObjectIdentifiers;->idSHA1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v0, Lorg/bouncycastle/asn1/DERNull;->INSTANCE:Lorg/bouncycastle/asn1/DERNull;

    invoke-direct {v1, v7, v0}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    move-object/from16 v42, v7

    const/16 v7, 0x14

    invoke-static {v1, v7}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->createPSSParams(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;I)Lorg/bouncycastle/asn1/pkcs/RSASSAPSSparams;

    move-result-object v1

    move-object/from16 v7, v26

    invoke-static {v7, v1}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addParameters(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v1, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v7, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha224:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v1, v7, v0}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    move-object/from16 v26, v15

    const/16 v15, 0x1c

    invoke-static {v1, v15}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->createPSSParams(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;I)Lorg/bouncycastle/asn1/pkcs/RSASSAPSSparams;

    move-result-object v1

    move-object/from16 v15, v25

    invoke-static {v15, v1}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addParameters(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v1, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v15, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v1, v15, v0}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    move-object/from16 v25, v13

    const/16 v13, 0x20

    invoke-static {v1, v13}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->createPSSParams(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;I)Lorg/bouncycastle/asn1/pkcs/RSASSAPSSparams;

    move-result-object v1

    move-object/from16 v13, v24

    invoke-static {v13, v1}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addParameters(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v1, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v13, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha384:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v1, v13, v0}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    move-object/from16 v24, v6

    const/16 v6, 0x30

    invoke-static {v1, v6}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->createPSSParams(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;I)Lorg/bouncycastle/asn1/pkcs/RSASSAPSSparams;

    move-result-object v1

    move-object/from16 v6, v23

    invoke-static {v6, v1}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addParameters(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v1, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v6, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v1, v6, v0}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    move-object/from16 v23, v5

    const/16 v5, 0x40

    invoke-static {v1, v5}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->createPSSParams(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;I)Lorg/bouncycastle/asn1/pkcs/RSASSAPSSparams;

    move-result-object v1

    move-object/from16 v5, v22

    invoke-static {v5, v1}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addParameters(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v1, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v5, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha3_224:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v1, v5, v0}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    move-object/from16 v22, v5

    const/16 v5, 0x1c

    invoke-static {v1, v5}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->createPSSParams(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;I)Lorg/bouncycastle/asn1/pkcs/RSASSAPSSparams;

    move-result-object v1

    move-object/from16 v5, v21

    invoke-static {v5, v1}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addParameters(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v1, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v5, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha3_256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v1, v5, v0}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    move-object/from16 v21, v5

    const/16 v5, 0x20

    invoke-static {v1, v5}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->createPSSParams(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;I)Lorg/bouncycastle/asn1/pkcs/RSASSAPSSparams;

    move-result-object v1

    move-object/from16 v5, v20

    invoke-static {v5, v1}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addParameters(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v1, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v5, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha3_384:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v1, v5, v0}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    move-object/from16 v20, v5

    const/16 v5, 0x30

    invoke-static {v1, v5}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->createPSSParams(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;I)Lorg/bouncycastle/asn1/pkcs/RSASSAPSSparams;

    move-result-object v1

    move-object/from16 v5, v18

    invoke-static {v5, v1}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addParameters(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v1, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v5, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha3_512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v1, v5, v0}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    const/16 v0, 0x40

    invoke-static {v1, v0}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->createPSSParams(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;I)Lorg/bouncycastle/asn1/pkcs/RSASSAPSSparams;

    move-result-object v0

    move-object/from16 v1, v19

    invoke-static {v1, v0}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addParameters(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-static {v8, v7}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addDigestOid(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    invoke-static {v2, v15}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addDigestOid(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    invoke-static {v11, v13}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addDigestOid(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    invoke-static {v10, v6}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addDigestOid(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha512_224:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v12, v0}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addDigestOid(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha512_256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v9, v0}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addDigestOid(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    invoke-static {v14, v7}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addDigestOid(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    invoke-static {v3, v15}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addDigestOid(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    invoke-static {v4, v13}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addDigestOid(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    move-object/from16 v0, v23

    invoke-static {v0, v6}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addDigestOid(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    move-object/from16 v1, v22

    move-object/from16 v0, v24

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addDigestOid(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    move-object/from16 v2, v21

    move-object/from16 v0, v25

    invoke-static {v0, v2}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addDigestOid(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    move-object/from16 v3, v20

    move-object/from16 v0, v68

    invoke-static {v0, v3}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addDigestOid(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    move-object/from16 v0, v47

    invoke-static {v0, v5}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addDigestOid(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    move-object/from16 v0, v44

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addDigestOid(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    move-object/from16 v0, v43

    invoke-static {v0, v2}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addDigestOid(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    move-object/from16 v0, v38

    invoke-static {v0, v3}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addDigestOid(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    move-object/from16 v0, v37

    invoke-static {v0, v5}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addDigestOid(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    move-object/from16 v0, v26

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addDigestOid(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    move-object/from16 v0, v41

    invoke-static {v0, v2}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addDigestOid(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    move-object/from16 v0, v40

    invoke-static {v0, v3}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addDigestOid(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    move-object/from16 v0, v39

    invoke-static {v0, v5}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addDigestOid(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v0, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->md2:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v1, v17

    invoke-static {v1, v0}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addDigestOid(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v0, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->md4WithRSAEncryption:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->md4:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addDigestOid(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v0, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->md5:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v1, v16

    invoke-static {v1, v0}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addDigestOid(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    move-object/from16 v0, v36

    move-object/from16 v1, v42

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addDigestOid(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v0, Lorg/bouncycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->ripemd128:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v1, v35

    invoke-static {v1, v0}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addDigestOid(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v0, Lorg/bouncycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->ripemd160:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v1, v28

    invoke-static {v1, v0}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addDigestOid(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v0, Lorg/bouncycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->ripemd256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v1, v27

    invoke-static {v1, v0}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addDigestOid(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v0, Lorg/bouncycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->gostR3411:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v1, v45

    invoke-static {v1, v0}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addDigestOid(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    move-object/from16 v1, v46

    invoke-static {v1, v0}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addDigestOid(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v0, Lorg/bouncycastle/asn1/rosstandart/RosstandartObjectIdentifiers;->id_tc26_gost_3411_12_256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v1, v51

    invoke-static {v1, v0}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addDigestOid(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v0, Lorg/bouncycastle/asn1/rosstandart/RosstandartObjectIdentifiers;->id_tc26_gost_3411_12_512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v1, v48

    invoke-static {v1, v0}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addDigestOid(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    move-object/from16 v0, v29

    invoke-static {v0, v15}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addDigestOid(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    move-object/from16 v0, v30

    invoke-static {v0, v15}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addDigestOid(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_shake256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v1, v31

    invoke-static {v1, v0}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addDigestOid(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    move-object/from16 v1, v32

    invoke-static {v1, v0}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addDigestOid(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    move-object/from16 v1, v33

    invoke-static {v1, v15}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addDigestOid(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    move-object/from16 v1, v34

    invoke-static {v1, v15}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addDigestOid(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    move-object/from16 v1, v71

    invoke-static {v1, v0}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addDigestOid(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    move-object/from16 v1, v57

    invoke-static {v1, v0}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addDigestOid(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    move-object/from16 v1, v58

    invoke-static {v1, v15}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addDigestOid(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    move-object/from16 v1, v61

    invoke-static {v1, v15}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addDigestOid(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    move-object/from16 v1, v69

    invoke-static {v1, v0}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addDigestOid(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    move-object/from16 v1, v70

    invoke-static {v1, v0}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addDigestOid(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v1, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincsPlus_sha2_128s_r3_simple:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v1, v15}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addDigestOid(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v1, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincsPlus_sha2_128f_r3_simple:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v1, v15}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addDigestOid(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v1, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincsPlus_shake_128s_r3_simple:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v1, v0}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addDigestOid(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v1, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincsPlus_shake_128f_r3_simple:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v1, v0}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addDigestOid(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v1, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincsPlus_sha2_192s_r3_simple:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v1, v15}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addDigestOid(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v1, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincsPlus_sha2_192f_r3_simple:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v1, v15}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addDigestOid(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v1, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincsPlus_shake_192s_r3_simple:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v1, v0}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addDigestOid(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v1, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincsPlus_shake_192f_r3_simple:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v1, v0}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addDigestOid(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v1, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincsPlus_sha2_256s_r3_simple:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v1, v15}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addDigestOid(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v1, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincsPlus_sha2_256f_r3_simple:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v1, v15}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addDigestOid(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v1, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincsPlus_shake_256s_r3_simple:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v1, v0}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addDigestOid(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v1, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincsPlus_shake_256f_r3_simple:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v1, v0}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addDigestOid(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    move-object/from16 v1, v104

    invoke-static {v1, v15}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addDigestOid(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    move-object/from16 v1, v103

    invoke-static {v1, v15}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addDigestOid(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    move-object/from16 v1, v102

    invoke-static {v1, v0}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addDigestOid(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    move-object/from16 v1, v101

    invoke-static {v1, v0}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addDigestOid(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    move-object/from16 v1, v100

    invoke-static {v1, v15}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addDigestOid(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    move-object/from16 v1, v99

    invoke-static {v1, v15}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addDigestOid(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    move-object/from16 v1, v95

    invoke-static {v1, v0}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addDigestOid(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    move-object/from16 v1, v96

    invoke-static {v1, v0}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addDigestOid(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    move-object/from16 v1, v94

    invoke-static {v1, v15}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addDigestOid(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    move-object/from16 v1, v93

    invoke-static {v1, v15}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addDigestOid(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    move-object/from16 v1, v97

    invoke-static {v1, v0}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addDigestOid(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    move-object/from16 v1, v98

    invoke-static {v1, v0}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addDigestOid(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    move-object/from16 v1, v67

    invoke-static {v1, v15}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addDigestOid(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v1, Lorg/bouncycastle/asn1/gm/GMObjectIdentifiers;->sm3:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v2, v66

    invoke-static {v2, v1}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addDigestOid(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v1, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_shake128:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v2, v65

    invoke-static {v2, v1}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addDigestOid(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    move-object/from16 v2, v62

    invoke-static {v2, v0}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addDigestOid(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    move-object/from16 v2, v63

    invoke-static {v2, v1}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addDigestOid(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    move-object/from16 v2, v64

    invoke-static {v2, v0}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addDigestOid(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    move-object/from16 v2, v115

    invoke-static {v2, v0}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addDigestOid(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    move-object/from16 v2, v114

    invoke-static {v2, v0}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addDigestOid(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    move-object/from16 v2, v110

    invoke-static {v2, v0}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addDigestOid(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    move-object/from16 v2, v111

    invoke-static {v2, v6}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addDigestOid(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    move-object/from16 v2, v112

    invoke-static {v2, v6}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addDigestOid(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    move-object/from16 v2, v113

    invoke-static {v2, v6}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addDigestOid(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    move-object/from16 v2, v56

    invoke-static {v2, v15}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addDigestOid(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    move-object/from16 v2, v55

    invoke-static {v2, v15}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addDigestOid(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    move-object/from16 v2, v54

    invoke-static {v2, v6}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addDigestOid(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    move-object/from16 v2, v53

    invoke-static {v2, v6}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addDigestOid(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    move-object/from16 v2, v52

    invoke-static {v2, v6}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addDigestOid(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    move-object/from16 v2, v50

    invoke-static {v2, v6}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addDigestOid(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    move-object/from16 v2, v49

    invoke-static {v2, v1}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addDigestOid(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    move-object/from16 v2, v121

    invoke-static {v2, v1}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addDigestOid(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    move-object/from16 v2, v122

    invoke-static {v2, v0}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addDigestOid(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    move-object/from16 v2, v123

    invoke-static {v2, v0}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addDigestOid(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    move-object/from16 v2, v124

    invoke-static {v2, v0}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addDigestOid(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    move-object/from16 v2, v125

    invoke-static {v2, v0}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addDigestOid(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    move-object/from16 v2, v127

    invoke-static {v2, v15}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addDigestOid(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    move-object/from16 v2, v126

    invoke-static {v2, v15}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addDigestOid(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    move-object/from16 v2, v128

    invoke-static {v2, v6}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addDigestOid(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    move-object/from16 v2, v129

    invoke-static {v2, v6}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addDigestOid(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    move-object/from16 v2, v130

    invoke-static {v2, v6}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addDigestOid(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    move-object/from16 v2, v131

    invoke-static {v2, v6}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addDigestOid(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    move-object/from16 v2, v132

    invoke-static {v2, v1}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addDigestOid(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    move-object/from16 v2, v133

    invoke-static {v2, v1}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addDigestOid(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    move-object/from16 v1, v134

    invoke-static {v1, v0}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addDigestOid(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    move-object/from16 v1, v135

    invoke-static {v1, v0}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addDigestOid(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    move-object/from16 v1, v136

    invoke-static {v1, v0}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addDigestOid(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    move-object/from16 v1, v137

    invoke-static {v1, v0}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addDigestOid(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V
    .locals 1

    sget-object v0, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->algorithms:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->algorithms:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "algorithmName already present in addAlgorithm"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static addDigestOid(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V
    .locals 1

    sget-object v0, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->digestOids:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->digestOids:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "signatureOid already present in addDigestOid"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static addParameters(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1Encodable;)V
    .locals 1

    if-eqz p1, :cond_1

    sget-object v0, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->params:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->params:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "algorithmName already present in addParameters"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "use \'noParams\' instead for absent parameters"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static createPSSParams(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;I)Lorg/bouncycastle/asn1/pkcs/RSASSAPSSparams;
    .locals 5

    new-instance v0, Lorg/bouncycastle/asn1/pkcs/RSASSAPSSparams;

    new-instance v1, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v2, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_mgf1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v1, v2, p0}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v2, Lorg/bouncycastle/asn1/ASN1Integer;

    int-to-long v3, p1

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    new-instance p1, Lorg/bouncycastle/asn1/ASN1Integer;

    const-wide/16 v3, 0x1

    invoke-direct {p1, v3, v4}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-direct {v0, p0, v1, v2, p1}, Lorg/bouncycastle/asn1/pkcs/RSASSAPSSparams;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/ASN1Integer;Lorg/bouncycastle/asn1/ASN1Integer;)V

    return-object v0
.end method


# virtual methods
.method public find(Ljava/lang/String;)Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 2

    .line 1
    invoke-static {p1}, Lorg/bouncycastle/util/Strings;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->algorithms:Ljava/util/Map;

    .line 7
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    move-result-object v1

    .line 11
    check-cast v1, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 13
    if-eqz v1, :cond_2

    .line 15
    sget-object p1, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    .line 17
    invoke-interface {p1, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 20
    move-result p1

    .line 21
    if-eqz p1, :cond_0

    .line 23
    new-instance p1, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 25
    invoke-direct {p1, v1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 28
    return-object p1

    .line 29
    :cond_0
    sget-object p1, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->params:Ljava/util/Map;

    .line 31
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    move-result-object p1

    .line 35
    check-cast p1, Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 37
    if-nez p1, :cond_1

    .line 39
    sget-object p1, Lorg/bouncycastle/asn1/DERNull;->INSTANCE:Lorg/bouncycastle/asn1/DERNull;

    .line 41
    :cond_1
    new-instance v0, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 43
    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 46
    return-object v0

    .line 47
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 49
    const-string v1, "Unknown signature type requested: "

    .line 51
    invoke-static {v1, p1}, Lo/Ve;->y(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 54
    move-result-object p1

    .line 55
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 58
    throw v0
.end method
