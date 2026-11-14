.class public final Lo/V5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic a:Lo/X5;


# direct methods
.method public constructor <init>(Lo/X5;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lo/V5;->a:Lo/X5;

    .line 6
    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lo/V5;->a:Lo/X5;

    .line 3
    iget-object v0, p1, Lo/X5;->c0:Landroid/app/Dialog;

    .line 5
    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {p1, v0}, Lo/X5;->onDismiss(Landroid/content/DialogInterface;)V

    .line 10
    :cond_0
    return-void
.end method
