.class public final Lo/Va;
.super Lo/Fc;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        ">",
        "Lo/Fc;"
    }
.end annotation


# instance fields
.field public U:I

.field public V:Lo/n3;

.field public W:Lo/Ib;

.field public X:I

.field public Y:Lo/H1;

.field public Z:Landroidx/recyclerview/widget/RecyclerView;

.field public a0:Landroidx/recyclerview/widget/RecyclerView;

.field public b0:Landroid/view/View;

.field public c0:Landroid/view/View;

.field public d0:Landroid/view/View;

.field public e0:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lo/Fc;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public final G(Lo/Ib;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lo/Va;->a0:Landroidx/recyclerview/widget/RecyclerView;

    .line 3
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Lo/md;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/google/android/material/datepicker/c;

    .line 9
    iget-object v1, v0, Lcom/google/android/material/datepicker/c;->c:Lo/n3;

    .line 11
    iget-object v1, v1, Lo/n3;->a:Lo/Ib;

    .line 13
    invoke-virtual {v1, p1}, Lo/Ib;->d(Lo/Ib;)I

    .line 16
    move-result v1

    .line 17
    iget-object v2, p0, Lo/Va;->W:Lo/Ib;

    .line 19
    iget-object v0, v0, Lcom/google/android/material/datepicker/c;->c:Lo/n3;

    .line 21
    iget-object v0, v0, Lo/n3;->a:Lo/Ib;

    .line 23
    invoke-virtual {v0, v2}, Lo/Ib;->d(Lo/Ib;)I

    .line 26
    move-result v0

    .line 27
    sub-int v0, v1, v0

    .line 29
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    .line 32
    move-result v2

    .line 33
    const/4 v3, 0x3

    .line 34
    const/4 v4, 0x0

    .line 35
    const/4 v5, 0x1

    .line 36
    if-le v2, v3, :cond_0

    .line 38
    move v2, v5

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    move v2, v4

    .line 41
    :goto_0
    if-lez v0, :cond_1

    .line 43
    move v4, v5

    .line 44
    :cond_1
    iput-object p1, p0, Lo/Va;->W:Lo/Ib;

    .line 46
    if-eqz v2, :cond_2

    .line 48
    if-eqz v4, :cond_2

    .line 50
    iget-object p1, p0, Lo/Va;->a0:Landroidx/recyclerview/widget/RecyclerView;

    .line 52
    add-int/lit8 v0, v1, -0x3

    .line 54
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->Y(I)V

    .line 57
    iget-object p1, p0, Lo/Va;->a0:Landroidx/recyclerview/widget/RecyclerView;

    .line 59
    new-instance v0, Lo/T2;

    .line 61
    const/4 v2, 0x3

    .line 62
    invoke-direct {v0, p0, v1, v2}, Lo/T2;-><init>(Ljava/lang/Object;II)V

    .line 65
    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 68
    goto :goto_1

    .line 69
    :cond_2
    if-eqz v2, :cond_3

    .line 71
    iget-object p1, p0, Lo/Va;->a0:Landroidx/recyclerview/widget/RecyclerView;

    .line 73
    add-int/lit8 v0, v1, 0x3

    .line 75
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->Y(I)V

    .line 78
    iget-object p1, p0, Lo/Va;->a0:Landroidx/recyclerview/widget/RecyclerView;

    .line 80
    new-instance v0, Lo/T2;

    .line 82
    const/4 v2, 0x3

    .line 83
    invoke-direct {v0, p0, v1, v2}, Lo/T2;-><init>(Ljava/lang/Object;II)V

    .line 86
    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 89
    goto :goto_1

    .line 90
    :cond_3
    iget-object p1, p0, Lo/Va;->a0:Landroidx/recyclerview/widget/RecyclerView;

    .line 92
    new-instance v0, Lo/T2;

    .line 94
    const/4 v2, 0x3

    .line 95
    invoke-direct {v0, p0, v1, v2}, Lo/T2;-><init>(Ljava/lang/Object;II)V

    .line 98
    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 101
    :goto_1
    return-void
.end method

.method public final H(I)V
    .locals 4

    .line 1
    iput p1, p0, Lo/Va;->X:I

    .line 3
    const/4 v0, 0x2

    .line 4
    const/16 v1, 0x8

    .line 6
    const/4 v2, 0x0

    .line 7
    if-ne p1, v0, :cond_0

    .line 9
    iget-object p1, p0, Lo/Va;->Z:Landroidx/recyclerview/widget/RecyclerView;

    .line 11
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Lo/ud;

    .line 14
    move-result-object p1

    .line 15
    iget-object v0, p0, Lo/Va;->Z:Landroidx/recyclerview/widget/RecyclerView;

    .line 17
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Lo/md;

    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Lo/Wi;

    .line 23
    iget-object v3, p0, Lo/Va;->W:Lo/Ib;

    .line 25
    iget v3, v3, Lo/Ib;->c:I

    .line 27
    iget-object v0, v0, Lo/Wi;->c:Lo/Va;

    .line 29
    iget-object v0, v0, Lo/Va;->V:Lo/n3;

    .line 31
    iget-object v0, v0, Lo/n3;->a:Lo/Ib;

    .line 33
    iget v0, v0, Lo/Ib;->c:I

    .line 35
    sub-int/2addr v3, v0

    .line 36
    invoke-virtual {p1, v3}, Lo/ud;->n0(I)V

    .line 39
    iget-object p1, p0, Lo/Va;->d0:Landroid/view/View;

    .line 41
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 44
    iget-object p1, p0, Lo/Va;->e0:Landroid/view/View;

    .line 46
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 49
    iget-object p1, p0, Lo/Va;->b0:Landroid/view/View;

    .line 51
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 54
    iget-object p1, p0, Lo/Va;->c0:Landroid/view/View;

    .line 56
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 59
    goto :goto_0

    .line 60
    :cond_0
    const/4 v0, 0x1

    .line 61
    if-ne p1, v0, :cond_1

    .line 63
    iget-object p1, p0, Lo/Va;->d0:Landroid/view/View;

    .line 65
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 68
    iget-object p1, p0, Lo/Va;->e0:Landroid/view/View;

    .line 70
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 73
    iget-object p1, p0, Lo/Va;->b0:Landroid/view/View;

    .line 75
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 78
    iget-object p1, p0, Lo/Va;->c0:Landroid/view/View;

    .line 80
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 83
    iget-object p1, p0, Lo/Va;->W:Lo/Ib;

    .line 85
    invoke-virtual {p0, p1}, Lo/Va;->G(Lo/Ib;)V

    .line 88
    :cond_1
    :goto_0
    return-void
.end method

.method public final s(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lo/T7;->s(Landroid/os/Bundle;)V

    .line 4
    if-nez p1, :cond_0

    .line 6
    iget-object p1, p0, Lo/T7;->f:Landroid/os/Bundle;

    .line 8
    :cond_0
    const-string v0, "THEME_RES_ID_KEY"

    .line 10
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 13
    move-result v0

    .line 14
    iput v0, p0, Lo/Va;->U:I

    .line 16
    const-string v0, "GRID_SELECTOR_KEY"

    .line 18
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 21
    move-result-object v0

    .line 22
    if-nez v0, :cond_2

    .line 24
    const-string v0, "CALENDAR_CONSTRAINTS_KEY"

    .line 26
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Lo/n3;

    .line 32
    iput-object v0, p0, Lo/Va;->V:Lo/n3;

    .line 34
    const-string v0, "DAY_VIEW_DECORATOR_KEY"

    .line 36
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 39
    move-result-object v0

    .line 40
    if-nez v0, :cond_1

    .line 42
    const-string v0, "CURRENT_MONTH_KEY"

    .line 44
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 47
    move-result-object p1

    .line 48
    check-cast p1, Lo/Ib;

    .line 50
    iput-object p1, p0, Lo/Va;->W:Lo/Ib;

    .line 52
    return-void

    .line 53
    :cond_1
    new-instance p1, Ljava/lang/ClassCastException;

    .line 55
    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    .line 58
    throw p1

    .line 59
    :cond_2
    new-instance p1, Ljava/lang/ClassCastException;

    .line 61
    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    .line 64
    throw p1
.end method

.method public final t(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11

    .line 1
    new-instance v0, Landroid/view/ContextThemeWrapper;

    .line 3
    invoke-virtual {p0}, Lo/T7;->h()Landroid/content/Context;

    .line 6
    move-result-object v1

    .line 7
    iget v2, p0, Lo/Va;->U:I

    .line 9
    invoke-direct {v0, v1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 12
    new-instance v1, Lo/H1;

    .line 14
    invoke-direct {v1, v0}, Lo/H1;-><init>(Landroid/content/Context;)V

    .line 17
    iput-object v1, p0, Lo/Va;->Y:Lo/H1;

    .line 19
    invoke-virtual {p1, v0}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 22
    move-result-object p1

    .line 23
    iget-object v1, p0, Lo/Va;->V:Lo/n3;

    .line 25
    iget-object v1, v1, Lo/n3;->a:Lo/Ib;

    .line 27
    const v2, 0x101020d

    .line 30
    invoke-static {v0, v2}, Lo/bb;->J(Landroid/content/Context;I)Z

    .line 33
    move-result v3

    .line 34
    const/4 v4, 0x1

    .line 35
    const/4 v5, 0x0

    .line 36
    if-eqz v3, :cond_0

    .line 38
    const v3, 0x7f0b0054

    .line 41
    move v6, v4

    .line 42
    goto :goto_0

    .line 43
    :cond_0
    const v3, 0x7f0b004f

    .line 46
    move v6, v5

    .line 47
    :goto_0
    invoke-virtual {p1, v3, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 50
    move-result-object p1

    .line 51
    invoke-virtual {p0}, Lo/T7;->C()Landroid/content/Context;

    .line 54
    move-result-object p2

    .line 55
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 58
    move-result-object p2

    .line 59
    const v3, 0x7f06028c

    .line 62
    invoke-virtual {p2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 65
    move-result v3

    .line 66
    const v7, 0x7f06028d

    .line 69
    invoke-virtual {p2, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 72
    move-result v7

    .line 73
    add-int/2addr v7, v3

    .line 74
    const v3, 0x7f06028b

    .line 77
    invoke-virtual {p2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 80
    move-result v3

    .line 81
    add-int/2addr v3, v7

    .line 82
    const v7, 0x7f06027c

    .line 85
    invoke-virtual {p2, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 88
    move-result v7

    .line 89
    sget v8, Lo/Jb;->d:I

    .line 91
    const v9, 0x7f060277

    .line 94
    invoke-virtual {p2, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 97
    move-result v9

    .line 98
    mul-int/2addr v9, v8

    .line 99
    sub-int/2addr v8, v4

    .line 100
    const v10, 0x7f06028a

    .line 103
    invoke-virtual {p2, v10}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 106
    move-result v10

    .line 107
    mul-int/2addr v10, v8

    .line 108
    add-int/2addr v10, v9

    .line 109
    const v8, 0x7f060274

    .line 112
    invoke-virtual {p2, v8}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 115
    move-result p2

    .line 116
    add-int/2addr v3, v7

    .line 117
    add-int/2addr v3, v10

    .line 118
    add-int/2addr v3, p2

    .line 119
    invoke-virtual {p1, v3}, Landroid/view/View;->setMinimumHeight(I)V

    .line 122
    const p2, 0x7f080124

    .line 125
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 128
    move-result-object p2

    .line 129
    check-cast p2, Landroid/widget/GridView;

    .line 131
    new-instance v3, Lo/Ra;

    .line 133
    const/4 v7, 0x0

    .line 134
    invoke-direct {v3, v7}, Lo/Ra;-><init>(I)V

    .line 137
    invoke-static {p2, v3}, Lo/Dh;->l(Landroid/view/View;Lo/r;)V

    .line 140
    iget-object v3, p0, Lo/Va;->V:Lo/n3;

    .line 142
    iget v3, v3, Lo/n3;->e:I

    .line 144
    new-instance v7, Lo/q5;

    .line 146
    if-lez v3, :cond_1

    .line 148
    invoke-direct {v7, v3}, Lo/q5;-><init>(I)V

    .line 151
    goto :goto_1

    .line 152
    :cond_1
    invoke-direct {v7}, Lo/q5;-><init>()V

    .line 155
    :goto_1
    invoke-virtual {p2, v7}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 158
    iget v1, v1, Lo/Ib;->d:I

    .line 160
    invoke-virtual {p2, v1}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 163
    invoke-virtual {p2, v5}, Landroid/view/View;->setEnabled(Z)V

    .line 166
    const p2, 0x7f080127

    .line 169
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 172
    move-result-object p2

    .line 173
    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    .line 175
    iput-object p2, p0, Lo/Va;->a0:Landroidx/recyclerview/widget/RecyclerView;

    .line 177
    new-instance p2, Lo/Sa;

    .line 179
    invoke-direct {p2, p0, v6, v6}, Lo/Sa;-><init>(Lo/Va;II)V

    .line 182
    iget-object v1, p0, Lo/Va;->a0:Landroidx/recyclerview/widget/RecyclerView;

    .line 184
    invoke-virtual {v1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Lo/ud;)V

    .line 187
    iget-object p2, p0, Lo/Va;->a0:Landroidx/recyclerview/widget/RecyclerView;

    .line 189
    const-string v1, "MONTHS_VIEW_GROUP_TAG"

    .line 191
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 194
    new-instance p2, Lcom/google/android/material/datepicker/c;

    .line 196
    iget-object v1, p0, Lo/Va;->V:Lo/n3;

    .line 198
    new-instance v3, Lo/C;

    .line 200
    const/16 v5, 0x13

    .line 202
    invoke-direct {v3, v5, p0}, Lo/C;-><init>(ILjava/lang/Object;)V

    .line 205
    invoke-direct {p2, v0, v1, v3}, Lcom/google/android/material/datepicker/c;-><init>(Landroid/view/ContextThemeWrapper;Lo/n3;Lo/C;)V

    .line 208
    iget-object v1, p0, Lo/Va;->a0:Landroidx/recyclerview/widget/RecyclerView;

    .line 210
    invoke-virtual {v1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Lo/md;)V

    .line 213
    invoke-virtual {v0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    .line 216
    move-result-object v1

    .line 217
    const v3, 0x7f090032

    .line 220
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    .line 223
    move-result v1

    .line 224
    const v3, 0x7f08012a

    .line 227
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 230
    move-result-object v5

    .line 231
    check-cast v5, Landroidx/recyclerview/widget/RecyclerView;

    .line 233
    iput-object v5, p0, Lo/Va;->Z:Landroidx/recyclerview/widget/RecyclerView;

    .line 235
    if-eqz v5, :cond_2

    .line 237
    invoke-virtual {v5, v4}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 240
    iget-object v5, p0, Lo/Va;->Z:Landroidx/recyclerview/widget/RecyclerView;

    .line 242
    new-instance v6, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 244
    invoke-direct {v6, v1}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(I)V

    .line 247
    invoke-virtual {v5, v6}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Lo/ud;)V

    .line 250
    iget-object v1, p0, Lo/Va;->Z:Landroidx/recyclerview/widget/RecyclerView;

    .line 252
    new-instance v5, Lo/Wi;

    .line 254
    invoke-direct {v5, p0}, Lo/Wi;-><init>(Lo/Va;)V

    .line 257
    invoke-virtual {v1, v5}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Lo/md;)V

    .line 260
    iget-object v1, p0, Lo/Va;->Z:Landroidx/recyclerview/widget/RecyclerView;

    .line 262
    new-instance v5, Lo/Ta;

    .line 264
    invoke-direct {v5, p0}, Lo/Ta;-><init>(Lo/Va;)V

    .line 267
    invoke-virtual {v1, v5}, Landroidx/recyclerview/widget/RecyclerView;->g(Lo/rd;)V

    .line 270
    :cond_2
    const v1, 0x7f08011d

    .line 273
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 276
    move-result-object v5

    .line 277
    if-eqz v5, :cond_3

    .line 279
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 282
    move-result-object v1

    .line 283
    check-cast v1, Lcom/google/android/material/button/MaterialButton;

    .line 285
    const-string v5, "SELECTOR_TOGGLE_TAG"

    .line 287
    invoke-virtual {v1, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 290
    new-instance v5, Lo/J3;

    .line 292
    const/4 v6, 0x2

    .line 293
    invoke-direct {v5, v6, p0}, Lo/J3;-><init>(ILjava/lang/Object;)V

    .line 296
    invoke-static {v1, v5}, Lo/Dh;->l(Landroid/view/View;Lo/r;)V

    .line 299
    const v5, 0x7f08011f

    .line 302
    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 305
    move-result-object v5

    .line 306
    iput-object v5, p0, Lo/Va;->b0:Landroid/view/View;

    .line 308
    const-string v6, "NAVIGATION_PREV_TAG"

    .line 310
    invoke-virtual {v5, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 313
    const v5, 0x7f08011e

    .line 316
    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 319
    move-result-object v5

    .line 320
    iput-object v5, p0, Lo/Va;->c0:Landroid/view/View;

    .line 322
    const-string v6, "NAVIGATION_NEXT_TAG"

    .line 324
    invoke-virtual {v5, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 327
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 330
    move-result-object v3

    .line 331
    iput-object v3, p0, Lo/Va;->d0:Landroid/view/View;

    .line 333
    const v3, 0x7f080123

    .line 336
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 339
    move-result-object v3

    .line 340
    iput-object v3, p0, Lo/Va;->e0:Landroid/view/View;

    .line 342
    invoke-virtual {p0, v4}, Lo/Va;->H(I)V

    .line 345
    iget-object v3, p0, Lo/Va;->W:Lo/Ib;

    .line 347
    invoke-virtual {v3}, Lo/Ib;->c()Ljava/lang/String;

    .line 350
    move-result-object v3

    .line 351
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 354
    iget-object v3, p0, Lo/Va;->a0:Landroidx/recyclerview/widget/RecyclerView;

    .line 356
    new-instance v4, Lo/Ua;

    .line 358
    invoke-direct {v4, p0, p2, v1}, Lo/Ua;-><init>(Lo/Va;Lcom/google/android/material/datepicker/c;Lcom/google/android/material/button/MaterialButton;)V

    .line 361
    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView;->h(Lo/xd;)V

    .line 364
    new-instance v3, Lo/P;

    .line 366
    const/4 v4, 0x2

    .line 367
    invoke-direct {v3, v4, p0}, Lo/P;-><init>(ILjava/lang/Object;)V

    .line 370
    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 373
    iget-object v1, p0, Lo/Va;->c0:Landroid/view/View;

    .line 375
    new-instance v3, Lo/Qa;

    .line 377
    const/4 v4, 0x1

    .line 378
    invoke-direct {v3, p0, p2, v4}, Lo/Qa;-><init>(Lo/Va;Lcom/google/android/material/datepicker/c;I)V

    .line 381
    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 384
    iget-object v1, p0, Lo/Va;->b0:Landroid/view/View;

    .line 386
    new-instance v3, Lo/Qa;

    .line 388
    const/4 v4, 0x0

    .line 389
    invoke-direct {v3, p0, p2, v4}, Lo/Qa;-><init>(Lo/Va;Lcom/google/android/material/datepicker/c;I)V

    .line 392
    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 395
    :cond_3
    invoke-static {v0, v2}, Lo/bb;->J(Landroid/content/Context;I)Z

    .line 398
    move-result v0

    .line 399
    if-nez v0, :cond_8

    .line 401
    new-instance v0, Lo/Ac;

    .line 403
    invoke-direct {v0}, Lo/Ac;-><init>()V

    .line 406
    iget-object v1, p0, Lo/Va;->a0:Landroidx/recyclerview/widget/RecyclerView;

    .line 408
    iget-object v2, v0, Lo/Ac;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 410
    if-ne v2, v1, :cond_4

    .line 412
    goto :goto_2

    .line 413
    :cond_4
    iget-object v3, v0, Lo/Ac;->b:Lo/Te;

    .line 415
    if-eqz v2, :cond_6

    .line 417
    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView;->e0:Ljava/util/ArrayList;

    .line 419
    if-eqz v2, :cond_5

    .line 421
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 424
    :cond_5
    iget-object v2, v0, Lo/Ac;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 426
    const/4 v4, 0x0

    .line 427
    invoke-virtual {v2, v4}, Landroidx/recyclerview/widget/RecyclerView;->setOnFlingListener(Lo/wd;)V

    .line 430
    :cond_6
    iput-object v1, v0, Lo/Ac;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 432
    if-eqz v1, :cond_8

    .line 434
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getOnFlingListener()Lo/wd;

    .line 437
    move-result-object v1

    .line 438
    if-nez v1, :cond_7

    .line 440
    iget-object v1, v0, Lo/Ac;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 442
    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->h(Lo/xd;)V

    .line 445
    iget-object v1, v0, Lo/Ac;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 447
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setOnFlingListener(Lo/wd;)V

    .line 450
    new-instance v1, Landroid/widget/Scroller;

    .line 452
    iget-object v2, v0, Lo/Ac;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 454
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 457
    move-result-object v2

    .line 458
    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    .line 460
    invoke-direct {v3}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 463
    invoke-direct {v1, v2, v3}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    .line 466
    invoke-virtual {v0}, Lo/Ac;->f()V

    .line 469
    goto :goto_2

    .line 470
    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 472
    const-string p2, "An instance of OnFlingListener already set."

    .line 474
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 477
    throw p1

    .line 478
    :cond_8
    :goto_2
    iget-object v0, p0, Lo/Va;->a0:Landroidx/recyclerview/widget/RecyclerView;

    .line 480
    iget-object v1, p0, Lo/Va;->W:Lo/Ib;

    .line 482
    iget-object p2, p2, Lcom/google/android/material/datepicker/c;->c:Lo/n3;

    .line 484
    iget-object p2, p2, Lo/n3;->a:Lo/Ib;

    .line 486
    invoke-virtual {p2, v1}, Lo/Ib;->d(Lo/Ib;)I

    .line 489
    move-result p2

    .line 490
    invoke-virtual {v0, p2}, Landroidx/recyclerview/widget/RecyclerView;->Y(I)V

    .line 493
    iget-object p2, p0, Lo/Va;->a0:Landroidx/recyclerview/widget/RecyclerView;

    .line 495
    new-instance v0, Lo/Ra;

    .line 497
    const/4 v1, 0x1

    .line 498
    invoke-direct {v0, v1}, Lo/Ra;-><init>(I)V

    .line 501
    invoke-static {p2, v0}, Lo/Dh;->l(Landroid/view/View;Lo/r;)V

    .line 504
    return-object p1
.end method

.method public final x(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    const-string v0, "THEME_RES_ID_KEY"

    .line 3
    iget v1, p0, Lo/Va;->U:I

    .line 5
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 8
    const-string v0, "GRID_SELECTOR_KEY"

    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 14
    const-string v0, "CALENDAR_CONSTRAINTS_KEY"

    .line 16
    iget-object v2, p0, Lo/Va;->V:Lo/n3;

    .line 18
    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 21
    const-string v0, "DAY_VIEW_DECORATOR_KEY"

    .line 23
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 26
    const-string v0, "CURRENT_MONTH_KEY"

    .line 28
    iget-object v1, p0, Lo/Va;->W:Lo/Ib;

    .line 30
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 33
    return-void
.end method
