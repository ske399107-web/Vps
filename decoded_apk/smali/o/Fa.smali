.class public final synthetic Lo/Fa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field public final synthetic a:Lcom/ffrt/proxyread/MainActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/ffrt/proxyread/MainActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/Fa;->a:Lcom/ffrt/proxyread/MainActivity;

    return-void
.end method


# virtual methods
.method public final onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 1
    const/4 p1, 0x6

    .line 2
    if-ne p2, p1, :cond_2

    .line 4
    iget-object p1, p0, Lo/Fa;->a:Lcom/ffrt/proxyread/MainActivity;

    .line 6
    iget-boolean p2, p1, Lcom/ffrt/proxyread/MainActivity;->G:Z

    .line 8
    if-nez p2, :cond_1

    .line 10
    sget-object p2, Lcom/ffrt/proxyread/WirelessPair;->INSTANCE:Lcom/ffrt/proxyread/WirelessPair;

    .line 12
    iget-object p1, p1, Lcom/ffrt/proxyread/MainActivity;->F:Landroid/widget/EditText;

    .line 14
    if-eqz p1, :cond_0

    .line 16
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {p2, p1}, Lcom/ffrt/proxyread/WirelessPair;->start(Ljava/lang/String;)V

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const-string p1, "pairCode"

    .line 30
    invoke-static {p1}, Lo/x9;->e0(Ljava/lang/String;)V

    .line 33
    const/4 p1, 0x0

    .line 34
    throw p1

    .line 35
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 36
    goto :goto_1

    .line 37
    :cond_2
    sget p1, Lcom/ffrt/proxyread/MainActivity;->I:I

    .line 39
    const/4 p1, 0x0

    .line 40
    :goto_1
    return p1
.end method
