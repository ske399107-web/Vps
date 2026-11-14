.class public final synthetic Lo/t0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo/u8;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Landroid/content/Context;I)V
    .locals 0

    .line 1
    iput p3, p0, Lo/t0;->a:I

    iput-object p1, p0, Lo/t0;->b:Ljava/lang/Object;

    iput-object p2, p0, Lo/t0;->c:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 10

    .line 1
    const/4 v0, 0x1

    .line 2
    iget v1, p0, Lo/t0;->a:I

    .line 4
    packed-switch v1, :pswitch_data_0

    .line 7
    iget-object v0, p0, Lo/t0;->b:Ljava/lang/Object;

    .line 9
    check-cast v0, Lcom/ffrt/proxyread/PacketEngine;

    .line 11
    iget-object v1, p0, Lo/t0;->c:Landroid/content/Context;

    .line 13
    check-cast v1, Lcom/ffrt/proxyread/VpnCaptureService;

    .line 15
    invoke-static {v0, v1}, Lcom/ffrt/proxyread/VpnCaptureService;->a(Lcom/ffrt/proxyread/PacketEngine;Lcom/ffrt/proxyread/VpnCaptureService;)Lo/Ug;

    .line 18
    move-result-object v0

    .line 19
    return-object v0

    .line 20
    :pswitch_0
    iget-object v1, p0, Lo/t0;->b:Ljava/lang/Object;

    .line 22
    check-cast v1, Lo/v0;

    .line 24
    iget-object v2, p0, Lo/t0;->c:Landroid/content/Context;

    .line 26
    const-string v3, "ADB local \u0111\u00e3 n\u1ed1i."

    .line 28
    const-string v4, "Gh\u00e9p xong. B\u1ea5m N\u1ed1i l\u1ea1i."

    .line 30
    sget-object v5, Lo/w0;->a:Landroid/os/Handler;

    .line 32
    const/4 v5, 0x0

    .line 33
    :try_start_0
    iget v6, v1, Lo/v0;->b:I

    .line 35
    if-gt v0, v6, :cond_0

    .line 37
    const/high16 v7, 0x10000

    .line 39
    if-ge v6, v7, :cond_0

    .line 41
    sput v6, Lo/w0;->e:I

    .line 43
    goto :goto_0

    .line 44
    :catch_0
    move-exception v0

    .line 45
    move v1, v5

    .line 46
    goto :goto_3

    .line 47
    :cond_0
    :goto_0
    move v6, v5

    .line 48
    :goto_1
    sget v7, Lo/w0;->e:I

    .line 50
    if-nez v7, :cond_1

    .line 52
    sget v7, Lo/w0;->f:I

    .line 54
    if-nez v7, :cond_1

    .line 56
    const/16 v7, 0x32

    .line 58
    if-ge v6, v7, :cond_1

    .line 60
    const-wide/16 v7, 0x64

    .line 62
    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V

    .line 65
    add-int/2addr v6, v0

    .line 66
    goto :goto_1

    .line 67
    :cond_1
    sget v6, Lo/w0;->e:I

    .line 69
    if-lez v6, :cond_4

    .line 71
    sget v6, Lo/w0;->e:I

    .line 73
    iget-object v1, v1, Lo/v0;->a:Ljava/lang/String;

    .line 75
    invoke-static {v2, v6, v1}, Lo/x9;->J(Landroid/content/Context;ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    :try_start_1
    const-string v1, "Gh\u00e9p xong, \u0111ang n\u1ed1i\u2026"

    .line 80
    sput-object v1, Lo/w0;->g:Ljava/lang/String;

    .line 82
    invoke-static {}, Lo/w0;->a()V

    .line 85
    sget v1, Lo/w0;->f:I

    .line 87
    const-wide/16 v6, 0x1f4

    .line 89
    invoke-static {v2, v1, v6, v7}, Lo/x9;->t(Landroid/content/Context;IJ)Z

    .line 92
    move-result v1

    .line 93
    if-nez v1, :cond_3

    .line 95
    sget v1, Lo/w0;->f:I

    .line 97
    invoke-static {v2, v1}, Lo/x9;->a(Landroid/content/Context;I)Z

    .line 100
    move-result v1

    .line 101
    if-eqz v1, :cond_2

    .line 103
    goto :goto_2

    .line 104
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 106
    invoke-direct {v1, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 109
    throw v1

    .line 110
    :catch_1
    move-exception v1

    .line 111
    move-object v9, v1

    .line 112
    move v1, v0

    .line 113
    move-object v0, v9

    .line 114
    goto :goto_3

    .line 115
    :cond_3
    :goto_2
    sput-object v3, Lo/w0;->g:Ljava/lang/String;

    .line 117
    sput-boolean v5, Lo/w0;->h:Z

    .line 119
    sget v1, Lo/ta;->a:I

    .line 121
    invoke-static {}, Lo/w0;->a()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 124
    goto/16 :goto_8

    .line 126
    :cond_4
    :try_start_2
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 128
    const-string v1, "Ch\u01b0a th\u1ea5y c\u1ed5ng gh\u00e9p. Gi\u1eef h\u1ed9p tho\u1ea1i m\u00e3 6 s\u1ed1 m\u1edf r\u1ed3i g\u1eedi l\u1ea1i."

    .line 130
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 133
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 134
    :goto_3
    sput-boolean v5, Lo/w0;->h:Z

    .line 136
    sget v5, Lo/w0;->f:I

    .line 138
    invoke-static {v2, v5}, Lo/x9;->a(Landroid/content/Context;I)Z

    .line 141
    move-result v2

    .line 142
    if-nez v2, :cond_a

    .line 144
    invoke-static {}, Lo/x9;->D()Z

    .line 147
    move-result v2

    .line 148
    if-eqz v2, :cond_5

    .line 150
    goto :goto_7

    .line 151
    :cond_5
    if-eqz v1, :cond_6

    .line 153
    goto :goto_6

    .line 154
    :cond_6
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 157
    move-result-object v1

    .line 158
    if-eqz v1, :cond_7

    .line 160
    invoke-static {v1}, Lo/tf;->L0(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 163
    move-result-object v1

    .line 164
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 167
    move-result-object v1

    .line 168
    goto :goto_4

    .line 169
    :cond_7
    const/4 v1, 0x0

    .line 170
    :goto_4
    if-nez v1, :cond_8

    .line 172
    const-string v1, ""

    .line 174
    :cond_8
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 177
    move-result v2

    .line 178
    const-string v3, "L\u1ed7i: "

    .line 180
    if-lez v2, :cond_9

    .line 182
    const-string v2, "null"

    .line 184
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 187
    move-result v2

    .line 188
    if-nez v2, :cond_9

    .line 190
    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 193
    move-result-object v1

    .line 194
    :goto_5
    move-object v4, v1

    .line 195
    goto :goto_6

    .line 196
    :cond_9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 199
    move-result-object v1

    .line 200
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 203
    move-result-object v1

    .line 204
    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 207
    move-result-object v1

    .line 208
    goto :goto_5

    .line 209
    :goto_6
    sput-object v4, Lo/w0;->g:Ljava/lang/String;

    .line 211
    sget v1, Lo/ta;->a:I

    .line 213
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 216
    move-result-object v1

    .line 217
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 220
    move-result-object v1

    .line 221
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 224
    move-result-object v0

    .line 225
    new-instance v2, Ljava/lang/StringBuilder;

    .line 227
    const-string v3, "ADB "

    .line 229
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 232
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    const-string v1, " "

    .line 237
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 246
    move-result-object v0

    .line 247
    invoke-static {v0}, Lo/ta;->a(Ljava/lang/String;)V

    .line 250
    invoke-static {}, Lo/w0;->a()V

    .line 253
    goto :goto_8

    .line 254
    :cond_a
    :goto_7
    sput-object v3, Lo/w0;->g:Ljava/lang/String;

    .line 256
    sget v1, Lo/ta;->a:I

    .line 258
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 261
    move-result-object v0

    .line 262
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 265
    move-result-object v0

    .line 266
    const-string v1, "ADB connected after "

    .line 268
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 271
    move-result-object v0

    .line 272
    invoke-static {v0}, Lo/ta;->a(Ljava/lang/String;)V

    .line 275
    invoke-static {}, Lo/w0;->a()V

    .line 278
    :goto_8
    sget-object v0, Lo/Ug;->a:Lo/Ug;

    .line 280
    return-object v0

    .line 281
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
