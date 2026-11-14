.class public final Lo/v1;
.super Lo/h1;
.source "SourceFile"

# interfaces
.implements Lo/ib;
.implements Landroid/view/LayoutInflater$Factory2;


# static fields
.field public static final h0:Lo/Qe;

.field public static final i0:[I

.field public static final j0:Z


# instance fields
.field public A:Landroid/view/ViewGroup;

.field public B:Landroid/widget/TextView;

.field public C:Landroid/view/View;

.field public D:Z

.field public E:Z

.field public F:Z

.field public G:Z

.field public H:Z

.field public I:Z

.field public J:Z

.field public K:Z

.field public L:[Lo/u1;

.field public M:Lo/u1;

.field public N:Z

.field public O:Z

.field public P:Z

.field public Q:Z

.field public R:Landroid/content/res/Configuration;

.field public final S:I

.field public T:I

.field public U:I

.field public V:Z

.field public W:Lo/q1;

.field public X:Lo/q1;

.field public Y:Z

.field public Z:I

.field public final a0:Lo/i1;

.field public b0:Z

.field public c0:Landroid/graphics/Rect;

.field public d0:Landroid/graphics/Rect;

.field public e0:Lo/r2;

.field public f0:Landroid/window/OnBackInvokedDispatcher;

.field public g0:Landroid/window/OnBackInvokedCallback;

.field public final j:Ljava/lang/Object;

.field public final k:Landroid/content/Context;

.field public l:Landroid/view/Window;

.field public m:Lo/p1;

.field public final n:Ljava/lang/Object;

.field public o:Lo/si;

.field public p:Lo/zf;

.field public q:Ljava/lang/CharSequence;

.field public r:Lo/r5;

.field public s:Lo/j1;

.field public t:Lo/j1;

.field public u:Lo/h0;

.field public v:Landroidx/appcompat/widget/ActionBarContextView;

.field public w:Landroid/widget/PopupWindow;

.field public x:Lo/i1;

.field public y:Lo/Ph;

.field public z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lo/Qe;

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lo/Qe;-><init>(I)V

    .line 7
    sput-object v0, Lo/v1;->h0:Lo/Qe;

    .line 9
    const v0, 0x1010054

    .line 12
    filled-new-array {v0}, [I

    .line 15
    move-result-object v0

    .line 16
    sput-object v0, Lo/v1;->i0:[I

    .line 18
    const-string v0, "robolectric"

    .line 20
    sget-object v1, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 25
    move-result v0

    .line 26
    xor-int/lit8 v0, v0, 0x1

    .line 28
    sput-boolean v0, Lo/v1;->j0:Z

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/Window;Lo/Y0;Ljava/lang/Object;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 p3, 0x0

    .line 5
    iput-object p3, p0, Lo/v1;->y:Lo/Ph;

    .line 7
    const/16 v0, -0x64

    .line 9
    iput v0, p0, Lo/v1;->S:I

    .line 11
    new-instance v1, Lo/i1;

    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-direct {v1, p0, v2}, Lo/i1;-><init>(Lo/v1;I)V

    .line 17
    iput-object v1, p0, Lo/v1;->a0:Lo/i1;

    .line 19
    iput-object p1, p0, Lo/v1;->k:Landroid/content/Context;

    .line 21
    iput-object p4, p0, Lo/v1;->j:Ljava/lang/Object;

    .line 23
    instance-of p4, p4, Landroid/app/Dialog;

    .line 25
    if-eqz p4, :cond_2

    .line 27
    :goto_0
    if-eqz p1, :cond_1

    .line 29
    instance-of p4, p1, Lo/U0;

    .line 31
    if-eqz p4, :cond_0

    .line 33
    move-object p3, p1

    .line 34
    check-cast p3, Lo/U0;

    .line 36
    goto :goto_1

    .line 37
    :cond_0
    instance-of p4, p1, Landroid/content/ContextWrapper;

    .line 39
    if-eqz p4, :cond_1

    .line 41
    check-cast p1, Landroid/content/ContextWrapper;

    .line 43
    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 46
    move-result-object p1

    .line 47
    goto :goto_0

    .line 48
    :cond_1
    :goto_1
    if-eqz p3, :cond_2

    .line 50
    invoke-virtual {p3}, Lo/U0;->j()Lo/h1;

    .line 53
    move-result-object p1

    .line 54
    check-cast p1, Lo/v1;

    .line 56
    iget p1, p1, Lo/v1;->S:I

    .line 58
    iput p1, p0, Lo/v1;->S:I

    .line 60
    :cond_2
    iget p1, p0, Lo/v1;->S:I

    .line 62
    if-ne p1, v0, :cond_3

    .line 64
    sget-object p1, Lo/v1;->h0:Lo/Qe;

    .line 66
    iget-object p3, p0, Lo/v1;->j:Ljava/lang/Object;

    .line 68
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 71
    move-result-object p3

    .line 72
    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 75
    move-result-object p3

    .line 76
    invoke-virtual {p1, p3}, Lo/Qe;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    move-result-object p3

    .line 80
    check-cast p3, Ljava/lang/Integer;

    .line 82
    if-eqz p3, :cond_3

    .line 84
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 87
    move-result p3

    .line 88
    iput p3, p0, Lo/v1;->S:I

    .line 90
    iget-object p3, p0, Lo/v1;->j:Ljava/lang/Object;

    .line 92
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 95
    move-result-object p3

    .line 96
    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 99
    move-result-object p3

    .line 100
    invoke-virtual {p1, p3}, Lo/Qe;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    :cond_3
    if-eqz p2, :cond_4

    .line 105
    invoke-virtual {p0, p2}, Lo/v1;->m(Landroid/view/Window;)V

    .line 108
    :cond_4
    invoke-static {}, Lo/y1;->d()V

    .line 111
    return-void
.end method

.method public static n(Landroid/content/Context;)Lo/ra;
    .locals 5

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    const/16 v1, 0x21

    .line 5
    const/4 v2, 0x0

    .line 6
    if-lt v0, v1, :cond_0

    .line 8
    return-object v2

    .line 9
    :cond_0
    sget-object v0, Lo/h1;->c:Lo/ra;

    .line 11
    if-nez v0, :cond_1

    .line 13
    return-object v2

    .line 14
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 17
    move-result-object p0

    .line 18
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 21
    move-result-object p0

    .line 22
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 25
    move-result-object p0

    .line 26
    invoke-static {p0}, Lo/m1;->b(Landroid/content/res/Configuration;)Lo/ra;

    .line 29
    move-result-object p0

    .line 30
    iget-object v0, v0, Lo/ra;->a:Lo/sa;

    .line 32
    iget-object v1, v0, Lo/sa;->a:Landroid/os/LocaleList;

    .line 34
    invoke-virtual {v1}, Landroid/os/LocaleList;->isEmpty()Z

    .line 37
    move-result v1

    .line 38
    if-eqz v1, :cond_2

    .line 40
    sget-object v0, Lo/ra;->b:Lo/ra;

    .line 42
    goto :goto_2

    .line 43
    :cond_2
    new-instance v1, Ljava/util/LinkedHashSet;

    .line 45
    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 48
    const/4 v2, 0x0

    .line 49
    :goto_0
    iget-object v3, v0, Lo/sa;->a:Landroid/os/LocaleList;

    .line 51
    invoke-virtual {v3}, Landroid/os/LocaleList;->size()I

    .line 54
    move-result v3

    .line 55
    iget-object v4, p0, Lo/ra;->a:Lo/sa;

    .line 57
    iget-object v4, v4, Lo/sa;->a:Landroid/os/LocaleList;

    .line 59
    invoke-virtual {v4}, Landroid/os/LocaleList;->size()I

    .line 62
    move-result v4

    .line 63
    add-int/2addr v4, v3

    .line 64
    if-ge v2, v4, :cond_5

    .line 66
    iget-object v3, v0, Lo/sa;->a:Landroid/os/LocaleList;

    .line 68
    invoke-virtual {v3}, Landroid/os/LocaleList;->size()I

    .line 71
    move-result v3

    .line 72
    if-ge v2, v3, :cond_3

    .line 74
    iget-object v3, v0, Lo/sa;->a:Landroid/os/LocaleList;

    .line 76
    invoke-virtual {v3, v2}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    .line 79
    move-result-object v3

    .line 80
    goto :goto_1

    .line 81
    :cond_3
    iget-object v3, v0, Lo/sa;->a:Landroid/os/LocaleList;

    .line 83
    invoke-virtual {v3}, Landroid/os/LocaleList;->size()I

    .line 86
    move-result v3

    .line 87
    sub-int v3, v2, v3

    .line 89
    iget-object v4, p0, Lo/ra;->a:Lo/sa;

    .line 91
    iget-object v4, v4, Lo/sa;->a:Landroid/os/LocaleList;

    .line 93
    invoke-virtual {v4, v3}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    .line 96
    move-result-object v3

    .line 97
    :goto_1
    if-eqz v3, :cond_4

    .line 99
    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 102
    :cond_4
    add-int/lit8 v2, v2, 0x1

    .line 104
    goto :goto_0

    .line 105
    :cond_5
    invoke-interface {v1}, Ljava/util/Set;->size()I

    .line 108
    move-result v0

    .line 109
    new-array v0, v0, [Ljava/util/Locale;

    .line 111
    invoke-interface {v1, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 114
    move-result-object v0

    .line 115
    check-cast v0, [Ljava/util/Locale;

    .line 117
    new-instance v1, Landroid/os/LocaleList;

    .line 119
    invoke-direct {v1, v0}, Landroid/os/LocaleList;-><init>([Ljava/util/Locale;)V

    .line 122
    new-instance v0, Lo/ra;

    .line 124
    new-instance v2, Lo/sa;

    .line 126
    invoke-direct {v2, v1}, Lo/sa;-><init>(Landroid/os/LocaleList;)V

    .line 129
    invoke-direct {v0, v2}, Lo/ra;-><init>(Lo/sa;)V

    .line 132
    :goto_2
    iget-object v1, v0, Lo/ra;->a:Lo/sa;

    .line 134
    iget-object v1, v1, Lo/sa;->a:Landroid/os/LocaleList;

    .line 136
    invoke-virtual {v1}, Landroid/os/LocaleList;->isEmpty()Z

    .line 139
    move-result v1

    .line 140
    if-eqz v1, :cond_6

    .line 142
    goto :goto_3

    .line 143
    :cond_6
    move-object p0, v0

    .line 144
    :goto_3
    return-object p0
.end method

.method public static r(Landroid/content/Context;ILo/ra;Landroid/content/res/Configuration;Z)Landroid/content/res/Configuration;
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eq p1, v0, :cond_2

    .line 4
    const/4 v0, 0x2

    .line 5
    if-eq p1, v0, :cond_1

    .line 7
    if-eqz p4, :cond_0

    .line 9
    const/4 p0, 0x0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 14
    move-result-object p0

    .line 15
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 18
    move-result-object p0

    .line 19
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 22
    move-result-object p0

    .line 23
    iget p0, p0, Landroid/content/res/Configuration;->uiMode:I

    .line 25
    and-int/lit8 p0, p0, 0x30

    .line 27
    goto :goto_0

    .line 28
    :cond_1
    const/16 p0, 0x20

    .line 30
    goto :goto_0

    .line 31
    :cond_2
    const/16 p0, 0x10

    .line 33
    :goto_0
    new-instance p1, Landroid/content/res/Configuration;

    .line 35
    invoke-direct {p1}, Landroid/content/res/Configuration;-><init>()V

    .line 38
    const/4 p4, 0x0

    .line 39
    iput p4, p1, Landroid/content/res/Configuration;->fontScale:F

    .line 41
    if-eqz p3, :cond_3

    .line 43
    invoke-virtual {p1, p3}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 46
    :cond_3
    iget p3, p1, Landroid/content/res/Configuration;->uiMode:I

    .line 48
    and-int/lit8 p3, p3, -0x31

    .line 50
    or-int/2addr p0, p3

    .line 51
    iput p0, p1, Landroid/content/res/Configuration;->uiMode:I

    .line 53
    if-eqz p2, :cond_4

    .line 55
    invoke-static {p1, p2}, Lo/m1;->d(Landroid/content/res/Configuration;Lo/ra;)V

    .line 58
    :cond_4
    return-object p1
.end method


# virtual methods
.method public final A(I)V
    .locals 3

    .line 1
    iget v0, p0, Lo/v1;->Z:I

    .line 3
    const/4 v1, 0x1

    .line 4
    shl-int p1, v1, p1

    .line 6
    or-int/2addr p1, v0

    .line 7
    iput p1, p0, Lo/v1;->Z:I

    .line 9
    iget-boolean p1, p0, Lo/v1;->Y:Z

    .line 11
    if-nez p1, :cond_0

    .line 13
    iget-object p1, p0, Lo/v1;->l:Landroid/view/Window;

    .line 15
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 18
    move-result-object p1

    .line 19
    iget-object v0, p0, Lo/v1;->a0:Lo/i1;

    .line 21
    sget-object v2, Lo/Dh;->a:Ljava/util/WeakHashMap;

    .line 23
    invoke-virtual {p1, v0}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 26
    iput-boolean v1, p0, Lo/v1;->Y:Z

    .line 28
    :cond_0
    return-void
.end method

.method public final B(Landroid/content/Context;I)I
    .locals 2

    .line 1
    const/16 v0, -0x64

    .line 3
    const/4 v1, -0x1

    .line 4
    if-eq p2, v0, :cond_5

    .line 6
    if-eq p2, v1, :cond_4

    .line 8
    if-eqz p2, :cond_2

    .line 10
    const/4 v0, 0x1

    .line 11
    if-eq p2, v0, :cond_4

    .line 13
    const/4 v0, 0x2

    .line 14
    if-eq p2, v0, :cond_4

    .line 16
    const/4 v0, 0x3

    .line 17
    if-ne p2, v0, :cond_1

    .line 19
    iget-object p2, p0, Lo/v1;->X:Lo/q1;

    .line 21
    if-nez p2, :cond_0

    .line 23
    new-instance p2, Lo/q1;

    .line 25
    invoke-direct {p2, p0, p1}, Lo/q1;-><init>(Lo/v1;Landroid/content/Context;)V

    .line 28
    iput-object p2, p0, Lo/v1;->X:Lo/q1;

    .line 30
    :cond_0
    iget-object p1, p0, Lo/v1;->X:Lo/q1;

    .line 32
    invoke-virtual {p1}, Lo/q1;->f()I

    .line 35
    move-result p1

    .line 36
    return p1

    .line 37
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 39
    const-string p2, "Unknown value set for night mode. Please use one of the MODE_NIGHT values from AppCompatDelegate."

    .line 41
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 44
    throw p1

    .line 45
    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 48
    move-result-object p2

    .line 49
    const-string v0, "uimode"

    .line 51
    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 54
    move-result-object p2

    .line 55
    check-cast p2, Landroid/app/UiModeManager;

    .line 57
    invoke-virtual {p2}, Landroid/app/UiModeManager;->getNightMode()I

    .line 60
    move-result p2

    .line 61
    if-nez p2, :cond_3

    .line 63
    return v1

    .line 64
    :cond_3
    invoke-virtual {p0, p1}, Lo/v1;->x(Landroid/content/Context;)Lo/s1;

    .line 67
    move-result-object p1

    .line 68
    invoke-virtual {p1}, Lo/s1;->f()I

    .line 71
    move-result p1

    .line 72
    return p1

    .line 73
    :cond_4
    return p2

    .line 74
    :cond_5
    return v1
.end method

.method public final C()Z
    .locals 5

    .line 1
    iget-boolean v0, p0, Lo/v1;->N:Z

    .line 3
    const/4 v1, 0x0

    .line 4
    iput-boolean v1, p0, Lo/v1;->N:Z

    .line 6
    invoke-virtual {p0, v1}, Lo/v1;->y(I)Lo/u1;

    .line 9
    move-result-object v2

    .line 10
    iget-boolean v3, v2, Lo/u1;->m:Z

    .line 12
    const/4 v4, 0x1

    .line 13
    if-eqz v3, :cond_1

    .line 15
    if-nez v0, :cond_0

    .line 17
    invoke-virtual {p0, v2, v4}, Lo/v1;->q(Lo/u1;Z)V

    .line 20
    :cond_0
    return v4

    .line 21
    :cond_1
    iget-object v0, p0, Lo/v1;->u:Lo/h0;

    .line 23
    if-eqz v0, :cond_2

    .line 25
    invoke-virtual {v0}, Lo/h0;->a()V

    .line 28
    return v4

    .line 29
    :cond_2
    invoke-virtual {p0}, Lo/v1;->z()V

    .line 32
    iget-object v0, p0, Lo/v1;->o:Lo/si;

    .line 34
    if-eqz v0, :cond_5

    .line 36
    iget-object v0, v0, Lo/si;->Y:Lo/s5;

    .line 38
    if-eqz v0, :cond_5

    .line 40
    move-object v2, v0

    .line 41
    check-cast v2, Lo/ig;

    .line 43
    iget-object v2, v2, Lo/ig;->a:Landroidx/appcompat/widget/Toolbar;

    .line 45
    iget-object v2, v2, Landroidx/appcompat/widget/Toolbar;->L:Lo/dg;

    .line 47
    if-eqz v2, :cond_5

    .line 49
    iget-object v2, v2, Lo/dg;->b:Lo/nb;

    .line 51
    if-eqz v2, :cond_5

    .line 53
    check-cast v0, Lo/ig;

    .line 55
    iget-object v0, v0, Lo/ig;->a:Landroidx/appcompat/widget/Toolbar;

    .line 57
    iget-object v0, v0, Landroidx/appcompat/widget/Toolbar;->L:Lo/dg;

    .line 59
    if-nez v0, :cond_3

    .line 61
    const/4 v0, 0x0

    .line 62
    goto :goto_0

    .line 63
    :cond_3
    iget-object v0, v0, Lo/dg;->b:Lo/nb;

    .line 65
    :goto_0
    if-eqz v0, :cond_4

    .line 67
    invoke-virtual {v0}, Lo/nb;->collapseActionView()Z

    .line 70
    :cond_4
    return v4

    .line 71
    :cond_5
    return v1
.end method

.method public final D(Lo/u1;Landroid/view/KeyEvent;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 3
    move-object/from16 v1, p1

    .line 5
    iget-boolean v2, v1, Lo/u1;->m:Z

    .line 7
    if-nez v2, :cond_1b

    .line 9
    iget-boolean v2, v0, Lo/v1;->Q:Z

    .line 11
    if-eqz v2, :cond_0

    .line 13
    goto/16 :goto_9

    .line 15
    :cond_0
    iget v2, v1, Lo/u1;->a:I

    .line 17
    iget-object v3, v0, Lo/v1;->k:Landroid/content/Context;

    .line 19
    if-nez v2, :cond_1

    .line 21
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 24
    move-result-object v4

    .line 25
    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 28
    move-result-object v4

    .line 29
    iget v4, v4, Landroid/content/res/Configuration;->screenLayout:I

    .line 31
    and-int/lit8 v4, v4, 0xf

    .line 33
    const/4 v5, 0x4

    .line 34
    if-ne v4, v5, :cond_1

    .line 36
    return-void

    .line 37
    :cond_1
    iget-object v4, v0, Lo/v1;->l:Landroid/view/Window;

    .line 39
    invoke-virtual {v4}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    .line 42
    move-result-object v4

    .line 43
    const/4 v5, 0x1

    .line 44
    if-eqz v4, :cond_2

    .line 46
    iget-object v6, v1, Lo/u1;->h:Lo/kb;

    .line 48
    invoke-interface {v4, v2, v6}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    .line 51
    move-result v4

    .line 52
    if-nez v4, :cond_2

    .line 54
    invoke-virtual {v0, v1, v5}, Lo/v1;->q(Lo/u1;Z)V

    .line 57
    return-void

    .line 58
    :cond_2
    const-string v4, "window"

    .line 60
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 63
    move-result-object v4

    .line 64
    check-cast v4, Landroid/view/WindowManager;

    .line 66
    if-nez v4, :cond_3

    .line 68
    return-void

    .line 69
    :cond_3
    invoke-virtual/range {p0 .. p2}, Lo/v1;->F(Lo/u1;Landroid/view/KeyEvent;)Z

    .line 72
    move-result v6

    .line 73
    if-nez v6, :cond_4

    .line 75
    return-void

    .line 76
    :cond_4
    iget-object v6, v1, Lo/u1;->e:Lo/t1;

    .line 78
    const/4 v7, 0x0

    .line 79
    const/4 v8, -0x2

    .line 80
    if-eqz v6, :cond_6

    .line 82
    iget-boolean v9, v1, Lo/u1;->n:Z

    .line 84
    if-eqz v9, :cond_5

    .line 86
    goto :goto_0

    .line 87
    :cond_5
    iget-object v3, v1, Lo/u1;->g:Landroid/view/View;

    .line 89
    if-eqz v3, :cond_18

    .line 91
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 94
    move-result-object v3

    .line 95
    if-eqz v3, :cond_18

    .line 97
    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 99
    const/4 v6, -0x1

    .line 100
    if-ne v3, v6, :cond_18

    .line 102
    move v10, v6

    .line 103
    goto/16 :goto_7

    .line 105
    :cond_6
    :goto_0
    if-nez v6, :cond_b

    .line 107
    invoke-virtual/range {p0 .. p0}, Lo/v1;->z()V

    .line 110
    iget-object v6, v0, Lo/v1;->o:Lo/si;

    .line 112
    if-eqz v6, :cond_7

    .line 114
    invoke-virtual {v6}, Lo/si;->r0()Landroid/content/Context;

    .line 117
    move-result-object v6

    .line 118
    goto :goto_1

    .line 119
    :cond_7
    const/4 v6, 0x0

    .line 120
    :goto_1
    if-nez v6, :cond_8

    .line 122
    goto :goto_2

    .line 123
    :cond_8
    move-object v3, v6

    .line 124
    :goto_2
    new-instance v6, Landroid/util/TypedValue;

    .line 126
    invoke-direct {v6}, Landroid/util/TypedValue;-><init>()V

    .line 129
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 132
    move-result-object v9

    .line 133
    invoke-virtual {v9}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    .line 136
    move-result-object v9

    .line 137
    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 140
    move-result-object v10

    .line 141
    invoke-virtual {v9, v10}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 144
    const v10, 0x7f030004

    .line 147
    invoke-virtual {v9, v10, v6, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 150
    iget v10, v6, Landroid/util/TypedValue;->resourceId:I

    .line 152
    if-eqz v10, :cond_9

    .line 154
    invoke-virtual {v9, v10, v5}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 157
    :cond_9
    const v10, 0x7f030375

    .line 160
    invoke-virtual {v9, v10, v6, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 163
    iget v6, v6, Landroid/util/TypedValue;->resourceId:I

    .line 165
    if-eqz v6, :cond_a

    .line 167
    invoke-virtual {v9, v6, v5}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 170
    goto :goto_3

    .line 171
    :cond_a
    const v6, 0x7f0f020c

    .line 174
    invoke-virtual {v9, v6, v5}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 177
    :goto_3
    new-instance v6, Lo/V4;

    .line 179
    invoke-direct {v6, v3, v7}, Lo/V4;-><init>(Landroid/content/Context;I)V

    .line 182
    invoke-virtual {v6}, Lo/V4;->getTheme()Landroid/content/res/Resources$Theme;

    .line 185
    move-result-object v3

    .line 186
    invoke-virtual {v3, v9}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 189
    iput-object v6, v1, Lo/u1;->j:Lo/V4;

    .line 191
    sget-object v3, Lo/gd;->j:[I

    .line 193
    invoke-virtual {v6, v3}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    .line 196
    move-result-object v3

    .line 197
    const/16 v6, 0x56

    .line 199
    invoke-virtual {v3, v6, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 202
    move-result v6

    .line 203
    iput v6, v1, Lo/u1;->b:I

    .line 205
    invoke-virtual {v3, v5, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 208
    move-result v6

    .line 209
    iput v6, v1, Lo/u1;->d:I

    .line 211
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 214
    new-instance v3, Lo/t1;

    .line 216
    iget-object v6, v1, Lo/u1;->j:Lo/V4;

    .line 218
    invoke-direct {v3, v0, v6}, Lo/t1;-><init>(Lo/v1;Lo/V4;)V

    .line 221
    iput-object v3, v1, Lo/u1;->e:Lo/t1;

    .line 223
    const/16 v3, 0x51

    .line 225
    iput v3, v1, Lo/u1;->c:I

    .line 227
    goto :goto_4

    .line 228
    :cond_b
    iget-boolean v3, v1, Lo/u1;->n:Z

    .line 230
    if-eqz v3, :cond_c

    .line 232
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    .line 235
    move-result v3

    .line 236
    if-lez v3, :cond_c

    .line 238
    iget-object v3, v1, Lo/u1;->e:Lo/t1;

    .line 240
    invoke-virtual {v3}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 243
    :cond_c
    :goto_4
    iget-object v3, v1, Lo/u1;->g:Landroid/view/View;

    .line 245
    if-eqz v3, :cond_d

    .line 247
    iput-object v3, v1, Lo/u1;->f:Landroid/view/View;

    .line 249
    goto :goto_5

    .line 250
    :cond_d
    iget-object v3, v1, Lo/u1;->h:Lo/kb;

    .line 252
    if-nez v3, :cond_e

    .line 254
    goto/16 :goto_8

    .line 256
    :cond_e
    iget-object v3, v0, Lo/v1;->t:Lo/j1;

    .line 258
    if-nez v3, :cond_f

    .line 260
    new-instance v3, Lo/j1;

    .line 262
    const/4 v6, 0x3

    .line 263
    invoke-direct {v3, v0, v6}, Lo/j1;-><init>(Lo/v1;I)V

    .line 266
    iput-object v3, v0, Lo/v1;->t:Lo/j1;

    .line 268
    :cond_f
    iget-object v3, v0, Lo/v1;->t:Lo/j1;

    .line 270
    iget-object v6, v1, Lo/u1;->i:Lo/da;

    .line 272
    if-nez v6, :cond_10

    .line 274
    new-instance v6, Lo/da;

    .line 276
    iget-object v9, v1, Lo/u1;->j:Lo/V4;

    .line 278
    invoke-direct {v6, v9}, Lo/da;-><init>(Landroid/content/ContextWrapper;)V

    .line 281
    iput-object v6, v1, Lo/u1;->i:Lo/da;

    .line 283
    iput-object v3, v6, Lo/da;->e:Lo/zb;

    .line 285
    iget-object v3, v1, Lo/u1;->h:Lo/kb;

    .line 287
    iget-object v9, v3, Lo/kb;->a:Landroid/content/Context;

    .line 289
    invoke-virtual {v3, v6, v9}, Lo/kb;->b(Lo/Ab;Landroid/content/Context;)V

    .line 292
    :cond_10
    iget-object v3, v1, Lo/u1;->i:Lo/da;

    .line 294
    iget-object v6, v1, Lo/u1;->e:Lo/t1;

    .line 296
    iget-object v9, v3, Lo/da;->d:Landroidx/appcompat/view/menu/ExpandedMenuView;

    .line 298
    if-nez v9, :cond_12

    .line 300
    iget-object v9, v3, Lo/da;->b:Landroid/view/LayoutInflater;

    .line 302
    const v10, 0x7f0b000d

    .line 305
    invoke-virtual {v9, v10, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 308
    move-result-object v6

    .line 309
    check-cast v6, Landroidx/appcompat/view/menu/ExpandedMenuView;

    .line 311
    iput-object v6, v3, Lo/da;->d:Landroidx/appcompat/view/menu/ExpandedMenuView;

    .line 313
    iget-object v6, v3, Lo/da;->f:Lo/ca;

    .line 315
    if-nez v6, :cond_11

    .line 317
    new-instance v6, Lo/ca;

    .line 319
    invoke-direct {v6, v3}, Lo/ca;-><init>(Lo/da;)V

    .line 322
    iput-object v6, v3, Lo/da;->f:Lo/ca;

    .line 324
    :cond_11
    iget-object v6, v3, Lo/da;->d:Landroidx/appcompat/view/menu/ExpandedMenuView;

    .line 326
    iget-object v9, v3, Lo/da;->f:Lo/ca;

    .line 328
    invoke-virtual {v6, v9}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 331
    iget-object v6, v3, Lo/da;->d:Landroidx/appcompat/view/menu/ExpandedMenuView;

    .line 333
    invoke-virtual {v6, v3}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 336
    :cond_12
    iget-object v3, v3, Lo/da;->d:Landroidx/appcompat/view/menu/ExpandedMenuView;

    .line 338
    iput-object v3, v1, Lo/u1;->f:Landroid/view/View;

    .line 340
    if-eqz v3, :cond_1a

    .line 342
    :goto_5
    iget-object v3, v1, Lo/u1;->f:Landroid/view/View;

    .line 344
    if-nez v3, :cond_13

    .line 346
    goto/16 :goto_8

    .line 348
    :cond_13
    iget-object v3, v1, Lo/u1;->g:Landroid/view/View;

    .line 350
    if-eqz v3, :cond_14

    .line 352
    goto :goto_6

    .line 353
    :cond_14
    iget-object v3, v1, Lo/u1;->i:Lo/da;

    .line 355
    iget-object v6, v3, Lo/da;->f:Lo/ca;

    .line 357
    if-nez v6, :cond_15

    .line 359
    new-instance v6, Lo/ca;

    .line 361
    invoke-direct {v6, v3}, Lo/ca;-><init>(Lo/da;)V

    .line 364
    iput-object v6, v3, Lo/da;->f:Lo/ca;

    .line 366
    :cond_15
    iget-object v3, v3, Lo/da;->f:Lo/ca;

    .line 368
    invoke-virtual {v3}, Lo/ca;->getCount()I

    .line 371
    move-result v3

    .line 372
    if-lez v3, :cond_1a

    .line 374
    :goto_6
    iget-object v3, v1, Lo/u1;->f:Landroid/view/View;

    .line 376
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 379
    move-result-object v3

    .line 380
    if-nez v3, :cond_16

    .line 382
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    .line 384
    invoke-direct {v3, v8, v8}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 387
    :cond_16
    iget v6, v1, Lo/u1;->b:I

    .line 389
    iget-object v9, v1, Lo/u1;->e:Lo/t1;

    .line 391
    invoke-virtual {v9, v6}, Lo/t1;->setBackgroundResource(I)V

    .line 394
    iget-object v6, v1, Lo/u1;->f:Landroid/view/View;

    .line 396
    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 399
    move-result-object v6

    .line 400
    instance-of v9, v6, Landroid/view/ViewGroup;

    .line 402
    if-eqz v9, :cond_17

    .line 404
    check-cast v6, Landroid/view/ViewGroup;

    .line 406
    iget-object v9, v1, Lo/u1;->f:Landroid/view/View;

    .line 408
    invoke-virtual {v6, v9}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 411
    :cond_17
    iget-object v6, v1, Lo/u1;->e:Lo/t1;

    .line 413
    iget-object v9, v1, Lo/u1;->f:Landroid/view/View;

    .line 415
    invoke-virtual {v6, v9, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 418
    iget-object v3, v1, Lo/u1;->f:Landroid/view/View;

    .line 420
    invoke-virtual {v3}, Landroid/view/View;->hasFocus()Z

    .line 423
    move-result v3

    .line 424
    if-nez v3, :cond_18

    .line 426
    iget-object v3, v1, Lo/u1;->f:Landroid/view/View;

    .line 428
    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    .line 431
    :cond_18
    move v10, v8

    .line 432
    :goto_7
    iput-boolean v7, v1, Lo/u1;->l:Z

    .line 434
    new-instance v3, Landroid/view/WindowManager$LayoutParams;

    .line 436
    const/4 v13, 0x0

    .line 437
    const/16 v14, 0x3ea

    .line 439
    const/4 v11, -0x2

    .line 440
    const/4 v12, 0x0

    .line 441
    const/high16 v15, 0x820000

    .line 443
    const/16 v16, -0x3

    .line 445
    move-object v9, v3

    .line 446
    invoke-direct/range {v9 .. v16}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V

    .line 449
    iget v6, v1, Lo/u1;->c:I

    .line 451
    iput v6, v3, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 453
    iget v6, v1, Lo/u1;->d:I

    .line 455
    iput v6, v3, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 457
    iget-object v6, v1, Lo/u1;->e:Lo/t1;

    .line 459
    invoke-interface {v4, v6, v3}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 462
    iput-boolean v5, v1, Lo/u1;->m:Z

    .line 464
    if-nez v2, :cond_19

    .line 466
    invoke-virtual/range {p0 .. p0}, Lo/v1;->H()V

    .line 469
    :cond_19
    return-void

    .line 470
    :cond_1a
    :goto_8
    iput-boolean v5, v1, Lo/u1;->n:Z

    .line 472
    :cond_1b
    :goto_9
    return-void
.end method

.method public final E(Lo/u1;ILandroid/view/KeyEvent;)Z
    .locals 2

    .line 1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isSystem()Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 8
    return v1

    .line 9
    :cond_0
    iget-boolean v0, p1, Lo/u1;->k:Z

    .line 11
    if-nez v0, :cond_1

    .line 13
    invoke-virtual {p0, p1, p3}, Lo/v1;->F(Lo/u1;Landroid/view/KeyEvent;)Z

    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_2

    .line 19
    :cond_1
    iget-object p1, p1, Lo/u1;->h:Lo/kb;

    .line 21
    if-eqz p1, :cond_2

    .line 23
    const/4 v0, 0x1

    .line 24
    invoke-virtual {p1, p2, p3, v0}, Lo/kb;->performShortcut(ILandroid/view/KeyEvent;I)Z

    .line 27
    move-result v1

    .line 28
    :cond_2
    return v1
.end method

.method public final F(Lo/u1;Landroid/view/KeyEvent;)Z
    .locals 12

    .line 1
    iget-boolean v0, p0, Lo/v1;->Q:Z

    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 6
    return v1

    .line 7
    :cond_0
    iget-boolean v0, p1, Lo/u1;->k:Z

    .line 9
    const/4 v2, 0x1

    .line 10
    if-eqz v0, :cond_1

    .line 12
    return v2

    .line 13
    :cond_1
    iget-object v0, p0, Lo/v1;->M:Lo/u1;

    .line 15
    if-eqz v0, :cond_2

    .line 17
    if-eq v0, p1, :cond_2

    .line 19
    invoke-virtual {p0, v0, v1}, Lo/v1;->q(Lo/u1;Z)V

    .line 22
    :cond_2
    iget-object v0, p0, Lo/v1;->l:Landroid/view/Window;

    .line 24
    invoke-virtual {v0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    .line 27
    move-result-object v0

    .line 28
    iget v3, p1, Lo/u1;->a:I

    .line 30
    if-eqz v0, :cond_3

    .line 32
    invoke-interface {v0, v3}, Landroid/view/Window$Callback;->onCreatePanelView(I)Landroid/view/View;

    .line 35
    move-result-object v4

    .line 36
    iput-object v4, p1, Lo/u1;->g:Landroid/view/View;

    .line 38
    :cond_3
    const/16 v4, 0x6c

    .line 40
    if-eqz v3, :cond_5

    .line 42
    if-ne v3, v4, :cond_4

    .line 44
    goto :goto_0

    .line 45
    :cond_4
    move v5, v1

    .line 46
    goto :goto_1

    .line 47
    :cond_5
    :goto_0
    move v5, v2

    .line 48
    :goto_1
    if-eqz v5, :cond_6

    .line 50
    iget-object v6, p0, Lo/v1;->r:Lo/r5;

    .line 52
    if-eqz v6, :cond_6

    .line 54
    check-cast v6, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    .line 56
    invoke-virtual {v6}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->k()V

    .line 59
    iget-object v6, v6, Landroidx/appcompat/widget/ActionBarOverlayLayout;->e:Lo/s5;

    .line 61
    check-cast v6, Lo/ig;

    .line 63
    iput-boolean v2, v6, Lo/ig;->l:Z

    .line 65
    :cond_6
    iget-object v6, p1, Lo/u1;->g:Landroid/view/View;

    .line 67
    if-nez v6, :cond_1d

    .line 69
    iget-object v6, p1, Lo/u1;->h:Lo/kb;

    .line 71
    const/4 v7, 0x0

    .line 72
    if-eqz v6, :cond_7

    .line 74
    iget-boolean v8, p1, Lo/u1;->o:Z

    .line 76
    if-eqz v8, :cond_17

    .line 78
    :cond_7
    if-nez v6, :cond_10

    .line 80
    iget-object v6, p0, Lo/v1;->k:Landroid/content/Context;

    .line 82
    if-eqz v3, :cond_8

    .line 84
    if-ne v3, v4, :cond_c

    .line 86
    :cond_8
    iget-object v4, p0, Lo/v1;->r:Lo/r5;

    .line 88
    if-eqz v4, :cond_c

    .line 90
    new-instance v4, Landroid/util/TypedValue;

    .line 92
    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    .line 95
    invoke-virtual {v6}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 98
    move-result-object v8

    .line 99
    const v9, 0x7f03000b

    .line 102
    invoke-virtual {v8, v9, v4, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 105
    iget v9, v4, Landroid/util/TypedValue;->resourceId:I

    .line 107
    const v10, 0x7f03000c

    .line 110
    if-eqz v9, :cond_9

    .line 112
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 115
    move-result-object v9

    .line 116
    invoke-virtual {v9}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    .line 119
    move-result-object v9

    .line 120
    invoke-virtual {v9, v8}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 123
    iget v11, v4, Landroid/util/TypedValue;->resourceId:I

    .line 125
    invoke-virtual {v9, v11, v2}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 128
    invoke-virtual {v9, v10, v4, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 131
    goto :goto_2

    .line 132
    :cond_9
    invoke-virtual {v8, v10, v4, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 135
    move-object v9, v7

    .line 136
    :goto_2
    iget v10, v4, Landroid/util/TypedValue;->resourceId:I

    .line 138
    if-eqz v10, :cond_b

    .line 140
    if-nez v9, :cond_a

    .line 142
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 145
    move-result-object v9

    .line 146
    invoke-virtual {v9}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    .line 149
    move-result-object v9

    .line 150
    invoke-virtual {v9, v8}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 153
    :cond_a
    iget v4, v4, Landroid/util/TypedValue;->resourceId:I

    .line 155
    invoke-virtual {v9, v4, v2}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 158
    :cond_b
    if-eqz v9, :cond_c

    .line 160
    new-instance v4, Lo/V4;

    .line 162
    invoke-direct {v4, v6, v1}, Lo/V4;-><init>(Landroid/content/Context;I)V

    .line 165
    invoke-virtual {v4}, Lo/V4;->getTheme()Landroid/content/res/Resources$Theme;

    .line 168
    move-result-object v6

    .line 169
    invoke-virtual {v6, v9}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 172
    move-object v6, v4

    .line 173
    :cond_c
    new-instance v4, Lo/kb;

    .line 175
    invoke-direct {v4, v6}, Lo/kb;-><init>(Landroid/content/Context;)V

    .line 178
    iput-object p0, v4, Lo/kb;->e:Lo/ib;

    .line 180
    iget-object v6, p1, Lo/u1;->h:Lo/kb;

    .line 182
    if-ne v4, v6, :cond_d

    .line 184
    goto :goto_3

    .line 185
    :cond_d
    if-eqz v6, :cond_e

    .line 187
    iget-object v8, p1, Lo/u1;->i:Lo/da;

    .line 189
    invoke-virtual {v6, v8}, Lo/kb;->r(Lo/Ab;)V

    .line 192
    :cond_e
    iput-object v4, p1, Lo/u1;->h:Lo/kb;

    .line 194
    iget-object v6, p1, Lo/u1;->i:Lo/da;

    .line 196
    if-eqz v6, :cond_f

    .line 198
    iget-object v8, v4, Lo/kb;->a:Landroid/content/Context;

    .line 200
    invoke-virtual {v4, v6, v8}, Lo/kb;->b(Lo/Ab;Landroid/content/Context;)V

    .line 203
    :cond_f
    :goto_3
    iget-object v4, p1, Lo/u1;->h:Lo/kb;

    .line 205
    if-nez v4, :cond_10

    .line 207
    return v1

    .line 208
    :cond_10
    if-eqz v5, :cond_12

    .line 210
    iget-object v4, p0, Lo/v1;->r:Lo/r5;

    .line 212
    if-eqz v4, :cond_12

    .line 214
    iget-object v6, p0, Lo/v1;->s:Lo/j1;

    .line 216
    if-nez v6, :cond_11

    .line 218
    new-instance v6, Lo/j1;

    .line 220
    const/4 v8, 0x2

    .line 221
    invoke-direct {v6, p0, v8}, Lo/j1;-><init>(Lo/v1;I)V

    .line 224
    iput-object v6, p0, Lo/v1;->s:Lo/j1;

    .line 226
    :cond_11
    iget-object v6, p1, Lo/u1;->h:Lo/kb;

    .line 228
    iget-object v8, p0, Lo/v1;->s:Lo/j1;

    .line 230
    check-cast v4, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    .line 232
    invoke-virtual {v4, v6, v8}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->l(Lo/kb;Lo/zb;)V

    .line 235
    :cond_12
    iget-object v4, p1, Lo/u1;->h:Lo/kb;

    .line 237
    invoke-virtual {v4}, Lo/kb;->w()V

    .line 240
    iget-object v4, p1, Lo/u1;->h:Lo/kb;

    .line 242
    invoke-interface {v0, v3, v4}, Landroid/view/Window$Callback;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    .line 245
    move-result v3

    .line 246
    if-nez v3, :cond_16

    .line 248
    iget-object p2, p1, Lo/u1;->h:Lo/kb;

    .line 250
    if-nez p2, :cond_13

    .line 252
    goto :goto_4

    .line 253
    :cond_13
    if-eqz p2, :cond_14

    .line 255
    iget-object v0, p1, Lo/u1;->i:Lo/da;

    .line 257
    invoke-virtual {p2, v0}, Lo/kb;->r(Lo/Ab;)V

    .line 260
    :cond_14
    iput-object v7, p1, Lo/u1;->h:Lo/kb;

    .line 262
    :goto_4
    if-eqz v5, :cond_15

    .line 264
    iget-object p1, p0, Lo/v1;->r:Lo/r5;

    .line 266
    if-eqz p1, :cond_15

    .line 268
    iget-object p2, p0, Lo/v1;->s:Lo/j1;

    .line 270
    check-cast p1, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    .line 272
    invoke-virtual {p1, v7, p2}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->l(Lo/kb;Lo/zb;)V

    .line 275
    :cond_15
    return v1

    .line 276
    :cond_16
    iput-boolean v1, p1, Lo/u1;->o:Z

    .line 278
    :cond_17
    iget-object v3, p1, Lo/u1;->h:Lo/kb;

    .line 280
    invoke-virtual {v3}, Lo/kb;->w()V

    .line 283
    iget-object v3, p1, Lo/u1;->p:Landroid/os/Bundle;

    .line 285
    if-eqz v3, :cond_18

    .line 287
    iget-object v4, p1, Lo/u1;->h:Lo/kb;

    .line 289
    invoke-virtual {v4, v3}, Lo/kb;->s(Landroid/os/Bundle;)V

    .line 292
    iput-object v7, p1, Lo/u1;->p:Landroid/os/Bundle;

    .line 294
    :cond_18
    iget-object v3, p1, Lo/u1;->g:Landroid/view/View;

    .line 296
    iget-object v4, p1, Lo/u1;->h:Lo/kb;

    .line 298
    invoke-interface {v0, v1, v3, v4}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    .line 301
    move-result v0

    .line 302
    if-nez v0, :cond_1a

    .line 304
    if-eqz v5, :cond_19

    .line 306
    iget-object p2, p0, Lo/v1;->r:Lo/r5;

    .line 308
    if-eqz p2, :cond_19

    .line 310
    iget-object v0, p0, Lo/v1;->s:Lo/j1;

    .line 312
    check-cast p2, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    .line 314
    invoke-virtual {p2, v7, v0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->l(Lo/kb;Lo/zb;)V

    .line 317
    :cond_19
    iget-object p1, p1, Lo/u1;->h:Lo/kb;

    .line 319
    invoke-virtual {p1}, Lo/kb;->v()V

    .line 322
    return v1

    .line 323
    :cond_1a
    if-eqz p2, :cond_1b

    .line 325
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    .line 328
    move-result p2

    .line 329
    goto :goto_5

    .line 330
    :cond_1b
    const/4 p2, -0x1

    .line 331
    :goto_5
    invoke-static {p2}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    .line 334
    move-result-object p2

    .line 335
    invoke-virtual {p2}, Landroid/view/KeyCharacterMap;->getKeyboardType()I

    .line 338
    move-result p2

    .line 339
    if-eq p2, v2, :cond_1c

    .line 341
    move p2, v2

    .line 342
    goto :goto_6

    .line 343
    :cond_1c
    move p2, v1

    .line 344
    :goto_6
    iget-object v0, p1, Lo/u1;->h:Lo/kb;

    .line 346
    invoke-virtual {v0, p2}, Lo/kb;->setQwertyMode(Z)V

    .line 349
    iget-object p2, p1, Lo/u1;->h:Lo/kb;

    .line 351
    invoke-virtual {p2}, Lo/kb;->v()V

    .line 354
    :cond_1d
    iput-boolean v2, p1, Lo/u1;->k:Z

    .line 356
    iput-boolean v1, p1, Lo/u1;->l:Z

    .line 358
    iput-object p1, p0, Lo/v1;->M:Lo/u1;

    .line 360
    return v2
.end method

.method public final G()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lo/v1;->z:Z

    .line 3
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v0, Landroid/util/AndroidRuntimeException;

    .line 8
    const-string v1, "Window feature must be requested before adding content"

    .line 10
    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    .line 13
    throw v0
.end method

.method public final H()V
    .locals 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    const/16 v1, 0x21

    .line 5
    if-lt v0, v1, :cond_4

    .line 7
    iget-object v0, p0, Lo/v1;->f0:Landroid/window/OnBackInvokedDispatcher;

    .line 9
    const/4 v1, 0x0

    .line 10
    if-nez v0, :cond_0

    .line 12
    goto :goto_1

    .line 13
    :cond_0
    invoke-virtual {p0, v1}, Lo/v1;->y(I)Lo/u1;

    .line 16
    move-result-object v0

    .line 17
    iget-boolean v0, v0, Lo/u1;->m:Z

    .line 19
    const/4 v2, 0x1

    .line 20
    if-eqz v0, :cond_1

    .line 22
    :goto_0
    move v1, v2

    .line 23
    goto :goto_1

    .line 24
    :cond_1
    iget-object v0, p0, Lo/v1;->u:Lo/h0;

    .line 26
    if-eqz v0, :cond_2

    .line 28
    goto :goto_0

    .line 29
    :cond_2
    :goto_1
    if-eqz v1, :cond_3

    .line 31
    iget-object v0, p0, Lo/v1;->g0:Landroid/window/OnBackInvokedCallback;

    .line 33
    if-nez v0, :cond_3

    .line 35
    iget-object v0, p0, Lo/v1;->f0:Landroid/window/OnBackInvokedDispatcher;

    .line 37
    invoke-static {v0, p0}, Lo/o1;->b(Ljava/lang/Object;Lo/v1;)Landroid/window/OnBackInvokedCallback;

    .line 40
    move-result-object v0

    .line 41
    iput-object v0, p0, Lo/v1;->g0:Landroid/window/OnBackInvokedCallback;

    .line 43
    goto :goto_2

    .line 44
    :cond_3
    if-nez v1, :cond_4

    .line 46
    iget-object v0, p0, Lo/v1;->g0:Landroid/window/OnBackInvokedCallback;

    .line 48
    if-eqz v0, :cond_4

    .line 50
    iget-object v1, p0, Lo/v1;->f0:Landroid/window/OnBackInvokedDispatcher;

    .line 52
    invoke-static {v1, v0}, Lo/o1;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 55
    const/4 v0, 0x0

    .line 56
    iput-object v0, p0, Lo/v1;->g0:Landroid/window/OnBackInvokedCallback;

    .line 58
    :cond_4
    :goto_2
    return-void
.end method

.method public final a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lo/v1;->k:Landroid/content/Context;

    .line 3
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/view/LayoutInflater;->getFactory()Landroid/view/LayoutInflater$Factory;

    .line 10
    move-result-object v1

    .line 11
    if-nez v1, :cond_0

    .line 13
    invoke-virtual {v0, p0}, Landroid/view/LayoutInflater;->setFactory2(Landroid/view/LayoutInflater$Factory2;)V

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {v0}, Landroid/view/LayoutInflater;->getFactory2()Landroid/view/LayoutInflater$Factory2;

    .line 20
    move-result-object v0

    .line 21
    instance-of v0, v0, Lo/v1;

    .line 23
    if-nez v0, :cond_1

    .line 25
    const-string v0, "AppCompatDelegate"

    .line 27
    const-string v1, "The Activity\'s LayoutInflater already has a Factory installed so we can not install AppCompat\'s"

    .line 29
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    :cond_1
    :goto_0
    return-void
.end method

.method public final c()V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lo/v1;->O:Z

    .line 4
    const/4 v1, 0x0

    .line 5
    invoke-virtual {p0, v1, v0}, Lo/v1;->l(ZZ)Z

    .line 8
    invoke-virtual {p0}, Lo/v1;->w()V

    .line 11
    iget-object v1, p0, Lo/v1;->j:Ljava/lang/Object;

    .line 13
    instance-of v2, v1, Landroid/app/Activity;

    .line 15
    if-eqz v2, :cond_2

    .line 17
    :try_start_0
    check-cast v1, Landroid/app/Activity;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 19
    :try_start_1
    invoke-virtual {v1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    .line 22
    move-result-object v2

    .line 23
    invoke-static {v1, v2}, Lo/Ha;->R(Landroid/app/Activity;Landroid/content/ComponentName;)Ljava/lang/String;

    .line 26
    move-result-object v1
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 27
    goto :goto_0

    .line 28
    :catch_0
    move-exception v1

    .line 29
    :try_start_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 31
    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    .line 34
    throw v2
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1

    .line 35
    :catch_1
    const/4 v1, 0x0

    .line 36
    :goto_0
    if-eqz v1, :cond_1

    .line 38
    iget-object v1, p0, Lo/v1;->o:Lo/si;

    .line 40
    if-nez v1, :cond_0

    .line 42
    iput-boolean v0, p0, Lo/v1;->b0:Z

    .line 44
    goto :goto_1

    .line 45
    :cond_0
    invoke-virtual {v1, v0}, Lo/si;->t0(Z)V

    .line 48
    :cond_1
    :goto_1
    sget-object v1, Lo/h1;->h:Ljava/lang/Object;

    .line 50
    monitor-enter v1

    .line 51
    :try_start_3
    invoke-static {p0}, Lo/h1;->e(Lo/v1;)V

    .line 54
    sget-object v2, Lo/h1;->g:Lo/G2;

    .line 56
    new-instance v3, Ljava/lang/ref/WeakReference;

    .line 58
    invoke-direct {v3, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 61
    invoke-virtual {v2, v3}, Lo/G2;->add(Ljava/lang/Object;)Z

    .line 64
    monitor-exit v1

    .line 65
    goto :goto_2

    .line 66
    :catchall_0
    move-exception v0

    .line 67
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 68
    throw v0

    .line 69
    :cond_2
    :goto_2
    new-instance v1, Landroid/content/res/Configuration;

    .line 71
    iget-object v2, p0, Lo/v1;->k:Landroid/content/Context;

    .line 73
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 76
    move-result-object v2

    .line 77
    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 80
    move-result-object v2

    .line 81
    invoke-direct {v1, v2}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 84
    iput-object v1, p0, Lo/v1;->R:Landroid/content/res/Configuration;

    .line 86
    iput-boolean v0, p0, Lo/v1;->P:Z

    .line 88
    return-void
.end method

.method public final d()V
    .locals 3

    .line 1
    iget-object v0, p0, Lo/v1;->j:Ljava/lang/Object;

    .line 3
    instance-of v0, v0, Landroid/app/Activity;

    .line 5
    if-eqz v0, :cond_0

    .line 7
    sget-object v0, Lo/h1;->h:Ljava/lang/Object;

    .line 9
    monitor-enter v0

    .line 10
    :try_start_0
    invoke-static {p0}, Lo/h1;->e(Lo/v1;)V

    .line 13
    monitor-exit v0

    .line 14
    goto :goto_0

    .line 15
    :catchall_0
    move-exception v1

    .line 16
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    throw v1

    .line 18
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lo/v1;->Y:Z

    .line 20
    if-eqz v0, :cond_1

    .line 22
    iget-object v0, p0, Lo/v1;->l:Landroid/view/Window;

    .line 24
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 27
    move-result-object v0

    .line 28
    iget-object v1, p0, Lo/v1;->a0:Lo/i1;

    .line 30
    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 33
    :cond_1
    const/4 v0, 0x1

    .line 34
    iput-boolean v0, p0, Lo/v1;->Q:Z

    .line 36
    iget v0, p0, Lo/v1;->S:I

    .line 38
    const/16 v1, -0x64

    .line 40
    if-eq v0, v1, :cond_2

    .line 42
    iget-object v0, p0, Lo/v1;->j:Ljava/lang/Object;

    .line 44
    instance-of v1, v0, Landroid/app/Activity;

    .line 46
    if-eqz v1, :cond_2

    .line 48
    check-cast v0, Landroid/app/Activity;

    .line 50
    invoke-virtual {v0}, Landroid/app/Activity;->isChangingConfigurations()Z

    .line 53
    move-result v0

    .line 54
    if-eqz v0, :cond_2

    .line 56
    sget-object v0, Lo/v1;->h0:Lo/Qe;

    .line 58
    iget-object v1, p0, Lo/v1;->j:Ljava/lang/Object;

    .line 60
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 63
    move-result-object v1

    .line 64
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 67
    move-result-object v1

    .line 68
    iget v2, p0, Lo/v1;->S:I

    .line 70
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 73
    move-result-object v2

    .line 74
    invoke-virtual {v0, v1, v2}, Lo/Qe;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    goto :goto_1

    .line 78
    :cond_2
    sget-object v0, Lo/v1;->h0:Lo/Qe;

    .line 80
    iget-object v1, p0, Lo/v1;->j:Ljava/lang/Object;

    .line 82
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 85
    move-result-object v1

    .line 86
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 89
    move-result-object v1

    .line 90
    invoke-virtual {v0, v1}, Lo/Qe;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    :goto_1
    iget-object v0, p0, Lo/v1;->W:Lo/q1;

    .line 95
    if-eqz v0, :cond_3

    .line 97
    invoke-virtual {v0}, Lo/s1;->c()V

    .line 100
    :cond_3
    iget-object v0, p0, Lo/v1;->X:Lo/q1;

    .line 102
    if-eqz v0, :cond_4

    .line 104
    invoke-virtual {v0}, Lo/s1;->c()V

    .line 107
    :cond_4
    return-void
.end method

.method public final f(I)Z
    .locals 5

    .line 1
    const/16 v0, 0x6d

    .line 3
    const/16 v1, 0x6c

    .line 5
    const/16 v2, 0x8

    .line 7
    const-string v3, "AppCompatDelegate"

    .line 9
    if-ne p1, v2, :cond_0

    .line 11
    const-string p1, "You should now use the AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR id when requesting this feature."

    .line 13
    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    move p1, v1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/16 v2, 0x9

    .line 20
    if-ne p1, v2, :cond_1

    .line 22
    const-string p1, "You should now use the AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR_OVERLAY id when requesting this feature."

    .line 24
    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    move p1, v0

    .line 28
    :cond_1
    :goto_0
    iget-boolean v2, p0, Lo/v1;->J:Z

    .line 30
    const/4 v3, 0x0

    .line 31
    if-eqz v2, :cond_2

    .line 33
    if-ne p1, v1, :cond_2

    .line 35
    return v3

    .line 36
    :cond_2
    iget-boolean v2, p0, Lo/v1;->F:Z

    .line 38
    const/4 v4, 0x1

    .line 39
    if-eqz v2, :cond_3

    .line 41
    if-ne p1, v4, :cond_3

    .line 43
    iput-boolean v3, p0, Lo/v1;->F:Z

    .line 45
    :cond_3
    if-eq p1, v4, :cond_9

    .line 47
    const/4 v2, 0x2

    .line 48
    if-eq p1, v2, :cond_8

    .line 50
    const/4 v2, 0x5

    .line 51
    if-eq p1, v2, :cond_7

    .line 53
    const/16 v2, 0xa

    .line 55
    if-eq p1, v2, :cond_6

    .line 57
    if-eq p1, v1, :cond_5

    .line 59
    if-eq p1, v0, :cond_4

    .line 61
    iget-object v0, p0, Lo/v1;->l:Landroid/view/Window;

    .line 63
    invoke-virtual {v0, p1}, Landroid/view/Window;->requestFeature(I)Z

    .line 66
    move-result p1

    .line 67
    return p1

    .line 68
    :cond_4
    invoke-virtual {p0}, Lo/v1;->G()V

    .line 71
    iput-boolean v4, p0, Lo/v1;->G:Z

    .line 73
    return v4

    .line 74
    :cond_5
    invoke-virtual {p0}, Lo/v1;->G()V

    .line 77
    iput-boolean v4, p0, Lo/v1;->F:Z

    .line 79
    return v4

    .line 80
    :cond_6
    invoke-virtual {p0}, Lo/v1;->G()V

    .line 83
    iput-boolean v4, p0, Lo/v1;->H:Z

    .line 85
    return v4

    .line 86
    :cond_7
    invoke-virtual {p0}, Lo/v1;->G()V

    .line 89
    iput-boolean v4, p0, Lo/v1;->E:Z

    .line 91
    return v4

    .line 92
    :cond_8
    invoke-virtual {p0}, Lo/v1;->G()V

    .line 95
    iput-boolean v4, p0, Lo/v1;->D:Z

    .line 97
    return v4

    .line 98
    :cond_9
    invoke-virtual {p0}, Lo/v1;->G()V

    .line 101
    iput-boolean v4, p0, Lo/v1;->J:Z

    .line 103
    return v4
.end method

.method public final g(I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lo/v1;->u()V

    .line 4
    iget-object v0, p0, Lo/v1;->A:Landroid/view/ViewGroup;

    .line 6
    const v1, 0x1020002

    .line 9
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Landroid/view/ViewGroup;

    .line 15
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 18
    iget-object v1, p0, Lo/v1;->k:Landroid/content/Context;

    .line 20
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 27
    iget-object p1, p0, Lo/v1;->m:Lo/p1;

    .line 29
    iget-object v0, p0, Lo/v1;->l:Landroid/view/Window;

    .line 31
    invoke-virtual {v0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {p1, v0}, Lo/p1;->a(Landroid/view/Window$Callback;)V

    .line 38
    return-void
.end method

.method public final h(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lo/v1;->u()V

    .line 4
    iget-object v0, p0, Lo/v1;->A:Landroid/view/ViewGroup;

    .line 6
    const v1, 0x1020002

    .line 9
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Landroid/view/ViewGroup;

    .line 15
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 18
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 21
    iget-object p1, p0, Lo/v1;->m:Lo/p1;

    .line 23
    iget-object v0, p0, Lo/v1;->l:Landroid/view/Window;

    .line 25
    invoke-virtual {v0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {p1, v0}, Lo/p1;->a(Landroid/view/Window$Callback;)V

    .line 32
    return-void
.end method

.method public final i(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lo/v1;->u()V

    .line 4
    iget-object v0, p0, Lo/v1;->A:Landroid/view/ViewGroup;

    .line 6
    const v1, 0x1020002

    .line 9
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Landroid/view/ViewGroup;

    .line 15
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 18
    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 21
    iget-object p1, p0, Lo/v1;->m:Lo/p1;

    .line 23
    iget-object p2, p0, Lo/v1;->l:Landroid/view/Window;

    .line 25
    invoke-virtual {p2}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    .line 28
    move-result-object p2

    .line 29
    invoke-virtual {p1, p2}, Lo/p1;->a(Landroid/view/Window$Callback;)V

    .line 32
    return-void
.end method

.method public final j(Ljava/lang/CharSequence;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lo/v1;->q:Ljava/lang/CharSequence;

    .line 3
    iget-object v0, p0, Lo/v1;->r:Lo/r5;

    .line 5
    if-eqz v0, :cond_0

    .line 7
    invoke-interface {v0, p1}, Lo/r5;->setWindowTitle(Ljava/lang/CharSequence;)V

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget-object v0, p0, Lo/v1;->o:Lo/si;

    .line 13
    if-eqz v0, :cond_1

    .line 15
    iget-object v0, v0, Lo/si;->Y:Lo/s5;

    .line 17
    check-cast v0, Lo/ig;

    .line 19
    iget-boolean v1, v0, Lo/ig;->g:Z

    .line 21
    if-nez v1, :cond_2

    .line 23
    iput-object p1, v0, Lo/ig;->h:Ljava/lang/CharSequence;

    .line 25
    iget v1, v0, Lo/ig;->b:I

    .line 27
    and-int/lit8 v1, v1, 0x8

    .line 29
    if-eqz v1, :cond_2

    .line 31
    iget-object v1, v0, Lo/ig;->a:Landroidx/appcompat/widget/Toolbar;

    .line 33
    invoke-virtual {v1, p1}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 36
    iget-boolean v0, v0, Lo/ig;->g:Z

    .line 38
    if-eqz v0, :cond_2

    .line 40
    invoke-virtual {v1}, Landroid/view/View;->getRootView()Landroid/view/View;

    .line 43
    move-result-object v0

    .line 44
    invoke-static {v0, p1}, Lo/Dh;->m(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 47
    goto :goto_0

    .line 48
    :cond_1
    iget-object v0, p0, Lo/v1;->B:Landroid/widget/TextView;

    .line 50
    if-eqz v0, :cond_2

    .line 52
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    :cond_2
    :goto_0
    return-void
.end method

.method public final k(Lo/kb;Landroid/view/MenuItem;)Z
    .locals 7

    .line 1
    iget-object v0, p0, Lo/v1;->l:Landroid/view/Window;

    .line 3
    invoke-virtual {v0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_3

    .line 10
    iget-boolean v2, p0, Lo/v1;->Q:Z

    .line 12
    if-nez v2, :cond_3

    .line 14
    invoke-virtual {p1}, Lo/kb;->k()Lo/kb;

    .line 17
    move-result-object p1

    .line 18
    iget-object v2, p0, Lo/v1;->L:[Lo/u1;

    .line 20
    if-eqz v2, :cond_0

    .line 22
    array-length v3, v2

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    move v3, v1

    .line 25
    :goto_0
    move v4, v1

    .line 26
    :goto_1
    if-ge v4, v3, :cond_2

    .line 28
    aget-object v5, v2, v4

    .line 30
    if-eqz v5, :cond_1

    .line 32
    iget-object v6, v5, Lo/u1;->h:Lo/kb;

    .line 34
    if-ne v6, p1, :cond_1

    .line 36
    goto :goto_2

    .line 37
    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 39
    goto :goto_1

    .line 40
    :cond_2
    const/4 v5, 0x0

    .line 41
    :goto_2
    if-eqz v5, :cond_3

    .line 43
    iget p1, v5, Lo/u1;->a:I

    .line 45
    invoke-interface {v0, p1, p2}, Landroid/view/Window$Callback;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    .line 48
    move-result p1

    .line 49
    return p1

    .line 50
    :cond_3
    return v1
.end method

.method public final l(ZZ)Z
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 3
    iget-boolean v0, v1, Lo/v1;->Q:Z

    .line 5
    const/4 v3, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 8
    return v3

    .line 9
    :cond_0
    iget v0, v1, Lo/v1;->S:I

    .line 11
    const/16 v4, -0x64

    .line 13
    if-eq v0, v4, :cond_1

    .line 15
    :goto_0
    move v4, v0

    .line 16
    goto :goto_1

    .line 17
    :cond_1
    sget v0, Lo/h1;->b:I

    .line 19
    goto :goto_0

    .line 20
    :goto_1
    iget-object v5, v1, Lo/v1;->k:Landroid/content/Context;

    .line 22
    invoke-virtual {v1, v5, v4}, Lo/v1;->B(Landroid/content/Context;I)I

    .line 25
    move-result v0

    .line 26
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 28
    const/16 v7, 0x21

    .line 30
    const/4 v8, 0x0

    .line 31
    if-ge v6, v7, :cond_2

    .line 33
    invoke-static {v5}, Lo/v1;->n(Landroid/content/Context;)Lo/ra;

    .line 36
    move-result-object v7

    .line 37
    goto :goto_2

    .line 38
    :cond_2
    move-object v7, v8

    .line 39
    :goto_2
    if-nez p2, :cond_3

    .line 41
    if-eqz v7, :cond_3

    .line 43
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 46
    move-result-object v7

    .line 47
    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 50
    move-result-object v7

    .line 51
    invoke-static {v7}, Lo/m1;->b(Landroid/content/res/Configuration;)Lo/ra;

    .line 54
    move-result-object v7

    .line 55
    :cond_3
    invoke-static {v5, v0, v7, v8, v3}, Lo/v1;->r(Landroid/content/Context;ILo/ra;Landroid/content/res/Configuration;Z)Landroid/content/res/Configuration;

    .line 58
    move-result-object v9

    .line 59
    iget-boolean v0, v1, Lo/v1;->V:Z

    .line 61
    iget-object v10, v1, Lo/v1;->j:Ljava/lang/Object;

    .line 63
    const/4 v11, 0x1

    .line 64
    if-nez v0, :cond_6

    .line 66
    instance-of v0, v10, Landroid/app/Activity;

    .line 68
    if-eqz v0, :cond_6

    .line 70
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 73
    move-result-object v0

    .line 74
    if-nez v0, :cond_4

    .line 76
    move v0, v3

    .line 77
    goto :goto_5

    .line 78
    :cond_4
    const/16 v12, 0x1d

    .line 80
    if-lt v6, v12, :cond_5

    .line 82
    const/high16 v6, 0x100c0000

    .line 84
    goto :goto_3

    .line 85
    :cond_5
    const/high16 v6, 0xc0000

    .line 87
    :goto_3
    :try_start_0
    new-instance v12, Landroid/content/ComponentName;

    .line 89
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 92
    move-result-object v13

    .line 93
    invoke-direct {v12, v5, v13}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 96
    invoke-virtual {v0, v12, v6}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    .line 99
    move-result-object v0

    .line 100
    if-eqz v0, :cond_6

    .line 102
    iget v0, v0, Landroid/content/pm/ActivityInfo;->configChanges:I

    .line 104
    iput v0, v1, Lo/v1;->U:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    goto :goto_4

    .line 107
    :catch_0
    move-exception v0

    .line 108
    const-string v6, "AppCompatDelegate"

    .line 110
    const-string v12, "Exception while getting ActivityInfo"

    .line 112
    invoke-static {v6, v12, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 115
    iput v3, v1, Lo/v1;->U:I

    .line 117
    :cond_6
    :goto_4
    iput-boolean v11, v1, Lo/v1;->V:Z

    .line 119
    iget v0, v1, Lo/v1;->U:I

    .line 121
    :goto_5
    iget-object v6, v1, Lo/v1;->R:Landroid/content/res/Configuration;

    .line 123
    if-nez v6, :cond_7

    .line 125
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 128
    move-result-object v6

    .line 129
    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 132
    move-result-object v6

    .line 133
    :cond_7
    iget v12, v6, Landroid/content/res/Configuration;->uiMode:I

    .line 135
    and-int/lit8 v12, v12, 0x30

    .line 137
    iget v13, v9, Landroid/content/res/Configuration;->uiMode:I

    .line 139
    and-int/lit8 v13, v13, 0x30

    .line 141
    invoke-static {v6}, Lo/m1;->b(Landroid/content/res/Configuration;)Lo/ra;

    .line 144
    move-result-object v6

    .line 145
    if-nez v7, :cond_8

    .line 147
    move-object v7, v8

    .line 148
    goto :goto_6

    .line 149
    :cond_8
    invoke-static {v9}, Lo/m1;->b(Landroid/content/res/Configuration;)Lo/ra;

    .line 152
    move-result-object v7

    .line 153
    :goto_6
    if-eq v12, v13, :cond_9

    .line 155
    const/16 v12, 0x200

    .line 157
    goto :goto_7

    .line 158
    :cond_9
    move v12, v3

    .line 159
    :goto_7
    if-eqz v7, :cond_a

    .line 161
    invoke-virtual {v6, v7}, Lo/ra;->equals(Ljava/lang/Object;)Z

    .line 164
    move-result v6

    .line 165
    if-nez v6, :cond_a

    .line 167
    or-int/lit16 v12, v12, 0x2004

    .line 169
    :cond_a
    not-int v6, v0

    .line 170
    and-int/2addr v6, v12

    .line 171
    const/16 v14, 0x1c

    .line 173
    if-eqz v6, :cond_e

    .line 175
    if-eqz p1, :cond_e

    .line 177
    iget-boolean v6, v1, Lo/v1;->O:Z

    .line 179
    if-eqz v6, :cond_e

    .line 181
    sget-boolean v6, Lo/v1;->j0:Z

    .line 183
    if-nez v6, :cond_b

    .line 185
    iget-boolean v6, v1, Lo/v1;->P:Z

    .line 187
    if-eqz v6, :cond_e

    .line 189
    :cond_b
    instance-of v6, v10, Landroid/app/Activity;

    .line 191
    if-eqz v6, :cond_e

    .line 193
    move-object v6, v10

    .line 194
    check-cast v6, Landroid/app/Activity;

    .line 196
    invoke-virtual {v6}, Landroid/app/Activity;->isChild()Z

    .line 199
    move-result v15

    .line 200
    if-nez v15, :cond_e

    .line 202
    sget v15, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 204
    const/16 v2, 0x1f

    .line 206
    if-lt v15, v2, :cond_c

    .line 208
    and-int/lit16 v2, v12, 0x2000

    .line 210
    if-eqz v2, :cond_c

    .line 212
    invoke-virtual {v6}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 215
    move-result-object v2

    .line 216
    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 219
    move-result-object v2

    .line 220
    invoke-virtual {v9}, Landroid/content/res/Configuration;->getLayoutDirection()I

    .line 223
    move-result v9

    .line 224
    invoke-virtual {v2, v9}, Landroid/view/View;->setLayoutDirection(I)V

    .line 227
    :cond_c
    if-lt v15, v14, :cond_d

    .line 229
    invoke-virtual {v6}, Landroid/app/Activity;->recreate()V

    .line 232
    goto :goto_8

    .line 233
    :cond_d
    new-instance v2, Landroid/os/Handler;

    .line 235
    invoke-virtual {v6}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    .line 238
    move-result-object v9

    .line 239
    invoke-direct {v2, v9}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 242
    new-instance v9, Lo/i0;

    .line 244
    invoke-direct {v9, v3, v6}, Lo/i0;-><init>(ILjava/lang/Object;)V

    .line 247
    invoke-virtual {v2, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 250
    :goto_8
    move v2, v11

    .line 251
    goto :goto_9

    .line 252
    :cond_e
    move v2, v3

    .line 253
    :goto_9
    if-nez v2, :cond_1e

    .line 255
    if-eqz v12, :cond_1e

    .line 257
    and-int/2addr v0, v12

    .line 258
    if-ne v0, v12, :cond_f

    .line 260
    move v3, v11

    .line 261
    :cond_f
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 264
    move-result-object v2

    .line 265
    new-instance v6, Landroid/content/res/Configuration;

    .line 267
    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 270
    move-result-object v0

    .line 271
    invoke-direct {v6, v0}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 274
    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 277
    move-result-object v0

    .line 278
    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    .line 280
    and-int/lit8 v0, v0, -0x31

    .line 282
    or-int/2addr v0, v13

    .line 283
    iput v0, v6, Landroid/content/res/Configuration;->uiMode:I

    .line 285
    if-eqz v7, :cond_10

    .line 287
    invoke-static {v6, v7}, Lo/m1;->d(Landroid/content/res/Configuration;Lo/ra;)V

    .line 290
    :cond_10
    invoke-virtual {v2, v6, v8}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 293
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 295
    const/16 v9, 0x1a

    .line 297
    if-ge v0, v9, :cond_1b

    .line 299
    if-lt v0, v14, :cond_11

    .line 301
    goto/16 :goto_11

    .line 303
    :cond_11
    sget-boolean v0, Lo/Ha;->h:Z

    .line 305
    const-string v9, "ResourcesFlusher"

    .line 307
    if-nez v0, :cond_12

    .line 309
    :try_start_1
    const-class v0, Landroid/content/res/Resources;

    .line 311
    const-string v13, "mResourcesImpl"

    .line 313
    invoke-virtual {v0, v13}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 316
    move-result-object v0

    .line 317
    sput-object v0, Lo/Ha;->g:Ljava/lang/reflect/Field;

    .line 319
    invoke-virtual {v0, v11}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_1

    .line 322
    goto :goto_a

    .line 323
    :catch_1
    move-exception v0

    .line 324
    const-string v13, "Could not retrieve Resources#mResourcesImpl field"

    .line 326
    invoke-static {v9, v13, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 329
    :goto_a
    sput-boolean v11, Lo/Ha;->h:Z

    .line 331
    :cond_12
    sget-object v0, Lo/Ha;->g:Ljava/lang/reflect/Field;

    .line 333
    if-nez v0, :cond_13

    .line 335
    goto/16 :goto_11

    .line 337
    :cond_13
    :try_start_2
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    move-result-object v0
    :try_end_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_2

    .line 341
    move-object v2, v0

    .line 342
    goto :goto_b

    .line 343
    :catch_2
    move-exception v0

    .line 344
    move-object v2, v0

    .line 345
    const-string v0, "Could not retrieve value from Resources#mResourcesImpl"

    .line 347
    invoke-static {v9, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 350
    move-object v2, v8

    .line 351
    :goto_b
    if-nez v2, :cond_14

    .line 353
    goto/16 :goto_11

    .line 355
    :cond_14
    sget-boolean v0, Lo/Ha;->b:Z

    .line 357
    if-nez v0, :cond_15

    .line 359
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 362
    move-result-object v0

    .line 363
    const-string v13, "mDrawableCache"

    .line 365
    invoke-virtual {v0, v13}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 368
    move-result-object v0

    .line 369
    sput-object v0, Lo/Ha;->a:Ljava/lang/reflect/Field;

    .line 371
    invoke-virtual {v0, v11}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_3
    .catch Ljava/lang/NoSuchFieldException; {:try_start_3 .. :try_end_3} :catch_3

    .line 374
    goto :goto_c

    .line 375
    :catch_3
    move-exception v0

    .line 376
    const-string v13, "Could not retrieve ResourcesImpl#mDrawableCache field"

    .line 378
    invoke-static {v9, v13, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 381
    :goto_c
    sput-boolean v11, Lo/Ha;->b:Z

    .line 383
    :cond_15
    sget-object v0, Lo/Ha;->a:Ljava/lang/reflect/Field;

    .line 385
    if-eqz v0, :cond_16

    .line 387
    :try_start_4
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 390
    move-result-object v0
    :try_end_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_4

    .line 391
    move-object v2, v0

    .line 392
    goto :goto_d

    .line 393
    :catch_4
    move-exception v0

    .line 394
    move-object v2, v0

    .line 395
    const-string v0, "Could not retrieve value from ResourcesImpl#mDrawableCache"

    .line 397
    invoke-static {v9, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 400
    :cond_16
    move-object v2, v8

    .line 401
    :goto_d
    if-eqz v2, :cond_1b

    .line 403
    sget-boolean v0, Lo/Ha;->d:Z

    .line 405
    if-nez v0, :cond_17

    .line 407
    :try_start_5
    const-string v0, "android.content.res.ThemedResourceCache"

    .line 409
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 412
    move-result-object v0

    .line 413
    sput-object v0, Lo/Ha;->c:Ljava/lang/Class;
    :try_end_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5 .. :try_end_5} :catch_5

    .line 415
    goto :goto_e

    .line 416
    :catch_5
    move-exception v0

    .line 417
    const-string v13, "Could not find ThemedResourceCache class"

    .line 419
    invoke-static {v9, v13, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 422
    :goto_e
    sput-boolean v11, Lo/Ha;->d:Z

    .line 424
    :cond_17
    sget-object v0, Lo/Ha;->c:Ljava/lang/Class;

    .line 426
    if-nez v0, :cond_18

    .line 428
    goto :goto_11

    .line 429
    :cond_18
    sget-boolean v13, Lo/Ha;->f:Z

    .line 431
    if-nez v13, :cond_19

    .line 433
    :try_start_6
    const-string v13, "mUnthemedEntries"

    .line 435
    invoke-virtual {v0, v13}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 438
    move-result-object v0

    .line 439
    sput-object v0, Lo/Ha;->e:Ljava/lang/reflect/Field;

    .line 441
    invoke-virtual {v0, v11}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_6
    .catch Ljava/lang/NoSuchFieldException; {:try_start_6 .. :try_end_6} :catch_6

    .line 444
    goto :goto_f

    .line 445
    :catch_6
    move-exception v0

    .line 446
    const-string v13, "Could not retrieve ThemedResourceCache#mUnthemedEntries field"

    .line 448
    invoke-static {v9, v13, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 451
    :goto_f
    sput-boolean v11, Lo/Ha;->f:Z

    .line 453
    :cond_19
    sget-object v0, Lo/Ha;->e:Ljava/lang/reflect/Field;

    .line 455
    if-nez v0, :cond_1a

    .line 457
    goto :goto_11

    .line 458
    :cond_1a
    :try_start_7
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 461
    move-result-object v0

    .line 462
    check-cast v0, Landroid/util/LongSparseArray;
    :try_end_7
    .catch Ljava/lang/IllegalAccessException; {:try_start_7 .. :try_end_7} :catch_7

    .line 464
    move-object v8, v0

    .line 465
    goto :goto_10

    .line 466
    :catch_7
    move-exception v0

    .line 467
    const-string v2, "Could not retrieve value from ThemedResourceCache#mUnthemedEntries"

    .line 469
    invoke-static {v9, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 472
    :goto_10
    if-eqz v8, :cond_1b

    .line 474
    invoke-virtual {v8}, Landroid/util/LongSparseArray;->clear()V

    .line 477
    :cond_1b
    :goto_11
    iget v0, v1, Lo/v1;->T:I

    .line 479
    if-eqz v0, :cond_1c

    .line 481
    invoke-virtual {v5, v0}, Landroid/content/Context;->setTheme(I)V

    .line 484
    invoke-virtual {v5}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 487
    move-result-object v0

    .line 488
    iget v2, v1, Lo/v1;->T:I

    .line 490
    invoke-virtual {v0, v2, v11}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 493
    :cond_1c
    if-eqz v3, :cond_1f

    .line 495
    instance-of v0, v10, Landroid/app/Activity;

    .line 497
    if-eqz v0, :cond_1f

    .line 499
    move-object v0, v10

    .line 500
    check-cast v0, Landroid/app/Activity;

    .line 502
    instance-of v2, v0, Lo/R9;

    .line 504
    if-eqz v2, :cond_1d

    .line 506
    move-object v2, v0

    .line 507
    check-cast v2, Lo/R9;

    .line 509
    invoke-interface {v2}, Lo/R9;->e()Landroidx/lifecycle/a;

    .line 512
    move-result-object v2

    .line 513
    iget-object v2, v2, Landroidx/lifecycle/a;->c:Lo/M9;

    .line 515
    sget-object v3, Lo/M9;->c:Lo/M9;

    .line 517
    invoke-virtual {v2, v3}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 520
    move-result v2

    .line 521
    if-ltz v2, :cond_1f

    .line 523
    invoke-virtual {v0, v6}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 526
    goto :goto_12

    .line 527
    :cond_1d
    iget-boolean v2, v1, Lo/v1;->P:Z

    .line 529
    if-eqz v2, :cond_1f

    .line 531
    iget-boolean v2, v1, Lo/v1;->Q:Z

    .line 533
    if-nez v2, :cond_1f

    .line 535
    invoke-virtual {v0, v6}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 538
    goto :goto_12

    .line 539
    :cond_1e
    move v11, v2

    .line 540
    :cond_1f
    :goto_12
    if-eqz v11, :cond_21

    .line 542
    instance-of v0, v10, Lo/U0;

    .line 544
    if-eqz v0, :cond_21

    .line 546
    const/16 v2, 0x200

    .line 548
    and-int/lit16 v0, v12, 0x200

    .line 550
    if-eqz v0, :cond_20

    .line 552
    move-object v0, v10

    .line 553
    check-cast v0, Lo/U0;

    .line 555
    :cond_20
    and-int/lit8 v0, v12, 0x4

    .line 557
    if-eqz v0, :cond_21

    .line 559
    check-cast v10, Lo/U0;

    .line 561
    :cond_21
    if-eqz v7, :cond_22

    .line 563
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 566
    move-result-object v0

    .line 567
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 570
    move-result-object v0

    .line 571
    invoke-static {v0}, Lo/m1;->b(Landroid/content/res/Configuration;)Lo/ra;

    .line 574
    move-result-object v0

    .line 575
    invoke-static {v0}, Lo/m1;->c(Lo/ra;)V

    .line 578
    :cond_22
    if-nez v4, :cond_23

    .line 580
    invoke-virtual {v1, v5}, Lo/v1;->x(Landroid/content/Context;)Lo/s1;

    .line 583
    move-result-object v0

    .line 584
    invoke-virtual {v0}, Lo/s1;->i()V

    .line 587
    goto :goto_13

    .line 588
    :cond_23
    iget-object v0, v1, Lo/v1;->W:Lo/q1;

    .line 590
    if-eqz v0, :cond_24

    .line 592
    invoke-virtual {v0}, Lo/s1;->c()V

    .line 595
    :cond_24
    :goto_13
    const/4 v0, 0x3

    .line 596
    if-ne v4, v0, :cond_26

    .line 598
    iget-object v0, v1, Lo/v1;->X:Lo/q1;

    .line 600
    if-nez v0, :cond_25

    .line 602
    new-instance v0, Lo/q1;

    .line 604
    invoke-direct {v0, v1, v5}, Lo/q1;-><init>(Lo/v1;Landroid/content/Context;)V

    .line 607
    iput-object v0, v1, Lo/v1;->X:Lo/q1;

    .line 609
    :cond_25
    iget-object v0, v1, Lo/v1;->X:Lo/q1;

    .line 611
    invoke-virtual {v0}, Lo/s1;->i()V

    .line 614
    goto :goto_14

    .line 615
    :cond_26
    iget-object v0, v1, Lo/v1;->X:Lo/q1;

    .line 617
    if-eqz v0, :cond_27

    .line 619
    invoke-virtual {v0}, Lo/s1;->c()V

    .line 622
    :cond_27
    :goto_14
    return v11
.end method

.method public final m(Landroid/view/Window;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lo/v1;->l:Landroid/view/Window;

    .line 3
    const-string v1, "AppCompat has already installed itself into the Window"

    .line 5
    if-nez v0, :cond_6

    .line 7
    invoke-virtual {p1}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    .line 10
    move-result-object v0

    .line 11
    instance-of v2, v0, Lo/p1;

    .line 13
    if-nez v2, :cond_5

    .line 15
    new-instance v1, Lo/p1;

    .line 17
    invoke-direct {v1, p0, v0}, Lo/p1;-><init>(Lo/v1;Landroid/view/Window$Callback;)V

    .line 20
    iput-object v1, p0, Lo/v1;->m:Lo/p1;

    .line 22
    invoke-virtual {p1, v1}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    .line 25
    sget-object v0, Lo/v1;->i0:[I

    .line 27
    iget-object v1, p0, Lo/v1;->k:Landroid/content/Context;

    .line 29
    const/4 v2, 0x0

    .line 30
    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 33
    move-result-object v0

    .line 34
    const/4 v3, 0x0

    .line 35
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 38
    move-result v4

    .line 39
    if-eqz v4, :cond_0

    .line 41
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 44
    move-result v3

    .line 45
    if-eqz v3, :cond_0

    .line 47
    invoke-static {}, Lo/y1;->a()Lo/y1;

    .line 50
    move-result-object v4

    .line 51
    monitor-enter v4

    .line 52
    :try_start_0
    iget-object v5, v4, Lo/y1;->a:Lo/Xd;

    .line 54
    const/4 v6, 0x1

    .line 55
    invoke-virtual {v5, v1, v3, v6}, Lo/Xd;->d(Landroid/content/Context;IZ)Landroid/graphics/drawable/Drawable;

    .line 58
    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    monitor-exit v4

    .line 60
    goto :goto_0

    .line 61
    :catchall_0
    move-exception p1

    .line 62
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 63
    throw p1

    .line 64
    :cond_0
    move-object v1, v2

    .line 65
    :goto_0
    if-eqz v1, :cond_1

    .line 67
    invoke-virtual {p1, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 70
    :cond_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 73
    iput-object p1, p0, Lo/v1;->l:Landroid/view/Window;

    .line 75
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 77
    const/16 v0, 0x21

    .line 79
    if-lt p1, v0, :cond_4

    .line 81
    iget-object p1, p0, Lo/v1;->f0:Landroid/window/OnBackInvokedDispatcher;

    .line 83
    if-nez p1, :cond_4

    .line 85
    if-eqz p1, :cond_2

    .line 87
    iget-object v0, p0, Lo/v1;->g0:Landroid/window/OnBackInvokedCallback;

    .line 89
    if-eqz v0, :cond_2

    .line 91
    invoke-static {p1, v0}, Lo/o1;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 94
    iput-object v2, p0, Lo/v1;->g0:Landroid/window/OnBackInvokedCallback;

    .line 96
    :cond_2
    iget-object p1, p0, Lo/v1;->j:Ljava/lang/Object;

    .line 98
    instance-of v0, p1, Landroid/app/Activity;

    .line 100
    if-eqz v0, :cond_3

    .line 102
    check-cast p1, Landroid/app/Activity;

    .line 104
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 107
    move-result-object v0

    .line 108
    if-eqz v0, :cond_3

    .line 110
    invoke-static {p1}, Lo/o1;->a(Landroid/app/Activity;)Landroid/window/OnBackInvokedDispatcher;

    .line 113
    move-result-object p1

    .line 114
    iput-object p1, p0, Lo/v1;->f0:Landroid/window/OnBackInvokedDispatcher;

    .line 116
    goto :goto_1

    .line 117
    :cond_3
    iput-object v2, p0, Lo/v1;->f0:Landroid/window/OnBackInvokedDispatcher;

    .line 119
    :goto_1
    invoke-virtual {p0}, Lo/v1;->H()V

    .line 122
    :cond_4
    return-void

    .line 123
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 125
    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 128
    throw p1

    .line 129
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 131
    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 134
    throw p1
.end method

.method public final o(ILo/u1;Lo/kb;)V
    .locals 3

    .line 1
    if-nez p3, :cond_1

    .line 3
    if-nez p2, :cond_0

    .line 5
    if-ltz p1, :cond_0

    .line 7
    iget-object v0, p0, Lo/v1;->L:[Lo/u1;

    .line 9
    array-length v1, v0

    .line 10
    if-ge p1, v1, :cond_0

    .line 12
    aget-object p2, v0, p1

    .line 14
    :cond_0
    if-eqz p2, :cond_1

    .line 16
    iget-object p3, p2, Lo/u1;->h:Lo/kb;

    .line 18
    :cond_1
    if-eqz p2, :cond_2

    .line 20
    iget-boolean p2, p2, Lo/u1;->m:Z

    .line 22
    if-nez p2, :cond_2

    .line 24
    return-void

    .line 25
    :cond_2
    iget-boolean p2, p0, Lo/v1;->Q:Z

    .line 27
    if-nez p2, :cond_3

    .line 29
    iget-object p2, p0, Lo/v1;->m:Lo/p1;

    .line 31
    iget-object v0, p0, Lo/v1;->l:Landroid/view/Window;

    .line 33
    invoke-virtual {v0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    const/4 v1, 0x1

    .line 41
    const/4 v2, 0x0

    .line 42
    :try_start_0
    iput-boolean v1, p2, Lo/p1;->d:Z

    .line 44
    invoke-interface {v0, p1, p3}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    iput-boolean v2, p2, Lo/p1;->d:Z

    .line 49
    goto :goto_0

    .line 50
    :catchall_0
    move-exception p1

    .line 51
    iput-boolean v2, p2, Lo/p1;->d:Z

    .line 53
    throw p1

    .line 54
    :cond_3
    :goto_0
    return-void
.end method

.method public final onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    const/4 v5, 0x3

    const/4 v6, -0x1

    const/4 v7, 0x4

    const/4 v8, 0x1

    .line 1
    iget-object v0, v1, Lo/v1;->e0:Lo/r2;

    const/4 v15, 0x0

    if-nez v0, :cond_1

    .line 2
    sget-object v0, Lo/gd;->j:[I

    iget-object v9, v1, Lo/v1;->k:Landroid/content/Context;

    invoke-virtual {v9, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/16 v10, 0x74

    .line 3
    invoke-virtual {v0, v10}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 4
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    if-nez v10, :cond_0

    .line 5
    new-instance v0, Lo/r2;

    invoke-direct {v0}, Lo/r2;-><init>()V

    iput-object v0, v1, Lo/v1;->e0:Lo/r2;

    goto :goto_0

    .line 6
    :cond_0
    :try_start_0
    invoke-virtual {v9}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 7
    new-array v9, v15, [Ljava/lang/Class;

    .line 8
    invoke-virtual {v0, v9}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v9, v15, [Ljava/lang/Object;

    .line 9
    invoke-virtual {v0, v9}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/r2;

    iput-object v0, v1, Lo/v1;->e0:Lo/r2;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 10
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v11, "Failed to instantiate custom view inflater "

    invoke-direct {v9, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ". Falling back to default."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "AppCompatDelegate"

    invoke-static {v10, v9, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 11
    new-instance v0, Lo/r2;

    invoke-direct {v0}, Lo/r2;-><init>()V

    iput-object v0, v1, Lo/v1;->e0:Lo/r2;

    .line 12
    :cond_1
    :goto_0
    iget-object v0, v1, Lo/v1;->e0:Lo/r2;

    .line 13
    sget v9, Lo/ih;->a:I

    .line 14
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    sget-object v9, Lo/gd;->y:[I

    invoke-virtual {v3, v4, v9, v15, v15}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v9

    .line 16
    invoke-virtual {v9, v7, v15}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v10

    if-eqz v10, :cond_2

    .line 17
    const-string v11, "AppCompatViewInflater"

    const-string v12, "app:theme is now deprecated. Please move to using android:theme instead."

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    :cond_2
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz v10, :cond_4

    .line 19
    instance-of v9, v3, Lo/V4;

    if-eqz v9, :cond_3

    move-object v9, v3

    check-cast v9, Lo/V4;

    .line 20
    iget v9, v9, Lo/V4;->a:I

    if-eq v9, v10, :cond_4

    .line 21
    :cond_3
    new-instance v9, Lo/V4;

    invoke-direct {v9, v3, v10}, Lo/V4;-><init>(Landroid/content/Context;I)V

    move-object v14, v9

    goto :goto_1

    :cond_4
    move-object v14, v3

    .line 22
    :goto_1
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v9, 0x0

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->hashCode()I

    move-result v10

    sparse-switch v10, :sswitch_data_0

    :goto_2
    move v7, v6

    goto/16 :goto_3

    :sswitch_0
    const-string v7, "Button"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    goto :goto_2

    :cond_5
    const/16 v7, 0xd

    goto/16 :goto_3

    :sswitch_1
    const-string v7, "EditText"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    goto :goto_2

    :cond_6
    const/16 v7, 0xc

    goto/16 :goto_3

    :sswitch_2
    const-string v7, "CheckBox"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7

    goto :goto_2

    :cond_7
    const/16 v7, 0xb

    goto/16 :goto_3

    :sswitch_3
    const-string v7, "AutoCompleteTextView"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8

    goto :goto_2

    :cond_8
    const/16 v7, 0xa

    goto/16 :goto_3

    :sswitch_4
    const-string v7, "ImageView"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_9

    goto :goto_2

    :cond_9
    const/16 v7, 0x9

    goto/16 :goto_3

    :sswitch_5
    const-string v7, "ToggleButton"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_a

    goto :goto_2

    :cond_a
    const/16 v7, 0x8

    goto/16 :goto_3

    :sswitch_6
    const-string v7, "RadioButton"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_b

    goto :goto_2

    :cond_b
    const/4 v7, 0x7

    goto :goto_3

    :sswitch_7
    const-string v7, "Spinner"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_c

    goto :goto_2

    :cond_c
    const/4 v7, 0x6

    goto :goto_3

    :sswitch_8
    const-string v7, "SeekBar"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_d

    goto :goto_2

    :cond_d
    const/4 v7, 0x5

    goto :goto_3

    :sswitch_9
    const-string v10, "ImageButton"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_12

    goto :goto_2

    :sswitch_a
    const-string v7, "TextView"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_e

    goto/16 :goto_2

    :cond_e
    move v7, v5

    goto :goto_3

    :sswitch_b
    const-string v7, "MultiAutoCompleteTextView"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_f

    goto/16 :goto_2

    :cond_f
    const/4 v7, 0x2

    goto :goto_3

    :sswitch_c
    const-string v7, "CheckedTextView"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_10

    goto/16 :goto_2

    :cond_10
    move v7, v8

    goto :goto_3

    :sswitch_d
    const-string v7, "RatingBar"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_11

    goto/16 :goto_2

    :cond_11
    const/4 v7, 0x0

    :cond_12
    :goto_3
    packed-switch v7, :pswitch_data_0

    move-object v7, v9

    goto :goto_4

    .line 23
    :pswitch_0
    invoke-virtual {v0, v14, v4}, Lo/r2;->b(Landroid/content/Context;Landroid/util/AttributeSet;)Lo/X0;

    move-result-object v7

    goto :goto_4

    .line 24
    :pswitch_1
    new-instance v7, Lo/A1;

    .line 25
    invoke-direct {v7, v14, v4}, Lo/A1;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_4

    .line 26
    :pswitch_2
    invoke-virtual {v0, v14, v4}, Lo/r2;->c(Landroid/content/Context;Landroid/util/AttributeSet;)Lo/Z0;

    move-result-object v7

    goto :goto_4

    .line 27
    :pswitch_3
    invoke-virtual {v0, v14, v4}, Lo/r2;->a(Landroid/content/Context;Landroid/util/AttributeSet;)Lo/V0;

    move-result-object v7

    goto :goto_4

    .line 28
    :pswitch_4
    new-instance v7, Lo/E1;

    .line 29
    invoke-direct {v7, v14, v4, v15}, Lo/E1;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    goto :goto_4

    .line 30
    :pswitch_5
    new-instance v7, Lo/p2;

    invoke-direct {v7, v14, v4}, Lo/p2;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_4

    .line 31
    :pswitch_6
    invoke-virtual {v0, v14, v4}, Lo/r2;->d(Landroid/content/Context;Landroid/util/AttributeSet;)Lo/I1;

    move-result-object v7

    goto :goto_4

    .line 32
    :pswitch_7
    new-instance v7, Lo/Y1;

    invoke-direct {v7, v14, v4}, Lo/Y1;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_4

    .line 33
    :pswitch_8
    new-instance v7, Lo/M1;

    invoke-direct {v7, v14, v4}, Lo/M1;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_4

    .line 34
    :pswitch_9
    new-instance v7, Lo/C1;

    const v10, 0x7f03023c

    .line 35
    invoke-direct {v7, v14, v4, v10}, Lo/C1;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    goto :goto_4

    .line 36
    :pswitch_a
    invoke-virtual {v0, v14, v4}, Lo/r2;->e(Landroid/content/Context;Landroid/util/AttributeSet;)Lo/j2;

    move-result-object v7

    goto :goto_4

    .line 37
    :pswitch_b
    new-instance v7, Lo/F1;

    invoke-direct {v7, v14, v4}, Lo/F1;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_4

    .line 38
    :pswitch_c
    new-instance v7, Lo/a1;

    invoke-direct {v7, v14, v4}, Lo/a1;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_4

    .line 39
    :pswitch_d
    new-instance v7, Lo/J1;

    invoke-direct {v7, v14, v4}, Lo/J1;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    :goto_4
    if-nez v7, :cond_17

    if-eq v3, v14, :cond_17

    .line 40
    iget-object v3, v0, Lo/r2;->a:[Ljava/lang/Object;

    const-string v7, "view"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_13

    .line 41
    const-string v2, "class"

    invoke-interface {v4, v9, v2}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 42
    :cond_13
    :try_start_1
    aput-object v14, v3, v15

    .line 43
    aput-object v4, v3, v8

    const/16 v7, 0x2e

    .line 44
    invoke-virtual {v2, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    if-ne v6, v7, :cond_16

    move v6, v15

    .line 45
    :goto_5
    sget-object v7, Lo/r2;->g:[Ljava/lang/String;

    if-ge v6, v5, :cond_15

    .line 46
    aget-object v7, v7, v6

    invoke-virtual {v0, v14, v2, v7}, Lo/r2;->f(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v7, :cond_14

    .line 47
    aput-object v9, v3, v15

    .line 48
    aput-object v9, v3, v8

    move-object v9, v7

    goto :goto_7

    :cond_14
    add-int/2addr v6, v8

    goto :goto_5

    :catchall_1
    move-exception v0

    goto :goto_6

    .line 49
    :cond_15
    aput-object v9, v3, v15

    .line 50
    aput-object v9, v3, v8

    goto :goto_7

    .line 51
    :cond_16
    :try_start_2
    invoke-virtual {v0, v14, v2, v9}, Lo/r2;->f(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 52
    aput-object v9, v3, v15

    .line 53
    aput-object v9, v3, v8

    move-object v9, v0

    goto :goto_7

    .line 54
    :goto_6
    aput-object v9, v3, v15

    .line 55
    aput-object v9, v3, v8

    .line 56
    throw v0

    .line 57
    :catch_0
    aput-object v9, v3, v15

    .line 58
    aput-object v9, v3, v8

    :goto_7
    move-object v7, v9

    :cond_17
    if-eqz v7, :cond_1f

    .line 59
    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 60
    instance-of v2, v0, Landroid/content/ContextWrapper;

    if-eqz v2, :cond_1a

    invoke-virtual {v7}, Landroid/view/View;->hasOnClickListeners()Z

    move-result v2

    if-nez v2, :cond_18

    goto :goto_8

    .line 61
    :cond_18
    sget-object v2, Lo/r2;->c:[I

    invoke-virtual {v0, v4, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 62
    invoke-virtual {v0, v15}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_19

    .line 63
    new-instance v3, Lo/q2;

    invoke-direct {v3, v7, v2}, Lo/q2;-><init>(Landroid/view/View;Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    :cond_19
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 65
    :cond_1a
    :goto_8
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-le v0, v2, :cond_1b

    goto/16 :goto_a

    .line 66
    :cond_1b
    sget-object v0, Lo/r2;->d:[I

    invoke-virtual {v14, v4, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 67
    invoke-virtual {v0, v15}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    const-class v5, Ljava/lang/Boolean;

    if-eqz v3, :cond_1c

    .line 68
    invoke-virtual {v0, v15, v15}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    sget-object v6, Lo/Dh;->a:Ljava/util/WeakHashMap;

    .line 69
    new-instance v6, Lo/rh;

    const v10, 0x7f0801c2

    const/4 v8, 0x3

    move-object v9, v6

    move-object v11, v5

    move v12, v15

    move v13, v2

    move-object v2, v14

    move v14, v8

    .line 70
    invoke-direct/range {v9 .. v14}, Lo/rh;-><init>(ILjava/lang/Class;III)V

    .line 71
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v6, v7, v3}, Lo/Ef;->d(Landroid/view/View;Ljava/lang/Object;)V

    goto :goto_9

    :cond_1c
    move-object v2, v14

    .line 72
    :goto_9
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 73
    sget-object v0, Lo/r2;->e:[I

    invoke-virtual {v2, v4, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 74
    invoke-virtual {v0, v15}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 75
    invoke-virtual {v0, v15}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Lo/Dh;->m(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 76
    :cond_1d
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 77
    sget-object v0, Lo/r2;->f:[I

    invoke-virtual {v2, v4, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 78
    invoke-virtual {v0, v15}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 79
    invoke-virtual {v0, v15, v15}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    .line 80
    sget-object v3, Lo/Dh;->a:Ljava/util/WeakHashMap;

    .line 81
    new-instance v3, Lo/rh;

    const v10, 0x7f0801c7

    const/4 v14, 0x0

    move-object v9, v3

    move-object v11, v5

    move v12, v15

    const/16 v4, 0x1c

    move v13, v4

    .line 82
    invoke-direct/range {v9 .. v14}, Lo/rh;-><init>(ILjava/lang/Class;III)V

    .line 83
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v3, v7, v2}, Lo/Ef;->d(Landroid/view/View;Ljava/lang/Object;)V

    .line 84
    :cond_1e
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    :cond_1f
    :goto_a
    return-object v7

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7404ceea -> :sswitch_d
        -0x56c015e7 -> :sswitch_c
        -0x503aa7ad -> :sswitch_b
        -0x37f7066e -> :sswitch_a
        -0x37e04bb3 -> :sswitch_9
        -0x274065a5 -> :sswitch_8
        -0x1440b607 -> :sswitch_7
        0x2e46a6ed -> :sswitch_6
        0x2fa453c6 -> :sswitch_5
        0x431b5280 -> :sswitch_4
        0x5445f9ba -> :sswitch_3
        0x5f7507c3 -> :sswitch_2
        0x63577677 -> :sswitch_1
        0x77471352 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    .line 85
    invoke-virtual {p0, v0, p1, p2, p3}, Lo/v1;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final p(Lo/kb;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lo/v1;->K:Z

    .line 3
    if-eqz v0, :cond_0

    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lo/v1;->K:Z

    .line 9
    iget-object v0, p0, Lo/v1;->r:Lo/r5;

    .line 11
    check-cast v0, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    .line 13
    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->k()V

    .line 16
    iget-object v0, v0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->e:Lo/s5;

    .line 18
    check-cast v0, Lo/ig;

    .line 20
    iget-object v0, v0, Lo/ig;->a:Landroidx/appcompat/widget/Toolbar;

    .line 22
    iget-object v0, v0, Landroidx/appcompat/widget/Toolbar;->a:Landroidx/appcompat/widget/ActionMenuView;

    .line 24
    if-eqz v0, :cond_1

    .line 26
    iget-object v0, v0, Landroidx/appcompat/widget/ActionMenuView;->t:Lo/d0;

    .line 28
    if-eqz v0, :cond_1

    .line 30
    invoke-virtual {v0}, Lo/d0;->f()Z

    .line 33
    iget-object v0, v0, Lo/d0;->t:Lo/Z;

    .line 35
    if-eqz v0, :cond_1

    .line 37
    invoke-virtual {v0}, Lo/ub;->b()Z

    .line 40
    move-result v1

    .line 41
    if-eqz v1, :cond_1

    .line 43
    iget-object v0, v0, Lo/ub;->i:Lo/sb;

    .line 45
    invoke-interface {v0}, Lo/Ne;->dismiss()V

    .line 48
    :cond_1
    iget-object v0, p0, Lo/v1;->l:Landroid/view/Window;

    .line 50
    invoke-virtual {v0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    .line 53
    move-result-object v0

    .line 54
    if-eqz v0, :cond_2

    .line 56
    iget-boolean v1, p0, Lo/v1;->Q:Z

    .line 58
    if-nez v1, :cond_2

    .line 60
    const/16 v1, 0x6c

    .line 62
    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    .line 65
    :cond_2
    const/4 p1, 0x0

    .line 66
    iput-boolean p1, p0, Lo/v1;->K:Z

    .line 68
    return-void
.end method

.method public final q(Lo/u1;Z)V
    .locals 3

    .line 1
    if-eqz p2, :cond_0

    .line 3
    iget v0, p1, Lo/u1;->a:I

    .line 5
    if-nez v0, :cond_0

    .line 7
    iget-object v0, p0, Lo/v1;->r:Lo/r5;

    .line 9
    if-eqz v0, :cond_0

    .line 11
    check-cast v0, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    .line 13
    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->k()V

    .line 16
    iget-object v0, v0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->e:Lo/s5;

    .line 18
    check-cast v0, Lo/ig;

    .line 20
    iget-object v0, v0, Lo/ig;->a:Landroidx/appcompat/widget/Toolbar;

    .line 22
    iget-object v0, v0, Landroidx/appcompat/widget/Toolbar;->a:Landroidx/appcompat/widget/ActionMenuView;

    .line 24
    if-eqz v0, :cond_0

    .line 26
    iget-object v0, v0, Landroidx/appcompat/widget/ActionMenuView;->t:Lo/d0;

    .line 28
    if-eqz v0, :cond_0

    .line 30
    invoke-virtual {v0}, Lo/d0;->j()Z

    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_0

    .line 36
    iget-object p1, p1, Lo/u1;->h:Lo/kb;

    .line 38
    invoke-virtual {p0, p1}, Lo/v1;->p(Lo/kb;)V

    .line 41
    return-void

    .line 42
    :cond_0
    iget-object v0, p0, Lo/v1;->k:Landroid/content/Context;

    .line 44
    const-string v1, "window"

    .line 46
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 49
    move-result-object v0

    .line 50
    check-cast v0, Landroid/view/WindowManager;

    .line 52
    const/4 v1, 0x0

    .line 53
    if-eqz v0, :cond_1

    .line 55
    iget-boolean v2, p1, Lo/u1;->m:Z

    .line 57
    if-eqz v2, :cond_1

    .line 59
    iget-object v2, p1, Lo/u1;->e:Lo/t1;

    .line 61
    if-eqz v2, :cond_1

    .line 63
    invoke-interface {v0, v2}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    .line 66
    if-eqz p2, :cond_1

    .line 68
    iget p2, p1, Lo/u1;->a:I

    .line 70
    invoke-virtual {p0, p2, p1, v1}, Lo/v1;->o(ILo/u1;Lo/kb;)V

    .line 73
    :cond_1
    const/4 p2, 0x0

    .line 74
    iput-boolean p2, p1, Lo/u1;->k:Z

    .line 76
    iput-boolean p2, p1, Lo/u1;->l:Z

    .line 78
    iput-boolean p2, p1, Lo/u1;->m:Z

    .line 80
    iput-object v1, p1, Lo/u1;->f:Landroid/view/View;

    .line 82
    const/4 p2, 0x1

    .line 83
    iput-boolean p2, p1, Lo/u1;->n:Z

    .line 85
    iget-object p2, p0, Lo/v1;->M:Lo/u1;

    .line 87
    if-ne p2, p1, :cond_2

    .line 89
    iput-object v1, p0, Lo/v1;->M:Lo/u1;

    .line 91
    :cond_2
    iget p1, p1, Lo/u1;->a:I

    .line 93
    if-nez p1, :cond_3

    .line 95
    invoke-virtual {p0}, Lo/v1;->H()V

    .line 98
    :cond_3
    return-void
.end method

.method public final s(Landroid/view/KeyEvent;)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lo/v1;->j:Ljava/lang/Object;

    .line 3
    instance-of v1, v0, Lo/C9;

    .line 5
    const/4 v2, 0x1

    .line 6
    if-nez v1, :cond_0

    .line 8
    instance-of v0, v0, Lo/J0;

    .line 10
    if-eqz v0, :cond_1

    .line 12
    :cond_0
    iget-object v0, p0, Lo/v1;->l:Landroid/view/Window;

    .line 14
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 17
    move-result-object v0

    .line 18
    if-eqz v0, :cond_1

    .line 20
    invoke-static {v0, p1}, Lo/L1;->r(Landroid/view/View;Landroid/view/KeyEvent;)Z

    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_1

    .line 26
    return v2

    .line 27
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 30
    move-result v0

    .line 31
    const/4 v1, 0x0

    .line 32
    const/16 v3, 0x52

    .line 34
    if-ne v0, v3, :cond_2

    .line 36
    iget-object v0, p0, Lo/v1;->m:Lo/p1;

    .line 38
    iget-object v4, p0, Lo/v1;->l:Landroid/view/Window;

    .line 40
    invoke-virtual {v4}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    .line 43
    move-result-object v4

    .line 44
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    :try_start_0
    iput-boolean v2, v0, Lo/p1;->c:Z

    .line 49
    invoke-interface {v4, p1}, Landroid/view/Window$Callback;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 52
    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    iput-boolean v1, v0, Lo/p1;->c:Z

    .line 55
    if-eqz v4, :cond_2

    .line 57
    return v2

    .line 58
    :catchall_0
    move-exception p1

    .line 59
    iput-boolean v1, v0, Lo/p1;->c:Z

    .line 61
    throw p1

    .line 62
    :cond_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 65
    move-result v0

    .line 66
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    .line 69
    move-result v4

    .line 70
    const/4 v5, 0x4

    .line 71
    if-nez v4, :cond_7

    .line 73
    if-eq v0, v5, :cond_4

    .line 75
    if-eq v0, v3, :cond_3

    .line 77
    goto :goto_1

    .line 78
    :cond_3
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    .line 81
    move-result v0

    .line 82
    if-nez v0, :cond_12

    .line 84
    invoke-virtual {p0, v1}, Lo/v1;->y(I)Lo/u1;

    .line 87
    move-result-object v0

    .line 88
    iget-boolean v1, v0, Lo/u1;->m:Z

    .line 90
    if-nez v1, :cond_12

    .line 92
    invoke-virtual {p0, v0, p1}, Lo/v1;->F(Lo/u1;Landroid/view/KeyEvent;)Z

    .line 95
    goto/16 :goto_7

    .line 97
    :cond_4
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    .line 100
    move-result p1

    .line 101
    and-int/lit16 p1, p1, 0x80

    .line 103
    if-eqz p1, :cond_5

    .line 105
    goto :goto_0

    .line 106
    :cond_5
    move v2, v1

    .line 107
    :goto_0
    iput-boolean v2, p0, Lo/v1;->N:Z

    .line 109
    :cond_6
    :goto_1
    move v2, v1

    .line 110
    goto/16 :goto_7

    .line 112
    :cond_7
    if-eq v0, v5, :cond_11

    .line 114
    if-eq v0, v3, :cond_8

    .line 116
    goto :goto_1

    .line 117
    :cond_8
    iget-object v0, p0, Lo/v1;->u:Lo/h0;

    .line 119
    if-eqz v0, :cond_9

    .line 121
    goto/16 :goto_7

    .line 123
    :cond_9
    invoke-virtual {p0, v1}, Lo/v1;->y(I)Lo/u1;

    .line 126
    move-result-object v0

    .line 127
    iget-object v3, p0, Lo/v1;->r:Lo/r5;

    .line 129
    iget-object v4, p0, Lo/v1;->k:Landroid/content/Context;

    .line 131
    if-eqz v3, :cond_b

    .line 133
    check-cast v3, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    .line 135
    invoke-virtual {v3}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->k()V

    .line 138
    iget-object v3, v3, Landroidx/appcompat/widget/ActionBarOverlayLayout;->e:Lo/s5;

    .line 140
    check-cast v3, Lo/ig;

    .line 142
    iget-object v3, v3, Lo/ig;->a:Landroidx/appcompat/widget/Toolbar;

    .line 144
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    .line 147
    move-result v5

    .line 148
    if-nez v5, :cond_b

    .line 150
    iget-object v3, v3, Landroidx/appcompat/widget/Toolbar;->a:Landroidx/appcompat/widget/ActionMenuView;

    .line 152
    if-eqz v3, :cond_b

    .line 154
    iget-boolean v3, v3, Landroidx/appcompat/widget/ActionMenuView;->s:Z

    .line 156
    if-eqz v3, :cond_b

    .line 158
    invoke-static {v4}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 161
    move-result-object v3

    .line 162
    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    .line 165
    move-result v3

    .line 166
    if-nez v3, :cond_b

    .line 168
    iget-object v3, p0, Lo/v1;->r:Lo/r5;

    .line 170
    check-cast v3, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    .line 172
    invoke-virtual {v3}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->k()V

    .line 175
    iget-object v3, v3, Landroidx/appcompat/widget/ActionBarOverlayLayout;->e:Lo/s5;

    .line 177
    check-cast v3, Lo/ig;

    .line 179
    iget-object v3, v3, Lo/ig;->a:Landroidx/appcompat/widget/Toolbar;

    .line 181
    iget-object v3, v3, Landroidx/appcompat/widget/Toolbar;->a:Landroidx/appcompat/widget/ActionMenuView;

    .line 183
    if-eqz v3, :cond_a

    .line 185
    iget-object v3, v3, Landroidx/appcompat/widget/ActionMenuView;->t:Lo/d0;

    .line 187
    if-eqz v3, :cond_a

    .line 189
    invoke-virtual {v3}, Lo/d0;->j()Z

    .line 192
    move-result v3

    .line 193
    if-eqz v3, :cond_a

    .line 195
    iget-object p1, p0, Lo/v1;->r:Lo/r5;

    .line 197
    check-cast p1, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    .line 199
    invoke-virtual {p1}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->k()V

    .line 202
    iget-object p1, p1, Landroidx/appcompat/widget/ActionBarOverlayLayout;->e:Lo/s5;

    .line 204
    check-cast p1, Lo/ig;

    .line 206
    iget-object p1, p1, Lo/ig;->a:Landroidx/appcompat/widget/Toolbar;

    .line 208
    iget-object p1, p1, Landroidx/appcompat/widget/Toolbar;->a:Landroidx/appcompat/widget/ActionMenuView;

    .line 210
    if-eqz p1, :cond_e

    .line 212
    iget-object p1, p1, Landroidx/appcompat/widget/ActionMenuView;->t:Lo/d0;

    .line 214
    if-eqz p1, :cond_e

    .line 216
    invoke-virtual {p1}, Lo/d0;->f()Z

    .line 219
    move-result p1

    .line 220
    if-eqz p1, :cond_e

    .line 222
    :goto_2
    goto :goto_4

    .line 223
    :cond_a
    iget-boolean v3, p0, Lo/v1;->Q:Z

    .line 225
    if-nez v3, :cond_e

    .line 227
    invoke-virtual {p0, v0, p1}, Lo/v1;->F(Lo/u1;Landroid/view/KeyEvent;)Z

    .line 230
    move-result p1

    .line 231
    if-eqz p1, :cond_e

    .line 233
    iget-object p1, p0, Lo/v1;->r:Lo/r5;

    .line 235
    check-cast p1, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    .line 237
    invoke-virtual {p1}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->k()V

    .line 240
    iget-object p1, p1, Landroidx/appcompat/widget/ActionBarOverlayLayout;->e:Lo/s5;

    .line 242
    check-cast p1, Lo/ig;

    .line 244
    iget-object p1, p1, Lo/ig;->a:Landroidx/appcompat/widget/Toolbar;

    .line 246
    iget-object p1, p1, Landroidx/appcompat/widget/Toolbar;->a:Landroidx/appcompat/widget/ActionMenuView;

    .line 248
    if-eqz p1, :cond_e

    .line 250
    iget-object p1, p1, Landroidx/appcompat/widget/ActionMenuView;->t:Lo/d0;

    .line 252
    if-eqz p1, :cond_e

    .line 254
    invoke-virtual {p1}, Lo/d0;->l()Z

    .line 257
    move-result p1

    .line 258
    if-eqz p1, :cond_e

    .line 260
    goto :goto_2

    .line 261
    :cond_b
    iget-boolean v3, v0, Lo/u1;->m:Z

    .line 263
    if-nez v3, :cond_f

    .line 265
    iget-boolean v5, v0, Lo/u1;->l:Z

    .line 267
    if-eqz v5, :cond_c

    .line 269
    goto :goto_5

    .line 270
    :cond_c
    iget-boolean v3, v0, Lo/u1;->k:Z

    .line 272
    if-eqz v3, :cond_e

    .line 274
    iget-boolean v3, v0, Lo/u1;->o:Z

    .line 276
    if-eqz v3, :cond_d

    .line 278
    iput-boolean v1, v0, Lo/u1;->k:Z

    .line 280
    invoke-virtual {p0, v0, p1}, Lo/v1;->F(Lo/u1;Landroid/view/KeyEvent;)Z

    .line 283
    move-result v3

    .line 284
    goto :goto_3

    .line 285
    :cond_d
    move v3, v2

    .line 286
    :goto_3
    if-eqz v3, :cond_e

    .line 288
    invoke-virtual {p0, v0, p1}, Lo/v1;->D(Lo/u1;Landroid/view/KeyEvent;)V

    .line 291
    :goto_4
    move p1, v2

    .line 292
    goto :goto_6

    .line 293
    :cond_e
    move p1, v1

    .line 294
    goto :goto_6

    .line 295
    :cond_f
    :goto_5
    invoke-virtual {p0, v0, v2}, Lo/v1;->q(Lo/u1;Z)V

    .line 298
    move p1, v3

    .line 299
    :goto_6
    if-eqz p1, :cond_12

    .line 301
    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 304
    move-result-object p1

    .line 305
    const-string v0, "audio"

    .line 307
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 310
    move-result-object p1

    .line 311
    check-cast p1, Landroid/media/AudioManager;

    .line 313
    if-eqz p1, :cond_10

    .line 315
    invoke-virtual {p1, v1}, Landroid/media/AudioManager;->playSoundEffect(I)V

    .line 318
    goto :goto_7

    .line 319
    :cond_10
    const-string p1, "AppCompatDelegate"

    .line 321
    const-string v0, "Couldn\'t get audio manager"

    .line 323
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    goto :goto_7

    .line 327
    :cond_11
    invoke-virtual {p0}, Lo/v1;->C()Z

    .line 330
    move-result p1

    .line 331
    if-eqz p1, :cond_6

    .line 333
    :cond_12
    :goto_7
    return v2
.end method

.method public final t(I)V
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lo/v1;->y(I)Lo/u1;

    .line 4
    move-result-object v0

    .line 5
    iget-object v1, v0, Lo/u1;->h:Lo/kb;

    .line 7
    if-eqz v1, :cond_1

    .line 9
    new-instance v1, Landroid/os/Bundle;

    .line 11
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 14
    iget-object v2, v0, Lo/u1;->h:Lo/kb;

    .line 16
    invoke-virtual {v2, v1}, Lo/kb;->t(Landroid/os/Bundle;)V

    .line 19
    invoke-virtual {v1}, Landroid/os/BaseBundle;->size()I

    .line 22
    move-result v2

    .line 23
    if-lez v2, :cond_0

    .line 25
    iput-object v1, v0, Lo/u1;->p:Landroid/os/Bundle;

    .line 27
    :cond_0
    iget-object v1, v0, Lo/u1;->h:Lo/kb;

    .line 29
    invoke-virtual {v1}, Lo/kb;->w()V

    .line 32
    iget-object v1, v0, Lo/u1;->h:Lo/kb;

    .line 34
    invoke-virtual {v1}, Lo/kb;->clear()V

    .line 37
    :cond_1
    const/4 v1, 0x1

    .line 38
    iput-boolean v1, v0, Lo/u1;->o:Z

    .line 40
    iput-boolean v1, v0, Lo/u1;->n:Z

    .line 42
    const/16 v0, 0x6c

    .line 44
    if-eq p1, v0, :cond_2

    .line 46
    if-nez p1, :cond_3

    .line 48
    :cond_2
    iget-object p1, p0, Lo/v1;->r:Lo/r5;

    .line 50
    if-eqz p1, :cond_3

    .line 52
    const/4 p1, 0x0

    .line 53
    invoke-virtual {p0, p1}, Lo/v1;->y(I)Lo/u1;

    .line 56
    move-result-object v0

    .line 57
    iput-boolean p1, v0, Lo/u1;->k:Z

    .line 59
    const/4 p1, 0x0

    .line 60
    invoke-virtual {p0, v0, p1}, Lo/v1;->F(Lo/u1;Landroid/view/KeyEvent;)Z

    .line 63
    :cond_3
    return-void
.end method

.method public final u()V
    .locals 12

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    iget-boolean v2, p0, Lo/v1;->z:Z

    .line 5
    if-nez v2, :cond_1b

    .line 7
    sget-object v2, Lo/gd;->j:[I

    .line 9
    iget-object v3, p0, Lo/v1;->k:Landroid/content/Context;

    .line 11
    invoke-virtual {v3, v2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    .line 14
    move-result-object v4

    .line 15
    const/16 v5, 0x75

    .line 17
    invoke-virtual {v4, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 20
    move-result v6

    .line 21
    if-eqz v6, :cond_1a

    .line 23
    const/16 v6, 0x7e

    .line 25
    invoke-virtual {v4, v6, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 28
    move-result v6

    .line 29
    const/16 v7, 0x6c

    .line 31
    if-eqz v6, :cond_0

    .line 33
    invoke-virtual {p0, v0}, Lo/v1;->f(I)Z

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    invoke-virtual {v4, v5, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 40
    move-result v5

    .line 41
    if-eqz v5, :cond_1

    .line 43
    invoke-virtual {p0, v7}, Lo/v1;->f(I)Z

    .line 46
    :cond_1
    :goto_0
    const/16 v5, 0x76

    .line 48
    invoke-virtual {v4, v5, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 51
    move-result v5

    .line 52
    const/16 v6, 0x6d

    .line 54
    if-eqz v5, :cond_2

    .line 56
    invoke-virtual {p0, v6}, Lo/v1;->f(I)Z

    .line 59
    :cond_2
    const/16 v5, 0x77

    .line 61
    invoke-virtual {v4, v5, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 64
    move-result v5

    .line 65
    if-eqz v5, :cond_3

    .line 67
    const/16 v5, 0xa

    .line 69
    invoke-virtual {p0, v5}, Lo/v1;->f(I)Z

    .line 72
    :cond_3
    invoke-virtual {v4, v1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 75
    move-result v5

    .line 76
    iput-boolean v5, p0, Lo/v1;->I:Z

    .line 78
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 81
    invoke-virtual {p0}, Lo/v1;->w()V

    .line 84
    iget-object v4, p0, Lo/v1;->l:Landroid/view/Window;

    .line 86
    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 89
    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 92
    move-result-object v4

    .line 93
    iget-boolean v5, p0, Lo/v1;->J:Z

    .line 95
    const/4 v8, 0x0

    .line 96
    if-nez v5, :cond_9

    .line 98
    iget-boolean v5, p0, Lo/v1;->I:Z

    .line 100
    if-eqz v5, :cond_4

    .line 102
    const v5, 0x7f0b000c

    .line 105
    invoke-virtual {v4, v5, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 108
    move-result-object v4

    .line 109
    check-cast v4, Landroid/view/ViewGroup;

    .line 111
    iput-boolean v1, p0, Lo/v1;->G:Z

    .line 113
    iput-boolean v1, p0, Lo/v1;->F:Z

    .line 115
    goto/16 :goto_2

    .line 117
    :cond_4
    iget-boolean v4, p0, Lo/v1;->F:Z

    .line 119
    if-eqz v4, :cond_8

    .line 121
    new-instance v4, Landroid/util/TypedValue;

    .line 123
    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    .line 126
    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 129
    move-result-object v5

    .line 130
    const v9, 0x7f03000b

    .line 133
    invoke-virtual {v5, v9, v4, v0}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 136
    iget v5, v4, Landroid/util/TypedValue;->resourceId:I

    .line 138
    if-eqz v5, :cond_5

    .line 140
    new-instance v5, Lo/V4;

    .line 142
    iget v4, v4, Landroid/util/TypedValue;->resourceId:I

    .line 144
    invoke-direct {v5, v3, v4}, Lo/V4;-><init>(Landroid/content/Context;I)V

    .line 147
    goto :goto_1

    .line 148
    :cond_5
    move-object v5, v3

    .line 149
    :goto_1
    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 152
    move-result-object v4

    .line 153
    const v5, 0x7f0b0017

    .line 156
    invoke-virtual {v4, v5, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 159
    move-result-object v4

    .line 160
    check-cast v4, Landroid/view/ViewGroup;

    .line 162
    const v5, 0x7f080094

    .line 165
    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 168
    move-result-object v5

    .line 169
    check-cast v5, Lo/r5;

    .line 171
    iput-object v5, p0, Lo/v1;->r:Lo/r5;

    .line 173
    iget-object v9, p0, Lo/v1;->l:Landroid/view/Window;

    .line 175
    invoke-virtual {v9}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    .line 178
    move-result-object v9

    .line 179
    invoke-interface {v5, v9}, Lo/r5;->setWindowCallback(Landroid/view/Window$Callback;)V

    .line 182
    iget-boolean v5, p0, Lo/v1;->G:Z

    .line 184
    if-eqz v5, :cond_6

    .line 186
    iget-object v5, p0, Lo/v1;->r:Lo/r5;

    .line 188
    check-cast v5, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    .line 190
    invoke-virtual {v5, v6}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->j(I)V

    .line 193
    :cond_6
    iget-boolean v5, p0, Lo/v1;->D:Z

    .line 195
    if-eqz v5, :cond_7

    .line 197
    iget-object v5, p0, Lo/v1;->r:Lo/r5;

    .line 199
    const/4 v6, 0x2

    .line 200
    check-cast v5, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    .line 202
    invoke-virtual {v5, v6}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->j(I)V

    .line 205
    :cond_7
    iget-boolean v5, p0, Lo/v1;->E:Z

    .line 207
    if-eqz v5, :cond_b

    .line 209
    iget-object v5, p0, Lo/v1;->r:Lo/r5;

    .line 211
    const/4 v6, 0x5

    .line 212
    check-cast v5, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    .line 214
    invoke-virtual {v5, v6}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->j(I)V

    .line 217
    goto :goto_2

    .line 218
    :cond_8
    move-object v4, v8

    .line 219
    goto :goto_2

    .line 220
    :cond_9
    iget-boolean v5, p0, Lo/v1;->H:Z

    .line 222
    if-eqz v5, :cond_a

    .line 224
    const v5, 0x7f0b0016

    .line 227
    invoke-virtual {v4, v5, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 230
    move-result-object v4

    .line 231
    check-cast v4, Landroid/view/ViewGroup;

    .line 233
    goto :goto_2

    .line 234
    :cond_a
    const v5, 0x7f0b0015

    .line 237
    invoke-virtual {v4, v5, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 240
    move-result-object v4

    .line 241
    check-cast v4, Landroid/view/ViewGroup;

    .line 243
    :cond_b
    :goto_2
    if-eqz v4, :cond_19

    .line 245
    new-instance v5, Lo/j1;

    .line 247
    invoke-direct {v5, p0, v1}, Lo/j1;-><init>(Lo/v1;I)V

    .line 250
    sget-object v6, Lo/Dh;->a:Ljava/util/WeakHashMap;

    .line 252
    invoke-static {v4, v5}, Lo/vh;->l(Landroid/view/View;Lo/ec;)V

    .line 255
    iget-object v5, p0, Lo/v1;->r:Lo/r5;

    .line 257
    if-nez v5, :cond_c

    .line 259
    const v5, 0x7f0801de

    .line 262
    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 265
    move-result-object v5

    .line 266
    check-cast v5, Landroid/widget/TextView;

    .line 268
    iput-object v5, p0, Lo/v1;->B:Landroid/widget/TextView;

    .line 270
    :cond_c
    sget-boolean v5, Lo/Xh;->a:Z

    .line 272
    const-string v5, "Could not invoke makeOptionalFitsSystemWindows"

    .line 274
    const-string v6, "ViewUtils"

    .line 276
    :try_start_0
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 279
    move-result-object v9

    .line 280
    const-string v10, "makeOptionalFitsSystemWindows"

    .line 282
    new-array v11, v1, [Ljava/lang/Class;

    .line 284
    invoke-virtual {v9, v10, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 287
    move-result-object v9

    .line 288
    invoke-virtual {v9}, Ljava/lang/reflect/AccessibleObject;->isAccessible()Z

    .line 291
    move-result v10

    .line 292
    if-nez v10, :cond_d

    .line 294
    invoke-virtual {v9, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 297
    goto :goto_3

    .line 298
    :catch_0
    move-exception v9

    .line 299
    goto :goto_4

    .line 300
    :catch_1
    move-exception v9

    .line 301
    goto :goto_5

    .line 302
    :cond_d
    :goto_3
    new-array v10, v1, [Ljava/lang/Object;

    .line 304
    invoke-virtual {v9, v4, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 307
    goto :goto_6

    .line 308
    :goto_4
    invoke-static {v6, v5, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 311
    goto :goto_6

    .line 312
    :goto_5
    invoke-static {v6, v5, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 315
    goto :goto_6

    .line 316
    :catch_2
    const-string v5, "Could not find method makeOptionalFitsSystemWindows. Oh well..."

    .line 318
    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    :goto_6
    const v5, 0x7f080035

    .line 324
    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 327
    move-result-object v5

    .line 328
    check-cast v5, Landroidx/appcompat/widget/ContentFrameLayout;

    .line 330
    iget-object v6, p0, Lo/v1;->l:Landroid/view/Window;

    .line 332
    const v9, 0x1020002

    .line 335
    invoke-virtual {v6, v9}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    .line 338
    move-result-object v6

    .line 339
    check-cast v6, Landroid/view/ViewGroup;

    .line 341
    if-eqz v6, :cond_f

    .line 343
    :goto_7
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    .line 346
    move-result v10

    .line 347
    if-lez v10, :cond_e

    .line 349
    invoke-virtual {v6, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 352
    move-result-object v10

    .line 353
    invoke-virtual {v6, v1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 356
    invoke-virtual {v5, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 359
    goto :goto_7

    .line 360
    :cond_e
    const/4 v10, -0x1

    .line 361
    invoke-virtual {v6, v10}, Landroid/view/View;->setId(I)V

    .line 364
    invoke-virtual {v5, v9}, Landroid/view/View;->setId(I)V

    .line 367
    instance-of v10, v6, Landroid/widget/FrameLayout;

    .line 369
    if-eqz v10, :cond_f

    .line 371
    check-cast v6, Landroid/widget/FrameLayout;

    .line 373
    invoke-virtual {v6, v8}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 376
    :cond_f
    iget-object v6, p0, Lo/v1;->l:Landroid/view/Window;

    .line 378
    invoke-virtual {v6, v4}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    .line 381
    new-instance v6, Lo/j1;

    .line 383
    invoke-direct {v6, p0, v0}, Lo/j1;-><init>(Lo/v1;I)V

    .line 386
    invoke-virtual {v5, v6}, Landroidx/appcompat/widget/ContentFrameLayout;->setAttachListener(Lo/P4;)V

    .line 389
    iput-object v4, p0, Lo/v1;->A:Landroid/view/ViewGroup;

    .line 391
    iget-object v4, p0, Lo/v1;->j:Ljava/lang/Object;

    .line 393
    instance-of v5, v4, Landroid/app/Activity;

    .line 395
    if-eqz v5, :cond_10

    .line 397
    check-cast v4, Landroid/app/Activity;

    .line 399
    invoke-virtual {v4}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    .line 402
    move-result-object v4

    .line 403
    goto :goto_8

    .line 404
    :cond_10
    iget-object v4, p0, Lo/v1;->q:Ljava/lang/CharSequence;

    .line 406
    :goto_8
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 409
    move-result v5

    .line 410
    if-nez v5, :cond_13

    .line 412
    iget-object v5, p0, Lo/v1;->r:Lo/r5;

    .line 414
    if-eqz v5, :cond_11

    .line 416
    invoke-interface {v5, v4}, Lo/r5;->setWindowTitle(Ljava/lang/CharSequence;)V

    .line 419
    goto :goto_9

    .line 420
    :cond_11
    iget-object v5, p0, Lo/v1;->o:Lo/si;

    .line 422
    if-eqz v5, :cond_12

    .line 424
    iget-object v5, v5, Lo/si;->Y:Lo/s5;

    .line 426
    check-cast v5, Lo/ig;

    .line 428
    iget-boolean v6, v5, Lo/ig;->g:Z

    .line 430
    if-nez v6, :cond_13

    .line 432
    iput-object v4, v5, Lo/ig;->h:Ljava/lang/CharSequence;

    .line 434
    iget v6, v5, Lo/ig;->b:I

    .line 436
    and-int/lit8 v6, v6, 0x8

    .line 438
    if-eqz v6, :cond_13

    .line 440
    iget-object v6, v5, Lo/ig;->a:Landroidx/appcompat/widget/Toolbar;

    .line 442
    invoke-virtual {v6, v4}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 445
    iget-boolean v5, v5, Lo/ig;->g:Z

    .line 447
    if-eqz v5, :cond_13

    .line 449
    invoke-virtual {v6}, Landroid/view/View;->getRootView()Landroid/view/View;

    .line 452
    move-result-object v5

    .line 453
    invoke-static {v5, v4}, Lo/Dh;->m(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 456
    goto :goto_9

    .line 457
    :cond_12
    iget-object v5, p0, Lo/v1;->B:Landroid/widget/TextView;

    .line 459
    if-eqz v5, :cond_13

    .line 461
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 464
    :cond_13
    :goto_9
    iget-object v4, p0, Lo/v1;->A:Landroid/view/ViewGroup;

    .line 466
    invoke-virtual {v4, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 469
    move-result-object v4

    .line 470
    check-cast v4, Landroidx/appcompat/widget/ContentFrameLayout;

    .line 472
    iget-object v5, p0, Lo/v1;->l:Landroid/view/Window;

    .line 474
    invoke-virtual {v5}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 477
    move-result-object v5

    .line 478
    invoke-virtual {v5}, Landroid/view/View;->getPaddingLeft()I

    .line 481
    move-result v6

    .line 482
    invoke-virtual {v5}, Landroid/view/View;->getPaddingTop()I

    .line 485
    move-result v8

    .line 486
    invoke-virtual {v5}, Landroid/view/View;->getPaddingRight()I

    .line 489
    move-result v9

    .line 490
    invoke-virtual {v5}, Landroid/view/View;->getPaddingBottom()I

    .line 493
    move-result v5

    .line 494
    iget-object v10, v4, Landroidx/appcompat/widget/ContentFrameLayout;->g:Landroid/graphics/Rect;

    .line 496
    invoke-virtual {v10, v6, v8, v9, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 499
    invoke-virtual {v4}, Landroid/view/View;->isLaidOut()Z

    .line 502
    move-result v5

    .line 503
    if-eqz v5, :cond_14

    .line 505
    invoke-virtual {v4}, Landroid/view/View;->requestLayout()V

    .line 508
    :cond_14
    invoke-virtual {v3, v2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    .line 511
    move-result-object v2

    .line 512
    const/16 v3, 0x7c

    .line 514
    invoke-virtual {v4}, Landroidx/appcompat/widget/ContentFrameLayout;->getMinWidthMajor()Landroid/util/TypedValue;

    .line 517
    move-result-object v5

    .line 518
    invoke-virtual {v2, v3, v5}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 521
    const/16 v3, 0x7d

    .line 523
    invoke-virtual {v4}, Landroidx/appcompat/widget/ContentFrameLayout;->getMinWidthMinor()Landroid/util/TypedValue;

    .line 526
    move-result-object v5

    .line 527
    invoke-virtual {v2, v3, v5}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 530
    const/16 v3, 0x7a

    .line 532
    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 535
    move-result v5

    .line 536
    if-eqz v5, :cond_15

    .line 538
    invoke-virtual {v4}, Landroidx/appcompat/widget/ContentFrameLayout;->getFixedWidthMajor()Landroid/util/TypedValue;

    .line 541
    move-result-object v5

    .line 542
    invoke-virtual {v2, v3, v5}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 545
    :cond_15
    const/16 v3, 0x7b

    .line 547
    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 550
    move-result v5

    .line 551
    if-eqz v5, :cond_16

    .line 553
    invoke-virtual {v4}, Landroidx/appcompat/widget/ContentFrameLayout;->getFixedWidthMinor()Landroid/util/TypedValue;

    .line 556
    move-result-object v5

    .line 557
    invoke-virtual {v2, v3, v5}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 560
    :cond_16
    const/16 v3, 0x78

    .line 562
    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 565
    move-result v5

    .line 566
    if-eqz v5, :cond_17

    .line 568
    invoke-virtual {v4}, Landroidx/appcompat/widget/ContentFrameLayout;->getFixedHeightMajor()Landroid/util/TypedValue;

    .line 571
    move-result-object v5

    .line 572
    invoke-virtual {v2, v3, v5}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 575
    :cond_17
    const/16 v3, 0x79

    .line 577
    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 580
    move-result v5

    .line 581
    if-eqz v5, :cond_18

    .line 583
    invoke-virtual {v4}, Landroidx/appcompat/widget/ContentFrameLayout;->getFixedHeightMinor()Landroid/util/TypedValue;

    .line 586
    move-result-object v5

    .line 587
    invoke-virtual {v2, v3, v5}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 590
    :cond_18
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 593
    invoke-virtual {v4}, Landroid/view/View;->requestLayout()V

    .line 596
    iput-boolean v0, p0, Lo/v1;->z:Z

    .line 598
    invoke-virtual {p0, v1}, Lo/v1;->y(I)Lo/u1;

    .line 601
    move-result-object v0

    .line 602
    iget-boolean v1, p0, Lo/v1;->Q:Z

    .line 604
    if-nez v1, :cond_1b

    .line 606
    iget-object v0, v0, Lo/u1;->h:Lo/kb;

    .line 608
    if-nez v0, :cond_1b

    .line 610
    invoke-virtual {p0, v7}, Lo/v1;->A(I)V

    .line 613
    goto :goto_a

    .line 614
    :cond_19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 616
    new-instance v1, Ljava/lang/StringBuilder;

    .line 618
    const-string v2, "AppCompat does not support the current theme features: { windowActionBar: "

    .line 620
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 623
    iget-boolean v2, p0, Lo/v1;->F:Z

    .line 625
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 628
    const-string v2, ", windowActionBarOverlay: "

    .line 630
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 633
    iget-boolean v2, p0, Lo/v1;->G:Z

    .line 635
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 638
    const-string v2, ", android:windowIsFloating: "

    .line 640
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 643
    iget-boolean v2, p0, Lo/v1;->I:Z

    .line 645
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 648
    const-string v2, ", windowActionModeOverlay: "

    .line 650
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 653
    iget-boolean v2, p0, Lo/v1;->H:Z

    .line 655
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 658
    const-string v2, ", windowNoTitle: "

    .line 660
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 663
    iget-boolean v2, p0, Lo/v1;->J:Z

    .line 665
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 668
    const-string v2, " }"

    .line 670
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 673
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 676
    move-result-object v1

    .line 677
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 680
    throw v0

    .line 681
    :cond_1a
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 684
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 686
    const-string v1, "You need to use a Theme.AppCompat theme (or descendant) with this activity."

    .line 688
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 691
    throw v0

    .line 692
    :cond_1b
    :goto_a
    return-void
.end method

.method public final v(Lo/kb;)V
    .locals 5

    .line 1
    iget-object p1, p0, Lo/v1;->r:Lo/r5;

    .line 3
    const/4 v0, 0x0

    .line 4
    const/4 v1, 0x1

    .line 5
    if-eqz p1, :cond_5

    .line 7
    check-cast p1, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    .line 9
    invoke-virtual {p1}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->k()V

    .line 12
    iget-object p1, p1, Landroidx/appcompat/widget/ActionBarOverlayLayout;->e:Lo/s5;

    .line 14
    check-cast p1, Lo/ig;

    .line 16
    iget-object p1, p1, Lo/ig;->a:Landroidx/appcompat/widget/Toolbar;

    .line 18
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 21
    move-result v2

    .line 22
    if-nez v2, :cond_5

    .line 24
    iget-object p1, p1, Landroidx/appcompat/widget/Toolbar;->a:Landroidx/appcompat/widget/ActionMenuView;

    .line 26
    if-eqz p1, :cond_5

    .line 28
    iget-boolean p1, p1, Landroidx/appcompat/widget/ActionMenuView;->s:Z

    .line 30
    if-eqz p1, :cond_5

    .line 32
    iget-object p1, p0, Lo/v1;->k:Landroid/content/Context;

    .line 34
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    .line 41
    move-result p1

    .line 42
    if-eqz p1, :cond_0

    .line 44
    iget-object p1, p0, Lo/v1;->r:Lo/r5;

    .line 46
    check-cast p1, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    .line 48
    invoke-virtual {p1}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->k()V

    .line 51
    iget-object p1, p1, Landroidx/appcompat/widget/ActionBarOverlayLayout;->e:Lo/s5;

    .line 53
    check-cast p1, Lo/ig;

    .line 55
    iget-object p1, p1, Lo/ig;->a:Landroidx/appcompat/widget/Toolbar;

    .line 57
    iget-object p1, p1, Landroidx/appcompat/widget/Toolbar;->a:Landroidx/appcompat/widget/ActionMenuView;

    .line 59
    if-eqz p1, :cond_5

    .line 61
    iget-object p1, p1, Landroidx/appcompat/widget/ActionMenuView;->t:Lo/d0;

    .line 63
    if-eqz p1, :cond_5

    .line 65
    iget-object v2, p1, Lo/d0;->u:Lo/b0;

    .line 67
    if-nez v2, :cond_0

    .line 69
    invoke-virtual {p1}, Lo/d0;->j()Z

    .line 72
    move-result p1

    .line 73
    if-eqz p1, :cond_5

    .line 75
    :cond_0
    iget-object p1, p0, Lo/v1;->l:Landroid/view/Window;

    .line 77
    invoke-virtual {p1}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    .line 80
    move-result-object p1

    .line 81
    iget-object v2, p0, Lo/v1;->r:Lo/r5;

    .line 83
    check-cast v2, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    .line 85
    invoke-virtual {v2}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->k()V

    .line 88
    iget-object v2, v2, Landroidx/appcompat/widget/ActionBarOverlayLayout;->e:Lo/s5;

    .line 90
    check-cast v2, Lo/ig;

    .line 92
    iget-object v2, v2, Lo/ig;->a:Landroidx/appcompat/widget/Toolbar;

    .line 94
    iget-object v2, v2, Landroidx/appcompat/widget/Toolbar;->a:Landroidx/appcompat/widget/ActionMenuView;

    .line 96
    if-eqz v2, :cond_1

    .line 98
    iget-object v2, v2, Landroidx/appcompat/widget/ActionMenuView;->t:Lo/d0;

    .line 100
    if-eqz v2, :cond_1

    .line 102
    invoke-virtual {v2}, Lo/d0;->j()Z

    .line 105
    move-result v2

    .line 106
    if-eqz v2, :cond_1

    .line 108
    move v2, v1

    .line 109
    goto :goto_0

    .line 110
    :cond_1
    move v2, v0

    .line 111
    :goto_0
    const/16 v3, 0x6c

    .line 113
    if-eqz v2, :cond_3

    .line 115
    iget-object v1, p0, Lo/v1;->r:Lo/r5;

    .line 117
    check-cast v1, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    .line 119
    invoke-virtual {v1}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->k()V

    .line 122
    iget-object v1, v1, Landroidx/appcompat/widget/ActionBarOverlayLayout;->e:Lo/s5;

    .line 124
    check-cast v1, Lo/ig;

    .line 126
    iget-object v1, v1, Lo/ig;->a:Landroidx/appcompat/widget/Toolbar;

    .line 128
    iget-object v1, v1, Landroidx/appcompat/widget/Toolbar;->a:Landroidx/appcompat/widget/ActionMenuView;

    .line 130
    if-eqz v1, :cond_2

    .line 132
    iget-object v1, v1, Landroidx/appcompat/widget/ActionMenuView;->t:Lo/d0;

    .line 134
    if-eqz v1, :cond_2

    .line 136
    invoke-virtual {v1}, Lo/d0;->f()Z

    .line 139
    move-result v1

    .line 140
    :cond_2
    iget-boolean v1, p0, Lo/v1;->Q:Z

    .line 142
    if-nez v1, :cond_6

    .line 144
    invoke-virtual {p0, v0}, Lo/v1;->y(I)Lo/u1;

    .line 147
    move-result-object v0

    .line 148
    iget-object v0, v0, Lo/u1;->h:Lo/kb;

    .line 150
    invoke-interface {p1, v3, v0}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    .line 153
    goto :goto_1

    .line 154
    :cond_3
    if-eqz p1, :cond_6

    .line 156
    iget-boolean v2, p0, Lo/v1;->Q:Z

    .line 158
    if-nez v2, :cond_6

    .line 160
    iget-boolean v2, p0, Lo/v1;->Y:Z

    .line 162
    if-eqz v2, :cond_4

    .line 164
    iget v2, p0, Lo/v1;->Z:I

    .line 166
    and-int/2addr v1, v2

    .line 167
    if-eqz v1, :cond_4

    .line 169
    iget-object v1, p0, Lo/v1;->l:Landroid/view/Window;

    .line 171
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 174
    move-result-object v1

    .line 175
    iget-object v2, p0, Lo/v1;->a0:Lo/i1;

    .line 177
    invoke-virtual {v1, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 180
    invoke-virtual {v2}, Lo/i1;->run()V

    .line 183
    :cond_4
    invoke-virtual {p0, v0}, Lo/v1;->y(I)Lo/u1;

    .line 186
    move-result-object v1

    .line 187
    iget-object v2, v1, Lo/u1;->h:Lo/kb;

    .line 189
    if-eqz v2, :cond_6

    .line 191
    iget-boolean v4, v1, Lo/u1;->o:Z

    .line 193
    if-nez v4, :cond_6

    .line 195
    iget-object v4, v1, Lo/u1;->g:Landroid/view/View;

    .line 197
    invoke-interface {p1, v0, v4, v2}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    .line 200
    move-result v0

    .line 201
    if-eqz v0, :cond_6

    .line 203
    iget-object v0, v1, Lo/u1;->h:Lo/kb;

    .line 205
    invoke-interface {p1, v3, v0}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    .line 208
    iget-object p1, p0, Lo/v1;->r:Lo/r5;

    .line 210
    check-cast p1, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    .line 212
    invoke-virtual {p1}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->k()V

    .line 215
    iget-object p1, p1, Landroidx/appcompat/widget/ActionBarOverlayLayout;->e:Lo/s5;

    .line 217
    check-cast p1, Lo/ig;

    .line 219
    iget-object p1, p1, Lo/ig;->a:Landroidx/appcompat/widget/Toolbar;

    .line 221
    iget-object p1, p1, Landroidx/appcompat/widget/Toolbar;->a:Landroidx/appcompat/widget/ActionMenuView;

    .line 223
    if-eqz p1, :cond_6

    .line 225
    iget-object p1, p1, Landroidx/appcompat/widget/ActionMenuView;->t:Lo/d0;

    .line 227
    if-eqz p1, :cond_6

    .line 229
    invoke-virtual {p1}, Lo/d0;->l()Z

    .line 232
    goto :goto_1

    .line 233
    :cond_5
    invoke-virtual {p0, v0}, Lo/v1;->y(I)Lo/u1;

    .line 236
    move-result-object p1

    .line 237
    iput-boolean v1, p1, Lo/u1;->n:Z

    .line 239
    invoke-virtual {p0, p1, v0}, Lo/v1;->q(Lo/u1;Z)V

    .line 242
    const/4 v0, 0x0

    .line 243
    invoke-virtual {p0, p1, v0}, Lo/v1;->D(Lo/u1;Landroid/view/KeyEvent;)V

    .line 246
    :cond_6
    :goto_1
    return-void
.end method

.method public final w()V
    .locals 2

    .line 1
    iget-object v0, p0, Lo/v1;->l:Landroid/view/Window;

    .line 3
    if-nez v0, :cond_0

    .line 5
    iget-object v0, p0, Lo/v1;->j:Ljava/lang/Object;

    .line 7
    instance-of v1, v0, Landroid/app/Activity;

    .line 9
    if-eqz v1, :cond_0

    .line 11
    check-cast v0, Landroid/app/Activity;

    .line 13
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {p0, v0}, Lo/v1;->m(Landroid/view/Window;)V

    .line 20
    :cond_0
    iget-object v0, p0, Lo/v1;->l:Landroid/view/Window;

    .line 22
    if-eqz v0, :cond_1

    .line 24
    return-void

    .line 25
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 27
    const-string v1, "We have not been given a Window"

    .line 29
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 32
    throw v0
.end method

.method public final x(Landroid/content/Context;)Lo/s1;
    .locals 3

    .line 1
    iget-object v0, p0, Lo/v1;->W:Lo/q1;

    .line 3
    if-nez v0, :cond_1

    .line 5
    new-instance v0, Lo/q1;

    .line 7
    sget-object v1, Lo/s2;->g:Lo/s2;

    .line 9
    if-nez v1, :cond_0

    .line 11
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 14
    move-result-object p1

    .line 15
    new-instance v1, Lo/s2;

    .line 17
    const-string v2, "location"

    .line 19
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 22
    move-result-object v2

    .line 23
    check-cast v2, Landroid/location/LocationManager;

    .line 25
    invoke-direct {v1, p1, v2}, Lo/s2;-><init>(Landroid/content/Context;Landroid/location/LocationManager;)V

    .line 28
    sput-object v1, Lo/s2;->g:Lo/s2;

    .line 30
    :cond_0
    sget-object p1, Lo/s2;->g:Lo/s2;

    .line 32
    invoke-direct {v0, p0, p1}, Lo/q1;-><init>(Lo/v1;Lo/s2;)V

    .line 35
    iput-object v0, p0, Lo/v1;->W:Lo/q1;

    .line 37
    :cond_1
    iget-object p1, p0, Lo/v1;->W:Lo/q1;

    .line 39
    return-object p1
.end method

.method public final y(I)Lo/u1;
    .locals 4

    .line 1
    iget-object v0, p0, Lo/v1;->L:[Lo/u1;

    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 6
    array-length v2, v0

    .line 7
    if-gt v2, p1, :cond_2

    .line 9
    :cond_0
    add-int/lit8 v2, p1, 0x1

    .line 11
    new-array v2, v2, [Lo/u1;

    .line 13
    if-eqz v0, :cond_1

    .line 15
    array-length v3, v0

    .line 16
    invoke-static {v0, v1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 19
    :cond_1
    iput-object v2, p0, Lo/v1;->L:[Lo/u1;

    .line 21
    move-object v0, v2

    .line 22
    :cond_2
    aget-object v2, v0, p1

    .line 24
    if-nez v2, :cond_3

    .line 26
    new-instance v2, Lo/u1;

    .line 28
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 31
    iput p1, v2, Lo/u1;->a:I

    .line 33
    iput-boolean v1, v2, Lo/u1;->n:Z

    .line 35
    aput-object v2, v0, p1

    .line 37
    :cond_3
    return-object v2
.end method

.method public final z()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lo/v1;->u()V

    .line 4
    iget-boolean v0, p0, Lo/v1;->F:Z

    .line 6
    if-eqz v0, :cond_3

    .line 8
    iget-object v0, p0, Lo/v1;->o:Lo/si;

    .line 10
    if-eqz v0, :cond_0

    .line 12
    goto :goto_1

    .line 13
    :cond_0
    iget-object v0, p0, Lo/v1;->j:Ljava/lang/Object;

    .line 15
    instance-of v1, v0, Landroid/app/Activity;

    .line 17
    if-eqz v1, :cond_1

    .line 19
    new-instance v1, Lo/si;

    .line 21
    check-cast v0, Landroid/app/Activity;

    .line 23
    iget-boolean v2, p0, Lo/v1;->G:Z

    .line 25
    invoke-direct {v1, v0, v2}, Lo/si;-><init>(Landroid/app/Activity;Z)V

    .line 28
    iput-object v1, p0, Lo/v1;->o:Lo/si;

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    instance-of v1, v0, Landroid/app/Dialog;

    .line 33
    if-eqz v1, :cond_2

    .line 35
    new-instance v1, Lo/si;

    .line 37
    check-cast v0, Landroid/app/Dialog;

    .line 39
    invoke-direct {v1, v0}, Lo/si;-><init>(Landroid/app/Dialog;)V

    .line 42
    iput-object v1, p0, Lo/v1;->o:Lo/si;

    .line 44
    :cond_2
    :goto_0
    iget-object v0, p0, Lo/v1;->o:Lo/si;

    .line 46
    if-eqz v0, :cond_3

    .line 48
    iget-boolean v1, p0, Lo/v1;->b0:Z

    .line 50
    invoke-virtual {v0, v1}, Lo/si;->t0(Z)V

    .line 53
    :cond_3
    :goto_1
    return-void
.end method
