.class public final Lo/Ua;
.super Lo/xd;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/google/android/material/datepicker/c;

.field public final synthetic b:Lcom/google/android/material/button/MaterialButton;

.field public final synthetic c:Lo/Va;


# direct methods
.method public constructor <init>(Lo/Va;Lcom/google/android/material/datepicker/c;Lcom/google/android/material/button/MaterialButton;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lo/Ua;->c:Lo/Va;

    .line 6
    iput-object p2, p0, Lo/Ua;->a:Lcom/google/android/material/datepicker/c;

    .line 8
    iput-object p3, p0, Lo/Ua;->b:Lcom/google/android/material/button/MaterialButton;

    .line 10
    return-void
.end method


# virtual methods
.method public final a(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 0

    .line 1
    if-nez p2, :cond_0

    .line 3
    iget-object p2, p0, Lo/Ua;->b:Lcom/google/android/material/button/MaterialButton;

    .line 5
    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 8
    move-result-object p2

    .line 9
    invoke-virtual {p1, p2}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 12
    :cond_0
    return-void
.end method

.method public final b(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 3

    .line 1
    iget-object p1, p0, Lo/Ua;->c:Lo/Va;

    .line 3
    if-gez p2, :cond_1

    .line 5
    iget-object p2, p1, Lo/Va;->a0:Landroidx/recyclerview/widget/RecyclerView;

    .line 7
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Lo/ud;

    .line 10
    move-result-object p2

    .line 11
    check-cast p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 13
    invoke-virtual {p2}, Lo/ud;->v()I

    .line 16
    move-result p3

    .line 17
    const/4 v0, 0x0

    .line 18
    invoke-virtual {p2, v0, p3, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->M0(IIZ)Landroid/view/View;

    .line 21
    move-result-object p2

    .line 22
    if-nez p2, :cond_0

    .line 24
    const/4 p2, -0x1

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    invoke-static {p2}, Lo/ud;->H(Landroid/view/View;)I

    .line 29
    move-result p2

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    iget-object p2, p1, Lo/Va;->a0:Landroidx/recyclerview/widget/RecyclerView;

    .line 33
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Lo/ud;

    .line 36
    move-result-object p2

    .line 37
    check-cast p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 39
    invoke-virtual {p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->K0()I

    .line 42
    move-result p2

    .line 43
    :goto_0
    iget-object p3, p0, Lo/Ua;->a:Lcom/google/android/material/datepicker/c;

    .line 45
    iget-object p3, p3, Lcom/google/android/material/datepicker/c;->c:Lo/n3;

    .line 47
    iget-object v0, p3, Lo/n3;->a:Lo/Ib;

    .line 49
    iget-object v0, v0, Lo/Ib;->a:Ljava/util/Calendar;

    .line 51
    invoke-static {v0}, Lo/Xg;->a(Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 54
    move-result-object v0

    .line 55
    const/4 v1, 0x2

    .line 56
    invoke-virtual {v0, v1, p2}, Ljava/util/Calendar;->add(II)V

    .line 59
    new-instance v2, Lo/Ib;

    .line 61
    invoke-direct {v2, v0}, Lo/Ib;-><init>(Ljava/util/Calendar;)V

    .line 64
    iput-object v2, p1, Lo/Va;->W:Lo/Ib;

    .line 66
    iget-object p1, p3, Lo/n3;->a:Lo/Ib;

    .line 68
    iget-object p1, p1, Lo/Ib;->a:Ljava/util/Calendar;

    .line 70
    invoke-static {p1}, Lo/Xg;->a(Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 73
    move-result-object p1

    .line 74
    invoke-virtual {p1, v1, p2}, Ljava/util/Calendar;->add(II)V

    .line 77
    const/4 p2, 0x5

    .line 78
    const/4 p3, 0x1

    .line 79
    invoke-virtual {p1, p2, p3}, Ljava/util/Calendar;->set(II)V

    .line 82
    invoke-static {p1}, Lo/Xg;->a(Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 85
    move-result-object p1

    .line 86
    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    .line 89
    invoke-virtual {p1, p3}, Ljava/util/Calendar;->get(I)I

    .line 92
    const/4 p3, 0x7

    .line 93
    invoke-virtual {p1, p3}, Ljava/util/Calendar;->getMaximum(I)I

    .line 96
    invoke-virtual {p1, p2}, Ljava/util/Calendar;->getActualMaximum(I)I

    .line 99
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 102
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 105
    move-result-wide p1

    .line 106
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 109
    move-result-object p3

    .line 110
    sget-object v0, Lo/Xg;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 112
    const-string v0, "yMMMM"

    .line 114
    invoke-static {v0, p3}, Landroid/icu/text/DateFormat;->getInstanceForSkeleton(Ljava/lang/String;Ljava/util/Locale;)Landroid/icu/text/DateFormat;

    .line 117
    move-result-object p3

    .line 118
    const-string v0, "UTC"

    .line 120
    invoke-static {v0}, Landroid/icu/util/TimeZone;->getTimeZone(Ljava/lang/String;)Landroid/icu/util/TimeZone;

    .line 123
    move-result-object v0

    .line 124
    invoke-virtual {p3, v0}, Landroid/icu/text/DateFormat;->setTimeZone(Landroid/icu/util/TimeZone;)V

    .line 127
    sget-object v0, Landroid/icu/text/DisplayContext;->CAPITALIZATION_FOR_STANDALONE:Landroid/icu/text/DisplayContext;

    .line 129
    invoke-virtual {p3, v0}, Landroid/icu/text/DateFormat;->setContext(Landroid/icu/text/DisplayContext;)V

    .line 132
    new-instance v0, Ljava/util/Date;

    .line 134
    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 137
    invoke-virtual {p3, v0}, Landroid/icu/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 140
    move-result-object p1

    .line 141
    iget-object p2, p0, Lo/Ua;->b:Lcom/google/android/material/button/MaterialButton;

    .line 143
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    return-void
.end method
