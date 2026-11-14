.class Lorg/bouncycastle/est/jcajce/DefaultESTClientSourceProvider;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/est/ESTClientSourceProvider;


# instance fields
.field private final absoluteLimit:Ljava/lang/Long;

.field private final bindingProvider:Lorg/bouncycastle/est/jcajce/ChannelBindingProvider;

.field private final cipherSuites:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final filterSupportedSuites:Z

.field private final hostNameAuthorizer:Lorg/bouncycastle/est/jcajce/JsseHostnameAuthorizer;

.field private final sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

.field private final timeout:I


# direct methods
.method public constructor <init>(Ljavax/net/ssl/SSLSocketFactory;Lorg/bouncycastle/est/jcajce/JsseHostnameAuthorizer;ILorg/bouncycastle/est/jcajce/ChannelBindingProvider;Ljava/util/Set;Ljava/lang/Long;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/net/ssl/SSLSocketFactory;",
            "Lorg/bouncycastle/est/jcajce/JsseHostnameAuthorizer;",
            "I",
            "Lorg/bouncycastle/est/jcajce/ChannelBindingProvider;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Long;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/est/jcajce/DefaultESTClientSourceProvider;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    iput-object p2, p0, Lorg/bouncycastle/est/jcajce/DefaultESTClientSourceProvider;->hostNameAuthorizer:Lorg/bouncycastle/est/jcajce/JsseHostnameAuthorizer;

    iput p3, p0, Lorg/bouncycastle/est/jcajce/DefaultESTClientSourceProvider;->timeout:I

    iput-object p4, p0, Lorg/bouncycastle/est/jcajce/DefaultESTClientSourceProvider;->bindingProvider:Lorg/bouncycastle/est/jcajce/ChannelBindingProvider;

    iput-object p5, p0, Lorg/bouncycastle/est/jcajce/DefaultESTClientSourceProvider;->cipherSuites:Ljava/util/Set;

    iput-object p6, p0, Lorg/bouncycastle/est/jcajce/DefaultESTClientSourceProvider;->absoluteLimit:Ljava/lang/Long;

    iput-boolean p7, p0, Lorg/bouncycastle/est/jcajce/DefaultESTClientSourceProvider;->filterSupportedSuites:Z

    return-void
.end method


# virtual methods
.method public makeSource(Ljava/lang/String;I)Lorg/bouncycastle/est/Source;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/est/jcajce/DefaultESTClientSourceProvider;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 3
    invoke-virtual {v0, p1, p2}, Ljavax/net/SocketFactory;->createSocket(Ljava/lang/String;I)Ljava/net/Socket;

    .line 6
    move-result-object p2

    .line 7
    check-cast p2, Ljavax/net/ssl/SSLSocket;

    .line 9
    iget v0, p0, Lorg/bouncycastle/est/jcajce/DefaultESTClientSourceProvider;->timeout:I

    .line 11
    invoke-virtual {p2, v0}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 14
    iget-object v0, p0, Lorg/bouncycastle/est/jcajce/DefaultESTClientSourceProvider;->cipherSuites:Ljava/util/Set;

    .line 16
    if-eqz v0, :cond_5

    .line 18
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    .line 21
    move-result v0

    .line 22
    if-nez v0, :cond_5

    .line 24
    iget-boolean v0, p0, Lorg/bouncycastle/est/jcajce/DefaultESTClientSourceProvider;->filterSupportedSuites:Z

    .line 26
    if-eqz v0, :cond_4

    .line 28
    new-instance v0, Ljava/util/HashSet;

    .line 30
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 33
    invoke-virtual {p2}, Ljavax/net/ssl/SSLSocket;->getSupportedCipherSuites()[Ljava/lang/String;

    .line 36
    move-result-object v1

    .line 37
    const/4 v2, 0x0

    .line 38
    :goto_0
    array-length v3, v1

    .line 39
    if-eq v2, v3, :cond_0

    .line 41
    aget-object v3, v1, v2

    .line 43
    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 46
    add-int/lit8 v2, v2, 0x1

    .line 48
    goto :goto_0

    .line 49
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    .line 51
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 54
    iget-object v2, p0, Lorg/bouncycastle/est/jcajce/DefaultESTClientSourceProvider;->cipherSuites:Ljava/util/Set;

    .line 56
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 59
    move-result-object v2

    .line 60
    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 63
    move-result v3

    .line 64
    if-eqz v3, :cond_2

    .line 66
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 69
    move-result-object v3

    .line 70
    check-cast v3, Ljava/lang/String;

    .line 72
    invoke-virtual {v0, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 75
    move-result v4

    .line 76
    if-eqz v4, :cond_1

    .line 78
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    goto :goto_1

    .line 82
    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 85
    move-result v0

    .line 86
    if-nez v0, :cond_3

    .line 88
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 91
    move-result v0

    .line 92
    new-array v0, v0, [Ljava/lang/String;

    .line 94
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 97
    move-result-object v0

    .line 98
    check-cast v0, [Ljava/lang/String;

    .line 100
    invoke-virtual {p2, v0}, Ljavax/net/ssl/SSLSocket;->setEnabledCipherSuites([Ljava/lang/String;)V

    .line 103
    goto :goto_2

    .line 104
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 106
    const-string p2, "No supplied cipher suite is supported by the provider."

    .line 108
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 111
    throw p1

    .line 112
    :cond_4
    iget-object v0, p0, Lorg/bouncycastle/est/jcajce/DefaultESTClientSourceProvider;->cipherSuites:Ljava/util/Set;

    .line 114
    invoke-interface {v0}, Ljava/util/Set;->size()I

    .line 117
    move-result v1

    .line 118
    new-array v1, v1, [Ljava/lang/String;

    .line 120
    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 123
    move-result-object v0

    .line 124
    check-cast v0, [Ljava/lang/String;

    .line 126
    invoke-virtual {p2, v0}, Ljavax/net/ssl/SSLSocket;->setEnabledCipherSuites([Ljava/lang/String;)V

    .line 129
    :cond_5
    :goto_2
    invoke-virtual {p2}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    .line 132
    iget-object v0, p0, Lorg/bouncycastle/est/jcajce/DefaultESTClientSourceProvider;->hostNameAuthorizer:Lorg/bouncycastle/est/jcajce/JsseHostnameAuthorizer;

    .line 134
    if-eqz v0, :cond_7

    .line 136
    invoke-virtual {p2}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    .line 139
    move-result-object v1

    .line 140
    invoke-interface {v0, p1, v1}, Lorg/bouncycastle/est/jcajce/JsseHostnameAuthorizer;->verified(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    .line 143
    move-result v0

    .line 144
    if-eqz v0, :cond_6

    .line 146
    goto :goto_3

    .line 147
    :cond_6
    new-instance p1, Ljava/io/IOException;

    .line 149
    const-string p2, "Host name could not be verified."

    .line 151
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 154
    throw p1

    .line 155
    :cond_7
    :goto_3
    invoke-virtual {p2}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    .line 158
    move-result-object v0

    .line 159
    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->getCipherSuite()Ljava/lang/String;

    .line 162
    move-result-object v0

    .line 163
    invoke-static {v0}, Lorg/bouncycastle/util/Strings;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    .line 166
    move-result-object v0

    .line 167
    const-string v1, "_des_"

    .line 169
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 172
    move-result v1

    .line 173
    if-nez v1, :cond_e

    .line 175
    const-string v1, "_des40_"

    .line 177
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 180
    move-result v1

    .line 181
    if-nez v1, :cond_e

    .line 183
    const-string v1, "_3des_"

    .line 185
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 188
    move-result v0

    .line 189
    if-nez v0, :cond_e

    .line 191
    invoke-virtual {p2}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    .line 194
    move-result-object v0

    .line 195
    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->getCipherSuite()Ljava/lang/String;

    .line 198
    move-result-object v0

    .line 199
    invoke-static {v0}, Lorg/bouncycastle/util/Strings;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    .line 202
    move-result-object v0

    .line 203
    const-string v1, "null"

    .line 205
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 208
    move-result v0

    .line 209
    if-nez v0, :cond_d

    .line 211
    invoke-virtual {p2}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    .line 214
    move-result-object v0

    .line 215
    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->getCipherSuite()Ljava/lang/String;

    .line 218
    move-result-object v0

    .line 219
    invoke-static {v0}, Lorg/bouncycastle/util/Strings;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    .line 222
    move-result-object v0

    .line 223
    const-string v1, "anon"

    .line 225
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 228
    move-result v0

    .line 229
    if-nez v0, :cond_c

    .line 231
    invoke-virtual {p2}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    .line 234
    move-result-object v0

    .line 235
    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->getCipherSuite()Ljava/lang/String;

    .line 238
    move-result-object v0

    .line 239
    invoke-static {v0}, Lorg/bouncycastle/util/Strings;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    .line 242
    move-result-object v0

    .line 243
    const-string v1, "export"

    .line 245
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 248
    move-result v0

    .line 249
    if-nez v0, :cond_b

    .line 251
    invoke-virtual {p2}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    .line 254
    move-result-object v0

    .line 255
    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->getProtocol()Ljava/lang/String;

    .line 258
    move-result-object v0

    .line 259
    const-string v1, "tlsv1"

    .line 261
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 264
    move-result v0

    .line 265
    if-nez v0, :cond_a

    .line 267
    iget-object v0, p0, Lorg/bouncycastle/est/jcajce/DefaultESTClientSourceProvider;->hostNameAuthorizer:Lorg/bouncycastle/est/jcajce/JsseHostnameAuthorizer;

    .line 269
    if-eqz v0, :cond_9

    .line 271
    invoke-virtual {p2}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    .line 274
    move-result-object v1

    .line 275
    invoke-interface {v0, p1, v1}, Lorg/bouncycastle/est/jcajce/JsseHostnameAuthorizer;->verified(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    .line 278
    move-result v0

    .line 279
    if-eqz v0, :cond_8

    .line 281
    goto :goto_4

    .line 282
    :cond_8
    new-instance p2, Ljava/io/IOException;

    .line 284
    const-string v0, "Hostname was not verified: "

    .line 286
    invoke-static {v0, p1}, Lo/Ve;->y(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 289
    move-result-object p1

    .line 290
    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 293
    throw p2

    .line 294
    :cond_9
    :goto_4
    new-instance p1, Lorg/bouncycastle/est/jcajce/LimitedSSLSocketSource;

    .line 296
    iget-object v0, p0, Lorg/bouncycastle/est/jcajce/DefaultESTClientSourceProvider;->bindingProvider:Lorg/bouncycastle/est/jcajce/ChannelBindingProvider;

    .line 298
    iget-object v1, p0, Lorg/bouncycastle/est/jcajce/DefaultESTClientSourceProvider;->absoluteLimit:Ljava/lang/Long;

    .line 300
    invoke-direct {p1, p2, v0, v1}, Lorg/bouncycastle/est/jcajce/LimitedSSLSocketSource;-><init>(Ljavax/net/ssl/SSLSocket;Lorg/bouncycastle/est/jcajce/ChannelBindingProvider;Ljava/lang/Long;)V

    .line 303
    return-object p1

    .line 304
    :cond_a
    :try_start_0
    invoke-virtual {p2}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 307
    :catch_0
    new-instance p1, Ljava/io/IOException;

    .line 309
    const-string p2, "EST clients must not use TLSv1"

    .line 311
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 314
    throw p1

    .line 315
    :cond_b
    new-instance p1, Ljava/io/IOException;

    .line 317
    const-string p2, "EST clients must not use export ciphers"

    .line 319
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 322
    throw p1

    .line 323
    :cond_c
    new-instance p1, Ljava/io/IOException;

    .line 325
    const-string p2, "EST clients must not use anon ciphers"

    .line 327
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 330
    throw p1

    .line 331
    :cond_d
    new-instance p1, Ljava/io/IOException;

    .line 333
    const-string p2, "EST clients must not use NULL ciphers"

    .line 335
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 338
    throw p1

    .line 339
    :cond_e
    new-instance p1, Ljava/io/IOException;

    .line 341
    const-string p2, "EST clients must not use DES ciphers"

    .line 343
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 346
    throw p1
.end method
