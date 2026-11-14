.class final Lio/github/muntashirakon/adb/SslUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static customConscrypt:Z

.field private static sslContext:Ljavax/net/ssl/SSLContext;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method private static getAllAcceptingTrustManager()Ljavax/net/ssl/X509TrustManager;
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "TrustAllX509TrustManager"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/github/muntashirakon/adb/SslUtils$2;

    .line 3
    invoke-direct {v0}, Lio/github/muntashirakon/adb/SslUtils$2;-><init>()V

    .line 6
    return-object v0
.end method

.method private static getKeyManager(Lio/github/muntashirakon/adb/KeyPair;)Ljavax/net/ssl/KeyManager;
    .locals 1

    .line 1
    new-instance v0, Lio/github/muntashirakon/adb/SslUtils$1;

    .line 3
    invoke-direct {v0, p0}, Lio/github/muntashirakon/adb/SslUtils$1;-><init>(Lio/github/muntashirakon/adb/KeyPair;)V

    .line 6
    return-object v0
.end method

.method public static getSslContext(Lio/github/muntashirakon/adb/KeyPair;)Ljavax/net/ssl/SSLContext;
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "TrulyRandom"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/KeyManagementException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    const-string v2, "TLSv1.3"

    .line 5
    sget-object v3, Lio/github/muntashirakon/adb/SslUtils;->sslContext:Ljavax/net/ssl/SSLContext;

    .line 7
    if-eqz v3, :cond_0

    .line 9
    return-object v3

    .line 10
    :cond_0
    :try_start_0
    const-class v3, Lorg/conscrypt/OpenSSLProvider;

    .line 12
    sget v4, Lorg/conscrypt/OpenSSLProvider;->a:I

    .line 14
    new-array v4, v1, [Ljava/lang/Class;

    .line 16
    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 19
    move-result-object v3

    .line 20
    new-array v4, v1, [Ljava/lang/Object;

    .line 22
    invoke-virtual {v3, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    move-result-object v3

    .line 26
    check-cast v3, Ljava/security/Provider;

    .line 28
    invoke-static {v2, v3}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/net/ssl/SSLContext;

    .line 31
    move-result-object v3

    .line 32
    sput-object v3, Lio/github/muntashirakon/adb/SslUtils;->sslContext:Ljavax/net/ssl/SSLContext;

    .line 34
    sput-boolean v0, Lio/github/muntashirakon/adb/SslUtils;->customConscrypt:Z
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    goto :goto_0

    .line 37
    :catch_0
    move-exception p0

    .line 38
    goto :goto_2

    .line 39
    :catchall_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 41
    const/16 v4, 0x1d

    .line 43
    if-lt v3, v4, :cond_2

    .line 45
    invoke-static {v2}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    .line 48
    move-result-object v2

    .line 49
    sput-object v2, Lio/github/muntashirakon/adb/SslUtils;->sslContext:Ljavax/net/ssl/SSLContext;

    .line 51
    sput-boolean v1, Lio/github/muntashirakon/adb/SslUtils;->customConscrypt:Z

    .line 53
    :goto_0
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 55
    new-instance v3, Ljava/lang/StringBuilder;

    .line 57
    const-string v4, "Using "

    .line 59
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 62
    sget-boolean v4, Lio/github/muntashirakon/adb/SslUtils;->customConscrypt:Z

    .line 64
    if-eqz v4, :cond_1

    .line 66
    const-string v4, "custom"

    .line 68
    goto :goto_1

    .line 69
    :cond_1
    const-string v4, "default"

    .line 71
    :goto_1
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    const-string v4, " TLSv1.3 provider..."

    .line 76
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    move-result-object v3

    .line 83
    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 86
    sget-object v2, Lio/github/muntashirakon/adb/SslUtils;->sslContext:Ljavax/net/ssl/SSLContext;

    .line 88
    invoke-static {p0}, Lio/github/muntashirakon/adb/SslUtils;->getKeyManager(Lio/github/muntashirakon/adb/KeyPair;)Ljavax/net/ssl/KeyManager;

    .line 91
    move-result-object p0

    .line 92
    new-array v3, v0, [Ljavax/net/ssl/KeyManager;

    .line 94
    aput-object p0, v3, v1

    .line 96
    invoke-static {}, Lio/github/muntashirakon/adb/SslUtils;->getAllAcceptingTrustManager()Ljavax/net/ssl/X509TrustManager;

    .line 99
    move-result-object p0

    .line 100
    new-array v0, v0, [Ljavax/net/ssl/X509TrustManager;

    .line 102
    aput-object p0, v0, v1

    .line 104
    new-instance p0, Ljava/security/SecureRandom;

    .line 106
    invoke-direct {p0}, Ljava/security/SecureRandom;-><init>()V

    .line 109
    invoke-virtual {v2, v3, v0, p0}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 112
    sget-object p0, Lio/github/muntashirakon/adb/SslUtils;->sslContext:Ljavax/net/ssl/SSLContext;

    .line 114
    return-object p0

    .line 115
    :cond_2
    new-instance p0, Ljava/security/NoSuchAlgorithmException;

    .line 117
    const-string v0, "TLSv1.3 isn\'t supported on your platform. Use custom Conscrypt library instead."

    .line 119
    invoke-direct {p0, v0}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    .line 122
    throw p0

    .line 123
    :goto_2
    throw p0
.end method

.method public static isCustomConscrypt()Z
    .locals 1

    .line 1
    sget-boolean v0, Lio/github/muntashirakon/adb/SslUtils;->customConscrypt:Z

    .line 3
    return v0
.end method
