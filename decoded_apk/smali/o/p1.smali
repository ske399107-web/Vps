.class public final Lo/p1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/Window$Callback;


# instance fields
.field public final a:Landroid/view/Window$Callback;

.field public b:Z

.field public c:Z

.field public d:Z

.field public final synthetic e:Lo/v1;


# direct methods
.method public constructor <init>(Lo/v1;Landroid/view/Window$Callback;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lo/p1;->e:Lo/v1;

    .line 6
    if-eqz p2, :cond_0

    .line 8
    iput-object p2, p0, Lo/p1;->a:Landroid/view/Window$Callback;

    .line 10
    return-void

    .line 11
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 13
    const-string p2, "Window callback may not be null"

    .line 15
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 18
    throw p1
.end method


# virtual methods
.method public final a(Landroid/view/Window$Callback;)V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    :try_start_0
    iput-boolean v0, p0, Lo/p1;->b:Z

    .line 5
    invoke-interface {p1}, Landroid/view/Window$Callback;->onContentChanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    iput-boolean v1, p0, Lo/p1;->b:Z

    .line 10
    return-void

    .line 11
    :catchall_0
    move-exception p1

    .line 12
    iput-boolean v1, p0, Lo/p1;->b:Z

    .line 14
    throw p1
.end method

.method public final b(ILandroid/view/Menu;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lo/p1;->a:Landroid/view/Window$Callback;

    .line 3
    invoke-interface {v0, p1, p2}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public final c(ILandroid/view/Menu;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lo/p1;->a:Landroid/view/Window$Callback;

    .line 3
    invoke-interface {v0, p1, p2}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    .line 6
    return-void
.end method

.method public final d(Ljava/util/List;Landroid/view/Menu;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lo/p1;->a:Landroid/view/Window$Callback;

    .line 3
    invoke-static {v0, p1, p2, p3}, Lo/oi;->a(Landroid/view/Window$Callback;Ljava/util/List;Landroid/view/Menu;I)V

    .line 6
    return-void
.end method

.method public final dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lo/p1;->a:Landroid/view/Window$Callback;

    .line 3
    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public final dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lo/p1;->c:Z

    .line 3
    iget-object v1, p0, Lo/p1;->a:Landroid/view/Window$Callback;

    .line 5
    if-eqz v0, :cond_0

    .line 7
    invoke-interface {v1, p1}, Landroid/view/Window$Callback;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 10
    move-result p1

    .line 11
    return p1

    .line 12
    :cond_0
    iget-object v0, p0, Lo/p1;->e:Lo/v1;

    .line 14
    invoke-virtual {v0, p1}, Lo/v1;->s(Landroid/view/KeyEvent;)Z

    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_2

    .line 20
    invoke-interface {v1, p1}, Landroid/view/Window$Callback;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 23
    move-result p1

    .line 24
    if-eqz p1, :cond_1

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    const/4 p1, 0x0

    .line 28
    goto :goto_1

    .line 29
    :cond_2
    :goto_0
    const/4 p1, 0x1

    .line 30
    :goto_1
    return p1
.end method

.method public final dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lo/p1;->a:Landroid/view/Window$Callback;

    .line 3
    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-nez v0, :cond_8

    .line 10
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 13
    move-result v0

    .line 14
    iget-object v2, p0, Lo/p1;->e:Lo/v1;

    .line 16
    invoke-virtual {v2}, Lo/v1;->z()V

    .line 19
    iget-object v3, v2, Lo/v1;->o:Lo/si;

    .line 21
    const/4 v4, 0x0

    .line 22
    if-eqz v3, :cond_4

    .line 24
    iget-object v3, v3, Lo/si;->c0:Lo/ri;

    .line 26
    if-nez v3, :cond_1

    .line 28
    :cond_0
    move v0, v4

    .line 29
    goto :goto_1

    .line 30
    :cond_1
    iget-object v3, v3, Lo/ri;->d:Lo/kb;

    .line 32
    if-eqz v3, :cond_0

    .line 34
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDeviceId()I

    .line 37
    move-result v5

    .line 38
    invoke-static {v5}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    .line 41
    move-result-object v5

    .line 42
    invoke-virtual {v5}, Landroid/view/KeyCharacterMap;->getKeyboardType()I

    .line 45
    move-result v5

    .line 46
    if-eq v5, v1, :cond_2

    .line 48
    move v5, v1

    .line 49
    goto :goto_0

    .line 50
    :cond_2
    move v5, v4

    .line 51
    :goto_0
    invoke-virtual {v3, v5}, Lo/kb;->setQwertyMode(Z)V

    .line 54
    invoke-virtual {v3, v0, p1, v4}, Lo/kb;->performShortcut(ILandroid/view/KeyEvent;I)Z

    .line 57
    move-result v0

    .line 58
    :goto_1
    if-eqz v0, :cond_4

    .line 60
    :cond_3
    :goto_2
    move p1, v1

    .line 61
    goto :goto_3

    .line 62
    :cond_4
    iget-object v0, v2, Lo/v1;->M:Lo/u1;

    .line 64
    if-eqz v0, :cond_5

    .line 66
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 69
    move-result v3

    .line 70
    invoke-virtual {v2, v0, v3, p1}, Lo/v1;->E(Lo/u1;ILandroid/view/KeyEvent;)Z

    .line 73
    move-result v0

    .line 74
    if-eqz v0, :cond_5

    .line 76
    iget-object p1, v2, Lo/v1;->M:Lo/u1;

    .line 78
    if-eqz p1, :cond_3

    .line 80
    iput-boolean v1, p1, Lo/u1;->l:Z

    .line 82
    goto :goto_2

    .line 83
    :cond_5
    iget-object v0, v2, Lo/v1;->M:Lo/u1;

    .line 85
    if-nez v0, :cond_6

    .line 87
    invoke-virtual {v2, v4}, Lo/v1;->y(I)Lo/u1;

    .line 90
    move-result-object v0

    .line 91
    invoke-virtual {v2, v0, p1}, Lo/v1;->F(Lo/u1;Landroid/view/KeyEvent;)Z

    .line 94
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 97
    move-result v3

    .line 98
    invoke-virtual {v2, v0, v3, p1}, Lo/v1;->E(Lo/u1;ILandroid/view/KeyEvent;)Z

    .line 101
    move-result p1

    .line 102
    iput-boolean v4, v0, Lo/u1;->k:Z

    .line 104
    if-eqz p1, :cond_6

    .line 106
    goto :goto_2

    .line 107
    :cond_6
    move p1, v4

    .line 108
    :goto_3
    if-eqz p1, :cond_7

    .line 110
    goto :goto_4

    .line 111
    :cond_7
    move v1, v4

    .line 112
    :cond_8
    :goto_4
    return v1
.end method

.method public final dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lo/p1;->a:Landroid/view/Window$Callback;

    .line 3
    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public final dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lo/p1;->a:Landroid/view/Window$Callback;

    .line 3
    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public final dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lo/p1;->a:Landroid/view/Window$Callback;

    .line 3
    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public final onActionModeFinished(Landroid/view/ActionMode;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lo/p1;->a:Landroid/view/Window$Callback;

    .line 3
    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onActionModeFinished(Landroid/view/ActionMode;)V

    .line 6
    return-void
.end method

.method public final onActionModeStarted(Landroid/view/ActionMode;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lo/p1;->a:Landroid/view/Window$Callback;

    .line 3
    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onActionModeStarted(Landroid/view/ActionMode;)V

    .line 6
    return-void
.end method

.method public final onAttachedToWindow()V
    .locals 1

    .line 1
    iget-object v0, p0, Lo/p1;->a:Landroid/view/Window$Callback;

    .line 3
    invoke-interface {v0}, Landroid/view/Window$Callback;->onAttachedToWindow()V

    .line 6
    return-void
.end method

.method public final onContentChanged()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lo/p1;->b:Z

    .line 3
    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lo/p1;->a:Landroid/view/Window$Callback;

    .line 7
    invoke-interface {v0}, Landroid/view/Window$Callback;->onContentChanged()V

    .line 10
    :cond_0
    return-void
.end method

.method public final onCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 3
    instance-of v0, p2, Lo/kb;

    .line 5
    if-nez v0, :cond_0

    .line 7
    const/4 p1, 0x0

    .line 8
    return p1

    .line 9
    :cond_0
    iget-object v0, p0, Lo/p1;->a:Landroid/view/Window$Callback;

    .line 11
    invoke-interface {v0, p1, p2}, Landroid/view/Window$Callback;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    .line 14
    move-result p1

    .line 15
    return p1
.end method

.method public final onCreatePanelView(I)Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lo/p1;->a:Landroid/view/Window$Callback;

    .line 3
    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onCreatePanelView(I)Landroid/view/View;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public final onDetachedFromWindow()V
    .locals 1

    .line 1
    iget-object v0, p0, Lo/p1;->a:Landroid/view/Window$Callback;

    .line 3
    invoke-interface {v0}, Landroid/view/Window$Callback;->onDetachedFromWindow()V

    .line 6
    return-void
.end method

.method public final onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lo/p1;->a:Landroid/view/Window$Callback;

    .line 3
    invoke-interface {v0, p1, p2}, Landroid/view/Window$Callback;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public final onMenuOpened(ILandroid/view/Menu;)Z
    .locals 2

    .line 1
    invoke-virtual {p0, p1, p2}, Lo/p1;->b(ILandroid/view/Menu;)Z

    .line 4
    const/16 p2, 0x6c

    .line 6
    const/4 v0, 0x1

    .line 7
    iget-object v1, p0, Lo/p1;->e:Lo/v1;

    .line 9
    if-ne p1, p2, :cond_2

    .line 11
    invoke-virtual {v1}, Lo/v1;->z()V

    .line 14
    iget-object p1, v1, Lo/v1;->o:Lo/si;

    .line 16
    if-eqz p1, :cond_3

    .line 18
    iget-boolean p2, p1, Lo/si;->f0:Z

    .line 20
    if-ne v0, p2, :cond_0

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    iput-boolean v0, p1, Lo/si;->f0:Z

    .line 25
    iget-object p1, p1, Lo/si;->g0:Ljava/util/ArrayList;

    .line 27
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 30
    move-result p2

    .line 31
    if-gtz p2, :cond_1

    .line 33
    goto :goto_0

    .line 34
    :cond_1
    const/4 p2, 0x0

    .line 35
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 38
    move-result-object p1

    .line 39
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    new-instance p1, Ljava/lang/ClassCastException;

    .line 44
    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    .line 47
    throw p1

    .line 48
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    :cond_3
    :goto_0
    return v0
.end method

.method public final onPanelClosed(ILandroid/view/Menu;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lo/p1;->d:Z

    .line 3
    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lo/p1;->a:Landroid/view/Window$Callback;

    .line 7
    invoke-interface {v0, p1, p2}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    .line 10
    return-void

    .line 11
    :cond_0
    invoke-virtual {p0, p1, p2}, Lo/p1;->c(ILandroid/view/Menu;)V

    .line 14
    const/16 p2, 0x6c

    .line 16
    const/4 v0, 0x0

    .line 17
    iget-object v1, p0, Lo/p1;->e:Lo/v1;

    .line 19
    if-ne p1, p2, :cond_3

    .line 21
    invoke-virtual {v1}, Lo/v1;->z()V

    .line 24
    iget-object p1, v1, Lo/v1;->o:Lo/si;

    .line 26
    if-eqz p1, :cond_5

    .line 28
    iget-boolean p2, p1, Lo/si;->f0:Z

    .line 30
    if-nez p2, :cond_1

    .line 32
    goto :goto_0

    .line 33
    :cond_1
    iput-boolean v0, p1, Lo/si;->f0:Z

    .line 35
    iget-object p1, p1, Lo/si;->g0:Ljava/util/ArrayList;

    .line 37
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 40
    move-result p2

    .line 41
    if-gtz p2, :cond_2

    .line 43
    goto :goto_0

    .line 44
    :cond_2
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 47
    move-result-object p1

    .line 48
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    new-instance p1, Ljava/lang/ClassCastException;

    .line 53
    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    .line 56
    throw p1

    .line 57
    :cond_3
    if-nez p1, :cond_4

    .line 59
    invoke-virtual {v1, p1}, Lo/v1;->y(I)Lo/u1;

    .line 62
    move-result-object p1

    .line 63
    iget-boolean p2, p1, Lo/u1;->m:Z

    .line 65
    if-eqz p2, :cond_5

    .line 67
    invoke-virtual {v1, p1, v0}, Lo/v1;->q(Lo/u1;Z)V

    .line 70
    goto :goto_0

    .line 71
    :cond_4
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 74
    :cond_5
    :goto_0
    return-void
.end method

.method public final onPointerCaptureChanged(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lo/p1;->a:Landroid/view/Window$Callback;

    .line 3
    invoke-static {v0, p1}, Lo/pi;->a(Landroid/view/Window$Callback;Z)V

    .line 6
    return-void
.end method

.method public final onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 3

    .line 1
    instance-of v0, p3, Lo/kb;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    move-object v0, p3

    .line 6
    check-cast v0, Lo/kb;

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    const/4 v1, 0x0

    .line 11
    if-nez p1, :cond_1

    .line 13
    if-nez v0, :cond_1

    .line 15
    return v1

    .line 16
    :cond_1
    if-eqz v0, :cond_2

    .line 18
    const/4 v2, 0x1

    .line 19
    iput-boolean v2, v0, Lo/kb;->x:Z

    .line 21
    :cond_2
    iget-object v2, p0, Lo/p1;->a:Landroid/view/Window$Callback;

    .line 23
    invoke-interface {v2, p1, p2, p3}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    .line 26
    move-result p1

    .line 27
    if-eqz v0, :cond_3

    .line 29
    iput-boolean v1, v0, Lo/kb;->x:Z

    .line 31
    :cond_3
    return p1
.end method

.method public final onProvideKeyboardShortcuts(Ljava/util/List;Landroid/view/Menu;I)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Lo/p1;->e:Lo/v1;

    .line 4
    invoke-virtual {v1, v0}, Lo/v1;->y(I)Lo/u1;

    .line 7
    move-result-object v0

    .line 8
    iget-object v0, v0, Lo/u1;->h:Lo/kb;

    .line 10
    if-eqz v0, :cond_0

    .line 12
    invoke-virtual {p0, p1, v0, p3}, Lo/p1;->d(Ljava/util/List;Landroid/view/Menu;I)V

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lo/p1;->d(Ljava/util/List;Landroid/view/Menu;I)V

    .line 19
    :goto_0
    return-void
.end method

.method public final onSearchRequested()Z
    .locals 1

    .line 2
    iget-object v0, p0, Lo/p1;->a:Landroid/view/Window$Callback;

    invoke-interface {v0}, Landroid/view/Window$Callback;->onSearchRequested()Z

    move-result v0

    return v0
.end method

.method public final onSearchRequested(Landroid/view/SearchEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lo/p1;->a:Landroid/view/Window$Callback;

    invoke-static {v0, p1}, Lo/ni;->a(Landroid/view/Window$Callback;Landroid/view/SearchEvent;)Z

    move-result p1

    return p1
.end method

.method public final onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lo/p1;->a:Landroid/view/Window$Callback;

    .line 3
    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    .line 6
    return-void
.end method

.method public final onWindowFocusChanged(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lo/p1;->a:Landroid/view/Window$Callback;

    .line 3
    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onWindowFocusChanged(Z)V

    .line 6
    return-void
.end method

.method public final onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 0

    .line 97
    const/4 p1, 0x0

    return-object p1
.end method

.method public final onWindowStartingActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    .locals 9

    const/4 v0, 0x2

    const/4 v1, 0x1

    .line 1
    iget-object v2, p0, Lo/p1;->e:Lo/v1;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p2, :cond_0

    .line 2
    iget-object v0, p0, Lo/p1;->a:Landroid/view/Window$Callback;

    invoke-static {v0, p1, p2}, Lo/ni;->b(Landroid/view/Window$Callback;Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    new-instance p2, Lo/H5;

    iget-object v3, v2, Lo/v1;->k:Landroid/content/Context;

    invoke-direct {p2, v3, p1}, Lo/H5;-><init>(Landroid/content/Context;Landroid/view/ActionMode$Callback;)V

    .line 4
    iget-object p1, v2, Lo/v1;->u:Lo/h0;

    if-eqz p1, :cond_1

    .line 5
    invoke-virtual {p1}, Lo/h0;->a()V

    .line 6
    :cond_1
    new-instance p1, Lo/H1;

    invoke-direct {p1, v2, v0, p2}, Lo/H1;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 7
    invoke-virtual {v2}, Lo/v1;->z()V

    .line 8
    iget-object v3, v2, Lo/v1;->o:Lo/si;

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v3, :cond_4

    .line 9
    iget-object v6, v3, Lo/si;->c0:Lo/ri;

    if-eqz v6, :cond_2

    .line 10
    invoke-virtual {v6}, Lo/ri;->a()V

    .line 11
    :cond_2
    iget-object v6, v3, Lo/si;->W:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    invoke-virtual {v6, v4}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setHideOnContentScrollEnabled(Z)V

    .line 12
    iget-object v6, v3, Lo/si;->Z:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v6}, Landroidx/appcompat/widget/ActionBarContextView;->e()V

    .line 13
    new-instance v6, Lo/ri;

    iget-object v7, v3, Lo/si;->Z:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v3, v7, p1}, Lo/ri;-><init>(Lo/si;Landroid/content/Context;Lo/H1;)V

    .line 14
    iget-object v7, v6, Lo/ri;->d:Lo/kb;

    invoke-virtual {v7}, Lo/kb;->w()V

    .line 15
    :try_start_0
    iget-object v8, v6, Lo/ri;->e:Lo/H1;

    .line 16
    iget-object v8, v8, Lo/H1;->b:Ljava/lang/Object;

    check-cast v8, Lo/H5;

    invoke-virtual {v8, v6, v7}, Lo/H5;->l(Lo/h0;Lo/kb;)Z

    move-result v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    invoke-virtual {v7}, Lo/kb;->v()V

    if-eqz v8, :cond_3

    .line 18
    iput-object v6, v3, Lo/si;->c0:Lo/ri;

    .line 19
    invoke-virtual {v6}, Lo/ri;->g()V

    .line 20
    iget-object v7, v3, Lo/si;->Z:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v7, v6}, Landroidx/appcompat/widget/ActionBarContextView;->c(Lo/h0;)V

    .line 21
    invoke-virtual {v3, v1}, Lo/si;->q0(Z)V

    goto :goto_0

    :cond_3
    move-object v6, v5

    .line 22
    :goto_0
    iput-object v6, v2, Lo/v1;->u:Lo/h0;

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 23
    invoke-virtual {v7}, Lo/kb;->v()V

    .line 24
    throw p1

    .line 25
    :cond_4
    :goto_1
    iget-object v3, v2, Lo/v1;->u:Lo/h0;

    if-nez v3, :cond_12

    .line 26
    iget-object v3, v2, Lo/v1;->y:Lo/Ph;

    if-eqz v3, :cond_5

    .line 27
    invoke-virtual {v3}, Lo/Ph;->b()V

    .line 28
    :cond_5
    iget-object v3, v2, Lo/v1;->u:Lo/h0;

    if-eqz v3, :cond_6

    .line 29
    invoke-virtual {v3}, Lo/h0;->a()V

    .line 30
    :cond_6
    iget-object v3, v2, Lo/v1;->v:Landroidx/appcompat/widget/ActionBarContextView;

    if-nez v3, :cond_b

    .line 31
    iget-boolean v3, v2, Lo/v1;->I:Z

    iget-object v6, v2, Lo/v1;->k:Landroid/content/Context;

    if-eqz v3, :cond_8

    .line 32
    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    .line 33
    invoke-virtual {v6}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v7

    const v8, 0x7f03000b

    .line 34
    invoke-virtual {v7, v8, v3, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 35
    iget v8, v3, Landroid/util/TypedValue;->resourceId:I

    if-eqz v8, :cond_7

    .line 36
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v8

    .line 37
    invoke-virtual {v8, v7}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 38
    iget v7, v3, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v8, v7, v1}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 39
    new-instance v7, Lo/V4;

    invoke-direct {v7, v6, v4}, Lo/V4;-><init>(Landroid/content/Context;I)V

    .line 40
    invoke-virtual {v7}, Lo/V4;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    move-object v6, v7

    .line 41
    :cond_7
    new-instance v7, Landroidx/appcompat/widget/ActionBarContextView;

    .line 42
    invoke-direct {v7, v6, v5}, Landroidx/appcompat/widget/ActionBarContextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    iput-object v7, v2, Lo/v1;->v:Landroidx/appcompat/widget/ActionBarContextView;

    .line 44
    new-instance v7, Landroid/widget/PopupWindow;

    const v8, 0x7f03001a

    invoke-direct {v7, v6, v5, v8}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v7, v2, Lo/v1;->w:Landroid/widget/PopupWindow;

    .line 45
    invoke-virtual {v7, v0}, Landroid/widget/PopupWindow;->setWindowLayoutType(I)V

    .line 46
    iget-object v0, v2, Lo/v1;->w:Landroid/widget/PopupWindow;

    iget-object v7, v2, Lo/v1;->v:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0, v7}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 47
    iget-object v0, v2, Lo/v1;->w:Landroid/widget/PopupWindow;

    const/4 v7, -0x1

    invoke-virtual {v0, v7}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 48
    invoke-virtual {v6}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const v7, 0x7f030005

    invoke-virtual {v0, v7, v3, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 49
    iget v0, v3, Landroid/util/TypedValue;->data:I

    .line 50
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 51
    invoke-static {v0, v3}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v0

    .line 52
    iget-object v3, v2, Lo/v1;->v:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v3, v0}, Landroidx/appcompat/widget/ActionBarContextView;->setContentHeight(I)V

    .line 53
    iget-object v0, v2, Lo/v1;->w:Landroid/widget/PopupWindow;

    const/4 v3, -0x2

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 54
    new-instance v0, Lo/i1;

    invoke-direct {v0, v2, v1}, Lo/i1;-><init>(Lo/v1;I)V

    iput-object v0, v2, Lo/v1;->x:Lo/i1;

    goto :goto_4

    .line 55
    :cond_8
    iget-object v0, v2, Lo/v1;->A:Landroid/view/ViewGroup;

    const v3, 0x7f080042

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/ViewStubCompat;

    if-eqz v0, :cond_b

    .line 56
    invoke-virtual {v2}, Lo/v1;->z()V

    .line 57
    iget-object v3, v2, Lo/v1;->o:Lo/si;

    if-eqz v3, :cond_9

    .line 58
    invoke-virtual {v3}, Lo/si;->r0()Landroid/content/Context;

    move-result-object v3

    goto :goto_2

    :cond_9
    move-object v3, v5

    :goto_2
    if-nez v3, :cond_a

    goto :goto_3

    :cond_a
    move-object v6, v3

    .line 59
    :goto_3
    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroidx/appcompat/widget/ViewStubCompat;->setLayoutInflater(Landroid/view/LayoutInflater;)V

    .line 60
    invoke-virtual {v0}, Landroidx/appcompat/widget/ViewStubCompat;->a()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/ActionBarContextView;

    iput-object v0, v2, Lo/v1;->v:Landroidx/appcompat/widget/ActionBarContextView;

    .line 61
    :cond_b
    :goto_4
    iget-object v0, v2, Lo/v1;->v:Landroidx/appcompat/widget/ActionBarContextView;

    if-eqz v0, :cond_11

    .line 62
    iget-object v0, v2, Lo/v1;->y:Lo/Ph;

    if-eqz v0, :cond_c

    .line 63
    invoke-virtual {v0}, Lo/Ph;->b()V

    .line 64
    :cond_c
    iget-object v0, v2, Lo/v1;->v:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionBarContextView;->e()V

    .line 65
    new-instance v0, Lo/gf;

    iget-object v3, v2, Lo/v1;->v:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v6, v2, Lo/v1;->v:Landroidx/appcompat/widget/ActionBarContextView;

    .line 66
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object v3, v0, Lo/gf;->c:Landroid/content/Context;

    .line 68
    iput-object v6, v0, Lo/gf;->d:Landroidx/appcompat/widget/ActionBarContextView;

    .line 69
    iput-object p1, v0, Lo/gf;->e:Lo/H1;

    .line 70
    new-instance v3, Lo/kb;

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v3, v6}, Lo/kb;-><init>(Landroid/content/Context;)V

    .line 71
    iput v1, v3, Lo/kb;->l:I

    .line 72
    iput-object v3, v0, Lo/gf;->h:Lo/kb;

    .line 73
    iput-object v0, v3, Lo/kb;->e:Lo/ib;

    .line 74
    iget-object p1, p1, Lo/H1;->b:Ljava/lang/Object;

    check-cast p1, Lo/H5;

    .line 75
    invoke-virtual {p1, v0, v3}, Lo/H5;->l(Lo/h0;Lo/kb;)Z

    move-result p1

    if-eqz p1, :cond_10

    .line 76
    invoke-virtual {v0}, Lo/gf;->g()V

    .line 77
    iget-object p1, v2, Lo/v1;->v:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContextView;->c(Lo/h0;)V

    .line 78
    iput-object v0, v2, Lo/v1;->u:Lo/h0;

    .line 79
    iget-boolean p1, v2, Lo/v1;->z:Z

    if-eqz p1, :cond_d

    iget-object p1, v2, Lo/v1;->A:Landroid/view/ViewGroup;

    if-eqz p1, :cond_d

    invoke-virtual {p1}, Landroid/view/View;->isLaidOut()Z

    move-result p1

    if-eqz p1, :cond_d

    move p1, v1

    goto :goto_5

    :cond_d
    move p1, v4

    :goto_5
    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p1, :cond_e

    .line 80
    iget-object p1, v2, Lo/v1;->v:Landroidx/appcompat/widget/ActionBarContextView;

    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Landroid/view/View;->setAlpha(F)V

    .line 81
    iget-object p1, v2, Lo/v1;->v:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-static {p1}, Lo/Dh;->a(Landroid/view/View;)Lo/Ph;

    move-result-object p1

    invoke-virtual {p1, v0}, Lo/Ph;->a(F)V

    iput-object p1, v2, Lo/v1;->y:Lo/Ph;

    .line 82
    new-instance v0, Lo/k1;

    invoke-direct {v0, v1, v2}, Lo/k1;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, v0}, Lo/Ph;->d(Lo/Rh;)V

    goto :goto_6

    .line 83
    :cond_e
    iget-object p1, v2, Lo/v1;->v:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 84
    iget-object p1, v2, Lo/v1;->v:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1, v4}, Landroidx/appcompat/widget/ActionBarContextView;->setVisibility(I)V

    .line 85
    iget-object p1, v2, Lo/v1;->v:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    instance-of p1, p1, Landroid/view/View;

    if-eqz p1, :cond_f

    .line 86
    iget-object p1, v2, Lo/v1;->v:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    sget-object v0, Lo/Dh;->a:Ljava/util/WeakHashMap;

    .line 87
    invoke-static {p1}, Lo/th;->c(Landroid/view/View;)V

    .line 88
    :cond_f
    :goto_6
    iget-object p1, v2, Lo/v1;->w:Landroid/widget/PopupWindow;

    if-eqz p1, :cond_11

    .line 89
    iget-object p1, v2, Lo/v1;->l:Landroid/view/Window;

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    iget-object v0, v2, Lo/v1;->x:Lo/i1;

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_7

    .line 90
    :cond_10
    iput-object v5, v2, Lo/v1;->u:Lo/h0;

    .line 91
    :cond_11
    :goto_7
    invoke-virtual {v2}, Lo/v1;->H()V

    .line 92
    iget-object p1, v2, Lo/v1;->u:Lo/h0;

    .line 93
    iput-object p1, v2, Lo/v1;->u:Lo/h0;

    .line 94
    :cond_12
    invoke-virtual {v2}, Lo/v1;->H()V

    .line 95
    iget-object p1, v2, Lo/v1;->u:Lo/h0;

    if-eqz p1, :cond_13

    .line 96
    invoke-virtual {p2, p1}, Lo/H5;->e(Lo/h0;)Lo/wf;

    move-result-object v5

    :cond_13
    return-object v5
.end method
