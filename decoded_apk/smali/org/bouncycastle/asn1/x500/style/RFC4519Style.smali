.class public Lorg/bouncycastle/asn1/x500/style/RFC4519Style;
.super Lorg/bouncycastle/asn1/x500/style/AbstractX500NameStyle;
.source "SourceFile"


# static fields
.field private static final DefaultLookUp:Ljava/util/Hashtable;

.field private static final DefaultSymbols:Ljava/util/Hashtable;

.field public static final INSTANCE:Lorg/bouncycastle/asn1/x500/X500NameStyle;

.field public static final businessCategory:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final c:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final cn:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final dc:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final description:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final destinationIndicator:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final distinguishedName:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final dnQualifier:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final enhancedSearchGuide:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final facsimileTelephoneNumber:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final generationQualifier:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final givenName:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final houseIdentifier:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final initials:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final internationalISDNNumber:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final l:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final member:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final name:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final o:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final ou:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final owner:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final physicalDeliveryOfficeName:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final postOfficeBox:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final postalAddress:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final postalCode:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final preferredDeliveryMethod:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final registeredAddress:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final roleOccupant:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final searchGuide:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final seeAlso:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final serialNumber:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final sn:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final st:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final street:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final telephoneNumber:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final teletexTerminalIdentifier:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final telexNumber:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final title:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final uid:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final uniqueMember:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final userPassword:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final x121Address:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final x500UniqueIdentifier:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;


# instance fields
.field protected final defaultLookUp:Ljava/util/Hashtable;

.field protected final defaultSymbols:Ljava/util/Hashtable;


