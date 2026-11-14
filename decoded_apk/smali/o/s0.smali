.class public final synthetic Lo/s0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo/F8;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lo/s0;->a:I

    iput-object p2, p0, Lo/s0;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lo/C;ILandroid/os/Bundle;)Z
    .locals 6

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    const/16 v1, 0x19

    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    if-lt v0, v1, :cond_1

    .line 9
    and-int/2addr p2, v3

    .line 10
    if-eqz p2, :cond_1

    .line 12
    :try_start_0
    iget-object p2, p1, Lo/C;->b:Ljava/lang/Object;

    .line 14
    check-cast p2, Lo/r9;

    .line 16
    invoke-interface {p2}, Lo/r9;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    iget-object p2, p1, Lo/C;->b:Ljava/lang/Object;

    .line 21
    check-cast p2, Lo/r9;

    .line 23
    invoke-interface {p2}, Lo/r9;->d()Ljava/lang/Object;

    .line 26
    move-result-object p2

    .line 27
    check-cast p2, Landroid/os/Parcelable;

    .line 29
    if-nez p3, :cond_0

    .line 31
    new-instance p3, Landroid/os/Bundle;

    .line 33
    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    new-instance v1, Landroid/os/Bundle;

    .line 39
    invoke-direct {v1, p3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 42
    move-object p3, v1

    .line 43
    :goto_0
    const-string v1, "androidx.core.view.extra.INPUT_CONTENT_INFO"

    .line 45
    invoke-virtual {p3, v1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 48
    goto :goto_1

    .line 49
    :catch_0
    move-exception p1

    .line 50
    const-string p2, "InputConnectionCompat"

    .line 52
    const-string p3, "Can\'t insert content from IME; requestPermission() failed"

    .line 54
    invoke-static {p2, p3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 57
    goto :goto_3

    .line 58
    :cond_1
    :goto_1
    new-instance p2, Landroid/content/ClipData;

    .line 60
    iget-object v1, p1, Lo/C;->b:Ljava/lang/Object;

    .line 62
    check-cast v1, Lo/r9;

    .line 64
    invoke-interface {v1}, Lo/r9;->c()Landroid/content/ClipDescription;

    .line 67
    move-result-object v1

    .line 68
    new-instance v4, Landroid/content/ClipData$Item;

    .line 70
    iget-object p1, p1, Lo/C;->b:Ljava/lang/Object;

    .line 72
    check-cast p1, Lo/r9;

    .line 74
    invoke-interface {p1}, Lo/r9;->e()Landroid/net/Uri;

    .line 77
    move-result-object v5

    .line 78
    invoke-direct {v4, v5}, Landroid/content/ClipData$Item;-><init>(Landroid/net/Uri;)V

    .line 81
    invoke-direct {p2, v1, v4}, Landroid/content/ClipData;-><init>(Landroid/content/ClipDescription;Landroid/content/ClipData$Item;)V

    .line 84
    const/16 v1, 0x1f

    .line 86
    const/4 v4, 0x2

    .line 87
    if-lt v0, v1, :cond_2

    .line 89
    new-instance v0, Lo/C;

    .line 91
    invoke-direct {v0, p2, v4}, Lo/C;-><init>(Landroid/content/ClipData;I)V

    .line 94
    goto :goto_2

    .line 95
    :cond_2
    new-instance v0, Lo/R4;

    .line 97
    invoke-direct {v0}, Lo/R4;-><init>()V

    .line 100
    iput-object p2, v0, Lo/R4;->b:Ljava/lang/Object;

    .line 102
    iput v4, v0, Lo/R4;->c:I

    .line 104
    :goto_2
    invoke-interface {p1}, Lo/r9;->b()Landroid/net/Uri;

    .line 107
    move-result-object p1

    .line 108
    invoke-interface {v0, p1}, Lo/Q4;->r(Landroid/net/Uri;)V

    .line 111
    invoke-interface {v0, p3}, Lo/Q4;->p(Landroid/os/Bundle;)V

    .line 114
    invoke-interface {v0}, Lo/Q4;->build()Lo/T4;

    .line 117
    move-result-object p1

    .line 118
    iget-object p2, p0, Lo/s0;->b:Ljava/lang/Object;

    .line 120
    check-cast p2, Lo/A1;

    .line 122
    invoke-static {p2, p1}, Lo/Dh;->h(Landroid/view/View;Lo/T4;)Lo/T4;

    .line 125
    move-result-object p1

    .line 126
    if-nez p1, :cond_3

    .line 128
    move v2, v3

    .line 129
    :cond_3
    :goto_3
    return v2
.end method

.method public b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    iget v0, p0, Lo/s0;->a:I

    .line 3
    packed-switch v0, :pswitch_data_0

    .line 6
    check-cast p1, Ljava/lang/String;

    .line 8
    sget v0, Lcom/ffrt/proxyread/MainActivity;->I:I

    .line 10
    const-string v0, "text"

    .line 12
    invoke-static {p1, v0}, Lo/x9;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    iget-object v0, p0, Lo/s0;->b:Ljava/lang/Object;

    .line 17
    check-cast v0, Lcom/ffrt/proxyread/MainActivity;

    .line 19
    iget-object v1, v0, Lcom/ffrt/proxyread/MainActivity;->A:Landroid/widget/TextView;

    .line 21
    if-eqz v1, :cond_0

    .line 23
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 26
    :cond_0
    invoke-virtual {v0}, Lcom/ffrt/proxyread/MainActivity;->u()V

    .line 29
    iget-object p1, v0, Lcom/ffrt/proxyread/MainActivity;->E:Lcom/google/android/material/button/MaterialButton;

    .line 31
    if-eqz p1, :cond_1

    .line 33
    iget-boolean v0, v0, Lcom/ffrt/proxyread/MainActivity;->G:Z

    .line 35
    xor-int/lit8 v0, v0, 0x1

    .line 37
    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 40
    :cond_1
    sget-object p1, Lo/Ug;->a:Lo/Ug;

    .line 42
    return-object p1

    .line 43
    :pswitch_0
    iget-object v0, p0, Lo/s0;->b:Ljava/lang/Object;

    .line 45
    check-cast v0, Landroid/content/Context;

    .line 47
    check-cast p1, Lo/x0;

    .line 49
    const-string v1, "hit"

    .line 51
    invoke-static {p1, v1}, Lo/x9;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    iget-object v1, p1, Lo/x0;->a:Ljava/lang/String;

    .line 56
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 59
    move-result v2

    .line 60
    sget-object v3, Lo/w0;->a:Landroid/os/Handler;

    .line 62
    const v3, -0x4668eeb7

    .line 65
    if-eq v2, v3, :cond_6

    .line 67
    const v0, -0x2c8de42

    .line 70
    if-eq v2, v0, :cond_4

    .line 72
    const v0, 0x6b4348a7

    .line 75
    if-eq v2, v0, :cond_2

    .line 77
    goto :goto_0

    .line 78
    :cond_2
    const-string v0, "_adb-tls-pairing._tcp."

    .line 80
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 83
    move-result v0

    .line 84
    if-nez v0, :cond_3

    .line 86
    goto :goto_0

    .line 87
    :cond_3
    iget v0, p1, Lo/x0;->c:I

    .line 89
    sput v0, Lo/w0;->e:I

    .line 91
    goto :goto_0

    .line 92
    :cond_4
    const-string v0, "_adb._tcp."

    .line 94
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 97
    move-result v0

    .line 98
    if-nez v0, :cond_5

    .line 100
    goto :goto_0

    .line 101
    :cond_5
    sget v0, Lo/w0;->f:I

    .line 103
    if-nez v0, :cond_8

    .line 105
    iget v0, p1, Lo/x0;->c:I

    .line 107
    sput v0, Lo/w0;->f:I

    .line 109
    goto :goto_0

    .line 110
    :cond_6
    const-string v2, "_adb-tls-connect._tcp."

    .line 112
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 115
    move-result v1

    .line 116
    if-nez v1, :cond_7

    .line 118
    goto :goto_0

    .line 119
    :cond_7
    iget v1, p1, Lo/x0;->c:I

    .line 121
    sput v1, Lo/w0;->f:I

    .line 123
    const-string v1, "adb_session"

    .line 125
    const/4 v2, 0x0

    .line 126
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 129
    move-result-object v1

    .line 130
    const-string v3, "paired"

    .line 132
    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 135
    move-result v1

    .line 136
    if-eqz v1, :cond_8

    .line 138
    sget-boolean v1, Lo/x9;->T:Z

    .line 140
    if-nez v1, :cond_8

    .line 142
    invoke-static {v0}, Lo/w0;->c(Landroid/content/Context;)V

    .line 145
    :cond_8
    :goto_0
    sget-boolean v0, Lo/x9;->T:Z

    .line 147
    if-nez v0, :cond_b

    .line 149
    sget-boolean v0, Lo/w0;->h:Z

    .line 151
    if-nez v0, :cond_b

    .line 153
    sget v0, Lo/w0;->e:I

    .line 155
    if-lez v0, :cond_9

    .line 157
    sget v0, Lo/w0;->e:I

    .line 159
    const-string v1, "gh\u00e9p :"

    .line 161
    invoke-static {v0, v1}, Lo/jf;->a(ILjava/lang/String;)Ljava/lang/String;

    .line 164
    move-result-object v0

    .line 165
    goto :goto_1

    .line 166
    :cond_9
    const-string v0, "ch\u01b0a th\u1ea5y c\u1ed5ng gh\u00e9p"

    .line 168
    :goto_1
    sget v1, Lo/w0;->f:I

    .line 170
    if-lez v1, :cond_a

    .line 172
    sget v1, Lo/w0;->f:I

    .line 174
    const-string v2, "n\u1ed1i :"

    .line 176
    invoke-static {v1, v2}, Lo/jf;->a(ILjava/lang/String;)Ljava/lang/String;

    .line 179
    move-result-object v1

    .line 180
    goto :goto_2

    .line 181
    :cond_a
    const-string v1, "ch\u01b0a th\u1ea5y c\u1ed5ng n\u1ed1i"

    .line 183
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    .line 185
    const-string v3, "127.0.0.1 \u00b7 "

    .line 187
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 190
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    const-string v0, " \u00b7 "

    .line 195
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 204
    move-result-object v0

    .line 205
    sput-object v0, Lo/w0;->g:Ljava/lang/String;

    .line 207
    invoke-static {}, Lo/w0;->a()V

    .line 210
    :cond_b
    sget v0, Lo/ta;->a:I

    .line 212
    iget-object v0, p1, Lo/x0;->a:Ljava/lang/String;

    .line 214
    iget p1, p1, Lo/x0;->c:I

    .line 216
    new-instance v1, Ljava/lang/StringBuilder;

    .line 218
    const-string v2, "mDNS "

    .line 220
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 223
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    const-string v0, " :"

    .line 228
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 234
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 237
    move-result-object p1

    .line 238
    invoke-static {p1}, Lo/ta;->a(Ljava/lang/String;)V

    .line 241
    sget-object p1, Lo/Ug;->a:Lo/Ug;

    .line 243
    return-object p1

    nop

    .line 245
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
