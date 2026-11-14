.class public final Lo/r1;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lo/s1;


# direct methods
.method public constructor <init>(Lo/s1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo/r1;->a:Lo/s1;

    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lo/r1;->a:Lo/s1;

    .line 3
    invoke-virtual {p1}, Lo/s1;->h()V

    .line 6
    return-void
.end method
