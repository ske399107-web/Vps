.class public final synthetic Lo/w1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo/C9;


# instance fields
.field public final synthetic a:Lo/J0;


# direct methods
.method public synthetic constructor <init>(Lo/J0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/w1;->a:Lo/J0;

    return-void
.end method


# virtual methods
.method public final c(Landroid/view/KeyEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lo/w1;->a:Lo/J0;

    invoke-virtual {v0, p1}, Lo/J0;->k(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method
