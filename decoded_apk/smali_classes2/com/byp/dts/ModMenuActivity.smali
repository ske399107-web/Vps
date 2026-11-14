.class public Lcom/byp/dts/ModMenuActivity;
.super Landroid/app/Activity;
.source "ModMenuActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 17
    move-object v0, p0

    move-object v2, v0

    invoke-direct {v2}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v5, v0

    const-string v6, "com.goxome.aidestudio"

    invoke-static {v5, v6}, Ladrt/ADRTLogCatReader;->onContext(Landroid/content/Context;Ljava/lang/String;)V

    .line 11
    move-object v5, v0

    move-object v6, v1

    invoke-super {v5, v6}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 12
    new-instance v5, Landroid/widget/TextView;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v0

    invoke-direct {v6, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object v3, v5

    .line 13
    move-object v5, v3

    const-string v6, "MODDER GANG  MENU LOADED!"

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    move-object v5, v3

    const/16 v6, 0x1e

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextSize(F)V

    .line 15
    move-object v5, v3

    const/16 v6, 0x11

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 16
    move-object v5, v0

    move-object v6, v3

    invoke-virtual {v5, v6}, Lcom/byp/dts/ModMenuActivity;->setContentView(Landroid/view/View;)V

    return-void
.end method
