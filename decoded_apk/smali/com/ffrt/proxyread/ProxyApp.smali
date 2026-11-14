.class public final Lcom/ffrt/proxyread/ProxyApp;
.super Landroid/app/Application;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public final onCreate()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 4
    invoke-static {}, Lorg/conscrypt/Conscrypt;->newProvider()Ljava/security/Provider;

    .line 7
    move-result-object v0

    .line 8
    const/4 v1, 0x1

    .line 9
    invoke-static {v0, v1}, Ljava/security/Security;->insertProviderAt(Ljava/security/Provider;I)I

    .line 12
    sget-object v0, Lcom/ffrt/proxyread/SchedHint;->INSTANCE:Lcom/ffrt/proxyread/SchedHint;

    .line 14
    invoke-virtual {v0, p0}, Lcom/ffrt/proxyread/SchedHint;->bind(Landroid/content/Context;)V

    .line 17
    invoke-static {p0}, Lcom/ffrt/proxyread/Integrity;->c(Landroid/content/Context;)V

    .line 20
    sget v0, Lo/ta;->a:I

    .line 22
    const/4 v0, 0x0

    .line 23
    invoke-virtual {p0, v0}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    .line 26
    move-result-object v0

    .line 27
    if-nez v0, :cond_0

    .line 29
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 32
    move-result-object v0

    .line 33
    :cond_0
    new-instance v1, Ljava/io/File;

    .line 35
    const-string v2, "rudp.log"

    .line 37
    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 40
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 43
    return-void
.end method
