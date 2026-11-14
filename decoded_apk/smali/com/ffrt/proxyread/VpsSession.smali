.class public final Lcom/ffrt/proxyread/VpsSession;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static volatile a:I


# direct methods
.method public static a()V
    .locals 13

    .line 1
    invoke-static {}, Lcom/ffrt/proxyread/Integrity;->host()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/net/URL;

    .line 7
    const-string v2, "https://"

    .line 9
    const-string v3, "/api/v2/proxy/session"

    .line 11
    invoke-static {v2, v0, v3}, Lo/o5;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 14
    move-result-object v2

    .line 15
    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 18
    sget-object v2, Lo/L1;->a:Ljava/lang/String;

    .line 20
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 23
    move-result v3

    .line 24
    const-string v4, "com.ffrt.proxyread"

    .line 26
    if-lez v3, :cond_0

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    move-object v2, v4

    .line 30
    :goto_0
    const-string v3, "SHA-256"

    .line 32
    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 35
    move-result-object v3

    .line 36
    sget-object v5, Lo/I3;->a:Ljava/nio/charset/Charset;

    .line 38
    invoke-virtual {v0, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 41
    move-result-object v6

    .line 42
    const-string v7, "getBytes(...)"

    .line 44
    invoke-static {v6, v7}, Lo/x9;->n(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    invoke-virtual {v3, v6}, Ljava/security/MessageDigest;->update([B)V

    .line 50
    invoke-virtual {v2, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 53
    move-result-object v5

    .line 54
    invoke-static {v5, v7}, Lo/x9;->n(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    invoke-virtual {v3, v5}, Ljava/security/MessageDigest;->update([B)V

    .line 60
    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B

    .line 63
    move-result-object v3

    .line 64
    new-instance v5, Lorg/json/JSONObject;

    .line 66
    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 69
    const-string v6, "op"

    .line 71
    const-string v8, "bind"

    .line 73
    invoke-virtual {v5, v6, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 76
    move-result-object v5

    .line 77
    const-string v6, "host"

    .line 79
    invoke-virtual {v5, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 82
    move-result-object v0

    .line 83
    const-string v5, "kid"

    .line 85
    const-string v6, "crg-sig-v2-2026-05"

    .line 87
    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 90
    move-result-object v0

    .line 91
    const-string v5, "token"

    .line 93
    invoke-virtual {v0, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 96
    move-result-object v0

    .line 97
    sget-object v5, Lcom/ffrt/proxyread/Integrity;->f:[B

    .line 99
    new-instance v6, Ljava/lang/String;

    .line 101
    const/16 v8, 0x5a

    .line 103
    invoke-static {v5, v8}, Lcom/ffrt/proxyread/Integrity;->g([BI)[B

    .line 106
    move-result-object v5

    .line 107
    sget-object v8, Lo/I3;->b:Ljava/nio/charset/Charset;

    .line 109
    invoke-direct {v6, v5, v8}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 112
    const-string v5, "pin"

    .line 114
    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 117
    move-result-object v0

    .line 118
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 121
    move-result-object v0

    .line 122
    const-string v5, "toString(...)"

    .line 124
    invoke-static {v0, v5}, Lo/x9;->n(Ljava/lang/Object;Ljava/lang/String;)V

    .line 127
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    .line 130
    move-result-object v1

    .line 131
    const-string v5, "null cannot be cast to non-null type java.net.HttpURLConnection"

    .line 133
    invoke-static {v1, v5}, Lo/x9;->m(Ljava/lang/Object;Ljava/lang/String;)V

    .line 136
    check-cast v1, Ljava/net/HttpURLConnection;

    .line 138
    const-string v5, "POST"

    .line 140
    invoke-virtual {v1, v5}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 143
    const/16 v5, 0xaf0

    .line 145
    invoke-virtual {v1, v5}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 148
    invoke-virtual {v1, v5}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 151
    const/4 v5, 0x1

    .line 152
    invoke-virtual {v1, v5}, Ljava/net/URLConnection;->setDoOutput(Z)V

    .line 155
    const-string v6, "Content-Type"

    .line 157
    const-string v8, "application/json"

    .line 159
    invoke-virtual {v1, v6, v8}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    const-string v6, "Accept"

    .line 164
    invoke-virtual {v1, v6, v8}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    const-string v6, "X-Session-Key"

    .line 169
    invoke-virtual {v1, v6, v2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    const-string v6, "X-App-Id"

    .line 174
    invoke-virtual {v1, v6, v4}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    invoke-static {v3}, Lo/x9;->l(Ljava/lang/Object;)V

    .line 180
    new-instance v4, Ljava/lang/StringBuilder;

    .line 182
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 185
    const-string v6, ""

    .line 187
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 190
    array-length v8, v3

    .line 191
    const/4 v9, 0x0

    .line 192
    move v10, v9

    .line 193
    :goto_1
    if-ge v9, v8, :cond_2

    .line 195
    aget-byte v11, v3, v9

    .line 197
    add-int/2addr v10, v5

    .line 198
    if-le v10, v5, :cond_1

    .line 200
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 203
    :cond_1
    and-int/lit16 v11, v11, 0xff

    .line 205
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 208
    move-result-object v11

    .line 209
    filled-new-array {v11}, [Ljava/lang/Object;

    .line 212
    move-result-object v11

    .line 213
    invoke-static {v11, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 216
    move-result-object v11

    .line 217
    const-string v12, "%02x"

    .line 219
    invoke-static {v12, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 222
    move-result-object v11

    .line 223
    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 226
    add-int/lit8 v9, v9, 0x1

    .line 228
    goto :goto_1

    .line 229
    :cond_2
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 232
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 235
    move-result-object v3

    .line 236
    const-string v4, "X-Pin"

    .line 238
    invoke-virtual {v1, v4, v3}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    const-string v3, "Bearer "

    .line 243
    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 246
    move-result-object v2

    .line 247
    const-string v3, "Authorization"

    .line 249
    invoke-virtual {v1, v3, v2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    :try_start_0
    invoke-virtual {v1}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    .line 255
    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 256
    :try_start_1
    sget-object v3, Lo/I3;->a:Ljava/nio/charset/Charset;

    .line 258
    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 261
    move-result-object v0

    .line 262
    invoke-static {v0, v7}, Lo/x9;->n(Ljava/lang/Object;Ljava/lang/String;)V

    .line 265
    invoke-virtual {v2, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    .line 268
    const/4 v0, 0x0

    .line 269
    :try_start_2
    invoke-static {v2, v0}, Lo/L1;->k(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 272
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 275
    move-result v2

    .line 276
    sput v2, Lcom/ffrt/proxyread/VpsSession;->a:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 278
    :try_start_3
    invoke-virtual {v1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 281
    move-result-object v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 282
    :try_start_4
    new-instance v4, Ljava/lang/String;

    .line 284
    invoke-static {v2}, Lo/x9;->l(Ljava/lang/Object;)V

    .line 287
    invoke-static {v2}, Lo/L1;->R(Ljava/io/InputStream;)[B

    .line 290
    move-result-object v5

    .line 291
    invoke-direct {v4, v5, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 294
    :try_start_5
    invoke-static {v2, v0}, Lo/L1;->k(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 297
    goto :goto_3

    .line 298
    :catchall_0
    move-exception v2

    .line 299
    goto :goto_2

    .line 300
    :catchall_1
    move-exception v3

    .line 301
    :try_start_6
    throw v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 302
    :catchall_2
    move-exception v4

    .line 303
    :try_start_7
    invoke-static {v2, v3}, Lo/L1;->k(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 306
    throw v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 307
    :goto_2
    :try_start_8
    new-instance v4, Lo/de;

    .line 309
    invoke-direct {v4, v2}, Lo/de;-><init>(Ljava/lang/Throwable;)V

    .line 312
    :goto_3
    instance-of v2, v4, Lo/de;

    .line 314
    if-eqz v2, :cond_3

    .line 316
    move-object v2, v4

    .line 317
    check-cast v2, Lo/de;

    .line 319
    iget-object v2, v2, Lo/de;->a:Ljava/lang/Throwable;

    .line 321
    goto :goto_4

    .line 322
    :cond_3
    move-object v2, v0

    .line 323
    :goto_4
    if-nez v2, :cond_4

    .line 325
    move-object v6, v4

    .line 326
    goto :goto_5

    .line 327
    :cond_4
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    .line 330
    move-result-object v2
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 331
    if-eqz v2, :cond_5

    .line 333
    :try_start_9
    new-instance v6, Ljava/lang/String;

    .line 335
    invoke-static {v2}, Lo/L1;->R(Ljava/io/InputStream;)[B

    .line 338
    move-result-object v3

    .line 339
    sget-object v4, Lo/I3;->a:Ljava/nio/charset/Charset;

    .line 341
    invoke-direct {v6, v3, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 344
    :try_start_a
    invoke-static {v2, v0}, Lo/L1;->k(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 347
    goto :goto_5

    .line 348
    :catchall_3
    move-exception v0

    .line 349
    goto :goto_8

    .line 350
    :catchall_4
    move-exception v0

    .line 351
    :try_start_b
    throw v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    .line 352
    :catchall_5
    move-exception v3

    .line 353
    :try_start_c
    invoke-static {v2, v0}, Lo/L1;->k(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 356
    throw v3

    .line 357
    :cond_5
    :goto_5
    check-cast v6, Ljava/lang/String;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 359
    :goto_6
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 362
    goto :goto_7

    .line 363
    :catchall_6
    move-exception v0

    .line 364
    :try_start_d
    throw v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    .line 365
    :catchall_7
    move-exception v3

    .line 366
    :try_start_e
    invoke-static {v2, v0}, Lo/L1;->k(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 369
    throw v3
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_0
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    .line 370
    :catch_0
    const/16 v0, 0x193

    .line 372
    :try_start_f
    sput v0, Lcom/ffrt/proxyread/VpsSession;->a:I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    .line 374
    goto :goto_6

    .line 375
    :goto_7
    return-void

    .line 376
    :goto_8
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 379
    throw v0
.end method

.method public static final connectProxy()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Lo/ki;

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lo/ki;-><init>(I)V

    .line 7
    const/16 v1, 0x17

    .line 9
    const-string v2, "vps-session"

    .line 11
    invoke-static {v2, v0, v1}, Lo/Ha;->y0(Ljava/lang/String;Lo/u8;I)Lo/Uf;

    .line 14
    sget v0, Lcom/ffrt/proxyread/VpsSession;->a:I

    .line 16
    const/16 v1, 0xc8

    .line 18
    if-ne v0, v1, :cond_0

    .line 20
    const-string v0, "OK"

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const-string v0, "VPS cyperdecode.click rechaz\u00f3 la conexi\u00f3n proxy porque la clave de sesi\u00f3n no es v\u00e1lida"

    .line 25
    :goto_0
    return-object v0
.end method
