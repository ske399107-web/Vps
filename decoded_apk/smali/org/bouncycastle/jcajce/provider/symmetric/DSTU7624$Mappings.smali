.class public Lorg/bouncycastle/jcajce/provider/symmetric/DSTU7624$Mappings;
.super Lorg/bouncycastle/jcajce/provider/symmetric/SymmetricAlgorithmProvider;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/provider/symmetric/DSTU7624;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Mappings"
.end annotation


# static fields
.field private static final PREFIX:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/bouncycastle/jcajce/provider/symmetric/DSTU7624;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/jcajce/provider/symmetric/DSTU7624$Mappings;->PREFIX:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/jcajce/provider/symmetric/SymmetricAlgorithmProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public configure(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;)V
    .locals 29

    .line 1
    move-object/from16 v0, p1

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    sget-object v2, Lorg/bouncycastle/jcajce/provider/symmetric/DSTU7624$Mappings;->PREFIX:Ljava/lang/String;

    .line 10
    const-string v3, "$AlgParams"

    .line 12
    const-string v4, "AlgorithmParameters.DSTU7624"

    .line 14
    invoke-static {v1, v2, v3, v0, v4}, Lo/o5;->y(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;)V

    .line 17
    sget-object v1, Lorg/bouncycastle/asn1/ua/UAObjectIdentifiers;->dstu7624cbc_128:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 19
    const-string v4, "AlgorithmParameters"

    .line 21
    invoke-static {v0, v2, v3, v4, v1}, Lo/o5;->B(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 24
    sget-object v5, Lorg/bouncycastle/asn1/ua/UAObjectIdentifiers;->dstu7624cbc_256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 26
    invoke-static {v0, v2, v3, v4, v5}, Lo/o5;->B(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 29
    sget-object v6, Lorg/bouncycastle/asn1/ua/UAObjectIdentifiers;->dstu7624cbc_512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 31
    new-instance v7, Ljava/lang/StringBuilder;

    .line 33
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    move-result-object v3

    .line 46
    invoke-interface {v0, v4, v6, v3}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    .line 49
    new-instance v3, Ljava/lang/StringBuilder;

    .line 51
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 54
    const-string v4, "$AlgParamGen128"

    .line 56
    const-string v7, "AlgorithmParameterGenerator.DSTU7624"

    .line 58
    invoke-static {v3, v2, v4, v0, v7}, Lo/o5;->q(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    move-result-object v3

    .line 62
    invoke-static {v3, v2, v4}, Lo/Ve;->k(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 65
    move-result-object v3

    .line 66
    const-string v4, "AlgorithmParameterGenerator"

    .line 68
    invoke-static {v0, v4, v3, v2, v1}, Lo/Ve;->t(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/StringBuilder;

    .line 71
    move-result-object v3

    .line 72
    const-string v7, "$AlgParamGen256"

    .line 74
    invoke-static {v3, v7, v0, v4, v5}, Lo/Ve;->q(Ljava/lang/StringBuilder;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/StringBuilder;

    .line 77
    move-result-object v3

    .line 78
    const-string v7, "$AlgParamGen512"

    .line 80
    invoke-static {v3, v2, v7}, Lo/Ve;->k(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 83
    move-result-object v3

    .line 84
    invoke-static {v0, v4, v3, v2, v6}, Lo/Ve;->t(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/StringBuilder;

    .line 87
    move-result-object v3

    .line 88
    const-string v4, "$ECB_128"

    .line 90
    const-string v7, "Cipher.DSTU7624"

    .line 92
    invoke-static {v3, v4, v0, v7, v2}, Lo/o5;->r(Ljava/lang/StringBuilder;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    move-result-object v3

    .line 96
    const-string v7, "Cipher.DSTU7624-128"

    .line 98
    invoke-static {v3, v4, v0, v7, v2}, Lo/o5;->r(Ljava/lang/StringBuilder;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    move-result-object v3

    .line 102
    const-string v4, "$ECB_256"

    .line 104
    const-string v7, "Cipher.DSTU7624-256"

    .line 106
    invoke-static {v3, v4, v0, v7, v2}, Lo/o5;->r(Ljava/lang/StringBuilder;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    move-result-object v3

    .line 110
    const-string v4, "$ECB_512"

    .line 112
    const-string v7, "Cipher.DSTU7624-512"

    .line 114
    invoke-static {v3, v4, v0, v7}, Lo/o5;->A(Ljava/lang/StringBuilder;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;)V

    .line 117
    sget-object v3, Lorg/bouncycastle/asn1/ua/UAObjectIdentifiers;->dstu7624ecb_128:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 119
    const-string v4, "$ECB128"

    .line 121
    const-string v7, "Cipher"

    .line 123
    invoke-static {v0, v2, v4, v7, v3}, Lo/o5;->B(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 126
    sget-object v4, Lorg/bouncycastle/asn1/ua/UAObjectIdentifiers;->dstu7624ecb_256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 128
    const-string v8, "$ECB256"

    .line 130
    invoke-static {v0, v2, v8, v7, v4}, Lo/o5;->B(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 133
    sget-object v8, Lorg/bouncycastle/asn1/ua/UAObjectIdentifiers;->dstu7624ecb_512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 135
    new-instance v9, Ljava/lang/StringBuilder;

    .line 137
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 140
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    const-string v10, "$ECB512"

    .line 145
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 151
    move-result-object v9

    .line 152
    invoke-interface {v0, v7, v8, v9}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    .line 155
    new-instance v9, Ljava/lang/StringBuilder;

    .line 157
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 160
    const-string v10, "$CBC128"

    .line 162
    invoke-static {v9, v2, v10}, Lo/Ve;->k(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 165
    move-result-object v9

    .line 166
    invoke-static {v0, v7, v9, v2, v1}, Lo/Ve;->t(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/StringBuilder;

    .line 169
    move-result-object v9

    .line 170
    const-string v10, "$CBC256"

    .line 172
    invoke-static {v9, v10, v0, v7, v5}, Lo/Ve;->q(Ljava/lang/StringBuilder;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/StringBuilder;

    .line 175
    move-result-object v9

    .line 176
    const-string v10, "$CBC512"

    .line 178
    invoke-static {v9, v2, v10}, Lo/Ve;->k(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 181
    move-result-object v9

    .line 182
    invoke-interface {v0, v7, v6, v9}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    .line 185
    sget-object v9, Lorg/bouncycastle/asn1/ua/UAObjectIdentifiers;->dstu7624ofb_128:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 187
    const-string v10, "$OFB128"

    .line 189
    invoke-static {v0, v2, v10, v7, v9}, Lo/o5;->B(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 192
    sget-object v10, Lorg/bouncycastle/asn1/ua/UAObjectIdentifiers;->dstu7624ofb_256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 194
    const-string v11, "$OFB256"

    .line 196
    invoke-static {v0, v2, v11, v7, v10}, Lo/o5;->B(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 199
    sget-object v11, Lorg/bouncycastle/asn1/ua/UAObjectIdentifiers;->dstu7624ofb_512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 201
    const-string v12, "$OFB512"

    .line 203
    invoke-static {v0, v2, v12, v7, v11}, Lo/o5;->B(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 206
    sget-object v12, Lorg/bouncycastle/asn1/ua/UAObjectIdentifiers;->dstu7624cfb_128:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 208
    const-string v13, "$CFB128"

    .line 210
    invoke-static {v0, v2, v13, v7, v12}, Lo/o5;->B(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 213
    sget-object v13, Lorg/bouncycastle/asn1/ua/UAObjectIdentifiers;->dstu7624cfb_256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 215
    const-string v14, "$CFB256"

    .line 217
    invoke-static {v0, v2, v14, v7, v13}, Lo/o5;->B(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 220
    sget-object v14, Lorg/bouncycastle/asn1/ua/UAObjectIdentifiers;->dstu7624cfb_512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 222
    const-string v15, "$CFB512"

    .line 224
    invoke-static {v0, v2, v15, v7, v14}, Lo/o5;->B(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 227
    sget-object v15, Lorg/bouncycastle/asn1/ua/UAObjectIdentifiers;->dstu7624ctr_128:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 229
    move-object/from16 v16, v14

    .line 231
    const-string v14, "$CTR128"

    .line 233
    invoke-static {v0, v2, v14, v7, v15}, Lo/o5;->B(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 236
    sget-object v14, Lorg/bouncycastle/asn1/ua/UAObjectIdentifiers;->dstu7624ctr_256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 238
    move-object/from16 v17, v15

    .line 240
    const-string v15, "$CTR256"

    .line 242
    invoke-static {v0, v2, v15, v7, v14}, Lo/o5;->B(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 245
    sget-object v15, Lorg/bouncycastle/asn1/ua/UAObjectIdentifiers;->dstu7624ctr_512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 247
    move-object/from16 v18, v14

    .line 249
    const-string v14, "$CTR512"

    .line 251
    invoke-static {v0, v2, v14, v7, v15}, Lo/o5;->B(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 254
    sget-object v14, Lorg/bouncycastle/asn1/ua/UAObjectIdentifiers;->dstu7624ccm_128:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 256
    move-object/from16 v19, v15

    .line 258
    const-string v15, "$CCM128"

    .line 260
    invoke-static {v0, v2, v15, v7, v14}, Lo/o5;->B(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 263
    sget-object v15, Lorg/bouncycastle/asn1/ua/UAObjectIdentifiers;->dstu7624ccm_256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 265
    move-object/from16 v20, v14

    .line 267
    const-string v14, "$CCM256"

    .line 269
    invoke-static {v0, v2, v14, v7, v15}, Lo/o5;->B(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 272
    sget-object v14, Lorg/bouncycastle/asn1/ua/UAObjectIdentifiers;->dstu7624ccm_512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 274
    move-object/from16 v21, v15

    .line 276
    new-instance v15, Ljava/lang/StringBuilder;

    .line 278
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 281
    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    move-object/from16 v22, v13

    .line 286
    const-string v13, "$CCM512"

    .line 288
    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 294
    move-result-object v13

    .line 295
    invoke-interface {v0, v7, v14, v13}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    .line 298
    new-instance v7, Ljava/lang/StringBuilder;

    .line 300
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 303
    const-string v13, "$Wrap"

    .line 305
    const-string v15, "Cipher.DSTU7624KW"

    .line 307
    invoke-static {v7, v2, v13, v0, v15}, Lo/o5;->y(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;)V

    .line 310
    const-string v7, "Alg.Alias.Cipher.DSTU7624WRAP"

    .line 312
    const-string v13, "DSTU7624KW"

    .line 314
    const-string v15, "$Wrap128"

    .line 316
    invoke-static {v7, v13, v0, v2, v15}, Lo/o5;->i(Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 319
    move-result-object v7

    .line 320
    const-string v13, "Cipher.DSTU7624-128KW"

    .line 322
    const-string v15, "Alg.Alias.Cipher."

    .line 324
    invoke-static {v0, v13, v7, v15}, Lo/Ve;->s(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    move-result-object v7

    .line 328
    sget-object v13, Lorg/bouncycastle/asn1/ua/UAObjectIdentifiers;->dstu7624kw_128:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 330
    move-object/from16 v23, v14

    .line 332
    invoke-virtual {v13}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    .line 335
    move-result-object v14

    .line 336
    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 342
    move-result-object v7

    .line 343
    const-string v14, "DSTU7624-128KW"

    .line 345
    invoke-interface {v0, v7, v14}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    const-string v7, "Alg.Alias.Cipher.DSTU7624-128WRAP"

    .line 350
    move-object/from16 v24, v12

    .line 352
    const-string v12, "$Wrap256"

    .line 354
    invoke-static {v7, v14, v0, v2, v12}, Lo/o5;->i(Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 357
    move-result-object v7

    .line 358
    const-string v12, "Cipher.DSTU7624-256KW"

    .line 360
    invoke-static {v0, v12, v7, v15}, Lo/Ve;->s(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    move-result-object v7

    .line 364
    sget-object v12, Lorg/bouncycastle/asn1/ua/UAObjectIdentifiers;->dstu7624kw_256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 366
    invoke-virtual {v12}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    .line 369
    move-result-object v14

    .line 370
    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 373
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 376
    move-result-object v7

    .line 377
    const-string v14, "DSTU7624-256KW"

    .line 379
    invoke-interface {v0, v7, v14}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    const-string v7, "Alg.Alias.Cipher.DSTU7624-256WRAP"

    .line 384
    move-object/from16 v25, v11

    .line 386
    const-string v11, "$Wrap512"

    .line 388
    invoke-static {v7, v14, v0, v2, v11}, Lo/o5;->i(Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 391
    move-result-object v7

    .line 392
    const-string v11, "Cipher.DSTU7624-512KW"

    .line 394
    invoke-static {v0, v11, v7, v15}, Lo/Ve;->s(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 397
    move-result-object v7

    .line 398
    sget-object v11, Lorg/bouncycastle/asn1/ua/UAObjectIdentifiers;->dstu7624kw_512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 400
    invoke-virtual {v11}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    .line 403
    move-result-object v14

    .line 404
    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 407
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 410
    move-result-object v7

    .line 411
    const-string v14, "DSTU7624-512KW"

    .line 413
    invoke-interface {v0, v7, v14}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    const-string v7, "Alg.Alias.Cipher.DSTU7624-512WRAP"

    .line 418
    const-string v15, "$GMAC"

    .line 420
    invoke-static {v7, v14, v0, v2, v15}, Lo/o5;->i(Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 423
    move-result-object v7

    .line 424
    const-string v14, "Mac.DSTU7624GMAC"

    .line 426
    const-string v15, "$GMAC128"

    .line 428
    invoke-static {v14, v7, v0, v2, v15}, Lo/o5;->i(Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 431
    move-result-object v7

    .line 432
    const-string v14, "Mac.DSTU7624-128GMAC"

    .line 434
    const-string v15, "Alg.Alias.Mac."

    .line 436
    invoke-static {v0, v14, v7, v15}, Lo/Ve;->s(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 439
    move-result-object v7

    .line 440
    sget-object v14, Lorg/bouncycastle/asn1/ua/UAObjectIdentifiers;->dstu7624gmac_128:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 442
    move-object/from16 v26, v10

    .line 444
    invoke-virtual {v14}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    .line 447
    move-result-object v10

    .line 448
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 451
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 454
    move-result-object v7

    .line 455
    const-string v10, "DSTU7624-128GMAC"

    .line 457
    invoke-interface {v0, v7, v10}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    new-instance v7, Ljava/lang/StringBuilder;

    .line 462
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 465
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 468
    const-string v10, "$GMAC256"

    .line 470
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 473
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 476
    move-result-object v7

    .line 477
    const-string v10, "Mac.DSTU7624-256GMAC"

    .line 479
    invoke-interface {v0, v10, v7}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    new-instance v7, Ljava/lang/StringBuilder;

    .line 484
    invoke-direct {v7, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 487
    sget-object v10, Lorg/bouncycastle/asn1/ua/UAObjectIdentifiers;->dstu7624gmac_256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 489
    move-object/from16 v27, v14

    .line 491
    invoke-virtual {v10}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    .line 494
    move-result-object v14

    .line 495
    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 498
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 501
    move-result-object v7

    .line 502
    const-string v14, "DSTU7624-256GMAC"

    .line 504
    invoke-interface {v0, v7, v14}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    new-instance v7, Ljava/lang/StringBuilder;

    .line 509
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 512
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 515
    const-string v14, "$GMAC512"

    .line 517
    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 520
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 523
    move-result-object v7

    .line 524
    const-string v14, "Mac.DSTU7624-512GMAC"

    .line 526
    invoke-interface {v0, v14, v7}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 529
    new-instance v7, Ljava/lang/StringBuilder;

    .line 531
    invoke-direct {v7, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 534
    sget-object v14, Lorg/bouncycastle/asn1/ua/UAObjectIdentifiers;->dstu7624gmac_512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 536
    invoke-virtual {v14}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    .line 539
    move-result-object v15

    .line 540
    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 543
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 546
    move-result-object v7

    .line 547
    const-string v15, "DSTU7624-512GMAC"

    .line 549
    invoke-interface {v0, v7, v15}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 552
    new-instance v7, Ljava/lang/StringBuilder;

    .line 554
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 557
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 560
    const-string v15, "$KeyGen"

    .line 562
    move-object/from16 v28, v14

    .line 564
    const-string v14, "KeyGenerator.DSTU7624"

    .line 566
    invoke-static {v7, v15, v0, v14, v2}, Lo/o5;->r(Ljava/lang/StringBuilder;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 569
    move-result-object v7

    .line 570
    const-string v14, "$KeyGen128"

    .line 572
    const-string v15, "KeyGenerator"

    .line 574
    invoke-static {v7, v14, v0, v15, v13}, Lo/Ve;->q(Ljava/lang/StringBuilder;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/StringBuilder;

    .line 577
    move-result-object v7

    .line 578
    const-string v13, "$KeyGen256"

    .line 580
    invoke-static {v7, v2, v13}, Lo/Ve;->k(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 583
    move-result-object v7

    .line 584
    invoke-static {v0, v15, v7, v2, v12}, Lo/Ve;->t(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/StringBuilder;

    .line 587
    move-result-object v7

    .line 588
    const-string v12, "$KeyGen512"

    .line 590
    invoke-static {v7, v12, v0, v15, v11}, Lo/Ve;->q(Ljava/lang/StringBuilder;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/StringBuilder;

    .line 593
    move-result-object v7

    .line 594
    invoke-static {v7, v2, v14}, Lo/Ve;->k(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 597
    move-result-object v7

    .line 598
    invoke-static {v0, v15, v7, v2, v3}, Lo/Ve;->t(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/StringBuilder;

    .line 601
    move-result-object v3

    .line 602
    invoke-static {v3, v13, v0, v15, v4}, Lo/Ve;->q(Ljava/lang/StringBuilder;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/StringBuilder;

    .line 605
    move-result-object v3

    .line 606
    invoke-static {v3, v2, v12}, Lo/Ve;->k(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 609
    move-result-object v3

    .line 610
    invoke-static {v0, v15, v3, v2, v8}, Lo/Ve;->t(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/StringBuilder;

    .line 613
    move-result-object v3

    .line 614
    invoke-static {v3, v14, v0, v15, v1}, Lo/Ve;->q(Ljava/lang/StringBuilder;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/StringBuilder;

    .line 617
    move-result-object v1

    .line 618
    invoke-static {v1, v2, v13}, Lo/Ve;->k(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 621
    move-result-object v1

    .line 622
    invoke-static {v0, v15, v1, v2, v5}, Lo/Ve;->t(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/StringBuilder;

    .line 625
    move-result-object v1

    .line 626
    invoke-static {v1, v12, v0, v15, v6}, Lo/Ve;->q(Ljava/lang/StringBuilder;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/StringBuilder;

    .line 629
    move-result-object v1

    .line 630
    invoke-static {v1, v2, v14}, Lo/Ve;->k(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 633
    move-result-object v1

    .line 634
    invoke-static {v0, v15, v1, v2, v9}, Lo/Ve;->t(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/StringBuilder;

    .line 637
    move-result-object v1

    .line 638
    move-object/from16 v3, v26

    .line 640
    invoke-static {v1, v13, v0, v15, v3}, Lo/Ve;->q(Ljava/lang/StringBuilder;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/StringBuilder;

    .line 643
    move-result-object v1

    .line 644
    invoke-static {v1, v2, v12}, Lo/Ve;->k(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 647
    move-result-object v1

    .line 648
    move-object/from16 v3, v25

    .line 650
    invoke-static {v0, v15, v1, v2, v3}, Lo/Ve;->t(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/StringBuilder;

    .line 653
    move-result-object v1

    .line 654
    move-object/from16 v3, v24

    .line 656
    invoke-static {v1, v14, v0, v15, v3}, Lo/Ve;->q(Ljava/lang/StringBuilder;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/StringBuilder;

    .line 659
    move-result-object v1

    .line 660
    invoke-static {v1, v2, v13}, Lo/Ve;->k(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 663
    move-result-object v1

    .line 664
    move-object/from16 v3, v22

    .line 666
    invoke-static {v0, v15, v1, v2, v3}, Lo/Ve;->t(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/StringBuilder;

    .line 669
    move-result-object v1

    .line 670
    move-object/from16 v3, v16

    .line 672
    invoke-static {v1, v12, v0, v15, v3}, Lo/Ve;->q(Ljava/lang/StringBuilder;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/StringBuilder;

    .line 675
    move-result-object v1

    .line 676
    invoke-static {v1, v2, v14}, Lo/Ve;->k(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 679
    move-result-object v1

    .line 680
    move-object/from16 v3, v17

    .line 682
    invoke-static {v0, v15, v1, v2, v3}, Lo/Ve;->t(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/StringBuilder;

    .line 685
    move-result-object v1

    .line 686
    move-object/from16 v3, v18

    .line 688
    invoke-static {v1, v13, v0, v15, v3}, Lo/Ve;->q(Ljava/lang/StringBuilder;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/StringBuilder;

    .line 691
    move-result-object v1

    .line 692
    invoke-static {v1, v2, v12}, Lo/Ve;->k(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 695
    move-result-object v1

    .line 696
    move-object/from16 v3, v19

    .line 698
    invoke-static {v0, v15, v1, v2, v3}, Lo/Ve;->t(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/StringBuilder;

    .line 701
    move-result-object v1

    .line 702
    move-object/from16 v3, v20

    .line 704
    invoke-static {v1, v14, v0, v15, v3}, Lo/Ve;->q(Ljava/lang/StringBuilder;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/StringBuilder;

    .line 707
    move-result-object v1

    .line 708
    invoke-static {v1, v2, v13}, Lo/Ve;->k(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 711
    move-result-object v1

    .line 712
    move-object/from16 v3, v21

    .line 714
    invoke-static {v0, v15, v1, v2, v3}, Lo/Ve;->t(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/StringBuilder;

    .line 717
    move-result-object v1

    .line 718
    move-object/from16 v3, v23

    .line 720
    invoke-static {v1, v12, v0, v15, v3}, Lo/Ve;->q(Ljava/lang/StringBuilder;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/StringBuilder;

    .line 723
    move-result-object v1

    .line 724
    invoke-static {v1, v2, v14}, Lo/Ve;->k(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 727
    move-result-object v1

    .line 728
    move-object/from16 v3, v27

    .line 730
    invoke-static {v0, v15, v1, v2, v3}, Lo/Ve;->t(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/StringBuilder;

    .line 733
    move-result-object v1

    .line 734
    invoke-static {v1, v13, v0, v15, v10}, Lo/Ve;->q(Ljava/lang/StringBuilder;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/StringBuilder;

    .line 737
    move-result-object v1

    .line 738
    invoke-static {v1, v2, v12}, Lo/Ve;->k(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 741
    move-result-object v1

    .line 742
    move-object/from16 v2, v28

    .line 744
    invoke-interface {v0, v15, v2, v1}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    .line 747
    return-void
.end method