# direct methods
.method static constructor <clinit>()V
    .locals 63

    .line 1
    const-string v0, "2.5.4.15"

    .line 3
    invoke-static {v0}, Lo/o5;->w(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->businessCategory:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 9
    const-string v1, "2.5.4.6"

    .line 11
    invoke-static {v1}, Lo/o5;->w(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 14
    move-result-object v1

    .line 15
    sput-object v1, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->c:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 17
    const-string v2, "2.5.4.3"

    .line 19
    invoke-static {v2}, Lo/o5;->w(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 22
    move-result-object v2

    .line 23
    sput-object v2, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->cn:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 25
    const-string v3, "0.9.2342.19200300.100.1.25"

    .line 27
    invoke-static {v3}, Lo/o5;->w(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 30
    move-result-object v3

    .line 31
    sput-object v3, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->dc:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 33
    const-string v4, "2.5.4.13"

    .line 35
    invoke-static {v4}, Lo/o5;->w(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 38
    move-result-object v4

    .line 39
    sput-object v4, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->description:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 41
    const-string v5, "2.5.4.27"

    .line 43
    invoke-static {v5}, Lo/o5;->w(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 46
    move-result-object v5

    .line 47
    sput-object v5, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->destinationIndicator:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 49
    const-string v6, "2.5.4.49"

    .line 51
    invoke-static {v6}, Lo/o5;->w(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 54
    move-result-object v6

    .line 55
    sput-object v6, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->distinguishedName:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 57
    const-string v7, "2.5.4.46"

    .line 59
    invoke-static {v7}, Lo/o5;->w(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 62
    move-result-object v7

    .line 63
    sput-object v7, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->dnQualifier:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 65
    const-string v8, "2.5.4.47"

    .line 67
    invoke-static {v8}, Lo/o5;->w(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 70
    move-result-object v8

    .line 71
    sput-object v8, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->enhancedSearchGuide:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 73
    const-string v9, "2.5.4.23"

    .line 75
    invoke-static {v9}, Lo/o5;->w(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 78
    move-result-object v9

    .line 79
    sput-object v9, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->facsimileTelephoneNumber:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 81
    const-string v10, "2.5.4.44"

    .line 83
    invoke-static {v10}, Lo/o5;->w(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 86
    move-result-object v10

    .line 87
    sput-object v10, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->generationQualifier:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 89
    const-string v11, "2.5.4.42"

    .line 91
    invoke-static {v11}, Lo/o5;->w(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 94
    move-result-object v11

    .line 95
    sput-object v11, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->givenName:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 97
    const-string v12, "2.5.4.51"

    .line 99
    invoke-static {v12}, Lo/o5;->w(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 102
    move-result-object v12

    .line 103
    sput-object v12, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->houseIdentifier:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 105
    const-string v13, "2.5.4.43"

    .line 107
    invoke-static {v13}, Lo/o5;->w(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 110
    move-result-object v13

    .line 111
    sput-object v13, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->initials:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 113
    const-string v14, "2.5.4.25"

    .line 115
    invoke-static {v14}, Lo/o5;->w(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 118
    move-result-object v14

    .line 119
    sput-object v14, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->internationalISDNNumber:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 121
    const-string v15, "2.5.4.7"

    .line 123
    invoke-static {v15}, Lo/o5;->w(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 126
    move-result-object v15

    .line 127
    sput-object v15, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->l:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 129
    const-string v16, "2.5.4.31"

    .line 131
    move-object/from16 v17, v15

    .line 133
    invoke-static/range {v16 .. v16}, Lo/o5;->w(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 136
    move-result-object v15

    .line 137
    sput-object v15, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->member:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 139
    const-string v16, "2.5.4.41"

    .line 141
    move-object/from16 v18, v15

    .line 143
    invoke-static/range {v16 .. v16}, Lo/o5;->w(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 146
    move-result-object v15

    .line 147
    sput-object v15, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->name:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 149
    const-string v16, "2.5.4.10"

    .line 151
    move-object/from16 v19, v15

    .line 153
    invoke-static/range {v16 .. v16}, Lo/o5;->w(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 156
    move-result-object v15

    .line 157
    sput-object v15, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->o:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 159
    const-string v16, "2.5.4.11"

    .line 161
    move-object/from16 v20, v15

    .line 163
    invoke-static/range {v16 .. v16}, Lo/o5;->w(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 166
    move-result-object v15

    .line 167
    sput-object v15, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->ou:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 169
    const-string v16, "2.5.4.32"

    .line 171
    move-object/from16 v21, v15

    .line 173
    invoke-static/range {v16 .. v16}, Lo/o5;->w(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 176
    move-result-object v15

    .line 177
    sput-object v15, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->owner:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 179
    const-string v16, "2.5.4.19"

    .line 181
    move-object/from16 v22, v15

    .line 183
    invoke-static/range {v16 .. v16}, Lo/o5;->w(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 186
    move-result-object v15

    .line 187
    sput-object v15, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->physicalDeliveryOfficeName:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 189
    const-string v16, "2.5.4.16"

    .line 191
    move-object/from16 v23, v15

    .line 193
    invoke-static/range {v16 .. v16}, Lo/o5;->w(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 196
    move-result-object v15

    .line 197
    sput-object v15, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->postalAddress:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 199
    const-string v16, "2.5.4.17"

    .line 201
    move-object/from16 v24, v15

    .line 203
    invoke-static/range {v16 .. v16}, Lo/o5;->w(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 206
    move-result-object v15

    .line 207
    sput-object v15, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->postalCode:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 209
    const-string v16, "2.5.4.18"

    .line 211
    move-object/from16 v25, v15

    .line 213
    invoke-static/range {v16 .. v16}, Lo/o5;->w(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 216
    move-result-object v15

    .line 217
    sput-object v15, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->postOfficeBox:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 219
    const-string v16, "2.5.4.28"

    .line 221
    move-object/from16 v26, v15

    .line 223
    invoke-static/range {v16 .. v16}, Lo/o5;->w(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 226
    move-result-object v15

    .line 227
    sput-object v15, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->preferredDeliveryMethod:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 229
    const-string v16, "2.5.4.26"

    .line 231
    move-object/from16 v27, v15

    .line 233
    invoke-static/range {v16 .. v16}, Lo/o5;->w(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 236
    move-result-object v15

    .line 237
    sput-object v15, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->registeredAddress:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 239
    const-string v16, "2.5.4.33"

    .line 241
    move-object/from16 v28, v15

    .line 243
    invoke-static/range {v16 .. v16}, Lo/o5;->w(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 246
    move-result-object v15

    .line 247
    sput-object v15, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->roleOccupant:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 249
    const-string v16, "2.5.4.14"

    .line 251
    move-object/from16 v29, v15

    .line 253
    invoke-static/range {v16 .. v16}, Lo/o5;->w(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 256
    move-result-object v15

    .line 257
    sput-object v15, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->searchGuide:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 259
    const-string v16, "2.5.4.34"

    .line 261
    move-object/from16 v30, v15

    .line 263
    invoke-static/range {v16 .. v16}, Lo/o5;->w(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 266
    move-result-object v15

    .line 267
    sput-object v15, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->seeAlso:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 269
    const-string v16, "2.5.4.5"

    .line 271
    move-object/from16 v31, v15

    .line 273
    invoke-static/range {v16 .. v16}, Lo/o5;->w(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 276
    move-result-object v15

    .line 277
    sput-object v15, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->serialNumber:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 279
    const-string v16, "2.5.4.4"

    .line 281
    move-object/from16 v32, v15

    .line 283
    invoke-static/range {v16 .. v16}, Lo/o5;->w(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 286
    move-result-object v15

    .line 287
    sput-object v15, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->sn:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 289
    const-string v16, "2.5.4.8"

    .line 291
    move-object/from16 v33, v15

    .line 293
    invoke-static/range {v16 .. v16}, Lo/o5;->w(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 296
    move-result-object v15

    .line 297
    sput-object v15, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->st:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 299
    const-string v16, "2.5.4.9"

    .line 301
    move-object/from16 v34, v15

    .line 303
    invoke-static/range {v16 .. v16}, Lo/o5;->w(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 306
    move-result-object v15

    .line 307
    sput-object v15, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->street:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 309
    const-string v16, "2.5.4.20"

    .line 311
    move-object/from16 v35, v15

    .line 313
    invoke-static/range {v16 .. v16}, Lo/o5;->w(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 316
    move-result-object v15

    .line 317
    sput-object v15, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->telephoneNumber:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 319
    const-string v16, "2.5.4.22"

    .line 321
    move-object/from16 v36, v15

    .line 323
    invoke-static/range {v16 .. v16}, Lo/o5;->w(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 326
    move-result-object v15

    .line 327
    sput-object v15, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->teletexTerminalIdentifier:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 329
    const-string v16, "2.5.4.21"

    .line 331
    move-object/from16 v37, v15

    .line 333
    invoke-static/range {v16 .. v16}, Lo/o5;->w(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 336
    move-result-object v15

    .line 337
    sput-object v15, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->telexNumber:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 339
    const-string v16, "2.5.4.12"

    .line 341
    move-object/from16 v38, v15

    .line 343
    invoke-static/range {v16 .. v16}, Lo/o5;->w(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 346
    move-result-object v15

    .line 347
    sput-object v15, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->title:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 349
    const-string v16, "0.9.2342.19200300.100.1.1"

    .line 351
    move-object/from16 v39, v15

    .line 353
    invoke-static/range {v16 .. v16}, Lo/o5;->w(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 356
    move-result-object v15

    .line 357
    sput-object v15, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->uid:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 359
    const-string v16, "2.5.4.50"

    .line 361
    move-object/from16 v40, v15

    .line 363
    invoke-static/range {v16 .. v16}, Lo/o5;->w(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 366
    move-result-object v15

    .line 367
    sput-object v15, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->uniqueMember:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 369
    const-string v16, "2.5.4.35"

    .line 371
    move-object/from16 v41, v15

    .line 373
    invoke-static/range {v16 .. v16}, Lo/o5;->w(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 376
    move-result-object v15

    .line 377
    sput-object v15, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->userPassword:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 379
    const-string v16, "2.5.4.24"

    .line 381
    move-object/from16 v42, v15

    .line 383
    invoke-static/range {v16 .. v16}, Lo/o5;->w(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 386
    move-result-object v15

    .line 387
    sput-object v15, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->x121Address:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 389
    const-string v16, "2.5.4.45"

    .line 391
    move-object/from16 v43, v15

    .line 393
    invoke-static/range {v16 .. v16}, Lo/o5;->w(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 396
    move-result-object v15

    .line 397
    sput-object v15, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->x500UniqueIdentifier:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 399
    move-object/from16 v16, v15

    .line 401
    new-instance v15, Ljava/util/Hashtable;

    .line 403
    invoke-direct {v15}, Ljava/util/Hashtable;-><init>()V

    .line 406
    sput-object v15, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultSymbols:Ljava/util/Hashtable;

    .line 408
    move-object/from16 v44, v14

    .line 410
    new-instance v14, Ljava/util/Hashtable;

    .line 412
    invoke-direct {v14}, Ljava/util/Hashtable;-><init>()V

    .line 415
    sput-object v14, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultLookUp:Ljava/util/Hashtable;

    .line 417
    move-object/from16 v45, v14

    .line 419
    const-string v14, "businessCategory"

    .line 421
    invoke-virtual {v15, v0, v14}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 424
    const-string v14, "c"

    .line 426
    invoke-virtual {v15, v1, v14}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 429
    move-object/from16 v46, v1

    .line 431
    const-string v1, "cn"

    .line 433
    invoke-virtual {v15, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 436
    move-object/from16 v47, v1

    .line 438
    const-string v1, "dc"

    .line 440
    invoke-virtual {v15, v3, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 443
    move-object/from16 v48, v1

    .line 445
    const-string v1, "description"

    .line 447
    invoke-virtual {v15, v4, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 450
    move-object/from16 v49, v1

    .line 452
    const-string v1, "destinationIndicator"

    .line 454
    invoke-virtual {v15, v5, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 457
    const-string v1, "distinguishedName"

    .line 459
    invoke-virtual {v15, v6, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 462
    const-string v1, "dnQualifier"

    .line 464
    invoke-virtual {v15, v7, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 467
    const-string v1, "enhancedSearchGuide"

    .line 469
    invoke-virtual {v15, v8, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 472
    const-string v1, "facsimileTelephoneNumber"

    .line 474
    invoke-virtual {v15, v9, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 477
    const-string v1, "generationQualifier"

    .line 479
    invoke-virtual {v15, v10, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 482
    const-string v1, "givenName"

    .line 484
    invoke-virtual {v15, v11, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 487
    const-string v1, "houseIdentifier"

    .line 489
    invoke-virtual {v15, v12, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 492
    const-string v1, "initials"

    .line 494
    invoke-virtual {v15, v13, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 497
    move-object/from16 v50, v1

    .line 499
    const-string v1, "internationalISDNNumber"

    .line 501
    move-object/from16 v51, v13

    .line 503
    move-object/from16 v13, v44

    .line 505
    invoke-virtual {v15, v13, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 508
    const-string v1, "l"

    .line 510
    move-object/from16 v13, v17

    .line 512
    invoke-virtual {v15, v13, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 515
    move-object/from16 v17, v1

    .line 517
    const-string v1, "member"

    .line 519
    move-object/from16 v52, v13

    .line 521
    move-object/from16 v13, v18

    .line 523
    invoke-virtual {v15, v13, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 526
    move-object/from16 v18, v1

    .line 528
    const-string v1, "name"

    .line 530
    move-object/from16 v53, v13

    .line 532
    move-object/from16 v13, v19

    .line 534
    invoke-virtual {v15, v13, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 537
    move-object/from16 v19, v1

    .line 539
    const-string v1, "o"

    .line 541
    move-object/from16 v54, v13

    .line 543
    move-object/from16 v13, v20

    .line 545
    invoke-virtual {v15, v13, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 548
    move-object/from16 v20, v1

    .line 550
    const-string v1, "ou"

    .line 552
    move-object/from16 v55, v13

    .line 554
    move-object/from16 v13, v21

    .line 556
    invoke-virtual {v15, v13, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 559
    move-object/from16 v21, v1

    .line 561
    const-string v1, "owner"

    .line 563
    move-object/from16 v56, v13

    .line 565
    move-object/from16 v13, v22

    .line 567
    invoke-virtual {v15, v13, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 570
    move-object/from16 v22, v1

    .line 572
    const-string v1, "physicalDeliveryOfficeName"

    .line 574
    move-object/from16 v57, v13

    .line 576
    move-object/from16 v13, v23

    .line 578
    invoke-virtual {v15, v13, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 581
    const-string v1, "postalAddress"

    .line 583
    move-object/from16 v13, v24

    .line 585
    invoke-virtual {v15, v13, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 588
    const-string v1, "postalCode"

    .line 590
    move-object/from16 v13, v25

    .line 592
    invoke-virtual {v15, v13, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 595
    const-string v1, "postOfficeBox"

    .line 597
    move-object/from16 v13, v26

    .line 599
    invoke-virtual {v15, v13, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 602
    const-string v1, "preferredDeliveryMethod"

    .line 604
    move-object/from16 v13, v27

    .line 606
    invoke-virtual {v15, v13, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 609
    const-string v1, "registeredAddress"

    .line 611
    move-object/from16 v13, v28

    .line 613
    invoke-virtual {v15, v13, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 616
    const-string v1, "roleOccupant"

    .line 618
    move-object/from16 v13, v29

    .line 620
    invoke-virtual {v15, v13, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 623
    const-string v1, "searchGuide"

    .line 625
    move-object/from16 v13, v30

    .line 627
    invoke-virtual {v15, v13, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 630
    const-string v1, "seeAlso"

    .line 632
    move-object/from16 v13, v31

    .line 634
    invoke-virtual {v15, v13, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 637
    const-string v1, "serialNumber"

    .line 639
    move-object/from16 v13, v32

    .line 641
    invoke-virtual {v15, v13, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 644
    const-string v1, "sn"

    .line 646
    move-object/from16 v13, v33

    .line 648
    invoke-virtual {v15, v13, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 651
    move-object/from16 v33, v1

    .line 653
    const-string v1, "st"

    .line 655
    move-object/from16 v58, v13

    .line 657
    move-object/from16 v13, v34

    .line 659
    invoke-virtual {v15, v13, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 662
    move-object/from16 v34, v1

    .line 664
    const-string v1, "street"

    .line 666
    move-object/from16 v59, v13

    .line 668
    move-object/from16 v13, v35

    .line 670
    invoke-virtual {v15, v13, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 673
    move-object/from16 v35, v1

    .line 675
    const-string v1, "telephoneNumber"

    .line 677
    move-object/from16 v60, v13

    .line 679
    move-object/from16 v13, v36

    .line 681
    invoke-virtual {v15, v13, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 684
    const-string v1, "teletexTerminalIdentifier"

    .line 686
    move-object/from16 v13, v37

    .line 688
    invoke-virtual {v15, v13, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 691
    const-string v1, "telexNumber"

    .line 693
    move-object/from16 v13, v38

    .line 695
    invoke-virtual {v15, v13, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 698
    const-string v1, "title"

    .line 700
    move-object/from16 v13, v39

    .line 702
    invoke-virtual {v15, v13, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 705
    move-object/from16 v39, v1

    .line 707
    const-string v1, "uid"

    .line 709
    move-object/from16 v61, v13

    .line 711
    move-object/from16 v13, v40

    .line 713
    invoke-virtual {v15, v13, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 716
    move-object/from16 v40, v1

    .line 718
    const-string v1, "uniqueMember"

    .line 720
    move-object/from16 v62, v13

    .line 722
    move-object/from16 v13, v41

    .line 724
    invoke-virtual {v15, v13, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 727
    const-string v1, "userPassword"

    .line 729
    move-object/from16 v13, v42

    .line 731
    invoke-virtual {v15, v13, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 734
    const-string v1, "x121Address"

    .line 736
    move-object/from16 v13, v43

    .line 738
    invoke-virtual {v15, v13, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 741
    const-string v1, "x500UniqueIdentifier"

    .line 743
    move-object/from16 v13, v16

    .line 745
    invoke-virtual {v15, v13, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 748
    const-string v1, "businesscategory"

    .line 750
    move-object/from16 v15, v45

    .line 752
    invoke-virtual {v15, v1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 755
    move-object/from16 v0, v46

    .line 757
    invoke-virtual {v15, v14, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 760
    move-object/from16 v0, v47

    .line 762
    invoke-virtual {v15, v0, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 765
    move-object/from16 v0, v48

    .line 767
    invoke-virtual {v15, v0, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 770
    move-object/from16 v0, v49

    .line 772
    invoke-virtual {v15, v0, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 775
    const-string v0, "destinationindicator"

    .line 777
    invoke-virtual {v15, v0, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 780
    const-string v0, "distinguishedname"

    .line 782
    invoke-virtual {v15, v0, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 785
    const-string v0, "dnqualifier"

    .line 787
    invoke-virtual {v15, v0, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 790
    const-string v0, "enhancedsearchguide"

    .line 792
    invoke-virtual {v15, v0, v8}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 795
    const-string v0, "facsimiletelephonenumber"

    .line 797
    invoke-virtual {v15, v0, v9}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 800
    const-string v0, "generationqualifier"

    .line 802
    invoke-virtual {v15, v0, v10}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 805
    const-string v0, "givenname"

    .line 807
    invoke-virtual {v15, v0, v11}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 810
    const-string v0, "houseidentifier"

    .line 812
    invoke-virtual {v15, v0, v12}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 815
    move-object/from16 v1, v50

    .line 817
    move-object/from16 v0, v51

    .line 819
    invoke-virtual {v15, v1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 822
    const-string v0, "internationalisdnnumber"

    .line 824
    move-object/from16 v1, v44

    .line 826
    invoke-virtual {v15, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 829
    move-object/from16 v1, v17

    .line 831
    move-object/from16 v0, v52

    .line 833
    invoke-virtual {v15, v1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 836
    move-object/from16 v1, v18

    .line 838
    move-object/from16 v0, v53

    .line 840
    invoke-virtual {v15, v1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 843
    move-object/from16 v1, v19

    .line 845
    move-object/from16 v0, v54

    .line 847
    invoke-virtual {v15, v1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 850
    move-object/from16 v1, v20

    .line 852
    move-object/from16 v0, v55

    .line 854
    invoke-virtual {v15, v1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 857
    move-object/from16 v1, v21

    .line 859
    move-object/from16 v0, v56

    .line 861
    invoke-virtual {v15, v1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 864
    move-object/from16 v1, v22

    .line 866
    move-object/from16 v0, v57

    .line 868
    invoke-virtual {v15, v1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 871
    const-string v0, "physicaldeliveryofficename"

    .line 873
    move-object/from16 v1, v23

    .line 875
    invoke-virtual {v15, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 878
    const-string v0, "postaladdress"

    .line 880
    move-object/from16 v1, v24

    .line 882
    invoke-virtual {v15, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 885
    const-string v0, "postalcode"

    .line 887
    move-object/from16 v1, v25

    .line 889
    invoke-virtual {v15, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 892
    const-string v0, "postofficebox"

    .line 894
    move-object/from16 v1, v26

    .line 896
    invoke-virtual {v15, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 899
    const-string v0, "preferreddeliverymethod"

    .line 901
    move-object/from16 v1, v27

    .line 903
    invoke-virtual {v15, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 906
    const-string v0, "registeredaddress"

    .line 908
    move-object/from16 v1, v28

    .line 910
    invoke-virtual {v15, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 913
    const-string v0, "roleoccupant"

    .line 915
    move-object/from16 v1, v29

    .line 917
    invoke-virtual {v15, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 920
    const-string v0, "searchguide"

    .line 922
    move-object/from16 v1, v30

    .line 924
    invoke-virtual {v15, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 927
    const-string v0, "seealso"

    .line 929
    move-object/from16 v1, v31

    .line 931
    invoke-virtual {v15, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 934
    const-string v0, "serialnumber"

    .line 936
    move-object/from16 v1, v32

    .line 938
    invoke-virtual {v15, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 941
    move-object/from16 v1, v33

    .line 943
    move-object/from16 v0, v58

    .line 945
    invoke-virtual {v15, v1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 948
    move-object/from16 v1, v34

    .line 950
    move-object/from16 v0, v59

    .line 952
    invoke-virtual {v15, v1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 955
    move-object/from16 v1, v35

    .line 957
    move-object/from16 v0, v60

    .line 959
    invoke-virtual {v15, v1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 962
    const-string v0, "telephonenumber"

    .line 964
    move-object/from16 v1, v36

    .line 966
    invoke-virtual {v15, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 969
    const-string v0, "teletexterminalidentifier"

    .line 971
    move-object/from16 v1, v37

    .line 973
    invoke-virtual {v15, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 976
    const-string v0, "telexnumber"

    .line 978
    move-object/from16 v1, v38

    .line 980
    invoke-virtual {v15, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 983
    move-object/from16 v1, v39

    .line 985
    move-object/from16 v0, v61

    .line 987
    invoke-virtual {v15, v1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 990
    move-object/from16 v1, v40

    .line 992
    move-object/from16 v0, v62

    .line 994
    invoke-virtual {v15, v1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 997
    const-string v0, "uniquemember"

    .line 999
    move-object/from16 v1, v41

    .line 1001
    invoke-virtual {v15, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1004
    const-string v0, "userpassword"

    .line 1006
    move-object/from16 v1, v42

    .line 1008
    invoke-virtual {v15, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1011
    const-string v0, "x121address"

    .line 1013
    move-object/from16 v1, v43

    .line 1015
    invoke-virtual {v15, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1018
    const-string v0, "x500uniqueidentifier"

    .line 1020
    invoke-virtual {v15, v0, v13}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1023
    new-instance v0, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;

    .line 1025
    invoke-direct {v0}, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;-><init>()V

    .line 1028
    sput-object v0, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->INSTANCE:Lorg/bouncycastle/asn1/x500/X500NameStyle;

    .line 1030
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/asn1/x500/style/AbstractX500NameStyle;-><init>()V

    sget-object v0, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultSymbols:Ljava/util/Hashtable;

    invoke-static {v0}, Lorg/bouncycastle/asn1/x500/style/AbstractX500NameStyle;->copyHashTable(Ljava/util/Hashtable;)Ljava/util/Hashtable;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->defaultSymbols:Ljava/util/Hashtable;

    sget-object v0, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultLookUp:Ljava/util/Hashtable;

    invoke-static {v0}, Lorg/bouncycastle/asn1/x500/style/AbstractX500NameStyle;->copyHashTable(Ljava/util/Hashtable;)Ljava/util/Hashtable;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->defaultLookUp:Ljava/util/Hashtable;

    return-void
.end method


# virtual methods
.method public attrNameToOID(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->defaultLookUp:Ljava/util/Hashtable;

    invoke-static {p1, v0}, Lorg/bouncycastle/asn1/x500/style/IETFUtils;->decodeAttrName(Ljava/lang/String;Ljava/util/Hashtable;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object p1

    return-object p1
.end method

.method public encodeStringValue(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1Encodable;
    .locals 1

    sget-object v0, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->dc:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Primitive;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p1, Lorg/bouncycastle/asn1/DERIA5String;

    invoke-direct {p1, p2}, Lorg/bouncycastle/asn1/DERIA5String;-><init>(Ljava/lang/String;)V

    return-object p1

    :cond_0
    sget-object v0, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->c:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Primitive;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->serialNumber:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Primitive;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->dnQualifier:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Primitive;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->telephoneNumber:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Primitive;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-super {p0, p1, p2}, Lorg/bouncycastle/asn1/x500/style/AbstractX500NameStyle;->encodeStringValue(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    return-object p1

    :cond_2
    :goto_0
    new-instance p1, Lorg/bouncycastle/asn1/DERPrintableString;

    invoke-direct {p1, p2}, Lorg/bouncycastle/asn1/DERPrintableString;-><init>(Ljava/lang/String;)V

    return-object p1
.end method

.method public fromString(Ljava/lang/String;)[Lorg/bouncycastle/asn1/x500/RDN;
    .locals 5

    invoke-static {p1, p0}, Lorg/bouncycastle/asn1/x500/style/IETFUtils;->rDNsFromString(Ljava/lang/String;Lorg/bouncycastle/asn1/x500/X500NameStyle;)[Lorg/bouncycastle/asn1/x500/RDN;

    move-result-object p1

    array-length v0, p1

    new-array v1, v0, [Lorg/bouncycastle/asn1/x500/RDN;

    const/4 v2, 0x0

    :goto_0
    array-length v3, p1

    if-eq v2, v3, :cond_0

    sub-int v3, v0, v2

    add-int/lit8 v3, v3, -0x1

    aget-object v4, p1, v2

    aput-object v4, v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public oidToAttrNames(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->defaultLookUp:Ljava/util/Hashtable;

    invoke-static {p1, v0}, Lorg/bouncycastle/asn1/x500/style/IETFUtils;->findAttrNamesForOID(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/util/Hashtable;)[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public oidToDisplayName(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->defaultSymbols:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public toString(Lorg/bouncycastle/asn1/x500/X500Name;)Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x500/X500Name;->getRDNs()[Lorg/bouncycastle/asn1/x500/RDN;

    move-result-object p1

    array-length v1, p1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_0
    if-ltz v1, :cond_1

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    goto :goto_1

    :cond_0
    const/16 v3, 0x2c

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_1
    aget-object v3, p1, v1

    iget-object v4, p0, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->defaultSymbols:Ljava/util/Hashtable;

    invoke-static {v0, v3, v4}, Lorg/bouncycastle/asn1/x500/style/IETFUtils;->appendRDN(Ljava/lang/StringBuffer;Lorg/bouncycastle/asn1/x500/RDN;Ljava/util/Hashtable;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
