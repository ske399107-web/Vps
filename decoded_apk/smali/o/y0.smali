.class public final synthetic Lo/y0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p2, p0, Lo/y0;->a:I

    iput-object p1, p0, Lo/y0;->b:Ljava/lang/Object;

    iput-object p3, p0, Lo/y0;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget v0, p0, Lo/y0;->a:I

    .line 3
    packed-switch v0, :pswitch_data_0

    .line 6
    iget-object v0, p0, Lo/y0;->b:Ljava/lang/Object;

    .line 8
    check-cast v0, Lo/Ha;

    .line 10
    iget-object v1, p0, Lo/y0;->c:Ljava/lang/Object;

    .line 12
    check-cast v1, Landroid/graphics/Typeface;

    .line 14
    invoke-virtual {v0, v1}, Lo/Ha;->i0(Landroid/graphics/Typeface;)V

    .line 17
    return-void

    .line 18
    :pswitch_0
    iget-object v0, p0, Lo/y0;->c:Ljava/lang/Object;

    .line 20
    check-cast v0, Ljava/lang/Runnable;

    .line 22
    iget-object v1, p0, Lo/y0;->b:Ljava/lang/Object;

    .line 24
    check-cast v1, Lo/f1;

    .line 26
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    :try_start_0
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    invoke-virtual {v1}, Lo/f1;->a()V

    .line 35
    return-void

    .line 36
    :catchall_0
    move-exception v0

    .line 37
    invoke-virtual {v1}, Lo/f1;->a()V

    .line 40
    throw v0

    .line 41
    :pswitch_1
    iget-object v0, p0, Lo/y0;->b:Ljava/lang/Object;

    .line 43
    check-cast v0, Lo/s0;

    .line 45
    iget-object v1, p0, Lo/y0;->c:Ljava/lang/Object;

    .line 47
    check-cast v1, Lo/x0;

    .line 49
    invoke-virtual {v0, v1}, Lo/s0;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    return-void

    .line 53
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
