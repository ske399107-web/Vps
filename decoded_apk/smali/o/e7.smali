.class public final synthetic Lo/e7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# instance fields
.field public final synthetic a:Lo/g7;


# direct methods
.method public synthetic constructor <init>(Lo/g7;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/e7;->a:Lo/g7;

    return-void
.end method


# virtual methods
.method public final doFrame(J)V
    .locals 0

    .line 1
    iget-object p1, p0, Lo/e7;->a:Lo/g7;

    .line 3
    const/4 p2, 0x0

    .line 4
    iput-boolean p2, p1, Lo/g7;->f:Z

    .line 6
    iget-boolean p2, p1, Lo/g7;->b:Z

    .line 8
    if-nez p2, :cond_0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 14
    invoke-virtual {p1}, Lo/g7;->b()V

    .line 17
    :goto_0
    return-void
.end method
