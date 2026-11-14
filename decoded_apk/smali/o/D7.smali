.class public final Lo/D7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Landroid/content/Context;

.field public final synthetic d:I

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Landroid/content/Context;Ljava/lang/Object;II)V
    .locals 0

    .line 1
    iput p5, p0, Lo/D7;->a:I

    iput-object p1, p0, Lo/D7;->b:Ljava/lang/String;

    iput-object p2, p0, Lo/D7;->c:Landroid/content/Context;

    iput-object p3, p0, Lo/D7;->e:Ljava/lang/Object;

    iput p4, p0, Lo/D7;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 4

    .line 1
    iget v0, p0, Lo/D7;->a:I

    .line 3
    packed-switch v0, :pswitch_data_0

    .line 6
    :try_start_0
    iget-object v0, p0, Lo/D7;->b:Ljava/lang/String;

    .line 8
    iget-object v1, p0, Lo/D7;->c:Landroid/content/Context;

    .line 10
    iget-object v2, p0, Lo/D7;->e:Ljava/lang/Object;

    .line 12
    check-cast v2, Ljava/util/List;

    .line 14
    iget v3, p0, Lo/D7;->d:I

    .line 16
    invoke-static {v0, v1, v2, v3}, Lo/G7;->b(Ljava/lang/String;Landroid/content/Context;Ljava/util/List;I)Lo/F7;

    .line 19
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    new-instance v0, Lo/F7;

    .line 23
    const/4 v1, -0x3

    .line 24
    invoke-direct {v0, v1}, Lo/F7;-><init>(I)V

    .line 27
    :goto_0
    return-object v0

    .line 28
    :pswitch_0
    iget-object v0, p0, Lo/D7;->e:Ljava/lang/Object;

    .line 30
    check-cast v0, Lo/A7;

    .line 32
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 35
    move-result-object v0

    .line 36
    new-instance v1, Ljava/util/ArrayList;

    .line 38
    const/4 v2, 0x1

    .line 39
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 42
    const/4 v2, 0x0

    .line 43
    aget-object v0, v0, v2

    .line 45
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 54
    move-result-object v0

    .line 55
    iget-object v1, p0, Lo/D7;->b:Ljava/lang/String;

    .line 57
    iget-object v2, p0, Lo/D7;->c:Landroid/content/Context;

    .line 59
    iget v3, p0, Lo/D7;->d:I

    .line 61
    invoke-static {v1, v2, v0, v3}, Lo/G7;->b(Ljava/lang/String;Landroid/content/Context;Ljava/util/List;I)Lo/F7;

    .line 64
    move-result-object v0

    .line 65
    return-object v0

    nop

    .line 67
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
