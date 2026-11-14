.class public final Lo/s8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo/Z8;
.implements Lo/te;
.implements Lo/Mh;


# instance fields
.field public final a:Lo/T7;

.field public final b:Lo/Lh;

.field public c:Landroidx/lifecycle/a;

.field public d:Lo/t8;


# direct methods
.method public constructor <init>(Lo/T7;Lo/Lh;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lo/s8;->c:Landroidx/lifecycle/a;

    .line 7
    iput-object v0, p0, Lo/s8;->d:Lo/t8;

    .line 9
    iput-object p1, p0, Lo/s8;->a:Lo/T7;

    .line 11
    iput-object p2, p0, Lo/s8;->b:Lo/Lh;

    .line 13
    return-void
.end method


# virtual methods
.method public final a()Lo/Pb;
    .locals 5

    .line 1
    iget-object v0, p0, Lo/s8;->a:Lo/T7;

    .line 3
    invoke-virtual {v0}, Lo/T7;->C()Landroid/content/Context;

    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 10
    move-result-object v1

    .line 11
    :goto_0
    instance-of v2, v1, Landroid/content/ContextWrapper;

    .line 13
    if-eqz v2, :cond_1

    .line 15
    instance-of v2, v1, Landroid/app/Application;

    .line 17
    if-eqz v2, :cond_0

    .line 19
    check-cast v1, Landroid/app/Application;

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    check-cast v1, Landroid/content/ContextWrapper;

    .line 24
    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 27
    move-result-object v1

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    const/4 v1, 0x0

    .line 30
    :goto_1
    new-instance v2, Lo/Pb;

    .line 32
    invoke-direct {v2}, Lo/Pb;-><init>()V

    .line 35
    iget-object v3, v2, Lo/f5;->a:Ljava/util/LinkedHashMap;

    .line 37
    if-eqz v1, :cond_2

    .line 39
    sget-object v4, Lo/u6;->d:Lo/u6;

    .line 41
    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    :cond_2
    sget-object v1, Lo/x9;->M:Lo/u6;

    .line 46
    invoke-interface {v3, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object v1, Lo/x9;->N:Lo/u6;

    .line 51
    invoke-interface {v3, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    iget-object v0, v0, Lo/T7;->f:Landroid/os/Bundle;

    .line 56
    if-eqz v0, :cond_3

    .line 58
    sget-object v1, Lo/x9;->O:Lo/u6;

    .line 60
    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    :cond_3
    return-object v2
.end method

.method public final b()Lo/b1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lo/s8;->f()V

    .line 4
    iget-object v0, p0, Lo/s8;->d:Lo/t8;

    .line 6
    iget-object v0, v0, Lo/t8;->c:Ljava/lang/Object;

    .line 8
    check-cast v0, Lo/b1;

    .line 10
    return-object v0
.end method

.method public final c(Lo/L9;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lo/s8;->c:Landroidx/lifecycle/a;

    .line 3
    invoke-virtual {v0, p1}, Landroidx/lifecycle/a;->d(Lo/L9;)V

    .line 6
    return-void
.end method

.method public final d()Lo/Lh;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lo/s8;->f()V

    .line 4
    iget-object v0, p0, Lo/s8;->b:Lo/Lh;

    .line 6
    return-object v0
.end method

.method public final e()Landroidx/lifecycle/a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lo/s8;->f()V

    .line 4
    iget-object v0, p0, Lo/s8;->c:Landroidx/lifecycle/a;

    .line 6
    return-object v0
.end method

.method public final f()V
    .locals 1

    .line 1
    iget-object v0, p0, Lo/s8;->c:Landroidx/lifecycle/a;

    .line 3
    if-nez v0, :cond_0

    .line 5
    new-instance v0, Landroidx/lifecycle/a;

    .line 7
    invoke-direct {v0, p0}, Landroidx/lifecycle/a;-><init>(Lo/R9;)V

    .line 10
    iput-object v0, p0, Lo/s8;->c:Landroidx/lifecycle/a;

    .line 12
    new-instance v0, Lo/t8;

    .line 14
    invoke-direct {v0, p0}, Lo/t8;-><init>(Lo/te;)V

    .line 17
    iput-object v0, p0, Lo/s8;->d:Lo/t8;

    .line 19
    invoke-virtual {v0}, Lo/t8;->a()V

    .line 22
    invoke-static {p0}, Lo/x9;->v(Lo/te;)V

    .line 25
    :cond_0
    return-void
.end method
