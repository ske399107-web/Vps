.class public final Lo/S0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo/se;


# instance fields
.field public final synthetic a:I

.field public final b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lo/U0;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lo/S0;->a:I

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/S0;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lo/b1;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lo/S0;->a:I

    const-string v0, "registry"

    invoke-static {p1, v0}, Lo/x9;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lo/S0;->b:Ljava/lang/Object;

    .line 3
    const-string v0, "androidx.savedstate.Restarter"

    invoke-virtual {p1, v0, p0}, Lo/b1;->e(Ljava/lang/String;Lo/se;)V

    return-void
.end method


# virtual methods
.method public final a()Landroid/os/Bundle;
    .locals 3

    .line 1
    iget v0, p0, Lo/S0;->a:I

    .line 3
    packed-switch v0, :pswitch_data_0

    .line 6
    new-instance v0, Landroid/os/Bundle;

    .line 8
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 11
    new-instance v1, Ljava/util/ArrayList;

    .line 13
    iget-object v2, p0, Lo/S0;->b:Ljava/lang/Object;

    .line 15
    check-cast v2, Ljava/util/LinkedHashSet;

    .line 17
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 20
    const-string v2, "classes_to_restore"

    .line 22
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 25
    return-object v0

    .line 26
    :pswitch_0
    new-instance v0, Landroid/os/Bundle;

    .line 28
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 31
    iget-object v1, p0, Lo/S0;->b:Ljava/lang/Object;

    .line 33
    check-cast v1, Lo/U0;

    .line 35
    invoke-virtual {v1}, Lo/U0;->j()Lo/h1;

    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    return-object v0

    .line 43
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
