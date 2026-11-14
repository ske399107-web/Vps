.class public final Lo/E5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;

.field public d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    iput v0, p0, Lo/E5;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lo/zi;Lo/H1;Landroid/animation/ValueAnimator;)V
    .locals 0

    const/4 p2, 0x2

    iput p2, p0, Lo/E5;->a:I

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/E5;->b:Ljava/lang/Object;

    iput-object p3, p0, Lo/E5;->c:Ljava/lang/Object;

    iput-object p4, p0, Lo/E5;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lo/K5;Ljava/util/ArrayList;Lo/bf;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lo/E5;->a:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/E5;->d:Ljava/lang/Object;

    iput-object p2, p0, Lo/E5;->b:Ljava/lang/Object;

    iput-object p3, p0, Lo/E5;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget v0, p0, Lo/E5;->a:I

    .line 3
    packed-switch v0, :pswitch_data_0

    .line 6
    iget-object v0, p0, Lo/E5;->c:Ljava/lang/Object;

    .line 8
    check-cast v0, Lo/H1;

    .line 10
    iget-object v1, p0, Lo/E5;->b:Ljava/lang/Object;

    .line 12
    check-cast v1, Landroid/view/View;

    .line 14
    invoke-static {v1, v0}, Lo/vi;->h(Landroid/view/View;Lo/H1;)V

    .line 17
    iget-object v0, p0, Lo/E5;->d:Ljava/lang/Object;

    .line 19
    check-cast v0, Landroid/animation/ValueAnimator;

    .line 21
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 24
    return-void

    .line 25
    :pswitch_0
    :try_start_0
    iget-object v0, p0, Lo/E5;->b:Ljava/lang/Object;

    .line 27
    check-cast v0, Lo/D7;

    .line 29
    invoke-virtual {v0}, Lo/D7;->call()Ljava/lang/Object;

    .line 32
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    goto :goto_0

    .line 34
    :catch_0
    const/4 v0, 0x0

    .line 35
    :goto_0
    new-instance v1, Lo/b0;

    .line 37
    iget-object v2, p0, Lo/E5;->c:Ljava/lang/Object;

    .line 39
    check-cast v2, Lo/E7;

    .line 41
    const/4 v3, 0x5

    .line 42
    invoke-direct {v1, v2, v3, v0}, Lo/b0;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 45
    iget-object v0, p0, Lo/E5;->d:Ljava/lang/Object;

    .line 47
    check-cast v0, Landroid/os/Handler;

    .line 49
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 52
    return-void

    .line 53
    :pswitch_1
    iget-object v0, p0, Lo/E5;->b:Ljava/lang/Object;

    .line 55
    check-cast v0, Ljava/util/ArrayList;

    .line 57
    iget-object v1, p0, Lo/E5;->c:Ljava/lang/Object;

    .line 59
    check-cast v1, Lo/bf;

    .line 61
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 64
    move-result v2

    .line 65
    if-eqz v2, :cond_0

    .line 67
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 70
    iget-object v0, p0, Lo/E5;->d:Ljava/lang/Object;

    .line 72
    check-cast v0, Lo/K5;

    .line 74
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 77
    iget-object v0, v1, Lo/bf;->c:Lo/T7;

    .line 79
    iget-object v0, v0, Lo/T7;->E:Landroid/view/View;

    .line 81
    iget v1, v1, Lo/bf;->a:I

    .line 83
    invoke-static {v0, v1}, Lo/o5;->a(Landroid/view/View;I)V

    .line 86
    :cond_0
    return-void

    .line 87
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
