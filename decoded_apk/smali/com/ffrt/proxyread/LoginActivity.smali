.class public final Lcom/ffrt/proxyread/LoginActivity;
.super Lo/U0;
.source "SourceFile"


# static fields
.field public static final synthetic y:I


# instance fields
.field public final x:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lo/U0;-><init>()V

    .line 4
    new-instance v0, Landroid/os/Handler;

    .line 6
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 9
    move-result-object v1

    .line 10
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 13
    iput-object v0, p0, Lcom/ffrt/proxyread/LoginActivity;->x:Landroid/os/Handler;

    .line 15
    return-void
.end method

.method public static final r(Lcom/google/android/material/textfield/TextInputEditText;Lcom/google/android/material/button/MaterialButton;Landroid/widget/TextView;Lcom/ffrt/proxyread/LoginActivity;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lo/A1;->getText()Landroid/text/Editable;

    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 10
    move-result-object p0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    :goto_0
    if-nez p0, :cond_1

    .line 15
    const-string p0, ""

    .line 17
    :cond_1
    const/4 v0, 0x0

    .line 18
    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 21
    const v0, 0x7f0502f3

    .line 24
    invoke-virtual {p3, v0}, Landroid/content/Context;->getColor(I)I

    .line 27
    move-result v0

    .line 28
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 31
    const-string v0, "Verificando\u2026"

    .line 33
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 36
    new-instance v0, Lo/xa;

    .line 38
    invoke-direct {v0, p3, p0, p2, p1}, Lo/xa;-><init>(Lcom/ffrt/proxyread/LoginActivity;Ljava/lang/String;Landroid/widget/TextView;Lcom/google/android/material/button/MaterialButton;)V

    .line 41
    const/16 p0, 0x17

    .line 43
    const-string p1, "crg-login"

    .line 45
    invoke-static {p1, v0, p0}, Lo/Ha;->y0(Ljava/lang/String;Lo/u8;I)Lo/Uf;

    .line 48
    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 1
    invoke-super {p0, p1}, Lo/U0;->onCreate(Landroid/os/Bundle;)V

    .line 4
    invoke-static {p0}, Lcom/ffrt/proxyread/Integrity;->c(Landroid/content/Context;)V

    .line 7
    sget-boolean p1, Lo/L1;->b:Z

    .line 9
    if-eqz p1, :cond_0

    .line 11
    sget-boolean p1, Lo/L1;->b:Z

    .line 13
    if-eqz p1, :cond_0

    .line 15
    new-instance p1, Landroid/content/Intent;

    .line 17
    const-class v0, Lcom/ffrt/proxyread/MainActivity;

    .line 19
    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 22
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 25
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 28
    return-void

    .line 29
    :cond_0
    const p1, 0x7f0b001c

    .line 32
    invoke-virtual {p0, p1}, Lo/U0;->setContentView(I)V

    .line 35
    const p1, 0x7f0800f1

    .line 38
    invoke-virtual {p0, p1}, Lo/U0;->findViewById(I)Landroid/view/View;

    .line 41
    move-result-object p1

    .line 42
    check-cast p1, Lcom/google/android/material/textfield/TextInputEditText;

    .line 44
    const v0, 0x7f080068

    .line 47
    invoke-virtual {p0, v0}, Lo/U0;->findViewById(I)Landroid/view/View;

    .line 50
    move-result-object v0

    .line 51
    check-cast v0, Lcom/google/android/material/button/MaterialButton;

    .line 53
    const v1, 0x7f0800fc

    .line 56
    invoke-virtual {p0, v1}, Lo/U0;->findViewById(I)Landroid/view/View;

    .line 59
    move-result-object v1

    .line 60
    check-cast v1, Landroid/widget/TextView;

    .line 62
    const-string v2, "crg_auth"

    .line 64
    const/4 v3, 0x0

    .line 65
    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 68
    move-result-object v2

    .line 69
    const-string v3, "license"

    .line 71
    const-string v4, ""

    .line 73
    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 76
    move-result-object v2

    .line 77
    if-nez v2, :cond_1

    .line 79
    goto :goto_0

    .line 80
    :cond_1
    move-object v4, v2

    .line 81
    :goto_0
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 84
    move-result v2

    .line 85
    if-lez v2, :cond_2

    .line 87
    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    :cond_2
    new-instance v2, Lo/va;

    .line 92
    invoke-direct {v2, p1, v0, v1, p0}, Lo/va;-><init>(Lcom/google/android/material/textfield/TextInputEditText;Lcom/google/android/material/button/MaterialButton;Landroid/widget/TextView;Lcom/ffrt/proxyread/LoginActivity;)V

    .line 95
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    new-instance v2, Lo/wa;

    .line 100
    invoke-direct {v2, p1, v0, v1, p0}, Lo/wa;-><init>(Lcom/google/android/material/textfield/TextInputEditText;Lcom/google/android/material/button/MaterialButton;Landroid/widget/TextView;Lcom/ffrt/proxyread/LoginActivity;)V

    .line 103
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 106
    return-void
.end method
