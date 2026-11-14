.class public final Lo/ic;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/window/OnBackAnimationCallback;


# instance fields
.field public final synthetic a:Lo/F8;

.field public final synthetic b:Lo/F8;

.field public final synthetic c:Lo/u8;

.field public final synthetic d:Lo/u8;


# direct methods
.method public constructor <init>(Lo/F8;Lo/F8;Lo/u8;Lo/u8;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lo/ic;->a:Lo/F8;

    .line 6
    iput-object p2, p0, Lo/ic;->b:Lo/F8;

    .line 8
    iput-object p3, p0, Lo/ic;->c:Lo/u8;

    .line 10
    iput-object p4, p0, Lo/ic;->d:Lo/u8;

    .line 12
    return-void
.end method


# virtual methods
.method public final onBackCancelled()V
    .locals 1

    .line 1
    iget-object v0, p0, Lo/ic;->d:Lo/u8;

    .line 3
    invoke-interface {v0}, Lo/u8;->a()Ljava/lang/Object;

    .line 6
    return-void
.end method

.method public final onBackInvoked()V
    .locals 1

    .line 1
    iget-object v0, p0, Lo/ic;->c:Lo/u8;

    .line 3
    invoke-interface {v0}, Lo/u8;->a()Ljava/lang/Object;

    .line 6
    return-void
.end method

.method public final onBackProgressed(Landroid/window/BackEvent;)V
    .locals 2

    .line 1
    const-string v0, "backEvent"

    .line 3
    invoke-static {p1, v0}, Lo/x9;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lo/ic;->b:Lo/F8;

    .line 8
    new-instance v1, Lo/L2;

    .line 10
    invoke-direct {v1, p1}, Lo/L2;-><init>(Landroid/window/BackEvent;)V

    .line 13
    invoke-interface {v0, v1}, Lo/F8;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    return-void
.end method

.method public final onBackStarted(Landroid/window/BackEvent;)V
    .locals 2

    .line 1
    const-string v0, "backEvent"

    .line 3
    invoke-static {p1, v0}, Lo/x9;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lo/ic;->a:Lo/F8;

    .line 8
    new-instance v1, Lo/L2;

    .line 10
    invoke-direct {v1, p1}, Lo/L2;-><init>(Landroid/window/BackEvent;)V

    .line 13
    invoke-interface {v0, v1}, Lo/F8;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    return-void
.end method
