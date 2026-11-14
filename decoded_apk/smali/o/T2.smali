.class public final Lo/T2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public b:I

.field public final c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;II)V
    .locals 0

    .line 1
    iput p3, p0, Lo/T2;->a:I

    iput-object p1, p0, Lo/T2;->c:Ljava/lang/Object;

    iput p2, p0, Lo/T2;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;ILjava/lang/Throwable;)V
    .locals 0

    const/4 p3, 0x2

    iput p3, p0, Lo/T2;->a:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    const-string p3, "initCallbacks cannot be null"

    invoke-static {p1, p3}, Lo/Ha;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p3, p0, Lo/T2;->c:Ljava/lang/Object;

    .line 5
    iput p2, p0, Lo/T2;->b:I

    return-void
.end method

.method public constructor <init>(Lo/W2;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lo/T2;->a:I

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/T2;->c:Ljava/lang/Object;

    const/4 p1, -0x1

    .line 7
    iput p1, p0, Lo/T2;->b:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget v0, p0, Lo/T2;->a:I

    .line 3
    packed-switch v0, :pswitch_data_0

    .line 6
    iget-object v0, p0, Lo/T2;->c:Ljava/lang/Object;

    .line 8
    check-cast v0, Lo/Va;

    .line 10
    iget-object v0, v0, Lo/Va;->a0:Landroidx/recyclerview/widget/RecyclerView;

    .line 12
    iget-boolean v1, v0, Landroidx/recyclerview/widget/RecyclerView;->u:Z

    .line 14
    if-eqz v1, :cond_0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->l:Lo/ud;

    .line 19
    if-nez v1, :cond_1

    .line 21
    const-string v0, "RecyclerView"

    .line 23
    const-string v1, "Cannot smooth scroll without a LayoutManager set. Call setLayoutManager with a non-null argument."

    .line 25
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    iget v2, p0, Lo/T2;->b:I

    .line 31
    invoke-virtual {v1, v0, v2}, Lo/ud;->x0(Landroidx/recyclerview/widget/RecyclerView;I)V

    .line 34
    :goto_0
    return-void

    .line 35
    :pswitch_0
    iget-object v0, p0, Lo/T2;->c:Ljava/lang/Object;

    .line 37
    check-cast v0, Ljava/util/ArrayList;

    .line 39
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 42
    move-result v1

    .line 43
    iget v2, p0, Lo/T2;->b:I

    .line 45
    const/4 v3, 0x1

    .line 46
    const/4 v4, 0x0

    .line 47
    if-eq v2, v3, :cond_2

    .line 49
    :goto_1
    if-ge v4, v1, :cond_3

    .line 51
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 54
    move-result-object v2

    .line 55
    check-cast v2, Lo/A6;

    .line 57
    invoke-virtual {v2}, Lo/A6;->a()V

    .line 60
    add-int/lit8 v4, v4, 0x1

    .line 62
    goto :goto_1

    .line 63
    :cond_2
    :goto_2
    if-ge v4, v1, :cond_3

    .line 65
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 68
    move-result-object v2

    .line 69
    check-cast v2, Lo/A6;

    .line 71
    invoke-virtual {v2}, Lo/A6;->b()V

    .line 74
    add-int/lit8 v4, v4, 0x1

    .line 76
    goto :goto_2

    .line 77
    :cond_3
    return-void

    .line 78
    :pswitch_1
    iget-object v0, p0, Lo/T2;->c:Ljava/lang/Object;

    .line 80
    check-cast v0, Lo/C;

    .line 82
    iget-object v0, v0, Lo/C;->b:Ljava/lang/Object;

    .line 84
    check-cast v0, Lo/Ha;

    .line 86
    if-eqz v0, :cond_4

    .line 88
    iget v1, p0, Lo/T2;->b:I

    .line 90
    invoke-virtual {v0, v1}, Lo/Ha;->h0(I)V

    .line 93
    :cond_4
    return-void

    .line 94
    :pswitch_2
    iget-object v0, p0, Lo/T2;->c:Ljava/lang/Object;

    .line 96
    check-cast v0, Lo/W2;

    .line 98
    iget-object v0, v0, Lo/W2;->h:Lo/U2;

    .line 100
    iget v1, p0, Lo/T2;->b:I

    .line 102
    const/4 v2, 0x4

    .line 103
    invoke-virtual {v0, v1, v2}, Lo/i7;->x(II)V

    .line 106
    return-void

    .line 107
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
