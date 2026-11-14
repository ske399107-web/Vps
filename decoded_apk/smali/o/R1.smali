.class public final Lo/R1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo/X1;
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public a:Lo/J0;

.field public b:Lo/S1;

.field public c:Ljava/lang/CharSequence;

.field public final synthetic d:Lo/Y1;


# direct methods
.method public constructor <init>(Lo/Y1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lo/R1;->d:Lo/Y1;

    .line 6
    return-void
.end method


# virtual methods
.method public final b()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lo/R1;->a:Lo/J0;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    .line 8
    move-result v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    return v0
.end method

.method public final c(I)V
    .locals 1

    .line 1
    const-string p1, "AppCompatSpinner"

    .line 3
    const-string v0, "Cannot set horizontal offset for MODE_DIALOG, ignoring"

    .line 5
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    return-void
.end method

.method public final d()I
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public final dismiss()V
    .locals 1

    .line 1
    iget-object v0, p0, Lo/R1;->a:Lo/J0;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Lo/J0;->dismiss()V

    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lo/R1;->a:Lo/J0;

    .line 11
    :cond_0
    return-void
.end method

.method public final e(II)V
    .locals 4

    .line 1
    iget-object v0, p0, Lo/R1;->b:Lo/S1;

    .line 3
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v0, Lo/I0;

    .line 8
    iget-object v1, p0, Lo/R1;->d:Lo/Y1;

    .line 10
    invoke-virtual {v1}, Lo/Y1;->getPopupContext()Landroid/content/Context;

    .line 13
    move-result-object v2

    .line 14
    invoke-direct {v0, v2}, Lo/I0;-><init>(Landroid/content/Context;)V

    .line 17
    iget-object v2, p0, Lo/R1;->c:Ljava/lang/CharSequence;

    .line 19
    iget-object v3, v0, Lo/I0;->b:Ljava/lang/Object;

    .line 21
    check-cast v3, Lo/E0;

    .line 23
    if-eqz v2, :cond_1

    .line 25
    iput-object v2, v3, Lo/E0;->d:Ljava/lang/CharSequence;

    .line 27
    :cond_1
    iget-object v2, p0, Lo/R1;->b:Lo/S1;

    .line 29
    invoke-virtual {v1}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    .line 32
    move-result v1

    .line 33
    iput-object v2, v3, Lo/E0;->g:Ljava/lang/Object;

    .line 35
    iput-object p0, v3, Lo/E0;->h:Landroid/content/DialogInterface$OnClickListener;

    .line 37
    iput v1, v3, Lo/E0;->j:I

    .line 39
    const/4 v1, 0x1

    .line 40
    iput-boolean v1, v3, Lo/E0;->i:Z

    .line 42
    invoke-virtual {v0}, Lo/I0;->a()Lo/J0;

    .line 45
    move-result-object v0

    .line 46
    iput-object v0, p0, Lo/R1;->a:Lo/J0;

    .line 48
    iget-object v0, v0, Lo/J0;->f:Lo/H0;

    .line 50
    iget-object v0, v0, Lo/H0;->e:Landroidx/appcompat/app/AlertController$RecycleListView;

    .line 52
    invoke-virtual {v0, p1}, Landroid/view/View;->setTextDirection(I)V

    .line 55
    invoke-virtual {v0, p2}, Landroid/view/View;->setTextAlignment(I)V

    .line 58
    iget-object p1, p0, Lo/R1;->a:Lo/J0;

    .line 60
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 63
    return-void
.end method

.method public final g()I
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public final h()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method

.method public final i()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object v0, p0, Lo/R1;->c:Ljava/lang/CharSequence;

    .line 3
    return-object v0
.end method

.method public final k(Ljava/lang/CharSequence;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo/R1;->c:Ljava/lang/CharSequence;

    .line 3
    return-void
.end method

.method public final m(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1
    const-string p1, "AppCompatSpinner"

    .line 3
    const-string v0, "Cannot set popup background for MODE_DIALOG, ignoring"

    .line 5
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    return-void
.end method

.method public final n(I)V
    .locals 1

    .line 1
    const-string p1, "AppCompatSpinner"

    .line 3
    const-string v0, "Cannot set vertical offset for MODE_DIALOG, ignoring"

    .line 5
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    return-void
.end method

.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 1
    iget-object p1, p0, Lo/R1;->d:Lo/Y1;

    .line 3
    invoke-virtual {p1, p2}, Landroid/widget/AdapterView;->setSelection(I)V

    .line 6
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;

    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_0

    .line 12
    iget-object v0, p0, Lo/R1;->b:Lo/S1;

    .line 14
    invoke-virtual {v0, p2}, Lo/S1;->getItemId(I)J

    .line 17
    move-result-wide v0

    .line 18
    const/4 v2, 0x0

    .line 19
    invoke-virtual {p1, v2, p2, v0, v1}, Landroid/widget/AdapterView;->performItemClick(Landroid/view/View;IJ)Z

    .line 22
    :cond_0
    invoke-virtual {p0}, Lo/R1;->dismiss()V

    .line 25
    return-void
.end method

.method public final p(Landroid/widget/ListAdapter;)V
    .locals 0

    .line 1
    check-cast p1, Lo/S1;

    .line 3
    iput-object p1, p0, Lo/R1;->b:Lo/S1;

    .line 5
    return-void
.end method

.method public final q(I)V
    .locals 1

    .line 1
    const-string p1, "AppCompatSpinner"

    .line 3
    const-string v0, "Cannot set horizontal (original) offset for MODE_DIALOG, ignoring"

    .line 5
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    return-void
.end method
