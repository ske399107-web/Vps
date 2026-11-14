.class public abstract Lo/ug;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final w:[Landroid/animation/Animator;

.field public static final x:[I

.field public static final y:Lo/qg;

.field public static final z:Ljava/lang/ThreadLocal;


# instance fields
.field public final a:Ljava/lang/String;

.field public b:J

.field public c:J

.field public d:Landroid/animation/TimeInterpolator;

.field public final e:Ljava/util/ArrayList;

.field public final f:Ljava/util/ArrayList;

.field public g:Lo/H5;

.field public h:Lo/H5;

.field public i:Lo/K2;

.field public final j:[I

.field public k:Ljava/util/ArrayList;

.field public l:Ljava/util/ArrayList;

.field public m:[Lo/tg;

.field public final n:Ljava/util/ArrayList;

.field public o:[Landroid/animation/Animator;

.field public p:I

.field public q:Z

.field public r:Z

.field public s:Lo/ug;

.field public t:Ljava/util/ArrayList;

.field public u:Ljava/util/ArrayList;

.field public v:Lo/qg;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Landroid/animation/Animator;

    .line 4
    sput-object v0, Lo/ug;->w:[Landroid/animation/Animator;

    .line 6
    const/4 v0, 0x3

    .line 7
    const/4 v1, 0x4

    .line 8
    const/4 v2, 0x2

    .line 9
    const/4 v3, 0x1

    .line 10
    filled-new-array {v2, v3, v0, v1}, [I

    .line 13
    move-result-object v0

    .line 14
    sput-object v0, Lo/ug;->x:[I

    .line 16
    new-instance v0, Lo/qg;

    .line 18
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 21
    sput-object v0, Lo/ug;->y:Lo/qg;

    .line 23
    new-instance v0, Ljava/lang/ThreadLocal;

    .line 25
    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    .line 28
    sput-object v0, Lo/ug;->z:Ljava/lang/ThreadLocal;

    .line 30
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 11
    move-result-object v0

    .line 12
    iput-object v0, p0, Lo/ug;->a:Ljava/lang/String;

    .line 14
    const-wide/16 v0, -0x1

    .line 16
    iput-wide v0, p0, Lo/ug;->b:J

    .line 18
    iput-wide v0, p0, Lo/ug;->c:J

    .line 20
    const/4 v0, 0x0

    .line 21
    iput-object v0, p0, Lo/ug;->d:Landroid/animation/TimeInterpolator;

    .line 23
    new-instance v1, Ljava/util/ArrayList;

    .line 25
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 28
    iput-object v1, p0, Lo/ug;->e:Ljava/util/ArrayList;

    .line 30
    new-instance v1, Ljava/util/ArrayList;

    .line 32
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 35
    iput-object v1, p0, Lo/ug;->f:Ljava/util/ArrayList;

    .line 37
    new-instance v1, Lo/H5;

    .line 39
    const/4 v2, 0x5

    .line 40
    invoke-direct {v1, v2}, Lo/H5;-><init>(I)V

    .line 43
    iput-object v1, p0, Lo/ug;->g:Lo/H5;

    .line 45
    new-instance v1, Lo/H5;

    .line 47
    invoke-direct {v1, v2}, Lo/H5;-><init>(I)V

    .line 50
    iput-object v1, p0, Lo/ug;->h:Lo/H5;

    .line 52
    iput-object v0, p0, Lo/ug;->i:Lo/K2;

    .line 54
    sget-object v1, Lo/ug;->x:[I

    .line 56
    iput-object v1, p0, Lo/ug;->j:[I

    .line 58
    new-instance v1, Ljava/util/ArrayList;

    .line 60
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 63
    iput-object v1, p0, Lo/ug;->n:Ljava/util/ArrayList;

    .line 65
    sget-object v1, Lo/ug;->w:[Landroid/animation/Animator;

    .line 67
    iput-object v1, p0, Lo/ug;->o:[Landroid/animation/Animator;

    .line 69
    const/4 v1, 0x0

    .line 70
    iput v1, p0, Lo/ug;->p:I

    .line 72
    iput-boolean v1, p0, Lo/ug;->q:Z

    .line 74
    iput-boolean v1, p0, Lo/ug;->r:Z

    .line 76
    iput-object v0, p0, Lo/ug;->s:Lo/ug;

    .line 78
    iput-object v0, p0, Lo/ug;->t:Ljava/util/ArrayList;

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    .line 82
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 85
    iput-object v0, p0, Lo/ug;->u:Ljava/util/ArrayList;

    .line 87
    sget-object v0, Lo/ug;->y:Lo/qg;

    .line 89
    iput-object v0, p0, Lo/ug;->v:Lo/qg;

    .line 91
    return-void
.end method

.method public static b(Lo/H5;Landroid/view/View;Lo/Cg;)V
    .locals 12

    .line 1
    const/4 v0, 0x1

    .line 2
    iget-object v1, p0, Lo/H5;->a:Ljava/lang/Object;

    .line 4
    check-cast v1, Lo/E2;

    .line 6
    invoke-virtual {v1, p1, p2}, Lo/Qe;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 12
    move-result p2

    .line 13
    const/4 v1, 0x0

    .line 14
    if-ltz p2, :cond_1

    .line 16
    iget-object v2, p0, Lo/H5;->b:Ljava/lang/Object;

    .line 18
    check-cast v2, Landroid/util/SparseArray;

    .line 20
    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->indexOfKey(I)I

    .line 23
    move-result v3

    .line 24
    if-ltz v3, :cond_0

    .line 26
    invoke-virtual {v2, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    invoke-virtual {v2, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 33
    :cond_1
    :goto_0
    sget-object p2, Lo/Dh;->a:Ljava/util/WeakHashMap;

    .line 35
    invoke-static {p1}, Lo/vh;->f(Landroid/view/View;)Ljava/lang/String;

    .line 38
    move-result-object p2

    .line 39
    if-eqz p2, :cond_3

    .line 41
    iget-object v2, p0, Lo/H5;->d:Ljava/lang/Object;

    .line 43
    check-cast v2, Lo/E2;

    .line 45
    invoke-virtual {v2, p2}, Lo/Qe;->containsKey(Ljava/lang/Object;)Z

    .line 48
    move-result v3

    .line 49
    if-eqz v3, :cond_2

    .line 51
    invoke-virtual {v2, p2, v1}, Lo/Qe;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    goto :goto_1

    .line 55
    :cond_2
    invoke-virtual {v2, p2, p1}, Lo/Qe;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    :cond_3
    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 61
    move-result-object p2

    .line 62
    instance-of p2, p2, Landroid/widget/ListView;

    .line 64
    if-eqz p2, :cond_9

    .line 66
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 69
    move-result-object p2

    .line 70
    check-cast p2, Landroid/widget/ListView;

    .line 72
    invoke-virtual {p2}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    .line 75
    move-result-object v2

    .line 76
    invoke-interface {v2}, Landroid/widget/Adapter;->hasStableIds()Z

    .line 79
    move-result v2

    .line 80
    if-eqz v2, :cond_9

    .line 82
    invoke-virtual {p2, p1}, Landroid/widget/AdapterView;->getPositionForView(Landroid/view/View;)I

    .line 85
    move-result v2

    .line 86
    invoke-virtual {p2, v2}, Landroid/widget/AdapterView;->getItemIdAtPosition(I)J

    .line 89
    move-result-wide v2

    .line 90
    iget-object p0, p0, Lo/H5;->c:Ljava/lang/Object;

    .line 92
    check-cast p0, Lo/za;

    .line 94
    iget-boolean p2, p0, Lo/za;->a:Z

    .line 96
    const/4 v4, 0x0

    .line 97
    if-eqz p2, :cond_7

    .line 99
    iget p2, p0, Lo/za;->d:I

    .line 101
    iget-object v5, p0, Lo/za;->b:[J

    .line 103
    iget-object v6, p0, Lo/za;->c:[Ljava/lang/Object;

    .line 105
    move v7, v4

    .line 106
    move v8, v7

    .line 107
    :goto_2
    if-ge v7, p2, :cond_6

    .line 109
    aget-object v9, v6, v7

    .line 111
    sget-object v10, Lo/x9;->v:Ljava/lang/Object;

    .line 113
    if-eq v9, v10, :cond_5

    .line 115
    if-eq v7, v8, :cond_4

    .line 117
    aget-wide v10, v5, v7

    .line 119
    aput-wide v10, v5, v8

    .line 121
    aput-object v9, v6, v8

    .line 123
    aput-object v1, v6, v7

    .line 125
    :cond_4
    add-int/2addr v8, v0

    .line 126
    :cond_5
    add-int/2addr v7, v0

    .line 127
    goto :goto_2

    .line 128
    :cond_6
    iput-boolean v4, p0, Lo/za;->a:Z

    .line 130
    iput v8, p0, Lo/za;->d:I

    .line 132
    :cond_7
    iget-object p2, p0, Lo/za;->b:[J

    .line 134
    iget v5, p0, Lo/za;->d:I

    .line 136
    invoke-static {p2, v5, v2, v3}, Lo/x9;->e([JIJ)I

    .line 139
    move-result p2

    .line 140
    if-ltz p2, :cond_8

    .line 142
    invoke-virtual {p0, v2, v3}, Lo/za;->b(J)Ljava/lang/Object;

    .line 145
    move-result-object p1

    .line 146
    check-cast p1, Landroid/view/View;

    .line 148
    if-eqz p1, :cond_9

    .line 150
    invoke-virtual {p1, v4}, Landroid/view/View;->setHasTransientState(Z)V

    .line 153
    invoke-virtual {p0, v2, v3, v1}, Lo/za;->d(JLjava/lang/Object;)V

    .line 156
    goto :goto_3

    .line 157
    :cond_8
    invoke-virtual {p1, v0}, Landroid/view/View;->setHasTransientState(Z)V

    .line 160
    invoke-virtual {p0, v2, v3, p1}, Lo/za;->d(JLjava/lang/Object;)V

    .line 163
    :cond_9
    :goto_3
    return-void
.end method

.method public static p()Lo/E2;
    .locals 3

    .line 1
    sget-object v0, Lo/ug;->z:Ljava/lang/ThreadLocal;

    .line 3
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 6
    move-result-object v1

    .line 7
    check-cast v1, Lo/E2;

    .line 9
    if-nez v1, :cond_0

    .line 11
    new-instance v1, Lo/E2;

    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-direct {v1, v2}, Lo/Qe;-><init>(I)V

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 20
    :cond_0
    return-object v1
.end method

.method public static u(Lo/Cg;Lo/Cg;Ljava/lang/String;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lo/Cg;->a:Ljava/util/HashMap;

    .line 3
    invoke-virtual {p0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object p0

    .line 7
    iget-object p1, p1, Lo/Cg;->a:Ljava/util/HashMap;

    .line 9
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    move-result-object p1

    .line 13
    if-nez p0, :cond_0

    .line 15
    if-nez p1, :cond_0

    .line 17
    const/4 p0, 0x0

    .line 18
    goto :goto_1

    .line 19
    :cond_0
    const/4 p2, 0x1

    .line 20
    if-eqz p0, :cond_2

    .line 22
    if-nez p1, :cond_1

    .line 24
    goto :goto_0

    .line 25
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 28
    move-result p0

    .line 29
    xor-int/2addr p0, p2

    .line 30
    goto :goto_1

    .line 31
    :cond_2
    :goto_0
    move p0, p2

    .line 32
    :goto_1
    return p0
.end method


# virtual methods
.method public A(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lo/ug;->c:J

    .line 3
    return-void
.end method

.method public B(Lo/Ha;)V
    .locals 0

    .line 1
    return-void
.end method

.method public C(Landroid/animation/TimeInterpolator;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo/ug;->d:Landroid/animation/TimeInterpolator;

    .line 3
    return-void
.end method

.method public D(Lo/qg;)V
    .locals 0

    .line 1
    if-nez p1, :cond_0

    .line 3
    sget-object p1, Lo/ug;->y:Lo/qg;

    .line 5
    iput-object p1, p0, Lo/ug;->v:Lo/qg;

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iput-object p1, p0, Lo/ug;->v:Lo/qg;

    .line 10
    :goto_0
    return-void
.end method

.method public E()V
    .locals 0

    .line 1
    return-void
.end method

.method public F(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lo/ug;->b:J

    .line 3
    return-void
.end method

.method public final G()V
    .locals 1

    .line 1
    iget v0, p0, Lo/ug;->p:I

    .line 3
    if-nez v0, :cond_0

    .line 5
    sget-object v0, Lo/Y5;->b:Lo/Y5;

    .line 7
    invoke-virtual {p0, p0, v0}, Lo/ug;->v(Lo/ug;Lo/Y5;)V

    .line 10
    const/4 v0, 0x0

    .line 11
    iput-boolean v0, p0, Lo/ug;->r:Z

    .line 13
    :cond_0
    iget v0, p0, Lo/ug;->p:I

    .line 15
    add-int/lit8 v0, v0, 0x1

    .line 17
    iput v0, p0, Lo/ug;->p:I

    .line 19
    return-void
.end method

.method public H(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    const-string p1, "@"

    .line 19
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 25
    move-result p1

    .line 26
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    const-string p1, ": "

    .line 35
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    iget-wide v1, p0, Lo/ug;->c:J

    .line 40
    const-wide/16 v3, -0x1

    .line 42
    cmp-long p1, v1, v3

    .line 44
    const-string v1, ") "

    .line 46
    if-eqz p1, :cond_0

    .line 48
    const-string p1, "dur("

    .line 50
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    iget-wide v5, p0, Lo/ug;->c:J

    .line 55
    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    :cond_0
    iget-wide v5, p0, Lo/ug;->b:J

    .line 63
    cmp-long p1, v5, v3

    .line 65
    if-eqz p1, :cond_1

    .line 67
    const-string p1, "dly("

    .line 69
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    iget-wide v2, p0, Lo/ug;->b:J

    .line 74
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 77
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    :cond_1
    iget-object p1, p0, Lo/ug;->d:Landroid/animation/TimeInterpolator;

    .line 82
    if-eqz p1, :cond_2

    .line 84
    const-string p1, "interp("

    .line 86
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    iget-object p1, p0, Lo/ug;->d:Landroid/animation/TimeInterpolator;

    .line 91
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 94
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    :cond_2
    iget-object p1, p0, Lo/ug;->e:Ljava/util/ArrayList;

    .line 99
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 102
    move-result v1

    .line 103
    iget-object v2, p0, Lo/ug;->f:Ljava/util/ArrayList;

    .line 105
    if-gtz v1, :cond_3

    .line 107
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 110
    move-result v1

    .line 111
    if-lez v1, :cond_8

    .line 113
    :cond_3
    const-string v1, "tgts("

    .line 115
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 121
    move-result v1

    .line 122
    const-string v3, ", "

    .line 124
    const/4 v4, 0x0

    .line 125
    if-lez v1, :cond_5

    .line 127
    move v1, v4

    .line 128
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 131
    move-result v5

    .line 132
    if-ge v1, v5, :cond_5

    .line 134
    if-lez v1, :cond_4

    .line 136
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    :cond_4
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 142
    move-result-object v5

    .line 143
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 146
    add-int/lit8 v1, v1, 0x1

    .line 148
    goto :goto_0

    .line 149
    :cond_5
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 152
    move-result p1

    .line 153
    if-lez p1, :cond_7

    .line 155
    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 158
    move-result p1

    .line 159
    if-ge v4, p1, :cond_7

    .line 161
    if-lez v4, :cond_6

    .line 163
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    :cond_6
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 169
    move-result-object p1

    .line 170
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 173
    add-int/lit8 v4, v4, 0x1

    .line 175
    goto :goto_1

    .line 176
    :cond_7
    const-string p1, ")"

    .line 178
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    :cond_8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 184
    move-result-object p1

    .line 185
    return-object p1
.end method

.method public a(Lo/tg;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lo/ug;->t:Ljava/util/ArrayList;

    .line 3
    if-nez v0, :cond_0

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 10
    iput-object v0, p0, Lo/ug;->t:Ljava/util/ArrayList;

    .line 12
    :cond_0
    iget-object v0, p0, Lo/ug;->t:Ljava/util/ArrayList;

    .line 14
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 17
    return-void
.end method

.method public c()V
    .locals 4

    .line 1
    iget-object v0, p0, Lo/ug;->n:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    move-result v1

    .line 7
    iget-object v2, p0, Lo/ug;->o:[Landroid/animation/Animator;

    .line 9
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 12
    move-result-object v0

    .line 13
    check-cast v0, [Landroid/animation/Animator;

    .line 15
    sget-object v2, Lo/ug;->w:[Landroid/animation/Animator;

    .line 17
    iput-object v2, p0, Lo/ug;->o:[Landroid/animation/Animator;

    .line 19
    add-int/lit8 v1, v1, -0x1

    .line 21
    :goto_0
    if-ltz v1, :cond_0

    .line 23
    aget-object v2, v0, v1

    .line 25
    const/4 v3, 0x0

    .line 26
    aput-object v3, v0, v1

    .line 28
    invoke-virtual {v2}, Landroid/animation/Animator;->cancel()V

    .line 31
    add-int/lit8 v1, v1, -0x1

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    iput-object v0, p0, Lo/ug;->o:[Landroid/animation/Animator;

    .line 36
    sget-object v0, Lo/Y5;->d:Lo/Y5;

    .line 38
    invoke-virtual {p0, p0, v0}, Lo/ug;->v(Lo/ug;Lo/Y5;)V

    .line 41
    return-void
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lo/ug;->j()Lo/ug;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public abstract d(Lo/Cg;)V
.end method

.method public final e(Landroid/view/View;Z)V
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 3
    return-void

    .line 4
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 7
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 10
    move-result-object v0

    .line 11
    instance-of v0, v0, Landroid/view/ViewGroup;

    .line 13
    if-eqz v0, :cond_3

    .line 15
    new-instance v0, Lo/Cg;

    .line 17
    invoke-direct {v0, p1}, Lo/Cg;-><init>(Landroid/view/View;)V

    .line 20
    if-eqz p2, :cond_1

    .line 22
    invoke-virtual {p0, v0}, Lo/ug;->g(Lo/Cg;)V

    .line 25
    goto :goto_0

    .line 26
    :cond_1
    invoke-virtual {p0, v0}, Lo/ug;->d(Lo/Cg;)V

    .line 29
    :goto_0
    iget-object v1, v0, Lo/Cg;->c:Ljava/util/ArrayList;

    .line 31
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    invoke-virtual {p0, v0}, Lo/ug;->f(Lo/Cg;)V

    .line 37
    if-eqz p2, :cond_2

    .line 39
    iget-object v1, p0, Lo/ug;->g:Lo/H5;

    .line 41
    invoke-static {v1, p1, v0}, Lo/ug;->b(Lo/H5;Landroid/view/View;Lo/Cg;)V

    .line 44
    goto :goto_1

    .line 45
    :cond_2
    iget-object v1, p0, Lo/ug;->h:Lo/H5;

    .line 47
    invoke-static {v1, p1, v0}, Lo/ug;->b(Lo/H5;Landroid/view/View;Lo/Cg;)V

    .line 50
    :cond_3
    :goto_1
    instance-of v0, p1, Landroid/view/ViewGroup;

    .line 52
    if-eqz v0, :cond_4

    .line 54
    check-cast p1, Landroid/view/ViewGroup;

    .line 56
    const/4 v0, 0x0

    .line 57
    :goto_2
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 60
    move-result v1

    .line 61
    if-ge v0, v1, :cond_4

    .line 63
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 66
    move-result-object v1

    .line 67
    invoke-virtual {p0, v1, p2}, Lo/ug;->e(Landroid/view/View;Z)V

    .line 70
    add-int/lit8 v0, v0, 0x1

    .line 72
    goto :goto_2

    .line 73
    :cond_4
    return-void
.end method

.method public f(Lo/Cg;)V
    .locals 0

    .line 1
    return-void
.end method

.method public abstract g(Lo/Cg;)V
.end method

.method public final h(Landroid/widget/FrameLayout;Z)V
    .locals 7

    .line 1
    invoke-virtual {p0, p2}, Lo/ug;->i(Z)V

    .line 4
    iget-object v0, p0, Lo/ug;->e:Ljava/util/ArrayList;

    .line 6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 9
    move-result v1

    .line 10
    iget-object v2, p0, Lo/ug;->f:Ljava/util/ArrayList;

    .line 12
    if-gtz v1, :cond_1

    .line 14
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 17
    move-result v1

    .line 18
    if-lez v1, :cond_0

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-virtual {p0, p1, p2}, Lo/ug;->e(Landroid/view/View;Z)V

    .line 24
    goto/16 :goto_7

    .line 26
    :cond_1
    :goto_0
    const/4 v1, 0x0

    .line 27
    move v3, v1

    .line 28
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 31
    move-result v4

    .line 32
    if-ge v3, v4, :cond_5

    .line 34
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 37
    move-result-object v4

    .line 38
    check-cast v4, Ljava/lang/Integer;

    .line 40
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 43
    move-result v4

    .line 44
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 47
    move-result-object v4

    .line 48
    if-eqz v4, :cond_4

    .line 50
    new-instance v5, Lo/Cg;

    .line 52
    invoke-direct {v5, v4}, Lo/Cg;-><init>(Landroid/view/View;)V

    .line 55
    if-eqz p2, :cond_2

    .line 57
    invoke-virtual {p0, v5}, Lo/ug;->g(Lo/Cg;)V

    .line 60
    goto :goto_2

    .line 61
    :cond_2
    invoke-virtual {p0, v5}, Lo/ug;->d(Lo/Cg;)V

    .line 64
    :goto_2
    iget-object v6, v5, Lo/Cg;->c:Ljava/util/ArrayList;

    .line 66
    invoke-virtual {v6, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    invoke-virtual {p0, v5}, Lo/ug;->f(Lo/Cg;)V

    .line 72
    if-eqz p2, :cond_3

    .line 74
    iget-object v6, p0, Lo/ug;->g:Lo/H5;

    .line 76
    invoke-static {v6, v4, v5}, Lo/ug;->b(Lo/H5;Landroid/view/View;Lo/Cg;)V

    .line 79
    goto :goto_3

    .line 80
    :cond_3
    iget-object v6, p0, Lo/ug;->h:Lo/H5;

    .line 82
    invoke-static {v6, v4, v5}, Lo/ug;->b(Lo/H5;Landroid/view/View;Lo/Cg;)V

    .line 85
    :cond_4
    :goto_3
    add-int/lit8 v3, v3, 0x1

    .line 87
    goto :goto_1

    .line 88
    :cond_5
    :goto_4
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 91
    move-result p1

    .line 92
    if-ge v1, p1, :cond_8

    .line 94
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 97
    move-result-object p1

    .line 98
    check-cast p1, Landroid/view/View;

    .line 100
    new-instance v0, Lo/Cg;

    .line 102
    invoke-direct {v0, p1}, Lo/Cg;-><init>(Landroid/view/View;)V

    .line 105
    if-eqz p2, :cond_6

    .line 107
    invoke-virtual {p0, v0}, Lo/ug;->g(Lo/Cg;)V

    .line 110
    goto :goto_5

    .line 111
    :cond_6
    invoke-virtual {p0, v0}, Lo/ug;->d(Lo/Cg;)V

    .line 114
    :goto_5
    iget-object v3, v0, Lo/Cg;->c:Ljava/util/ArrayList;

    .line 116
    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 119
    invoke-virtual {p0, v0}, Lo/ug;->f(Lo/Cg;)V

    .line 122
    if-eqz p2, :cond_7

    .line 124
    iget-object v3, p0, Lo/ug;->g:Lo/H5;

    .line 126
    invoke-static {v3, p1, v0}, Lo/ug;->b(Lo/H5;Landroid/view/View;Lo/Cg;)V

    .line 129
    goto :goto_6

    .line 130
    :cond_7
    iget-object v3, p0, Lo/ug;->h:Lo/H5;

    .line 132
    invoke-static {v3, p1, v0}, Lo/ug;->b(Lo/H5;Landroid/view/View;Lo/Cg;)V

    .line 135
    :goto_6
    add-int/lit8 v1, v1, 0x1

    .line 137
    goto :goto_4

    .line 138
    :cond_8
    :goto_7
    return-void
.end method

.method public final i(Z)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lo/ug;->g:Lo/H5;

    .line 5
    iget-object p1, p1, Lo/H5;->a:Ljava/lang/Object;

    .line 7
    check-cast p1, Lo/E2;

    .line 9
    invoke-virtual {p1}, Lo/Qe;->clear()V

    .line 12
    iget-object p1, p0, Lo/ug;->g:Lo/H5;

    .line 14
    iget-object p1, p1, Lo/H5;->b:Ljava/lang/Object;

    .line 16
    check-cast p1, Landroid/util/SparseArray;

    .line 18
    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    .line 21
    iget-object p1, p0, Lo/ug;->g:Lo/H5;

    .line 23
    iget-object p1, p1, Lo/H5;->c:Ljava/lang/Object;

    .line 25
    check-cast p1, Lo/za;

    .line 27
    invoke-virtual {p1}, Lo/za;->a()V

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    iget-object p1, p0, Lo/ug;->h:Lo/H5;

    .line 33
    iget-object p1, p1, Lo/H5;->a:Ljava/lang/Object;

    .line 35
    check-cast p1, Lo/E2;

    .line 37
    invoke-virtual {p1}, Lo/Qe;->clear()V

    .line 40
    iget-object p1, p0, Lo/ug;->h:Lo/H5;

    .line 42
    iget-object p1, p1, Lo/H5;->b:Ljava/lang/Object;

    .line 44
    check-cast p1, Landroid/util/SparseArray;

    .line 46
    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    .line 49
    iget-object p1, p0, Lo/ug;->h:Lo/H5;

    .line 51
    iget-object p1, p1, Lo/H5;->c:Ljava/lang/Object;

    .line 53
    check-cast p1, Lo/za;

    .line 55
    invoke-virtual {p1}, Lo/za;->a()V

    .line 58
    :goto_0
    return-void
.end method

.method public j()Lo/ug;
    .locals 3

    .line 1
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lo/ug;

    .line 7
    new-instance v1, Ljava/util/ArrayList;

    .line 9
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 12
    iput-object v1, v0, Lo/ug;->u:Ljava/util/ArrayList;

    .line 14
    new-instance v1, Lo/H5;

    .line 16
    const/4 v2, 0x5

    .line 17
    invoke-direct {v1, v2}, Lo/H5;-><init>(I)V

    .line 20
    iput-object v1, v0, Lo/ug;->g:Lo/H5;

    .line 22
    new-instance v1, Lo/H5;

    .line 24
    const/4 v2, 0x5

    .line 25
    invoke-direct {v1, v2}, Lo/H5;-><init>(I)V

    .line 28
    iput-object v1, v0, Lo/ug;->h:Lo/H5;

    .line 30
    const/4 v1, 0x0

    .line 31
    iput-object v1, v0, Lo/ug;->k:Ljava/util/ArrayList;

    .line 33
    iput-object v1, v0, Lo/ug;->l:Ljava/util/ArrayList;

    .line 35
    iput-object p0, v0, Lo/ug;->s:Lo/ug;

    .line 37
    iput-object v1, v0, Lo/ug;->t:Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    return-object v0

    .line 40
    :catch_0
    move-exception v0

    .line 41
    new-instance v1, Ljava/lang/RuntimeException;

    .line 43
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 46
    throw v1
.end method

.method public k(Landroid/widget/FrameLayout;Lo/Cg;Lo/Cg;)Landroid/animation/Animator;
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    return-object p1
.end method

.method public l(Landroid/widget/FrameLayout;Lo/H5;Lo/H5;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 3
    invoke-static {}, Lo/ug;->p()Lo/E2;

    .line 6
    move-result-object v1

    .line 7
    new-instance v2, Landroid/util/SparseIntArray;

    .line 9
    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    .line 12
    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    .line 15
    move-result v3

    .line 16
    invoke-virtual/range {p0 .. p0}, Lo/ug;->o()Lo/ug;

    .line 19
    move-result-object v4

    .line 20
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    const/4 v5, 0x0

    .line 24
    :goto_0
    if-ge v5, v3, :cond_c

    .line 26
    move-object/from16 v6, p4

    .line 28
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 31
    move-result-object v7

    .line 32
    check-cast v7, Lo/Cg;

    .line 34
    move-object/from16 v8, p5

    .line 36
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 39
    move-result-object v9

    .line 40
    check-cast v9, Lo/Cg;

    .line 42
    if-eqz v7, :cond_0

    .line 44
    iget-object v11, v7, Lo/Cg;->c:Ljava/util/ArrayList;

    .line 46
    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 49
    move-result v11

    .line 50
    if-nez v11, :cond_0

    .line 52
    const/4 v7, 0x0

    .line 53
    :cond_0
    if-eqz v9, :cond_1

    .line 55
    iget-object v11, v9, Lo/Cg;->c:Ljava/util/ArrayList;

    .line 57
    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 60
    move-result v11

    .line 61
    if-nez v11, :cond_1

    .line 63
    const/4 v9, 0x0

    .line 64
    :cond_1
    if-nez v7, :cond_4

    .line 66
    if-nez v9, :cond_4

    .line 68
    :cond_2
    move-object/from16 v11, p1

    .line 70
    :cond_3
    move-object/from16 v15, p3

    .line 72
    move/from16 v16, v3

    .line 74
    goto/16 :goto_5

    .line 76
    :cond_4
    if-eqz v7, :cond_5

    .line 78
    if-eqz v9, :cond_5

    .line 80
    invoke-virtual {v0, v7, v9}, Lo/ug;->s(Lo/Cg;Lo/Cg;)Z

    .line 83
    move-result v11

    .line 84
    if-eqz v11, :cond_2

    .line 86
    :cond_5
    move-object/from16 v11, p1

    .line 88
    invoke-virtual {v0, v11, v7, v9}, Lo/ug;->k(Landroid/widget/FrameLayout;Lo/Cg;Lo/Cg;)Landroid/animation/Animator;

    .line 91
    move-result-object v12

    .line 92
    if-eqz v12, :cond_3

    .line 94
    iget-object v13, v0, Lo/ug;->a:Ljava/lang/String;

    .line 96
    if-eqz v9, :cond_a

    .line 98
    invoke-virtual/range {p0 .. p0}, Lo/ug;->q()[Ljava/lang/String;

    .line 101
    move-result-object v7

    .line 102
    iget-object v9, v9, Lo/Cg;->b:Landroid/view/View;

    .line 104
    if-eqz v7, :cond_9

    .line 106
    array-length v14, v7

    .line 107
    if-lez v14, :cond_9

    .line 109
    new-instance v14, Lo/Cg;

    .line 111
    invoke-direct {v14, v9}, Lo/Cg;-><init>(Landroid/view/View;)V

    .line 114
    move-object/from16 v15, p3

    .line 116
    iget-object v4, v15, Lo/H5;->a:Ljava/lang/Object;

    .line 118
    check-cast v4, Lo/E2;

    .line 120
    invoke-virtual {v4, v9}, Lo/Qe;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    move-result-object v4

    .line 124
    check-cast v4, Lo/Cg;

    .line 126
    move/from16 v16, v3

    .line 128
    if-eqz v4, :cond_6

    .line 130
    const/4 v10, 0x0

    .line 131
    :goto_1
    array-length v3, v7

    .line 132
    if-ge v10, v3, :cond_6

    .line 134
    iget-object v3, v14, Lo/Cg;->a:Ljava/util/HashMap;

    .line 136
    aget-object v6, v7, v10

    .line 138
    move-object/from16 v17, v7

    .line 140
    iget-object v7, v4, Lo/Cg;->a:Ljava/util/HashMap;

    .line 142
    invoke-virtual {v7, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    move-result-object v7

    .line 146
    invoke-virtual {v3, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    add-int/lit8 v10, v10, 0x1

    .line 151
    move-object/from16 v6, p4

    .line 153
    move-object/from16 v7, v17

    .line 155
    goto :goto_1

    .line 156
    :cond_6
    iget v3, v1, Lo/Qe;->c:I

    .line 158
    const/4 v4, 0x0

    .line 159
    :goto_2
    if-ge v4, v3, :cond_8

    .line 161
    invoke-virtual {v1, v4}, Lo/Qe;->f(I)Ljava/lang/Object;

    .line 164
    move-result-object v6

    .line 165
    check-cast v6, Landroid/animation/Animator;

    .line 167
    invoke-virtual {v1, v6}, Lo/Qe;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    move-result-object v6

    .line 171
    check-cast v6, Lo/sg;

    .line 173
    iget-object v7, v6, Lo/sg;->c:Lo/Cg;

    .line 175
    if-eqz v7, :cond_7

    .line 177
    iget-object v7, v6, Lo/sg;->a:Landroid/view/View;

    .line 179
    if-ne v7, v9, :cond_7

    .line 181
    iget-object v7, v6, Lo/sg;->b:Ljava/lang/String;

    .line 183
    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 186
    move-result v7

    .line 187
    if-eqz v7, :cond_7

    .line 189
    iget-object v6, v6, Lo/sg;->c:Lo/Cg;

    .line 191
    invoke-virtual {v6, v14}, Lo/Cg;->equals(Ljava/lang/Object;)Z

    .line 194
    move-result v6

    .line 195
    if-eqz v6, :cond_7

    .line 197
    const/4 v10, 0x0

    .line 198
    goto :goto_3

    .line 199
    :cond_7
    add-int/lit8 v4, v4, 0x1

    .line 201
    goto :goto_2

    .line 202
    :cond_8
    move-object v10, v12

    .line 203
    goto :goto_3

    .line 204
    :cond_9
    move-object/from16 v15, p3

    .line 206
    move/from16 v16, v3

    .line 208
    move-object v10, v12

    .line 209
    const/4 v14, 0x0

    .line 210
    :goto_3
    move-object v12, v10

    .line 211
    move-object v10, v14

    .line 212
    goto :goto_4

    .line 213
    :cond_a
    move-object/from16 v15, p3

    .line 215
    move/from16 v16, v3

    .line 217
    iget-object v9, v7, Lo/Cg;->b:Landroid/view/View;

    .line 219
    const/4 v10, 0x0

    .line 220
    :goto_4
    if-eqz v12, :cond_b

    .line 222
    new-instance v3, Lo/sg;

    .line 224
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWindowId()Landroid/view/WindowId;

    .line 227
    move-result-object v4

    .line 228
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 231
    iput-object v9, v3, Lo/sg;->a:Landroid/view/View;

    .line 233
    iput-object v13, v3, Lo/sg;->b:Ljava/lang/String;

    .line 235
    iput-object v10, v3, Lo/sg;->c:Lo/Cg;

    .line 237
    iput-object v4, v3, Lo/sg;->d:Landroid/view/WindowId;

    .line 239
    iput-object v0, v3, Lo/sg;->e:Lo/ug;

    .line 241
    iput-object v12, v3, Lo/sg;->f:Landroid/animation/Animator;

    .line 243
    invoke-virtual {v1, v12, v3}, Lo/Qe;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    iget-object v3, v0, Lo/ug;->u:Ljava/util/ArrayList;

    .line 248
    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 251
    :cond_b
    :goto_5
    add-int/lit8 v5, v5, 0x1

    .line 253
    move/from16 v3, v16

    .line 255
    goto/16 :goto_0

    .line 257
    :cond_c
    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    .line 260
    move-result v3

    .line 261
    if-eqz v3, :cond_d

    .line 263
    const/4 v4, 0x0

    .line 264
    :goto_6
    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    .line 267
    move-result v3

    .line 268
    if-ge v4, v3, :cond_d

    .line 270
    invoke-virtual {v2, v4}, Landroid/util/SparseIntArray;->keyAt(I)I

    .line 273
    move-result v3

    .line 274
    iget-object v5, v0, Lo/ug;->u:Ljava/util/ArrayList;

    .line 276
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 279
    move-result-object v3

    .line 280
    check-cast v3, Landroid/animation/Animator;

    .line 282
    invoke-virtual {v1, v3}, Lo/Qe;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    move-result-object v3

    .line 286
    check-cast v3, Lo/sg;

    .line 288
    invoke-virtual {v2, v4}, Landroid/util/SparseIntArray;->valueAt(I)I

    .line 291
    move-result v5

    .line 292
    int-to-long v5, v5

    .line 293
    const-wide v7, 0x7fffffffffffffffL

    .line 298
    sub-long/2addr v5, v7

    .line 299
    iget-object v7, v3, Lo/sg;->f:Landroid/animation/Animator;

    .line 301
    invoke-virtual {v7}, Landroid/animation/Animator;->getStartDelay()J

    .line 304
    move-result-wide v7

    .line 305
    add-long/2addr v7, v5

    .line 306
    iget-object v3, v3, Lo/sg;->f:Landroid/animation/Animator;

    .line 308
    invoke-virtual {v3, v7, v8}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 311
    add-int/lit8 v4, v4, 0x1

    .line 313
    goto :goto_6

    .line 314
    :cond_d
    return-void
.end method

.method public final m()V
    .locals 4

    .line 1
    iget v0, p0, Lo/ug;->p:I

    .line 3
    const/4 v1, 0x1

    .line 4
    sub-int/2addr v0, v1

    .line 5
    iput v0, p0, Lo/ug;->p:I

    .line 7
    if-nez v0, :cond_4

    .line 9
    sget-object v0, Lo/Y5;->c:Lo/Y5;

    .line 11
    invoke-virtual {p0, p0, v0}, Lo/ug;->v(Lo/ug;Lo/Y5;)V

    .line 14
    const/4 v0, 0x0

    .line 15
    move v2, v0

    .line 16
    :goto_0
    iget-object v3, p0, Lo/ug;->g:Lo/H5;

    .line 18
    iget-object v3, v3, Lo/H5;->c:Ljava/lang/Object;

    .line 20
    check-cast v3, Lo/za;

    .line 22
    invoke-virtual {v3}, Lo/za;->e()I

    .line 25
    move-result v3

    .line 26
    if-ge v2, v3, :cond_1

    .line 28
    iget-object v3, p0, Lo/ug;->g:Lo/H5;

    .line 30
    iget-object v3, v3, Lo/H5;->c:Ljava/lang/Object;

    .line 32
    check-cast v3, Lo/za;

    .line 34
    invoke-virtual {v3, v2}, Lo/za;->f(I)Ljava/lang/Object;

    .line 37
    move-result-object v3

    .line 38
    check-cast v3, Landroid/view/View;

    .line 40
    if-eqz v3, :cond_0

    .line 42
    invoke-virtual {v3, v0}, Landroid/view/View;->setHasTransientState(Z)V

    .line 45
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 47
    goto :goto_0

    .line 48
    :cond_1
    move v2, v0

    .line 49
    :goto_1
    iget-object v3, p0, Lo/ug;->h:Lo/H5;

    .line 51
    iget-object v3, v3, Lo/H5;->c:Ljava/lang/Object;

    .line 53
    check-cast v3, Lo/za;

    .line 55
    invoke-virtual {v3}, Lo/za;->e()I

    .line 58
    move-result v3

    .line 59
    if-ge v2, v3, :cond_3

    .line 61
    iget-object v3, p0, Lo/ug;->h:Lo/H5;

    .line 63
    iget-object v3, v3, Lo/H5;->c:Ljava/lang/Object;

    .line 65
    check-cast v3, Lo/za;

    .line 67
    invoke-virtual {v3, v2}, Lo/za;->f(I)Ljava/lang/Object;

    .line 70
    move-result-object v3

    .line 71
    check-cast v3, Landroid/view/View;

    .line 73
    if-eqz v3, :cond_2

    .line 75
    invoke-virtual {v3, v0}, Landroid/view/View;->setHasTransientState(Z)V

    .line 78
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 80
    goto :goto_1

    .line 81
    :cond_3
    iput-boolean v1, p0, Lo/ug;->r:Z

    .line 83
    :cond_4
    return-void
.end method

.method public final n(Landroid/view/View;Z)Lo/Cg;
    .locals 5

    .line 1
    iget-object v0, p0, Lo/ug;->i:Lo/K2;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0, p1, p2}, Lo/ug;->n(Landroid/view/View;Z)Lo/Cg;

    .line 8
    move-result-object p1

    .line 9
    return-object p1

    .line 10
    :cond_0
    if-eqz p2, :cond_1

    .line 12
    iget-object v0, p0, Lo/ug;->k:Ljava/util/ArrayList;

    .line 14
    goto :goto_0

    .line 15
    :cond_1
    iget-object v0, p0, Lo/ug;->l:Ljava/util/ArrayList;

    .line 17
    :goto_0
    const/4 v1, 0x0

    .line 18
    if-nez v0, :cond_2

    .line 20
    return-object v1

    .line 21
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 24
    move-result v2

    .line 25
    const/4 v3, 0x0

    .line 26
    :goto_1
    if-ge v3, v2, :cond_5

    .line 28
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 31
    move-result-object v4

    .line 32
    check-cast v4, Lo/Cg;

    .line 34
    if-nez v4, :cond_3

    .line 36
    return-object v1

    .line 37
    :cond_3
    iget-object v4, v4, Lo/Cg;->b:Landroid/view/View;

    .line 39
    if-ne v4, p1, :cond_4

    .line 41
    goto :goto_2

    .line 42
    :cond_4
    add-int/lit8 v3, v3, 0x1

    .line 44
    goto :goto_1

    .line 45
    :cond_5
    const/4 v3, -0x1

    .line 46
    :goto_2
    if-ltz v3, :cond_7

    .line 48
    if-eqz p2, :cond_6

    .line 50
    iget-object p1, p0, Lo/ug;->l:Ljava/util/ArrayList;

    .line 52
    goto :goto_3

    .line 53
    :cond_6
    iget-object p1, p0, Lo/ug;->k:Ljava/util/ArrayList;

    .line 55
    :goto_3
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 58
    move-result-object p1

    .line 59
    move-object v1, p1

    .line 60
    check-cast v1, Lo/Cg;

    .line 62
    :cond_7
    return-object v1
.end method

.method public final o()Lo/ug;
    .locals 1

    .line 1
    iget-object v0, p0, Lo/ug;->i:Lo/K2;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Lo/ug;->o()Lo/ug;

    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_0
    return-object p0
.end method

.method public q()[Ljava/lang/String;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method

.method public final r(Landroid/view/View;Z)Lo/Cg;
    .locals 1

    .line 1
    iget-object v0, p0, Lo/ug;->i:Lo/K2;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0, p1, p2}, Lo/ug;->r(Landroid/view/View;Z)Lo/Cg;

    .line 8
    move-result-object p1

    .line 9
    return-object p1

    .line 10
    :cond_0
    if-eqz p2, :cond_1

    .line 12
    iget-object p2, p0, Lo/ug;->g:Lo/H5;

    .line 14
    goto :goto_0

    .line 15
    :cond_1
    iget-object p2, p0, Lo/ug;->h:Lo/H5;

    .line 17
    :goto_0
    iget-object p2, p2, Lo/H5;->a:Ljava/lang/Object;

    .line 19
    check-cast p2, Lo/E2;

    .line 21
    invoke-virtual {p2, p1}, Lo/Qe;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    move-result-object p1

    .line 25
    check-cast p1, Lo/Cg;

    .line 27
    return-object p1
.end method

.method public s(Lo/Cg;Lo/Cg;)Z
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_3

    .line 4
    if-eqz p2, :cond_3

    .line 6
    invoke-virtual {p0}, Lo/ug;->q()[Ljava/lang/String;

    .line 9
    move-result-object v1

    .line 10
    const/4 v2, 0x1

    .line 11
    if-eqz v1, :cond_1

    .line 13
    array-length v3, v1

    .line 14
    move v4, v0

    .line 15
    :goto_0
    if-ge v4, v3, :cond_3

    .line 17
    aget-object v5, v1, v4

    .line 19
    invoke-static {p1, p2, v5}, Lo/ug;->u(Lo/Cg;Lo/Cg;Ljava/lang/String;)Z

    .line 22
    move-result v5

    .line 23
    if-eqz v5, :cond_0

    .line 25
    goto :goto_1

    .line 26
    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    iget-object v1, p1, Lo/Cg;->a:Ljava/util/HashMap;

    .line 31
    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 34
    move-result-object v1

    .line 35
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 38
    move-result-object v1

    .line 39
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 42
    move-result v3

    .line 43
    if-eqz v3, :cond_3

    .line 45
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 48
    move-result-object v3

    .line 49
    check-cast v3, Ljava/lang/String;

    .line 51
    invoke-static {p1, p2, v3}, Lo/ug;->u(Lo/Cg;Lo/Cg;Ljava/lang/String;)Z

    .line 54
    move-result v3

    .line 55
    if-eqz v3, :cond_2

    .line 57
    :goto_1
    move v0, v2

    .line 58
    :cond_3
    return v0
.end method

.method public final t(Landroid/view/View;)Z
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lo/ug;->e:Ljava/util/ArrayList;

    .line 7
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 10
    move-result v2

    .line 11
    const/4 v3, 0x1

    .line 12
    iget-object v4, p0, Lo/ug;->f:Ljava/util/ArrayList;

    .line 14
    if-nez v2, :cond_0

    .line 16
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 19
    move-result v2

    .line 20
    if-nez v2, :cond_0

    .line 22
    return v3

    .line 23
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 30
    move-result v0

    .line 31
    if-nez v0, :cond_2

    .line 33
    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 36
    move-result p1

    .line 37
    if-eqz p1, :cond_1

    .line 39
    goto :goto_0

    .line 40
    :cond_1
    const/4 p1, 0x0

    .line 41
    return p1

    .line 42
    :cond_2
    :goto_0
    return v3
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, ""

    .line 3
    invoke-virtual {p0, v0}, Lo/ug;->H(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final v(Lo/ug;Lo/Y5;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lo/ug;->s:Lo/ug;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0, p1, p2}, Lo/ug;->v(Lo/ug;Lo/Y5;)V

    .line 8
    :cond_0
    iget-object v0, p0, Lo/ug;->t:Ljava/util/ArrayList;

    .line 10
    if-eqz v0, :cond_3

    .line 12
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_3

    .line 18
    iget-object v0, p0, Lo/ug;->t:Ljava/util/ArrayList;

    .line 20
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 23
    move-result v0

    .line 24
    iget-object v1, p0, Lo/ug;->m:[Lo/tg;

    .line 26
    if-nez v1, :cond_1

    .line 28
    new-array v1, v0, [Lo/tg;

    .line 30
    :cond_1
    const/4 v2, 0x0

    .line 31
    iput-object v2, p0, Lo/ug;->m:[Lo/tg;

    .line 33
    iget-object v3, p0, Lo/ug;->t:Ljava/util/ArrayList;

    .line 35
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 38
    move-result-object v1

    .line 39
    check-cast v1, [Lo/tg;

    .line 41
    const/4 v3, 0x0

    .line 42
    :goto_0
    if-ge v3, v0, :cond_2

    .line 44
    aget-object v4, v1, v3

    .line 46
    iget v5, p2, Lo/Y5;->a:I

    .line 48
    packed-switch v5, :pswitch_data_0

    .line 51
    invoke-interface {v4}, Lo/tg;->e()V

    .line 54
    goto :goto_1

    .line 55
    :pswitch_0
    invoke-interface {v4}, Lo/tg;->d()V

    .line 58
    goto :goto_1

    .line 59
    :pswitch_1
    invoke-interface {v4, p1}, Lo/tg;->c(Lo/ug;)V

    .line 62
    goto :goto_1

    .line 63
    :pswitch_2
    invoke-interface {v4, p1}, Lo/tg;->a(Lo/ug;)V

    .line 66
    goto :goto_1

    .line 67
    :pswitch_3
    invoke-interface {v4, p1}, Lo/tg;->f(Lo/ug;)V

    .line 70
    :goto_1
    aput-object v2, v1, v3

    .line 72
    add-int/lit8 v3, v3, 0x1

    .line 74
    goto :goto_0

    .line 75
    :cond_2
    iput-object v1, p0, Lo/ug;->m:[Lo/tg;

    .line 77
    :cond_3
    return-void

    nop

    .line 79
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public w(Landroid/view/ViewGroup;)V
    .locals 4

    .line 1
    iget-boolean p1, p0, Lo/ug;->r:Z

    .line 3
    if-nez p1, :cond_1

    .line 5
    iget-object p1, p0, Lo/ug;->n:Ljava/util/ArrayList;

    .line 7
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 10
    move-result v0

    .line 11
    iget-object v1, p0, Lo/ug;->o:[Landroid/animation/Animator;

    .line 13
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 16
    move-result-object p1

    .line 17
    check-cast p1, [Landroid/animation/Animator;

    .line 19
    sget-object v1, Lo/ug;->w:[Landroid/animation/Animator;

    .line 21
    iput-object v1, p0, Lo/ug;->o:[Landroid/animation/Animator;

    .line 23
    const/4 v1, 0x1

    .line 24
    sub-int/2addr v0, v1

    .line 25
    :goto_0
    if-ltz v0, :cond_0

    .line 27
    aget-object v2, p1, v0

    .line 29
    const/4 v3, 0x0

    .line 30
    aput-object v3, p1, v0

    .line 32
    invoke-virtual {v2}, Landroid/animation/Animator;->pause()V

    .line 35
    add-int/lit8 v0, v0, -0x1

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    iput-object p1, p0, Lo/ug;->o:[Landroid/animation/Animator;

    .line 40
    sget-object p1, Lo/Y5;->e:Lo/Y5;

    .line 42
    invoke-virtual {p0, p0, p1}, Lo/ug;->v(Lo/ug;Lo/Y5;)V

    .line 45
    iput-boolean v1, p0, Lo/ug;->q:Z

    .line 47
    :cond_1
    return-void
.end method

.method public x(Lo/tg;)Lo/ug;
    .locals 1

    .line 1
    iget-object v0, p0, Lo/ug;->t:Ljava/util/ArrayList;

    .line 3
    if-nez v0, :cond_0

    .line 5
    return-object p0

    .line 6
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_1

    .line 12
    iget-object v0, p0, Lo/ug;->s:Lo/ug;

    .line 14
    if-eqz v0, :cond_1

    .line 16
    invoke-virtual {v0, p1}, Lo/ug;->x(Lo/tg;)Lo/ug;

    .line 19
    :cond_1
    iget-object p1, p0, Lo/ug;->t:Ljava/util/ArrayList;

    .line 21
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 24
    move-result p1

    .line 25
    if-nez p1, :cond_2

    .line 27
    const/4 p1, 0x0

    .line 28
    iput-object p1, p0, Lo/ug;->t:Ljava/util/ArrayList;

    .line 30
    :cond_2
    return-object p0
.end method

.method public y(Landroid/widget/FrameLayout;)V
    .locals 3

    .line 1
    iget-boolean p1, p0, Lo/ug;->q:Z

    .line 3
    if-eqz p1, :cond_2

    .line 5
    iget-boolean p1, p0, Lo/ug;->r:Z

    .line 7
    if-nez p1, :cond_1

    .line 9
    iget-object p1, p0, Lo/ug;->n:Ljava/util/ArrayList;

    .line 11
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 14
    move-result v0

    .line 15
    iget-object v1, p0, Lo/ug;->o:[Landroid/animation/Animator;

    .line 17
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 20
    move-result-object p1

    .line 21
    check-cast p1, [Landroid/animation/Animator;

    .line 23
    sget-object v1, Lo/ug;->w:[Landroid/animation/Animator;

    .line 25
    iput-object v1, p0, Lo/ug;->o:[Landroid/animation/Animator;

    .line 27
    add-int/lit8 v0, v0, -0x1

    .line 29
    :goto_0
    if-ltz v0, :cond_0

    .line 31
    aget-object v1, p1, v0

    .line 33
    const/4 v2, 0x0

    .line 34
    aput-object v2, p1, v0

    .line 36
    invoke-virtual {v1}, Landroid/animation/Animator;->resume()V

    .line 39
    add-int/lit8 v0, v0, -0x1

    .line 41
    goto :goto_0

    .line 42
    :cond_0
    iput-object p1, p0, Lo/ug;->o:[Landroid/animation/Animator;

    .line 44
    sget-object p1, Lo/Y5;->f:Lo/Y5;

    .line 46
    invoke-virtual {p0, p0, p1}, Lo/ug;->v(Lo/ug;Lo/Y5;)V

    .line 49
    :cond_1
    const/4 p1, 0x0

    .line 50
    iput-boolean p1, p0, Lo/ug;->q:Z

    .line 52
    :cond_2
    return-void
.end method

.method public z()V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lo/ug;->G()V

    .line 4
    invoke-static {}, Lo/ug;->p()Lo/E2;

    .line 7
    move-result-object v0

    .line 8
    iget-object v1, p0, Lo/ug;->u:Ljava/util/ArrayList;

    .line 10
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 13
    move-result-object v1

    .line 14
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    move-result v2

    .line 18
    if-eqz v2, :cond_4

    .line 20
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    move-result-object v2

    .line 24
    check-cast v2, Landroid/animation/Animator;

    .line 26
    invoke-virtual {v0, v2}, Lo/Qe;->containsKey(Ljava/lang/Object;)Z

    .line 29
    move-result v3

    .line 30
    if-eqz v3, :cond_0

    .line 32
    invoke-virtual {p0}, Lo/ug;->G()V

    .line 35
    if-eqz v2, :cond_0

    .line 37
    new-instance v3, Lo/rg;

    .line 39
    invoke-direct {v3, p0, v0}, Lo/rg;-><init>(Lo/ug;Lo/E2;)V

    .line 42
    invoke-virtual {v2, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 45
    iget-wide v3, p0, Lo/ug;->c:J

    .line 47
    const-wide/16 v5, 0x0

    .line 49
    cmp-long v7, v3, v5

    .line 51
    if-ltz v7, :cond_1

    .line 53
    invoke-virtual {v2, v3, v4}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 56
    :cond_1
    iget-wide v3, p0, Lo/ug;->b:J

    .line 58
    cmp-long v5, v3, v5

    .line 60
    if-ltz v5, :cond_2

    .line 62
    invoke-virtual {v2}, Landroid/animation/Animator;->getStartDelay()J

    .line 65
    move-result-wide v5

    .line 66
    add-long/2addr v5, v3

    .line 67
    invoke-virtual {v2, v5, v6}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 70
    :cond_2
    iget-object v3, p0, Lo/ug;->d:Landroid/animation/TimeInterpolator;

    .line 72
    if-eqz v3, :cond_3

    .line 74
    invoke-virtual {v2, v3}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 77
    :cond_3
    new-instance v3, Lo/Q;

    .line 79
    const/4 v4, 0x5

    .line 80
    invoke-direct {v3, v4, p0}, Lo/Q;-><init>(ILjava/lang/Object;)V

    .line 83
    invoke-virtual {v2, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 86
    invoke-virtual {v2}, Landroid/animation/Animator;->start()V

    .line 89
    goto :goto_0

    .line 90
    :cond_4
    iget-object v0, p0, Lo/ug;->u:Ljava/util/ArrayList;

    .line 92
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 95
    invoke-virtual {p0}, Lo/ug;->m()V

    .line 98
    return-void
.end method
