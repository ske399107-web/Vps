.class public final Lo/gc;
.super Lo/F9;
.source "SourceFile"

# interfaces
.implements Lo/u8;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lo/gc;->a:I

    iput-object p2, p0, Lo/gc;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 9

    .line 1
    iget v0, p0, Lo/gc;->a:I

    .line 3
    packed-switch v0, :pswitch_data_0

    .line 6
    iget-object v0, p0, Lo/gc;->b:Ljava/lang/Object;

    .line 8
    check-cast v0, Lo/Mh;

    .line 10
    new-instance v1, Ljava/util/ArrayList;

    .line 12
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 15
    sget-object v2, Lo/Ld;->a:Lo/Md;

    .line 17
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    new-instance v2, Lo/S3;

    .line 22
    const-class v3, Lo/pe;

    .line 24
    invoke-direct {v2, v3}, Lo/S3;-><init>(Ljava/lang/Class;)V

    .line 27
    new-instance v4, Lo/Kh;

    .line 29
    invoke-interface {v2}, Lo/R3;->a()Ljava/lang/Class;

    .line 32
    move-result-object v2

    .line 33
    const-string v5, "null cannot be cast to non-null type java.lang.Class<T of kotlin.jvm.JvmClassMappingKt.<get-java>>"

    .line 35
    invoke-static {v2, v5}, Lo/x9;->m(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    invoke-direct {v4, v2}, Lo/Kh;-><init>(Ljava/lang/Class;)V

    .line 41
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    const/4 v2, 0x0

    .line 45
    new-array v4, v2, [Lo/Kh;

    .line 47
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 50
    move-result-object v1

    .line 51
    check-cast v1, [Lo/Kh;

    .line 53
    array-length v4, v1

    .line 54
    invoke-static {v1, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 57
    move-result-object v1

    .line 58
    check-cast v1, [Lo/Kh;

    .line 60
    const-string v4, "initializers"

    .line 62
    invoke-static {v1, v4}, Lo/x9;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    invoke-interface {v0}, Lo/Mh;->d()Lo/Lh;

    .line 68
    move-result-object v4

    .line 69
    instance-of v5, v0, Lo/Z8;

    .line 71
    if-eqz v5, :cond_0

    .line 73
    check-cast v0, Lo/Z8;

    .line 75
    invoke-interface {v0}, Lo/Z8;->a()Lo/Pb;

    .line 78
    move-result-object v0

    .line 79
    goto :goto_0

    .line 80
    :cond_0
    sget-object v0, Lo/e5;->b:Lo/e5;

    .line 82
    :goto_0
    const-string v5, "store"

    .line 84
    invoke-static {v4, v5}, Lo/x9;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    const-string v5, "defaultCreationExtras"

    .line 89
    invoke-static {v0, v5}, Lo/x9;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    iget-object v4, v4, Lo/Lh;->a:Ljava/util/LinkedHashMap;

    .line 94
    const-string v5, "androidx.lifecycle.internal.SavedStateHandlesVM"

    .line 96
    invoke-virtual {v4, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    move-result-object v6

    .line 100
    check-cast v6, Lo/Jh;

    .line 102
    invoke-virtual {v3, v6}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 105
    move-result v7

    .line 106
    if-eqz v7, :cond_1

    .line 108
    const-string v0, "null cannot be cast to non-null type T of androidx.lifecycle.ViewModelProvider.get"

    .line 110
    invoke-static {v6, v0}, Lo/x9;->m(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    goto :goto_2

    .line 114
    :cond_1
    new-instance v6, Lo/Pb;

    .line 116
    invoke-direct {v6, v0}, Lo/Pb;-><init>(Lo/f5;)V

    .line 119
    sget-object v0, Lo/u6;->e:Lo/u6;

    .line 121
    iget-object v7, v6, Lo/f5;->a:Ljava/util/LinkedHashMap;

    .line 123
    invoke-interface {v7, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    :try_start_0
    array-length v0, v1

    .line 127
    const/4 v7, 0x0

    .line 128
    :goto_1
    if-ge v2, v0, :cond_3

    .line 130
    aget-object v8, v1, v2

    .line 132
    iget-object v8, v8, Lo/Kh;->a:Ljava/lang/Class;

    .line 134
    invoke-virtual {v8, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 137
    move-result v8

    .line 138
    if-eqz v8, :cond_2

    .line 140
    sget-object v7, Lo/ne;->a:Lo/ne;

    .line 142
    invoke-virtual {v7, v6}, Lo/ne;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    move-result-object v7

    .line 146
    check-cast v7, Lo/Jh;
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 150
    goto :goto_1

    .line 151
    :cond_3
    if-eqz v7, :cond_5

    .line 153
    invoke-interface {v4, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    move-result-object v0

    .line 157
    check-cast v0, Lo/Jh;

    .line 159
    if-eqz v0, :cond_4

    .line 161
    invoke-virtual {v0}, Lo/Jh;->a()V

    .line 164
    :cond_4
    move-object v6, v7

    .line 165
    :goto_2
    check-cast v6, Lo/pe;

    .line 167
    return-object v6

    .line 168
    :cond_5
    :try_start_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 170
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 173
    move-result-object v1

    .line 174
    const-string v2, "No initializer set for given class "

    .line 176
    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 179
    move-result-object v1

    .line 180
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 183
    throw v0
    :try_end_1
    .catch Ljava/lang/AbstractMethodError; {:try_start_1 .. :try_end_1} :catch_0

    .line 184
    :catch_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 186
    const-string v1, "Factory.create(String) is unsupported.  This Factory requires `CreationExtras` to be passed into `create` method."

    .line 188
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 191
    throw v0

    .line 192
    :pswitch_0
    iget-object v0, p0, Lo/gc;->b:Ljava/lang/Object;

    .line 194
    check-cast v0, Landroidx/activity/b;

    .line 196
    invoke-virtual {v0}, Landroidx/activity/b;->b()V

    .line 199
    sget-object v0, Lo/Ug;->a:Lo/Ug;

    .line 201
    return-object v0

    .line 202
    :pswitch_1
    iget-object v0, p0, Lo/gc;->b:Ljava/lang/Object;

    .line 204
    check-cast v0, Landroidx/activity/b;

    .line 206
    iget-object v1, v0, Landroidx/activity/b;->b:Lo/x2;

    .line 208
    invoke-virtual {v1}, Lo/x2;->size()I

    .line 211
    move-result v2

    .line 212
    invoke-virtual {v1, v2}, Ljava/util/AbstractList;->listIterator(I)Ljava/util/ListIterator;

    .line 215
    move-result-object v1

    .line 216
    :cond_6
    invoke-interface {v1}, Ljava/util/ListIterator;->hasPrevious()Z

    .line 219
    move-result v2

    .line 220
    const/4 v3, 0x0

    .line 221
    if-eqz v2, :cond_7

    .line 223
    invoke-interface {v1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 226
    move-result-object v2

    .line 227
    move-object v4, v2

    .line 228
    check-cast v4, Lo/b8;

    .line 230
    iget-boolean v4, v4, Lo/b8;->a:Z

    .line 232
    if-eqz v4, :cond_6

    .line 234
    goto :goto_3

    .line 235
    :cond_7
    move-object v2, v3

    .line 236
    :goto_3
    check-cast v2, Lo/b8;

    .line 238
    iput-object v3, v0, Landroidx/activity/b;->c:Lo/b8;

    .line 240
    sget-object v0, Lo/Ug;->a:Lo/Ug;

    .line 242
    return-object v0

    .line 243
    :pswitch_2
    iget-object v0, p0, Lo/gc;->b:Ljava/lang/Object;

    .line 245
    check-cast v0, Landroidx/activity/b;

    .line 247
    invoke-virtual {v0}, Landroidx/activity/b;->b()V

    .line 250
    sget-object v0, Lo/Ug;->a:Lo/Ug;

    .line 252
    return-object v0

    .line 253
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
