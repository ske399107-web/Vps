.class public final Lo/fc;
.super Lo/F9;
.source "SourceFile"

# interfaces
.implements Lo/F8;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroidx/activity/b;


# direct methods
.method public synthetic constructor <init>(Landroidx/activity/b;I)V
    .locals 0

    .line 1
    iput p2, p0, Lo/fc;->a:I

    iput-object p1, p0, Lo/fc;->b:Landroidx/activity/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget v0, p0, Lo/fc;->a:I

    .line 3
    packed-switch v0, :pswitch_data_0

    .line 6
    check-cast p1, Lo/L2;

    .line 8
    const-string v0, "backEvent"

    .line 10
    invoke-static {p1, v0}, Lo/x9;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    iget-object p1, p0, Lo/fc;->b:Landroidx/activity/b;

    .line 15
    iget-object p1, p1, Landroidx/activity/b;->b:Lo/x2;

    .line 17
    invoke-virtual {p1}, Lo/x2;->size()I

    .line 20
    move-result v0

    .line 21
    invoke-virtual {p1, v0}, Ljava/util/AbstractList;->listIterator(I)Ljava/util/ListIterator;

    .line 24
    move-result-object p1

    .line 25
    :cond_0
    invoke-interface {p1}, Ljava/util/ListIterator;->hasPrevious()Z

    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_1

    .line 31
    invoke-interface {p1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 34
    move-result-object v0

    .line 35
    move-object v1, v0

    .line 36
    check-cast v1, Lo/b8;

    .line 38
    iget-boolean v1, v1, Lo/b8;->a:Z

    .line 40
    if-eqz v1, :cond_0

    .line 42
    goto :goto_0

    .line 43
    :cond_1
    const/4 v0, 0x0

    .line 44
    :goto_0
    check-cast v0, Lo/b8;

    .line 46
    sget-object p1, Lo/Ug;->a:Lo/Ug;

    .line 48
    return-object p1

    .line 49
    :pswitch_0
    check-cast p1, Lo/L2;

    .line 51
    const-string v0, "backEvent"

    .line 53
    invoke-static {p1, v0}, Lo/x9;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    iget-object p1, p0, Lo/fc;->b:Landroidx/activity/b;

    .line 58
    iget-object v0, p1, Landroidx/activity/b;->b:Lo/x2;

    .line 60
    invoke-virtual {v0}, Lo/x2;->size()I

    .line 63
    move-result v1

    .line 64
    invoke-virtual {v0, v1}, Ljava/util/AbstractList;->listIterator(I)Ljava/util/ListIterator;

    .line 67
    move-result-object v0

    .line 68
    :cond_2
    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    .line 71
    move-result v1

    .line 72
    if-eqz v1, :cond_3

    .line 74
    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 77
    move-result-object v1

    .line 78
    move-object v2, v1

    .line 79
    check-cast v2, Lo/b8;

    .line 81
    iget-boolean v2, v2, Lo/b8;->a:Z

    .line 83
    if-eqz v2, :cond_2

    .line 85
    goto :goto_1

    .line 86
    :cond_3
    const/4 v1, 0x0

    .line 87
    :goto_1
    check-cast v1, Lo/b8;

    .line 89
    iput-object v1, p1, Landroidx/activity/b;->c:Lo/b8;

    .line 91
    sget-object p1, Lo/Ug;->a:Lo/Ug;

    .line 93
    return-object p1

    nop

    .line 95
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
