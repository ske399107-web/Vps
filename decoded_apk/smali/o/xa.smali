.class public final synthetic Lo/xa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo/u8;


# instance fields
.field public final synthetic a:Lcom/ffrt/proxyread/LoginActivity;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Landroid/widget/TextView;

.field public final synthetic d:Lcom/google/android/material/button/MaterialButton;


# direct methods
.method public synthetic constructor <init>(Lcom/ffrt/proxyread/LoginActivity;Ljava/lang/String;Landroid/widget/TextView;Lcom/google/android/material/button/MaterialButton;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/xa;->a:Lcom/ffrt/proxyread/LoginActivity;

    iput-object p2, p0, Lo/xa;->b:Ljava/lang/String;

    iput-object p3, p0, Lo/xa;->c:Landroid/widget/TextView;

    iput-object p4, p0, Lo/xa;->d:Lcom/google/android/material/button/MaterialButton;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 6

    .line 1
    iget-object v0, p0, Lo/xa;->a:Lcom/ffrt/proxyread/LoginActivity;

    .line 3
    iget-object v1, v0, Lcom/ffrt/proxyread/LoginActivity;->x:Landroid/os/Handler;

    .line 5
    iget-object v2, p0, Lo/xa;->b:Ljava/lang/String;

    .line 7
    iget-object v3, p0, Lo/xa;->c:Landroid/widget/TextView;

    .line 9
    sget v4, Lcom/ffrt/proxyread/LoginActivity;->y:I

    .line 11
    :try_start_0
    invoke-static {v0, v2}, Lo/n5;->f(Landroid/content/Context;Ljava/lang/String;)Lo/m5;

    .line 14
    move-result-object v2

    .line 15
    invoke-static {v0, v2}, Lo/L1;->W(Landroid/content/Context;Lo/m5;)V

    .line 18
    new-instance v4, Lo/D6;

    .line 20
    const/4 v5, 0x1

    .line 21
    invoke-direct {v4, v3, v0, v2, v5}, Lo/D6;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 24
    invoke-virtual {v1, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    goto :goto_0

    .line 28
    :catch_0
    move-exception v2

    .line 29
    new-instance v4, Lo/ya;

    .line 31
    iget-object v5, p0, Lo/xa;->d:Lcom/google/android/material/button/MaterialButton;

    .line 33
    invoke-direct {v4, v5, v3, v0, v2}, Lo/ya;-><init>(Lcom/google/android/material/button/MaterialButton;Landroid/widget/TextView;Lcom/ffrt/proxyread/LoginActivity;Ljava/lang/Exception;)V

    .line 36
    invoke-virtual {v1, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 39
    :goto_0
    sget-object v0, Lo/Ug;->a:Lo/Ug;

    .line 41
    return-object v0
.end method
