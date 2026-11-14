.class public final Lo/ob;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ActionProvider$VisibilityListener;


# instance fields
.field public a:Lo/C;

.field public final b:Landroid/view/ActionProvider;

.field public final synthetic c:Lo/rb;


# direct methods
.method public constructor <init>(Lo/rb;Landroid/view/ActionProvider;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lo/ob;->c:Lo/rb;

    .line 6
    iput-object p2, p0, Lo/ob;->b:Landroid/view/ActionProvider;

    .line 8
    return-void
.end method


# virtual methods
.method public final onActionProviderVisibilityChanged(Z)V
    .locals 1

    .line 1
    iget-object p1, p0, Lo/ob;->a:Lo/C;

    .line 3
    if-eqz p1, :cond_0

    .line 5
    iget-object p1, p1, Lo/C;->b:Ljava/lang/Object;

    .line 7
    check-cast p1, Lo/nb;

    .line 9
    iget-object p1, p1, Lo/nb;->n:Lo/kb;

    .line 11
    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p1, Lo/kb;->h:Z

    .line 14
    invoke-virtual {p1, v0}, Lo/kb;->p(Z)V

    .line 17
    :cond_0
    return-void
.end method
