.class public final Lo/Zb;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/util/ArrayList;

.field public final c:Ljava/util/ArrayList;

.field public final d:Ljava/util/ArrayList;

.field public e:Ljava/lang/CharSequence;

.field public f:Ljava/lang/CharSequence;

.field public g:Landroid/app/PendingIntent;

.field public h:I

.field public final i:Z

.field public j:Ljava/lang/String;

.field public k:Landroid/os/Bundle;

.field public l:I

.field public m:I

.field public final n:Ljava/lang/String;

.field public final o:Z

.field public final p:Landroid/app/Notification;

.field public q:Z

.field public final r:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    iput-object v0, p0, Lo/Zb;->b:Ljava/util/ArrayList;

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 16
    iput-object v0, p0, Lo/Zb;->c:Ljava/util/ArrayList;

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    .line 20
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 23
    iput-object v0, p0, Lo/Zb;->d:Ljava/util/ArrayList;

    .line 25
    const/4 v0, 0x1

    .line 26
    iput-boolean v0, p0, Lo/Zb;->i:Z

    .line 28
    const/4 v1, 0x0

    .line 29
    iput v1, p0, Lo/Zb;->l:I

    .line 31
    iput v1, p0, Lo/Zb;->m:I

    .line 33
    new-instance v2, Landroid/app/Notification;

    .line 35
    invoke-direct {v2}, Landroid/app/Notification;-><init>()V

    .line 38
    iput-object v2, p0, Lo/Zb;->p:Landroid/app/Notification;

    .line 40
    iput-object p1, p0, Lo/Zb;->a:Landroid/content/Context;

    .line 42
    iput-object p2, p0, Lo/Zb;->n:Ljava/lang/String;

    .line 44
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 47
    move-result-wide p1

    .line 48
    iput-wide p1, v2, Landroid/app/Notification;->when:J

    .line 50
    const/4 p1, -0x1

    .line 51
    iput p1, v2, Landroid/app/Notification;->audioStreamType:I

    .line 53
    iput v1, p0, Lo/Zb;->h:I

    .line 55
    new-instance p1, Ljava/util/ArrayList;

    .line 57
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 60
    iput-object p1, p0, Lo/Zb;->r:Ljava/util/ArrayList;

    .line 62
    iput-boolean v0, p0, Lo/Zb;->o:Z

    .line 64
    return-void
.end method

.method public static b(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2

    .line 1
    if-nez p0, :cond_0

    .line 3
    return-object p0

    .line 4
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 7
    move-result v0

    .line 8
    const/16 v1, 0x1400

    .line 10
    if-le v0, v1, :cond_1

    .line 12
    const/4 v0, 0x0

    .line 13
    invoke-interface {p0, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    .line 16
    move-result-object p0

    .line 17
    :cond_1
    return-object p0
.end method


# virtual methods
.method public final a()Landroid/app/Notification;
    .locals 4

    .line 1
    new-instance v0, Lo/bc;

    .line 3
    invoke-direct {v0, p0}, Lo/bc;-><init>(Lo/Zb;)V

    .line 6
    iget-object v1, v0, Lo/bc;->b:Lo/Zb;

    .line 8
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 13
    iget-object v2, v0, Lo/bc;->a:Landroid/app/Notification$Builder;

    .line 15
    const/16 v3, 0x1a

    .line 17
    if-lt v1, v3, :cond_0

    .line 19
    invoke-virtual {v2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    .line 22
    move-result-object v0

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    invoke-virtual {v2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    .line 27
    move-result-object v1

    .line 28
    iget v0, v0, Lo/bc;->d:I

    .line 30
    if-eqz v0, :cond_2

    .line 32
    invoke-virtual {v1}, Landroid/app/Notification;->getGroup()Ljava/lang/String;

    .line 35
    move-result-object v2

    .line 36
    const/4 v3, 0x0

    .line 37
    if-eqz v2, :cond_1

    .line 39
    iget v2, v1, Landroid/app/Notification;->flags:I

    .line 41
    and-int/lit16 v2, v2, 0x200

    .line 43
    if-eqz v2, :cond_1

    .line 45
    const/4 v2, 0x2

    .line 46
    if-ne v0, v2, :cond_1

    .line 48
    iput-object v3, v1, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 50
    iput-object v3, v1, Landroid/app/Notification;->vibrate:[J

    .line 52
    iget v2, v1, Landroid/app/Notification;->defaults:I

    .line 54
    and-int/lit8 v2, v2, -0x4

    .line 56
    iput v2, v1, Landroid/app/Notification;->defaults:I

    .line 58
    :cond_1
    invoke-virtual {v1}, Landroid/app/Notification;->getGroup()Ljava/lang/String;

    .line 61
    move-result-object v2

    .line 62
    if-eqz v2, :cond_2

    .line 64
    iget v2, v1, Landroid/app/Notification;->flags:I

    .line 66
    and-int/lit16 v2, v2, 0x200

    .line 68
    if-nez v2, :cond_2

    .line 70
    const/4 v2, 0x1

    .line 71
    if-ne v0, v2, :cond_2

    .line 73
    iput-object v3, v1, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 75
    iput-object v3, v1, Landroid/app/Notification;->vibrate:[J

    .line 77
    iget v0, v1, Landroid/app/Notification;->defaults:I

    .line 79
    and-int/lit8 v0, v0, -0x4

    .line 81
    iput v0, v1, Landroid/app/Notification;->defaults:I

    .line 83
    :cond_2
    move-object v0, v1

    .line 84
    :goto_0
    return-object v0
.end method

.method public final c(IZ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lo/Zb;->p:Landroid/app/Notification;

    .line 3
    if-eqz p2, :cond_0

    .line 5
    iget p2, v0, Landroid/app/Notification;->flags:I

    .line 7
    or-int/2addr p1, p2

    .line 8
    iput p1, v0, Landroid/app/Notification;->flags:I

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget p2, v0, Landroid/app/Notification;->flags:I

    .line 13
    not-int p1, p1

    .line 14
    and-int/2addr p1, p2

    .line 15
    iput p1, v0, Landroid/app/Notification;->flags:I

    .line 17
    :goto_0
    return-void
.end method
