.class public final Landroidx/lifecycle/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Z

.field public b:Lo/p7;

.field public c:Lo/M9;

.field public final d:Ljava/lang/ref/WeakReference;

.field public e:I

.field public f:Z

.field public g:Z

.field public final h:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lo/R9;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 9
    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Landroidx/lifecycle/a;->a:Z

    .line 12
    new-instance v0, Lo/p7;

    .line 14
    invoke-direct {v0}, Lo/p7;-><init>()V

    .line 17
    iput-object v0, p0, Landroidx/lifecycle/a;->b:Lo/p7;

    .line 19
    sget-object v0, Lo/M9;->b:Lo/M9;

    .line 21
    iput-object v0, p0, Landroidx/lifecycle/a;->c:Lo/M9;

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    .line 25
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 28
    iput-object v0, p0, Landroidx/lifecycle/a;->h:Ljava/util/ArrayList;

    .line 30
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 32
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 35
    iput-object v0, p0, Landroidx/lifecycle/a;->d:Ljava/lang/ref/WeakReference;

    .line 37
    return-void
.end method


# virtual methods
.method public final a(Lo/Q9;)V
    .locals 9

    .line 1
    iget-object v0, p0, Landroidx/lifecycle/a;->h:Ljava/util/ArrayList;

    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    const-string v3, "addObserver"

    .line 7
    invoke-virtual {p0, v3}, Landroidx/lifecycle/a;->c(Ljava/lang/String;)V

    .line 10
    iget-object v3, p0, Landroidx/lifecycle/a;->c:Lo/M9;

    .line 12
    sget-object v4, Lo/M9;->a:Lo/M9;

    .line 14
    if-ne v3, v4, :cond_0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    sget-object v4, Lo/M9;->b:Lo/M9;

    .line 19
    :goto_0
    new-instance v3, Lo/S9;

    .line 21
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 24
    sget-object v5, Lo/T9;->a:Ljava/util/HashMap;

    .line 26
    instance-of v5, p1, Lo/P9;

    .line 28
    instance-of v6, p1, Lo/C5;

    .line 30
    const/4 v7, 0x0

    .line 31
    if-eqz v5, :cond_1

    .line 33
    if-eqz v6, :cond_1

    .line 35
    new-instance v5, Landroidx/lifecycle/DefaultLifecycleObserverAdapter;

    .line 37
    move-object v6, p1

    .line 38
    check-cast v6, Lo/C5;

    .line 40
    move-object v8, p1

    .line 41
    check-cast v8, Lo/P9;

    .line 43
    invoke-direct {v5, v6, v8}, Landroidx/lifecycle/DefaultLifecycleObserverAdapter;-><init>(Lo/C5;Lo/P9;)V

    .line 46
    goto :goto_1

    .line 47
    :cond_1
    if-eqz v6, :cond_2

    .line 49
    new-instance v5, Landroidx/lifecycle/DefaultLifecycleObserverAdapter;

    .line 51
    move-object v6, p1

    .line 52
    check-cast v6, Lo/C5;

    .line 54
    invoke-direct {v5, v6, v1}, Landroidx/lifecycle/DefaultLifecycleObserverAdapter;-><init>(Lo/C5;Lo/P9;)V

    .line 57
    goto :goto_1

    .line 58
    :cond_2
    if-eqz v5, :cond_3

    .line 60
    move-object v5, p1

    .line 61
    check-cast v5, Lo/P9;

    .line 63
    goto :goto_1

    .line 64
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 67
    move-result-object v5

    .line 68
    invoke-static {v5}, Lo/T9;->c(Ljava/lang/Class;)I

    .line 71
    move-result v6

    .line 72
    const/4 v8, 0x2

    .line 73
    if-ne v6, v8, :cond_6

    .line 75
    sget-object v6, Lo/T9;->b:Ljava/util/HashMap;

    .line 77
    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    move-result-object v5

    .line 81
    invoke-static {v5}, Lo/x9;->l(Ljava/lang/Object;)V

    .line 84
    check-cast v5, Ljava/util/List;

    .line 86
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 89
    move-result v6

    .line 90
    if-eq v6, v2, :cond_5

    .line 92
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 95
    move-result v6

    .line 96
    new-array v8, v6, [Lo/U8;

    .line 98
    if-gtz v6, :cond_4

    .line 100
    new-instance v5, Landroidx/lifecycle/CompositeGeneratedAdaptersObserver;

    .line 102
    invoke-direct {v5, v8}, Landroidx/lifecycle/CompositeGeneratedAdaptersObserver;-><init>([Lo/U8;)V

    .line 105
    goto :goto_1

    .line 106
    :cond_4
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 109
    move-result-object v0

    .line 110
    check-cast v0, Ljava/lang/reflect/Constructor;

    .line 112
    invoke-static {v0, p1}, Lo/T9;->a(Ljava/lang/reflect/Constructor;Lo/Q9;)V

    .line 115
    throw v1

    .line 116
    :cond_5
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 119
    move-result-object v0

    .line 120
    check-cast v0, Ljava/lang/reflect/Constructor;

    .line 122
    invoke-static {v0, p1}, Lo/T9;->a(Ljava/lang/reflect/Constructor;Lo/Q9;)V

    .line 125
    throw v1

    .line 126
    :cond_6
    new-instance v5, Landroidx/lifecycle/ReflectiveGenericLifecycleObserver;

    .line 128
    invoke-direct {v5, p1}, Landroidx/lifecycle/ReflectiveGenericLifecycleObserver;-><init>(Lo/Q9;)V

    .line 131
    :goto_1
    iput-object v5, v3, Lo/S9;->b:Lo/P9;

    .line 133
    iput-object v4, v3, Lo/S9;->a:Lo/M9;

    .line 135
    iget-object v4, p0, Landroidx/lifecycle/a;->b:Lo/p7;

    .line 137
    invoke-virtual {v4, p1}, Lo/p7;->a(Ljava/lang/Object;)Lo/je;

    .line 140
    move-result-object v5

    .line 141
    if-eqz v5, :cond_7

    .line 143
    iget-object v1, v5, Lo/je;->b:Ljava/lang/Object;

    .line 145
    goto :goto_3

    .line 146
    :cond_7
    iget-object v5, v4, Lo/p7;->e:Ljava/util/HashMap;

    .line 148
    new-instance v6, Lo/je;

    .line 150
    invoke-direct {v6, p1, v3}, Lo/je;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 153
    iget v8, v4, Lo/me;->d:I

    .line 155
    add-int/2addr v8, v2

    .line 156
    iput v8, v4, Lo/me;->d:I

    .line 158
    iget-object v8, v4, Lo/me;->b:Lo/je;

    .line 160
    if-nez v8, :cond_8

    .line 162
    iput-object v6, v4, Lo/me;->a:Lo/je;

    .line 164
    iput-object v6, v4, Lo/me;->b:Lo/je;

    .line 166
    goto :goto_2

    .line 167
    :cond_8
    iput-object v6, v8, Lo/je;->c:Lo/je;

    .line 169
    iput-object v8, v6, Lo/je;->d:Lo/je;

    .line 171
    iput-object v6, v4, Lo/me;->b:Lo/je;

    .line 173
    :goto_2
    invoke-virtual {v5, p1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    :goto_3
    check-cast v1, Lo/S9;

    .line 178
    if-eqz v1, :cond_9

    .line 180
    return-void

    .line 181
    :cond_9
    iget-object v1, p0, Landroidx/lifecycle/a;->d:Ljava/lang/ref/WeakReference;

    .line 183
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 186
    move-result-object v1

    .line 187
    check-cast v1, Lo/R9;

    .line 189
    if-nez v1, :cond_a

    .line 191
    return-void

    .line 192
    :cond_a
    iget v4, p0, Landroidx/lifecycle/a;->e:I

    .line 194
    if-nez v4, :cond_b

    .line 196
    iget-boolean v4, p0, Landroidx/lifecycle/a;->f:Z

    .line 198
    if-eqz v4, :cond_c

    .line 200
    :cond_b
    move v7, v2

    .line 201
    :cond_c
    invoke-virtual {p0, p1}, Landroidx/lifecycle/a;->b(Lo/Q9;)Lo/M9;

    .line 204
    move-result-object v4

    .line 205
    iget v5, p0, Landroidx/lifecycle/a;->e:I

    .line 207
    add-int/2addr v5, v2

    .line 208
    iput v5, p0, Landroidx/lifecycle/a;->e:I

    .line 210
    :goto_4
    iget-object v5, v3, Lo/S9;->a:Lo/M9;

    .line 212
    invoke-virtual {v5, v4}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 215
    move-result v4

    .line 216
    if-gez v4, :cond_e

    .line 218
    iget-object v4, p0, Landroidx/lifecycle/a;->b:Lo/p7;

    .line 220
    iget-object v4, v4, Lo/p7;->e:Ljava/util/HashMap;

    .line 222
    invoke-virtual {v4, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 225
    move-result v4

    .line 226
    if-eqz v4, :cond_e

    .line 228
    iget-object v4, v3, Lo/S9;->a:Lo/M9;

    .line 230
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 233
    sget-object v4, Lo/L9;->Companion:Lo/J9;

    .line 235
    iget-object v5, v3, Lo/S9;->a:Lo/M9;

    .line 237
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 240
    invoke-static {v5}, Lo/J9;->a(Lo/M9;)Lo/L9;

    .line 243
    move-result-object v4

    .line 244
    if-eqz v4, :cond_d

    .line 246
    invoke-virtual {v3, v1, v4}, Lo/S9;->a(Lo/R9;Lo/L9;)V

    .line 249
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 252
    move-result v4

    .line 253
    sub-int/2addr v4, v2

    .line 254
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 257
    invoke-virtual {p0, p1}, Landroidx/lifecycle/a;->b(Lo/Q9;)Lo/M9;

    .line 260
    move-result-object v4

    .line 261
    goto :goto_4

    .line 262
    :cond_d
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 264
    new-instance v0, Ljava/lang/StringBuilder;

    .line 266
    const-string v1, "no event up from "

    .line 268
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 271
    iget-object v1, v3, Lo/S9;->a:Lo/M9;

    .line 273
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 276
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 279
    move-result-object v0

    .line 280
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 283
    throw p1

    .line 284
    :cond_e
    if-nez v7, :cond_f

    .line 286
    invoke-virtual {p0}, Landroidx/lifecycle/a;->h()V

    .line 289
    :cond_f
    iget p1, p0, Landroidx/lifecycle/a;->e:I

    .line 291
    add-int/lit8 p1, p1, -0x1

    .line 293
    iput p1, p0, Landroidx/lifecycle/a;->e:I

    .line 295
    return-void
.end method

.method public final b(Lo/Q9;)Lo/M9;
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/lifecycle/a;->b:Lo/p7;

    .line 3
    iget-object v0, v0, Lo/p7;->e:Ljava/util/HashMap;

    .line 5
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x0

    .line 10
    if-eqz v1, :cond_0

    .line 12
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    move-result-object p1

    .line 16
    check-cast p1, Lo/je;

    .line 18
    iget-object p1, p1, Lo/je;->d:Lo/je;

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move-object p1, v2

    .line 22
    :goto_0
    if-eqz p1, :cond_1

    .line 24
    iget-object p1, p1, Lo/je;->b:Ljava/lang/Object;

    .line 26
    check-cast p1, Lo/S9;

    .line 28
    iget-object p1, p1, Lo/S9;->a:Lo/M9;

    .line 30
    goto :goto_1

    .line 31
    :cond_1
    move-object p1, v2

    .line 32
    :goto_1
    iget-object v0, p0, Landroidx/lifecycle/a;->h:Ljava/util/ArrayList;

    .line 34
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 37
    move-result v1

    .line 38
    if-nez v1, :cond_2

    .line 40
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 43
    move-result v1

    .line 44
    add-int/lit8 v1, v1, -0x1

    .line 46
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 49
    move-result-object v0

    .line 50
    move-object v2, v0

    .line 51
    check-cast v2, Lo/M9;

    .line 53
    :cond_2
    iget-object v0, p0, Landroidx/lifecycle/a;->c:Lo/M9;

    .line 55
    const-string v1, "state1"

    .line 57
    invoke-static {v0, v1}, Lo/x9;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    if-eqz p1, :cond_3

    .line 62
    invoke-virtual {p1, v0}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 65
    move-result v1

    .line 66
    if-gez v1, :cond_3

    .line 68
    goto :goto_2

    .line 69
    :cond_3
    move-object p1, v0

    .line 70
    :goto_2
    if-eqz v2, :cond_4

    .line 72
    invoke-virtual {v2, p1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 75
    move-result v0

    .line 76
    if-gez v0, :cond_4

    .line 78
    goto :goto_3

    .line 79
    :cond_4
    move-object v2, p1

    .line 80
    :goto_3
    return-object v2
.end method

.method public final c(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroidx/lifecycle/a;->a:Z

    .line 3
    if-eqz v0, :cond_1

    .line 5
    invoke-static {}, Lo/w2;->D0()Lo/w2;

    .line 8
    move-result-object v0

    .line 9
    iget-object v0, v0, Lo/w2;->k:Ljava/lang/Object;

    .line 11
    check-cast v0, Lo/w2;

    .line 13
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    .line 23
    move-result-object v0

    .line 24
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 27
    move-result-object v1

    .line 28
    if-ne v0, v1, :cond_0

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const-string v0, "Method "

    .line 33
    const-string v1, " must be called on the main thread"

    .line 35
    invoke-static {v0, p1, v1}, Lo/o5;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 38
    move-result-object p1

    .line 39
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 41
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 44
    move-result-object p1

    .line 45
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 48
    throw v0

    .line 49
    :cond_1
    :goto_0
    return-void
.end method

.method public final d(Lo/L9;)V
    .locals 1

    .line 1
    const-string v0, "event"

    .line 3
    invoke-static {p1, v0}, Lo/x9;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    const-string v0, "handleLifecycleEvent"

    .line 8
    invoke-virtual {p0, v0}, Landroidx/lifecycle/a;->c(Ljava/lang/String;)V

    .line 11
    invoke-virtual {p1}, Lo/L9;->a()Lo/M9;

    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p0, p1}, Landroidx/lifecycle/a;->e(Lo/M9;)V

    .line 18
    return-void
.end method

.method public final e(Lo/M9;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/lifecycle/a;->c:Lo/M9;

    .line 3
    if-ne v0, p1, :cond_0

    .line 5
    return-void

    .line 6
    :cond_0
    sget-object v1, Lo/M9;->b:Lo/M9;

    .line 8
    sget-object v2, Lo/M9;->a:Lo/M9;

    .line 10
    if-ne v0, v1, :cond_2

    .line 12
    if-eq p1, v2, :cond_1

    .line 14
    goto :goto_0

    .line 15
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 17
    const-string v0, "no event down from "

    .line 19
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    iget-object v0, p0, Landroidx/lifecycle/a;->c:Lo/M9;

    .line 24
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 27
    const-string v0, " in component "

    .line 29
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    iget-object v0, p0, Landroidx/lifecycle/a;->d:Ljava/lang/ref/WeakReference;

    .line 34
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    move-result-object p1

    .line 45
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 47
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 50
    move-result-object p1

    .line 51
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 54
    throw v0

    .line 55
    :cond_2
    :goto_0
    iput-object p1, p0, Landroidx/lifecycle/a;->c:Lo/M9;

    .line 57
    iget-boolean p1, p0, Landroidx/lifecycle/a;->f:Z

    .line 59
    const/4 v0, 0x1

    .line 60
    if-nez p1, :cond_5

    .line 62
    iget p1, p0, Landroidx/lifecycle/a;->e:I

    .line 64
    if-eqz p1, :cond_3

    .line 66
    goto :goto_1

    .line 67
    :cond_3
    iput-boolean v0, p0, Landroidx/lifecycle/a;->f:Z

    .line 69
    invoke-virtual {p0}, Landroidx/lifecycle/a;->h()V

    .line 72
    const/4 p1, 0x0

    .line 73
    iput-boolean p1, p0, Landroidx/lifecycle/a;->f:Z

    .line 75
    iget-object p1, p0, Landroidx/lifecycle/a;->c:Lo/M9;

    .line 77
    if-ne p1, v2, :cond_4

    .line 79
    new-instance p1, Lo/p7;

    .line 81
    invoke-direct {p1}, Lo/p7;-><init>()V

    .line 84
    iput-object p1, p0, Landroidx/lifecycle/a;->b:Lo/p7;

    .line 86
    :cond_4
    return-void

    .line 87
    :cond_5
    :goto_1
    iput-boolean v0, p0, Landroidx/lifecycle/a;->g:Z

    .line 89
    return-void
.end method

.method public final f(Lo/Q9;)V
    .locals 1

    .line 1
    const-string v0, "removeObserver"

    .line 3
    invoke-virtual {p0, v0}, Landroidx/lifecycle/a;->c(Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Landroidx/lifecycle/a;->b:Lo/p7;

    .line 8
    invoke-virtual {v0, p1}, Lo/p7;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    return-void
.end method

.method public final g()V
    .locals 2

    .line 1
    sget-object v0, Lo/M9;->c:Lo/M9;

    .line 3
    const-string v1, "setCurrentState"

    .line 5
    invoke-virtual {p0, v1}, Landroidx/lifecycle/a;->c(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p0, v0}, Landroidx/lifecycle/a;->e(Lo/M9;)V

    .line 11
    return-void
.end method

.method public final h()V
    .locals 7

    .line 1
    iget-object v0, p0, Landroidx/lifecycle/a;->d:Ljava/lang/ref/WeakReference;

    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lo/R9;

    .line 9
    if-eqz v0, :cond_b

    .line 11
    :cond_0
    iget-object v1, p0, Landroidx/lifecycle/a;->b:Lo/p7;

    .line 13
    iget v2, v1, Lo/me;->d:I

    .line 15
    const/4 v3, 0x0

    .line 16
    if-nez v2, :cond_1

    .line 18
    goto :goto_0

    .line 19
    :cond_1
    iget-object v1, v1, Lo/me;->a:Lo/je;

    .line 21
    invoke-static {v1}, Lo/x9;->l(Ljava/lang/Object;)V

    .line 24
    iget-object v1, v1, Lo/je;->b:Ljava/lang/Object;

    .line 26
    check-cast v1, Lo/S9;

    .line 28
    iget-object v1, v1, Lo/S9;->a:Lo/M9;

    .line 30
    iget-object v2, p0, Landroidx/lifecycle/a;->b:Lo/p7;

    .line 32
    iget-object v2, v2, Lo/me;->b:Lo/je;

    .line 34
    invoke-static {v2}, Lo/x9;->l(Ljava/lang/Object;)V

    .line 37
    iget-object v2, v2, Lo/je;->b:Ljava/lang/Object;

    .line 39
    check-cast v2, Lo/S9;

    .line 41
    iget-object v2, v2, Lo/S9;->a:Lo/M9;

    .line 43
    if-ne v1, v2, :cond_2

    .line 45
    iget-object v1, p0, Landroidx/lifecycle/a;->c:Lo/M9;

    .line 47
    if-ne v1, v2, :cond_2

    .line 49
    :goto_0
    iput-boolean v3, p0, Landroidx/lifecycle/a;->g:Z

    .line 51
    return-void

    .line 52
    :cond_2
    iput-boolean v3, p0, Landroidx/lifecycle/a;->g:Z

    .line 54
    iget-object v1, p0, Landroidx/lifecycle/a;->c:Lo/M9;

    .line 56
    iget-object v2, p0, Landroidx/lifecycle/a;->b:Lo/p7;

    .line 58
    iget-object v2, v2, Lo/me;->a:Lo/je;

    .line 60
    invoke-static {v2}, Lo/x9;->l(Ljava/lang/Object;)V

    .line 63
    iget-object v2, v2, Lo/je;->b:Ljava/lang/Object;

    .line 65
    check-cast v2, Lo/S9;

    .line 67
    iget-object v2, v2, Lo/S9;->a:Lo/M9;

    .line 69
    invoke-virtual {v1, v2}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 72
    move-result v1

    .line 73
    if-gez v1, :cond_8

    .line 75
    iget-object v1, p0, Landroidx/lifecycle/a;->b:Lo/p7;

    .line 77
    new-instance v2, Lo/ie;

    .line 79
    iget-object v3, v1, Lo/me;->b:Lo/je;

    .line 81
    iget-object v4, v1, Lo/me;->a:Lo/je;

    .line 83
    const/4 v5, 0x1

    .line 84
    invoke-direct {v2, v3, v4, v5}, Lo/ie;-><init>(Lo/je;Lo/je;I)V

    .line 87
    iget-object v1, v1, Lo/me;->c:Ljava/util/WeakHashMap;

    .line 89
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 91
    invoke-virtual {v1, v2, v3}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    :cond_3
    invoke-virtual {v2}, Lo/ie;->hasNext()Z

    .line 97
    move-result v1

    .line 98
    if-eqz v1, :cond_8

    .line 100
    iget-boolean v1, p0, Landroidx/lifecycle/a;->g:Z

    .line 102
    if-nez v1, :cond_8

    .line 104
    invoke-virtual {v2}, Lo/ie;->next()Ljava/lang/Object;

    .line 107
    move-result-object v1

    .line 108
    check-cast v1, Ljava/util/Map$Entry;

    .line 110
    const-string v3, "next()"

    .line 112
    invoke-static {v1, v3}, Lo/x9;->n(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 118
    move-result-object v3

    .line 119
    check-cast v3, Lo/Q9;

    .line 121
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 124
    move-result-object v1

    .line 125
    check-cast v1, Lo/S9;

    .line 127
    :goto_1
    iget-object v4, v1, Lo/S9;->a:Lo/M9;

    .line 129
    iget-object v5, p0, Landroidx/lifecycle/a;->c:Lo/M9;

    .line 131
    invoke-virtual {v4, v5}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 134
    move-result v4

    .line 135
    if-lez v4, :cond_3

    .line 137
    iget-boolean v4, p0, Landroidx/lifecycle/a;->g:Z

    .line 139
    if-nez v4, :cond_3

    .line 141
    iget-object v4, p0, Landroidx/lifecycle/a;->b:Lo/p7;

    .line 143
    iget-object v4, v4, Lo/p7;->e:Ljava/util/HashMap;

    .line 145
    invoke-virtual {v4, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 148
    move-result v4

    .line 149
    if-eqz v4, :cond_3

    .line 151
    sget-object v4, Lo/L9;->Companion:Lo/J9;

    .line 153
    iget-object v5, v1, Lo/S9;->a:Lo/M9;

    .line 155
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 158
    const-string v4, "state"

    .line 160
    invoke-static {v5, v4}, Lo/x9;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 163
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    .line 166
    move-result v4

    .line 167
    const/4 v5, 0x2

    .line 168
    if-eq v4, v5, :cond_6

    .line 170
    const/4 v5, 0x3

    .line 171
    if-eq v4, v5, :cond_5

    .line 173
    const/4 v5, 0x4

    .line 174
    if-eq v4, v5, :cond_4

    .line 176
    const/4 v4, 0x0

    .line 177
    goto :goto_2

    .line 178
    :cond_4
    sget-object v4, Lo/L9;->ON_PAUSE:Lo/L9;

    .line 180
    goto :goto_2

    .line 181
    :cond_5
    sget-object v4, Lo/L9;->ON_STOP:Lo/L9;

    .line 183
    goto :goto_2

    .line 184
    :cond_6
    sget-object v4, Lo/L9;->ON_DESTROY:Lo/L9;

    .line 186
    :goto_2
    if-eqz v4, :cond_7

    .line 188
    invoke-virtual {v4}, Lo/L9;->a()Lo/M9;

    .line 191
    move-result-object v5

    .line 192
    iget-object v6, p0, Landroidx/lifecycle/a;->h:Ljava/util/ArrayList;

    .line 194
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 197
    invoke-virtual {v1, v0, v4}, Lo/S9;->a(Lo/R9;Lo/L9;)V

    .line 200
    iget-object v4, p0, Landroidx/lifecycle/a;->h:Ljava/util/ArrayList;

    .line 202
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 205
    move-result v5

    .line 206
    add-int/lit8 v5, v5, -0x1

    .line 208
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 211
    goto :goto_1

    .line 212
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 214
    new-instance v2, Ljava/lang/StringBuilder;

    .line 216
    const-string v3, "no event down from "

    .line 218
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 221
    iget-object v1, v1, Lo/S9;->a:Lo/M9;

    .line 223
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 226
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 229
    move-result-object v1

    .line 230
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 233
    throw v0

    .line 234
    :cond_8
    iget-object v1, p0, Landroidx/lifecycle/a;->b:Lo/p7;

    .line 236
    iget-object v1, v1, Lo/me;->b:Lo/je;

    .line 238
    iget-boolean v2, p0, Landroidx/lifecycle/a;->g:Z

    .line 240
    if-nez v2, :cond_0

    .line 242
    if-eqz v1, :cond_0

    .line 244
    iget-object v2, p0, Landroidx/lifecycle/a;->c:Lo/M9;

    .line 246
    iget-object v1, v1, Lo/je;->b:Ljava/lang/Object;

    .line 248
    check-cast v1, Lo/S9;

    .line 250
    iget-object v1, v1, Lo/S9;->a:Lo/M9;

    .line 252
    invoke-virtual {v2, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 255
    move-result v1

    .line 256
    if-lez v1, :cond_0

    .line 258
    iget-object v1, p0, Landroidx/lifecycle/a;->b:Lo/p7;

    .line 260
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 263
    new-instance v2, Lo/ke;

    .line 265
    invoke-direct {v2, v1}, Lo/ke;-><init>(Lo/me;)V

    .line 268
    iget-object v1, v1, Lo/me;->c:Ljava/util/WeakHashMap;

    .line 270
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 272
    invoke-virtual {v1, v2, v3}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    :cond_9
    invoke-virtual {v2}, Lo/ke;->hasNext()Z

    .line 278
    move-result v1

    .line 279
    if-eqz v1, :cond_0

    .line 281
    iget-boolean v1, p0, Landroidx/lifecycle/a;->g:Z

    .line 283
    if-nez v1, :cond_0

    .line 285
    invoke-virtual {v2}, Lo/ke;->next()Ljava/lang/Object;

    .line 288
    move-result-object v1

    .line 289
    check-cast v1, Ljava/util/Map$Entry;

    .line 291
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 294
    move-result-object v3

    .line 295
    check-cast v3, Lo/Q9;

    .line 297
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 300
    move-result-object v1

    .line 301
    check-cast v1, Lo/S9;

    .line 303
    :goto_3
    iget-object v4, v1, Lo/S9;->a:Lo/M9;

    .line 305
    iget-object v5, p0, Landroidx/lifecycle/a;->c:Lo/M9;

    .line 307
    invoke-virtual {v4, v5}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 310
    move-result v4

    .line 311
    if-gez v4, :cond_9

    .line 313
    iget-boolean v4, p0, Landroidx/lifecycle/a;->g:Z

    .line 315
    if-nez v4, :cond_9

    .line 317
    iget-object v4, p0, Landroidx/lifecycle/a;->b:Lo/p7;

    .line 319
    iget-object v4, v4, Lo/p7;->e:Ljava/util/HashMap;

    .line 321
    invoke-virtual {v4, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 324
    move-result v4

    .line 325
    if-eqz v4, :cond_9

    .line 327
    iget-object v4, v1, Lo/S9;->a:Lo/M9;

    .line 329
    iget-object v5, p0, Landroidx/lifecycle/a;->h:Ljava/util/ArrayList;

    .line 331
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 334
    sget-object v4, Lo/L9;->Companion:Lo/J9;

    .line 336
    iget-object v5, v1, Lo/S9;->a:Lo/M9;

    .line 338
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 341
    invoke-static {v5}, Lo/J9;->a(Lo/M9;)Lo/L9;

    .line 344
    move-result-object v4

    .line 345
    if-eqz v4, :cond_a

    .line 347
    invoke-virtual {v1, v0, v4}, Lo/S9;->a(Lo/R9;Lo/L9;)V

    .line 350
    iget-object v4, p0, Landroidx/lifecycle/a;->h:Ljava/util/ArrayList;

    .line 352
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 355
    move-result v5

    .line 356
    add-int/lit8 v5, v5, -0x1

    .line 358
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 361
    goto :goto_3

    .line 362
    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 364
    new-instance v2, Ljava/lang/StringBuilder;

    .line 366
    const-string v3, "no event up from "

    .line 368
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 371
    iget-object v1, v1, Lo/S9;->a:Lo/M9;

    .line 373
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 376
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 379
    move-result-object v1

    .line 380
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 383
    throw v0

    .line 384
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 386
    const-string v1, "LifecycleOwner of this LifecycleRegistry is already garbage collected. It is too late to change lifecycle state."

    .line 388
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 391
    throw v0
.end method
