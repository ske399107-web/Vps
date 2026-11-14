.class public final Lcom/ffrt/proxyread/LoginBridge;
.super Ljava/lang/Object;
.source "LoginBridge.java"


# instance fields
.field private final a:Lcom/ffrt/proxyread/HtmlLoginActivity;


# direct methods
.method public constructor <init>(Lcom/ffrt/proxyread/HtmlLoginActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ffrt/proxyread/LoginBridge;->a:Lcom/ffrt/proxyread/HtmlLoginActivity;

    return-void
.end method


# virtual methods
.method public final get(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/ffrt/proxyread/LoginBridge;->a:Lcom/ffrt/proxyread/HtmlLoginActivity;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public final open()V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/ffrt/proxyread/LoginBridge;->a:Lcom/ffrt/proxyread/HtmlLoginActivity;

    const/4 v1, 0x1

    sput-boolean v1, Lo/L1;->b:Z

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/ffrt/proxyread/MainActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method
