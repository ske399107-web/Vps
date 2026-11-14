.class public final synthetic Lo/u0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Z

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;ZLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/u0;->a:Landroid/content/Context;

    iput-boolean p2, p0, Lo/u0;->b:Z

    iput-object p3, p0, Lo/u0;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lo/u0;->a:Landroid/content/Context;

    .line 3
    iget-boolean v1, p0, Lo/u0;->b:Z

    .line 5
    if-eqz v0, :cond_2

    .line 7
    if-eqz v1, :cond_1

    .line 9
    sget-object v2, Lo/w0;->c:Lo/q0;

    .line 11
    if-eqz v2, :cond_0

    .line 13
    invoke-virtual {v2}, Lo/q0;->j()V

    .line 16
    :cond_0
    const/4 v2, 0x0

    .line 17
    sput-object v2, Lo/w0;->c:Lo/q0;

    .line 19
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 22
    move-result-object v0

    .line 23
    const-class v2, Landroid/app/NotificationManager;

    .line 25
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Landroid/app/NotificationManager;

    .line 31
    if-eqz v0, :cond_2

    .line 33
    const/16 v2, 0x2a

    .line 35
    invoke-virtual {v0, v2}, Landroid/app/NotificationManager;->cancel(I)V

    .line 38
    goto :goto_0

    .line 39
    :cond_1
    invoke-static {v0}, Lo/x9;->Z(Landroid/content/Context;)V

    .line 42
    :cond_2
    :goto_0
    sget-object v0, Lo/w0;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 44
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 47
    move-result-object v0

    .line 48
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 51
    move-result v2

    .line 52
    if-eqz v2, :cond_3

    .line 54
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 57
    move-result-object v2

    .line 58
    check-cast v2, Lo/J8;

    .line 60
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 63
    move-result-object v3

    .line 64
    iget-object v4, p0, Lo/u0;->c:Ljava/lang/String;

    .line 66
    invoke-interface {v2, v3, v4}, Lo/J8;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    goto :goto_1

    .line 70
    :cond_3
    return-void
.end method
