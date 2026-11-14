.class public Lorg/bouncycastle/jcajce/provider/symmetric/Threefish$Mappings;
.super Lorg/bouncycastle/jcajce/provider/util/AlgorithmProvider;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/provider/symmetric/Threefish;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Mappings"
.end annotation


# static fields
.field private static final PREFIX:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/bouncycastle/jcajce/provider/symmetric/Threefish;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/jcajce/provider/symmetric/Threefish$Mappings;->PREFIX:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/jcajce/provider/util/AlgorithmProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public configure(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;)V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    sget-object v1, Lorg/bouncycastle/jcajce/provider/symmetric/Threefish$Mappings;->PREFIX:Ljava/lang/String;

    .line 8
    const-string v2, "$CMAC_256"

    .line 10
    const-string v3, "Mac.Threefish-256CMAC"

    .line 12
    invoke-static {v0, v1, v2, p1, v3}, Lo/o5;->q(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    move-result-object v0

    .line 16
    const-string v2, "$CMAC_512"

    .line 18
    const-string v3, "Mac.Threefish-512CMAC"

    .line 20
    invoke-static {v0, v1, v2, p1, v3}, Lo/o5;->q(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    move-result-object v0

    .line 24
    const-string v2, "$CMAC_1024"

    .line 26
    const-string v3, "Mac.Threefish-1024CMAC"

    .line 28
    invoke-static {v0, v1, v2, p1, v3}, Lo/o5;->q(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    move-result-object v0

    .line 32
    const-string v2, "$ECB_256"

    .line 34
    const-string v3, "Cipher.Threefish-256"

    .line 36
    invoke-static {v0, v1, v2, p1, v3}, Lo/o5;->q(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    move-result-object v0

    .line 40
    const-string v2, "$ECB_512"

    .line 42
    const-string v3, "Cipher.Threefish-512"

    .line 44
    invoke-static {v0, v1, v2, p1, v3}, Lo/o5;->q(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    move-result-object v0

    .line 48
    const-string v2, "$ECB_1024"

    .line 50
    const-string v3, "Cipher.Threefish-1024"

    .line 52
    invoke-static {v0, v1, v2, p1, v3}, Lo/o5;->q(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    move-result-object v0

    .line 56
    const-string v2, "$KeyGen_256"

    .line 58
    const-string v3, "KeyGenerator.Threefish-256"

    .line 60
    invoke-static {v0, v1, v2, p1, v3}, Lo/o5;->q(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    move-result-object v0

    .line 64
    const-string v2, "$KeyGen_512"

    .line 66
    const-string v3, "KeyGenerator.Threefish-512"

    .line 68
    invoke-static {v0, v1, v2, p1, v3}, Lo/o5;->q(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    move-result-object v0

    .line 72
    const-string v2, "$KeyGen_1024"

    .line 74
    const-string v3, "KeyGenerator.Threefish-1024"

    .line 76
    invoke-static {v0, v1, v2, p1, v3}, Lo/o5;->q(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    move-result-object v0

    .line 80
    const-string v2, "$AlgParams_256"

    .line 82
    const-string v3, "AlgorithmParameters.Threefish-256"

    .line 84
    invoke-static {v0, v1, v2, p1, v3}, Lo/o5;->q(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    move-result-object v0

    .line 88
    const-string v2, "$AlgParams_512"

    .line 90
    const-string v3, "AlgorithmParameters.Threefish-512"

    .line 92
    invoke-static {v0, v1, v2, p1, v3}, Lo/o5;->q(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    move-result-object v0

    .line 96
    const-string v2, "$AlgParams_1024"

    .line 98
    const-string v3, "AlgorithmParameters.Threefish-1024"

    .line 100
    invoke-static {v0, v1, v2, p1, v3}, Lo/o5;->y(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;)V

    .line 103
    return-void
.end method
