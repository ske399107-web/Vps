.class public final Lo/t8;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Z

.field public final b:Ljava/lang/Object;

.field public final c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lo/s4;Lo/r0;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/t8;->b:Ljava/lang/Object;

    .line 5
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lo/t8;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lo/te;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/t8;->b:Ljava/lang/Object;

    .line 2
    new-instance p1, Lo/b1;

    invoke-direct {p1}, Lo/b1;-><init>()V

    iput-object p1, p0, Lo/t8;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 1
    iget-object v0, p0, Lo/t8;->b:Ljava/lang/Object;

    .line 3
    check-cast v0, Lo/te;

    .line 5
    invoke-interface {v0}, Lo/R9;->e()Landroidx/lifecycle/a;

    .line 8
    move-result-object v1

    .line 9
    iget-object v2, v1, Landroidx/lifecycle/a;->c:Lo/M9;

    .line 11
    sget-object v3, Lo/M9;->b:Lo/M9;

    .line 13
    if-ne v2, v3, :cond_1

    .line 15
    new-instance v2, Landroidx/savedstate/Recreator;

    .line 17
    invoke-direct {v2, v0}, Landroidx/savedstate/Recreator;-><init>(Lo/te;)V

    .line 20
    invoke-virtual {v1, v2}, Landroidx/lifecycle/a;->a(Lo/Q9;)V

    .line 23
    iget-object v0, p0, Lo/t8;->c:Ljava/lang/Object;

    .line 25
    check-cast v0, Lo/b1;

    .line 27
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    iget-boolean v2, v0, Lo/b1;->c:Z

    .line 32
    if-nez v2, :cond_0

    .line 34
    new-instance v2, Lo/qe;

    .line 36
    invoke-direct {v2, v0}, Lo/qe;-><init>(Lo/b1;)V

    .line 39
    invoke-virtual {v1, v2}, Landroidx/lifecycle/a;->a(Lo/Q9;)V

    .line 42
    const/4 v1, 0x1

    .line 43
    iput-boolean v1, v0, Lo/b1;->c:Z

    .line 45
    iput-boolean v1, p0, Lo/t8;->a:Z

    .line 47
    return-void

    .line 48
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 50
    const-string v1, "SavedStateRegistry was already attached."

    .line 52
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 55
    throw v0

    .line 56
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 58
    const-string v1, "Restarter must be created only during owner\'s initialization stage"

    .line 60
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 63
    throw v0
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lo/t8;->a:Z

    .line 3
    if-nez v0, :cond_0

    .line 5
    invoke-virtual {p0}, Lo/t8;->a()V

    .line 8
    :cond_0
    iget-object v0, p0, Lo/t8;->b:Ljava/lang/Object;

    .line 10
    check-cast v0, Lo/te;

    .line 12
    invoke-interface {v0}, Lo/R9;->e()Landroidx/lifecycle/a;

    .line 15
    move-result-object v0

    .line 16
    iget-object v1, v0, Landroidx/lifecycle/a;->c:Lo/M9;

    .line 18
    sget-object v2, Lo/M9;->d:Lo/M9;

    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 23
    move-result v1

    .line 24
    if-gez v1, :cond_4

    .line 26
    iget-object v0, p0, Lo/t8;->c:Ljava/lang/Object;

    .line 28
    check-cast v0, Lo/b1;

    .line 30
    iget-boolean v1, v0, Lo/b1;->c:Z

    .line 32
    if-eqz v1, :cond_3

    .line 34
    iget-boolean v1, v0, Lo/b1;->d:Z

    .line 36
    if-nez v1, :cond_2

    .line 38
    if-eqz p1, :cond_1

    .line 40
    const-string v1, "androidx.lifecycle.BundlableSavedStateRegistry.key"

    .line 42
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 45
    move-result-object p1

    .line 46
    goto :goto_0

    .line 47
    :cond_1
    const/4 p1, 0x0

    .line 48
    :goto_0
    iput-object p1, v0, Lo/b1;->a:Landroid/os/Parcelable;

    .line 50
    const/4 p1, 0x1

    .line 51
    iput-boolean p1, v0, Lo/b1;->d:Z

    .line 53
    return-void

    .line 54
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 56
    const-string v0, "SavedStateRegistry was already restored."

    .line 58
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 61
    throw p1

    .line 62
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 64
    const-string v0, "You must call performAttach() before calling performRestore(Bundle)."

    .line 66
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 69
    throw p1

    .line 70
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    .line 72
    const-string v1, "performRestore cannot be called when owner is "

    .line 74
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 77
    iget-object v0, v0, Landroidx/lifecycle/a;->c:Lo/M9;

    .line 79
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 82
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    move-result-object p1

    .line 86
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 88
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 91
    move-result-object p1

    .line 92
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 95
    throw v0
.end method

.method public c(Landroid/os/Bundle;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lo/t8;->c:Ljava/lang/Object;

    .line 3
    check-cast v0, Lo/b1;

    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    new-instance v1, Landroid/os/Bundle;

    .line 10
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 13
    iget-object v2, v0, Lo/b1;->a:Landroid/os/Parcelable;

    .line 15
    check-cast v2, Landroid/os/Bundle;

    .line 17
    if-eqz v2, :cond_0

    .line 19
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 22
    :cond_0
    iget-object v0, v0, Lo/b1;->f:Ljava/lang/Object;

    .line 24
    check-cast v0, Lo/me;

    .line 26
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    new-instance v2, Lo/ke;

    .line 31
    invoke-direct {v2, v0}, Lo/ke;-><init>(Lo/me;)V

    .line 34
    iget-object v0, v0, Lo/me;->c:Ljava/util/WeakHashMap;

    .line 36
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 38
    invoke-virtual {v0, v2, v3}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    :goto_0
    invoke-virtual {v2}, Lo/ke;->hasNext()Z

    .line 44
    move-result v0

    .line 45
    if-eqz v0, :cond_1

    .line 47
    invoke-virtual {v2}, Lo/ke;->next()Ljava/lang/Object;

    .line 50
    move-result-object v0

    .line 51
    check-cast v0, Ljava/util/Map$Entry;

    .line 53
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 56
    move-result-object v3

    .line 57
    check-cast v3, Ljava/lang/String;

    .line 59
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 62
    move-result-object v0

    .line 63
    check-cast v0, Lo/se;

    .line 65
    invoke-interface {v0}, Lo/se;->a()Landroid/os/Bundle;

    .line 68
    move-result-object v0

    .line 69
    invoke-virtual {v1, v3, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 72
    goto :goto_0

    .line 73
    :cond_1
    invoke-virtual {v1}, Landroid/os/BaseBundle;->isEmpty()Z

    .line 76
    move-result v0

    .line 77
    if-nez v0, :cond_2

    .line 79
    const-string v0, "androidx.lifecycle.BundlableSavedStateRegistry.key"

    .line 81
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 84
    :cond_2
    return-void
.end method
