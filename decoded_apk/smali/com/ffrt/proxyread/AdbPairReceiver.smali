.class public final Lcom/ffrt/proxyread/AdbPairReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 1
    const-string v0, "context"

    .line 3
    invoke-static {p1, v0}, Lo/x9;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    const-string p1, "intent"

    .line 8
    invoke-static {p2, p1}, Lo/x9;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    sget-boolean p1, Lo/L1;->b:Z

    .line 13
    if-nez p1, :cond_0

    .line 15
    return-void

    .line 16
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 19
    move-result-object p1

    .line 20
    if-eqz p1, :cond_6

    .line 22
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 25
    move-result v0

    .line 26
    const v1, -0x1d717592

    .line 29
    if-eq v0, v1, :cond_4

    .line 31
    const v1, 0x70549543

    .line 34
    if-eq v0, v1, :cond_1

    .line 36
    goto :goto_1

    .line 37
    :cond_1
    const-string v0, "com.ffrt.proxyread.ADB_PAIR"

    .line 39
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 42
    move-result p1

    .line 43
    if-eqz p1, :cond_6

    .line 45
    invoke-static {p2}, Landroid/app/RemoteInput;->getResultsFromIntent(Landroid/content/Intent;)Landroid/os/Bundle;

    .line 48
    move-result-object p1

    .line 49
    if-eqz p1, :cond_2

    .line 51
    const-string p2, "adb_pair_code"

    .line 53
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 56
    move-result-object p1

    .line 57
    if-eqz p1, :cond_2

    .line 59
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 62
    move-result-object p1

    .line 63
    goto :goto_0

    .line 64
    :cond_2
    const/4 p1, 0x0

    .line 65
    :goto_0
    if-nez p1, :cond_3

    .line 67
    const-string p1, ""

    .line 69
    :cond_3
    sget-object p2, Lcom/ffrt/proxyread/WirelessPair;->INSTANCE:Lcom/ffrt/proxyread/WirelessPair;

    .line 71
    invoke-virtual {p2, p1}, Lcom/ffrt/proxyread/WirelessPair;->start(Ljava/lang/String;)V

    .line 74
    goto :goto_1

    .line 75
    :cond_4
    const-string p2, "com.ffrt.proxyread.ADB_RECONNECT"

    .line 77
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 80
    move-result p1

    .line 81
    if-nez p1, :cond_5

    .line 83
    goto :goto_1

    .line 84
    :cond_5
    sget-object p1, Lcom/ffrt/proxyread/WirelessPair;->INSTANCE:Lcom/ffrt/proxyread/WirelessPair;

    .line 86
    invoke-virtual {p1}, Lcom/ffrt/proxyread/WirelessPair;->again()V

    .line 89
    :cond_6
    :goto_1
    return-void
.end method
