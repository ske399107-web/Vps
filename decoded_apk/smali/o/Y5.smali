.class public final synthetic Lo/Y5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo/F8;
.implements Lo/Of;


# static fields
.field public static final b:Lo/Y5;

.field public static final c:Lo/Y5;

.field public static final d:Lo/Y5;

.field public static final e:Lo/Y5;

.field public static final f:Lo/Y5;


# instance fields
.field public final synthetic a:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lo/Y5;

    .line 3
    const/4 v1, 0x4

    .line 4
    invoke-direct {v0, v1}, Lo/Y5;-><init>(I)V

    .line 7
    sput-object v0, Lo/Y5;->b:Lo/Y5;

    .line 9
    new-instance v0, Lo/Y5;

    .line 11
    const/4 v1, 0x5

    .line 12
    invoke-direct {v0, v1}, Lo/Y5;-><init>(I)V

    .line 15
    sput-object v0, Lo/Y5;->c:Lo/Y5;

    .line 17
    new-instance v0, Lo/Y5;

    .line 19
    const/4 v1, 0x6

    .line 20
    invoke-direct {v0, v1}, Lo/Y5;-><init>(I)V

    .line 23
    sput-object v0, Lo/Y5;->d:Lo/Y5;

    .line 25
    new-instance v0, Lo/Y5;

    .line 27
    const/4 v1, 0x7

    .line 28
    invoke-direct {v0, v1}, Lo/Y5;-><init>(I)V

    .line 31
    sput-object v0, Lo/Y5;->e:Lo/Y5;

    .line 33
    new-instance v0, Lo/Y5;

    .line 35
    const/16 v1, 0x8

    .line 37
    invoke-direct {v0, v1}, Lo/Y5;-><init>(I)V

    .line 40
    sput-object v0, Lo/Y5;->f:Lo/Y5;

    .line 42
    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lo/Y5;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget v0, p0, Lo/Y5;->a:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Ljava/net/Inet4Address;

    invoke-static {p1}, Lcom/ffrt/proxyread/VpnCaptureService;->b(Ljava/net/Inet4Address;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1

    :pswitch_0
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-gt v1, p1, :cond_0

    const/16 v2, 0x33

    if-ge p1, v2, :cond_0

    move v0, v1

    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
