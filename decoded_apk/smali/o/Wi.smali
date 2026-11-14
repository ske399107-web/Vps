.class public final Lo/Wi;
.super Lo/md;
.source "SourceFile"


# instance fields
.field public final c:Lo/Va;


# direct methods
.method public constructor <init>(Lo/Va;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lo/md;-><init>()V

    .line 4
    iput-object p1, p0, Lo/Wi;->c:Lo/Va;

    .line 6
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 1
    iget-object v0, p0, Lo/Wi;->c:Lo/Va;

    .line 3
    iget-object v0, v0, Lo/Va;->V:Lo/n3;

    .line 5
    iget v0, v0, Lo/n3;->f:I

    .line 7
    return v0
.end method

.method public final c(Lo/Id;I)V
    .locals 4

    .line 1
    check-cast p1, Lo/Vi;

    .line 3
    iget-object v0, p0, Lo/Wi;->c:Lo/Va;

    .line 5
    iget-object v1, v0, Lo/Va;->V:Lo/n3;

    .line 7
    iget-object v1, v1, Lo/n3;->a:Lo/Ib;

    .line 9
    iget v1, v1, Lo/Ib;->c:I

    .line 11
    add-int/2addr v1, p2

    .line 12
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 15
    move-result-object p2

    .line 16
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 19
    move-result-object v2

    .line 20
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 23
    move-result-object v2

    .line 24
    const-string v3, "%d"

    .line 26
    invoke-static {p2, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 29
    move-result-object p2

    .line 30
    iget-object p1, p1, Lo/Vi;->t:Landroid/widget/TextView;

    .line 32
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 35
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 38
    move-result-object p2

    .line 39
    invoke-static {}, Lo/Xg;->b()Ljava/util/Calendar;

    .line 42
    move-result-object v2

    .line 43
    const/4 v3, 0x1

    .line 44
    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    .line 47
    move-result v2

    .line 48
    if-ne v2, v1, :cond_0

    .line 50
    const v2, 0x7f0e007f

    .line 53
    invoke-virtual {p2, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 56
    move-result-object p2

    .line 57
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 60
    move-result-object v2

    .line 61
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 64
    move-result-object v2

    .line 65
    invoke-static {p2, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 68
    move-result-object p2

    .line 69
    goto :goto_0

    .line 70
    :cond_0
    const v2, 0x7f0e0080

    .line 73
    invoke-virtual {p2, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 76
    move-result-object p2

    .line 77
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 80
    move-result-object v2

    .line 81
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 84
    move-result-object v2

    .line 85
    invoke-static {p2, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 88
    move-result-object p2

    .line 89
    :goto_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 92
    iget-object p1, v0, Lo/Va;->Y:Lo/H1;

    .line 94
    invoke-static {}, Lo/Xg;->b()Ljava/util/Calendar;

    .line 97
    move-result-object p2

    .line 98
    invoke-virtual {p2, v3}, Ljava/util/Calendar;->get(I)I

    .line 101
    move-result p2

    .line 102
    if-ne p2, v1, :cond_1

    .line 104
    iget-object p1, p1, Lo/H1;->c:Ljava/lang/Object;

    .line 106
    goto :goto_1

    .line 107
    :cond_1
    iget-object p1, p1, Lo/H1;->b:Ljava/lang/Object;

    .line 109
    :goto_1
    const/4 p1, 0x0

    .line 110
    throw p1
.end method

.method public final d(Landroid/view/ViewGroup;)Lo/Id;
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 8
    move-result-object v0

    .line 9
    const v1, 0x7f0b0055

    .line 12
    const/4 v2, 0x0

    .line 13
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 16
    move-result-object p1

    .line 17
    check-cast p1, Landroid/widget/TextView;

    .line 19
    new-instance v0, Lo/Vi;

    .line 21
    invoke-direct {v0, p1}, Lo/Vi;-><init>(Landroid/widget/TextView;)V

    .line 24
    return-object v0
.end method
