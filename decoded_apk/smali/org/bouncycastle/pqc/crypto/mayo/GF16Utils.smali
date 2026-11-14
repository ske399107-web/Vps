.class Lorg/bouncycastle/pqc/crypto/mayo/GF16Utils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final MASK_LSB:J = 0x1111111111111111L

.field static final MASK_MSB:J = -0x7777777777777778L

.field static final NIBBLE_MASK_LSB:J = -0x1111111111111112L

.field static final NIBBLE_MASK_MSB:J = 0x7777777777777777L


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static mVecMulAdd(I[JII[JI)V
    .locals 27

    move/from16 v0, p3

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v2, v0

    const-wide/16 v4, 0x1

    and-long/2addr v0, v4

    const/4 v6, 0x1

    ushr-long v7, v2, v6

    and-long/2addr v7, v4

    const/4 v9, 0x2

    ushr-long v9, v2, v9

    and-long/2addr v9, v4

    const/4 v11, 0x3

    ushr-long/2addr v2, v11

    and-long/2addr v2, v4

    const/4 v4, 0x0

    move/from16 v13, p0

    move/from16 v5, p5

    move v12, v4

    move/from16 v4, p2

    :goto_0
    if-ge v12, v13, :cond_0

    add-int/lit8 v14, v4, 0x1

    aget-wide v15, p1, v4

    move-wide/from16 v17, v7

    neg-long v6, v0

    and-long/2addr v6, v15

    const-wide v19, -0x7777777777777778L    # -1.48603973805866E-267

    and-long v21, v15, v19

    const-wide v23, 0x7777777777777777L    # 3.0266874179647486E267

    and-long v15, v15, v23

    ushr-long v21, v21, v11

    const/4 v4, 0x1

    shl-long/2addr v15, v4

    shl-long v25, v21, v4

    add-long v21, v21, v25

    xor-long v15, v15, v21

    move/from16 p2, v5

    move-wide/from16 v4, v17

    move/from16 v17, v12

    neg-long v11, v4

    and-long/2addr v11, v15

    xor-long/2addr v6, v11

    and-long v11, v15, v19

    and-long v15, v15, v23

    const/4 v8, 0x3

    ushr-long/2addr v11, v8

    const/16 v18, 0x1

    shl-long v15, v15, v18

    shl-long v21, v11, v18

    add-long v11, v11, v21

    xor-long/2addr v11, v15

    move-wide v15, v0

    neg-long v0, v9

    and-long/2addr v0, v11

    xor-long/2addr v0, v6

    and-long v6, v11, v19

    and-long v11, v11, v23

    ushr-long/2addr v6, v8

    shl-long v11, v11, v18

    shl-long v19, v6, v18

    add-long v6, v6, v19

    xor-long/2addr v6, v11

    add-int/lit8 v11, p2, 0x1

    aget-wide v19, p4, p2

    move-wide/from16 v21, v9

    neg-long v8, v2

    and-long/2addr v6, v8

    xor-long/2addr v0, v6

    xor-long v0, v19, v0

    aput-wide v0, p4, p2

    add-int/lit8 v12, v17, 0x1

    move-wide v7, v4

    move v5, v11

    move v4, v14

    move-wide v0, v15

    move/from16 v6, v18

    move-wide/from16 v9, v21

    const/4 v11, 0x3

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static matMul([B[BI[BII)V
    .locals 8

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    move v3, v2

    :goto_0
    if-ge v1, p5, :cond_1

    move v4, v0

    move v5, v4

    :goto_1
    if-ge v4, p4, :cond_0

    add-int/lit8 v6, v2, 0x1

    aget-byte v2, p0, v2

    add-int v7, p2, v4

    aget-byte v7, p1, v7

    invoke-static {v2, v7}, Lorg/bouncycastle/util/GF16;->mul(BB)B

    move-result v2

    xor-int/2addr v2, v5

    int-to-byte v5, v2

    add-int/lit8 v4, v4, 0x1

    move v2, v6

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v3, 0x1

    aput-byte v5, p3, v3

    add-int/lit8 v1, v1, 0x1

    move v3, v4

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static mulAddMUpperTriangularMatXMat(I[J[B[JIII)V
    .locals 19

    move/from16 v0, p5

    move/from16 v1, p6

    mul-int v2, v1, p0

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    move v6, v5

    move v7, v6

    :goto_0
    if-ge v4, v0, :cond_2

    move v14, v4

    move v15, v5

    :goto_1
    if-ge v14, v0, :cond_1

    move v13, v3

    move/from16 v16, v13

    :goto_2
    if-ge v13, v1, :cond_0

    add-int v8, v15, v13

    aget-byte v11, p2, v8

    add-int v8, p4, v6

    add-int v17, v8, v16

    move/from16 v8, p0

    move-object/from16 v9, p1

    move v10, v7

    move-object/from16 v12, p3

    move/from16 v18, v13

    move/from16 v13, v17

    invoke-static/range {v8 .. v13}, Lorg/bouncycastle/pqc/crypto/mayo/GF16Utils;->mVecMulAdd(I[JII[JI)V

    add-int/lit8 v13, v18, 0x1

    add-int v16, v16, p0

    goto :goto_2

    :cond_0
    add-int v7, v7, p0

    add-int/lit8 v14, v14, 0x1

    add-int/2addr v15, v1

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    add-int/2addr v5, v1

    add-int/2addr v6, v2

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static mulAddMUpperTriangularMatXMatTrans(I[J[B[JII)V
    .locals 17

    move/from16 v0, p4

    move/from16 v1, p5

    mul-int v2, p0, v1

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    move v6, v5

    :goto_0
    if-ge v4, v0, :cond_2

    move v13, v4

    :goto_1
    if-ge v13, v0, :cond_1

    move v14, v3

    move v15, v14

    move/from16 v16, v15

    :goto_2
    if-ge v14, v1, :cond_0

    add-int v7, v15, v13

    aget-byte v10, p2, v7

    add-int v12, v5, v16

    move/from16 v7, p0

    move-object/from16 v8, p1

    move v9, v6

    move-object/from16 v11, p3

    invoke-static/range {v7 .. v12}, Lorg/bouncycastle/pqc/crypto/mayo/GF16Utils;->mVecMulAdd(I[JII[JI)V

    add-int/lit8 v14, v14, 0x1

    add-int/2addr v15, v0

    add-int v16, v16, p0

    goto :goto_2

    :cond_0
    add-int v6, v6, p0

    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    add-int/2addr v5, v2

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static mulAddMatTransXMMat(I[B[JI[JII)V
    .locals 19

    move/from16 v0, p6

    mul-int v1, v0, p0

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    if-ge v3, v0, :cond_2

    move/from16 v5, p5

    move v6, v2

    move v7, v6

    move v8, v7

    :goto_1
    if-ge v6, v5, :cond_1

    add-int v9, v7, v3

    aget-byte v9, p1, v9

    move v15, v2

    move/from16 v16, v15

    :goto_2
    if-ge v15, v0, :cond_0

    add-int v10, p3, v8

    add-int v12, v10, v16

    add-int v17, v4, v16

    move/from16 v10, p0

    move-object/from16 v11, p2

    move v13, v9

    move-object/from16 v14, p4

    move/from16 v18, v15

    move/from16 v15, v17

    invoke-static/range {v10 .. v15}, Lorg/bouncycastle/pqc/crypto/mayo/GF16Utils;->mVecMulAdd(I[JII[JI)V

    add-int/lit8 v15, v18, 0x1

    add-int v16, v16, p0

    goto :goto_2

    :cond_0
    add-int/lit8 v6, v6, 0x1

    add-int/2addr v7, v0

    add-int/2addr v8, v1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    add-int/2addr v4, v1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static mulAddMatXMMat(I[B[JI[JIII)V
    .locals 19

    .line 1
    move/from16 v0, p6

    move/from16 v1, p7

    mul-int v2, p0, v1

    const/4 v3, 0x0

    move/from16 v4, p5

    move v5, v3

    move v6, v5

    move v7, v6

    :goto_0
    if-ge v5, v4, :cond_2

    move v8, v3

    move v9, v8

    :goto_1
    if-ge v8, v0, :cond_1

    add-int v10, v7, v8

    aget-byte v10, p1, v10

    move v15, v3

    move/from16 v17, v15

    :goto_2
    if-ge v15, v1, :cond_0

    add-int v11, v9, v17

    add-int v13, v11, p3

    add-int v16, v6, v17

    move/from16 v11, p0

    move-object/from16 v12, p2

    move v14, v10

    move/from16 v18, v15

    move-object/from16 v15, p4

    invoke-static/range {v11 .. v16}, Lorg/bouncycastle/pqc/crypto/mayo/GF16Utils;->mVecMulAdd(I[JII[JI)V

    add-int/lit8 v15, v18, 0x1

    add-int v17, v17, p0

    goto :goto_2

    :cond_0
    add-int/lit8 v8, v8, 0x1

    add-int/2addr v9, v2

    goto :goto_1

    :cond_1
    add-int/lit8 v5, v5, 0x1

    add-int/2addr v6, v2

    add-int/2addr v7, v0

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static mulAddMatXMMat(I[B[J[JII)V
    .locals 19

    .line 2
    move/from16 v0, p4

    move/from16 v1, p5

    mul-int v2, p0, v0

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    move v6, v5

    :goto_0
    if-ge v4, v0, :cond_2

    move v7, v3

    move v8, v7

    :goto_1
    if-ge v7, v1, :cond_1

    add-int v9, v5, v7

    aget-byte v9, p1, v9

    move v15, v3

    move/from16 v16, v15

    :goto_2
    if-ge v15, v0, :cond_0

    add-int v12, v8, v16

    add-int v17, v6, v16

    move/from16 v10, p0

    move-object/from16 v11, p2

    move v13, v9

    move-object/from16 v14, p3

    move/from16 v18, v15

    move/from16 v15, v17

    invoke-static/range {v10 .. v15}, Lorg/bouncycastle/pqc/crypto/mayo/GF16Utils;->mVecMulAdd(I[JII[JI)V

    add-int/lit8 v15, v18, 0x1

    add-int v16, v16, p0

    goto :goto_2

    :cond_0
    add-int/lit8 v7, v7, 0x1

    add-int/2addr v8, v2

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    add-int/2addr v5, v1

    add-int/2addr v6, v2

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static mulFx8(BJ)J
    .locals 8

    and-int/lit16 v0, p0, 0xff

    const/4 v1, 0x1

    and-int/2addr p0, v1

    neg-int p0, p0

    int-to-long v2, p0

    and-long/2addr v2, p1

    shr-int/lit8 p0, v0, 0x1

    and-int/2addr p0, v1

    neg-int p0, p0

    int-to-long v4, p0

    shl-long v6, p1, v1

    and-long/2addr v4, v6

    xor-long/2addr v2, v4

    shr-int/lit8 p0, v0, 0x2

    and-int/2addr p0, v1

    neg-int p0, p0

    int-to-long v4, p0

    const/4 p0, 0x2

    shl-long v6, p1, p0

    and-long/2addr v4, v6

    xor-long/2addr v2, v4

    const/4 p0, 0x3

    shr-int/2addr v0, p0

    and-int/2addr v0, v1

    neg-int v0, v0

    int-to-long v0, v0

    shl-long/2addr p1, p0

    and-long/2addr p1, v0

    xor-long/2addr p1, v2

    const-wide v0, -0xf0f0f0f0f0f0f10L    # -1.0773087426743214E236

    and-long/2addr v0, p1

    const/4 v2, 0x4

    ushr-long v2, v0, v2

    xor-long/2addr p1, v2

    ushr-long/2addr v0, p0

    xor-long p0, p1, v0

    const-wide v0, 0xf0f0f0f0f0f0f0fL    # 3.815736827118017E-236

    and-long/2addr p0, v0

    return-wide p0
.end method
