.class public final Lo/oe;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo/se;


# instance fields
.field public final a:Lo/b1;

.field public b:Z

.field public c:Landroid/os/Bundle;

.field public final d:Lo/Df;


# direct methods
.method public constructor <init>(Lo/b1;Lo/Mh;)V
    .locals 1

    .line 1
    const-string v0, "savedStateRegistry"

    .line 3
    invoke-static {p1, v0}, Lo/x9;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lo/oe;->a:Lo/b1;

    .line 11
    new-instance p1, Lo/gc;

    .line 13
    const/4 v0, 0x3

    .line 14
    invoke-direct {p1, v0, p2}, Lo/gc;-><init>(ILjava/lang/Object;)V

    .line 17
    new-instance p2, Lo/Df;

    .line 19
    invoke-direct {p2, p1}, Lo/Df;-><init>(Lo/gc;)V

    .line 22
    iput-object p2, p0, Lo/oe;->d:Lo/Df;

    .line 24
    return-void
.end method


# virtual methods
.method public final a()Landroid/os/Bundle;
    .locals 3

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 6
    iget-object v1, p0, Lo/oe;->c:Landroid/os/Bundle;

    .line 8
    if-eqz v1, :cond_0

    .line 10
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 13
    :cond_0
    iget-object v1, p0, Lo/oe;->d:Lo/Df;

    .line 15
    invoke-virtual {v1}, Lo/Df;->a()Ljava/lang/Object;

    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Lo/pe;

    .line 21
    iget-object v1, v1, Lo/pe;->c:Ljava/util/LinkedHashMap;

    .line 23
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    .line 26
    move-result-object v1

    .line 27
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 30
    move-result-object v1

    .line 31
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 34
    move-result v2

    .line 35
    if-nez v2, :cond_1

    .line 37
    const/4 v1, 0x0

    .line 38
    iput-boolean v1, p0, Lo/oe;->b:Z

    .line 40
    return-object v0

    .line 41
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 44
    move-result-object v0

    .line 45
    check-cast v0, Ljava/util/Map$Entry;

    .line 47
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 50
    move-result-object v1

    .line 51
    check-cast v1, Ljava/lang/String;

    .line 53
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 56
    move-result-object v0

    .line 57
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 60
    new-instance v0, Ljava/lang/ClassCastException;

    .line 62
    invoke-direct {v0}, Ljava/lang/ClassCastException;-><init>()V

    .line 65
    throw v0
.end method
