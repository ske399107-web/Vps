.class public final Lo/Ai;
.super Lo/Ei;
.source "SourceFile"


# static fields
.field public static e:Ljava/lang/reflect/Field;

.field public static f:Z

.field public static g:Ljava/lang/reflect/Constructor;

.field public static h:Z


# instance fields
.field public c:Landroid/view/WindowInsets;

.field public d:Lo/t9;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lo/Ei;-><init>()V

    .line 2
    invoke-static {}, Lo/Ai;->i()Landroid/view/WindowInsets;

    move-result-object v0

    iput-object v0, p0, Lo/Ai;->c:Landroid/view/WindowInsets;

    return-void
.end method

.method public constructor <init>(Lo/Mi;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lo/Ei;-><init>(Lo/Mi;)V

    .line 4
    invoke-virtual {p1}, Lo/Mi;->f()Landroid/view/WindowInsets;

    move-result-object p1

    iput-object p1, p0, Lo/Ai;->c:Landroid/view/WindowInsets;

    return-void
.end method

.method private static i()Landroid/view/WindowInsets;
    .locals 6

    .line 1
    sget-boolean v0, Lo/Ai;->f:Z

    .line 3
    const/4 v1, 0x1

    .line 4
    const-class v2, Landroid/view/WindowInsets;

    .line 6
    const-string v3, "WindowInsetsCompat"

    .line 8
    if-nez v0, :cond_0

    .line 10
    :try_start_0
    const-string v0, "CONSUMED"

    .line 12
    invoke-virtual {v2, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 15
    move-result-object v0

    .line 16
    sput-object v0, Lo/Ai;->e:Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    goto :goto_0

    .line 19
    :catch_0
    move-exception v0

    .line 20
    const-string v4, "Could not retrieve WindowInsets.CONSUMED field"

    .line 22
    invoke-static {v3, v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 25
    :goto_0
    sput-boolean v1, Lo/Ai;->f:Z

    .line 27
    :cond_0
    sget-object v0, Lo/Ai;->e:Ljava/lang/reflect/Field;

    .line 29
    const/4 v4, 0x0

    .line 30
    if-eqz v0, :cond_1

    .line 32
    :try_start_1
    invoke-virtual {v0, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    move-result-object v0

    .line 36
    check-cast v0, Landroid/view/WindowInsets;

    .line 38
    if-eqz v0, :cond_1

    .line 40
    new-instance v5, Landroid/view/WindowInsets;

    .line 42
    invoke-direct {v5, v0}, Landroid/view/WindowInsets;-><init>(Landroid/view/WindowInsets;)V
    :try_end_1
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_1 .. :try_end_1} :catch_1

    .line 45
    return-object v5

    .line 46
    :catch_1
    move-exception v0

    .line 47
    const-string v5, "Could not get value from WindowInsets.CONSUMED field"

    .line 49
    invoke-static {v3, v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 52
    :cond_1
    sget-boolean v0, Lo/Ai;->h:Z

    .line 54
    if-nez v0, :cond_2

    .line 56
    :try_start_2
    const-class v0, Landroid/graphics/Rect;

    .line 58
    filled-new-array {v0}, [Ljava/lang/Class;

    .line 61
    move-result-object v0

    .line 62
    invoke-virtual {v2, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 65
    move-result-object v0

    .line 66
    sput-object v0, Lo/Ai;->g:Ljava/lang/reflect/Constructor;
    :try_end_2
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_2 .. :try_end_2} :catch_2

    .line 68
    goto :goto_1

    .line 69
    :catch_2
    move-exception v0

    .line 70
    const-string v2, "Could not retrieve WindowInsets(Rect) constructor"

    .line 72
    invoke-static {v3, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 75
    :goto_1
    sput-boolean v1, Lo/Ai;->h:Z

    .line 77
    :cond_2
    sget-object v0, Lo/Ai;->g:Ljava/lang/reflect/Constructor;

    .line 79
    if-eqz v0, :cond_3

    .line 81
    :try_start_3
    new-instance v1, Landroid/graphics/Rect;

    .line 83
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 86
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 89
    move-result-object v1

    .line 90
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    move-result-object v0

    .line 94
    check-cast v0, Landroid/view/WindowInsets;
    :try_end_3
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_3 .. :try_end_3} :catch_3

    .line 96
    return-object v0

    .line 97
    :catch_3
    move-exception v0

    .line 98
    const-string v1, "Could not invoke WindowInsets(Rect) constructor"

    .line 100
    invoke-static {v3, v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 103
    :cond_3
    return-object v4
.end method


# virtual methods
.method public b()Lo/Mi;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lo/Ei;->a()V

    .line 4
    iget-object v0, p0, Lo/Ai;->c:Landroid/view/WindowInsets;

    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-static {v1, v0}, Lo/Mi;->g(Landroid/view/View;Landroid/view/WindowInsets;)Lo/Mi;

    .line 10
    move-result-object v0

    .line 11
    iget-object v1, p0, Lo/Ei;->b:[Lo/t9;

    .line 13
    iget-object v2, v0, Lo/Mi;->a:Lo/Ki;

    .line 15
    invoke-virtual {v2, v1}, Lo/Ki;->o([Lo/t9;)V

    .line 18
    iget-object v1, p0, Lo/Ai;->d:Lo/t9;

    .line 20
    invoke-virtual {v2, v1}, Lo/Ki;->q(Lo/t9;)V

    .line 23
    return-object v0
.end method

.method public e(Lo/t9;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo/Ai;->d:Lo/t9;

    .line 3
    return-void
.end method

.method public g(Lo/t9;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lo/Ai;->c:Landroid/view/WindowInsets;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    iget v1, p1, Lo/t9;->a:I

    .line 7
    iget v2, p1, Lo/t9;->c:I

    .line 9
    iget v3, p1, Lo/t9;->d:I

    .line 11
    iget p1, p1, Lo/t9;->b:I

    .line 13
    invoke-virtual {v0, v1, p1, v2, v3}, Landroid/view/WindowInsets;->replaceSystemWindowInsets(IIII)Landroid/view/WindowInsets;

    .line 16
    move-result-object p1

    .line 17
    iput-object p1, p0, Lo/Ai;->c:Landroid/view/WindowInsets;

    .line 19
    :cond_0
    return-void
.end method
