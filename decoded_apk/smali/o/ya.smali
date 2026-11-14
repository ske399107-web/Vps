.class public final synthetic Lo/ya;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/google/android/material/button/MaterialButton;

.field public final synthetic b:Landroid/widget/TextView;

.field public final synthetic c:Lcom/ffrt/proxyread/LoginActivity;

.field public final synthetic d:Ljava/lang/Exception;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/material/button/MaterialButton;Landroid/widget/TextView;Lcom/ffrt/proxyread/LoginActivity;Ljava/lang/Exception;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/ya;->a:Lcom/google/android/material/button/MaterialButton;

    iput-object p2, p0, Lo/ya;->b:Landroid/widget/TextView;

    iput-object p3, p0, Lo/ya;->c:Lcom/ffrt/proxyread/LoginActivity;

    iput-object p4, p0, Lo/ya;->d:Ljava/lang/Exception;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    sget v0, Lcom/ffrt/proxyread/LoginActivity;->y:I

    .line 3
    const/4 v0, 0x1

    .line 4
    iget-object v1, p0, Lo/ya;->a:Lcom/google/android/material/button/MaterialButton;

    .line 6
    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 9
    const v0, 0x7f050032

    .line 12
    iget-object v1, p0, Lo/ya;->c:Lcom/ffrt/proxyread/LoginActivity;

    .line 14
    invoke-virtual {v1, v0}, Landroid/content/Context;->getColor(I)I

    .line 17
    move-result v0

    .line 18
    iget-object v1, p0, Lo/ya;->b:Landroid/widget/TextView;

    .line 20
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 23
    iget-object v0, p0, Lo/ya;->d:Ljava/lang/Exception;

    .line 25
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 28
    move-result-object v0

    .line 29
    if-eqz v0, :cond_0

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const-string v0, "\u0110\u0103ng nh\u1eadp th\u1ea5t b\u1ea1i"

    .line 34
    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 37
    return-void
.end method
