.class public final Lo/af;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lo/bf;

.field public final synthetic c:Lo/K5;


# direct methods
.method public synthetic constructor <init>(Lo/K5;Lo/bf;I)V
    .locals 0

    .line 1
    iput p3, p0, Lo/af;->a:I

    iput-object p1, p0, Lo/af;->c:Lo/K5;

    iput-object p2, p0, Lo/af;->b:Lo/bf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget v0, p0, Lo/af;->a:I

    .line 3
    packed-switch v0, :pswitch_data_0

    .line 6
    iget-object v0, p0, Lo/af;->c:Lo/K5;

    .line 8
    iget-object v1, v0, Lo/K5;->b:Ljava/util/ArrayList;

    .line 10
    iget-object v2, p0, Lo/af;->b:Lo/bf;

    .line 12
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 15
    iget-object v0, v0, Lo/K5;->c:Ljava/util/ArrayList;

    .line 17
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 20
    return-void

    .line 21
    :pswitch_0
    iget-object v0, p0, Lo/af;->c:Lo/K5;

    .line 23
    iget-object v0, v0, Lo/K5;->b:Ljava/util/ArrayList;

    .line 25
    iget-object v1, p0, Lo/af;->b:Lo/bf;

    .line 27
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_0

    .line 33
    iget v0, v1, Lo/bf;->a:I

    .line 35
    iget-object v1, v1, Lo/bf;->c:Lo/T7;

    .line 37
    iget-object v1, v1, Lo/T7;->E:Landroid/view/View;

    .line 39
    invoke-static {v1, v0}, Lo/o5;->a(Landroid/view/View;I)V

    .line 42
    :cond_0
    return-void

    .line 43
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
