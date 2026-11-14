.class public final synthetic Lo/n4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo/se;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lo/n4;->a:I

    iput-object p2, p0, Lo/n4;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Landroid/os/Bundle;
    .locals 5

    .line 1
    iget v0, p0, Lo/n4;->a:I

    .line 3
    packed-switch v0, :pswitch_data_0

    .line 6
    iget-object v0, p0, Lo/n4;->b:Ljava/lang/Object;

    .line 8
    check-cast v0, Lo/i8;

    .line 10
    invoke-virtual {v0}, Lo/i8;->S()Landroid/os/Bundle;

    .line 13
    move-result-object v0

    .line 14
    return-object v0

    .line 15
    :pswitch_0
    iget-object v0, p0, Lo/n4;->b:Ljava/lang/Object;

    .line 17
    check-cast v0, Lo/U0;

    .line 19
    :cond_0
    iget-object v1, v0, Lo/U0;->r:Lo/C;

    .line 21
    iget-object v1, v1, Lo/C;->b:Ljava/lang/Object;

    .line 23
    check-cast v1, Lo/V7;

    .line 25
    iget-object v1, v1, Lo/V7;->j:Lo/i8;

    .line 27
    invoke-static {v1}, Lo/U0;->l(Lo/i8;)Z

    .line 30
    move-result v1

    .line 31
    if-nez v1, :cond_0

    .line 33
    iget-object v0, v0, Lo/U0;->s:Landroidx/lifecycle/a;

    .line 35
    sget-object v1, Lo/L9;->ON_STOP:Lo/L9;

    .line 37
    invoke-virtual {v0, v1}, Landroidx/lifecycle/a;->d(Lo/L9;)V

    .line 40
    new-instance v0, Landroid/os/Bundle;

    .line 42
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 45
    return-object v0

    .line 46
    :pswitch_1
    iget-object v0, p0, Lo/n4;->b:Ljava/lang/Object;

    .line 48
    check-cast v0, Lo/U0;

    .line 50
    new-instance v1, Landroid/os/Bundle;

    .line 52
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 55
    iget-object v0, v0, Landroidx/activity/a;->j:Lo/p4;

    .line 57
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 60
    new-instance v2, Ljava/util/ArrayList;

    .line 62
    iget-object v3, v0, Lo/p4;->b:Ljava/util/HashMap;

    .line 64
    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 67
    move-result-object v4

    .line 68
    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 71
    const-string v4, "KEY_COMPONENT_ACTIVITY_REGISTERED_RCS"

    .line 73
    invoke-virtual {v1, v4, v2}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 76
    new-instance v2, Ljava/util/ArrayList;

    .line 78
    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 81
    move-result-object v3

    .line 82
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 85
    const-string v3, "KEY_COMPONENT_ACTIVITY_REGISTERED_KEYS"

    .line 87
    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 90
    new-instance v2, Ljava/util/ArrayList;

    .line 92
    iget-object v3, v0, Lo/p4;->d:Ljava/util/ArrayList;

    .line 94
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 97
    const-string v3, "KEY_COMPONENT_ACTIVITY_LAUNCHED_KEYS"

    .line 99
    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 102
    iget-object v0, v0, Lo/p4;->g:Landroid/os/Bundle;

    .line 104
    invoke-virtual {v0}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    .line 107
    move-result-object v0

    .line 108
    check-cast v0, Landroid/os/Bundle;

    .line 110
    const-string v2, "KEY_COMPONENT_ACTIVITY_PENDING_RESULT"

    .line 112
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 115
    return-object v1

    nop

    .line 117
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
