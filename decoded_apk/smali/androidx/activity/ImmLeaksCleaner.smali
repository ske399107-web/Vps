.class final Landroidx/activity/ImmLeaksCleaner;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo/P9;


# static fields
.field public static a:I


# virtual methods
.method public final b(Lo/R9;Lo/L9;)V
    .locals 1

    .line 1
    sget-object p1, Lo/L9;->ON_DESTROY:Lo/L9;

    .line 3
    if-eq p2, p1, :cond_0

    .line 5
    return-void

    .line 6
    :cond_0
    sget p1, Landroidx/activity/ImmLeaksCleaner;->a:I

    .line 8
    const/4 p2, 0x1

    .line 9
    if-nez p1, :cond_1

    .line 11
    const-class p1, Landroid/view/inputmethod/InputMethodManager;

    .line 13
    const/4 v0, 0x2

    .line 14
    :try_start_0
    sput v0, Landroidx/activity/ImmLeaksCleaner;->a:I

    .line 16
    const-string v0, "mServedView"

    .line 18
    invoke-virtual {p1, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v0, p2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 25
    const-string v0, "mNextServedView"

    .line 27
    invoke-virtual {p1, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {v0, p2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 34
    const-string v0, "mH"

    .line 36
    invoke-virtual {p1, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 39
    move-result-object p1

    .line 40
    invoke-virtual {p1, p2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 43
    sput p2, Landroidx/activity/ImmLeaksCleaner;->a:I
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    :catch_0
    :cond_1
    sget p1, Landroidx/activity/ImmLeaksCleaner;->a:I

    .line 47
    if-eq p1, p2, :cond_2

    .line 49
    return-void

    .line 50
    :cond_2
    const/4 p1, 0x0

    .line 51
    throw p1
.end method
