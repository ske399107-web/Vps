.class public abstract Lo/Fi;
.super Lo/Ki;
.source "SourceFile"


# static fields
.field public static h:Z

.field public static i:Ljava/lang/reflect/Method;

.field public static j:Ljava/lang/Class;

.field public static k:Ljava/lang/reflect/Field;

.field public static l:Ljava/lang/reflect/Field;


# instance fields
.field public final c:Landroid/view/WindowInsets;

.field public d:[Lo/t9;

.field public e:Lo/t9;

.field public f:Lo/Mi;

.field public g:Lo/t9;


# direct methods
.method public constructor <init>(Lo/Mi;Landroid/view/WindowInsets;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lo/Ki;-><init>(Lo/Mi;)V

    .line 4
    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lo/Fi;->e:Lo/t9;

    .line 7
    iput-object p2, p0, Lo/Fi;->c:Landroid/view/WindowInsets;

    .line 9
    return-void
.end method

.method private r(IZ)Lo/t9;
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    .line 1
    sget-object v0, Lo/t9;->e:Lo/t9;

    .line 3
    const/4 v1, 0x1

    .line 4
    :goto_0
    const/16 v2, 0x100

    .line 6
    if-gt v1, v2, :cond_1

    .line 8
    and-int v2, p1, v1

    .line 10
    if-nez v2, :cond_0

    .line 12
    goto :goto_1

    .line 13
    :cond_0
    invoke-virtual {p0, v1, p2}, Lo/Fi;->s(IZ)Lo/t9;

    .line 16
    move-result-object v2

    .line 17
    invoke-static {v0, v2}, Lo/t9;->a(Lo/t9;Lo/t9;)Lo/t9;

    .line 20
    move-result-object v0

    .line 21
    :goto_1
    shl-int/lit8 v1, v1, 0x1

    .line 23
    goto :goto_0

    .line 24
    :cond_1
    return-object v0
.end method

.method private t()Lo/t9;
    .locals 1

    .line 1
    iget-object v0, p0, Lo/Fi;->f:Lo/Mi;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    iget-object v0, v0, Lo/Mi;->a:Lo/Ki;

    .line 7
    invoke-virtual {v0}, Lo/Ki;->h()Lo/t9;

    .line 10
    move-result-object v0

    .line 11
    return-object v0

    .line 12
    :cond_0
    sget-object v0, Lo/t9;->e:Lo/t9;

    .line 14
    return-object v0
.end method

.method private u(Landroid/view/View;)Lo/t9;
    .locals 5

    .line 1
    const-string v0, "WindowInsetsCompat"

    .line 3
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 5
    const/16 v2, 0x1e

    .line 7
    if-ge v1, v2, :cond_5

    .line 9
    sget-boolean v1, Lo/Fi;->h:Z

    .line 11
    if-nez v1, :cond_0

    .line 13
    invoke-static {}, Lo/Fi;->v()V

    .line 16
    :cond_0
    sget-object v1, Lo/Fi;->i:Ljava/lang/reflect/Method;

    .line 18
    const/4 v2, 0x0

    .line 19
    if-eqz v1, :cond_4

    .line 21
    sget-object v3, Lo/Fi;->j:Ljava/lang/Class;

    .line 23
    if-eqz v3, :cond_4

    .line 25
    sget-object v3, Lo/Fi;->k:Ljava/lang/reflect/Field;

    .line 27
    if-nez v3, :cond_1

    .line 29
    goto :goto_1

    .line 30
    :cond_1
    const/4 v3, 0x0

    .line 31
    :try_start_0
    new-array v3, v3, [Ljava/lang/Object;

    .line 33
    invoke-virtual {v1, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    move-result-object p1

    .line 37
    if-nez p1, :cond_2

    .line 39
    const-string p1, "Failed to get visible insets. getViewRootImpl() returned null from the provided view. This means that the view is either not attached or the method has been overridden"

    .line 41
    new-instance v1, Ljava/lang/NullPointerException;

    .line 43
    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    .line 46
    invoke-static {v0, p1, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 49
    return-object v2

    .line 50
    :catch_0
    move-exception p1

    .line 51
    goto :goto_0

    .line 52
    :cond_2
    sget-object v1, Lo/Fi;->l:Ljava/lang/reflect/Field;

    .line 54
    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    move-result-object p1

    .line 58
    sget-object v1, Lo/Fi;->k:Ljava/lang/reflect/Field;

    .line 60
    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    move-result-object p1

    .line 64
    check-cast p1, Landroid/graphics/Rect;

    .line 66
    if-eqz p1, :cond_3

    .line 68
    iget v1, p1, Landroid/graphics/Rect;->left:I

    .line 70
    iget v3, p1, Landroid/graphics/Rect;->top:I

    .line 72
    iget v4, p1, Landroid/graphics/Rect;->right:I

    .line 74
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    .line 76
    invoke-static {v1, v3, v4, p1}, Lo/t9;->b(IIII)Lo/t9;

    .line 79
    move-result-object v2
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    :cond_3
    return-object v2

    .line 81
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 83
    const-string v3, "Failed to get visible insets. (Reflection error). "

    .line 85
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 91
    move-result-object v3

    .line 92
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    move-result-object v1

    .line 99
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 102
    :cond_4
    :goto_1
    return-object v2

    .line 103
    :cond_5
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 105
    const-string v0, "getVisibleInsets() should not be called on API >= 30. Use WindowInsets.isVisible() instead."

    .line 107
    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 110
    throw p1
.end method

.method private static v()V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "PrivateApi"
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    :try_start_0
    const-class v1, Landroid/view/View;

    .line 4
    const-string v2, "getViewRootImpl"

    .line 6
    const/4 v3, 0x0

    .line 7
    new-array v3, v3, [Ljava/lang/Class;

    .line 9
    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 12
    move-result-object v1

    .line 13
    sput-object v1, Lo/Fi;->i:Ljava/lang/reflect/Method;

    .line 15
    const-string v1, "android.view.View$AttachInfo"

    .line 17
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 20
    move-result-object v1

    .line 21
    sput-object v1, Lo/Fi;->j:Ljava/lang/Class;

    .line 23
    const-string v2, "mVisibleInsets"

    .line 25
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 28
    move-result-object v1

    .line 29
    sput-object v1, Lo/Fi;->k:Ljava/lang/reflect/Field;

    .line 31
    const-string v1, "android.view.ViewRootImpl"

    .line 33
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 36
    move-result-object v1

    .line 37
    const-string v2, "mAttachInfo"

    .line 39
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 42
    move-result-object v1

    .line 43
    sput-object v1, Lo/Fi;->l:Ljava/lang/reflect/Field;

    .line 45
    sget-object v1, Lo/Fi;->k:Ljava/lang/reflect/Field;

    .line 47
    invoke-virtual {v1, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 50
    sget-object v1, Lo/Fi;->l:Ljava/lang/reflect/Field;

    .line 52
    invoke-virtual {v1, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    goto :goto_0

    .line 56
    :catch_0
    move-exception v1

    .line 57
    new-instance v2, Ljava/lang/StringBuilder;

    .line 59
    const-string v3, "Failed to get visible insets. (Reflection error). "

    .line 61
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 64
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 67
    move-result-object v3

    .line 68
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    move-result-object v2

    .line 75
    const-string v3, "WindowInsetsCompat"

    .line 77
    invoke-static {v3, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 80
    :goto_0
    sput-boolean v0, Lo/Fi;->h:Z

    .line 82
    return-void
.end method


# virtual methods
.method public d(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lo/Fi;->u(Landroid/view/View;)Lo/t9;

    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 7
    sget-object p1, Lo/t9;->e:Lo/t9;

    .line 9
    :cond_0
    invoke-virtual {p0, p1}, Lo/Fi;->w(Lo/t9;)V

    .line 12
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lo/Ki;->equals(Ljava/lang/Object;)Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 7
    const/4 p1, 0x0

    .line 8
    return p1

    .line 9
    :cond_0
    check-cast p1, Lo/Fi;

    .line 11
    iget-object v0, p0, Lo/Fi;->g:Lo/t9;

    .line 13
    iget-object p1, p1, Lo/Fi;->g:Lo/t9;

    .line 15
    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    move-result p1

    .line 19
    return p1
.end method

.method public f(I)Lo/t9;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0}, Lo/Fi;->r(IZ)Lo/t9;

    .line 5
    move-result-object p1

    .line 6
    return-object p1
.end method

.method public final j()Lo/t9;
    .locals 4

    .line 1
    iget-object v0, p0, Lo/Fi;->e:Lo/t9;

    .line 3
    if-nez v0, :cond_0

    .line 5
    iget-object v0, p0, Lo/Fi;->c:Landroid/view/WindowInsets;

    .line 7
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    .line 10
    move-result v1

    .line 11
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    .line 14
    move-result v2

    .line 15
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    .line 18
    move-result v3

    .line 19
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    .line 22
    move-result v0

    .line 23
    invoke-static {v1, v2, v3, v0}, Lo/t9;->b(IIII)Lo/t9;

    .line 26
    move-result-object v0

    .line 27
    iput-object v0, p0, Lo/Fi;->e:Lo/t9;

    .line 29
    :cond_0
    iget-object v0, p0, Lo/Fi;->e:Lo/t9;

    .line 31
    return-object v0
.end method

.method public l(IIII)Lo/Mi;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Lo/Fi;->c:Landroid/view/WindowInsets;

    .line 4
    invoke-static {v0, v1}, Lo/Mi;->g(Landroid/view/View;Landroid/view/WindowInsets;)Lo/Mi;

    .line 7
    move-result-object v0

    .line 8
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 10
    const/16 v2, 0x1e

    .line 12
    if-lt v1, v2, :cond_0

    .line 14
    new-instance v1, Lo/Di;

    .line 16
    invoke-direct {v1, v0}, Lo/Di;-><init>(Lo/Mi;)V

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/16 v2, 0x1d

    .line 22
    if-lt v1, v2, :cond_1

    .line 24
    new-instance v1, Lo/Ci;

    .line 26
    invoke-direct {v1, v0}, Lo/Ci;-><init>(Lo/Mi;)V

    .line 29
    goto :goto_0

    .line 30
    :cond_1
    new-instance v1, Lo/Ai;

    .line 32
    invoke-direct {v1, v0}, Lo/Ai;-><init>(Lo/Mi;)V

    .line 35
    :goto_0
    invoke-virtual {p0}, Lo/Fi;->j()Lo/t9;

    .line 38
    move-result-object v0

    .line 39
    invoke-static {v0, p1, p2, p3, p4}, Lo/Mi;->e(Lo/t9;IIII)Lo/t9;

    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {v1, v0}, Lo/Ei;->g(Lo/t9;)V

    .line 46
    invoke-virtual {p0}, Lo/Ki;->h()Lo/t9;

    .line 49
    move-result-object v0

    .line 50
    invoke-static {v0, p1, p2, p3, p4}, Lo/Mi;->e(Lo/t9;IIII)Lo/t9;

    .line 53
    move-result-object p1

    .line 54
    invoke-virtual {v1, p1}, Lo/Ei;->e(Lo/t9;)V

    .line 57
    invoke-virtual {v1}, Lo/Ei;->b()Lo/Mi;

    .line 60
    move-result-object p1

    .line 61
    return-object p1
.end method

.method public n()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lo/Fi;->c:Landroid/view/WindowInsets;

    .line 3
    invoke-virtual {v0}, Landroid/view/WindowInsets;->isRound()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public o([Lo/t9;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo/Fi;->d:[Lo/t9;

    .line 3
    return-void
.end method

.method public p(Lo/Mi;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo/Fi;->f:Lo/Mi;

    .line 3
    return-void
.end method

.method public s(IZ)Lo/t9;
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    if-eq p1, v0, :cond_13

    .line 5
    const/4 v0, 0x2

    .line 6
    const/4 v2, 0x0

    .line 7
    if-eq p1, v0, :cond_f

    .line 9
    sget-object p2, Lo/t9;->e:Lo/t9;

    .line 11
    const/16 v0, 0x8

    .line 13
    if-eq p1, v0, :cond_a

    .line 15
    const/16 v0, 0x10

    .line 17
    if-eq p1, v0, :cond_9

    .line 19
    const/16 v0, 0x20

    .line 21
    if-eq p1, v0, :cond_8

    .line 23
    const/16 v0, 0x40

    .line 25
    if-eq p1, v0, :cond_7

    .line 27
    const/16 v0, 0x80

    .line 29
    if-eq p1, v0, :cond_0

    .line 31
    return-object p2

    .line 32
    :cond_0
    iget-object p1, p0, Lo/Fi;->f:Lo/Mi;

    .line 34
    if-eqz p1, :cond_1

    .line 36
    iget-object p1, p1, Lo/Mi;->a:Lo/Ki;

    .line 38
    invoke-virtual {p1}, Lo/Ki;->e()Lo/c6;

    .line 41
    move-result-object p1

    .line 42
    goto :goto_0

    .line 43
    :cond_1
    invoke-virtual {p0}, Lo/Ki;->e()Lo/c6;

    .line 46
    move-result-object p1

    .line 47
    :goto_0
    if-eqz p1, :cond_6

    .line 49
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 51
    const/16 v0, 0x1c

    .line 53
    if-lt p2, v0, :cond_2

    .line 55
    iget-object v2, p1, Lo/c6;->a:Landroid/view/DisplayCutout;

    .line 57
    invoke-static {v2}, Lo/b6;->e(Landroid/view/DisplayCutout;)I

    .line 60
    move-result v2

    .line 61
    goto :goto_1

    .line 62
    :cond_2
    move v2, v1

    .line 63
    :goto_1
    if-lt p2, v0, :cond_3

    .line 65
    iget-object v3, p1, Lo/c6;->a:Landroid/view/DisplayCutout;

    .line 67
    invoke-static {v3}, Lo/b6;->g(Landroid/view/DisplayCutout;)I

    .line 70
    move-result v3

    .line 71
    goto :goto_2

    .line 72
    :cond_3
    move v3, v1

    .line 73
    :goto_2
    if-lt p2, v0, :cond_4

    .line 75
    iget-object v4, p1, Lo/c6;->a:Landroid/view/DisplayCutout;

    .line 77
    invoke-static {v4}, Lo/b6;->f(Landroid/view/DisplayCutout;)I

    .line 80
    move-result v4

    .line 81
    goto :goto_3

    .line 82
    :cond_4
    move v4, v1

    .line 83
    :goto_3
    if-lt p2, v0, :cond_5

    .line 85
    iget-object p1, p1, Lo/c6;->a:Landroid/view/DisplayCutout;

    .line 87
    invoke-static {p1}, Lo/b6;->d(Landroid/view/DisplayCutout;)I

    .line 90
    move-result v1

    .line 91
    :cond_5
    invoke-static {v2, v3, v4, v1}, Lo/t9;->b(IIII)Lo/t9;

    .line 94
    move-result-object p1

    .line 95
    return-object p1

    .line 96
    :cond_6
    return-object p2

    .line 97
    :cond_7
    invoke-virtual {p0}, Lo/Ki;->k()Lo/t9;

    .line 100
    move-result-object p1

    .line 101
    return-object p1

    .line 102
    :cond_8
    invoke-virtual {p0}, Lo/Ki;->g()Lo/t9;

    .line 105
    move-result-object p1

    .line 106
    return-object p1

    .line 107
    :cond_9
    invoke-virtual {p0}, Lo/Ki;->i()Lo/t9;

    .line 110
    move-result-object p1

    .line 111
    return-object p1

    .line 112
    :cond_a
    iget-object p1, p0, Lo/Fi;->d:[Lo/t9;

    .line 114
    if-eqz p1, :cond_b

    .line 116
    invoke-static {v0}, Lo/Ng;->k(I)I

    .line 119
    move-result v0

    .line 120
    aget-object v2, p1, v0

    .line 122
    :cond_b
    if-eqz v2, :cond_c

    .line 124
    return-object v2

    .line 125
    :cond_c
    invoke-virtual {p0}, Lo/Fi;->j()Lo/t9;

    .line 128
    move-result-object p1

    .line 129
    invoke-direct {p0}, Lo/Fi;->t()Lo/t9;

    .line 132
    move-result-object v0

    .line 133
    iget p1, p1, Lo/t9;->d:I

    .line 135
    iget v2, v0, Lo/t9;->d:I

    .line 137
    if-le p1, v2, :cond_d

    .line 139
    invoke-static {v1, v1, v1, p1}, Lo/t9;->b(IIII)Lo/t9;

    .line 142
    move-result-object p1

    .line 143
    return-object p1

    .line 144
    :cond_d
    iget-object p1, p0, Lo/Fi;->g:Lo/t9;

    .line 146
    if-eqz p1, :cond_e

    .line 148
    invoke-virtual {p1, p2}, Lo/t9;->equals(Ljava/lang/Object;)Z

    .line 151
    move-result p1

    .line 152
    if-nez p1, :cond_e

    .line 154
    iget-object p1, p0, Lo/Fi;->g:Lo/t9;

    .line 156
    iget p1, p1, Lo/t9;->d:I

    .line 158
    iget v0, v0, Lo/t9;->d:I

    .line 160
    if-le p1, v0, :cond_e

    .line 162
    invoke-static {v1, v1, v1, p1}, Lo/t9;->b(IIII)Lo/t9;

    .line 165
    move-result-object p1

    .line 166
    return-object p1

    .line 167
    :cond_e
    return-object p2

    .line 168
    :cond_f
    if-eqz p2, :cond_10

    .line 170
    invoke-direct {p0}, Lo/Fi;->t()Lo/t9;

    .line 173
    move-result-object p1

    .line 174
    invoke-virtual {p0}, Lo/Ki;->h()Lo/t9;

    .line 177
    move-result-object p2

    .line 178
    iget v0, p1, Lo/t9;->a:I

    .line 180
    iget v2, p2, Lo/t9;->a:I

    .line 182
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    .line 185
    move-result v0

    .line 186
    iget v2, p1, Lo/t9;->c:I

    .line 188
    iget v3, p2, Lo/t9;->c:I

    .line 190
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    .line 193
    move-result v2

    .line 194
    iget p1, p1, Lo/t9;->d:I

    .line 196
    iget p2, p2, Lo/t9;->d:I

    .line 198
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    .line 201
    move-result p1

    .line 202
    invoke-static {v0, v1, v2, p1}, Lo/t9;->b(IIII)Lo/t9;

    .line 205
    move-result-object p1

    .line 206
    return-object p1

    .line 207
    :cond_10
    invoke-virtual {p0}, Lo/Fi;->j()Lo/t9;

    .line 210
    move-result-object p1

    .line 211
    iget-object p2, p0, Lo/Fi;->f:Lo/Mi;

    .line 213
    if-eqz p2, :cond_11

    .line 215
    iget-object p2, p2, Lo/Mi;->a:Lo/Ki;

    .line 217
    invoke-virtual {p2}, Lo/Ki;->h()Lo/t9;

    .line 220
    move-result-object v2

    .line 221
    :cond_11
    iget p2, p1, Lo/t9;->d:I

    .line 223
    if-eqz v2, :cond_12

    .line 225
    iget v0, v2, Lo/t9;->d:I

    .line 227
    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    .line 230
    move-result p2

    .line 231
    :cond_12
    iget v0, p1, Lo/t9;->a:I

    .line 233
    iget p1, p1, Lo/t9;->c:I

    .line 235
    invoke-static {v0, v1, p1, p2}, Lo/t9;->b(IIII)Lo/t9;

    .line 238
    move-result-object p1

    .line 239
    return-object p1

    .line 240
    :cond_13
    if-eqz p2, :cond_14

    .line 242
    invoke-direct {p0}, Lo/Fi;->t()Lo/t9;

    .line 245
    move-result-object p1

    .line 246
    iget p1, p1, Lo/t9;->b:I

    .line 248
    invoke-virtual {p0}, Lo/Fi;->j()Lo/t9;

    .line 251
    move-result-object p2

    .line 252
    iget p2, p2, Lo/t9;->b:I

    .line 254
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    .line 257
    move-result p1

    .line 258
    invoke-static {v1, p1, v1, v1}, Lo/t9;->b(IIII)Lo/t9;

    .line 261
    move-result-object p1

    .line 262
    return-object p1

    .line 263
    :cond_14
    invoke-virtual {p0}, Lo/Fi;->j()Lo/t9;

    .line 266
    move-result-object p1

    .line 267
    iget p1, p1, Lo/t9;->b:I

    .line 269
    invoke-static {v1, p1, v1, v1}, Lo/t9;->b(IIII)Lo/t9;

    .line 272
    move-result-object p1

    .line 273
    return-object p1
.end method

.method public w(Lo/t9;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo/Fi;->g:Lo/t9;

    .line 3
    return-void
.end method
