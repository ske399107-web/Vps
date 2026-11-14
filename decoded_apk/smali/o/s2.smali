.class public final Lo/s2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo/r9;


# static fields
.field public static volatile e:Lo/s2;

.field public static final f:Ljava/lang/Object;

.field public static g:Lo/s2;


# instance fields
.field public final synthetic a:I

.field public b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;

.field public d:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 6
    sput-object v0, Lo/s2;->f:Ljava/lang/Object;

    .line 8
    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x2

    iput v0, p0, Lo/s2;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lo/s2;->a:I

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lo/s2;->d:Ljava/lang/Object;

    .line 22
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lo/s2;->c:Ljava/lang/Object;

    .line 23
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lo/s2;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V
    .locals 1

    const/16 v0, 0x8

    iput v0, p0, Lo/s2;->a:I

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lo/s2;->d:Ljava/lang/Object;

    .line 13
    iput-object p2, p0, Lo/s2;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/location/LocationManager;)V
    .locals 1

    const/16 v0, 0x9

    iput v0, p0, Lo/s2;->a:I

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Lo/Eg;

    .line 16
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object v0, p0, Lo/s2;->c:Ljava/lang/Object;

    .line 18
    iput-object p1, p0, Lo/s2;->d:Ljava/lang/Object;

    .line 19
    iput-object p2, p0, Lo/s2;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 2
    iput p4, p0, Lo/s2;->a:I

    iput-object p1, p0, Lo/s2;->b:Ljava/lang/Object;

    iput-object p2, p0, Lo/s2;->c:Ljava/lang/Object;

    iput-object p3, p0, Lo/s2;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Runnable;)V
    .locals 1

    const/4 v0, 0x7

    iput v0, p0, Lo/s2;->a:I

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lo/s2;->d:Ljava/lang/Object;

    .line 9
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/s2;->b:Ljava/lang/Object;

    .line 10
    iput-object p1, p0, Lo/s2;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lo/H5;Lo/u6;Lo/u5;Ljava/util/Set;)V
    .locals 7

    const/4 v0, 0x5

    iput v0, p0, Lo/s2;->a:I

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p2, p0, Lo/s2;->b:Ljava/lang/Object;

    .line 32
    iput-object p1, p0, Lo/s2;->c:Ljava/lang/Object;

    .line 33
    iput-object p3, p0, Lo/s2;->d:Ljava/lang/Object;

    .line 34
    invoke-interface {p4}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_1

    .line 35
    :cond_0
    invoke-interface {p4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [I

    .line 36
    new-instance v1, Ljava/lang/String;

    array-length p3, p2

    const/4 p4, 0x0

    invoke-direct {v1, p2, p4, p3}, Ljava/lang/String;-><init>([III)V

    .line 37
    new-instance v6, Lo/C;

    const/16 p2, 0xd

    invoke-direct {v6, p2, v1}, Lo/C;-><init>(ILjava/lang/Object;)V

    .line 38
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v2, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lo/s2;->z(Ljava/lang/CharSequence;IIIZLo/M6;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public constructor <init>(Lo/M4;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lo/s2;->a:I

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/s2;->b:Ljava/lang/Object;

    .line 26
    new-instance v0, Lo/c3;

    .line 27
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object v0, p0, Lo/s2;->c:Ljava/lang/Object;

    .line 29
    iput-object p1, p0, Lo/s2;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lo/ld;)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Lo/s2;->a:I

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lo/s2;->b:Ljava/lang/Object;

    .line 5
    new-instance p1, Lo/L3;

    invoke-direct {p1}, Lo/L3;-><init>()V

    iput-object p1, p0, Lo/s2;->c:Ljava/lang/Object;

    .line 6
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lo/s2;->d:Ljava/lang/Object;

    return-void
.end method

.method public static h(Landroid/text/Editable;Landroid/view/KeyEvent;Z)Z
    .locals 6

    .line 1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getMetaState()I

    .line 4
    move-result p1

    .line 5
    invoke-static {p1}, Landroid/view/KeyEvent;->metaStateHasNoModifiers(I)Z

    .line 8
    move-result p1

    .line 9
    const/4 v0, 0x0

    .line 10
    if-nez p1, :cond_0

    .line 12
    return v0

    .line 13
    :cond_0
    invoke-static {p0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    .line 16
    move-result p1

    .line 17
    invoke-static {p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    .line 20
    move-result v1

    .line 21
    const/4 v2, -0x1

    .line 22
    if-eq p1, v2, :cond_6

    .line 24
    if-eq v1, v2, :cond_6

    .line 26
    if-eq p1, v1, :cond_1

    .line 28
    goto :goto_1

    .line 29
    :cond_1
    const-class v2, Lo/Mg;

    .line 31
    invoke-interface {p0, p1, v1, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    .line 34
    move-result-object v1

    .line 35
    check-cast v1, [Lo/Mg;

    .line 37
    if-eqz v1, :cond_6

    .line 39
    array-length v2, v1

    .line 40
    if-lez v2, :cond_6

    .line 42
    array-length v2, v1

    .line 43
    move v3, v0

    .line 44
    :goto_0
    if-ge v3, v2, :cond_6

    .line 46
    aget-object v4, v1, v3

    .line 48
    invoke-interface {p0, v4}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    .line 51
    move-result v5

    .line 52
    invoke-interface {p0, v4}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    .line 55
    move-result v4

    .line 56
    if-eqz p2, :cond_2

    .line 58
    if-eq v5, p1, :cond_4

    .line 60
    :cond_2
    if-nez p2, :cond_3

    .line 62
    if-eq v4, p1, :cond_4

    .line 64
    :cond_3
    if-le p1, v5, :cond_5

    .line 66
    if-ge p1, v4, :cond_5

    .line 68
    :cond_4
    invoke-interface {p0, v5, v4}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 71
    const/4 p0, 0x1

    .line 72
    return p0

    .line 73
    :cond_5
    add-int/lit8 v3, v3, 0x1

    .line 75
    goto :goto_0

    .line 76
    :cond_6
    :goto_1
    return v0
.end method

.method public static r(Landroid/content/Context;)Lo/s2;
    .locals 2

    .line 1
    sget-object v0, Lo/s2;->e:Lo/s2;

    .line 3
    if-nez v0, :cond_1

    .line 5
    sget-object v0, Lo/s2;->f:Ljava/lang/Object;

    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lo/s2;->e:Lo/s2;

    .line 10
    if-nez v1, :cond_0

    .line 12
    new-instance v1, Lo/s2;

    .line 14
    invoke-direct {v1, p0}, Lo/s2;-><init>(Landroid/content/Context;)V

    .line 17
    sput-object v1, Lo/s2;->e:Lo/s2;

    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception p0

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    :goto_0
    monitor-exit v0

    .line 23
    goto :goto_2

    .line 24
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p0

    .line 26
    :cond_1
    :goto_2
    sget-object p0, Lo/s2;->e:Lo/s2;

    .line 28
    return-object p0
.end method

.method public static y(Landroid/content/Context;Landroid/util/AttributeSet;[II)Lo/s2;
    .locals 2

    .line 1
    new-instance v0, Lo/s2;

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, p1, p2, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 7
    move-result-object p1

    .line 8
    invoke-direct {v0, p0, p1}, Lo/s2;-><init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    .line 11
    return-object v0
.end method


# virtual methods
.method public A()V
    .locals 1

    .line 1
    iget-object v0, p0, Lo/s2;->b:Ljava/lang/Object;

    .line 3
    check-cast v0, Landroid/content/res/TypedArray;

    .line 5
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 8
    return-void
.end method

.method public B(Lo/M4;III)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    iget v0, p1, Lo/L4;->b0:I

    .line 6
    iget v1, p1, Lo/L4;->c0:I

    .line 8
    const/4 v2, 0x0

    .line 9
    iput v2, p1, Lo/L4;->b0:I

    .line 11
    iput v2, p1, Lo/L4;->c0:I

    .line 13
    invoke-virtual {p1, p3}, Lo/L4;->O(I)V

    .line 16
    invoke-virtual {p1, p4}, Lo/L4;->L(I)V

    .line 19
    if-gez v0, :cond_0

    .line 21
    iput v2, p1, Lo/L4;->b0:I

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iput v0, p1, Lo/L4;->b0:I

    .line 26
    :goto_0
    if-gez v1, :cond_1

    .line 28
    iput v2, p1, Lo/L4;->c0:I

    .line 30
    goto :goto_1

    .line 31
    :cond_1
    iput v1, p1, Lo/L4;->c0:I

    .line 33
    :goto_1
    iget-object p1, p0, Lo/s2;->d:Ljava/lang/Object;

    .line 35
    check-cast p1, Lo/M4;

    .line 37
    iput p2, p1, Lo/M4;->t0:I

    .line 39
    invoke-virtual {p1}, Lo/M4;->U()V

    .line 42
    return-void
.end method

.method public C(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lo/s2;->d:Ljava/lang/Object;

    .line 3
    check-cast v0, Ljava/util/ArrayList;

    .line 5
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_1

    .line 11
    iget-object v0, p0, Lo/s2;->b:Ljava/lang/Object;

    .line 13
    check-cast v0, Lo/ld;

    .line 15
    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->I(Landroid/view/View;)Lo/Id;

    .line 18
    move-result-object p1

    .line 19
    if-eqz p1, :cond_1

    .line 21
    iget v1, p1, Lo/Id;->p:I

    .line 23
    iget-object v0, v0, Lo/ld;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 25
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->L()Z

    .line 28
    move-result v2

    .line 29
    if-eqz v2, :cond_0

    .line 31
    iput v1, p1, Lo/Id;->q:I

    .line 33
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->p0:Ljava/util/ArrayList;

    .line 35
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    goto :goto_0

    .line 39
    :cond_0
    sget-object v0, Lo/Dh;->a:Ljava/util/WeakHashMap;

    .line 41
    iget-object v0, p1, Lo/Id;->a:Landroid/view/View;

    .line 43
    invoke-virtual {v0, v1}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 46
    :goto_0
    const/4 v0, 0x0

    .line 47
    iput v0, p1, Lo/Id;->p:I

    .line 49
    :cond_1
    return-void
.end method

.method public D(Lo/M4;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lo/s2;->b:Ljava/lang/Object;

    .line 3
    check-cast v0, Ljava/util/ArrayList;

    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 8
    iget-object v1, p1, Lo/M4;->q0:Ljava/util/ArrayList;

    .line 10
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 13
    move-result v1

    .line 14
    const/4 v2, 0x0

    .line 15
    move v3, v2

    .line 16
    :goto_0
    const/4 v4, 0x1

    .line 17
    if-ge v3, v1, :cond_2

    .line 19
    iget-object v5, p1, Lo/M4;->q0:Ljava/util/ArrayList;

    .line 21
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 24
    move-result-object v5

    .line 25
    check-cast v5, Lo/L4;

    .line 27
    iget-object v6, v5, Lo/L4;->p0:[I

    .line 29
    aget v7, v6, v2

    .line 31
    const/4 v8, 0x3

    .line 32
    if-eq v7, v8, :cond_0

    .line 34
    aget v4, v6, v4

    .line 36
    if-ne v4, v8, :cond_1

    .line 38
    :cond_0
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 43
    goto :goto_0

    .line 44
    :cond_2
    iget-object p1, p1, Lo/M4;->s0:Lo/O5;

    .line 46
    iput-boolean v4, p1, Lo/O5;->b:Z

    .line 48
    return-void
.end method

.method public a()V
    .locals 0

    .line 1
    return-void
.end method

.method public b()Landroid/net/Uri;
    .locals 1

    .line 1
    iget-object v0, p0, Lo/s2;->d:Ljava/lang/Object;

    .line 3
    check-cast v0, Landroid/net/Uri;

    .line 5
    return-object v0
.end method

.method public c()Landroid/content/ClipDescription;
    .locals 1

    .line 1
    iget-object v0, p0, Lo/s2;->c:Ljava/lang/Object;

    .line 3
    check-cast v0, Landroid/content/ClipDescription;

    .line 5
    return-object v0
.end method

.method public d()Ljava/lang/Object;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method

.method public e()Landroid/net/Uri;
    .locals 1

    .line 1
    iget-object v0, p0, Lo/s2;->b:Ljava/lang/Object;

    .line 3
    check-cast v0, Landroid/net/Uri;

    .line 5
    return-object v0
.end method

.method public f(Landroid/view/View;IZ)V
    .locals 2

    .line 1
    iget-object v0, p0, Lo/s2;->b:Ljava/lang/Object;

    .line 3
    check-cast v0, Lo/ld;

    .line 5
    iget-object v0, v0, Lo/ld;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 7
    if-gez p2, :cond_0

    .line 9
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 12
    move-result p2

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {p0, p2}, Lo/s2;->s(I)I

    .line 17
    move-result p2

    .line 18
    :goto_0
    iget-object v1, p0, Lo/s2;->c:Ljava/lang/Object;

    .line 20
    check-cast v1, Lo/L3;

    .line 22
    invoke-virtual {v1, p2, p3}, Lo/L3;->e(IZ)V

    .line 25
    if-eqz p3, :cond_1

    .line 27
    invoke-virtual {p0, p1}, Lo/s2;->w(Landroid/view/View;)V

    .line 30
    :cond_1
    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 33
    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->I(Landroid/view/View;)Lo/Id;

    .line 36
    return-void
.end method

.method public g(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lo/s2;->b:Ljava/lang/Object;

    .line 3
    check-cast v0, Lo/ld;

    .line 5
    iget-object v0, v0, Lo/ld;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 7
    if-gez p2, :cond_0

    .line 9
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 12
    move-result p2

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {p0, p2}, Lo/s2;->s(I)I

    .line 17
    move-result p2

    .line 18
    :goto_0
    iget-object v1, p0, Lo/s2;->c:Ljava/lang/Object;

    .line 20
    check-cast v1, Lo/L3;

    .line 22
    invoke-virtual {v1, p2, p4}, Lo/L3;->e(IZ)V

    .line 25
    if-eqz p4, :cond_1

    .line 27
    invoke-virtual {p0, p1}, Lo/s2;->w(Landroid/view/View;)V

    .line 30
    :cond_1
    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->I(Landroid/view/View;)Lo/Id;

    .line 33
    move-result-object p4

    .line 34
    if-eqz p4, :cond_4

    .line 36
    invoke-virtual {p4}, Lo/Id;->k()Z

    .line 39
    move-result v1

    .line 40
    if-nez v1, :cond_3

    .line 42
    invoke-virtual {p4}, Lo/Id;->p()Z

    .line 45
    move-result v1

    .line 46
    if-eqz v1, :cond_2

    .line 48
    goto :goto_1

    .line 49
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 51
    new-instance p2, Ljava/lang/StringBuilder;

    .line 53
    const-string p3, "Called attach on a child which is not detached: "

    .line 55
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 61
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->y()Ljava/lang/String;

    .line 64
    move-result-object p3

    .line 65
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    move-result-object p2

    .line 72
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 75
    throw p1

    .line 76
    :cond_3
    :goto_1
    iget v1, p4, Lo/Id;->j:I

    .line 78
    and-int/lit16 v1, v1, -0x101

    .line 80
    iput v1, p4, Lo/Id;->j:I

    .line 82
    :cond_4
    invoke-static {v0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->b(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 85
    return-void
.end method

.method public i(I)V
    .locals 4

    .line 1
    invoke-virtual {p0, p1}, Lo/s2;->s(I)I

    .line 4
    move-result p1

    .line 5
    iget-object v0, p0, Lo/s2;->c:Ljava/lang/Object;

    .line 7
    check-cast v0, Lo/L3;

    .line 9
    invoke-virtual {v0, p1}, Lo/L3;->f(I)Z

    .line 12
    iget-object v0, p0, Lo/s2;->b:Ljava/lang/Object;

    .line 14
    check-cast v0, Lo/ld;

    .line 16
    iget-object v0, v0, Lo/ld;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 18
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 21
    move-result-object v1

    .line 22
    if-eqz v1, :cond_2

    .line 24
    invoke-static {v1}, Landroidx/recyclerview/widget/RecyclerView;->I(Landroid/view/View;)Lo/Id;

    .line 27
    move-result-object v1

    .line 28
    if-eqz v1, :cond_2

    .line 30
    invoke-virtual {v1}, Lo/Id;->k()Z

    .line 33
    move-result v2

    .line 34
    if-eqz v2, :cond_1

    .line 36
    invoke-virtual {v1}, Lo/Id;->p()Z

    .line 39
    move-result v2

    .line 40
    if-eqz v2, :cond_0

    .line 42
    goto :goto_0

    .line 43
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 45
    new-instance v2, Ljava/lang/StringBuilder;

    .line 47
    const-string v3, "called detach on an already detached child "

    .line 49
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 52
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 55
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->y()Ljava/lang/String;

    .line 58
    move-result-object v0

    .line 59
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    move-result-object v0

    .line 66
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 69
    throw p1

    .line 70
    :cond_1
    :goto_0
    const/16 v2, 0x100

    .line 72
    invoke-virtual {v1, v2}, Lo/Id;->a(I)V

    .line 75
    :cond_2
    invoke-static {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->c(Landroidx/recyclerview/widget/RecyclerView;I)V

    .line 78
    return-void
.end method

.method public j(Landroid/os/Bundle;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lo/s2;->d:Ljava/lang/Object;

    .line 3
    check-cast v0, Landroid/content/Context;

    .line 5
    const v1, 0x7f0e001c

    .line 8
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 11
    move-result-object v0

    .line 12
    if-eqz p1, :cond_2

    .line 14
    :try_start_0
    new-instance v1, Ljava/util/HashSet;

    .line 16
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 19
    invoke-virtual {p1}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    .line 22
    move-result-object v2

    .line 23
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 26
    move-result-object v2

    .line 27
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    move-result v3
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    iget-object v4, p0, Lo/s2;->c:Ljava/lang/Object;

    .line 33
    check-cast v4, Ljava/util/HashSet;

    .line 35
    if-eqz v3, :cond_1

    .line 37
    :try_start_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 40
    move-result-object v3

    .line 41
    check-cast v3, Ljava/lang/String;

    .line 43
    const/4 v5, 0x0

    .line 44
    invoke-virtual {p1, v3, v5}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 47
    move-result-object v5

    .line 48
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 51
    move-result v5

    .line 52
    if-eqz v5, :cond_0

    .line 54
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 57
    move-result-object v3

    .line 58
    const-class v5, Lo/n9;

    .line 60
    invoke-virtual {v5, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 63
    move-result v5

    .line 64
    if-eqz v5, :cond_0

    .line 66
    invoke-virtual {v4, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 69
    goto :goto_0

    .line 70
    :catch_0
    move-exception p1

    .line 71
    goto :goto_2

    .line 72
    :cond_1
    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 75
    move-result-object p1

    .line 76
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 79
    move-result v0

    .line 80
    if-eqz v0, :cond_2

    .line 82
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 85
    move-result-object v0

    .line 86
    check-cast v0, Ljava/lang/Class;

    .line 88
    invoke-virtual {p0, v0, v1}, Lo/s2;->k(Ljava/lang/Class;Ljava/util/HashSet;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 91
    goto :goto_1

    .line 92
    :goto_2
    new-instance v0, Lo/S7;

    .line 94
    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 97
    throw v0

    .line 98
    :cond_2
    return-void
.end method

.method public k(Ljava/lang/Class;Ljava/util/HashSet;)Ljava/lang/Object;
    .locals 5

    .line 1
    const-string v0, "Cannot initialize "

    .line 3
    invoke-static {}, Lo/Ha;->Y()Z

    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 9
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 12
    move-result-object v1

    .line 13
    invoke-static {v1}, Lo/Ha;->a(Ljava/lang/String;)V

    .line 16
    goto :goto_0

    .line 17
    :catchall_0
    move-exception p1

    .line 18
    goto/16 :goto_4

    .line 20
    :cond_0
    :goto_0
    invoke-virtual {p2, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 23
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    if-nez v1, :cond_4

    .line 26
    iget-object v0, p0, Lo/s2;->b:Ljava/lang/Object;

    .line 28
    check-cast v0, Ljava/util/HashMap;

    .line 30
    :try_start_1
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 33
    move-result v1

    .line 34
    if-nez v1, :cond_3

    .line 36
    invoke-virtual {p2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 39
    const/4 v1, 0x0

    .line 40
    :try_start_2
    new-array v2, v1, [Ljava/lang/Class;

    .line 42
    invoke-virtual {p1, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 45
    move-result-object v2

    .line 46
    new-array v1, v1, [Ljava/lang/Object;

    .line 48
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    move-result-object v1

    .line 52
    check-cast v1, Lo/n9;

    .line 54
    invoke-interface {v1}, Lo/n9;->a()Ljava/util/List;

    .line 57
    move-result-object v2

    .line 58
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 61
    move-result v3

    .line 62
    if-nez v3, :cond_2

    .line 64
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 67
    move-result-object v2

    .line 68
    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 71
    move-result v3

    .line 72
    if-eqz v3, :cond_2

    .line 74
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 77
    move-result-object v3

    .line 78
    check-cast v3, Ljava/lang/Class;

    .line 80
    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 83
    move-result v4

    .line 84
    if-nez v4, :cond_1

    .line 86
    invoke-virtual {p0, v3, p2}, Lo/s2;->k(Ljava/lang/Class;Ljava/util/HashSet;)Ljava/lang/Object;

    .line 89
    goto :goto_1

    .line 90
    :catchall_1
    move-exception p1

    .line 91
    goto :goto_2

    .line 92
    :cond_2
    iget-object v2, p0, Lo/s2;->d:Ljava/lang/Object;

    .line 94
    check-cast v2, Landroid/content/Context;

    .line 96
    invoke-interface {v1, v2}, Lo/n9;->b(Landroid/content/Context;)Ljava/lang/Object;

    .line 99
    move-result-object v1

    .line 100
    invoke-virtual {p2, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 103
    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 106
    goto :goto_3

    .line 107
    :goto_2
    :try_start_3
    new-instance p2, Lo/S7;

    .line 109
    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 112
    throw p2

    .line 113
    :cond_3
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    move-result-object v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 117
    :goto_3
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 120
    return-object v1

    .line 121
    :cond_4
    :try_start_4
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 124
    move-result-object p1

    .line 125
    new-instance p2, Ljava/lang/StringBuilder;

    .line 127
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 130
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    const-string p1, ". Cycle detected."

    .line 135
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 141
    move-result-object p1

    .line 142
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 144
    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 147
    throw p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 148
    :goto_4
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 151
    throw p1
.end method

.method public l(I)Landroid/view/View;
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lo/s2;->s(I)I

    .line 4
    move-result p1

    .line 5
    iget-object v0, p0, Lo/s2;->b:Ljava/lang/Object;

    .line 7
    check-cast v0, Lo/ld;

    .line 9
    iget-object v0, v0, Lo/ld;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 11
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 14
    move-result-object p1

    .line 15
    return-object p1
.end method

.method public m()I
    .locals 2

    .line 1
    iget-object v0, p0, Lo/s2;->b:Ljava/lang/Object;

    .line 3
    check-cast v0, Lo/ld;

    .line 5
    iget-object v0, v0, Lo/ld;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 7
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 10
    move-result v0

    .line 11
    iget-object v1, p0, Lo/s2;->d:Ljava/lang/Object;

    .line 13
    check-cast v1, Ljava/util/ArrayList;

    .line 15
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 18
    move-result v1

    .line 19
    sub-int/2addr v0, v1

    .line 20
    return v0
.end method

.method public n(I)Landroid/content/res/ColorStateList;
    .locals 3

    .line 1
    iget-object v0, p0, Lo/s2;->b:Ljava/lang/Object;

    .line 3
    check-cast v0, Landroid/content/res/TypedArray;

    .line 5
    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-virtual {v0, p1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_0

    .line 18
    iget-object v2, p0, Lo/s2;->d:Ljava/lang/Object;

    .line 20
    check-cast v2, Landroid/content/Context;

    .line 22
    invoke-static {v2, v1}, Lo/L1;->v(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 25
    move-result-object v1

    .line 26
    if-eqz v1, :cond_0

    .line 28
    return-object v1

    .line 29
    :cond_0
    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    .line 32
    move-result-object p1

    .line 33
    return-object p1
.end method

.method public o(I)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 1
    iget-object v0, p0, Lo/s2;->b:Ljava/lang/Object;

    .line 3
    check-cast v0, Landroid/content/res/TypedArray;

    .line 5
    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-virtual {v0, p1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_0

    .line 18
    iget-object p1, p0, Lo/s2;->d:Ljava/lang/Object;

    .line 20
    check-cast p1, Landroid/content/Context;

    .line 22
    invoke-static {p1, v1}, Lo/L1;->z(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 25
    move-result-object p1

    .line 26
    return-object p1

    .line 27
    :cond_0
    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 30
    move-result-object p1

    .line 31
    return-object p1
.end method

.method public p(I)Landroid/graphics/drawable/Drawable;
    .locals 4

    .line 1
    iget-object v0, p0, Lo/s2;->b:Ljava/lang/Object;

    .line 3
    check-cast v0, Landroid/content/res/TypedArray;

    .line 5
    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 11
    iget-object v0, p0, Lo/s2;->b:Ljava/lang/Object;

    .line 13
    check-cast v0, Landroid/content/res/TypedArray;

    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-virtual {v0, p1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 19
    move-result p1

    .line 20
    if-eqz p1, :cond_0

    .line 22
    invoke-static {}, Lo/y1;->a()Lo/y1;

    .line 25
    move-result-object v0

    .line 26
    iget-object v1, p0, Lo/s2;->d:Ljava/lang/Object;

    .line 28
    check-cast v1, Landroid/content/Context;

    .line 30
    monitor-enter v0

    .line 31
    :try_start_0
    iget-object v2, v0, Lo/y1;->a:Lo/Xd;

    .line 33
    const/4 v3, 0x1

    .line 34
    invoke-virtual {v2, v1, p1, v3}, Lo/Xd;->d(Landroid/content/Context;IZ)Landroid/graphics/drawable/Drawable;

    .line 37
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    monitor-exit v0

    .line 39
    return-object p1

    .line 40
    :catchall_0
    move-exception p1

    .line 41
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 42
    throw p1

    .line 43
    :cond_0
    const/4 p1, 0x0

    .line 44
    return-object p1
.end method

.method public q(IILo/a2;)Landroid/graphics/Typeface;
    .locals 9

    .line 1
    iget-object v0, p0, Lo/s2;->b:Ljava/lang/Object;

    .line 3
    check-cast v0, Landroid/content/res/TypedArray;

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, p1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 9
    move-result v3

    .line 10
    const/4 p1, 0x0

    .line 11
    if-nez v3, :cond_0

    .line 13
    return-object p1

    .line 14
    :cond_0
    iget-object v0, p0, Lo/s2;->c:Ljava/lang/Object;

    .line 16
    check-cast v0, Landroid/util/TypedValue;

    .line 18
    if-nez v0, :cond_1

    .line 20
    new-instance v0, Landroid/util/TypedValue;

    .line 22
    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 25
    iput-object v0, p0, Lo/s2;->c:Ljava/lang/Object;

    .line 27
    :cond_1
    iget-object v0, p0, Lo/s2;->c:Ljava/lang/Object;

    .line 29
    move-object v4, v0

    .line 30
    check-cast v4, Landroid/util/TypedValue;

    .line 32
    sget-object v0, Lo/be;->a:Ljava/lang/ThreadLocal;

    .line 34
    iget-object v0, p0, Lo/s2;->d:Ljava/lang/Object;

    .line 36
    move-object v2, v0

    .line 37
    check-cast v2, Landroid/content/Context;

    .line 39
    invoke-virtual {v2}, Landroid/content/Context;->isRestricted()Z

    .line 42
    move-result v0

    .line 43
    if-eqz v0, :cond_2

    .line 45
    goto :goto_0

    .line 46
    :cond_2
    const/4 v8, 0x0

    .line 47
    const/4 v7, 0x1

    .line 48
    move v5, p2

    .line 49
    move-object v6, p3

    .line 50
    invoke-static/range {v2 .. v8}, Lo/be;->b(Landroid/content/Context;ILandroid/util/TypedValue;ILo/Ha;ZZ)Landroid/graphics/Typeface;

    .line 53
    move-result-object p1

    .line 54
    :goto_0
    return-object p1
.end method

.method public s(I)I
    .locals 5

    .line 1
    const/4 v0, -0x1

    .line 2
    if-gez p1, :cond_0

    .line 4
    return v0

    .line 5
    :cond_0
    iget-object v1, p0, Lo/s2;->b:Ljava/lang/Object;

    .line 7
    check-cast v1, Lo/ld;

    .line 9
    iget-object v1, v1, Lo/ld;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 11
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 14
    move-result v1

    .line 15
    move v2, p1

    .line 16
    :goto_0
    if-ge v2, v1, :cond_3

    .line 18
    iget-object v3, p0, Lo/s2;->c:Ljava/lang/Object;

    .line 20
    check-cast v3, Lo/L3;

    .line 22
    invoke-virtual {v3, v2}, Lo/L3;->b(I)I

    .line 25
    move-result v4

    .line 26
    sub-int v4, v2, v4

    .line 28
    sub-int v4, p1, v4

    .line 30
    if-nez v4, :cond_2

    .line 32
    :goto_1
    invoke-virtual {v3, v2}, Lo/L3;->d(I)Z

    .line 35
    move-result p1

    .line 36
    if-eqz p1, :cond_1

    .line 38
    add-int/lit8 v2, v2, 0x1

    .line 40
    goto :goto_1

    .line 41
    :cond_1
    return v2

    .line 42
    :cond_2
    add-int/2addr v2, v4

    .line 43
    goto :goto_0

    .line 44
    :cond_3
    return v0
.end method

.method public t(I)Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lo/s2;->b:Ljava/lang/Object;

    .line 3
    check-cast v0, Lo/ld;

    .line 5
    iget-object v0, v0, Lo/ld;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 7
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    iget v0, p0, Lo/s2;->a:I

    .line 3
    packed-switch v0, :pswitch_data_0

    .line 6
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 9
    move-result-object v0

    .line 10
    return-object v0

    .line 11
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 13
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    iget-object v1, p0, Lo/s2;->c:Ljava/lang/Object;

    .line 18
    check-cast v1, Lo/L3;

    .line 20
    invoke-virtual {v1}, Lo/L3;->toString()Ljava/lang/String;

    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    const-string v1, ", hidden list:"

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    iget-object v1, p0, Lo/s2;->d:Ljava/lang/Object;

    .line 34
    check-cast v1, Ljava/util/ArrayList;

    .line 36
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 39
    move-result v1

    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 43
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    move-result-object v0

    .line 47
    return-object v0

    nop

    .line 49
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public u()I
    .locals 1

    .line 1
    iget-object v0, p0, Lo/s2;->b:Ljava/lang/Object;

    .line 3
    check-cast v0, Lo/ld;

    .line 5
    iget-object v0, v0, Lo/ld;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 7
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public v(Ljava/lang/CharSequence;IILo/Lg;)Z
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    iget v1, p4, Lo/Lg;->c:I

    .line 4
    and-int/lit8 v1, v1, 0x3

    .line 6
    const/4 v2, 0x2

    .line 7
    const/4 v3, 0x0

    .line 8
    if-nez v1, :cond_4

    .line 10
    iget-object v1, p0, Lo/s2;->d:Ljava/lang/Object;

    .line 12
    check-cast v1, Lo/u5;

    .line 14
    invoke-virtual {p4}, Lo/Lg;->c()Lo/Eb;

    .line 17
    move-result-object v4

    .line 18
    const/16 v5, 0x8

    .line 20
    invoke-virtual {v4, v5}, Lo/Ef;->a(I)I

    .line 23
    move-result v5

    .line 24
    if-eqz v5, :cond_0

    .line 26
    iget-object v6, v4, Lo/Ef;->d:Ljava/lang/Object;

    .line 28
    check-cast v6, Ljava/nio/ByteBuffer;

    .line 30
    iget v4, v4, Lo/Ef;->a:I

    .line 32
    add-int/2addr v5, v4

    .line 33
    invoke-virtual {v6, v5}, Ljava/nio/ByteBuffer;->getShort(I)S

    .line 36
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    sget-object v4, Lo/u5;->b:Ljava/lang/ThreadLocal;

    .line 41
    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 44
    move-result-object v5

    .line 45
    if-nez v5, :cond_1

    .line 47
    new-instance v5, Ljava/lang/StringBuilder;

    .line 49
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    invoke-virtual {v4, v5}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 55
    :cond_1
    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 58
    move-result-object v4

    .line 59
    check-cast v4, Ljava/lang/StringBuilder;

    .line 61
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 64
    :goto_0
    if-ge p2, p3, :cond_2

    .line 66
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    .line 69
    move-result v5

    .line 70
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 73
    add-int/2addr p2, v0

    .line 74
    goto :goto_0

    .line 75
    :cond_2
    iget-object p1, v1, Lo/u5;->a:Landroid/text/TextPaint;

    .line 77
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    move-result-object p2

    .line 81
    sget p3, Lo/Bc;->a:I

    .line 83
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->hasGlyph(Ljava/lang/String;)Z

    .line 86
    move-result p1

    .line 87
    iget p2, p4, Lo/Lg;->c:I

    .line 89
    and-int/lit8 p2, p2, 0x4

    .line 91
    if-eqz p1, :cond_3

    .line 93
    or-int/lit8 p1, p2, 0x2

    .line 95
    goto :goto_1

    .line 96
    :cond_3
    or-int/lit8 p1, p2, 0x1

    .line 98
    :goto_1
    iput p1, p4, Lo/Lg;->c:I

    .line 100
    :cond_4
    iget p1, p4, Lo/Lg;->c:I

    .line 102
    and-int/lit8 p1, p1, 0x3

    .line 104
    if-ne p1, v2, :cond_5

    .line 106
    goto :goto_2

    .line 107
    :cond_5
    move v0, v3

    .line 108
    :goto_2
    return v0
.end method

.method public w(Landroid/view/View;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lo/s2;->d:Ljava/lang/Object;

    .line 3
    check-cast v0, Ljava/util/ArrayList;

    .line 5
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8
    iget-object v0, p0, Lo/s2;->b:Ljava/lang/Object;

    .line 10
    check-cast v0, Lo/ld;

    .line 12
    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->I(Landroid/view/View;)Lo/Id;

    .line 15
    move-result-object p1

    .line 16
    if-eqz p1, :cond_2

    .line 18
    iget v1, p1, Lo/Id;->q:I

    .line 20
    const/4 v2, -0x1

    .line 21
    iget-object v3, p1, Lo/Id;->a:Landroid/view/View;

    .line 23
    if-eq v1, v2, :cond_0

    .line 25
    iput v1, p1, Lo/Id;->p:I

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    sget-object v1, Lo/Dh;->a:Ljava/util/WeakHashMap;

    .line 30
    invoke-virtual {v3}, Landroid/view/View;->getImportantForAccessibility()I

    .line 33
    move-result v1

    .line 34
    iput v1, p1, Lo/Id;->p:I

    .line 36
    :goto_0
    iget-object v0, v0, Lo/ld;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 38
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->L()Z

    .line 41
    move-result v1

    .line 42
    const/4 v2, 0x4

    .line 43
    if-eqz v1, :cond_1

    .line 45
    iput v2, p1, Lo/Id;->q:I

    .line 47
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->p0:Ljava/util/ArrayList;

    .line 49
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    goto :goto_1

    .line 53
    :cond_1
    sget-object p1, Lo/Dh;->a:Ljava/util/WeakHashMap;

    .line 55
    invoke-virtual {v3, v2}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 58
    :cond_2
    :goto_1
    return-void
.end method

.method public x(ILo/C4;Lo/L4;)Z
    .locals 6

    .line 1
    iget-object v0, p3, Lo/L4;->p0:[I

    .line 3
    const/4 v1, 0x0

    .line 4
    aget v2, v0, v1

    .line 6
    iget-object v3, p0, Lo/s2;->c:Ljava/lang/Object;

    .line 8
    check-cast v3, Lo/c3;

    .line 10
    iput v2, v3, Lo/c3;->a:I

    .line 12
    const/4 v2, 0x1

    .line 13
    aget v0, v0, v2

    .line 15
    iput v0, v3, Lo/c3;->b:I

    .line 17
    invoke-virtual {p3}, Lo/L4;->q()I

    .line 20
    move-result v0

    .line 21
    iput v0, v3, Lo/c3;->c:I

    .line 23
    invoke-virtual {p3}, Lo/L4;->k()I

    .line 26
    move-result v0

    .line 27
    iput v0, v3, Lo/c3;->d:I

    .line 29
    iput-boolean v1, v3, Lo/c3;->i:Z

    .line 31
    iput p1, v3, Lo/c3;->j:I

    .line 33
    iget p1, v3, Lo/c3;->a:I

    .line 35
    const/4 v0, 0x3

    .line 36
    if-ne p1, v0, :cond_0

    .line 38
    move p1, v2

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    move p1, v1

    .line 41
    :goto_0
    iget v4, v3, Lo/c3;->b:I

    .line 43
    if-ne v4, v0, :cond_1

    .line 45
    move v0, v2

    .line 46
    goto :goto_1

    .line 47
    :cond_1
    move v0, v1

    .line 48
    :goto_1
    const/4 v4, 0x0

    .line 49
    if-eqz p1, :cond_2

    .line 51
    iget p1, p3, Lo/L4;->W:F

    .line 53
    cmpl-float p1, p1, v4

    .line 55
    if-lez p1, :cond_2

    .line 57
    move p1, v2

    .line 58
    goto :goto_2

    .line 59
    :cond_2
    move p1, v1

    .line 60
    :goto_2
    if-eqz v0, :cond_3

    .line 62
    iget v0, p3, Lo/L4;->W:F

    .line 64
    cmpl-float v0, v0, v4

    .line 66
    if-lez v0, :cond_3

    .line 68
    move v0, v2

    .line 69
    goto :goto_3

    .line 70
    :cond_3
    move v0, v1

    .line 71
    :goto_3
    iget-object v4, p3, Lo/L4;->t:[I

    .line 73
    const/4 v5, 0x4

    .line 74
    if-eqz p1, :cond_4

    .line 76
    aget p1, v4, v1

    .line 78
    if-ne p1, v5, :cond_4

    .line 80
    iput v2, v3, Lo/c3;->a:I

    .line 82
    :cond_4
    if-eqz v0, :cond_5

    .line 84
    aget p1, v4, v2

    .line 86
    if-ne p1, v5, :cond_5

    .line 88
    iput v2, v3, Lo/c3;->b:I

    .line 90
    :cond_5
    invoke-virtual {p2, p3, v3}, Lo/C4;->b(Lo/L4;Lo/c3;)V

    .line 93
    iget p1, v3, Lo/c3;->e:I

    .line 95
    invoke-virtual {p3, p1}, Lo/L4;->O(I)V

    .line 98
    iget p1, v3, Lo/c3;->f:I

    .line 100
    invoke-virtual {p3, p1}, Lo/L4;->L(I)V

    .line 103
    iget-boolean p1, v3, Lo/c3;->h:Z

    .line 105
    iput-boolean p1, p3, Lo/L4;->E:Z

    .line 107
    iget p1, v3, Lo/c3;->g:I

    .line 109
    invoke-virtual {p3, p1}, Lo/L4;->I(I)V

    .line 112
    iput v1, v3, Lo/c3;->j:I

    .line 114
    iget-boolean p1, v3, Lo/c3;->i:Z

    .line 116
    return p1
.end method

.method public z(Ljava/lang/CharSequence;IIIZLo/M6;)Ljava/lang/Object;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 3
    move-object/from16 v1, p1

    .line 5
    move/from16 v2, p3

    .line 7
    move/from16 v3, p4

    .line 9
    move-object/from16 v4, p6

    .line 11
    new-instance v5, Lo/N6;

    .line 13
    iget-object v6, v0, Lo/s2;->c:Ljava/lang/Object;

    .line 15
    check-cast v6, Lo/H5;

    .line 17
    iget-object v6, v6, Lo/H5;->c:Ljava/lang/Object;

    .line 19
    check-cast v6, Lo/Gb;

    .line 21
    invoke-direct {v5, v6}, Lo/N6;-><init>(Lo/Gb;)V

    .line 24
    invoke-static/range {p1 .. p2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    .line 27
    move-result v6

    .line 28
    const/4 v7, 0x1

    .line 29
    const/4 v8, 0x0

    .line 30
    move v9, v6

    .line 31
    move v11, v7

    .line 32
    move v10, v8

    .line 33
    move/from16 v6, p2

    .line 35
    :cond_0
    :goto_0
    move v8, v6

    .line 36
    :goto_1
    const/4 v12, 0x2

    .line 37
    if-ge v6, v2, :cond_f

    .line 39
    if-ge v10, v3, :cond_f

    .line 41
    if-eqz v11, :cond_f

    .line 43
    iget-object v13, v5, Lo/N6;->c:Lo/Gb;

    .line 45
    iget-object v13, v13, Lo/Gb;->a:Landroid/util/SparseArray;

    .line 47
    if-nez v13, :cond_1

    .line 49
    const/4 v13, 0x0

    .line 50
    goto :goto_2

    .line 51
    :cond_1
    invoke-virtual {v13, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 54
    move-result-object v13

    .line 55
    check-cast v13, Lo/Gb;

    .line 57
    :goto_2
    iget v14, v5, Lo/N6;->a:I

    .line 59
    const/4 v15, 0x3

    .line 60
    if-eq v14, v12, :cond_3

    .line 62
    if-nez v13, :cond_2

    .line 64
    invoke-virtual {v5}, Lo/N6;->a()V

    .line 67
    :goto_3
    move v13, v7

    .line 68
    goto :goto_6

    .line 69
    :cond_2
    iput v12, v5, Lo/N6;->a:I

    .line 71
    iput-object v13, v5, Lo/N6;->c:Lo/Gb;

    .line 73
    iput v7, v5, Lo/N6;->f:I

    .line 75
    :goto_4
    move v13, v12

    .line 76
    goto :goto_6

    .line 77
    :cond_3
    if-eqz v13, :cond_4

    .line 79
    iput-object v13, v5, Lo/N6;->c:Lo/Gb;

    .line 81
    iget v13, v5, Lo/N6;->f:I

    .line 83
    add-int/2addr v13, v7

    .line 84
    iput v13, v5, Lo/N6;->f:I

    .line 86
    goto :goto_4

    .line 87
    :cond_4
    const v13, 0xfe0e

    .line 90
    if-ne v9, v13, :cond_5

    .line 92
    invoke-virtual {v5}, Lo/N6;->a()V

    .line 95
    goto :goto_3

    .line 96
    :cond_5
    const v13, 0xfe0f

    .line 99
    if-ne v9, v13, :cond_6

    .line 101
    goto :goto_4

    .line 102
    :cond_6
    iget-object v13, v5, Lo/N6;->c:Lo/Gb;

    .line 104
    iget-object v14, v13, Lo/Gb;->b:Lo/Lg;

    .line 106
    if-eqz v14, :cond_9

    .line 108
    iget v14, v5, Lo/N6;->f:I

    .line 110
    if-ne v14, v7, :cond_8

    .line 112
    invoke-virtual {v5}, Lo/N6;->b()Z

    .line 115
    move-result v13

    .line 116
    if-eqz v13, :cond_7

    .line 118
    iget-object v13, v5, Lo/N6;->c:Lo/Gb;

    .line 120
    iput-object v13, v5, Lo/N6;->d:Lo/Gb;

    .line 122
    invoke-virtual {v5}, Lo/N6;->a()V

    .line 125
    :goto_5
    move v13, v15

    .line 126
    goto :goto_6

    .line 127
    :cond_7
    invoke-virtual {v5}, Lo/N6;->a()V

    .line 130
    goto :goto_3

    .line 131
    :cond_8
    iput-object v13, v5, Lo/N6;->d:Lo/Gb;

    .line 133
    invoke-virtual {v5}, Lo/N6;->a()V

    .line 136
    goto :goto_5

    .line 137
    :cond_9
    invoke-virtual {v5}, Lo/N6;->a()V

    .line 140
    goto :goto_3

    .line 141
    :goto_6
    iput v9, v5, Lo/N6;->e:I

    .line 143
    if-eq v13, v7, :cond_e

    .line 145
    if-eq v13, v12, :cond_c

    .line 147
    if-eq v13, v15, :cond_a

    .line 149
    goto :goto_1

    .line 150
    :cond_a
    if-nez p5, :cond_b

    .line 152
    iget-object v12, v5, Lo/N6;->d:Lo/Gb;

    .line 154
    iget-object v12, v12, Lo/Gb;->b:Lo/Lg;

    .line 156
    invoke-virtual {v0, v1, v8, v6, v12}, Lo/s2;->v(Ljava/lang/CharSequence;IILo/Lg;)Z

    .line 159
    move-result v12

    .line 160
    if-nez v12, :cond_0

    .line 162
    :cond_b
    iget-object v11, v5, Lo/N6;->d:Lo/Gb;

    .line 164
    iget-object v11, v11, Lo/Gb;->b:Lo/Lg;

    .line 166
    invoke-interface {v4, v1, v8, v6, v11}, Lo/M6;->j(Ljava/lang/CharSequence;IILo/Lg;)Z

    .line 169
    move-result v11

    .line 170
    add-int/lit8 v10, v10, 0x1

    .line 172
    goto/16 :goto_0

    .line 174
    :cond_c
    invoke-static {v9}, Ljava/lang/Character;->charCount(I)I

    .line 177
    move-result v12

    .line 178
    add-int/2addr v12, v6

    .line 179
    if-ge v12, v2, :cond_d

    .line 181
    invoke-static {v1, v12}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    .line 184
    move-result v6

    .line 185
    move v9, v6

    .line 186
    :cond_d
    move v6, v12

    .line 187
    goto/16 :goto_1

    .line 189
    :cond_e
    invoke-static {v1, v8}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    .line 192
    move-result v6

    .line 193
    invoke-static {v6}, Ljava/lang/Character;->charCount(I)I

    .line 196
    move-result v6

    .line 197
    add-int/2addr v6, v8

    .line 198
    if-ge v6, v2, :cond_0

    .line 200
    invoke-static {v1, v6}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    .line 203
    move-result v8

    .line 204
    move v9, v8

    .line 205
    goto/16 :goto_0

    .line 207
    :cond_f
    iget v2, v5, Lo/N6;->a:I

    .line 209
    if-ne v2, v12, :cond_12

    .line 211
    iget-object v2, v5, Lo/N6;->c:Lo/Gb;

    .line 213
    iget-object v2, v2, Lo/Gb;->b:Lo/Lg;

    .line 215
    if-eqz v2, :cond_12

    .line 217
    iget v2, v5, Lo/N6;->f:I

    .line 219
    if-gt v2, v7, :cond_10

    .line 221
    invoke-virtual {v5}, Lo/N6;->b()Z

    .line 224
    move-result v2

    .line 225
    if-eqz v2, :cond_12

    .line 227
    :cond_10
    if-ge v10, v3, :cond_12

    .line 229
    if-eqz v11, :cond_12

    .line 231
    if-nez p5, :cond_11

    .line 233
    iget-object v2, v5, Lo/N6;->c:Lo/Gb;

    .line 235
    iget-object v2, v2, Lo/Gb;->b:Lo/Lg;

    .line 237
    invoke-virtual {v0, v1, v8, v6, v2}, Lo/s2;->v(Ljava/lang/CharSequence;IILo/Lg;)Z

    .line 240
    move-result v2

    .line 241
    if-nez v2, :cond_12

    .line 243
    :cond_11
    iget-object v2, v5, Lo/N6;->c:Lo/Gb;

    .line 245
    iget-object v2, v2, Lo/Gb;->b:Lo/Lg;

    .line 247
    invoke-interface {v4, v1, v8, v6, v2}, Lo/M6;->j(Ljava/lang/CharSequence;IILo/Lg;)Z

    .line 250
    :cond_12
    invoke-interface/range {p6 .. p6}, Lo/M6;->b()Ljava/lang/Object;

    .line 253
    move-result-object v1

    .line 254
    return-object v1
.end method
