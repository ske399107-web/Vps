.class public abstract Lo/T9;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/HashMap;

.field public static final b:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 6
    sput-object v0, Lo/T9;->a:Ljava/util/HashMap;

    .line 8
    new-instance v0, Ljava/util/HashMap;

    .line 10
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 13
    sput-object v0, Lo/T9;->b:Ljava/util/HashMap;

    .line 15
    return-void
.end method

.method public static a(Ljava/lang/reflect/Constructor;Lo/Q9;)V
    .locals 0

    .line 1
    :try_start_0
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0, p1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    move-result-object p0

    .line 9
    const-string p1, "{\n            constructo\u2026tance(`object`)\n        }"

    .line 11
    invoke-static {p0, p1}, Lo/x9;->n(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    new-instance p0, Ljava/lang/ClassCastException;

    .line 16
    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    .line 19
    throw p0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    :catch_0
    move-exception p0

    .line 21
    goto :goto_0

    .line 22
    :catch_1
    move-exception p0

    .line 23
    goto :goto_1

    .line 24
    :catch_2
    move-exception p0

    .line 25
    goto :goto_2

    .line 26
    :goto_0
    new-instance p1, Ljava/lang/RuntimeException;

    .line 28
    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 31
    throw p1

    .line 32
    :goto_1
    new-instance p1, Ljava/lang/RuntimeException;

    .line 34
    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 37
    throw p1

    .line 38
    :goto_2
    new-instance p1, Ljava/lang/RuntimeException;

    .line 40
    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 43
    throw p1
.end method

.method public static final b(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    const-string v1, "."

    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-static {p0, v1, v2, v2}, Lo/tf;->F0(Ljava/lang/String;Ljava/lang/String;IZ)I

    .line 12
    move-result v3

    .line 13
    if-gez v3, :cond_0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 19
    move-result v4

    .line 20
    if-ltz v4, :cond_3

    .line 22
    new-instance v5, Ljava/lang/StringBuilder;

    .line 24
    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 27
    move v4, v2

    .line 28
    :cond_1
    invoke-virtual {v5, p0, v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 31
    const-string v4, "_"

    .line 33
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    add-int/lit8 v4, v3, 0x1

    .line 38
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 41
    move-result v6

    .line 42
    if-ge v3, v6, :cond_2

    .line 44
    invoke-static {p0, v1, v4, v2}, Lo/tf;->F0(Ljava/lang/String;Ljava/lang/String;IZ)I

    .line 47
    move-result v3

    .line 48
    if-gtz v3, :cond_1

    .line 50
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 53
    move-result v1

    .line 54
    invoke-virtual {v5, p0, v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 57
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    move-result-object p0

    .line 61
    const-string v1, "toString(...)"

    .line 63
    invoke-static {p0, v1}, Lo/x9;->n(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    :goto_0
    const-string v1, "_LifecycleAdapter"

    .line 68
    invoke-static {v0, p0, v1}, Lo/Ve;->k(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 71
    move-result-object p0

    .line 72
    return-object p0

    .line 73
    :cond_3
    new-instance p0, Ljava/lang/OutOfMemoryError;

    .line 75
    invoke-direct {p0}, Ljava/lang/OutOfMemoryError;-><init>()V

    .line 78
    throw p0
.end method

.method public static c(Ljava/lang/Class;)I
    .locals 13

    .line 1
    sget-object v0, Lo/T9;->a:Ljava/util/HashMap;

    .line 3
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object v1

    .line 7
    check-cast v1, Ljava/lang/Integer;

    .line 9
    if-eqz v1, :cond_0

    .line 11
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 14
    move-result p0

    .line 15
    return p0

    .line 16
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 19
    move-result-object v1

    .line 20
    const/4 v2, 0x1

    .line 21
    if-nez v1, :cond_1

    .line 23
    goto/16 :goto_c

    .line 25
    :cond_1
    const/4 v1, 0x0

    .line 26
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    .line 29
    move-result-object v3

    .line 30
    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 33
    move-result-object v4

    .line 34
    if-eqz v3, :cond_2

    .line 36
    invoke-virtual {v3}, Ljava/lang/Package;->getName()Ljava/lang/String;

    .line 39
    move-result-object v3

    .line 40
    goto :goto_0

    .line 41
    :catch_0
    move-exception p0

    .line 42
    goto :goto_3

    .line 43
    :cond_2
    const-string v3, ""

    .line 45
    :goto_0
    const-string v5, "fullPackage"

    .line 47
    invoke-static {v3, v5}, Lo/x9;->n(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 53
    move-result v5

    .line 54
    if-nez v5, :cond_3

    .line 56
    goto :goto_1

    .line 57
    :cond_3
    const-string v5, "name"

    .line 59
    invoke-static {v4, v5}, Lo/x9;->n(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 65
    move-result v5

    .line 66
    add-int/2addr v5, v2

    .line 67
    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 70
    move-result-object v4

    .line 71
    const-string v5, "this as java.lang.String).substring(startIndex)"

    .line 73
    invoke-static {v4, v5}, Lo/x9;->n(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    :goto_1
    const-string v5, "if (fullPackage.isEmpty(\u2026g(fullPackage.length + 1)"

    .line 78
    invoke-static {v4, v5}, Lo/x9;->n(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    invoke-static {v4}, Lo/T9;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 84
    move-result-object v4

    .line 85
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 88
    move-result v5

    .line 89
    if-nez v5, :cond_4

    .line 91
    goto :goto_2

    .line 92
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    .line 94
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 97
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    const/16 v3, 0x2e

    .line 102
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 105
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    move-result-object v4

    .line 112
    :goto_2
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 115
    move-result-object v3

    .line 116
    filled-new-array {p0}, [Ljava/lang/Class;

    .line 119
    move-result-object v4

    .line 120
    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 123
    move-result-object v3

    .line 124
    invoke-virtual {v3}, Ljava/lang/reflect/AccessibleObject;->isAccessible()Z

    .line 127
    move-result v4

    .line 128
    if-nez v4, :cond_5

    .line 130
    invoke-virtual {v3, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    goto :goto_4

    .line 134
    :goto_3
    new-instance v0, Ljava/lang/RuntimeException;

    .line 136
    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 139
    throw v0

    .line 140
    :catch_1
    move-object v3, v1

    .line 141
    :cond_5
    :goto_4
    sget-object v4, Lo/T9;->b:Ljava/util/HashMap;

    .line 143
    const/4 v5, 0x2

    .line 144
    if-eqz v3, :cond_6

    .line 146
    invoke-static {v3}, Lo/L1;->H(Ljava/lang/Object;)Ljava/util/List;

    .line 149
    move-result-object v1

    .line 150
    invoke-virtual {v4, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    :goto_5
    move v2, v5

    .line 154
    goto/16 :goto_c

    .line 156
    :cond_6
    sget-object v3, Lo/V3;->c:Lo/V3;

    .line 158
    iget-object v6, v3, Lo/V3;->b:Ljava/util/HashMap;

    .line 160
    invoke-virtual {v6, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    move-result-object v7

    .line 164
    check-cast v7, Ljava/lang/Boolean;

    .line 166
    const/4 v8, 0x0

    .line 167
    if-eqz v7, :cond_7

    .line 169
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    .line 172
    move-result v3

    .line 173
    goto :goto_7

    .line 174
    :cond_7
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    .line 177
    move-result-object v7
    :try_end_1
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_1 .. :try_end_1} :catch_2

    .line 178
    array-length v9, v7

    .line 179
    move v10, v8

    .line 180
    :goto_6
    if-ge v10, v9, :cond_9

    .line 182
    aget-object v11, v7, v10

    .line 184
    const-class v12, Lo/oc;

    .line 186
    invoke-virtual {v11, v12}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 189
    move-result-object v11

    .line 190
    check-cast v11, Lo/oc;

    .line 192
    if-eqz v11, :cond_8

    .line 194
    invoke-virtual {v3, p0, v7}, Lo/V3;->a(Ljava/lang/Class;[Ljava/lang/reflect/Method;)Lo/T3;

    .line 197
    move v3, v2

    .line 198
    goto :goto_7

    .line 199
    :cond_8
    add-int/lit8 v10, v10, 0x1

    .line 201
    goto :goto_6

    .line 202
    :cond_9
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 204
    invoke-virtual {v6, p0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    move v3, v8

    .line 208
    :goto_7
    if-eqz v3, :cond_a

    .line 210
    goto/16 :goto_c

    .line 212
    :cond_a
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    .line 215
    move-result-object v3

    .line 216
    const-class v6, Lo/Q9;

    .line 218
    if-eqz v3, :cond_b

    .line 220
    invoke-virtual {v6, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 223
    move-result v7

    .line 224
    if-eqz v7, :cond_b

    .line 226
    move v7, v2

    .line 227
    goto :goto_8

    .line 228
    :cond_b
    move v7, v8

    .line 229
    :goto_8
    if-eqz v7, :cond_d

    .line 231
    const-string v1, "superclass"

    .line 233
    invoke-static {v3, v1}, Lo/x9;->n(Ljava/lang/Object;Ljava/lang/String;)V

    .line 236
    invoke-static {v3}, Lo/T9;->c(Ljava/lang/Class;)I

    .line 239
    move-result v1

    .line 240
    if-ne v1, v2, :cond_c

    .line 242
    goto :goto_c

    .line 243
    :cond_c
    new-instance v1, Ljava/util/ArrayList;

    .line 245
    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    move-result-object v3

    .line 249
    invoke-static {v3}, Lo/x9;->l(Ljava/lang/Object;)V

    .line 252
    check-cast v3, Ljava/util/Collection;

    .line 254
    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 257
    :cond_d
    invoke-virtual {p0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    .line 260
    move-result-object v3

    .line 261
    const-string v7, "klass.interfaces"

    .line 263
    invoke-static {v3, v7}, Lo/x9;->n(Ljava/lang/Object;Ljava/lang/String;)V

    .line 266
    array-length v7, v3

    .line 267
    move v9, v8

    .line 268
    :goto_9
    if-ge v9, v7, :cond_12

    .line 270
    aget-object v10, v3, v9

    .line 272
    if-eqz v10, :cond_e

    .line 274
    invoke-virtual {v6, v10}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 277
    move-result v11

    .line 278
    if-eqz v11, :cond_e

    .line 280
    move v11, v2

    .line 281
    goto :goto_a

    .line 282
    :cond_e
    move v11, v8

    .line 283
    :goto_a
    if-nez v11, :cond_f

    .line 285
    goto :goto_b

    .line 286
    :cond_f
    const-string v11, "intrface"

    .line 288
    invoke-static {v10, v11}, Lo/x9;->n(Ljava/lang/Object;Ljava/lang/String;)V

    .line 291
    invoke-static {v10}, Lo/T9;->c(Ljava/lang/Class;)I

    .line 294
    move-result v11

    .line 295
    if-ne v11, v2, :cond_10

    .line 297
    goto :goto_c

    .line 298
    :cond_10
    if-nez v1, :cond_11

    .line 300
    new-instance v1, Ljava/util/ArrayList;

    .line 302
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 305
    :cond_11
    invoke-virtual {v4, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    move-result-object v10

    .line 309
    invoke-static {v10}, Lo/x9;->l(Ljava/lang/Object;)V

    .line 312
    check-cast v10, Ljava/util/Collection;

    .line 314
    invoke-interface {v1, v10}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 317
    :goto_b
    add-int/lit8 v9, v9, 0x1

    .line 319
    goto :goto_9

    .line 320
    :cond_12
    if-eqz v1, :cond_13

    .line 322
    invoke-virtual {v4, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    goto/16 :goto_5

    .line 327
    :cond_13
    :goto_c
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 330
    move-result-object v1

    .line 331
    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    return v2

    .line 335
    :catch_2
    move-exception p0

    .line 336
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 338
    const-string v1, "The observer class has some methods that use newer APIs which are not available in the current OS version. Lifecycles cannot access even other methods so you should make sure that your observer classes only access framework classes that are available in your min API level OR use lifecycle:compiler annotation processor."

    .line 340
    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 343
    throw v0
.end method
