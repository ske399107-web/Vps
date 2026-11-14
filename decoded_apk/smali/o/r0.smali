.class public final synthetic Lo/r0;
.super Ljava/lang/Object;
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
    iput p1, p0, Lo/r0;->a:I

    iput-object p2, p0, Lo/r0;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 4

    .line 1
    iget v0, p0, Lo/r0;->a:I

    .line 3
    packed-switch v0, :pswitch_data_0

    .line 6
    iget-object v0, p0, Lo/r0;->b:Ljava/lang/Object;

    .line 8
    check-cast v0, Ljava/lang/String;

    .line 10
    invoke-static {v0}, Lcom/ffrt/proxyread/WirelessPair;->a(Ljava/lang/String;)Lo/Ug;

    .line 13
    move-result-object v0

    .line 14
    return-object v0

    .line 15
    :pswitch_0
    iget-object v0, p0, Lo/r0;->b:Ljava/lang/Object;

    .line 17
    check-cast v0, Lo/U0;

    .line 19
    invoke-virtual {v0}, Landroidx/activity/a;->reportFullyDrawn()V

    .line 22
    const/4 v0, 0x0

    .line 23
    return-object v0

    .line 24
    :pswitch_1
    iget-object v0, p0, Lo/r0;->b:Ljava/lang/Object;

    .line 26
    check-cast v0, Landroid/content/Context;

    .line 28
    invoke-static {v0}, Lo/x9;->l(Ljava/lang/Object;)V

    .line 31
    sget v1, Lo/w0;->f:I

    .line 33
    invoke-static {}, Lo/x9;->D()Z

    .line 36
    move-result v2

    .line 37
    if-eqz v2, :cond_0

    .line 39
    const/4 v0, 0x1

    .line 40
    sput-boolean v0, Lo/x9;->T:Z

    .line 42
    goto :goto_0

    .line 43
    :cond_0
    const-wide/16 v2, 0x0

    .line 45
    invoke-static {v0, v1, v2, v3}, Lo/x9;->t(Landroid/content/Context;IJ)Z

    .line 48
    move-result v0

    .line 49
    :goto_0
    const/4 v1, 0x0

    .line 50
    sput-boolean v1, Lo/w0;->i:Z

    .line 52
    if-eqz v0, :cond_1

    .line 54
    const-string v0, "ADB local \u0111\u00e3 n\u1ed1i l\u1ea1i."

    .line 56
    sput-object v0, Lo/w0;->g:Ljava/lang/String;

    .line 58
    sget v0, Lo/ta;->a:I

    .line 60
    goto :goto_1

    .line 61
    :cond_1
    sget-boolean v0, Lo/x9;->T:Z

    .line 63
    if-nez v0, :cond_2

    .line 65
    const-string v0, "Ch\u01b0a n\u1ed1i. Vu\u1ed1t th\u00f4ng b\u00e1o, nh\u1eadp m\u00e3 6 s\u1ed1, b\u1ea5m K\u1ebft n\u1ed1i."

    .line 67
    sput-object v0, Lo/w0;->g:Ljava/lang/String;

    .line 69
    :cond_2
    :goto_1
    invoke-static {}, Lo/w0;->a()V

    .line 72
    sget-object v0, Lo/Ug;->a:Lo/Ug;

    .line 74
    return-object v0

    .line 75
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
