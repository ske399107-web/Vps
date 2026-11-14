.class final enum Lio/github/muntashirakon/adb/PairingConnectionCtx$Role;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/muntashirakon/adb/PairingConnectionCtx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Role"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/github/muntashirakon/adb/PairingConnectionCtx$Role;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/github/muntashirakon/adb/PairingConnectionCtx$Role;

.field public static final enum Client:Lio/github/muntashirakon/adb/PairingConnectionCtx$Role;

.field public static final enum Server:Lio/github/muntashirakon/adb/PairingConnectionCtx$Role;


# direct methods
.method private static synthetic $values()[Lio/github/muntashirakon/adb/PairingConnectionCtx$Role;
    .locals 2

    .line 1
    sget-object v0, Lio/github/muntashirakon/adb/PairingConnectionCtx$Role;->Client:Lio/github/muntashirakon/adb/PairingConnectionCtx$Role;

    .line 3
    sget-object v1, Lio/github/muntashirakon/adb/PairingConnectionCtx$Role;->Server:Lio/github/muntashirakon/adb/PairingConnectionCtx$Role;

    .line 5
    filled-new-array {v0, v1}, [Lio/github/muntashirakon/adb/PairingConnectionCtx$Role;

    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lio/github/muntashirakon/adb/PairingConnectionCtx$Role;

    .line 3
    const-string v1, "Client"

    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lio/github/muntashirakon/adb/PairingConnectionCtx$Role;-><init>(Ljava/lang/String;I)V

    .line 9
    sput-object v0, Lio/github/muntashirakon/adb/PairingConnectionCtx$Role;->Client:Lio/github/muntashirakon/adb/PairingConnectionCtx$Role;

    .line 11
    new-instance v0, Lio/github/muntashirakon/adb/PairingConnectionCtx$Role;

    .line 13
    const-string v1, "Server"

    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-direct {v0, v1, v2}, Lio/github/muntashirakon/adb/PairingConnectionCtx$Role;-><init>(Ljava/lang/String;I)V

    .line 19
    sput-object v0, Lio/github/muntashirakon/adb/PairingConnectionCtx$Role;->Server:Lio/github/muntashirakon/adb/PairingConnectionCtx$Role;

    .line 21
    invoke-static {}, Lio/github/muntashirakon/adb/PairingConnectionCtx$Role;->$values()[Lio/github/muntashirakon/adb/PairingConnectionCtx$Role;

    .line 24
    move-result-object v0

    .line 25
    sput-object v0, Lio/github/muntashirakon/adb/PairingConnectionCtx$Role;->$VALUES:[Lio/github/muntashirakon/adb/PairingConnectionCtx$Role;

    .line 27
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 4
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/github/muntashirakon/adb/PairingConnectionCtx$Role;
    .locals 1

    .line 1
    const-class v0, Lio/github/muntashirakon/adb/PairingConnectionCtx$Role;

    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lio/github/muntashirakon/adb/PairingConnectionCtx$Role;

    .line 9
    return-object p0
.end method

.method public static values()[Lio/github/muntashirakon/adb/PairingConnectionCtx$Role;
    .locals 1

    .line 1
    sget-object v0, Lio/github/muntashirakon/adb/PairingConnectionCtx$Role;->$VALUES:[Lio/github/muntashirakon/adb/PairingConnectionCtx$Role;

    .line 3
    invoke-virtual {v0}, [Lio/github/muntashirakon/adb/PairingConnectionCtx$Role;->clone()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lio/github/muntashirakon/adb/PairingConnectionCtx$Role;

    .line 9
    return-object v0
.end method
