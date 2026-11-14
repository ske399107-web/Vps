.class final Lio/github/muntashirakon/adb/KeyPair;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mCertificate:Ljava/security/cert/Certificate;

.field private final mPrivateKey:Ljava/security/PrivateKey;


# direct methods
.method public constructor <init>(Ljava/security/PrivateKey;Ljava/security/cert/Certificate;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lio/github/muntashirakon/adb/KeyPair;->mPrivateKey:Ljava/security/PrivateKey;

    .line 6
    iput-object p2, p0, Lio/github/muntashirakon/adb/KeyPair;->mCertificate:Ljava/security/cert/Certificate;

    .line 8
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/security/auth/DestroyFailedException;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/github/muntashirakon/adb/KeyPair;->mPrivateKey:Ljava/security/PrivateKey;

    .line 3
    invoke-static {v0}, Lo/b;->o(Ljava/security/PrivateKey;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    :catch_0
    return-void
.end method

.method public getCertificate()Ljava/security/cert/Certificate;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/github/muntashirakon/adb/KeyPair;->mCertificate:Ljava/security/cert/Certificate;

    .line 3
    return-object v0
.end method

.method public getPrivateKey()Ljava/security/PrivateKey;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/github/muntashirakon/adb/KeyPair;->mPrivateKey:Ljava/security/PrivateKey;

    .line 3
    return-object v0
.end method

.method public getPublicKey()Ljava/security/PublicKey;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/github/muntashirakon/adb/KeyPair;->mCertificate:Ljava/security/cert/Certificate;

    .line 3
    invoke-virtual {v0}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
