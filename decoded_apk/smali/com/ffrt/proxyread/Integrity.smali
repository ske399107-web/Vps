.class public final Lcom/ffrt/proxyread/Integrity;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[B

.field public static final b:[B

.field public static final c:[B

.field public static final d:[B

.field public static final e:[B

.field public static final f:[B

.field public static volatile g:Z

.field public static volatile h:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const/16 v0, 0x20

    .line 3
    new-array v1, v0, [B

    .line 5
    fill-array-data v1, :array_0

    .line 8
    sput-object v1, Lcom/ffrt/proxyread/Integrity;->a:[B

    .line 10
    new-array v1, v0, [B

    .line 12
    fill-array-data v1, :array_1

    .line 15
    sput-object v1, Lcom/ffrt/proxyread/Integrity;->b:[B

    .line 17
    new-array v1, v0, [B

    .line 19
    fill-array-data v1, :array_2

    .line 22
    sput-object v1, Lcom/ffrt/proxyread/Integrity;->c:[B

    .line 24
    const/16 v1, 0x11

    .line 26
    new-array v1, v1, [B

    .line 28
    fill-array-data v1, :array_3

    .line 31
    sput-object v1, Lcom/ffrt/proxyread/Integrity;->d:[B

    .line 33
    new-array v0, v0, [B

    .line 35
    fill-array-data v0, :array_4

    .line 38
    sput-object v0, Lcom/ffrt/proxyread/Integrity;->e:[B

    .line 40
    const/16 v0, 0x12

    .line 42
    new-array v0, v0, [B

    .line 44
    fill-array-data v0, :array_5

    .line 47
    sput-object v0, Lcom/ffrt/proxyread/Integrity;->f:[B

    .line 49
    return-void

    nop

    .line 51
    :array_0
    .array-data 1
        0x77t
        -0x67t
        -0x62t
        -0x47t
        -0x2t
        -0x60t
        -0x7dt
        0x58t
        0x1ct
        -0x17t
        0x3dt
        0x45t
        -0x51t
        0x4et
        0x7t
        0x5t
        -0x23t
        -0x3at
        -0x11t
        -0x9t
        -0x19t
        0x74t
        0x5bt
        0xdt
        -0x5et
        -0x36t
        0x7et
        -0x29t
        -0x66t
        -0xct
        0x3ft
        0x64t
    .end array-data

    .line 71
    :array_1
    .array-data 1
        0x7t
        0x47t
        -0x29t
        0x6at
        0x3ct
        0x43t
        -0x2et
        0x21t
        0x12t
        0x24t
        -0x6at
        -0x17t
        -0x5ft
        -0x4t
        0x40t
        0x5et
        0x5ct
        -0x2at
        0x30t
        -0x3ct
        -0x50t
        -0x44t
        -0x4t
        -0x5et
        -0x57t
        0x4et
        -0x4t
        -0x17t
        0x4dt
        0x7et
        -0x6bt
        -0x25t
    .end array-data

    .line 91
    :array_2
    .array-data 1
        0x62t
        -0x4dt
        0x28t
        -0x4ct
        0xat
        0x75t
        0x75t
        -0x19t
        0x2t
        0x7dt
        -0x59t
        -0x17t
        -0x7ft
        0x5dt
        -0x39t
        -0x21t
        0x30t
        -0x5ft
        0x1ft
        -0x79t
        -0x60t
        0x4at
        0xbt
        0x79t
        0x27t
        0x5et
        -0xet
        0x27t
        -0x12t
        0x41t
        -0x45t
        -0x6dt
    .end array-data

    .line 111
    :array_3
    .array-data 1
        0x39t
        0x23t
        0x2at
        0x3ft
        0x28t
        0x3et
        0x3ft
        0x39t
        0x35t
        0x3et
        0x3ft
        0x74t
        0x39t
        0x36t
        0x33t
        0x39t
        0x31t
    .end array-data

    nop

    .line 125
    :array_4
    .array-data 1
        -0x28t
        -0x60t
        -0x45t
        -0x61t
        -0x2et
        0x79t
        0x1bt
        -0x79t
        -0x59t
        -0x7ft
        0x40t
        -0x77t
        0x7t
        -0x47t
        -0x70t
        -0x51t
        -0x34t
        -0x56t
        -0x6et
        -0x73t
        0x71t
        0x57t
        0x1et
        -0x1at
        -0x33t
        -0x3t
        0x19t
        0x2ft
        -0x2at
        0x30t
        -0x49t
        -0x23t
    .end array-data

    .line 145
    :array_5
    .array-data 1
        0x39t
        0x35t
        0x37t
        0x74t
        0x3ct
        0x3ct
        0x28t
        0x2et
        0x74t
        0x2at
        0x28t
        0x35t
        0x22t
        0x23t
        0x28t
        0x3ft
        0x3bt
        0x3et
    .end array-data
.end method

.method public static a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static b()Z
    .locals 5

    .line 1
    invoke-static {}, Lcom/ffrt/proxyread/Integrity;->host()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Lcom/ffrt/proxyread/Integrity;->host()Ljava/lang/String;

    .line 8
    move-result-object v1

    .line 9
    new-instance v2, Ljava/lang/StringBuilder;

    .line 11
    const-string v3, "https://"

    .line 13
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    move-result-object v1

    .line 23
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 30
    move-result-object v2

    .line 31
    const-string v3, "https"

    .line 33
    invoke-static {v2, v3}, Lo/x9;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 36
    move-result v2

    .line 37
    const/4 v3, 0x0

    .line 38
    if-nez v2, :cond_0

    .line 40
    return v3

    .line 41
    :cond_0
    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    .line 44
    move-result-object v2

    .line 45
    invoke-static {v2, v0}, Lo/x9;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 48
    move-result v2

    .line 49
    if-nez v2, :cond_1

    .line 51
    return v3

    .line 52
    :cond_1
    invoke-virtual {v1}, Landroid/net/Uri;->getPort()I

    .line 55
    move-result v2

    .line 56
    const/4 v4, -0x1

    .line 57
    if-eq v2, v4, :cond_2

    .line 59
    invoke-virtual {v1}, Landroid/net/Uri;->getPort()I

    .line 62
    move-result v1

    .line 63
    const/16 v2, 0x1bb

    .line 65
    if-eq v1, v2, :cond_2

    .line 67
    return v3

    .line 68
    :cond_2
    sget-object v1, Lo/I3;->a:Ljava/nio/charset/Charset;

    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 73
    move-result-object v0

    .line 74
    const-string v1, "getBytes(...)"

    .line 76
    invoke-static {v0, v1}, Lo/x9;->n(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    invoke-static {v0}, Lcom/ffrt/proxyread/Integrity;->d([B)[B

    .line 82
    move-result-object v0

    .line 83
    sget-object v1, Lcom/ffrt/proxyread/Integrity;->e:[B

    .line 85
    const/16 v2, 0xa5

    .line 87
    invoke-static {v1, v2}, Lcom/ffrt/proxyread/Integrity;->g([BI)[B

    .line 90
    move-result-object v1

    .line 91
    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    .line 94
    move-result v0

    .line 95
    return v0
.end method

.method public static c(Landroid/content/Context;)V
    .locals 2

    .line 1
    const-string v0, "ctx"

    .line 3
    invoke-static {p0, v0}, Lo/x9;->o(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/ffrt/proxyread/Integrity;->g:Z

    sput-boolean v0, Lcom/ffrt/proxyread/Integrity;->h:Z

    sput-boolean v0, Lo/L1;->b:Z

    const-string v0, "crg_auth"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "session_jws"

    const-string v1, "BYPASSED_SESSION"

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "license"

    const-string v1, "BYPASSED_LICENSE"

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static d([B)[B
    .locals 1

    .line 1
    const-string v0, "SHA-256"

    .line 3
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    .line 10
    move-result-object p0

    .line 11
    const-string v0, "digest(...)"

    .line 13
    invoke-static {p0, v0}, Lo/x9;->n(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    return-object p0
.end method

.method public static e(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 8
    move-result-object p0

    .line 9
    new-instance v1, Ljava/util/ArrayList;

    .line 11
    const/4 v2, 0x4

    .line 12
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 15
    :try_start_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    const/16 v3, 0x1c

    .line 19
    const-string v4, "toByteArray(...)"

    .line 21
    const/4 v5, 0x0

    .line 22
    if-lt v2, v3, :cond_2

    .line 24
    const/high16 v2, 0x8000000

    .line 26
    :try_start_1
    invoke-virtual {v0, p0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 29
    move-result-object p0

    .line 30
    invoke-static {p0}, Lo/t;->d(Landroid/content/pm/PackageInfo;)Landroid/content/pm/SigningInfo;

    .line 33
    move-result-object p0

    .line 34
    if-nez p0, :cond_0

    .line 36
    return-object v1

    .line 37
    :cond_0
    invoke-static {p0}, Lo/t;->u(Landroid/content/pm/SigningInfo;)[Landroid/content/pm/Signature;

    .line 40
    move-result-object v0

    .line 41
    if-eqz v0, :cond_1

    .line 43
    array-length v2, v0

    .line 44
    move v3, v5

    .line 45
    :goto_0
    if-ge v3, v2, :cond_1

    .line 47
    aget-object v6, v0, v3

    .line 49
    invoke-virtual {v6}, Landroid/content/pm/Signature;->toByteArray()[B

    .line 52
    move-result-object v6

    .line 53
    invoke-static {v6, v4}, Lo/x9;->n(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    invoke-static {v6}, Lcom/ffrt/proxyread/Integrity;->d([B)[B

    .line 59
    move-result-object v6

    .line 60
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    add-int/lit8 v3, v3, 0x1

    .line 65
    goto :goto_0

    .line 66
    :cond_1
    invoke-static {p0}, Lo/t;->z(Landroid/content/pm/SigningInfo;)[Landroid/content/pm/Signature;

    .line 69
    move-result-object p0

    .line 70
    if-eqz p0, :cond_3

    .line 72
    array-length v0, p0

    .line 73
    :goto_1
    if-ge v5, v0, :cond_3

    .line 75
    aget-object v2, p0, v5

    .line 77
    invoke-virtual {v2}, Landroid/content/pm/Signature;->toByteArray()[B

    .line 80
    move-result-object v2

    .line 81
    invoke-static {v2, v4}, Lo/x9;->n(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    invoke-static {v2}, Lcom/ffrt/proxyread/Integrity;->d([B)[B

    .line 87
    move-result-object v2

    .line 88
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    add-int/lit8 v5, v5, 0x1

    .line 93
    goto :goto_1

    .line 94
    :cond_2
    const/16 v2, 0x40

    .line 96
    invoke-virtual {v0, p0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 99
    move-result-object p0

    .line 100
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 102
    if-eqz p0, :cond_3

    .line 104
    array-length v0, p0

    .line 105
    :goto_2
    if-ge v5, v0, :cond_3

    .line 107
    aget-object v2, p0, v5

    .line 109
    invoke-virtual {v2}, Landroid/content/pm/Signature;->toByteArray()[B

    .line 112
    move-result-object v2

    .line 113
    invoke-static {v2, v4}, Lo/x9;->n(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    invoke-static {v2}, Lcom/ffrt/proxyread/Integrity;->d([B)[B

    .line 119
    move-result-object v2

    .line 120
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 123
    add-int/lit8 v5, v5, 0x1

    .line 125
    goto :goto_2

    .line 126
    :catch_0
    :cond_3
    return-object v1
.end method

.method public static f(Landroid/content/Context;Ljava/lang/String;)[B
    .locals 5

    .line 1
    const-string v0, "ctx"

    .line 3
    invoke-static {p0, v0}, Lo/x9;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-static {p0}, Lcom/ffrt/proxyread/Integrity;->e(Landroid/content/Context;)Ljava/util/ArrayList;

    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_0

    .line 16
    const/4 v0, 0x0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v1, 0x0

    .line 19
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 22
    move-result-object v0

    .line 23
    :goto_0
    check-cast v0, [B

    .line 25
    if-nez v0, :cond_1

    .line 27
    const/16 v0, 0x20

    .line 29
    new-array v0, v0, [B

    .line 31
    :cond_1
    invoke-static {}, Lcom/ffrt/proxyread/Integrity;->host()Ljava/lang/String;

    .line 34
    move-result-object v1

    .line 35
    sget-object v2, Lo/I3;->a:Ljava/nio/charset/Charset;

    .line 37
    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 40
    move-result-object v1

    .line 41
    const-string v3, "getBytes(...)"

    .line 43
    invoke-static {v1, v3}, Lo/x9;->n(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    invoke-static {p0}, Lo/n5;->d(Landroid/content/Context;)Ljava/lang/String;

    .line 49
    move-result-object p0

    .line 50
    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 53
    move-result-object p0

    .line 54
    invoke-static {p0, v3}, Lo/x9;->n(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    const-string v4, "SHA-256"

    .line 59
    invoke-static {v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 62
    move-result-object v4

    .line 63
    invoke-virtual {v4, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 66
    invoke-virtual {v4, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 69
    invoke-virtual {v4, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 72
    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 75
    move-result-object p0

    .line 76
    invoke-static {p0, v3}, Lo/x9;->n(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    invoke-virtual {v4, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 82
    invoke-virtual {v4}, Ljava/security/MessageDigest;->digest()[B

    .line 85
    move-result-object p0

    .line 86
    const-string p1, "digest(...)"

    .line 88
    invoke-static {p0, p1}, Lo/x9;->n(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    return-object p0
.end method

.method public static g([BI)[B
    .locals 4

    .line 1
    array-length v0, p0

    .line 2
    new-array v0, v0, [B

    .line 4
    array-length v1, p0

    .line 5
    const/4 v2, 0x0

    .line 6
    :goto_0
    if-ge v2, v1, :cond_0

    .line 8
    aget-byte v3, p0, v2

    .line 10
    xor-int/2addr v3, p1

    .line 11
    int-to-byte v3, v3

    .line 12
    aput-byte v3, v0, v2

    .line 14
    add-int/lit8 v2, v2, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    return-object v0
.end method

.method public static final host()Ljava/lang/String;
    .locals 3

    .line 1
    sget-object v0, Lcom/ffrt/proxyread/Integrity;->d:[B

    .line 3
    new-instance v1, Ljava/lang/String;

    .line 5
    const/16 v2, 0x5a

    .line 7
    invoke-static {v0, v2}, Lcom/ffrt/proxyread/Integrity;->g([BI)[B

    .line 10
    move-result-object v0

    .line 11
    sget-object v2, Lo/I3;->b:Ljava/nio/charset/Charset;

    .line 13
    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 16
    return-object v1
.end method
