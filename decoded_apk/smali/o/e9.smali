.class public final synthetic Lo/e9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Z


# direct methods
.method public synthetic constructor <init>(IZ)V
    .locals 0

    .line 1
    iput p1, p0, Lo/e9;->a:I

    iput-boolean p2, p0, Lo/e9;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget v0, p0, Lo/e9;->a:I

    .line 3
    packed-switch v0, :pswitch_data_0

    .line 6
    sget-object v0, Lo/g9;->c:Lo/g7;

    .line 8
    if-eqz v0, :cond_0

    .line 10
    iget-boolean v1, p0, Lo/e9;->b:Z

    .line 12
    invoke-virtual {v0, v1}, Lo/g7;->setEspEnabled(Z)V

    .line 15
    :cond_0
    return-void

    .line 16
    :pswitch_0
    sget-object v0, Lo/g9;->c:Lo/g7;

    .line 18
    if-eqz v0, :cond_1

    .line 20
    iget-boolean v1, p0, Lo/e9;->b:Z

    .line 22
    invoke-virtual {v0, v1}, Lo/g7;->setRadarEnabled(Z)V

    .line 25
    :cond_1
    return-void

    nop

    .line 27
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
