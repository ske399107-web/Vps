.class public final Lo/Ta;
.super Lo/rd;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lo/Va;


# direct methods
.method public constructor <init>(Lo/Va;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lo/Ta;->a:Lo/Va;

    .line 6
    const/4 p1, 0x0

    .line 7
    invoke-static {p1}, Lo/Xg;->c(Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 10
    invoke-static {p1}, Lo/Xg;->c(Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 13
    return-void
.end method


# virtual methods
.method public final a(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Lo/md;

    .line 4
    move-result-object v0

    .line 5
    instance-of v0, v0, Lo/Wi;

    .line 7
    if-eqz v0, :cond_1

    .line 9
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Lo/ud;

    .line 12
    move-result-object v0

    .line 13
    instance-of v0, v0, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 15
    if-nez v0, :cond_0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Lo/md;

    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Lo/Wi;

    .line 24
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Lo/ud;

    .line 27
    move-result-object p1

    .line 28
    check-cast p1, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 30
    iget-object p1, p0, Lo/Ta;->a:Lo/Va;

    .line 32
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    const/4 p1, 0x0

    .line 36
    throw p1

    .line 37
    :cond_1
    :goto_0
    return-void
.end method
