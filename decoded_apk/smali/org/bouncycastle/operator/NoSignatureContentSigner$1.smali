.class Lorg/bouncycastle/operator/NoSignatureContentSigner$1;
.super Ljava/io/OutputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bouncycastle/operator/NoSignatureContentSigner;->getOutputStream()Ljava/io/OutputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/bouncycastle/operator/NoSignatureContentSigner;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/operator/NoSignatureContentSigner;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/operator/NoSignatureContentSigner$1;->this$0:Lorg/bouncycastle/operator/NoSignatureContentSigner;

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public write(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    return-void
.end method

.method public write([BII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    return-void
.end method
