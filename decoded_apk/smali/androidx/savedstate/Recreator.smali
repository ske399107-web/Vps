.class public final Landroidx/savedstate/Recreator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo/P9;


# instance fields
.field public final a:Lo/te;


# direct methods
.method public constructor <init>(Lo/te;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Landroidx/savedstate/Recreator;->a:Lo/te;

    .line 6
    return-void
.end method


# virtual methods
.method public final b(Lo/R9;Lo/L9;)V
    .locals 10

    .line 1
    sget-object v0, Lo/L9;->ON_CREATE:Lo/L9;

    .line 3
    if-ne p2, v0, :cond_b

    .line 5
    invoke-interface {p1}, Lo/R9;->e()Landroidx/lifecycle/a;

    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p1, p0}, Landroidx/lifecycle/a;->f(Lo/Q9;)V

    .line 12
    iget-object p1, p0, Landroidx/savedstate/Recreator;->a:Lo/te;

    .line 14
    invoke-interface {p1}, Lo/te;->b()Lo/b1;

    .line 17
    move-result-object p1

    .line 18
    const-string p2, "androidx.savedstate.Restarter"

    .line 20
    invoke-virtual {p1, p2}, Lo/b1;->c(Ljava/lang/String;)Landroid/os/Bundle;

    .line 23
    move-result-object p1

    .line 24
    if-nez p1, :cond_0

    .line 26
    return-void

    .line 27
    :cond_0
    const-string p2, "classes_to_restore"

    .line 29
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 32
    move-result-object p1

    .line 33
    if-eqz p1, :cond_a

    .line 35
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 38
    move-result-object p1

    .line 39
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 42
    move-result p2

    .line 43
    if-eqz p2, :cond_9

    .line 45
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 48
    move-result-object p2

    .line 49
    check-cast p2, Ljava/lang/String;

    .line 51
    :try_start_0
    const-class v0, Landroidx/savedstate/Recreator;

    .line 53
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 56
    move-result-object v0

    .line 57
    const/4 v1, 0x0

    .line 58
    invoke-static {p2, v1, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    .line 61
    move-result-object v0

    .line 62
    const-class v2, Lo/re;

    .line 64
    invoke-virtual {v0, v2}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    .line 67
    move-result-object v0

    .line 68
    const-string v2, "{\n                Class.\u2026class.java)\n            }"

    .line 70
    invoke-static {v0, v2}, Lo/x9;->n(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3

    .line 73
    :try_start_1
    new-array v2, v1, [Ljava/lang/Class;

    .line 75
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 78
    move-result-object v0
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_2

    .line 79
    const/4 v2, 0x1

    .line 80
    invoke-virtual {v0, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 83
    :try_start_2
    new-array v3, v1, [Ljava/lang/Object;

    .line 85
    invoke-virtual {v0, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    move-result-object v0

    .line 89
    const-string v3, "{\n                constr\u2026wInstance()\n            }"

    .line 91
    invoke-static {v0, v3}, Lo/x9;->n(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    check-cast v0, Lo/re;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 96
    iget-object p2, p0, Landroidx/savedstate/Recreator;->a:Lo/te;

    .line 98
    instance-of v0, p2, Lo/Mh;

    .line 100
    if-eqz v0, :cond_8

    .line 102
    move-object v0, p2

    .line 103
    check-cast v0, Lo/Mh;

    .line 105
    invoke-interface {v0}, Lo/Mh;->d()Lo/Lh;

    .line 108
    move-result-object v0

    .line 109
    invoke-interface {p2}, Lo/te;->b()Lo/b1;

    .line 112
    move-result-object v3

    .line 113
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 116
    new-instance v4, Ljava/util/HashSet;

    .line 118
    iget-object v5, v0, Lo/Lh;->a:Ljava/util/LinkedHashMap;

    .line 120
    invoke-virtual {v5}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    .line 123
    move-result-object v5

    .line 124
    invoke-direct {v4, v5}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 127
    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 130
    move-result-object v4

    .line 131
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 134
    move-result v5

    .line 135
    if-eqz v5, :cond_5

    .line 137
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 140
    move-result-object v5

    .line 141
    check-cast v5, Ljava/lang/String;

    .line 143
    const-string v6, "key"

    .line 145
    invoke-static {v5, v6}, Lo/x9;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 148
    iget-object v6, v0, Lo/Lh;->a:Ljava/util/LinkedHashMap;

    .line 150
    invoke-virtual {v6, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    move-result-object v5

    .line 154
    check-cast v5, Lo/Jh;

    .line 156
    invoke-static {v5}, Lo/x9;->l(Ljava/lang/Object;)V

    .line 159
    invoke-interface {p2}, Lo/R9;->e()Landroidx/lifecycle/a;

    .line 162
    move-result-object v6

    .line 163
    const-string v7, "registry"

    .line 165
    invoke-static {v3, v7}, Lo/x9;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 168
    const-string v7, "lifecycle"

    .line 170
    invoke-static {v6, v7}, Lo/x9;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 173
    const-string v7, "androidx.lifecycle.savedstate.vm.tag"

    .line 175
    iget-object v8, v5, Lo/Jh;->a:Ljava/util/HashMap;

    .line 177
    const/4 v9, 0x0

    .line 178
    if-nez v8, :cond_3

    .line 180
    move-object v5, v9

    .line 181
    goto :goto_1

    .line 182
    :cond_3
    monitor-enter v8

    .line 183
    :try_start_3
    iget-object v5, v5, Lo/Jh;->a:Ljava/util/HashMap;

    .line 185
    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    move-result-object v5

    .line 189
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 190
    :goto_1
    check-cast v5, Landroidx/lifecycle/SavedStateHandleController;

    .line 192
    if-eqz v5, :cond_2

    .line 194
    iget-boolean v7, v5, Landroidx/lifecycle/SavedStateHandleController;->a:Z

    .line 196
    if-nez v7, :cond_2

    .line 198
    if-eqz v7, :cond_4

    .line 200
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 202
    const-string p2, "Already attached to lifecycleOwner"

    .line 204
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 207
    throw p1

    .line 208
    :cond_4
    iput-boolean v2, v5, Landroidx/lifecycle/SavedStateHandleController;->a:Z

    .line 210
    invoke-virtual {v6, v5}, Landroidx/lifecycle/a;->a(Lo/Q9;)V

    .line 213
    throw v9

    .line 214
    :catchall_0
    move-exception p1

    .line 215
    :try_start_4
    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 216
    throw p1

    .line 217
    :cond_5
    new-instance p2, Ljava/util/HashSet;

    .line 219
    iget-object v0, v0, Lo/Lh;->a:Ljava/util/LinkedHashMap;

    .line 221
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    .line 224
    move-result-object v0

    .line 225
    invoke-direct {p2, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 228
    invoke-virtual {p2}, Ljava/util/HashSet;->isEmpty()Z

    .line 231
    move-result p2

    .line 232
    if-nez p2, :cond_1

    .line 234
    const-class p2, Lo/I9;

    .line 236
    iget-boolean v0, v3, Lo/b1;->e:Z

    .line 238
    if-eqz v0, :cond_7

    .line 240
    iget-object v0, v3, Lo/b1;->b:Ljava/lang/Object;

    .line 242
    check-cast v0, Lo/S0;

    .line 244
    if-nez v0, :cond_6

    .line 246
    new-instance v0, Lo/S0;

    .line 248
    invoke-direct {v0, v3}, Lo/S0;-><init>(Lo/b1;)V

    .line 251
    :cond_6
    iput-object v0, v3, Lo/b1;->b:Ljava/lang/Object;

    .line 253
    :try_start_5
    new-array v0, v1, [Ljava/lang/Class;

    .line 255
    invoke-virtual {p2, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    :try_end_5
    .catch Ljava/lang/NoSuchMethodException; {:try_start_5 .. :try_end_5} :catch_0

    .line 258
    iget-object v0, v3, Lo/b1;->b:Ljava/lang/Object;

    .line 260
    check-cast v0, Lo/S0;

    .line 262
    if-eqz v0, :cond_1

    .line 264
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 267
    move-result-object p2

    .line 268
    iget-object v0, v0, Lo/S0;->b:Ljava/lang/Object;

    .line 270
    check-cast v0, Ljava/util/LinkedHashSet;

    .line 272
    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 275
    goto/16 :goto_0

    .line 277
    :catch_0
    move-exception p1

    .line 278
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 280
    new-instance v1, Ljava/lang/StringBuilder;

    .line 282
    const-string v2, "Class "

    .line 284
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 287
    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 290
    move-result-object p2

    .line 291
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    const-string p2, " must have default constructor in order to be automatically recreated"

    .line 296
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 302
    move-result-object p2

    .line 303
    invoke-direct {v0, p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 306
    throw v0

    .line 307
    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 309
    const-string p2, "Can not perform this action after onSaveInstanceState"

    .line 311
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 314
    throw p1

    .line 315
    :cond_8
    const-string p1, "Internal error: OnRecreation should be registered only on components that implement ViewModelStoreOwner"

    .line 317
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 319
    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 322
    throw p2

    .line 323
    :catch_1
    move-exception p1

    .line 324
    new-instance v0, Ljava/lang/RuntimeException;

    .line 326
    const-string v1, "Failed to instantiate "

    .line 328
    invoke-static {v1, p2}, Lo/Ve;->y(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 331
    move-result-object p2

    .line 332
    invoke-direct {v0, p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 335
    throw v0

    .line 336
    :catch_2
    move-exception p1

    .line 337
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 339
    new-instance v1, Ljava/lang/StringBuilder;

    .line 341
    const-string v2, "Class "

    .line 343
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 346
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 349
    move-result-object v0

    .line 350
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    const-string v0, " must have default constructor in order to be automatically recreated"

    .line 355
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 358
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 361
    move-result-object v0

    .line 362
    invoke-direct {p2, v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 365
    throw p2

    .line 366
    :catch_3
    move-exception p1

    .line 367
    new-instance v0, Ljava/lang/RuntimeException;

    .line 369
    const-string v1, "Class "

    .line 371
    const-string v2, " wasn\'t found"

    .line 373
    invoke-static {v1, p2, v2}, Lo/o5;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 376
    move-result-object p2

    .line 377
    invoke-direct {v0, p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 380
    throw v0

    .line 381
    :cond_9
    return-void

    .line 382
    :cond_a
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 384
    const-string p2, "Bundle with restored state for the component \"androidx.savedstate.Restarter\" must contain list of strings by the key \"classes_to_restore\""

    .line 386
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 389
    throw p1

    .line 390
    :cond_b
    new-instance p1, Ljava/lang/AssertionError;

    .line 392
    const-string p2, "Next event must be ON_CREATE"

    .line 394
    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 397
    throw p1
.end method
