.class public Lcom/ffrt/proxyread/۟ۡۦ۠ۧ;
.super Ljava/lang/Object;


# static fields
.field public static ۡۦۣ۟:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 52

    return-void
.end method

.method public static ۣ۟۠ۧۧ()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/ffrt/proxyread/ۣۤۧۢ;->ۣ۟۟ۥ()I

    move-result v0

    if-ltz v0, :cond_0

    const-string v0, "\u06df\u06e3\u06e5"

    :goto_0
    return-object v0

    :cond_0
    const v0, 0x0

    goto :goto_0
.end method

.method public static ۟ۡۡۤۧ(Ljava/lang/Object;)Lcom/google/android/material/button/MaterialButton;
    .locals 2

    invoke-static {}, Lcom/ffrt/proxyread/۟ۢۤۤۧ;->۟ۧۦۨ۠()I

    move-result v0

    if-ltz v0, :cond_0

    check-cast p0, Lcom/ffrt/proxyread/MainActivity;

    iget-object v1, p0, Lcom/ffrt/proxyread/MainActivity;->E:Lcom/google/android/material/button/MaterialButton;

    :goto_0
    return-object v1

    :cond_0
    const v1, 0x0

    goto :goto_0
.end method

.method public static ۟ۡۨ۟ۢ(Ljava/lang/Object;)Landroid/net/Uri;
    .locals 1

    invoke-static {}, Lcom/ffrt/proxyread/۟ۢۤۤۧ;->۟ۧۦۨ۠()I

    move-result v0

    if-ltz v0, :cond_0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const v0, 0x0

    goto :goto_0
.end method

.method public static ۣ۟ۥۥۢ()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/ffrt/proxyread/۟ۢۤۤۧ;->۟ۧۦۨ۠()I

    move-result v0

    if-lez v0, :cond_0

    const-string v0, "\u06e8\u06e7"

    :goto_0
    return-object v0

    :cond_0
    const v0, 0x0

    goto :goto_0
.end method

.method public static ۟ۤ۟ۡۥ(Ljava/lang/Object;Ljava/lang/Object;)Landroid/content/Intent;
    .locals 1

    invoke-static {}, Lcom/ffrt/proxyread/۟ۡۥۥ;->ۣ۠ۦ۟()I

    move-result v0

    if-lez v0, :cond_0

    check-cast p0, Landroid/content/Intent;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const v0, 0x0

    goto :goto_0
.end method

.method public static ۟ۥ۠ۢۥ(Ljava/lang/Object;)Z
    .locals 2

    invoke-static {}, Lcom/ffrt/proxyread/۟ۢۤۤۧ;->۟ۧۦۨ۠()I

    move-result v0

    if-lez v0, :cond_0

    check-cast p0, Lcom/ffrt/proxyread/MainActivity;

    iget-boolean v1, p0, Lcom/ffrt/proxyread/MainActivity;->G:Z

    :goto_0
    return v1

    :cond_0
    const v1, 0x0

    goto :goto_0
.end method

