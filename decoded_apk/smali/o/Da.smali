.class public final synthetic Lo/Da;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroid/view/KeyEvent$Callback;


# direct methods
.method public synthetic constructor <init>(Landroid/view/KeyEvent$Callback;I)V
    .locals 0

    .line 1
    iput p2, p0, Lo/Da;->a:I

    iput-object p1, p0, Lo/Da;->b:Landroid/view/KeyEvent$Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4

    .line 1
    const-string v0, "proxy_read"

    .line 3
    const/4 v1, 0x0

    .line 4
    iget-object v2, p0, Lo/Da;->b:Landroid/view/KeyEvent$Callback;

    .line 6
    iget v3, p0, Lo/Da;->a:I

    .line 8
    packed-switch v3, :pswitch_data_0

    .line 11
    check-cast v2, Lcom/google/android/material/chip/Chip;

    .line 13
    iget-object v0, v2, Lcom/google/android/material/chip/Chip;->i:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 15
    if-eqz v0, :cond_0

    .line 17
    invoke-interface {v0, p1, p2}, Landroid/widget/CompoundButton$OnCheckedChangeListener;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V

    .line 20
    :cond_0
    return-void

    .line 21
    :pswitch_0
    sget p1, Lcom/ffrt/proxyread/MainActivity;->I:I

    .line 23
    check-cast v2, Lcom/ffrt/proxyread/MainActivity;

    .line 25
    invoke-virtual {v2, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 28
    move-result-object p1

    .line 29
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 32
    move-result-object p1

    .line 33
    const-string v0, "esp_on"

    .line 35
    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 38
    move-result-object p1

    .line 39
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 42
    sget-object p1, Lo/g9;->a:Landroid/os/Handler;

    .line 44
    new-instance v0, Lo/e9;

    .line 46
    const/4 v1, 0x1

    .line 47
    invoke-direct {v0, v1, p2}, Lo/e9;-><init>(IZ)V

    .line 50
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 53
    return-void

    .line 54
    :pswitch_1
    sget p1, Lcom/ffrt/proxyread/MainActivity;->I:I

    .line 56
    check-cast v2, Lcom/ffrt/proxyread/MainActivity;

    .line 58
    invoke-virtual {v2, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 61
    move-result-object p1

    .line 62
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 65
    move-result-object p1

    .line 66
    const-string v0, "radar_on"

    .line 68
    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 71
    move-result-object p1

    .line 72
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 75
    sget-object p1, Lo/g9;->a:Landroid/os/Handler;

    .line 77
    new-instance v0, Lo/e9;

    .line 79
    invoke-direct {v0, v1, p2}, Lo/e9;-><init>(IZ)V

    .line 82
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 85
    return-void

    .line 86
    :pswitch_2
    sget p1, Lcom/ffrt/proxyread/MainActivity;->I:I

    .line 88
    check-cast v2, Lcom/ffrt/proxyread/MainActivity;

    .line 90
    invoke-virtual {v2, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 93
    move-result-object p1

    .line 94
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 97
    move-result-object p1

    .line 98
    const-string v0, "moco_on"

    .line 100
    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 103
    move-result-object p1

    .line 104
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 107
    sget-object p1, Lo/Hb;->a:[B

    .line 109
    invoke-static {p2}, Lo/Hb;->k(Z)V

    .line 112
    return-void

    .line 113
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
