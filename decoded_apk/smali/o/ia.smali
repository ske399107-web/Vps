.class public final Lo/ia;
.super Landroid/database/DataSetObserver;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lo/la;


# direct methods
.method public constructor <init>(Lo/la;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo/ia;->a:Lo/la;

    .line 3
    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final onChanged()V
    .locals 2

    .line 1
    iget-object v0, p0, Lo/ia;->a:Lo/la;

    .line 3
    iget-object v1, v0, Lo/la;->z:Lo/G1;

    .line 5
    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 11
    invoke-virtual {v0}, Lo/la;->f()V

    .line 14
    :cond_0
    return-void
.end method

.method public final onInvalidated()V
    .locals 1

    .line 1
    iget-object v0, p0, Lo/ia;->a:Lo/la;

    .line 3
    invoke-virtual {v0}, Lo/la;->dismiss()V

    .line 6
    return-void
.end method
