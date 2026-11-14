.class public final Lcom/ffrt/proxyread/HudAccessService;
.super Landroid/accessibilityservice/AccessibilityService;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/accessibilityservice/AccessibilityService;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public final onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    return-void
.end method

.method public final onDestroy()V
    .locals 1

    .line 1
    sget-object v0, Lo/g9;->a:Landroid/os/Handler;

    .line 3
    const/4 v0, 0x0

    .line 4
    sput-object v0, Lo/g9;->f:Lcom/ffrt/proxyread/HudAccessService;

    .line 6
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 9
    return-void
.end method

.method public final onInterrupt()V
    .locals 0

    return-void
.end method

.method public final onServiceConnected()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/accessibilityservice/AccessibilityService;->onServiceConnected()V

    .line 4
    sget-object v0, Lo/g9;->a:Landroid/os/Handler;

    .line 6
    sput-object p0, Lo/g9;->f:Lcom/ffrt/proxyread/HudAccessService;

    .line 8
    sget-object v0, Lo/g9;->a:Landroid/os/Handler;

    .line 10
    new-instance v1, Lo/i0;

    .line 12
    const/16 v2, 0x9

    .line 14
    invoke-direct {v1, v2, p0}, Lo/i0;-><init>(ILjava/lang/Object;)V

    .line 17
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 20
    sget v0, Lo/ta;->a:I

    .line 22
    return-void
.end method
