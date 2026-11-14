.class public final Lo/T0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo/nc;


# instance fields
.field public final synthetic a:Lo/U0;


# direct methods
.method public constructor <init>(Lo/U0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lo/T0;->a:Lo/U0;

    .line 6
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lo/T0;->a:Lo/U0;

    .line 3
    invoke-virtual {v0}, Lo/U0;->j()Lo/h1;

    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Lo/h1;->a()V

    .line 10
    iget-object v0, v0, Landroidx/activity/a;->e:Lo/t8;

    .line 12
    iget-object v0, v0, Lo/t8;->c:Ljava/lang/Object;

    .line 14
    check-cast v0, Lo/b1;

    .line 16
    const-string v2, "androidx:appcompat"

    .line 18
    invoke-virtual {v0, v2}, Lo/b1;->c(Ljava/lang/String;)Landroid/os/Bundle;

    .line 21
    invoke-virtual {v1}, Lo/h1;->c()V

    .line 24
    return-void
.end method
