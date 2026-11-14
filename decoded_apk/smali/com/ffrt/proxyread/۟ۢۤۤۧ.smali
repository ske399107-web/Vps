.class public Lcom/ffrt/proxyread/۟ۢۤۤۧ;
.super Ljava/lang/Object;


# static fields
.field private static final short:[S

.field public static ۧۦۣ۟:I = -0x39


# direct methods
.method static constructor <clinit>()V
    .locals 52

    const v0, 0x2

    new-array v0, v0, [S

    fill-array-data v0, :array_0

    sput-object v0, Lcom/ffrt/proxyread/۟ۢۤۤۧ;->short:[S

    return-void

    nop

    :array_0
    .array-data 2
        0x8d3s
        0x860s
    .end array-data
.end method

.method public static ۣ۟۟۠ۧ()D
    .locals 4

    invoke-static {}, Lcom/ffrt/proxyread/ۣۧ۟۟;->ۣۧۧ۟()I

    move-result v0

    if-ltz v0, :cond_0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide v0, 0x0

    goto :goto_0
.end method

.method public static ۣ۟۟ۢ(Ljava/lang/Object;)V
    .locals 1

    invoke-static {}, Lcom/ffrt/proxyread/ۣۧ۟۟;->ۣۧۧ۟()I

    move-result v0

    if-lez v0, :cond_0

    check-cast p0, Lcom/ffrt/proxyread/MainActivity;

    invoke-virtual {p0}, Lcom/ffrt/proxyread/MainActivity;->w()V

    :goto_0
    return-void

    :cond_0
    goto :goto_0
.end method

.method public static ۟۠ۥۦۥ(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/StringBuilder;
    .locals 1

    invoke-static {}, Lcom/ffrt/proxyread/ۣۧ۟۟;->ۣۧۧ۟()I

    move-result v0

    if-lez v0, :cond_0

    check-cast p0, Ljava/lang/StringBuilder;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const v0, 0x0

    goto :goto_0
.end method

.method public static ۟۠ۦۥۨ()[S
    .locals 1

    invoke-static {}, Lcom/ffrt/proxyread/ۣۤۧۢ;->ۣ۟۟ۥ()I

    move-result v0

    if-ltz v0, :cond_0

    sget-object v0, Lcom/ffrt/proxyread/۟ۢۤۤۧ;->short:[S

    :goto_0
    return-object v0

    :cond_0
    const v0, 0x0

    goto :goto_0
.end method

.method public static ۟۠ۧۤۡ()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/ffrt/proxyread/ۣۤۧۢ;->ۣ۟۟ۥ()I

    move-result v0

    if-ltz v0, :cond_0

    const-string v0, "\u06df\u06e5\u06e6"

    :goto_0
    return-object v0

    :cond_0
    const v0, 0x0

    goto :goto_0
.end method

.method public static ۟۠ۨۨۥ(Ljava/lang/Object;F)V
    .locals 1

    invoke-static {}, Lcom/ffrt/proxyread/۟ۢۤۤۧ;->۟ۧۦۨ۠()I

    move-result v0

    if-ltz v0, :cond_0

    check-cast p0, Lcom/google/android/material/slider/Slider;

    invoke-virtual {p0, p1}, Lcom/google/android/material/slider/Slider;->setValueFrom(F)V

    :goto_0
    return-void

    :cond_0
    goto :goto_0
.end method

.method public static ۟ۡۨ۟()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/ffrt/proxyread/ۣۤۧۢ;->ۣ۟۟ۥ()I

    move-result v0

    if-ltz v0, :cond_0

    const-string v0, "\u06e4\u06e1\u06e6"

    :goto_0
    return-object v0

    :cond_0
    const v0, 0x0

    goto :goto_0
.end method

.method public static ۣ۟ۦۤۧ(Ljava/lang/Object;)Lcom/google/android/material/button/MaterialButton;
    .locals 2

    invoke-static {}, Lcom/ffrt/proxyread/۟ۢۤۤۧ;->۟ۧۦۨ۠()I

    move-result v0

    if-lez v0, :cond_0

    check-cast p0, Lcom/ffrt/proxyread/MainActivity;

    iget-object v1, p0, Lcom/ffrt/proxyread/MainActivity;->D:Lcom/google/android/material/button/MaterialButton;

    :goto_0
    return-object v1

    :cond_0
    const v1, 0x0

    goto :goto_0
.end method

.method public static ۟ۦ۟ۨۧ()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/ffrt/proxyread/۟ۡۥۥ;->ۣ۠ۦ۟()I

    move-result v0

    if-lez v0, :cond_0

    const-string v0, "\u06e6\u06e5\u06e3"

    :goto_0
    return-object v0

    :cond_0
    const v0, 0x0

    goto :goto_0
.end method

.method public static ۟ۦۡۡۦ()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/ffrt/proxyread/ۣۧ۟۟;->ۣۧۧ۟()I

    move-result v0

    if-lez v0, :cond_0

    const-string v0, "\u06e0\u06e8\u06e8"

    :goto_0
    return-object v0

    :cond_0
    const v0, 0x0

    goto :goto_0
.end method

.method public static ۟ۦۣۡ()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/ffrt/proxyread/ۣۧ۟۟;->ۣۧۧ۟()I

    move-result v0

    if-ltz v0, :cond_0

    const-string v0, "\u06e8\u06e8\u06e8"

    :goto_0
    return-object v0

    :cond_0
    const v0, 0x0

    goto :goto_0
.end method

.method public static ۟ۦۦۥ(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    invoke-static {}, Lcom/ffrt/proxyread/۟ۢۤۤۧ;->۟ۧۦۨ۠()I

    move-result v0

    if-ltz v0, :cond_0

    check-cast p0, Landroid/content/Context;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const v0, 0x0

    goto :goto_0
.end method

.method public static ۟ۧۦۨ۠()I
    .locals 2

    const v0, 0x1ac139

    const-string v1, "\u06e6\u06e0\u06e1"

    invoke-static {v1}, Lcom/ffrt/proxyread/ۣۤۧۢ;->۟ۢۧۤۥ(Ljava/lang/Object;)I

    move-result v1

    xor-int v0, v0, v1

    return v0
.end method

.method public static ۣۡۨۢ()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/ffrt/proxyread/ۣۤۧۢ;->ۣ۟۟ۥ()I

    move-result v0

    if-lez v0, :cond_0

    const-string v0, "\u06df\u06e6\u06e5"

    :goto_0
    return-object v0

    :cond_0
    const v0, 0x0

    goto :goto_0
.end method

.method public static ۢۢ۠۟(Ljava/lang/Object;Z)V
    .locals 1

    invoke-static {}, Lcom/ffrt/proxyread/ۣۤۧۢ;->ۣ۟۟ۥ()I

    move-result v0

    if-lez v0, :cond_0

    check-cast p0, Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    :goto_0
    return-void

    :cond_0
    goto :goto_0
.end method

.method public static ۣۢۨ()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/ffrt/proxyread/۟ۢۤۤۧ;->۟ۧۦۨ۠()I

    move-result v0

    if-lez v0, :cond_0

    const-string v0, "\u06e6\u06e7\u06e0"

    :goto_0
    return-object v0

    :cond_0
    const v0, 0x0

    goto :goto_0
.end method

.method public static ۢۨۧۤ(Ljava/lang/Object;)Z
    .locals 1

    invoke-static {}, Lcom/ffrt/proxyread/۟ۡۥۥ;->ۣ۠ۦ۟()I

    move-result v0

    if-ltz v0, :cond_0

    check-cast p0, Landroid/content/Context;

    invoke-static {p0}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const v0, 0x0

    goto :goto_0
.end method

.method public static ۣۥۤۧ([SIII)Ljava/lang/String;
    .locals 54

    move/from16 v6, p3

    move/from16 v5, p2

    move/from16 v4, p1

    move-object/from16 v3, p0

    new-array v1, v5, [C

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v5, :cond_0

    add-int v2, v4, v0

    aget-short v2, v3, v2

    xor-int/2addr v2, v6

    int-to-char v2, v2

    aput-char v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method public static ۥۨ۟ۤ()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/ffrt/proxyread/ۣۤۧۢ;->ۣ۟۟ۥ()I

    move-result v0

    if-ltz v0, :cond_0

    const-string v0, "\u06e8\u06e1\u06e8"

    :goto_0
    return-object v0

    :cond_0
    const v0, 0x0

    goto :goto_0
.end method

.method public static ۦۥۧ۠(Ljava/lang/Object;F)V
    .locals 1

    invoke-static {}, Lcom/ffrt/proxyread/ۣۤۧۢ;->ۣ۟۟ۥ()I

    move-result v0

    if-ltz v0, :cond_0

    check-cast p0, Lcom/google/android/material/slider/Slider;

    invoke-virtual {p0, p1}, Lcom/google/android/material/slider/Slider;->setValueTo(F)V

    :goto_0
    return-void

    :cond_0
    goto :goto_0
.end method

.method public static ۨ۟۠۟(Ljava/lang/Object;)Landroid/widget/EditText;
    .locals 2

    invoke-static {}, Lcom/ffrt/proxyread/ۣۧ۟۟;->ۣۧۧ۟()I

    move-result v0

    if-ltz v0, :cond_0

    check-cast p0, Lcom/ffrt/proxyread/MainActivity;

    iget-object v1, p0, Lcom/ffrt/proxyread/MainActivity;->F:Landroid/widget/EditText;

    :goto_0
    return-object v1

    :cond_0
    const v1, 0x0

    goto :goto_0
.end method

.method public static ۨ۟ۧۦ()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/ffrt/proxyread/ۣۧ۟۟;->ۣۧۧ۟()I

    move-result v0

    if-ltz v0, :cond_0

    const-string v0, "\u06e2\u06e0\u06e3"

    :goto_0
    return-object v0

    :cond_0
    const v0, 0x0

    goto :goto_0
.end method

.method public static ۨۥۢ۟()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/ffrt/proxyread/۟ۡۥۥ;->ۣ۠ۦ۟()I

    move-result v0

    if-ltz v0, :cond_0

    const-string v0, "\u06df\u06e4\u06e5"

    :goto_0
    return-object v0

    :cond_0
    const v0, 0x0

    goto :goto_0
.end method

.method public static ۣۨۨۡ(Ljava/lang/Object;)Ljava/lang/Class;
    .locals 1

    invoke-static {}, Lcom/ffrt/proxyread/ۣۤۧۢ;->ۣ۟۟ۥ()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const v0, 0x0

    goto :goto_0
.end method

.method public static ۨۨۦۥ(Ljava/lang/String;)Ljava/lang/String;
    .locals 59

    move-object/from16 v8, p0

    const/4 v1, 0x0

    invoke-static {}, Lcom/ffrt/proxyread/ۣۤۧۢ;->۟ۤۥ۟۟()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/ffrt/proxyread/ۣۤۧۢ;->۟ۤۥ۟۟()Ljava/lang/String;

    move-result-object v2

    move v0, v1

    :goto_0
    const/16 v4, 0xf

    if-lt v0, v4, :cond_1

    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-static {v8}, Lcom/ffrt/proxyread/ۣۤۧۢ;->۟ۥۨ۟ۡ(Ljava/lang/Object;)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-direct {v4, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    move v0, v1

    :goto_1
    invoke-static {v8}, Lcom/ffrt/proxyread/ۣۤۧۢ;->۟ۥۨ۟ۡ(Ljava/lang/Object;)I

    move-result v5

    if-lt v0, v5, :cond_2

    invoke-static {v4}, Lcom/ffrt/proxyread/۟ۡۦ۠ۧ;->۟ۨ۟ۢ(Ljava/lang/Object;)[B

    move-result-object v3

    invoke-static/range {}, Lcom/ffrt/proxyread/۟ۢۤۤۧ;->۟۠ۦۥۨ()[S

    move-result-object v23

    const v26, 0x8b2

    const v24, 0x0

    const v25, 0x1

    invoke-static/range {v23 .. v26}, Lcom/ffrt/proxyread/۟ۡۦ۠ۧ;->۟ۥ۠ۤۢ([SIII)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    :cond_0
    :goto_2
    invoke-static {v0}, Lcom/ffrt/proxyread/ۣۤۧۢ;->۟ۥۨ۟ۡ(Ljava/lang/Object;)I

    move-result v4

    if-gtz v4, :cond_3

    invoke-static {v0}, Lcom/ffrt/proxyread/ۣۤۧۢ;->۟ۥۨ۟ۡ(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v2}, Lcom/ffrt/proxyread/ۣۤۧۢ;->۟ۥۨ۟ۡ(Ljava/lang/Object;)I

    move-result v5

    move v0, v1

    :goto_3
    if-lt v0, v4, :cond_4

    :goto_4
    array-length v0, v3

    if-lt v1, v0, :cond_5

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    return-object v0

    :cond_1
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-static {v4, v3}, Lcom/ffrt/proxyread/۟ۡۦ۠ۧ;->ۨ۠ۡۢ(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-static {v0}, Lcom/ffrt/proxyread/۟ۡۦ۠ۧ;->۟ۨۨ۟(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/ffrt/proxyread/۟ۡۦ۠ۧ;->ۨ۠ۡۢ(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-static {v3}, Lcom/ffrt/proxyread/ۣۤۧۢ;->ۢۦۡۨ(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-static {v4, v2}, Lcom/ffrt/proxyread/۟ۡۦ۠ۧ;->ۨ۠ۡۢ(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-static {}, Lcom/ffrt/proxyread/۟ۢۤۤۧ;->ۣ۟۟۠ۧ()D

    move-result-wide v4

    const/16 v6, 0xa

    int-to-double v6, v6

    mul-double/2addr v4, v6

    double-to-int v4, v4

    xor-int/2addr v4, v0

    invoke-static {v2, v4}, Lcom/ffrt/proxyread/ۣۧ۟۟;->۟ۦۨۦ۟(Ljava/lang/Object;I)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-static {v2}, Lcom/ffrt/proxyread/ۣۤۧۢ;->ۢۦۡۨ(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-static {v8, v0}, Lcom/ffrt/proxyread/ۣۧ۟۟;->ۦۦۦ(Ljava/lang/Object;I)C

    move-result v5

    invoke-static {v3, v5}, Lcom/ffrt/proxyread/۟ۡۦ۠ۧ;->ۥۣ۠ۧ(Ljava/lang/Object;I)I

    move-result v5

    shl-int/lit8 v5, v5, 0x4

    add-int/lit8 v6, v0, 0x1

    invoke-static {v8, v6}, Lcom/ffrt/proxyread/ۣۧ۟۟;->ۦۦۦ(Ljava/lang/Object;I)C

    move-result v6

    invoke-static {v3, v6}, Lcom/ffrt/proxyread/۟ۡۦ۠ۧ;->ۥۣ۠ۧ(Ljava/lang/Object;I)I

    move-result v6

    or-int/2addr v5, v6

    invoke-static {v4, v5}, Lcom/ffrt/proxyread/۟ۡۦ۠ۧ;->ۤۡۤۦ(Ljava/lang/Object;I)V

    add-int/lit8 v0, v0, 0x2

    goto/16 :goto_1

    :cond_3
    invoke-static {}, Lcom/ffrt/proxyread/ۣۤۧۢ;->۟ۤۥ۟۟()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ffrt/proxyread/ۣۤۧۢ;->۟ۥۨ۟ۡ(Ljava/lang/Object;)I

    move-result v4

    if-nez v4, :cond_0

    invoke-static/range {}, Lcom/ffrt/proxyread/۟ۢۤۤۧ;->۟۠ۦۥۨ()[S

    move-result-object v17

    const v20, 0x801

    const v18, 0x1

    const v19, 0x1

    invoke-static/range {v17 .. v20}, Lcom/ffrt/proxyread/۟ۢۤۤۧ;->ۣۥۤۧ([SIII)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    goto/16 :goto_2

    :cond_4
    aget-byte v6, v3, v0

    rem-int v7, v0, v5

    invoke-static {v2, v7}, Lcom/ffrt/proxyread/ۣۧ۟۟;->ۦۦۦ(Ljava/lang/Object;I)C

    move-result v7

    xor-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_3

    :cond_5
    invoke-static {}, Lcom/ffrt/proxyread/ۣۤۧۢ;->۟ۤۥ۟۟()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ffrt/proxyread/ۣۤۧۢ;->۟ۥۨ۟ۡ(Ljava/lang/Object;)I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    goto/16 :goto_4
.end method
