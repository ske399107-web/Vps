.class Lcom/byp/dts/MainActivity$100000005;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byp/dts/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000005"
.end annotation


# instance fields
.field private final val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/byp/dts/MainActivity$100000005;->val$context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 312
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget-object v3, v3, Lcom/byp/dts/MainActivity$100000005;->val$context:Landroid/content/Context;

    const-string v4, "com.dts.freefiremax"

    invoke-static {v3, v4}, Lcom/byp/dts/MainActivity;->access$1000017(Landroid/content/Context;Ljava/lang/String;)V

    .line 313
    move-object v3, v0

    iget-object v3, v3, Lcom/byp/dts/MainActivity$100000005;->val$context:Landroid/content/Context;

    const-string v4, "com.dts.freefiremax"

    invoke-static {v3, v4}, Lcom/byp/dts/MainActivity;->access$1000018(Landroid/content/Context;Ljava/lang/String;)V

    .line 314
    move-object v3, v0

    iget-object v3, v3, Lcom/byp/dts/MainActivity$100000005;->val$context:Landroid/content/Context;

    const-string v4, "Game closed! Please tap \'Clear Data\'"

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    return-void
.end method
