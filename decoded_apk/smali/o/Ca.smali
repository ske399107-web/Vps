.class public final synthetic Lo/Ca;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final synthetic a:Landroid/widget/TextView;

.field public final synthetic b:Lcom/ffrt/proxyread/MainActivity;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/TextView;Lcom/ffrt/proxyread/MainActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/Ca;->a:Landroid/widget/TextView;

    iput-object p2, p0, Lo/Ca;->b:Lcom/ffrt/proxyread/MainActivity;

    return-void
.end method


# virtual methods
.method public final a(Lo/W2;FZ)V
    .locals 1

    .line 1
    check-cast p1, Lcom/google/android/material/slider/Slider;

    .line 3
    sget p1, Lcom/ffrt/proxyread/MainActivity;->I:I

    .line 5
    float-to-int p1, p2

    .line 6
    new-instance p2, Ljava/lang/StringBuilder;

    .line 8
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    const-string v0, "%"

    .line 16
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    move-result-object p2

    .line 23
    iget-object v0, p0, Lo/Ca;->a:Landroid/widget/TextView;

    .line 25
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 28
    if-nez p3, :cond_0

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    iget-object p2, p0, Lo/Ca;->b:Lcom/ffrt/proxyread/MainActivity;

    .line 33
    const-string p3, "proxy_read"

    .line 35
    const/4 v0, 0x0

    .line 36
    invoke-virtual {p2, p3, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 39
    move-result-object p2

    .line 40
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 43
    move-result-object p2

    .line 44
    const/16 p3, 0x46

    .line 46
    const/16 v0, 0xb4

    .line 48
    invoke-static {p1, p3, v0}, Lo/Ha;->l(III)I

    .line 51
    move-result p3

    .line 52
    const-string v0, "radar_size"

    .line 54
    invoke-interface {p2, v0, p3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 57
    move-result-object p2

    .line 58
    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 61
    sget-object p2, Lo/g9;->a:Landroid/os/Handler;

    .line 63
    new-instance p3, Lo/f9;

    .line 65
    invoke-direct {p3, p1}, Lo/f9;-><init>(I)V

    .line 68
    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 71
    :goto_0
    return-void
.end method
