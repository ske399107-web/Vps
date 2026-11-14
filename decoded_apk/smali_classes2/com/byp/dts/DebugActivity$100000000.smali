.class Lcom/byp/dts/DebugActivity$100000000;
.super Ljava/lang/Object;
.source "DebugActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byp/dts/DebugActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000000"
.end annotation


# instance fields
.field private final this$0:Lcom/byp/dts/DebugActivity;


# direct methods
.method constructor <init>(Lcom/byp/dts/DebugActivity;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/byp/dts/DebugActivity$100000000;->this$0:Lcom/byp/dts/DebugActivity;

    return-void
.end method

.method static access$0(Lcom/byp/dts/DebugActivity$100000000;)Lcom/byp/dts/DebugActivity;
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lcom/byp/dts/DebugActivity$100000000;->this$0:Lcom/byp/dts/DebugActivity;

    move-object v0, v3

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/DialogInterface;",
            "I)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 64
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, v0

    iget-object v4, v4, Lcom/byp/dts/DebugActivity$100000000;->this$0:Lcom/byp/dts/DebugActivity;

    invoke-virtual {v4}, Lcom/byp/dts/DebugActivity;->finishAffinity()V

    .line 65
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/System;->exit(I)V

    return-void
.end method
