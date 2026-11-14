.class public final synthetic Lo/va;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/google/android/material/textfield/TextInputEditText;

.field public final synthetic b:Lcom/google/android/material/button/MaterialButton;

.field public final synthetic c:Landroid/widget/TextView;

.field public final synthetic d:Lcom/ffrt/proxyread/LoginActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/material/textfield/TextInputEditText;Lcom/google/android/material/button/MaterialButton;Landroid/widget/TextView;Lcom/ffrt/proxyread/LoginActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/va;->a:Lcom/google/android/material/textfield/TextInputEditText;

    iput-object p2, p0, Lo/va;->b:Lcom/google/android/material/button/MaterialButton;

    iput-object p3, p0, Lo/va;->c:Landroid/widget/TextView;

    iput-object p4, p0, Lo/va;->d:Lcom/ffrt/proxyread/LoginActivity;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lo/va;->a:Lcom/google/android/material/textfield/TextInputEditText;

    .line 3
    iget-object v0, p0, Lo/va;->b:Lcom/google/android/material/button/MaterialButton;

    .line 5
    iget-object v1, p0, Lo/va;->c:Landroid/widget/TextView;

    .line 7
    iget-object v2, p0, Lo/va;->d:Lcom/ffrt/proxyread/LoginActivity;

    .line 9
    invoke-static {p1, v0, v1, v2}, Lcom/ffrt/proxyread/LoginActivity;->r(Lcom/google/android/material/textfield/TextInputEditText;Lcom/google/android/material/button/MaterialButton;Landroid/widget/TextView;Lcom/ffrt/proxyread/LoginActivity;)V

    .line 12
    return-void
.end method
