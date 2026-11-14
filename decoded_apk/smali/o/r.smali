.class public Lo/r;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:Landroid/view/View$AccessibilityDelegate;


# instance fields
.field public final a:Landroid/view/View$AccessibilityDelegate;

.field public final b:Lo/q;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroid/view/View$AccessibilityDelegate;

    .line 3
    invoke-direct {v0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    .line 6
    sput-object v0, Lo/r;->c:Landroid/view/View$AccessibilityDelegate;

    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Lo/r;->c:Landroid/view/View$AccessibilityDelegate;

    invoke-direct {p0, v0}, Lo/r;-><init>(Landroid/view/View$AccessibilityDelegate;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View$AccessibilityDelegate;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lo/r;->a:Landroid/view/View$AccessibilityDelegate;

    .line 4
    new-instance p1, Lo/q;

    invoke-direct {p1, p0}, Lo/q;-><init>(Lo/r;)V

    iput-object p1, p0, Lo/r;->b:Lo/q;

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lo/r;->a:Landroid/view/View$AccessibilityDelegate;

    .line 3
    invoke-virtual {v0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->dispatchPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public b(Landroid/view/View;)Lo/C;
    .locals 2

    .line 1
    iget-object v0, p0, Lo/r;->a:Landroid/view/View$AccessibilityDelegate;

    .line 3
    invoke-virtual {v0, p1}, Landroid/view/View$AccessibilityDelegate;->getAccessibilityNodeProvider(Landroid/view/View;)Landroid/view/accessibility/AccessibilityNodeProvider;

    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 9
    new-instance v0, Lo/C;

    .line 11
    const/4 v1, 0x1

    .line 12
    invoke-direct {v0, v1, p1}, Lo/C;-><init>(ILjava/lang/Object;)V

    .line 15
    return-object v0

    .line 16
    :cond_0
    const/4 p1, 0x0

    .line 17
    return-object p1
.end method

.method public c(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lo/r;->a:Landroid/view/View$AccessibilityDelegate;

    .line 3
    invoke-virtual {v0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 6
    return-void
.end method

.method public d(Landroid/view/View;Lo/D;)V
    .locals 1

    .line 1
    iget-object p2, p2, Lo/D;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 3
    iget-object v0, p0, Lo/r;->a:Landroid/view/View$AccessibilityDelegate;

    .line 5
    invoke-virtual {v0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 8
    return-void
.end method

.method public e(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lo/r;->a:Landroid/view/View$AccessibilityDelegate;

    .line 3
    invoke-virtual {v0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 6
    return-void
.end method

.method public f(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lo/r;->a:Landroid/view/View$AccessibilityDelegate;

    .line 3
    invoke-virtual {v0, p1, p2, p3}, Landroid/view/View$AccessibilityDelegate;->onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public g(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 6

    .line 1
    const v0, 0x7f0801c0

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Ljava/util/List;

    .line 10
    if-nez v0, :cond_0

    .line 12
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 15
    move-result-object v0

    .line 16
    :cond_0
    const/4 v1, 0x0

    .line 17
    move v2, v1

    .line 18
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 21
    move-result v3

    .line 22
    const/4 v4, 0x0

    .line 23
    if-ge v2, v3, :cond_4

    .line 25
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 28
    move-result-object v3

    .line 29
    check-cast v3, Lo/y;

    .line 31
    invoke-virtual {v3}, Lo/y;->a()I

    .line 34
    move-result v5

    .line 35
    if-ne v5, p2, :cond_3

    .line 37
    iget-object v0, v3, Lo/y;->d:Lo/N;

    .line 39
    if-eqz v0, :cond_4

    .line 41
    iget-object v2, v3, Lo/y;->c:Ljava/lang/Class;

    .line 43
    if-nez v2, :cond_1

    .line 45
    goto :goto_2

    .line 46
    :cond_1
    :try_start_0
    new-array v3, v1, [Ljava/lang/Class;

    .line 48
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 51
    move-result-object v3

    .line 52
    new-array v5, v1, [Ljava/lang/Object;

    .line 54
    invoke-virtual {v3, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    move-result-object v3

    .line 58
    if-nez v3, :cond_2

    .line 60
    throw v4

    .line 61
    :catch_0
    move-exception v3

    .line 62
    goto :goto_1

    .line 63
    :cond_2
    new-instance v3, Ljava/lang/ClassCastException;

    .line 65
    invoke-direct {v3}, Ljava/lang/ClassCastException;-><init>()V

    .line 68
    throw v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    :goto_1
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 72
    move-result-object v2

    .line 73
    const-string v5, "Failed to execute command with argument class ViewCommandArgument: "

    .line 75
    invoke-virtual {v5, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 78
    move-result-object v2

    .line 79
    const-string v5, "A11yActionCompat"

    .line 81
    invoke-static {v5, v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 84
    :goto_2
    invoke-interface {v0, p1}, Lo/N;->d(Landroid/view/View;)Z

    .line 87
    move-result v0

    .line 88
    goto :goto_3

    .line 89
    :cond_3
    add-int/lit8 v2, v2, 0x1

    .line 91
    goto :goto_0

    .line 92
    :cond_4
    move v0, v1

    .line 93
    :goto_3
    if-nez v0, :cond_5

    .line 95
    iget-object v0, p0, Lo/r;->a:Landroid/view/View$AccessibilityDelegate;

    .line 97
    invoke-virtual {v0, p1, p2, p3}, Landroid/view/View$AccessibilityDelegate;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    .line 100
    move-result v0

    .line 101
    :cond_5
    if-nez v0, :cond_9

    .line 103
    const v2, 0x7f080010

    .line 106
    if-ne p2, v2, :cond_9

    .line 108
    if-eqz p3, :cond_9

    .line 110
    const-string p2, "ACCESSIBILITY_CLICKABLE_SPAN_ID"

    .line 112
    const/4 v0, -0x1

    .line 113
    invoke-virtual {p3, p2, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 116
    move-result p2

    .line 117
    const p3, 0x7f0801c1

    .line 120
    invoke-virtual {p1, p3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 123
    move-result-object p3

    .line 124
    check-cast p3, Landroid/util/SparseArray;

    .line 126
    if-eqz p3, :cond_8

    .line 128
    invoke-virtual {p3, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 131
    move-result-object p2

    .line 132
    check-cast p2, Ljava/lang/ref/WeakReference;

    .line 134
    if-eqz p2, :cond_8

    .line 136
    invoke-virtual {p2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 139
    move-result-object p2

    .line 140
    check-cast p2, Landroid/text/style/ClickableSpan;

    .line 142
    if-eqz p2, :cond_8

    .line 144
    invoke-virtual {p1}, Landroid/view/View;->createAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 147
    move-result-object p3

    .line 148
    invoke-virtual {p3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    .line 151
    move-result-object p3

    .line 152
    instance-of v0, p3, Landroid/text/Spanned;

    .line 154
    if-eqz v0, :cond_6

    .line 156
    move-object v0, p3

    .line 157
    check-cast v0, Landroid/text/Spanned;

    .line 159
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    .line 162
    move-result p3

    .line 163
    const-class v2, Landroid/text/style/ClickableSpan;

    .line 165
    invoke-interface {v0, v1, p3, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    .line 168
    move-result-object p3

    .line 169
    move-object v4, p3

    .line 170
    check-cast v4, [Landroid/text/style/ClickableSpan;

    .line 172
    :cond_6
    move p3, v1

    .line 173
    :goto_4
    if-eqz v4, :cond_8

    .line 175
    array-length v0, v4

    .line 176
    if-ge p3, v0, :cond_8

    .line 178
    aget-object v0, v4, p3

    .line 180
    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 183
    move-result v0

    .line 184
    if-eqz v0, :cond_7

    .line 186
    invoke-virtual {p2, p1}, Landroid/text/style/ClickableSpan;->onClick(Landroid/view/View;)V

    .line 189
    const/4 v1, 0x1

    .line 190
    goto :goto_5

    .line 191
    :cond_7
    add-int/lit8 p3, p3, 0x1

    .line 193
    goto :goto_4

    .line 194
    :cond_8
    :goto_5
    move v0, v1

    .line 195
    :cond_9
    return v0
.end method

.method public h(Landroid/view/View;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lo/r;->a:Landroid/view/View$AccessibilityDelegate;

    .line 3
    invoke-virtual {v0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->sendAccessibilityEvent(Landroid/view/View;I)V

    .line 6
    return-void
.end method

.method public i(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lo/r;->a:Landroid/view/View$AccessibilityDelegate;

    .line 3
    invoke-virtual {v0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->sendAccessibilityEventUnchecked(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 6
    return-void
.end method
