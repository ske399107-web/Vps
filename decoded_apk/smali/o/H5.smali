.class public final Lo/H5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo/r3;


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Ljava/lang/Object;

.field public final c:Ljava/lang/Object;

.field public d:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    sparse-switch p1, :sswitch_data_0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Lo/Jc;

    const/16 v0, 0xa

    invoke-direct {p1, v0}, Lo/Jc;-><init>(I)V

    iput-object p1, p0, Lo/H5;->a:Ljava/lang/Object;

    .line 3
    new-instance p1, Lo/Qe;

    const/4 v0, 0x0

    .line 4
    invoke-direct {p1, v0}, Lo/Qe;-><init>(I)V

    .line 5
    iput-object p1, p0, Lo/H5;->b:Ljava/lang/Object;

    .line 6
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lo/H5;->c:Ljava/lang/Object;

    .line 7
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lo/H5;->d:Ljava/lang/Object;

    return-void

    .line 8
    :sswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance p1, Lo/E2;

    const/4 v0, 0x0

    .line 10
    invoke-direct {p1, v0}, Lo/Qe;-><init>(I)V

    .line 11
    iput-object p1, p0, Lo/H5;->a:Ljava/lang/Object;

    .line 12
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lo/H5;->b:Ljava/lang/Object;

    .line 13
    new-instance p1, Lo/za;

    invoke-direct {p1}, Lo/za;-><init>()V

    iput-object p1, p0, Lo/H5;->c:Ljava/lang/Object;

    .line 14
    new-instance p1, Lo/E2;

    .line 15
    invoke-direct {p1, v0}, Lo/Qe;-><init>(I)V

    .line 16
    iput-object p1, p0, Lo/H5;->d:Ljava/lang/Object;

    return-void

    .line 17
    :sswitch_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lo/H5;->a:Ljava/lang/Object;

    .line 19
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lo/H5;->b:Ljava/lang/Object;

    .line 20
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lo/H5;->c:Ljava/lang/Object;

    return-void

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_1
        0x5 -> :sswitch_0
    .end sparse-switch
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/ActionMode$Callback;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lo/H5;->b:Ljava/lang/Object;

    .line 42
    iput-object p2, p0, Lo/H5;->a:Ljava/lang/Object;

    .line 43
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lo/H5;->c:Ljava/lang/Object;

    .line 44
    new-instance p1, Lo/Qe;

    const/4 p2, 0x0

    .line 45
    invoke-direct {p1, p2}, Lo/Qe;-><init>(I)V

    .line 46
    iput-object p1, p0, Lo/H5;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Typeface;Lo/Fb;)V
    .locals 5

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lo/H5;->d:Ljava/lang/Object;

    .line 23
    iput-object p2, p0, Lo/H5;->a:Ljava/lang/Object;

    .line 24
    new-instance p1, Lo/Gb;

    const/16 v0, 0x400

    invoke-direct {p1, v0}, Lo/Gb;-><init>(I)V

    iput-object p1, p0, Lo/H5;->c:Ljava/lang/Object;

    const/4 p1, 0x6

    .line 25
    invoke-virtual {p2, p1}, Lo/Ef;->a(I)I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 26
    iget v2, p2, Lo/Ef;->a:I

    add-int/2addr v0, v2

    .line 27
    iget-object v2, p2, Lo/Ef;->d:Ljava/lang/Object;

    check-cast v2, Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v2

    add-int/2addr v2, v0

    .line 28
    iget-object v0, p2, Lo/Ef;->d:Ljava/lang/Object;

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x2

    .line 29
    new-array v0, v0, [C

    iput-object v0, p0, Lo/H5;->b:Ljava/lang/Object;

    .line 30
    invoke-virtual {p2, p1}, Lo/Ef;->a(I)I

    move-result p1

    if-eqz p1, :cond_1

    .line 31
    iget v0, p2, Lo/Ef;->a:I

    add-int/2addr p1, v0

    .line 32
    iget-object v0, p2, Lo/Ef;->d:Ljava/lang/Object;

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    add-int/2addr v0, p1

    .line 33
    iget-object p1, p2, Lo/Ef;->d:Ljava/lang/Object;

    check-cast p1, Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result p1

    goto :goto_1

    :cond_1
    move p1, v1

    :goto_1
    move p2, v1

    :goto_2
    if-ge p2, p1, :cond_4

    .line 34
    new-instance v0, Lo/Lg;

    invoke-direct {v0, p0, p2}, Lo/Lg;-><init>(Lo/H5;I)V

    .line 35
    invoke-virtual {v0}, Lo/Lg;->c()Lo/Eb;

    move-result-object v2

    const/4 v3, 0x4

    .line 36
    invoke-virtual {v2, v3}, Lo/Ef;->a(I)I

    move-result v3

    if-eqz v3, :cond_2

    iget-object v4, v2, Lo/Ef;->d:Ljava/lang/Object;

    check-cast v4, Ljava/nio/ByteBuffer;

    iget v2, v2, Lo/Ef;->a:I

    add-int/2addr v3, v2

    invoke-virtual {v4, v3}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v2

    goto :goto_3

    :cond_2
    move v2, v1

    :goto_3
    mul-int/lit8 v3, p2, 0x2

    .line 37
    iget-object v4, p0, Lo/H5;->b:Ljava/lang/Object;

    check-cast v4, [C

    invoke-static {v2, v4, v3}, Ljava/lang/Character;->toChars(I[CI)I

    .line 38
    invoke-virtual {v0}, Lo/Lg;->b()I

    move-result v2

    const/4 v3, 0x1

    if-lez v2, :cond_3

    move v2, v3

    goto :goto_4

    :cond_3
    move v2, v1

    :goto_4
    const-string v4, "invalid metadata codepoint length"

    invoke-static {v2, v4}, Lo/Ha;->e(ZLjava/lang/String;)V

    .line 39
    invoke-virtual {v0}, Lo/Lg;->b()I

    move-result v2

    sub-int/2addr v2, v3

    iget-object v3, p0, Lo/H5;->c:Ljava/lang/Object;

    check-cast v3, Lo/Gb;

    invoke-virtual {v3, v0, v1, v2}, Lo/Gb;->a(Lo/Lg;II)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_4
    return-void
.end method

.method public constructor <init>(Landroid/view/View;Landroid/view/ViewGroup;Lo/I5;Lo/bf;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/H5;->a:Ljava/lang/Object;

    iput-object p2, p0, Lo/H5;->b:Ljava/lang/Object;

    iput-object p3, p0, Lo/H5;->c:Ljava/lang/Object;

    iput-object p4, p0, Lo/H5;->d:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(Lo/T7;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lo/H5;->a:Ljava/lang/Object;

    .line 3
    check-cast v0, Ljava/util/ArrayList;

    .line 5
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 11
    iget-object v0, p0, Lo/H5;->a:Ljava/lang/Object;

    .line 13
    check-cast v0, Ljava/util/ArrayList;

    .line 15
    monitor-enter v0

    .line 16
    :try_start_0
    iget-object v1, p0, Lo/H5;->a:Ljava/lang/Object;

    .line 18
    check-cast v1, Ljava/util/ArrayList;

    .line 20
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 23
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    const/4 v0, 0x1

    .line 25
    iput-boolean v0, p1, Lo/T7;->k:Z

    .line 27
    return-void

    .line 28
    :catchall_0
    move-exception p1

    .line 29
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 30
    throw p1

    .line 31
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 33
    new-instance v1, Ljava/lang/StringBuilder;

    .line 35
    const-string v2, "Fragment already added: "

    .line 37
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 40
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 43
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    move-result-object p1

    .line 47
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 50
    throw v0
.end method

.method public b(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/HashSet;)V
    .locals 4

    .line 1
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {p3, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_2

    .line 14
    invoke-virtual {p3, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 17
    iget-object v0, p0, Lo/H5;->b:Ljava/lang/Object;

    .line 19
    check-cast v0, Lo/Qe;

    .line 21
    invoke-virtual {v0, p1}, Lo/Qe;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Ljava/util/ArrayList;

    .line 27
    if-eqz v0, :cond_1

    .line 29
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 32
    move-result v1

    .line 33
    const/4 v2, 0x0

    .line 34
    :goto_0
    if-ge v2, v1, :cond_1

    .line 36
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 39
    move-result-object v3

    .line 40
    invoke-virtual {p0, v3, p2, p3}, Lo/H5;->b(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/HashSet;)V

    .line 43
    add-int/lit8 v2, v2, 0x1

    .line 45
    goto :goto_0

    .line 46
    :cond_1
    invoke-virtual {p3, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 49
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    return-void

    .line 53
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    .line 55
    const-string p2, "This graph contains cyclic dependencies"

    .line 57
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 60
    throw p1
.end method

.method public c(Ljava/lang/String;)Lo/T7;
    .locals 1

    .line 1
    iget-object v0, p0, Lo/H5;->b:Ljava/lang/Object;

    .line 3
    check-cast v0, Ljava/util/HashMap;

    .line 5
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Landroidx/fragment/app/a;

    .line 11
    if-eqz p1, :cond_0

    .line 13
    iget-object p1, p1, Landroidx/fragment/app/a;->c:Lo/T7;

    .line 15
    return-object p1

    .line 16
    :cond_0
    const/4 p1, 0x0

    .line 17
    return-object p1
.end method

.method public d(Ljava/lang/String;)Lo/T7;
    .locals 3

    .line 1
    iget-object v0, p0, Lo/H5;->b:Ljava/lang/Object;

    .line 3
    check-cast v0, Ljava/util/HashMap;

    .line 5
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 8
    move-result-object v0

    .line 9
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 12
    move-result-object v0

    .line 13
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_2

    .line 19
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Landroidx/fragment/app/a;

    .line 25
    if-eqz v1, :cond_0

    .line 27
    iget-object v1, v1, Landroidx/fragment/app/a;->c:Lo/T7;

    .line 29
    iget-object v2, v1, Lo/T7;->e:Ljava/lang/String;

    .line 31
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 34
    move-result v2

    .line 35
    if-eqz v2, :cond_1

    .line 37
    goto :goto_0

    .line 38
    :cond_1
    iget-object v1, v1, Lo/T7;->t:Lo/i8;

    .line 40
    iget-object v1, v1, Lo/i8;->c:Lo/H5;

    .line 42
    invoke-virtual {v1, p1}, Lo/H5;->d(Ljava/lang/String;)Lo/T7;

    .line 45
    move-result-object v1

    .line 46
    :goto_0
    if-eqz v1, :cond_0

    .line 48
    return-object v1

    .line 49
    :cond_2
    const/4 p1, 0x0

    .line 50
    return-object p1
.end method

.method public e(Lo/h0;)Lo/wf;
    .locals 5

    .line 1
    iget-object v0, p0, Lo/H5;->c:Ljava/lang/Object;

    .line 3
    check-cast v0, Ljava/util/ArrayList;

    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x0

    .line 10
    :goto_0
    if-ge v2, v1, :cond_1

    .line 12
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 15
    move-result-object v3

    .line 16
    check-cast v3, Lo/wf;

    .line 18
    if-eqz v3, :cond_0

    .line 20
    iget-object v4, v3, Lo/wf;->b:Lo/h0;

    .line 22
    if-ne v4, p1, :cond_0

    .line 24
    return-object v3

    .line 25
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 27
    goto :goto_0

    .line 28
    :cond_1
    new-instance v1, Lo/wf;

    .line 30
    iget-object v2, p0, Lo/H5;->b:Ljava/lang/Object;

    .line 32
    check-cast v2, Landroid/content/Context;

    .line 34
    invoke-direct {v1, v2, p1}, Lo/wf;-><init>(Landroid/content/Context;Lo/h0;)V

    .line 37
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    return-object v1
.end method

.method public f()Ljava/util/ArrayList;
    .locals 3

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    iget-object v1, p0, Lo/H5;->b:Ljava/lang/Object;

    .line 8
    check-cast v1, Ljava/util/HashMap;

    .line 10
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 13
    move-result-object v1

    .line 14
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 17
    move-result-object v1

    .line 18
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    move-result v2

    .line 22
    if-eqz v2, :cond_1

    .line 24
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    move-result-object v2

    .line 28
    check-cast v2, Landroidx/fragment/app/a;

    .line 30
    if-eqz v2, :cond_0

    .line 32
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    return-object v0
.end method

.method public g()Ljava/util/ArrayList;
    .locals 3

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    iget-object v1, p0, Lo/H5;->b:Ljava/lang/Object;

    .line 8
    check-cast v1, Ljava/util/HashMap;

    .line 10
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 13
    move-result-object v1

    .line 14
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 17
    move-result-object v1

    .line 18
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    move-result v2

    .line 22
    if-eqz v2, :cond_1

    .line 24
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    move-result-object v2

    .line 28
    check-cast v2, Landroidx/fragment/app/a;

    .line 30
    if-eqz v2, :cond_0

    .line 32
    iget-object v2, v2, Landroidx/fragment/app/a;->c:Lo/T7;

    .line 34
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    const/4 v2, 0x0

    .line 39
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    goto :goto_0

    .line 43
    :cond_1
    return-object v0
.end method

.method public h()Ljava/util/List;
    .locals 3

    .line 1
    iget-object v0, p0, Lo/H5;->a:Ljava/lang/Object;

    .line 3
    check-cast v0, Ljava/util/ArrayList;

    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 11
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 14
    move-result-object v0

    .line 15
    return-object v0

    .line 16
    :cond_0
    iget-object v0, p0, Lo/H5;->a:Ljava/lang/Object;

    .line 18
    check-cast v0, Ljava/util/ArrayList;

    .line 20
    monitor-enter v0

    .line 21
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    .line 23
    iget-object v2, p0, Lo/H5;->a:Ljava/lang/Object;

    .line 25
    check-cast v2, Ljava/util/ArrayList;

    .line 27
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 30
    monitor-exit v0

    .line 31
    return-object v1

    .line 32
    :catchall_0
    move-exception v1

    .line 33
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    throw v1
.end method

.method public i(Landroidx/fragment/app/a;)V
    .locals 3

    .line 1
    iget-object v0, p1, Landroidx/fragment/app/a;->c:Lo/T7;

    .line 3
    iget-object v1, v0, Lo/T7;->e:Ljava/lang/String;

    .line 5
    iget-object v2, p0, Lo/H5;->b:Ljava/lang/Object;

    .line 7
    check-cast v2, Ljava/util/HashMap;

    .line 9
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    move-result-object v1

    .line 13
    if-eqz v1, :cond_0

    .line 15
    return-void

    .line 16
    :cond_0
    iget-object v1, v0, Lo/T7;->e:Ljava/lang/String;

    .line 18
    invoke-virtual {v2, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    const-string p1, "FragmentManager"

    .line 23
    const/4 v1, 0x2

    .line 24
    invoke-static {p1, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_1

    .line 30
    new-instance v1, Ljava/lang/StringBuilder;

    .line 32
    const-string v2, "Added fragment to active set "

    .line 34
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 37
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 40
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    move-result-object v0

    .line 44
    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    :cond_1
    return-void
.end method

.method public j(Landroidx/fragment/app/a;)V
    .locals 3

    .line 1
    iget-object p1, p1, Landroidx/fragment/app/a;->c:Lo/T7;

    .line 3
    iget-boolean v0, p1, Lo/T7;->A:Z

    .line 5
    if-eqz v0, :cond_0

    .line 7
    iget-object v0, p0, Lo/H5;->d:Ljava/lang/Object;

    .line 9
    check-cast v0, Lo/k8;

    .line 11
    invoke-virtual {v0, p1}, Lo/k8;->d(Lo/T7;)V

    .line 14
    :cond_0
    iget-object v0, p0, Lo/H5;->b:Ljava/lang/Object;

    .line 16
    check-cast v0, Ljava/util/HashMap;

    .line 18
    iget-object v1, p1, Lo/T7;->e:Ljava/lang/String;

    .line 20
    const/4 v2, 0x0

    .line 21
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Landroidx/fragment/app/a;

    .line 27
    if-nez v0, :cond_1

    .line 29
    return-void

    .line 30
    :cond_1
    const-string v0, "FragmentManager"

    .line 32
    const/4 v1, 0x2

    .line 33
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 36
    move-result v1

    .line 37
    if-eqz v1, :cond_2

    .line 39
    new-instance v1, Ljava/lang/StringBuilder;

    .line 41
    const-string v2, "Removed fragment from active set "

    .line 43
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 46
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 49
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    move-result-object p1

    .line 53
    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    :cond_2
    return-void
.end method

.method public k(Lo/h0;Landroid/view/MenuItem;)Z
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lo/H5;->e(Lo/h0;)Lo/wf;

    .line 4
    move-result-object p1

    .line 5
    new-instance v0, Lo/rb;

    .line 7
    iget-object v1, p0, Lo/H5;->b:Ljava/lang/Object;

    .line 9
    check-cast v1, Landroid/content/Context;

    .line 11
    check-cast p2, Lo/Af;

    .line 13
    invoke-direct {v0, v1, p2}, Lo/rb;-><init>(Landroid/content/Context;Lo/Af;)V

    .line 16
    iget-object p2, p0, Lo/H5;->a:Ljava/lang/Object;

    .line 18
    check-cast p2, Landroid/view/ActionMode$Callback;

    .line 20
    invoke-interface {p2, p1, v0}, Landroid/view/ActionMode$Callback;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    .line 23
    move-result p1

    .line 24
    return p1
.end method

.method public l(Lo/h0;Lo/kb;)Z
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lo/H5;->e(Lo/h0;)Lo/wf;

    .line 4
    move-result-object p1

    .line 5
    iget-object v0, p0, Lo/H5;->d:Ljava/lang/Object;

    .line 7
    check-cast v0, Lo/Qe;

    .line 9
    invoke-virtual {v0, p2}, Lo/Qe;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    move-result-object v1

    .line 13
    check-cast v1, Landroid/view/Menu;

    .line 15
    if-nez v1, :cond_0

    .line 17
    new-instance v1, Lo/Db;

    .line 19
    iget-object v2, p0, Lo/H5;->b:Ljava/lang/Object;

    .line 21
    check-cast v2, Landroid/content/Context;

    .line 23
    invoke-direct {v1, v2, p2}, Lo/Db;-><init>(Landroid/content/Context;Lo/kb;)V

    .line 26
    invoke-virtual {v0, p2, v1}, Lo/Qe;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    :cond_0
    iget-object p2, p0, Lo/H5;->a:Ljava/lang/Object;

    .line 31
    check-cast p2, Landroid/view/ActionMode$Callback;

    .line 33
    invoke-interface {p2, p1, v1}, Landroid/view/ActionMode$Callback;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    .line 36
    move-result p1

    .line 37
    return p1
.end method

.method public t()V
    .locals 3

    .line 1
    iget-object v0, p0, Lo/H5;->a:Ljava/lang/Object;

    .line 3
    check-cast v0, Landroid/view/View;

    .line 5
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 8
    iget-object v1, p0, Lo/H5;->b:Ljava/lang/Object;

    .line 10
    check-cast v1, Landroid/view/ViewGroup;

    .line 12
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    .line 15
    iget-object v0, p0, Lo/H5;->c:Ljava/lang/Object;

    .line 17
    check-cast v0, Lo/I5;

    .line 19
    invoke-virtual {v0}, Lo/s1;->d()V

    .line 22
    const-string v0, "FragmentManager"

    .line 24
    const/4 v1, 0x2

    .line 25
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_0

    .line 31
    new-instance v1, Ljava/lang/StringBuilder;

    .line 33
    const-string v2, "Animation from operation "

    .line 35
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    iget-object v2, p0, Lo/H5;->d:Ljava/lang/Object;

    .line 40
    check-cast v2, Lo/bf;

    .line 42
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 45
    const-string v2, " has been cancelled."

    .line 47
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    move-result-object v1

    .line 54
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    :cond_0
    return-void
.end method
