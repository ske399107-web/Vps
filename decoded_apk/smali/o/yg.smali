.class public abstract Lo/yg;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lo/K2;

.field public static final b:Ljava/lang/ThreadLocal;

.field public static final c:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lo/K2;

    .line 3
    invoke-direct {v0}, Lo/ug;-><init>()V

    .line 6
    new-instance v1, Ljava/util/ArrayList;

    .line 8
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 11
    iput-object v1, v0, Lo/K2;->A:Ljava/util/ArrayList;

    .line 13
    const/4 v1, 0x0

    .line 14
    iput-boolean v1, v0, Lo/K2;->D:Z

    .line 16
    iput v1, v0, Lo/K2;->E:I

    .line 18
    iput-boolean v1, v0, Lo/K2;->B:Z

    .line 20
    new-instance v1, Lo/l7;

    .line 22
    const/4 v2, 0x2

    .line 23
    invoke-direct {v1, v2}, Lo/l7;-><init>(I)V

    .line 26
    invoke-virtual {v0, v1}, Lo/K2;->I(Lo/ug;)V

    .line 29
    new-instance v1, Lo/H3;

    .line 31
    invoke-direct {v1}, Lo/ug;-><init>()V

    .line 34
    invoke-virtual {v0, v1}, Lo/K2;->I(Lo/ug;)V

    .line 37
    new-instance v1, Lo/l7;

    .line 39
    const/4 v2, 0x1

    .line 40
    invoke-direct {v1, v2}, Lo/l7;-><init>(I)V

    .line 43
    invoke-virtual {v0, v1}, Lo/K2;->I(Lo/ug;)V

    .line 46
    sput-object v0, Lo/yg;->a:Lo/K2;

    .line 48
    new-instance v0, Ljava/lang/ThreadLocal;

    .line 50
    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    .line 53
    sput-object v0, Lo/yg;->b:Ljava/lang/ThreadLocal;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    .line 57
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 60
    sput-object v0, Lo/yg;->c:Ljava/util/ArrayList;

    .line 62
    return-void
.end method

.method public static a(Landroid/widget/FrameLayout;Lo/ug;)V
    .locals 2

    .line 1
    sget-object v0, Lo/yg;->c:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 6
    move-result v1

    .line 7
    if-nez v1, :cond_3

    .line 9
    invoke-virtual {p0}, Landroid/view/View;->isLaidOut()Z

    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_3

    .line 15
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 18
    if-nez p1, :cond_0

    .line 20
    sget-object p1, Lo/yg;->a:Lo/K2;

    .line 22
    :cond_0
    invoke-virtual {p1}, Lo/ug;->j()Lo/ug;

    .line 25
    move-result-object p1

    .line 26
    invoke-static {}, Lo/yg;->b()Lo/E2;

    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v0, p0}, Lo/Qe;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    move-result-object v0

    .line 34
    check-cast v0, Ljava/util/ArrayList;

    .line 36
    if-eqz v0, :cond_1

    .line 38
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 41
    move-result v1

    .line 42
    if-lez v1, :cond_1

    .line 44
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 47
    move-result-object v0

    .line 48
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 51
    move-result v1

    .line 52
    if-eqz v1, :cond_1

    .line 54
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 57
    move-result-object v1

    .line 58
    check-cast v1, Lo/ug;

    .line 60
    invoke-virtual {v1, p0}, Lo/ug;->w(Landroid/view/ViewGroup;)V

    .line 63
    goto :goto_0

    .line 64
    :cond_1
    const/4 v0, 0x1

    .line 65
    invoke-virtual {p1, p0, v0}, Lo/ug;->h(Landroid/widget/FrameLayout;Z)V

    .line 68
    const v0, 0x7f0801e8

    .line 71
    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 74
    move-result-object v1

    .line 75
    if-nez v1, :cond_2

    .line 77
    const/4 v1, 0x0

    .line 78
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 81
    new-instance v0, Lo/xg;

    .line 83
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-object p1, v0, Lo/xg;->a:Lo/ug;

    .line 88
    iput-object p0, v0, Lo/xg;->b:Landroid/widget/FrameLayout;

    .line 90
    invoke-virtual {p0, v0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 93
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 96
    move-result-object p0

    .line 97
    invoke-virtual {p0, v0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 100
    goto :goto_1

    .line 101
    :cond_2
    new-instance p0, Ljava/lang/ClassCastException;

    .line 103
    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    .line 106
    throw p0

    .line 107
    :cond_3
    :goto_1
    return-void
.end method

.method public static b()Lo/E2;
    .locals 3

    .line 1
    sget-object v0, Lo/yg;->b:Ljava/lang/ThreadLocal;

    .line 3
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 6
    move-result-object v1

    .line 7
    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 9
    if-eqz v1, :cond_0

    .line 11
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 14
    move-result-object v1

    .line 15
    check-cast v1, Lo/E2;

    .line 17
    if-eqz v1, :cond_0

    .line 19
    return-object v1

    .line 20
    :cond_0
    new-instance v1, Lo/E2;

    .line 22
    const/4 v2, 0x0

    .line 23
    invoke-direct {v1, v2}, Lo/Qe;-><init>(I)V

    .line 26
    new-instance v2, Ljava/lang/ref/WeakReference;

    .line 28
    invoke-direct {v2, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 31
    invoke-virtual {v0, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 34
    return-object v1
.end method
