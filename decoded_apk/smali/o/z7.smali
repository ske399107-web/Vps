.class public abstract Lo/z7;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lo/Ba;

.field public static final b:Lo/x7;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lo/Ba;

    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-direct {v0, v1}, Lo/Ba;-><init>(I)V

    .line 7
    sput-object v0, Lo/z7;->a:Lo/Ba;

    .line 9
    new-instance v0, Lo/x7;

    .line 11
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 14
    sput-object v0, Lo/z7;->b:Lo/x7;

    .line 16
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/util/List;)Lo/I0;
    .locals 5

    .line 1
    const-string v0, "FontProvider.getFontFamilyResult"

    .line 3
    invoke-static {v0}, Lo/Ha;->a(Ljava/lang/String;)V

    .line 6
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    .line 8
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 11
    const/4 v1, 0x0

    .line 12
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 15
    move-result v2

    .line 16
    if-ge v1, v2, :cond_1

    .line 18
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 21
    move-result-object v2

    .line 22
    check-cast v2, Lo/A7;

    .line 24
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 27
    move-result-object v3

    .line 28
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 31
    move-result-object v4

    .line 32
    invoke-static {v3, v2, v4}, Lo/z7;->b(Landroid/content/pm/PackageManager;Lo/A7;Landroid/content/res/Resources;)Landroid/content/pm/ProviderInfo;

    .line 35
    move-result-object v3

    .line 36
    if-nez v3, :cond_0

    .line 38
    new-instance p0, Lo/I0;

    .line 40
    invoke-direct {p0}, Lo/I0;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 46
    return-object p0

    .line 47
    :cond_0
    :try_start_1
    iget-object v3, v3, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    .line 49
    invoke-static {p0, v2, v3}, Lo/z7;->c(Landroid/content/Context;Lo/A7;Ljava/lang/String;)[Lo/L7;

    .line 52
    move-result-object v2

    .line 53
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    add-int/lit8 v1, v1, 0x1

    .line 58
    goto :goto_0

    .line 59
    :catchall_0
    move-exception p0

    .line 60
    goto :goto_1

    .line 61
    :cond_1
    new-instance p0, Lo/I0;

    .line 63
    invoke-direct {p0, v0}, Lo/I0;-><init>(Ljava/util/ArrayList;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 66
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 69
    return-object p0

    .line 70
    :goto_1
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 73
    throw p0
.end method

.method public static b(Landroid/content/pm/PackageManager;Lo/A7;Landroid/content/res/Resources;)Landroid/content/pm/ProviderInfo;
    .locals 9

    .line 1
    const-string v0, "Found content provider "

    .line 3
    const-string v1, "No package found for authority: "

    .line 5
    const-string v2, "FontProvider.getProvider"

    .line 7
    invoke-static {v2}, Lo/Ha;->a(Ljava/lang/String;)V

    .line 10
    :try_start_0
    iget-object v2, p1, Lo/A7;->d:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    iget-object v3, p1, Lo/A7;->a:Ljava/lang/String;

    .line 14
    iget-object p1, p1, Lo/A7;->b:Ljava/lang/String;

    .line 16
    const/4 v4, 0x0

    .line 17
    if-eqz v2, :cond_0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    :try_start_1
    invoke-static {p2, v4}, Lo/L1;->S(Landroid/content/res/Resources;I)Ljava/util/List;

    .line 23
    move-result-object v2

    .line 24
    :goto_0
    new-instance p2, Lo/y7;

    .line 26
    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object v3, p2, Lo/y7;->a:Ljava/lang/String;

    .line 31
    iput-object p1, p2, Lo/y7;->b:Ljava/lang/String;

    .line 33
    iput-object v2, p2, Lo/y7;->c:Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 35
    sget-object v5, Lo/z7;->a:Lo/Ba;

    .line 37
    :try_start_2
    invoke-virtual {v5, p2}, Lo/Ba;->f(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    move-result-object v6

    .line 41
    check-cast v6, Landroid/content/pm/ProviderInfo;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 43
    if-eqz v6, :cond_1

    .line 45
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 48
    return-object v6

    .line 49
    :cond_1
    :try_start_3
    invoke-virtual {p0, v3, v4}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    .line 52
    move-result-object v6

    .line 53
    if-eqz v6, :cond_8

    .line 55
    iget-object v1, v6, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    .line 57
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 60
    move-result v1

    .line 61
    if-eqz v1, :cond_7

    .line 63
    iget-object p1, v6, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    .line 65
    const/16 v0, 0x40

    .line 67
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 70
    move-result-object p0

    .line 71
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 73
    new-instance p1, Ljava/util/ArrayList;

    .line 75
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 78
    array-length v0, p0

    .line 79
    move v1, v4

    .line 80
    :goto_1
    if-ge v1, v0, :cond_2

    .line 82
    aget-object v3, p0, v1

    .line 84
    invoke-virtual {v3}, Landroid/content/pm/Signature;->toByteArray()[B

    .line 87
    move-result-object v3

    .line 88
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 91
    add-int/lit8 v1, v1, 0x1

    .line 93
    goto :goto_1

    .line 94
    :cond_2
    sget-object p0, Lo/z7;->b:Lo/x7;

    .line 96
    :try_start_4
    invoke-static {p1, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 99
    move v0, v4

    .line 100
    :goto_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 103
    move-result v1

    .line 104
    if-ge v0, v1, :cond_6

    .line 106
    new-instance v1, Ljava/util/ArrayList;

    .line 108
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 111
    move-result-object v3

    .line 112
    check-cast v3, Ljava/util/Collection;

    .line 114
    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 117
    invoke-static {v1, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 120
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 123
    move-result v3

    .line 124
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 127
    move-result v7

    .line 128
    if-eq v3, v7, :cond_3

    .line 130
    goto :goto_4

    .line 131
    :cond_3
    move v3, v4

    .line 132
    :goto_3
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 135
    move-result v7

    .line 136
    if-ge v3, v7, :cond_5

    .line 138
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 141
    move-result-object v7

    .line 142
    check-cast v7, [B

    .line 144
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 147
    move-result-object v8

    .line 148
    check-cast v8, [B

    .line 150
    invoke-static {v7, v8}, Ljava/util/Arrays;->equals([B[B)Z

    .line 153
    move-result v7

    .line 154
    if-nez v7, :cond_4

    .line 156
    :goto_4
    add-int/lit8 v0, v0, 0x1

    .line 158
    goto :goto_2

    .line 159
    :cond_4
    add-int/lit8 v3, v3, 0x1

    .line 161
    goto :goto_3

    .line 162
    :cond_5
    invoke-virtual {v5, p2, v6}, Lo/Ba;->j(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 165
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 168
    return-object v6

    .line 169
    :catchall_0
    move-exception p0

    .line 170
    goto :goto_5

    .line 171
    :cond_6
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 174
    const/4 p0, 0x0

    .line 175
    return-object p0

    .line 176
    :cond_7
    :try_start_5
    new-instance p0, Landroid/content/pm/PackageManager$NameNotFoundException;

    .line 178
    new-instance p2, Ljava/lang/StringBuilder;

    .line 180
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 183
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    const-string v0, ", but package was not "

    .line 188
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 197
    move-result-object p1

    .line 198
    invoke-direct {p0, p1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    .line 201
    throw p0

    .line 202
    :cond_8
    new-instance p0, Landroid/content/pm/PackageManager$NameNotFoundException;

    .line 204
    new-instance p1, Ljava/lang/StringBuilder;

    .line 206
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 209
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 215
    move-result-object p1

    .line 216
    invoke-direct {p0, p1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    .line 219
    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 220
    :goto_5
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 223
    throw p0
.end method

.method public static c(Landroid/content/Context;Lo/A7;Ljava/lang/String;)[Lo/L7;
    .locals 20

    .line 1
    move-object/from16 v0, p2

    .line 3
    const-string v1, "content"

    .line 5
    const-string v2, "FontProvider.query"

    .line 7
    invoke-static {v2}, Lo/Ha;->a(Ljava/lang/String;)V

    .line 10
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    .line 12
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 15
    new-instance v3, Landroid/net/Uri$Builder;

    .line 17
    invoke-direct {v3}, Landroid/net/Uri$Builder;-><init>()V

    .line 20
    invoke-virtual {v3, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 23
    move-result-object v3

    .line 24
    invoke-virtual {v3, v0}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 27
    move-result-object v3

    .line 28
    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    .line 31
    move-result-object v3

    .line 32
    new-instance v4, Landroid/net/Uri$Builder;

    .line 34
    invoke-direct {v4}, Landroid/net/Uri$Builder;-><init>()V

    .line 37
    invoke-virtual {v4, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 40
    move-result-object v1

    .line 41
    invoke-virtual {v1, v0}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 44
    move-result-object v0

    .line 45
    const-string v1, "file"

    .line 47
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 50
    move-result-object v0

    .line 51
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    .line 54
    move-result-object v1

    .line 55
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 58
    move-result-object v0

    .line 59
    invoke-virtual {v0, v3}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    .line 62
    move-result-object v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 63
    const/4 v12, 0x0

    .line 64
    :try_start_1
    const-string v4, "_id"

    .line 66
    const-string v5, "file_id"

    .line 68
    const-string v6, "font_ttc_index"

    .line 70
    const-string v7, "font_variation_settings"

    .line 72
    const-string v8, "font_weight"

    .line 74
    const-string v9, "font_italic"

    .line 76
    const-string v10, "result_code"

    .line 78
    filled-new-array/range {v4 .. v10}, [Ljava/lang/String;

    .line 81
    move-result-object v6

    .line 82
    const-string v0, "ContentQueryWrapper.query"

    .line 84
    invoke-static {v0}, Lo/Ha;->a(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 87
    :try_start_2
    const-string v7, "query = ?"

    .line 89
    move-object/from16 v0, p1

    .line 91
    iget-object v0, v0, Lo/A7;->c:Ljava/lang/String;

    .line 93
    filled-new-array {v0}, [Ljava/lang/String;

    .line 96
    move-result-object v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 97
    if-nez v11, :cond_0

    .line 99
    goto :goto_0

    .line 100
    :cond_0
    const/4 v9, 0x0

    .line 101
    const/4 v10, 0x0

    .line 102
    move-object v4, v11

    .line 103
    move-object v5, v3

    .line 104
    :try_start_3
    invoke-virtual/range {v4 .. v10}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    .line 107
    move-result-object v12
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 108
    goto :goto_0

    .line 109
    :catch_0
    move-exception v0

    .line 110
    move-object v4, v0

    .line 111
    :try_start_4
    const-string v0, "FontsProvider"

    .line 113
    const-string v5, "Unable to query the content provider"

    .line 115
    invoke-static {v0, v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 118
    :goto_0
    :try_start_5
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 121
    const/4 v0, 0x0

    .line 122
    if-eqz v12, :cond_7

    .line 124
    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    .line 127
    move-result v4

    .line 128
    if-lez v4, :cond_7

    .line 130
    const-string v2, "result_code"

    .line 132
    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 135
    move-result v2

    .line 136
    new-instance v4, Ljava/util/ArrayList;

    .line 138
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 141
    const-string v5, "_id"

    .line 143
    invoke-interface {v12, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 146
    move-result v5

    .line 147
    const-string v6, "file_id"

    .line 149
    invoke-interface {v12, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 152
    move-result v6

    .line 153
    const-string v7, "font_ttc_index"

    .line 155
    invoke-interface {v12, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 158
    move-result v7

    .line 159
    const-string v8, "font_weight"

    .line 161
    invoke-interface {v12, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 164
    move-result v8

    .line 165
    const-string v9, "font_italic"

    .line 167
    invoke-interface {v12, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 170
    move-result v9

    .line 171
    :goto_1
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    .line 174
    move-result v10

    .line 175
    if-eqz v10, :cond_6

    .line 177
    const/4 v10, -0x1

    .line 178
    if-eq v2, v10, :cond_1

    .line 180
    invoke-interface {v12, v2}, Landroid/database/Cursor;->getInt(I)I

    .line 183
    move-result v13

    .line 184
    move/from16 v19, v13

    .line 186
    goto :goto_2

    .line 187
    :catchall_0
    move-exception v0

    .line 188
    goto/16 :goto_a

    .line 190
    :cond_1
    move/from16 v19, v0

    .line 192
    :goto_2
    if-eq v7, v10, :cond_2

    .line 194
    invoke-interface {v12, v7}, Landroid/database/Cursor;->getInt(I)I

    .line 197
    move-result v13

    .line 198
    move/from16 v16, v13

    .line 200
    goto :goto_3

    .line 201
    :cond_2
    move/from16 v16, v0

    .line 203
    :goto_3
    if-ne v6, v10, :cond_3

    .line 205
    invoke-interface {v12, v5}, Landroid/database/Cursor;->getLong(I)J

    .line 208
    move-result-wide v13

    .line 209
    invoke-static {v3, v13, v14}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    .line 212
    move-result-object v13

    .line 213
    :goto_4
    move-object v15, v13

    .line 214
    goto :goto_5

    .line 215
    :cond_3
    invoke-interface {v12, v6}, Landroid/database/Cursor;->getLong(I)J

    .line 218
    move-result-wide v13

    .line 219
    invoke-static {v1, v13, v14}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    .line 222
    move-result-object v13

    .line 223
    goto :goto_4

    .line 224
    :goto_5
    if-eq v8, v10, :cond_4

    .line 226
    invoke-interface {v12, v8}, Landroid/database/Cursor;->getInt(I)I

    .line 229
    move-result v13

    .line 230
    :goto_6
    move/from16 v17, v13

    .line 232
    goto :goto_7

    .line 233
    :cond_4
    const/16 v13, 0x190

    .line 235
    goto :goto_6

    .line 236
    :goto_7
    if-eq v9, v10, :cond_5

    .line 238
    invoke-interface {v12, v9}, Landroid/database/Cursor;->getInt(I)I

    .line 241
    move-result v10

    .line 242
    const/4 v13, 0x1

    .line 243
    if-ne v10, v13, :cond_5

    .line 245
    move/from16 v18, v13

    .line 247
    goto :goto_8

    .line 248
    :cond_5
    move/from16 v18, v0

    .line 250
    :goto_8
    new-instance v10, Lo/L7;

    .line 252
    move-object v14, v10

    .line 253
    invoke-direct/range {v14 .. v19}, Lo/L7;-><init>(Landroid/net/Uri;IIZI)V

    .line 256
    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 259
    goto :goto_1

    .line 260
    :cond_6
    move-object v2, v4

    .line 261
    :cond_7
    if-eqz v12, :cond_8

    .line 263
    :try_start_6
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 266
    goto :goto_9

    .line 267
    :catchall_1
    move-exception v0

    .line 268
    goto :goto_b

    .line 269
    :cond_8
    :goto_9
    if-eqz v11, :cond_9

    .line 271
    invoke-virtual {v11}, Landroid/content/ContentProviderClient;->close()V

    .line 274
    :cond_9
    new-array v0, v0, [Lo/L7;

    .line 276
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 279
    move-result-object v0

    .line 280
    check-cast v0, [Lo/L7;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 282
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 285
    return-object v0

    .line 286
    :catchall_2
    move-exception v0

    .line 287
    :try_start_7
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 290
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 291
    :goto_a
    if-eqz v12, :cond_a

    .line 293
    :try_start_8
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 296
    :cond_a
    if-eqz v11, :cond_b

    .line 298
    invoke-virtual {v11}, Landroid/content/ContentProviderClient;->close()V

    .line 301
    :cond_b
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 302
    :goto_b
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 305
    throw v0
.end method
