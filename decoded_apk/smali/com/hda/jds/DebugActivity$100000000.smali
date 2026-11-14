.class Lcom/hda/jds/DebugActivity$100000000;
.super Ljava/lang/Object;
.source "DebugActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hda/jds/DebugActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000000"
.end annotation


# instance fields
.field private final this$0:Lcom/hda/jds/DebugActivity;


# direct methods
.method constructor <init>(Lcom/hda/jds/DebugActivity;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/hda/jds/DebugActivity$100000000;->this$0:Lcom/hda/jds/DebugActivity;

    return-void
.end method

.method static access$0(Lcom/hda/jds/DebugActivity$100000000;)Lcom/hda/jds/DebugActivity;
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lcom/hda/jds/DebugActivity$100000000;->this$0:Lcom/hda/jds/DebugActivity;

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
    .line 53
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, v0

    iget-object v4, v4, Lcom/hda/jds/DebugActivity$100000000;->this$0:Lcom/hda/jds/DebugActivity;

    invoke-virtual {v4}, Lcom/hda/jds/DebugActivity;->finish()V

    return-void
.end method
