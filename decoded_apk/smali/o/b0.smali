.class public final Lo/b0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/google/android/material/behavior/SwipeDismissBehavior;Landroid/view/View;Z)V
    .locals 0

    const/4 p3, 0x6

    iput p3, p0, Lo/b0;->a:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/b0;->c:Ljava/lang/Object;

    .line 3
    iput-object p2, p0, Lo/b0;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p2, p0, Lo/b0;->a:I

    iput-object p1, p0, Lo/b0;->b:Ljava/lang/Object;

    iput-object p3, p0, Lo/b0;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lo/d0;Lo/Z;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lo/b0;->a:I

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/b0;->c:Ljava/lang/Object;

    .line 5
    iput-object p2, p0, Lo/b0;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lo/b0;->b:Ljava/lang/Object;

    .line 3
    iget-object v1, p0, Lo/b0;->c:Ljava/lang/Object;

    .line 5
    iget v2, p0, Lo/b0;->a:I

    .line 7
    packed-switch v2, :pswitch_data_0

    .line 10
    check-cast v1, Lcom/google/android/material/behavior/SwipeDismissBehavior;

    .line 12
    iget-object v1, v1, Lcom/google/android/material/behavior/SwipeDismissBehavior;->a:Lo/Fh;

    .line 14
    if-eqz v1, :cond_0

    .line 16
    invoke-virtual {v1}, Lo/Fh;->f()Z

    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_0

    .line 22
    sget-object v1, Lo/Dh;->a:Ljava/util/WeakHashMap;

    .line 24
    check-cast v0, Landroid/view/View;

    .line 26
    invoke-virtual {v0, p0}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 29
    :cond_0
    return-void

    .line 30
    :pswitch_0
    check-cast v0, Lo/E7;

    .line 32
    invoke-virtual {v0, v1}, Lo/E7;->a(Ljava/lang/Object;)V

    .line 35
    return-void

    .line 36
    :pswitch_1
    check-cast v0, Lo/C;

    .line 38
    iget-object v0, v0, Lo/C;->b:Ljava/lang/Object;

    .line 40
    check-cast v0, Lo/Ha;

    .line 42
    if-eqz v0, :cond_1

    .line 44
    check-cast v1, Landroid/graphics/Typeface;

    .line 46
    invoke-virtual {v0, v1}, Lo/Ha;->i0(Landroid/graphics/Typeface;)V

    .line 49
    :cond_1
    return-void

    .line 50
    :pswitch_2
    :try_start_0
    sget-object v2, Lo/k0;->d:Ljava/lang/reflect/Method;

    .line 52
    if-eqz v2, :cond_2

    .line 54
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 56
    const-string v4, "AppCompat recreation"

    .line 58
    filled-new-array {v1, v3, v4}, [Ljava/lang/Object;

    .line 61
    move-result-object v1

    .line 62
    invoke-virtual {v2, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    goto :goto_2

    .line 66
    :catchall_0
    move-exception v0

    .line 67
    goto :goto_0

    .line 68
    :catch_0
    move-exception v0

    .line 69
    goto :goto_1

    .line 70
    :cond_2
    sget-object v2, Lo/k0;->e:Ljava/lang/reflect/Method;

    .line 72
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 74
    filled-new-array {v1, v3}, [Ljava/lang/Object;

    .line 77
    move-result-object v1

    .line 78
    invoke-virtual {v2, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    goto :goto_2

    .line 82
    :goto_0
    const-string v1, "ActivityRecreator"

    .line 84
    const-string v2, "Exception while invoking performStopActivity"

    .line 86
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 89
    goto :goto_2

    .line 90
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 93
    move-result-object v1

    .line 94
    const-class v2, Ljava/lang/RuntimeException;

    .line 96
    if-ne v1, v2, :cond_4

    .line 98
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 101
    move-result-object v1

    .line 102
    if-eqz v1, :cond_4

    .line 104
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 107
    move-result-object v1

    .line 108
    const-string v2, "Unable to stop"

    .line 110
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 113
    move-result v1

    .line 114
    if-nez v1, :cond_3

    .line 116
    goto :goto_2

    .line 117
    :cond_3
    throw v0

    .line 118
    :cond_4
    :goto_2
    return-void

    .line 119
    :pswitch_3
    check-cast v0, Landroid/app/Application;

    .line 121
    check-cast v1, Lo/j0;

    .line 123
    invoke-virtual {v0, v1}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 126
    return-void

    .line 127
    :pswitch_4
    check-cast v0, Lo/j0;

    .line 129
    iput-object v1, v0, Lo/j0;->a:Ljava/lang/Object;

    .line 131
    return-void

    .line 132
    :pswitch_5
    check-cast v1, Lo/d0;

    .line 134
    iget-object v2, v1, Lo/d0;->c:Lo/kb;

    .line 136
    if-eqz v2, :cond_5

    .line 138
    iget-object v3, v2, Lo/kb;->e:Lo/ib;

    .line 140
    if-eqz v3, :cond_5

    .line 142
    invoke-interface {v3, v2}, Lo/ib;->v(Lo/kb;)V

    .line 145
    :cond_5
    iget-object v2, v1, Lo/d0;->h:Lo/Cb;

    .line 147
    check-cast v2, Landroid/view/View;

    .line 149
    if-eqz v2, :cond_8

    .line 151
    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    .line 154
    move-result-object v2

    .line 155
    if-eqz v2, :cond_8

    .line 157
    check-cast v0, Lo/Z;

    .line 159
    invoke-virtual {v0}, Lo/ub;->b()Z

    .line 162
    move-result v2

    .line 163
    if-eqz v2, :cond_6

    .line 165
    goto :goto_3

    .line 166
    :cond_6
    iget-object v2, v0, Lo/ub;->e:Landroid/view/View;

    .line 168
    if-nez v2, :cond_7

    .line 170
    goto :goto_4

    .line 171
    :cond_7
    const/4 v2, 0x0

    .line 172
    invoke-virtual {v0, v2, v2, v2, v2}, Lo/ub;->d(IIZZ)V

    .line 175
    :goto_3
    iput-object v0, v1, Lo/d0;->s:Lo/Z;

    .line 177
    :cond_8
    :goto_4
    const/4 v0, 0x0

    .line 178
    iput-object v0, v1, Lo/d0;->u:Lo/b0;

    .line 180
    return-void

    .line 181
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
