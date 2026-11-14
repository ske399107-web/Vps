.class public final synthetic Lo/wa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


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

    iput-object p1, p0, Lo/wa;->a:Lcom/google/android/material/textfield/TextInputEditText;

    iput-object p2, p0, Lo/wa;->b:Lcom/google/android/material/button/MaterialButton;

    iput-object p3, p0, Lo/wa;->c:Landroid/widget/TextView;

    iput-object p4, p0, Lo/wa;->d:Lcom/ffrt/proxyread/LoginActivity;

    return-void
.end method


# virtual methods
.method public final onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 1
    const/4 p1, 0x6

    .line 2
    if-ne p2, p1, :cond_0

    .line 4
    iget-object p1, p0, Lo/wa;->a:Lcom/google/android/material/textfield/TextInputEditText;

    .line 6
    iget-object p2, p0, Lo/wa;->b:Lcom/google/android/material/button/MaterialButton;

    .line 8
    iget-object p3, p0, Lo/wa;->c:Landroid/widget/TextView;

    .line 10
    iget-object v0, p0, Lo/wa;->d:Lcom/ffrt/proxyread/LoginActivity;

    .line 12
    invoke-static {p1, p2, p3, v0}, Lcom/ffrt/proxyread/LoginActivity;->r(Lcom/google/android/material/textfield/TextInputEditText;Lcom/google/android/material/button/MaterialButton;Landroid/widget/TextView;Lcom/ffrt/proxyread/LoginActivity;)V

    .line 15
    const/4 p1, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    sget p1, Lcom/ffrt/proxyread/LoginActivity;->y:I

    .line 19
    const/4 p1, 0x0

    .line 20
    :goto_0
    return p1
.end method
