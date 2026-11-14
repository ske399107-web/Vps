.class public final Lo/I0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo/N;


# instance fields
.field public final a:I

.field public final b:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 7
    iput v0, p0, Lo/I0;->a:I

    const/4 v0, 0x0

    .line 8
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lo/I0;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const/4 v0, 0x0

    .line 1
    invoke-static {p1, v0}, Lo/J0;->i(Landroid/content/Context;I)I

    move-result v0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v1, Lo/E0;

    new-instance v2, Landroid/view/ContextThemeWrapper;

    .line 4
    invoke-static {p1, v0}, Lo/J0;->i(Landroid/content/Context;I)I

    move-result v3

    invoke-direct {v2, p1, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v1, v2}, Lo/E0;-><init>(Landroid/view/ContextThemeWrapper;)V

    iput-object v1, p0, Lo/I0;->b:Ljava/lang/Object;

    .line 5
    iput v0, p0, Lo/I0;->a:I

    return-void
.end method

.method public constructor <init>(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;I)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/I0;->b:Ljava/lang/Object;

    iput p2, p0, Lo/I0;->a:I

    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 10
    iput v0, p0, Lo/I0;->a:I

    .line 11
    iput-object p1, p0, Lo/I0;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a()Lo/J0;
    .locals 10

    .line 1
    new-instance v0, Lo/J0;

    .line 3
    iget-object v1, p0, Lo/I0;->b:Ljava/lang/Object;

    .line 5
    check-cast v1, Lo/E0;

    .line 7
    iget-object v2, v1, Lo/E0;->a:Landroid/view/ContextThemeWrapper;

    .line 9
    iget v3, p0, Lo/I0;->a:I

    .line 11
    invoke-direct {v0, v2, v3}, Lo/J0;-><init>(Landroid/view/ContextThemeWrapper;I)V

    .line 14
    iget-object v2, v1, Lo/E0;->e:Landroid/view/View;

    .line 16
    iget-object v3, v0, Lo/J0;->f:Lo/H0;

    .line 18
    if-eqz v2, :cond_0

    .line 20
    iput-object v2, v3, Lo/H0;->n:Landroid/view/View;

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    iget-object v2, v1, Lo/E0;->d:Ljava/lang/CharSequence;

    .line 25
    if-eqz v2, :cond_1

    .line 27
    iput-object v2, v3, Lo/H0;->d:Ljava/lang/CharSequence;

    .line 29
    iget-object v4, v3, Lo/H0;->l:Landroid/widget/TextView;

    .line 31
    if-eqz v4, :cond_1

    .line 33
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 36
    :cond_1
    iget-object v2, v1, Lo/E0;->c:Landroid/graphics/drawable/Drawable;

    .line 38
    if-eqz v2, :cond_2

    .line 40
    iput-object v2, v3, Lo/H0;->j:Landroid/graphics/drawable/Drawable;

    .line 42
    iget-object v4, v3, Lo/H0;->k:Landroid/widget/ImageView;

    .line 44
    if-eqz v4, :cond_2

    .line 46
    const/4 v5, 0x0

    .line 47
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 50
    iget-object v4, v3, Lo/H0;->k:Landroid/widget/ImageView;

    .line 52
    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 55
    :cond_2
    :goto_0
    iget-object v2, v1, Lo/E0;->g:Ljava/lang/Object;

    .line 57
    const/4 v4, 0x1

    .line 58
    const/4 v5, 0x0

    .line 59
    if-eqz v2, :cond_7

    .line 61
    iget v2, v3, Lo/H0;->r:I

    .line 63
    iget-object v6, v1, Lo/E0;->b:Landroid/view/LayoutInflater;

    .line 65
    invoke-virtual {v6, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 68
    move-result-object v2

    .line 69
    check-cast v2, Landroidx/appcompat/app/AlertController$RecycleListView;

    .line 71
    iget-boolean v6, v1, Lo/E0;->i:Z

    .line 73
    if-eqz v6, :cond_3

    .line 75
    iget v6, v3, Lo/H0;->s:I

    .line 77
    goto :goto_1

    .line 78
    :cond_3
    iget v6, v3, Lo/H0;->t:I

    .line 80
    :goto_1
    iget-object v7, v1, Lo/E0;->g:Ljava/lang/Object;

    .line 82
    if-eqz v7, :cond_4

    .line 84
    goto :goto_2

    .line 85
    :cond_4
    new-instance v7, Lo/G0;

    .line 87
    iget-object v8, v1, Lo/E0;->a:Landroid/view/ContextThemeWrapper;

    .line 89
    const v9, 0x1020014

    .line 92
    invoke-direct {v7, v8, v6, v9, v5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    .line 95
    :goto_2
    iput-object v7, v3, Lo/H0;->o:Landroid/widget/ListAdapter;

    .line 97
    iget v6, v1, Lo/E0;->j:I

    .line 99
    iput v6, v3, Lo/H0;->p:I

    .line 101
    iget-object v6, v1, Lo/E0;->h:Landroid/content/DialogInterface$OnClickListener;

    .line 103
    if-eqz v6, :cond_5

    .line 105
    new-instance v6, Lo/D0;

    .line 107
    invoke-direct {v6, v1, v3}, Lo/D0;-><init>(Lo/E0;Lo/H0;)V

    .line 110
    invoke-virtual {v2, v6}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 113
    :cond_5
    iget-boolean v6, v1, Lo/E0;->i:Z

    .line 115
    if-eqz v6, :cond_6

    .line 117
    invoke-virtual {v2, v4}, Landroid/widget/AbsListView;->setChoiceMode(I)V

    .line 120
    :cond_6
    iput-object v2, v3, Lo/H0;->e:Landroidx/appcompat/app/AlertController$RecycleListView;

    .line 122
    :cond_7
    invoke-virtual {v0, v4}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 125
    invoke-virtual {v0, v4}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 128
    invoke-virtual {v0, v5}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 131
    invoke-virtual {v0, v5}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 134
    iget-object v1, v1, Lo/E0;->f:Lo/lb;

    .line 136
    if-eqz v1, :cond_8

    .line 138
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 141
    :cond_8
    return-object v0
.end method

.method public d(Landroid/view/View;)Z
    .locals 1

    .line 1
    iget-object p1, p0, Lo/I0;->b:Ljava/lang/Object;

    .line 3
    check-cast p1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 5
    iget v0, p0, Lo/I0;->a:I

    .line 7
    invoke-virtual {p1, v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->B(I)V

    .line 10
    const/4 p1, 0x1

    .line 11
    return p1
.end method
