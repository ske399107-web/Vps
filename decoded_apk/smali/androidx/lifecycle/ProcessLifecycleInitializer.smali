.class public final Landroidx/lifecycle/ProcessLifecycleInitializer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo/n9;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/n9;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 1

    .line 1
    sget-object v0, Lo/V6;->a:Lo/V6;

    .line 3
    return-object v0
.end method

.method public final b(Landroid/content/Context;)Ljava/lang/Object;
    .locals 4

    .line 1
    const-string v0, "context"

    .line 3
    invoke-static {p1, v0}, Lo/x9;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-static {p1}, Lo/s2;->r(Landroid/content/Context;)Lo/s2;

    .line 9
    move-result-object v0

    .line 10
    const-string v1, "getInstance(context)"

    .line 12
    invoke-static {v0, v1}, Lo/x9;->n(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    iget-object v0, v0, Lo/s2;->c:Ljava/lang/Object;

    .line 17
    check-cast v0, Ljava/util/HashSet;

    .line 19
    const-class v1, Landroidx/lifecycle/ProcessLifecycleInitializer;

    .line 21
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_1

    .line 27
    sget-object v0, Lo/O9;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 29
    const/4 v1, 0x1

    .line 30
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    .line 33
    move-result v0

    .line 34
    const-string v1, "null cannot be cast to non-null type android.app.Application"

    .line 36
    if-eqz v0, :cond_0

    .line 38
    goto :goto_0

    .line 39
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 42
    move-result-object v0

    .line 43
    invoke-static {v0, v1}, Lo/x9;->m(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    check-cast v0, Landroid/app/Application;

    .line 48
    new-instance v2, Lo/N9;

    .line 50
    invoke-direct {v2}, Lo/N9;-><init>()V

    .line 53
    invoke-virtual {v0, v2}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 56
    :goto_0
    sget-object v0, Lo/Tc;->i:Lo/Tc;

    .line 58
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 61
    new-instance v2, Landroid/os/Handler;

    .line 63
    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    .line 66
    iput-object v2, v0, Lo/Tc;->e:Landroid/os/Handler;

    .line 68
    iget-object v2, v0, Lo/Tc;->f:Landroidx/lifecycle/a;

    .line 70
    sget-object v3, Lo/L9;->ON_CREATE:Lo/L9;

    .line 72
    invoke-virtual {v2, v3}, Landroidx/lifecycle/a;->d(Lo/L9;)V

    .line 75
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 78
    move-result-object p1

    .line 79
    invoke-static {p1, v1}, Lo/x9;->m(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    check-cast p1, Landroid/app/Application;

    .line 84
    new-instance v1, Lo/Sc;

    .line 86
    invoke-direct {v1, v0}, Lo/Sc;-><init>(Lo/Tc;)V

    .line 89
    invoke-virtual {p1, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 92
    return-object v0

    .line 93
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 95
    const-string v0, "ProcessLifecycleInitializer cannot be initialized lazily.\n               Please ensure that you have:\n               <meta-data\n                   android:name=\'androidx.lifecycle.ProcessLifecycleInitializer\'\n                   android:value=\'androidx.startup\' />\n               under InitializationProvider in your AndroidManifest.xml"

    .line 97
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 100
    throw p1
.end method
