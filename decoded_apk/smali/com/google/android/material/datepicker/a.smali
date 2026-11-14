.class public final Lcom/google/android/material/datepicker/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field public final synthetic a:Lcom/google/android/material/datepicker/MaterialCalendarGridView;

.field public final synthetic b:Lcom/google/android/material/datepicker/c;


# direct methods
.method public constructor <init>(Lcom/google/android/material/datepicker/c;Lcom/google/android/material/datepicker/MaterialCalendarGridView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/google/android/material/datepicker/a;->b:Lcom/google/android/material/datepicker/c;

    .line 6
    iput-object p2, p0, Lcom/google/android/material/datepicker/a;->a:Lcom/google/android/material/datepicker/MaterialCalendarGridView;

    .line 8
    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/google/android/material/datepicker/a;->a:Lcom/google/android/material/datepicker/MaterialCalendarGridView;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->a()Lo/Jb;

    .line 6
    move-result-object p2

    .line 7
    invoke-virtual {p2}, Lo/Jb;->a()I

    .line 10
    move-result p4

    .line 11
    if-lt p3, p4, :cond_1

    .line 13
    invoke-virtual {p2}, Lo/Jb;->c()I

    .line 16
    move-result p2

    .line 17
    if-gt p3, p2, :cond_1

    .line 19
    iget-object p2, p0, Lcom/google/android/material/datepicker/a;->b:Lcom/google/android/material/datepicker/c;

    .line 21
    iget-object p2, p2, Lcom/google/android/material/datepicker/c;->d:Lo/C;

    .line 23
    invoke-virtual {p1}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->a()Lo/Jb;

    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {p1, p3}, Lo/Jb;->b(I)Ljava/lang/Long;

    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 34
    move-result-wide p3

    .line 35
    iget-object p1, p2, Lo/C;->b:Ljava/lang/Object;

    .line 37
    check-cast p1, Lo/Va;

    .line 39
    iget-object p1, p1, Lo/Va;->V:Lo/n3;

    .line 41
    iget-object p1, p1, Lo/n3;->c:Lo/p5;

    .line 43
    iget-wide p1, p1, Lo/p5;->a:J

    .line 45
    cmp-long p1, p3, p1

    .line 47
    if-gez p1, :cond_0

    .line 49
    goto :goto_0

    .line 50
    :cond_0
    const/4 p1, 0x0

    .line 51
    throw p1

    .line 52
    :cond_1
    :goto_0
    return-void
.end method
