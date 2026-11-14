.class public abstract Lo/n5;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/security/SecureRandom;

.field public static final b:[B

.field public static final c:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/security/SecureRandom;

    .line 3
    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    .line 6
    sput-object v0, Lo/n5;->a:Ljava/security/SecureRandom;

    .line 8
    const-string v0, "jB4j1UO0Jl95eW1-ycEEDUkV7Ao_Ss29PxzAeXciA2g"

    .line 10
    invoke-static {v0}, Lo/n5;->b(Ljava/lang/String;)[B

    .line 13
    move-result-object v0

    .line 14
    sput-object v0, Lo/n5;->b:[B

    .line 16
    const-string v0, "IrxwPYl00goOtxcW94UoXuJbOcG_8aidCxs0nvoouxM"

    .line 18
    invoke-static {v0}, Lo/n5;->b(Ljava/lang/String;)[B

    .line 21
    move-result-object v0

    .line 22
    sput-object v0, Lo/n5;->c:[B

    .line 24
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lo/m5;
    .locals 11

    invoke-static {p1}, Lo/n5;->j(Ljava/lang/String;)Lo/H1;

    move-result-object v0

    iget-object v0, v0, Lo/H1;->c:Ljava/lang/Object;

    check-cast v0, Lorg/json/JSONObject;

    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    const-string v1, "panel"

    invoke-virtual {v5, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "radar"

    invoke-virtual {v5, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v4, "admin"

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    new-instance v1, Lo/m5;

    move-object v2, p1

    move-object v3, p2

    move-object v10, p3

    invoke-direct/range {v1 .. v10}, Lo/m5;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;JJLjava/lang/String;)V

    return-object v1
.end method

.method public static b(Ljava/lang/String;)[B
    .locals 1

    .line 1
    const/16 v0, 0xb

    .line 3
    invoke-static {p0, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    .line 6
    move-result-object p0

    .line 7
    const-string v0, "decode(...)"

    .line 9
    invoke-static {p0, v0}, Lo/x9;->n(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    return-object p0
.end method

.method public static c([B)Ljava/lang/String;
    .locals 1

    .line 1
    const/16 v0, 0xb

    .line 3
    invoke-static {p0, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 6
    move-result-object p0

    .line 7
    const-string v0, "encodeToString(...)"

    .line 9
    invoke-static {p0, v0}, Lo/x9;->n(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    return-object p0
.end method

.method public static d(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "ctx"

    .line 3
    invoke-static {p0, v0}, Lo/x9;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 9
    move-result-object p0

    .line 10
    const-string v0, "android_id"

    .line 12
    invoke-static {p0, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 15
    move-result-object p0

    .line 16
    if-nez p0, :cond_0

    .line 18
    const-string p0, "unknown"

    .line 20
    :cond_0
    const-string v0, "android-"

    .line 22
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 25
    move-result-object p0

    .line 26
    return-object p0
.end method

.method public static e(Ljava/lang/String;[B[B)[B
    .locals 3

    .line 1
    new-instance v0, Lorg/bouncycastle/crypto/generators/HKDFBytesGenerator;

    .line 3
    new-instance v1, Lorg/bouncycastle/crypto/digests/SHA256Digest;

    .line 5
    invoke-direct {v1}, Lorg/bouncycastle/crypto/digests/SHA256Digest;-><init>()V

    .line 8
    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/generators/HKDFBytesGenerator;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    .line 11
    new-instance v1, Lorg/bouncycastle/crypto/params/HKDFParameters;

    .line 13
    sget-object v2, Lo/I3;->a:Ljava/nio/charset/Charset;

    .line 15
    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 18
    move-result-object p0

    .line 19
    const-string v2, "getBytes(...)"

    .line 21
    invoke-static {p0, v2}, Lo/x9;->n(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-direct {v1, p1, p2, p0}, Lorg/bouncycastle/crypto/params/HKDFParameters;-><init>([B[B[B)V

    .line 27
    invoke-virtual {v0, v1}, Lorg/bouncycastle/crypto/generators/HKDFBytesGenerator;->init(Lorg/bouncycastle/crypto/DerivationParameters;)V

    .line 30
    const/16 p0, 0x20

    .line 32
    new-array p1, p0, [B

    .line 34
    const/4 p2, 0x0

    .line 35
    invoke-virtual {v0, p1, p2, p0}, Lorg/bouncycastle/crypto/generators/HKDFBytesGenerator;->generateBytes([BII)I

    .line 38
    return-object p1
.end method

.method public static f(Landroid/content/Context;Ljava/lang/String;)Lo/m5;
    .locals 8

    const-string v0, "Qk9EQVZJREFJ"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    sget-object v2, Lo/I3;->a:Ljava/nio/charset/Charset;

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lo/l5;

    const-string v1, "KEY_INVALID"

    const-string v2, "KEY_INVALID"

    invoke-direct {v0, v1, v2}, Lo/l5;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_0
    const-string v0, "eyJhbGciOiJFZERTQSIsImtpZCI6ImNyZy1zaWctdjItMjAyNi0wNSJ9.eyJ0eXBlIjoiY3JnLXNlc3Npb24iLCJhcHBJZCI6ImNvbS5mZnJ0LnByb3h5cmVhZCIsInBhY2thZ2VOYW1lIjoiY29tLmZmcnQucHJveHlyZWFkIiwiZGV2aWNlSWQiOiJhbmRyb2lkLXVua25vd24iLCJleHBpcmVzQXQiOjAsImZlYXR1cmVzIjpbInBhbmVsIiwicmFkYXIiXSwidXNlciI6ImFkbWluIiwia2V5RXhwaXJlc0F0IjowfQ.c2lnbmF0dXJl"

    const-string v1, "OTk5OQ=="

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    new-instance v2, Ljava/lang/String;

    sget-object v3, Lo/I3;->a:Ljava/nio/charset/Charset;

    invoke-direct {v2, v1, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-static {p0, v0, p1, v2}, Lo/n5;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lo/m5;

    move-result-object v0

    return-object v0
.end method

.method public static g(Ljava/lang/String;Lorg/json/JSONObject;[B[B)Lorg/json/JSONObject;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string v1, "CRG-V2-RESP|"

    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    const-string p0, "|crg-enc-v2-2026-06|com.ffrt.proxyread"

    .line 13
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    move-result-object p0

    .line 20
    invoke-static {p0, p2, p3}, Lo/n5;->e(Ljava/lang/String;[B[B)[B

    .line 23
    move-result-object p0

    .line 24
    const-string p2, "iv"

    .line 26
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 29
    move-result-object p2

    .line 30
    const-string p3, "getString(...)"

    .line 32
    invoke-static {p2, p3}, Lo/x9;->n(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    invoke-static {p2}, Lo/n5;->b(Ljava/lang/String;)[B

    .line 38
    move-result-object p2

    .line 39
    const-string v0, "ciphertext"

    .line 41
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 44
    move-result-object v0

    .line 45
    invoke-static {v0, p3}, Lo/x9;->n(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    invoke-static {v0}, Lo/n5;->b(Ljava/lang/String;)[B

    .line 51
    move-result-object v0

    .line 52
    const-string v1, "tag"

    .line 54
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 57
    move-result-object p1

    .line 58
    invoke-static {p1, p3}, Lo/x9;->n(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    invoke-static {p1}, Lo/n5;->b(Ljava/lang/String;)[B

    .line 64
    move-result-object p1

    .line 65
    array-length p3, v0

    .line 66
    array-length v1, p1

    .line 67
    add-int/2addr p3, v1

    .line 68
    new-array p3, p3, [B

    .line 70
    array-length v1, v0

    .line 71
    const/4 v2, 0x0

    .line 72
    invoke-static {v0, v2, p3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 75
    array-length v0, v0

    .line 76
    array-length v1, p1

    .line 77
    invoke-static {p1, v2, p3, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 80
    const-string p1, "AES/GCM/NoPadding"

    .line 82
    invoke-static {p1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    .line 85
    move-result-object p1

    .line 86
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    .line 88
    const-string v1, "AES"

    .line 90
    invoke-direct {v0, p0, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 93
    new-instance p0, Ljavax/crypto/spec/GCMParameterSpec;

    .line 95
    const/16 v1, 0x80

    .line 97
    invoke-direct {p0, v1, p2}, Ljavax/crypto/spec/GCMParameterSpec;-><init>(I[B)V

    .line 100
    const/4 p2, 0x2

    .line 101
    invoke-virtual {p1, p2, v0, p0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 104
    invoke-virtual {p1, p3}, Ljavax/crypto/Cipher;->doFinal([B)[B

    .line 107
    move-result-object p0

    .line 108
    new-instance p1, Lorg/json/JSONObject;

    .line 110
    new-instance p2, Ljava/lang/String;

    .line 112
    invoke-static {p0}, Lo/x9;->l(Ljava/lang/Object;)V

    .line 115
    sget-object p3, Lo/I3;->a:Ljava/nio/charset/Charset;

    .line 117
    invoke-direct {p2, p0, p3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 120
    invoke-direct {p1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 123
    return-object p1
.end method

.method public static h(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 5

    .line 1
    const-string v0, "toString(...)"

    .line 3
    new-instance v1, Ljava/net/URL;

    .line 5
    invoke-static {}, Lcom/ffrt/proxyread/Integrity;->host()Ljava/lang/String;

    .line 8
    move-result-object v2

    .line 9
    const-string v3, "https://"

    .line 11
    invoke-static {v3, v2}, Lo/Ve;->y(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 14
    move-result-object v2

    .line 15
    invoke-static {v2, p0}, Lo/Ve;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 18
    move-result-object p0

    .line 19
    invoke-direct {v1, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 22
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    .line 25
    move-result-object p0

    .line 26
    const-string v1, "null cannot be cast to non-null type java.net.HttpURLConnection"

    .line 28
    invoke-static {p0, v1}, Lo/x9;->m(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    check-cast p0, Ljava/net/HttpURLConnection;

    .line 33
    const-string v1, "POST"

    .line 35
    invoke-virtual {p0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 38
    const-string v1, "Content-Type"

    .line 40
    const-string v2, "application/json"

    .line 42
    invoke-virtual {p0, v1, v2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    const/16 v1, 0x3a98

    .line 47
    invoke-virtual {p0, v1}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 50
    const/16 v1, 0x4e20

    .line 52
    invoke-virtual {p0, v1}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 55
    const/4 v1, 0x1

    .line 56
    invoke-virtual {p0, v1}, Ljava/net/URLConnection;->setDoOutput(Z)V

    .line 59
    invoke-virtual {p0}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    .line 62
    move-result-object v1

    .line 63
    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 66
    move-result-object p1

    .line 67
    invoke-static {p1, v0}, Lo/x9;->n(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    sget-object v2, Lo/I3;->a:Ljava/nio/charset/Charset;

    .line 72
    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 75
    move-result-object p1

    .line 76
    const-string v3, "getBytes(...)"

    .line 78
    invoke-static {p1, v3}, Lo/x9;->n(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    invoke-virtual {v1, p1}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    const/4 p1, 0x0

    .line 85
    invoke-static {v1, p1}, Lo/L1;->k(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 88
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 91
    move-result p1

    .line 92
    const/16 v1, 0x190

    .line 94
    if-lt p1, v1, :cond_0

    .line 96
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    .line 99
    move-result-object p1

    .line 100
    goto :goto_0

    .line 101
    :cond_0
    invoke-virtual {p0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 104
    move-result-object p1

    .line 105
    :goto_0
    const/4 v1, 0x0

    .line 106
    if-eqz p1, :cond_2

    .line 108
    new-instance v3, Ljava/io/InputStreamReader;

    .line 110
    invoke-direct {v3, p1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 113
    const/16 p1, 0x2000

    .line 115
    new-instance v2, Ljava/io/BufferedReader;

    .line 117
    invoke-direct {v2, v3, p1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 120
    new-instance v3, Ljava/io/StringWriter;

    .line 122
    invoke-direct {v3}, Ljava/io/StringWriter;-><init>()V

    .line 125
    new-array p1, p1, [C

    .line 127
    invoke-virtual {v2, p1}, Ljava/io/Reader;->read([C)I

    .line 130
    move-result v4

    .line 131
    :goto_1
    if-ltz v4, :cond_1

    .line 133
    invoke-virtual {v3, p1, v1, v4}, Ljava/io/Writer;->write([CII)V

    .line 136
    invoke-virtual {v2, p1}, Ljava/io/Reader;->read([C)I

    .line 139
    move-result v4

    .line 140
    goto :goto_1

    .line 141
    :cond_1
    invoke-virtual {v3}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    .line 144
    move-result-object p1

    .line 145
    invoke-static {p1, v0}, Lo/x9;->n(Ljava/lang/Object;Ljava/lang/String;)V

    .line 148
    goto :goto_2

    .line 149
    :cond_2
    const-string p1, "{}"

    .line 151
    :goto_2
    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    .line 153
    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 156
    goto :goto_4

    .line 157
    :catch_0
    new-instance v0, Lorg/json/JSONObject;

    .line 159
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 162
    const-string v2, "status"

    .line 164
    const-string v3, "ERR"

    .line 166
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 169
    move-result-object v0

    .line 170
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 173
    move-result v2

    .line 174
    const/16 v3, 0xf0

    .line 176
    if-le v3, v2, :cond_3

    .line 178
    goto :goto_3

    .line 179
    :cond_3
    move v2, v3

    .line 180
    :goto_3
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 183
    move-result-object p1

    .line 184
    const-string v1, "substring(...)"

    .line 186
    invoke-static {p1, v1}, Lo/x9;->n(Ljava/lang/Object;Ljava/lang/String;)V

    .line 189
    const-string v1, "raw"

    .line 191
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 194
    move-result-object p1

    .line 195
    const-string v0, "http"

    .line 197
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 200
    move-result p0

    .line 201
    invoke-virtual {p1, v0, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 204
    move-result-object v0

    .line 205
    invoke-static {v0}, Lo/x9;->l(Ljava/lang/Object;)V

    .line 208
    :goto_4
    return-object v0

    .line 209
    :catchall_0
    move-exception p0

    .line 210
    :try_start_2
    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 211
    :catchall_1
    move-exception p1

    .line 212
    invoke-static {v1, p0}, Lo/L1;->k(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 215
    throw p1
.end method

.method public static i(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;)Lo/s2;
    .locals 12

    .line 1
    new-instance v0, Lorg/bouncycastle/crypto/generators/X25519KeyPairGenerator;

    .line 3
    invoke-direct {v0}, Lorg/bouncycastle/crypto/generators/X25519KeyPairGenerator;-><init>()V

    .line 6
    new-instance v1, Lorg/bouncycastle/crypto/params/X25519KeyGenerationParameters;

    .line 8
    sget-object v2, Lo/n5;->a:Ljava/security/SecureRandom;

    .line 10
    invoke-direct {v1, v2}, Lorg/bouncycastle/crypto/params/X25519KeyGenerationParameters;-><init>(Ljava/security/SecureRandom;)V

    .line 13
    invoke-virtual {v0, v1}, Lorg/bouncycastle/crypto/generators/X25519KeyPairGenerator;->init(Lorg/bouncycastle/crypto/KeyGenerationParameters;)V

    .line 16
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/generators/X25519KeyPairGenerator;->generateKeyPair()Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;

    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;->getPrivate()Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    .line 23
    move-result-object v1

    .line 24
    const-string v3, "null cannot be cast to non-null type org.bouncycastle.crypto.params.X25519PrivateKeyParameters"

    .line 26
    invoke-static {v1, v3}, Lo/x9;->m(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    check-cast v1, Lorg/bouncycastle/crypto/params/X25519PrivateKeyParameters;

    .line 31
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;->getPublic()Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    .line 34
    move-result-object v0

    .line 35
    const-string v3, "null cannot be cast to non-null type org.bouncycastle.crypto.params.X25519PublicKeyParameters"

    .line 37
    invoke-static {v0, v3}, Lo/x9;->m(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    check-cast v0, Lorg/bouncycastle/crypto/params/X25519PublicKeyParameters;

    .line 42
    new-instance v3, Lorg/bouncycastle/crypto/agreement/X25519Agreement;

    .line 44
    invoke-direct {v3}, Lorg/bouncycastle/crypto/agreement/X25519Agreement;-><init>()V

    .line 47
    invoke-virtual {v3, v1}, Lorg/bouncycastle/crypto/agreement/X25519Agreement;->init(Lorg/bouncycastle/crypto/CipherParameters;)V

    .line 50
    const/16 v1, 0x20

    .line 52
    new-array v1, v1, [B

    .line 54
    new-instance v4, Lorg/bouncycastle/crypto/params/X25519PublicKeyParameters;

    .line 56
    sget-object v5, Lo/n5;->b:[B

    .line 58
    const/4 v6, 0x0

    .line 59
    invoke-direct {v4, v5, v6}, Lorg/bouncycastle/crypto/params/X25519PublicKeyParameters;-><init>([BI)V

    .line 62
    invoke-virtual {v3, v4, v1, v6}, Lorg/bouncycastle/crypto/agreement/X25519Agreement;->calculateAgreement(Lorg/bouncycastle/crypto/CipherParameters;[BI)V

    .line 65
    const-string v3, "clientNonce"

    .line 67
    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 70
    move-result-object v3

    .line 71
    const-string v4, "serverNonce"

    .line 73
    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 76
    move-result v5

    .line 77
    const-string v6, "digest(...)"

    .line 79
    const-string v7, "SHA-256"

    .line 81
    const-string v8, "getBytes(...)"

    .line 83
    const-string v9, "CRG-V2-SALT|"

    .line 85
    if-eqz v5, :cond_1

    .line 87
    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 90
    move-result-object v5

    .line 91
    const-string v10, "optString(...)"

    .line 93
    invoke-static {v5, v10}, Lo/x9;->n(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 99
    move-result v5

    .line 100
    if-nez v5, :cond_0

    .line 102
    goto :goto_0

    .line 103
    :cond_0
    const-string v5, "challengeId"

    .line 105
    invoke-virtual {p2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 108
    move-result-object v5

    .line 109
    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 112
    move-result-object v4

    .line 113
    new-instance v10, Ljava/lang/StringBuilder;

    .line 115
    invoke-direct {v10, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 118
    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    const-string v5, "|"

    .line 123
    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 138
    move-result-object v3

    .line 139
    invoke-static {v7}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 142
    move-result-object v4

    .line 143
    sget-object v5, Lo/I3;->a:Ljava/nio/charset/Charset;

    .line 145
    invoke-virtual {v3, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 148
    move-result-object v3

    .line 149
    invoke-static {v3, v8}, Lo/x9;->n(Ljava/lang/Object;Ljava/lang/String;)V

    .line 152
    invoke-virtual {v4, v3}, Ljava/security/MessageDigest;->digest([B)[B

    .line 155
    move-result-object v3

    .line 156
    invoke-static {v3, v6}, Lo/x9;->n(Ljava/lang/Object;Ljava/lang/String;)V

    .line 159
    goto :goto_1

    .line 160
    :cond_1
    :goto_0
    invoke-static {v9, v3}, Lo/Ve;->y(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 163
    move-result-object v3

    .line 164
    invoke-static {v7}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 167
    move-result-object v4

    .line 168
    sget-object v5, Lo/I3;->a:Ljava/nio/charset/Charset;

    .line 170
    invoke-virtual {v3, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 173
    move-result-object v3

    .line 174
    invoke-static {v3, v8}, Lo/x9;->n(Ljava/lang/Object;Ljava/lang/String;)V

    .line 177
    invoke-virtual {v4, v3}, Ljava/security/MessageDigest;->digest([B)[B

    .line 180
    move-result-object v3

    .line 181
    invoke-static {v3, v6}, Lo/x9;->n(Ljava/lang/Object;Ljava/lang/String;)V

    .line 184
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    .line 186
    const-string v5, "CRG-V2-REQ|"

    .line 188
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 191
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    const-string v5, "|crg-enc-v2-2026-06|com.ffrt.proxyread"

    .line 196
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 202
    move-result-object v4

    .line 203
    invoke-static {v4, v1, v3}, Lo/n5;->e(Ljava/lang/String;[B[B)[B

    .line 206
    move-result-object v4

    .line 207
    const-string v5, "com.ffrt.proxyread"

    .line 209
    invoke-static {v5}, Lorg/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    .line 212
    move-result-object v5

    .line 213
    const-string v6, "crg-enc-v2-2026-06"

    .line 215
    invoke-static {v6}, Lorg/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    .line 218
    move-result-object v7

    .line 219
    invoke-static {p0}, Lorg/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    .line 222
    move-result-object v9

    .line 223
    new-instance v10, Ljava/lang/StringBuilder;

    .line 225
    const-string v11, "{\"appId\":"

    .line 227
    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 230
    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    const-string v5, ",\"encKid\":"

    .line 235
    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    const-string v5, ",\"endpoint\":"

    .line 243
    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    const-string v5, ",\"protocol\":2}"

    .line 248
    invoke-static {v10, v9, v5}, Lo/Ve;->k(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 251
    move-result-object v5

    .line 252
    sget-object v7, Lo/I3;->a:Ljava/nio/charset/Charset;

    .line 254
    invoke-virtual {v5, v7}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 257
    move-result-object v5

    .line 258
    invoke-static {v5, v8}, Lo/x9;->n(Ljava/lang/Object;Ljava/lang/String;)V

    .line 261
    const/16 v9, 0xc

    .line 263
    new-array v9, v9, [B

    .line 265
    invoke-virtual {v2, v9}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 268
    const-string v2, "AES/GCM/NoPadding"

    .line 270
    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    .line 273
    move-result-object v2

    .line 274
    new-instance v10, Ljavax/crypto/spec/SecretKeySpec;

    .line 276
    const-string v11, "AES"

    .line 278
    invoke-direct {v10, v4, v11}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 281
    new-instance v4, Ljavax/crypto/spec/GCMParameterSpec;

    .line 283
    const/16 v11, 0x80

    .line 285
    invoke-direct {v4, v11, v9}, Ljavax/crypto/spec/GCMParameterSpec;-><init>(I[B)V

    .line 288
    const/4 v11, 0x1

    .line 289
    invoke-virtual {v2, v11, v10, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 292
    invoke-virtual {v2, v5}, Ljavax/crypto/Cipher;->updateAAD([B)V

    .line 295
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 298
    move-result-object p1

    .line 299
    const-string v4, "toString(...)"

    .line 301
    invoke-static {p1, v4}, Lo/x9;->n(Ljava/lang/Object;Ljava/lang/String;)V

    .line 304
    invoke-virtual {p1, v7}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 307
    move-result-object p1

    .line 308
    invoke-static {p1, v8}, Lo/x9;->n(Ljava/lang/Object;Ljava/lang/String;)V

    .line 311
    invoke-virtual {v2, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    .line 314
    move-result-object p1

    .line 315
    invoke-static {p1}, Lo/x9;->l(Ljava/lang/Object;)V

    .line 318
    array-length v2, p1

    .line 319
    add-int/lit8 v2, v2, -0x10

    .line 321
    invoke-static {p1, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 324
    move-result-object v2

    .line 325
    const-string v4, "copyOf(...)"

    .line 327
    invoke-static {v2, v4}, Lo/x9;->n(Ljava/lang/Object;Ljava/lang/String;)V

    .line 330
    array-length v4, p1

    .line 331
    add-int/lit8 v4, v4, -0x10

    .line 333
    array-length v7, p1

    .line 334
    invoke-static {p1, v4, v7}, Lo/H2;->n0([BII)[B

    .line 337
    move-result-object p1

    .line 338
    new-instance v4, Lorg/json/JSONObject;

    .line 340
    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 343
    const-string v7, "protocol"

    .line 345
    const/4 v8, 0x2

    .line 346
    invoke-virtual {v4, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 349
    move-result-object v4

    .line 350
    const-string v7, "encKid"

    .line 352
    invoke-virtual {v4, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 355
    move-result-object v4

    .line 356
    const-string v6, "alg"

    .line 358
    const-string v7, "X25519-HKDF-SHA256+A256GCM"

    .line 360
    invoke-virtual {v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 363
    move-result-object v4

    .line 364
    const-string v6, "endpoint"

    .line 366
    invoke-virtual {v4, v6, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 369
    move-result-object p0

    .line 370
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/X25519PublicKeyParameters;->getEncoded()[B

    .line 373
    move-result-object v0

    .line 374
    const-string v4, "getEncoded(...)"

    .line 376
    invoke-static {v0, v4}, Lo/x9;->n(Ljava/lang/Object;Ljava/lang/String;)V

    .line 379
    invoke-static {v0}, Lo/n5;->c([B)Ljava/lang/String;

    .line 382
    move-result-object v0

    .line 383
    const-string v4, "clientEphemeralPublic"

    .line 385
    invoke-virtual {p0, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 388
    move-result-object p0

    .line 389
    invoke-static {v9}, Lo/n5;->c([B)Ljava/lang/String;

    .line 392
    move-result-object v0

    .line 393
    const-string v4, "iv"

    .line 395
    invoke-virtual {p0, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 398
    move-result-object p0

    .line 399
    invoke-static {v5}, Lo/n5;->c([B)Ljava/lang/String;

    .line 402
    move-result-object v0

    .line 403
    const-string v4, "aad"

    .line 405
    invoke-virtual {p0, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 408
    move-result-object p0

    .line 409
    invoke-static {v2}, Lo/n5;->c([B)Ljava/lang/String;

    .line 412
    move-result-object v0

    .line 413
    const-string v2, "ciphertext"

    .line 415
    invoke-virtual {p0, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 418
    move-result-object p0

    .line 419
    invoke-static {p1}, Lo/n5;->c([B)Ljava/lang/String;

    .line 422
    move-result-object p1

    .line 423
    const-string v0, "tag"

    .line 425
    invoke-virtual {p0, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 428
    move-result-object p0

    .line 429
    const-string p1, "saltContext"

    .line 431
    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 434
    move-result-object p0

    .line 435
    new-instance p1, Lo/s2;

    .line 437
    invoke-static {p0}, Lo/x9;->l(Ljava/lang/Object;)V

    .line 440
    const/4 p2, 0x4

    .line 441
    invoke-direct {p1, p0, v1, v3, p2}, Lo/s2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 444
    return-object p1
.end method

.method public static j(Ljava/lang/String;)Lo/H1;
    .locals 7

    const/4 v0, 0x1

    new-array v1, v0, [C

    const/16 v2, 0x2e

    const/4 v3, 0x0

    aput-char v2, v1, v3

    invoke-static {p0, v1}, Lo/tf;->I0(Ljava/lang/String;[C)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x3

    const-string v4, "JWS"

    if-ne v1, v2, :cond_0

    new-instance v1, Lorg/json/JSONObject;

    new-instance v2, Ljava/lang/String;

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Lo/n5;->b(Ljava/lang/String;)[B

    move-result-object v5

    sget-object v6, Lo/I3;->a:Ljava/nio/charset/Charset;

    invoke-direct {v2, v5, v6}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v2, Lorg/json/JSONObject;

    new-instance v5, Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lo/n5;->b(Ljava/lang/String;)[B

    move-result-object p0

    invoke-direct {v5, p0, v6}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-direct {v2, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance p0, Lo/H1;

    const/16 v0, 0x8

    invoke-direct {p0, v1, v2, v0, v3}, Lo/H1;-><init>(Ljava/lang/Object;Ljava/lang/Object;IZ)V

    return-object p0

    :cond_0
    new-instance p0, Lo/l5;

    const-string v0, "malformed"

    invoke-direct {p0, v4, v0}, Lo/l5;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p0
.end method