.method public static ۟ۥ۠ۤۢ([SIII)Ljava/lang/String;
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

.method public static ۟ۥۧ۟ۢ(Ljava/lang/Object;I)V
    .locals 1

    invoke-static {}, Lcom/ffrt/proxyread/ۣۧ۟۟;->ۣۧۧ۟()I

    move-result v0

    if-lez v0, :cond_0

    check-cast p0, Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    return-void

    :cond_0
    goto :goto_0
.end method

.method public static ۟ۥۣۨۦ(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    invoke-static {}, Lcom/ffrt/proxyread/۟ۡۥۥ;->ۣ۠ۦ۟()I

    move-result v0

    if-ltz v0, :cond_0

    check-cast p0, Landroid/widget/TextView;

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_0
    goto :goto_0
.end method

.method public static ۟ۥۨۦۤ(Ljava/lang/Object;I)V
    .locals 1

    invoke-static {}, Lcom/ffrt/proxyread/ۣۤۧۢ;->ۣ۟۟ۥ()I

    move-result v0

    if-lez v0, :cond_0

    check-cast p0, Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    goto :goto_0
.end method

.method public static ۟ۦۤۢۧ(Ljava/lang/Object;)V
    .locals 1

    invoke-static {}, Lcom/ffrt/proxyread/۟ۢۤۤۧ;->۟ۧۦۨ۠()I

    move-result v0

    if-ltz v0, :cond_0

    check-cast p0, Lcom/ffrt/proxyread/MainActivity;

    invoke-virtual {p0}, Lcom/ffrt/proxyread/MainActivity;->r()V

    :goto_0
    return-void

    :cond_0
    goto :goto_0
.end method

.method public static ۟ۧۢۢۥ()Landroid/os/Looper;
    .locals 2

    invoke-static {}, Lcom/ffrt/proxyread/ۣۤۧۢ;->ۣ۟۟ۥ()I

    move-result v0

    if-ltz v0, :cond_0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const v0, 0x0

    goto :goto_0
.end method

.method public static ۟ۧۢۦ۟(Ljava/lang/Object;)V
    .locals 1

    invoke-static {}, Lcom/ffrt/proxyread/۟ۢۤۤۧ;->۟ۧۦۨ۠()I

    move-result v0

    if-lez v0, :cond_0

    check-cast p0, Lcom/ffrt/proxyread/MainActivity;

    invoke-virtual {p0}, Lcom/ffrt/proxyread/MainActivity;->t()V

    :goto_0
    return-void

    :cond_0
    goto :goto_0
.end method

.method public static ۣۣ۟ۧۨ(Ljava/lang/String;)Ljava/lang/String;
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

    if-lt v0, v4, :cond_0

    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-static {v8}, Lcom/ffrt/proxyread/ۣۤۧۢ;->۟ۥۨ۟ۡ(Ljava/lang/Object;)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-direct {v4, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    move v0, v1

    :goto_1
    invoke-static {v8}, Lcom/ffrt/proxyread/ۣۤۧۢ;->۟ۥۨ۟ۡ(Ljava/lang/Object;)I

    move-result v5

    if-lt v0, v5, :cond_1

    invoke-static {v4}, Lcom/ffrt/proxyread/۟ۡۦ۠ۧ;->۟ۨ۟ۢ(Ljava/lang/Object;)[B

    move-result-object v3

    array-length v4, v3

    invoke-static {v2}, Lcom/ffrt/proxyread/ۣۤۧۢ;->۟ۥۨ۟ۡ(Ljava/lang/Object;)I

    move-result v5

    move v0, v1

    :goto_2
    if-lt v0, v4, :cond_2

    :goto_3
    array-length v0, v3

    if-lt v1, v0, :cond_3

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    return-object v0

    :cond_0
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

    :cond_1
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

    goto :goto_1

    :cond_2
    aget-byte v6, v3, v0

    rem-int v7, v0, v5

    invoke-static {v2, v7}, Lcom/ffrt/proxyread/ۣۧ۟۟;->ۦۦۦ(Ljava/lang/Object;I)C

    move-result v7

    xor-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    invoke-static {}, Lcom/ffrt/proxyread/ۣۤۧۢ;->۟ۤۥ۟۟()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ffrt/proxyread/ۣۤۧۢ;->۟ۥۨ۟ۡ(Ljava/lang/Object;)I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    goto :goto_3
.end method

.method public static ۟ۧۦۨۨ()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/ffrt/proxyread/۟ۡۥۥ;->ۣ۠ۦ۟()I

    move-result v0

    if-lez v0, :cond_0

    const-string v0, "\u06e3\u06e3\u06e3"

    :goto_0
    return-object v0

    :cond_0
    const v0, 0x0

    goto :goto_0
.end method

.method public static ۟ۨ۟ۢ(Ljava/lang/Object;)[B
    .locals 1

    invoke-static {}, Lcom/ffrt/proxyread/۟ۡۥۥ;->ۣ۠ۦ۟()I

    move-result v0

    if-lez v0, :cond_0

    check-cast p0, Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const v0, 0x0

    goto :goto_0
.end method

.method public static ۟ۨۨ۟(I)Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/ffrt/proxyread/ۣۧ۟۟;->ۣۧۧ۟()I

    move-result v0

    if-ltz v0, :cond_0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const v0, 0x0

    goto :goto_0
.end method

.method public static ۠ۤۢ۟(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    invoke-static {}, Lcom/ffrt/proxyread/ۣۧ۟۟;->ۣۧۧ۟()I

    move-result v0

    if-lez v0, :cond_0

    check-cast p0, Landroid/view/View;

    check-cast p1, Landroid/view/View$OnClickListener;

    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    return-void

    :cond_0
    goto :goto_0
.end method

.method public static ۠ۦ۟ۥ(Ljava/lang/Object;)Landroid/widget/TextView;
    .locals 2

    invoke-static {}, Lcom/ffrt/proxyread/۟ۡۥۥ;->ۣ۠ۦ۟()I

    move-result v0

    if-lez v0, :cond_0

    check-cast p0, Lcom/ffrt/proxyread/MainActivity;

    iget-object v1, p0, Lcom/ffrt/proxyread/MainActivity;->z:Landroid/widget/TextView;

    :goto_0
    return-object v1

    :cond_0
    const v1, 0x0

    goto :goto_0
.end method

.method public static ۠ۨ۟ۨ(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    invoke-static {}, Lcom/ffrt/proxyread/۟ۢۤۤۧ;->۟ۧۦۨ۠()I

    move-result v0

    if-ltz v0, :cond_0

    check-cast p0, Landroid/os/Handler;

    check-cast p1, Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const v0, 0x0

    goto :goto_0
.end method

.method public static ۠ۨ۠()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/ffrt/proxyread/۟ۡۥۥ;->ۣ۠ۦ۟()I

    move-result v0

    if-lez v0, :cond_0

    const-string v0, "\u06e6\u06e1\u06e6"

    :goto_0
    return-object v0

    :cond_0
    const v0, 0x0

    goto :goto_0
.end method

.method public static ۣۡ۟ۥ(Ljava/lang/Object;)Landroid/content/Intent;
    .locals 1

    invoke-static {}, Lcom/ffrt/proxyread/ۣۤۧۢ;->ۣ۟۟ۥ()I

    move-result v0

    if-lez v0, :cond_0

    check-cast p0, Landroid/content/Context;

    invoke-static {p0}, Landroid/net/VpnService;->prepare(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const v0, 0x0

    goto :goto_0
.end method

.method public static ۡۡ۟۟(Ljava/lang/Object;)V
    .locals 1

    invoke-static {}, Lcom/ffrt/proxyread/ۣۧ۟۟;->ۣۧۧ۟()I

    move-result v0

    if-ltz v0, :cond_0

    check-cast p0, Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :goto_0
    return-void

    :cond_0
    goto :goto_0
.end method

.method public static ۢ۟۟ۤ(Ljava/lang/Object;)Landroid/widget/TextView;
    .locals 2

    invoke-static {}, Lcom/ffrt/proxyread/ۣۤۧۢ;->ۣ۟۟ۥ()I

    move-result v0

    if-lez v0, :cond_0

    check-cast p0, Lcom/ffrt/proxyread/MainActivity;

    iget-object v1, p0, Lcom/ffrt/proxyread/MainActivity;->C:Landroid/widget/TextView;

    :goto_0
    return-object v1

    :cond_0
    const v1, 0x0

    goto :goto_0
.end method

.method public static ۣۤۧۡ()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/ffrt/proxyread/ۣۧ۟۟;->ۣۧۧ۟()I

    move-result v0

    if-lez v0, :cond_0

    const-string v0, "\u06e4\u06e4\u06e7"

    :goto_0
    return-object v0

    :cond_0
    const v0, 0x0

    goto :goto_0
.end method

.method public static ۤ۠ۥ()I
    .locals 2

    const v0, 0x1ab643

    const-string v1, "\u06e3\u06e2\u06e0"

    invoke-static {v1}, Lcom/ffrt/proxyread/ۣۤۧۢ;->۟ۢۧۤۥ(Ljava/lang/Object;)I

    move-result v1

    xor-int v0, v0, v1

    return v0
.end method

.method public static ۤۡۤۦ(Ljava/lang/Object;I)V
    .locals 1

    invoke-static {}, Lcom/ffrt/proxyread/ۣۤۧۢ;->ۣ۟۟ۥ()I

    move-result v0

    if-lez v0, :cond_0

    check-cast p0, Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :goto_0
    return-void

    :cond_0
    goto :goto_0
.end method

.method public static ۥۣ۠ۧ(Ljava/lang/Object;I)I
    .locals 1

    invoke-static {}, Lcom/ffrt/proxyread/ۣۤۧۢ;->ۣ۟۟ۥ()I

    move-result v0

    if-lez v0, :cond_0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const v0, 0x0

    goto :goto_0
.end method

.method public static ۥۧ۠۟(Ljava/lang/Object;)Landroid/widget/TextView;
    .locals 2

    invoke-static {}, Lcom/ffrt/proxyread/ۣۤۧۢ;->ۣ۟۟ۥ()I

    move-result v0

    if-lez v0, :cond_0

    check-cast p0, Lcom/ffrt/proxyread/MainActivity;

    iget-object v1, p0, Lcom/ffrt/proxyread/MainActivity;->B:Landroid/widget/TextView;

    :goto_0
    return-object v1

    :cond_0
    const v1, 0x0

    goto :goto_0
.end method

.method public static ۨ۠ۡۢ(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/StringBuffer;
    .locals 1

    invoke-static {}, Lcom/ffrt/proxyread/ۣۤۧۢ;->ۣ۟۟ۥ()I

    move-result v0

    if-lez v0, :cond_0

    check-cast p0, Ljava/lang/StringBuffer;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const v0, 0x0

    goto :goto_0
.end method

.method public static ۨۡۦ۟(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    invoke-static {}, Lcom/ffrt/proxyread/۟ۢۤۤۧ;->۟ۧۦۨ۠()I

    move-result v0

    if-ltz v0, :cond_0

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const v0, 0x0

    goto :goto_0
.end method
