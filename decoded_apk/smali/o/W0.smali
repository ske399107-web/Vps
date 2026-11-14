.class public final Lo/W0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/view/View;

.field public final b:Lo/y1;

.field public c:I

.field public d:Lo/Xf;

.field public e:Lo/Xf;

.field public f:Lo/Xf;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lo/W0;->c:I

    .line 7
    iput-object p1, p0, Lo/W0;->a:Landroid/view/View;

    .line 9
    invoke-static {}, Lo/y1;->a()Lo/y1;

    .line 12
    move-result-object p1

    .line 13
    iput-object p1, p0, Lo/W0;->b:Lo/y1;

    .line 15
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .line 1
    iget-object v0, p0, Lo/W0;->a:Landroid/view/View;

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 6
    move-result-object v1

    .line 7
    if-eqz v1, :cond_6

    .line 9
    iget-object v2, p0, Lo/W0;->d:Lo/Xf;

    .line 11
    if-eqz v2, :cond_4

    .line 13
    iget-object v2, p0, Lo/W0;->f:Lo/Xf;

    .line 15
    if-nez v2, :cond_0

    .line 17
    new-instance v2, Lo/Xf;

    .line 19
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object v2, p0, Lo/W0;->f:Lo/Xf;

    .line 24
    :cond_0
    iget-object v2, p0, Lo/W0;->f:Lo/Xf;

    .line 26
    const/4 v3, 0x0

    .line 27
    iput-object v3, v2, Lo/Xf;->a:Landroid/content/res/ColorStateList;

    .line 29
    const/4 v4, 0x0

    .line 30
    iput-boolean v4, v2, Lo/Xf;->d:Z

    .line 32
    iput-object v3, v2, Lo/Xf;->b:Landroid/graphics/PorterDuff$Mode;

    .line 34
    iput-boolean v4, v2, Lo/Xf;->c:Z

    .line 36
    sget-object v3, Lo/Dh;->a:Ljava/util/WeakHashMap;

    .line 38
    invoke-static {v0}, Lo/vh;->c(Landroid/view/View;)Landroid/content/res/ColorStateList;

    .line 41
    move-result-object v3

    .line 42
    const/4 v4, 0x1

    .line 43
    if-eqz v3, :cond_1

    .line 45
    iput-boolean v4, v2, Lo/Xf;->d:Z

    .line 47
    iput-object v3, v2, Lo/Xf;->a:Landroid/content/res/ColorStateList;

    .line 49
    :cond_1
    invoke-static {v0}, Lo/vh;->d(Landroid/view/View;)Landroid/graphics/PorterDuff$Mode;

    .line 52
    move-result-object v3

    .line 53
    if-eqz v3, :cond_2

    .line 55
    iput-boolean v4, v2, Lo/Xf;->c:Z

    .line 57
    iput-object v3, v2, Lo/Xf;->b:Landroid/graphics/PorterDuff$Mode;

    .line 59
    :cond_2
    iget-boolean v3, v2, Lo/Xf;->d:Z

    .line 61
    if-nez v3, :cond_3

    .line 63
    iget-boolean v3, v2, Lo/Xf;->c:Z

    .line 65
    if-eqz v3, :cond_4

    .line 67
    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->getDrawableState()[I

    .line 70
    move-result-object v0

    .line 71
    invoke-static {v1, v2, v0}, Lo/y1;->e(Landroid/graphics/drawable/Drawable;Lo/Xf;[I)V

    .line 74
    return-void

    .line 75
    :cond_4
    iget-object v2, p0, Lo/W0;->e:Lo/Xf;

    .line 77
    if-eqz v2, :cond_5

    .line 79
    invoke-virtual {v0}, Landroid/view/View;->getDrawableState()[I

    .line 82
    move-result-object v0

    .line 83
    invoke-static {v1, v2, v0}, Lo/y1;->e(Landroid/graphics/drawable/Drawable;Lo/Xf;[I)V

    .line 86
    goto :goto_0

    .line 87
    :cond_5
    iget-object v2, p0, Lo/W0;->d:Lo/Xf;

    .line 89
    if-eqz v2, :cond_6

    .line 91
    invoke-virtual {v0}, Landroid/view/View;->getDrawableState()[I

    .line 94
    move-result-object v0

    .line 95
    invoke-static {v1, v2, v0}, Lo/y1;->e(Landroid/graphics/drawable/Drawable;Lo/Xf;[I)V

    .line 98
    :cond_6
    :goto_0
    return-void
.end method

.method public final b()Landroid/content/res/ColorStateList;
    .locals 1

    .line 1
    iget-object v0, p0, Lo/W0;->e:Lo/Xf;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    iget-object v0, v0, Lo/Xf;->a:Landroid/content/res/ColorStateList;

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    return-object v0
.end method

.method public final c()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .line 1
    iget-object v0, p0, Lo/W0;->e:Lo/Xf;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    iget-object v0, v0, Lo/Xf;->b:Landroid/graphics/PorterDuff$Mode;

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    return-object v0
.end method

.method public final d(Landroid/util/AttributeSet;I)V
    .locals 9

    .line 1
    iget-object v0, p0, Lo/W0;->a:Landroid/view/View;

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v1

    .line 7
    sget-object v4, Lo/gd;->z:[I

    .line 9
    invoke-static {v1, p1, v4, p2}, Lo/s2;->y(Landroid/content/Context;Landroid/util/AttributeSet;[II)Lo/s2;

    .line 12
    move-result-object v1

    .line 13
    iget-object v2, v1, Lo/s2;->b:Ljava/lang/Object;

    .line 15
    move-object v8, v2

    .line 16
    check-cast v8, Landroid/content/res/TypedArray;

    .line 18
    iget-object v2, p0, Lo/W0;->a:Landroid/view/View;

    .line 20
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 23
    move-result-object v3

    .line 24
    iget-object v5, v1, Lo/s2;->b:Ljava/lang/Object;

    .line 26
    move-object v6, v5

    .line 27
    check-cast v6, Landroid/content/res/TypedArray;

    .line 29
    move-object v5, p1

    .line 30
    move v7, p2

    .line 31
    invoke-static/range {v2 .. v7}, Lo/Dh;->k(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;I)V

    .line 34
    const/4 p1, 0x0

    .line 35
    :try_start_0
    invoke-virtual {v8, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 38
    move-result p2

    .line 39
    const/4 v2, -0x1

    .line 40
    if-eqz p2, :cond_0

    .line 42
    invoke-virtual {v8, p1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 45
    move-result p1

    .line 46
    iput p1, p0, Lo/W0;->c:I

    .line 48
    iget-object p1, p0, Lo/W0;->b:Lo/y1;

    .line 50
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 53
    move-result-object p2

    .line 54
    iget v3, p0, Lo/W0;->c:I

    .line 56
    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    :try_start_1
    iget-object v4, p1, Lo/y1;->a:Lo/Xd;

    .line 59
    invoke-virtual {v4, p2, v3}, Lo/Xd;->f(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 62
    move-result-object p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 63
    :try_start_2
    monitor-exit p1

    .line 64
    if-eqz p2, :cond_0

    .line 66
    invoke-virtual {p0, p2}, Lo/W0;->g(Landroid/content/res/ColorStateList;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 69
    goto :goto_0

    .line 70
    :catchall_0
    move-exception p1

    .line 71
    goto :goto_1

    .line 72
    :catchall_1
    move-exception p2

    .line 73
    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 74
    :try_start_4
    throw p2

    .line 75
    :cond_0
    :goto_0
    const/4 p1, 0x1

    .line 76
    invoke-virtual {v8, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 79
    move-result p2

    .line 80
    if-eqz p2, :cond_1

    .line 82
    invoke-virtual {v1, p1}, Lo/s2;->n(I)Landroid/content/res/ColorStateList;

    .line 85
    move-result-object p1

    .line 86
    invoke-static {v0, p1}, Lo/vh;->i(Landroid/view/View;Landroid/content/res/ColorStateList;)V

    .line 89
    :cond_1
    const/4 p1, 0x2

    .line 90
    invoke-virtual {v8, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 93
    move-result p2

    .line 94
    if-eqz p2, :cond_2

    .line 96
    invoke-virtual {v8, p1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 99
    move-result p1

    .line 100
    const/4 p2, 0x0

    .line 101
    invoke-static {p1, p2}, Lo/h6;->c(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    .line 104
    move-result-object p1

    .line 105
    invoke-static {v0, p1}, Lo/vh;->j(Landroid/view/View;Landroid/graphics/PorterDuff$Mode;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 108
    :cond_2
    invoke-virtual {v1}, Lo/s2;->A()V

    .line 111
    return-void

    .line 112
    :goto_1
    invoke-virtual {v1}, Lo/s2;->A()V

    .line 115
    throw p1
.end method

.method public final e()V
    .locals 1

    .line 1
    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lo/W0;->c:I

    .line 4
    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, v0}, Lo/W0;->g(Landroid/content/res/ColorStateList;)V

    .line 8
    invoke-virtual {p0}, Lo/W0;->a()V

    .line 11
    return-void
.end method

.method public final f(I)V
    .locals 3

    .line 1
    iput p1, p0, Lo/W0;->c:I

    .line 3
    iget-object v0, p0, Lo/W0;->b:Lo/y1;

    .line 5
    if-eqz v0, :cond_0

    .line 7
    iget-object v1, p0, Lo/W0;->a:Landroid/view/View;

    .line 9
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 12
    move-result-object v1

    .line 13
    monitor-enter v0

    .line 14
    :try_start_0
    iget-object v2, v0, Lo/y1;->a:Lo/Xd;

    .line 16
    invoke-virtual {v2, v1, p1}, Lo/Xd;->f(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 19
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    monitor-exit v0

    .line 21
    goto :goto_0

    .line 22
    :catchall_0
    move-exception p1

    .line 23
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 24
    throw p1

    .line 25
    :cond_0
    const/4 p1, 0x0

    .line 26
    :goto_0
    invoke-virtual {p0, p1}, Lo/W0;->g(Landroid/content/res/ColorStateList;)V

    .line 29
    invoke-virtual {p0}, Lo/W0;->a()V

    .line 32
    return-void
.end method

.method public final g(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_1

    .line 3
    iget-object v0, p0, Lo/W0;->d:Lo/Xf;

    .line 5
    if-nez v0, :cond_0

    .line 7
    new-instance v0, Lo/Xf;

    .line 9
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object v0, p0, Lo/W0;->d:Lo/Xf;

    .line 14
    :cond_0
    iget-object v0, p0, Lo/W0;->d:Lo/Xf;

    .line 16
    iput-object p1, v0, Lo/Xf;->a:Landroid/content/res/ColorStateList;

    .line 18
    const/4 p1, 0x1

    .line 19
    iput-boolean p1, v0, Lo/Xf;->d:Z

    .line 21
    goto :goto_0

    .line 22
    :cond_1
    const/4 p1, 0x0

    .line 23
    iput-object p1, p0, Lo/W0;->d:Lo/Xf;

    .line 25
    :goto_0
    invoke-virtual {p0}, Lo/W0;->a()V

    .line 28
    return-void
.end method

.method public final h(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lo/W0;->e:Lo/Xf;

    .line 3
    if-nez v0, :cond_0

    .line 5
    new-instance v0, Lo/Xf;

    .line 7
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object v0, p0, Lo/W0;->e:Lo/Xf;

    .line 12
    :cond_0
    iget-object v0, p0, Lo/W0;->e:Lo/Xf;

    .line 14
    iput-object p1, v0, Lo/Xf;->a:Landroid/content/res/ColorStateList;

    .line 16
    const/4 p1, 0x1

    .line 17
    iput-boolean p1, v0, Lo/Xf;->d:Z

    .line 19
    invoke-virtual {p0}, Lo/W0;->a()V

    .line 22
    return-void
.end method

.method public final i(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lo/W0;->e:Lo/Xf;

    .line 3
    if-nez v0, :cond_0

    .line 5
    new-instance v0, Lo/Xf;

    .line 7
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object v0, p0, Lo/W0;->e:Lo/Xf;

    .line 12
    :cond_0
    iget-object v0, p0, Lo/W0;->e:Lo/Xf;

    .line 14
    iput-object p1, v0, Lo/Xf;->b:Landroid/graphics/PorterDuff$Mode;

    .line 16
    const/4 p1, 0x1

    .line 17
    iput-boolean p1, v0, Lo/Xf;->c:Z

    .line 19
    invoke-virtual {p0}, Lo/W0;->a()V

    .line 22
    return-void
.end method
