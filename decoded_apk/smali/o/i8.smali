.class public final Lo/i8;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public A:Lo/H1;

.field public B:Lo/H1;

.field public C:Ljava/util/ArrayDeque;

.field public D:Z

.field public E:Z

.field public F:Z

.field public G:Z

.field public H:Z

.field public I:Ljava/util/ArrayList;

.field public J:Ljava/util/ArrayList;

.field public K:Ljava/util/ArrayList;

.field public L:Lo/k8;

.field public final M:Lo/J2;

.field public final a:Ljava/util/ArrayList;

.field public b:Z

.field public final c:Lo/H5;

.field public d:Ljava/util/ArrayList;

.field public e:Ljava/util/ArrayList;

.field public final f:Lo/Y7;

.field public g:Landroidx/activity/b;

.field public final h:Lo/b8;

.field public final i:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final j:Ljava/util/Map;

.field public final k:Ljava/util/Map;

.field public final l:Lo/H1;

.field public final m:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public final n:Lo/Z7;

.field public final o:Lo/Z7;

.field public final p:Lo/Z7;

.field public final q:Lo/Z7;

.field public final r:Lo/c8;

.field public s:I

.field public t:Lo/V7;

.field public u:Lo/L1;

.field public v:Lo/T7;

.field public w:Lo/T7;

.field public final x:Lo/d8;

.field public final y:Lo/u6;

.field public z:Lo/H1;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    iput-object v0, p0, Lo/i8;->a:Ljava/util/ArrayList;

    .line 11
    new-instance v0, Lo/H5;

    .line 13
    const/4 v1, 0x2

    .line 14
    invoke-direct {v0, v1}, Lo/H5;-><init>(I)V

    .line 17
    iput-object v0, p0, Lo/i8;->c:Lo/H5;

    .line 19
    new-instance v0, Lo/Y7;

    .line 21
    invoke-direct {v0, p0}, Lo/Y7;-><init>(Lo/i8;)V

    .line 24
    iput-object v0, p0, Lo/i8;->f:Lo/Y7;

    .line 26
    new-instance v0, Lo/b8;

    .line 28
    invoke-direct {v0, p0}, Lo/b8;-><init>(Lo/i8;)V

    .line 31
    iput-object v0, p0, Lo/i8;->h:Lo/b8;

    .line 33
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 35
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 38
    iput-object v0, p0, Lo/i8;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 40
    new-instance v0, Ljava/util/HashMap;

    .line 42
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 45
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    .line 48
    move-result-object v0

    .line 49
    iput-object v0, p0, Lo/i8;->j:Ljava/util/Map;

    .line 51
    new-instance v0, Ljava/util/HashMap;

    .line 53
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 56
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    .line 59
    move-result-object v0

    .line 60
    iput-object v0, p0, Lo/i8;->k:Ljava/util/Map;

    .line 62
    new-instance v0, Ljava/util/HashMap;

    .line 64
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 67
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    .line 70
    new-instance v0, Lo/H1;

    .line 72
    invoke-direct {v0, p0}, Lo/H1;-><init>(Lo/i8;)V

    .line 75
    iput-object v0, p0, Lo/i8;->l:Lo/H1;

    .line 77
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 79
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 82
    iput-object v0, p0, Lo/i8;->m:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 84
    new-instance v0, Lo/Z7;

    .line 86
    const/4 v1, 0x0

    .line 87
    invoke-direct {v0, p0, v1}, Lo/Z7;-><init>(Lo/i8;I)V

    .line 90
    iput-object v0, p0, Lo/i8;->n:Lo/Z7;

    .line 92
    new-instance v0, Lo/Z7;

    .line 94
    const/4 v1, 0x1

    .line 95
    invoke-direct {v0, p0, v1}, Lo/Z7;-><init>(Lo/i8;I)V

    .line 98
    iput-object v0, p0, Lo/i8;->o:Lo/Z7;

    .line 100
    new-instance v0, Lo/Z7;

    .line 102
    const/4 v1, 0x2

    .line 103
    invoke-direct {v0, p0, v1}, Lo/Z7;-><init>(Lo/i8;I)V

    .line 106
    iput-object v0, p0, Lo/i8;->p:Lo/Z7;

    .line 108
    new-instance v0, Lo/Z7;

    .line 110
    const/4 v1, 0x3

    .line 111
    invoke-direct {v0, p0, v1}, Lo/Z7;-><init>(Lo/i8;I)V

    .line 114
    iput-object v0, p0, Lo/i8;->q:Lo/Z7;

    .line 116
    new-instance v0, Lo/c8;

    .line 118
    invoke-direct {v0, p0}, Lo/c8;-><init>(Lo/i8;)V

    .line 121
    iput-object v0, p0, Lo/i8;->r:Lo/c8;

    .line 123
    const/4 v0, -0x1

    .line 124
    iput v0, p0, Lo/i8;->s:I

    .line 126
    new-instance v0, Lo/d8;

    .line 128
    invoke-direct {v0, p0}, Lo/d8;-><init>(Lo/i8;)V

    .line 131
    iput-object v0, p0, Lo/i8;->x:Lo/d8;

    .line 133
    new-instance v0, Lo/u6;

    .line 135
    const/16 v1, 0x10

    .line 137
    invoke-direct {v0, v1}, Lo/u6;-><init>(I)V

    .line 140
    iput-object v0, p0, Lo/i8;->y:Lo/u6;

    .line 142
    new-instance v0, Ljava/util/ArrayDeque;

    .line 144
    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    .line 147
    iput-object v0, p0, Lo/i8;->C:Ljava/util/ArrayDeque;

    .line 149
    new-instance v0, Lo/J2;

    .line 151
    const/4 v1, 0x7

    .line 152
    invoke-direct {v0, v1, p0}, Lo/J2;-><init>(ILjava/lang/Object;)V

    .line 155
    iput-object v0, p0, Lo/i8;->M:Lo/J2;

    .line 157
    return-void
.end method

.method public static G(Lo/T7;)Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    iget-object p0, p0, Lo/T7;->t:Lo/i8;

    .line 6
    iget-object p0, p0, Lo/i8;->c:Lo/H5;

    .line 8
    invoke-virtual {p0}, Lo/H5;->g()Ljava/util/ArrayList;

    .line 11
    move-result-object p0

    .line 12
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 15
    move-result-object p0

    .line 16
    const/4 v0, 0x0

    .line 17
    move v1, v0

    .line 18
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    move-result v2

    .line 22
    if-eqz v2, :cond_2

    .line 24
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    move-result-object v2

    .line 28
    check-cast v2, Lo/T7;

    .line 30
    if-eqz v2, :cond_1

    .line 32
    invoke-static {v2}, Lo/i8;->G(Lo/T7;)Z

    .line 35
    move-result v1

    .line 36
    :cond_1
    if-eqz v1, :cond_0

    .line 38
    const/4 v0, 0x1

    .line 39
    :cond_2
    return v0
.end method

.method public static I(Lo/T7;)Z
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    if-nez p0, :cond_0

    .line 4
    return v0

    .line 5
    :cond_0
    iget-boolean v1, p0, Lo/T7;->B:Z

    .line 7
    if-eqz v1, :cond_1

    .line 9
    iget-object v1, p0, Lo/T7;->r:Lo/i8;

    .line 11
    if-eqz v1, :cond_2

    .line 13
    iget-object p0, p0, Lo/T7;->u:Lo/T7;

    .line 15
    invoke-static {p0}, Lo/i8;->I(Lo/T7;)Z

    .line 18
    move-result p0

    .line 19
    if-eqz p0, :cond_1

    .line 21
    goto :goto_0

    .line 22
    :cond_1
    const/4 v0, 0x0

    .line 23
    :cond_2
    :goto_0
    return v0
.end method

.method public static J(Lo/T7;)Z
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    if-nez p0, :cond_0

    .line 4
    return v0

    .line 5
    :cond_0
    iget-object v1, p0, Lo/T7;->r:Lo/i8;

    .line 7
    iget-object v2, v1, Lo/i8;->w:Lo/T7;

    .line 9
    invoke-virtual {p0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 12
    move-result p0

    .line 13
    if-eqz p0, :cond_1

    .line 15
    iget-object p0, v1, Lo/i8;->v:Lo/T7;

    .line 17
    invoke-static {p0}, Lo/i8;->J(Lo/T7;)Z

    .line 20
    move-result p0

    .line 21
    if-eqz p0, :cond_1

    .line 23
    goto :goto_0

    .line 24
    :cond_1
    const/4 v0, 0x0

    .line 25
    :goto_0
    return v0
.end method

.method public static Y(Lo/T7;)V
    .locals 3

    .line 1
    const/4 v0, 0x2

    .line 2
    const-string v1, "FragmentManager"

    .line 4
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    const-string v2, "show: "

    .line 14
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    move-result-object v0

    .line 24
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    :cond_0
    iget-boolean v0, p0, Lo/T7;->y:Z

    .line 29
    if-eqz v0, :cond_1

    .line 31
    const/4 v0, 0x0

    .line 32
    iput-boolean v0, p0, Lo/T7;->y:Z

    .line 34
    iget-boolean v0, p0, Lo/T7;->I:Z

    .line 36
    xor-int/lit8 v0, v0, 0x1

    .line 38
    iput-boolean v0, p0, Lo/T7;->I:Z

    .line 40
    :cond_1
    return-void
.end method


# virtual methods
.method public final A(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V
    .locals 22

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    .line 1
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lo/M2;

    iget-boolean v5, v5, Lo/M2;->o:Z

    .line 2
    iget-object v6, v1, Lo/i8;->K:Ljava/util/ArrayList;

    if-nez v6, :cond_0

    .line 3
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, v1, Lo/i8;->K:Ljava/util/ArrayList;

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 5
    :goto_0
    iget-object v6, v1, Lo/i8;->K:Ljava/util/ArrayList;

    iget-object v7, v1, Lo/i8;->c:Lo/H5;

    invoke-virtual {v7}, Lo/H5;->h()Ljava/util/List;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 6
    iget-object v6, v1, Lo/i8;->w:Lo/T7;

    move v9, v3

    const/4 v10, 0x0

    :goto_1
    const/4 v11, 0x1

    if-ge v9, v4, :cond_13

    .line 7
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lo/M2;

    .line 8
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Boolean;

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    if-nez v14, :cond_d

    .line 9
    iget-object v14, v1, Lo/i8;->K:Ljava/util/ArrayList;

    const/4 v12, 0x0

    .line 10
    :goto_2
    iget-object v8, v13, Lo/M2;->a:Ljava/util/ArrayList;

    .line 11
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-ge v12, v15, :cond_c

    .line 12
    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lo/r8;

    .line 13
    iget v3, v15, Lo/r8;->a:I

    if-eq v3, v11, :cond_b

    const/4 v11, 0x2

    const/16 v2, 0x9

    if-eq v3, v11, :cond_5

    const/4 v11, 0x3

    if-eq v3, v11, :cond_4

    const/4 v11, 0x6

    if-eq v3, v11, :cond_4

    const/4 v11, 0x7

    if-eq v3, v11, :cond_3

    const/16 v11, 0x8

    if-eq v3, v11, :cond_1

    goto :goto_3

    .line 14
    :cond_1
    new-instance v3, Lo/r8;

    const/4 v11, 0x0

    invoke-direct {v3, v2, v6, v11}, Lo/r8;-><init>(ILo/T7;I)V

    invoke-virtual {v8, v12, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const/4 v2, 0x1

    .line 15
    iput-boolean v2, v15, Lo/r8;->c:Z

    add-int/lit8 v12, v12, 0x1

    .line 16
    iget-object v2, v15, Lo/r8;->b:Lo/T7;

    move-object v6, v2

    :cond_2
    :goto_3
    move-object/from16 v20, v7

    const/4 v0, 0x1

    goto/16 :goto_8

    :cond_3
    move-object/from16 v20, v7

    const/4 v0, 0x1

    goto/16 :goto_7

    .line 17
    :cond_4
    iget-object v3, v15, Lo/r8;->b:Lo/T7;

    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 18
    iget-object v3, v15, Lo/r8;->b:Lo/T7;

    if-ne v3, v6, :cond_2

    .line 19
    new-instance v6, Lo/r8;

    invoke-direct {v6, v2, v3}, Lo/r8;-><init>(ILo/T7;)V

    invoke-virtual {v8, v12, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v20, v7

    const/4 v0, 0x1

    const/4 v6, 0x0

    goto/16 :goto_8

    .line 20
    :cond_5
    iget-object v3, v15, Lo/r8;->b:Lo/T7;

    .line 21
    iget v11, v3, Lo/T7;->w:I

    .line 22
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v17

    const/16 v16, 0x1

    add-int/lit8 v17, v17, -0x1

    move/from16 v2, v17

    const/16 v17, 0x0

    :goto_4
    if-ltz v2, :cond_9

    .line 23
    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v20, v7

    move-object/from16 v7, v19

    check-cast v7, Lo/T7;

    .line 24
    iget v0, v7, Lo/T7;->w:I

    if-ne v0, v11, :cond_8

    if-ne v7, v3, :cond_6

    move/from16 v18, v11

    const/4 v0, 0x1

    const/16 v17, 0x1

    goto :goto_6

    :cond_6
    if-ne v7, v6, :cond_7

    .line 25
    new-instance v0, Lo/r8;

    move/from16 v18, v11

    const/4 v6, 0x0

    const/16 v11, 0x9

    invoke-direct {v0, v11, v7, v6}, Lo/r8;-><init>(ILo/T7;I)V

    invoke-virtual {v8, v12, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v12, v12, 0x1

    move v0, v6

    const/4 v6, 0x0

    goto :goto_5

    :cond_7
    move/from16 v18, v11

    const/4 v0, 0x0

    const/16 v11, 0x9

    .line 26
    :goto_5
    new-instance v11, Lo/r8;

    move-object/from16 v21, v6

    const/4 v6, 0x3

    invoke-direct {v11, v6, v7, v0}, Lo/r8;-><init>(ILo/T7;I)V

    .line 27
    iget v0, v15, Lo/r8;->d:I

    iput v0, v11, Lo/r8;->d:I

    .line 28
    iget v0, v15, Lo/r8;->f:I

    iput v0, v11, Lo/r8;->f:I

    .line 29
    iget v0, v15, Lo/r8;->e:I

    iput v0, v11, Lo/r8;->e:I

    .line 30
    iget v0, v15, Lo/r8;->g:I

    iput v0, v11, Lo/r8;->g:I

    .line 31
    invoke-virtual {v8, v12, v11}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 32
    invoke-virtual {v14, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    add-int/2addr v12, v0

    move-object/from16 v6, v21

    goto :goto_6

    :cond_8
    move/from16 v18, v11

    const/4 v0, 0x1

    :goto_6
    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p1

    move/from16 v11, v18

    move-object/from16 v7, v20

    goto :goto_4

    :cond_9
    move-object/from16 v20, v7

    const/4 v0, 0x1

    if-eqz v17, :cond_a

    .line 33
    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v12, v12, -0x1

    goto :goto_8

    .line 34
    :cond_a
    iput v0, v15, Lo/r8;->a:I

    .line 35
    iput-boolean v0, v15, Lo/r8;->c:Z

    .line 36
    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_b
    move-object/from16 v20, v7

    move v0, v11

    .line 37
    :goto_7
    iget-object v2, v15, Lo/r8;->b:Lo/T7;

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_8
    add-int/2addr v12, v0

    move-object/from16 v2, p2

    move/from16 v3, p3

    move v11, v0

    move-object/from16 v7, v20

    move-object/from16 v0, p1

    goto/16 :goto_2

    :cond_c
    move-object/from16 v20, v7

    goto :goto_b

    :cond_d
    move-object/from16 v20, v7

    move v0, v11

    .line 38
    iget-object v2, v1, Lo/i8;->K:Ljava/util/ArrayList;

    .line 39
    iget-object v3, v13, Lo/M2;->a:Ljava/util/ArrayList;

    .line 40
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    sub-int/2addr v7, v0

    :goto_9
    if-ltz v7, :cond_10

    .line 41
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lo/r8;

    .line 42
    iget v11, v8, Lo/r8;->a:I

    if-eq v11, v0, :cond_f

    const/4 v0, 0x3

    if-eq v11, v0, :cond_e

    packed-switch v11, :pswitch_data_0

    goto :goto_a

    .line 43
    :pswitch_0
    iget-object v11, v8, Lo/r8;->h:Lo/M9;

    iput-object v11, v8, Lo/r8;->i:Lo/M9;

    goto :goto_a

    .line 44
    :pswitch_1
    iget-object v6, v8, Lo/r8;->b:Lo/T7;

    goto :goto_a

    :pswitch_2
    const/4 v6, 0x0

    goto :goto_a

    .line 45
    :cond_e
    :pswitch_3
    iget-object v8, v8, Lo/r8;->b:Lo/T7;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_f
    const/4 v0, 0x3

    .line 46
    :pswitch_4
    iget-object v8, v8, Lo/r8;->b:Lo/T7;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :goto_a
    add-int/lit8 v7, v7, -0x1

    const/4 v0, 0x1

    goto :goto_9

    :cond_10
    :goto_b
    if-nez v10, :cond_12

    .line 47
    iget-boolean v0, v13, Lo/M2;->g:Z

    if-eqz v0, :cond_11

    goto :goto_c

    :cond_11
    const/4 v10, 0x0

    goto :goto_d

    :cond_12
    :goto_c
    const/4 v10, 0x1

    :goto_d
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v7, v20

    goto/16 :goto_1

    :cond_13
    move-object/from16 v20, v7

    .line 48
    iget-object v0, v1, Lo/i8;->K:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    if-nez v5, :cond_16

    .line 49
    iget v0, v1, Lo/i8;->s:I

    const/4 v2, 0x1

    if-lt v0, v2, :cond_16

    move/from16 v0, p3

    :goto_e
    if-ge v0, v4, :cond_16

    move-object/from16 v2, p1

    .line 50
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/M2;

    .line 51
    iget-object v3, v3, Lo/M2;->a:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_15

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lo/r8;

    .line 52
    iget-object v5, v5, Lo/r8;->b:Lo/T7;

    if-eqz v5, :cond_14

    .line 53
    iget-object v6, v5, Lo/T7;->r:Lo/i8;

    if-eqz v6, :cond_14

    .line 54
    invoke-virtual {v1, v5}, Lo/i8;->f(Lo/T7;)Landroidx/fragment/app/a;

    move-result-object v5

    move-object/from16 v6, v20

    .line 55
    invoke-virtual {v6, v5}, Lo/H5;->i(Landroidx/fragment/app/a;)V

    goto :goto_10

    :cond_14
    move-object/from16 v6, v20

    :goto_10
    move-object/from16 v20, v6

    goto :goto_f

    :cond_15
    move-object/from16 v6, v20

    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_16
    move-object/from16 v2, p1

    move/from16 v0, p3

    :goto_11
    const/4 v3, -0x1

    if-ge v0, v4, :cond_22

    .line 56
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lo/M2;

    move-object/from16 v6, p2

    .line 57
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    .line 58
    const-string v8, "Unknown cmd: "

    if-eqz v7, :cond_1e

    .line 59
    invoke-virtual {v5, v3}, Lo/M2;->c(I)V

    .line 60
    iget-object v3, v5, Lo/M2;->a:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v9, 0x1

    sub-int/2addr v7, v9

    :goto_12
    if-ltz v7, :cond_1d

    .line 61
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lo/r8;

    .line 62
    iget-object v11, v10, Lo/r8;->b:Lo/T7;

    if-eqz v11, :cond_1c

    .line 63
    iget-object v12, v11, Lo/T7;->H:Lo/R7;

    if-nez v12, :cond_17

    goto :goto_13

    .line 64
    :cond_17
    invoke-virtual {v11}, Lo/T7;->f()Lo/R7;

    move-result-object v12

    iput-boolean v9, v12, Lo/R7;->a:Z

    .line 65
    :goto_13
    iget v9, v5, Lo/M2;->f:I

    const/16 v12, 0x2002

    const/16 v13, 0x1001

    if-eq v9, v13, :cond_1a

    if-eq v9, v12, :cond_18

    const/16 v12, 0x1004

    const/16 v13, 0x2005

    if-eq v9, v13, :cond_1a

    const/16 v14, 0x1003

    if-eq v9, v14, :cond_19

    if-eq v9, v12, :cond_18

    const/4 v12, 0x0

    goto :goto_14

    :cond_18
    move v12, v13

    goto :goto_14

    :cond_19
    move v12, v14

    .line 66
    :cond_1a
    :goto_14
    iget-object v9, v11, Lo/T7;->H:Lo/R7;

    if-nez v9, :cond_1b

    if-nez v12, :cond_1b

    goto :goto_15

    .line 67
    :cond_1b
    invoke-virtual {v11}, Lo/T7;->f()Lo/R7;

    .line 68
    iget-object v9, v11, Lo/T7;->H:Lo/R7;

    iput v12, v9, Lo/R7;->f:I

    .line 69
    :goto_15
    invoke-virtual {v11}, Lo/T7;->f()Lo/R7;

    .line 70
    iget-object v9, v11, Lo/T7;->H:Lo/R7;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 71
    :cond_1c
    iget v9, v10, Lo/r8;->a:I

    iget-object v12, v5, Lo/M2;->p:Lo/i8;

    packed-switch v9, :pswitch_data_1

    .line 72
    :pswitch_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v10, Lo/r8;->a:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 73
    :pswitch_6
    iget-object v9, v10, Lo/r8;->h:Lo/M9;

    invoke-virtual {v12, v11, v9}, Lo/i8;->V(Lo/T7;Lo/M9;)V

    :goto_16
    const/4 v9, 0x1

    goto/16 :goto_17

    .line 74
    :pswitch_7
    invoke-virtual {v12, v11}, Lo/i8;->W(Lo/T7;)V

    goto :goto_16

    :pswitch_8
    const/4 v9, 0x0

    .line 75
    invoke-virtual {v12, v9}, Lo/i8;->W(Lo/T7;)V

    goto :goto_16

    .line 76
    :pswitch_9
    iget v9, v10, Lo/r8;->d:I

    iget v13, v10, Lo/r8;->e:I

    iget v14, v10, Lo/r8;->f:I

    iget v10, v10, Lo/r8;->g:I

    invoke-virtual {v11, v9, v13, v14, v10}, Lo/T7;->E(IIII)V

    const/4 v9, 0x1

    .line 77
    invoke-virtual {v12, v11, v9}, Lo/i8;->U(Lo/T7;Z)V

    .line 78
    invoke-virtual {v12, v11}, Lo/i8;->g(Lo/T7;)V

    goto :goto_16

    .line 79
    :pswitch_a
    iget v9, v10, Lo/r8;->d:I

    iget v13, v10, Lo/r8;->e:I

    iget v14, v10, Lo/r8;->f:I

    iget v10, v10, Lo/r8;->g:I

    invoke-virtual {v11, v9, v13, v14, v10}, Lo/T7;->E(IIII)V

    .line 80
    invoke-virtual {v12, v11}, Lo/i8;->c(Lo/T7;)V

    goto :goto_16

    .line 81
    :pswitch_b
    iget v9, v10, Lo/r8;->d:I

    iget v13, v10, Lo/r8;->e:I

    iget v14, v10, Lo/r8;->f:I

    iget v10, v10, Lo/r8;->g:I

    invoke-virtual {v11, v9, v13, v14, v10}, Lo/T7;->E(IIII)V

    const/4 v9, 0x1

    .line 82
    invoke-virtual {v12, v11, v9}, Lo/i8;->U(Lo/T7;Z)V

    .line 83
    invoke-virtual {v12, v11}, Lo/i8;->F(Lo/T7;)V

    goto :goto_16

    .line 84
    :pswitch_c
    iget v9, v10, Lo/r8;->d:I

    iget v13, v10, Lo/r8;->e:I

    iget v14, v10, Lo/r8;->f:I

    iget v10, v10, Lo/r8;->g:I

    invoke-virtual {v11, v9, v13, v14, v10}, Lo/T7;->E(IIII)V

    .line 85
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v11}, Lo/i8;->Y(Lo/T7;)V

    goto :goto_16

    .line 86
    :pswitch_d
    iget v9, v10, Lo/r8;->d:I

    iget v13, v10, Lo/r8;->e:I

    iget v14, v10, Lo/r8;->f:I

    iget v10, v10, Lo/r8;->g:I

    invoke-virtual {v11, v9, v13, v14, v10}, Lo/T7;->E(IIII)V

    .line 87
    invoke-virtual {v12, v11}, Lo/i8;->a(Lo/T7;)Landroidx/fragment/app/a;

    goto :goto_16

    .line 88
    :pswitch_e
    iget v9, v10, Lo/r8;->d:I

    iget v13, v10, Lo/r8;->e:I

    iget v14, v10, Lo/r8;->f:I

    iget v10, v10, Lo/r8;->g:I

    invoke-virtual {v11, v9, v13, v14, v10}, Lo/T7;->E(IIII)V

    const/4 v9, 0x1

    .line 89
    invoke-virtual {v12, v11, v9}, Lo/i8;->U(Lo/T7;Z)V

    .line 90
    invoke-virtual {v12, v11}, Lo/i8;->P(Lo/T7;)V

    :goto_17
    add-int/lit8 v7, v7, -0x1

    goto/16 :goto_12

    :cond_1d
    const/4 v9, 0x0

    goto/16 :goto_1d

    :cond_1e
    const/4 v9, 0x1

    .line 91
    invoke-virtual {v5, v9}, Lo/M2;->c(I)V

    .line 92
    iget-object v3, v5, Lo/M2;->a:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v11, 0x0

    :goto_18
    if-ge v11, v7, :cond_1d

    .line 93
    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lo/r8;

    .line 94
    iget-object v10, v9, Lo/r8;->b:Lo/T7;

    if-eqz v10, :cond_21

    .line 95
    iget-object v12, v10, Lo/T7;->H:Lo/R7;

    if-nez v12, :cond_1f

    goto :goto_19

    .line 96
    :cond_1f
    invoke-virtual {v10}, Lo/T7;->f()Lo/R7;

    move-result-object v12

    const/4 v13, 0x0

    iput-boolean v13, v12, Lo/R7;->a:Z

    .line 97
    :goto_19
    iget v12, v5, Lo/M2;->f:I

    .line 98
    iget-object v13, v10, Lo/T7;->H:Lo/R7;

    if-nez v13, :cond_20

    if-nez v12, :cond_20

    goto :goto_1a

    .line 99
    :cond_20
    invoke-virtual {v10}, Lo/T7;->f()Lo/R7;

    .line 100
    iget-object v13, v10, Lo/T7;->H:Lo/R7;

    iput v12, v13, Lo/R7;->f:I

    .line 101
    :goto_1a
    invoke-virtual {v10}, Lo/T7;->f()Lo/R7;

    .line 102
    iget-object v12, v10, Lo/T7;->H:Lo/R7;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 103
    :cond_21
    iget v12, v9, Lo/r8;->a:I

    iget-object v13, v5, Lo/M2;->p:Lo/i8;

    packed-switch v12, :pswitch_data_2

    .line 104
    :pswitch_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v9, Lo/r8;->a:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 105
    :pswitch_10
    iget-object v9, v9, Lo/r8;->i:Lo/M9;

    invoke-virtual {v13, v10, v9}, Lo/i8;->V(Lo/T7;Lo/M9;)V

    :goto_1b
    const/4 v9, 0x0

    goto/16 :goto_1c

    :pswitch_11
    const/4 v12, 0x0

    .line 106
    invoke-virtual {v13, v12}, Lo/i8;->W(Lo/T7;)V

    goto :goto_1b

    :pswitch_12
    const/4 v12, 0x0

    .line 107
    invoke-virtual {v13, v10}, Lo/i8;->W(Lo/T7;)V

    goto :goto_1b

    :pswitch_13
    const/4 v12, 0x0

    .line 108
    iget v14, v9, Lo/r8;->d:I

    iget v15, v9, Lo/r8;->e:I

    iget v12, v9, Lo/r8;->f:I

    iget v9, v9, Lo/r8;->g:I

    invoke-virtual {v10, v14, v15, v12, v9}, Lo/T7;->E(IIII)V

    const/4 v9, 0x0

    .line 109
    invoke-virtual {v13, v10, v9}, Lo/i8;->U(Lo/T7;Z)V

    .line 110
    invoke-virtual {v13, v10}, Lo/i8;->c(Lo/T7;)V

    goto :goto_1b

    .line 111
    :pswitch_14
    iget v12, v9, Lo/r8;->d:I

    iget v14, v9, Lo/r8;->e:I

    iget v15, v9, Lo/r8;->f:I

    iget v9, v9, Lo/r8;->g:I

    invoke-virtual {v10, v12, v14, v15, v9}, Lo/T7;->E(IIII)V

    .line 112
    invoke-virtual {v13, v10}, Lo/i8;->g(Lo/T7;)V

    goto :goto_1b

    .line 113
    :pswitch_15
    iget v12, v9, Lo/r8;->d:I

    iget v14, v9, Lo/r8;->e:I

    iget v15, v9, Lo/r8;->f:I

    iget v9, v9, Lo/r8;->g:I

    invoke-virtual {v10, v12, v14, v15, v9}, Lo/T7;->E(IIII)V

    const/4 v9, 0x0

    .line 114
    invoke-virtual {v13, v10, v9}, Lo/i8;->U(Lo/T7;Z)V

    .line 115
    invoke-static {v10}, Lo/i8;->Y(Lo/T7;)V

    goto :goto_1b

    .line 116
    :pswitch_16
    iget v12, v9, Lo/r8;->d:I

    iget v14, v9, Lo/r8;->e:I

    iget v15, v9, Lo/r8;->f:I

    iget v9, v9, Lo/r8;->g:I

    invoke-virtual {v10, v12, v14, v15, v9}, Lo/T7;->E(IIII)V

    .line 117
    invoke-virtual {v13, v10}, Lo/i8;->F(Lo/T7;)V

    goto :goto_1b

    .line 118
    :pswitch_17
    iget v12, v9, Lo/r8;->d:I

    iget v14, v9, Lo/r8;->e:I

    iget v15, v9, Lo/r8;->f:I

    iget v9, v9, Lo/r8;->g:I

    invoke-virtual {v10, v12, v14, v15, v9}, Lo/T7;->E(IIII)V

    .line 119
    invoke-virtual {v13, v10}, Lo/i8;->P(Lo/T7;)V

    goto :goto_1b

    .line 120
    :pswitch_18
    iget v12, v9, Lo/r8;->d:I

    iget v14, v9, Lo/r8;->e:I

    iget v15, v9, Lo/r8;->f:I

    iget v9, v9, Lo/r8;->g:I

    invoke-virtual {v10, v12, v14, v15, v9}, Lo/T7;->E(IIII)V

    const/4 v9, 0x0

    .line 121
    invoke-virtual {v13, v10, v9}, Lo/i8;->U(Lo/T7;Z)V

    .line 122
    invoke-virtual {v13, v10}, Lo/i8;->a(Lo/T7;)Landroidx/fragment/app/a;

    :goto_1c
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_18

    :goto_1d
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_11

    :cond_22
    move-object/from16 v6, p2

    add-int/lit8 v0, v4, -0x1

    .line 123
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    move/from16 v5, p3

    :goto_1e
    if-ge v5, v4, :cond_27

    .line 124
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lo/M2;

    if-eqz v0, :cond_24

    .line 125
    iget-object v8, v7, Lo/M2;->a:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v9, 0x1

    sub-int/2addr v8, v9

    :goto_1f
    if-ltz v8, :cond_26

    .line 126
    iget-object v9, v7, Lo/M2;->a:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lo/r8;

    .line 127
    iget-object v9, v9, Lo/r8;->b:Lo/T7;

    if-eqz v9, :cond_23

    .line 128
    invoke-virtual {v1, v9}, Lo/i8;->f(Lo/T7;)Landroidx/fragment/app/a;

    move-result-object v9

    .line 129
    invoke-virtual {v9}, Landroidx/fragment/app/a;->k()V

    :cond_23
    add-int/lit8 v8, v8, -0x1

    goto :goto_1f

    .line 130
    :cond_24
    iget-object v7, v7, Lo/M2;->a:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_25
    :goto_20
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_26

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lo/r8;

    .line 131
    iget-object v8, v8, Lo/r8;->b:Lo/T7;

    if-eqz v8, :cond_25

    .line 132
    invoke-virtual {v1, v8}, Lo/i8;->f(Lo/T7;)Landroidx/fragment/app/a;

    move-result-object v8

    .line 133
    invoke-virtual {v8}, Landroidx/fragment/app/a;->k()V

    goto :goto_20

    :cond_26
    add-int/lit8 v5, v5, 0x1

    goto :goto_1e

    .line 134
    :cond_27
    iget v5, v1, Lo/i8;->s:I

    const/4 v7, 0x1

    invoke-virtual {v1, v5, v7}, Lo/i8;->K(IZ)V

    .line 135
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    move/from16 v7, p3

    :goto_21
    if-ge v7, v4, :cond_2a

    .line 136
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lo/M2;

    .line 137
    iget-object v8, v8, Lo/M2;->a:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_28
    :goto_22
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_29

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lo/r8;

    .line 138
    iget-object v9, v9, Lo/r8;->b:Lo/T7;

    if-eqz v9, :cond_28

    .line 139
    iget-object v9, v9, Lo/T7;->D:Landroid/view/ViewGroup;

    if-eqz v9, :cond_28

    .line 140
    invoke-virtual/range {p0 .. p0}, Lo/i8;->E()Lo/u6;

    move-result-object v10

    .line 141
    invoke-static {v9, v10}, Lo/K5;->f(Landroid/view/ViewGroup;Lo/u6;)Lo/K5;

    move-result-object v9

    .line 142
    invoke-virtual {v5, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_22

    :cond_29
    add-int/lit8 v7, v7, 0x1

    goto :goto_21

    .line 143
    :cond_2a
    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_23
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2d

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lo/K5;

    .line 144
    iput-boolean v0, v7, Lo/K5;->d:Z

    .line 145
    iget-object v8, v7, Lo/K5;->b:Ljava/util/ArrayList;

    .line 146
    monitor-enter v8

    .line 147
    :try_start_0
    invoke-virtual {v7}, Lo/K5;->g()V

    const/4 v9, 0x0

    .line 148
    iput-boolean v9, v7, Lo/K5;->e:Z

    .line 149
    iget-object v10, v7, Lo/K5;->b:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    :goto_24
    if-ltz v10, :cond_2c

    .line 150
    iget-object v11, v7, Lo/K5;->b:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lo/bf;

    .line 151
    iget-object v12, v11, Lo/bf;->c:Lo/T7;

    .line 152
    iget-object v12, v12, Lo/T7;->E:Landroid/view/View;

    invoke-static {v12}, Lo/o5;->c(Landroid/view/View;)I

    move-result v12

    .line 153
    iget v13, v11, Lo/bf;->a:I

    const/4 v14, 0x2

    if-ne v13, v14, :cond_2b

    if-eq v12, v14, :cond_2b

    .line 154
    iget-object v10, v11, Lo/bf;->c:Lo/T7;

    .line 155
    iget-object v10, v10, Lo/T7;->H:Lo/R7;

    .line 156
    iput-boolean v9, v7, Lo/K5;->e:Z

    goto :goto_25

    :catchall_0
    move-exception v0

    goto :goto_26

    :cond_2b
    add-int/lit8 v10, v10, -0x1

    goto :goto_24

    .line 157
    :cond_2c
    :goto_25
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 158
    invoke-virtual {v7}, Lo/K5;->c()V

    goto :goto_23

    .line 159
    :goto_26
    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_2d
    move/from16 v0, p3

    :goto_27
    if-ge v0, v4, :cond_2f

    .line 160
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lo/M2;

    .line 161
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_2e

    .line 162
    iget v7, v5, Lo/M2;->r:I

    if-ltz v7, :cond_2e

    .line 163
    iput v3, v5, Lo/M2;->r:I

    .line 164
    :cond_2e
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/lit8 v0, v0, 0x1

    goto :goto_27

    :cond_2f
    return-void

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_e
        :pswitch_5
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_18
        :pswitch_f
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
    .end packed-switch
.end method

.method public final B(I)Lo/T7;
    .locals 5

    .line 1
    iget-object v0, p0, Lo/i8;->c:Lo/H5;

    .line 3
    iget-object v1, v0, Lo/H5;->a:Ljava/lang/Object;

    .line 5
    check-cast v1, Ljava/util/ArrayList;

    .line 7
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 10
    move-result v2

    .line 11
    add-int/lit8 v2, v2, -0x1

    .line 13
    :goto_0
    if-ltz v2, :cond_1

    .line 15
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 18
    move-result-object v3

    .line 19
    check-cast v3, Lo/T7;

    .line 21
    if-eqz v3, :cond_0

    .line 23
    iget v4, v3, Lo/T7;->v:I

    .line 25
    if-ne v4, p1, :cond_0

    .line 27
    goto :goto_1

    .line 28
    :cond_0
    add-int/lit8 v2, v2, -0x1

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    iget-object v0, v0, Lo/H5;->b:Ljava/lang/Object;

    .line 33
    check-cast v0, Ljava/util/HashMap;

    .line 35
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 38
    move-result-object v0

    .line 39
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 42
    move-result-object v0

    .line 43
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 46
    move-result v1

    .line 47
    if-eqz v1, :cond_3

    .line 49
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 52
    move-result-object v1

    .line 53
    check-cast v1, Landroidx/fragment/app/a;

    .line 55
    if-eqz v1, :cond_2

    .line 57
    iget-object v3, v1, Landroidx/fragment/app/a;->c:Lo/T7;

    .line 59
    iget v1, v3, Lo/T7;->v:I

    .line 61
    if-ne v1, p1, :cond_2

    .line 63
    goto :goto_1

    .line 64
    :cond_3
    const/4 v3, 0x0

    .line 65
    :goto_1
    return-object v3
.end method

.method public final C(Lo/T7;)Landroid/view/ViewGroup;
    .locals 2

    .line 1
    iget-object v0, p1, Lo/T7;->D:Landroid/view/ViewGroup;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    return-object v0

    .line 6
    :cond_0
    iget v0, p1, Lo/T7;->w:I

    .line 8
    const/4 v1, 0x0

    .line 9
    if-gtz v0, :cond_1

    .line 11
    return-object v1

    .line 12
    :cond_1
    iget-object v0, p0, Lo/i8;->u:Lo/L1;

    .line 14
    invoke-virtual {v0}, Lo/L1;->M()Z

    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_2

    .line 20
    iget-object v0, p0, Lo/i8;->u:Lo/L1;

    .line 22
    iget p1, p1, Lo/T7;->w:I

    .line 24
    invoke-virtual {v0, p1}, Lo/L1;->L(I)Landroid/view/View;

    .line 27
    move-result-object p1

    .line 28
    instance-of v0, p1, Landroid/view/ViewGroup;

    .line 30
    if-eqz v0, :cond_2

    .line 32
    check-cast p1, Landroid/view/ViewGroup;

    .line 34
    return-object p1

    .line 35
    :cond_2
    return-object v1
.end method

.method public final D()Lo/d8;
    .locals 1

    .line 1
    iget-object v0, p0, Lo/i8;->v:Lo/T7;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    iget-object v0, v0, Lo/T7;->r:Lo/i8;

    .line 7
    invoke-virtual {v0}, Lo/i8;->D()Lo/d8;

    .line 10
    move-result-object v0

    .line 11
    return-object v0

    .line 12
    :cond_0
    iget-object v0, p0, Lo/i8;->x:Lo/d8;

    .line 14
    return-object v0
.end method

.method public final E()Lo/u6;
    .locals 1

    .line 1
    iget-object v0, p0, Lo/i8;->v:Lo/T7;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    iget-object v0, v0, Lo/T7;->r:Lo/i8;

    .line 7
    invoke-virtual {v0}, Lo/i8;->E()Lo/u6;

    .line 10
    move-result-object v0

    .line 11
    return-object v0

    .line 12
    :cond_0
    iget-object v0, p0, Lo/i8;->y:Lo/u6;

    .line 14
    return-object v0
.end method

.method public final F(Lo/T7;)V
    .locals 3

    .line 1
    const/4 v0, 0x2

    .line 2
    const-string v1, "FragmentManager"

    .line 4
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    const-string v2, "hide: "

    .line 14
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    move-result-object v0

    .line 24
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    :cond_0
    iget-boolean v0, p1, Lo/T7;->y:Z

    .line 29
    if-nez v0, :cond_1

    .line 31
    const/4 v0, 0x1

    .line 32
    iput-boolean v0, p1, Lo/T7;->y:Z

    .line 34
    iget-boolean v1, p1, Lo/T7;->I:Z

    .line 36
    xor-int/2addr v0, v1

    .line 37
    iput-boolean v0, p1, Lo/T7;->I:Z

    .line 39
    invoke-virtual {p0, p1}, Lo/i8;->X(Lo/T7;)V

    .line 42
    :cond_1
    return-void
.end method

.method public final H()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lo/i8;->v:Lo/T7;

    .line 3
    const/4 v1, 0x1

    .line 4
    if-nez v0, :cond_0

    .line 6
    return v1

    .line 7
    :cond_0
    invoke-virtual {v0}, Lo/T7;->m()Z

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_1

    .line 13
    iget-object v0, p0, Lo/i8;->v:Lo/T7;

    .line 15
    invoke-virtual {v0}, Lo/T7;->j()Lo/i8;

    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Lo/i8;->H()Z

    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_1

    .line 25
    goto :goto_0

    .line 26
    :cond_1
    const/4 v1, 0x0

    .line 27
    :goto_0
    return v1
.end method

.method public final K(IZ)V
    .locals 3

    .line 1
    iget-object v0, p0, Lo/i8;->t:Lo/V7;

    .line 3
    if-nez v0, :cond_1

    .line 5
    const/4 v0, -0x1

    .line 6
    if-ne p1, v0, :cond_0

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 11
    const-string p2, "No activity"

    .line 13
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 16
    throw p1

    .line 17
    :cond_1
    :goto_0
    if-nez p2, :cond_2

    .line 19
    iget p2, p0, Lo/i8;->s:I

    .line 21
    if-ne p1, p2, :cond_2

    .line 23
    return-void

    .line 24
    :cond_2
    iput p1, p0, Lo/i8;->s:I

    .line 26
    iget-object p1, p0, Lo/i8;->c:Lo/H5;

    .line 28
    iget-object p2, p1, Lo/H5;->a:Ljava/lang/Object;

    .line 30
    check-cast p2, Ljava/util/ArrayList;

    .line 32
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 35
    move-result-object p2

    .line 36
    :cond_3
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 39
    move-result v0

    .line 40
    iget-object v1, p1, Lo/H5;->b:Ljava/lang/Object;

    .line 42
    check-cast v1, Ljava/util/HashMap;

    .line 44
    if-eqz v0, :cond_4

    .line 46
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 49
    move-result-object v0

    .line 50
    check-cast v0, Lo/T7;

    .line 52
    iget-object v0, v0, Lo/T7;->e:Ljava/lang/String;

    .line 54
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    move-result-object v0

    .line 58
    check-cast v0, Landroidx/fragment/app/a;

    .line 60
    if-eqz v0, :cond_3

    .line 62
    invoke-virtual {v0}, Landroidx/fragment/app/a;->k()V

    .line 65
    goto :goto_1

    .line 66
    :cond_4
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 69
    move-result-object p2

    .line 70
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 73
    move-result-object p2

    .line 74
    :cond_5
    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 77
    move-result v0

    .line 78
    if-eqz v0, :cond_6

    .line 80
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 83
    move-result-object v0

    .line 84
    check-cast v0, Landroidx/fragment/app/a;

    .line 86
    if-eqz v0, :cond_5

    .line 88
    invoke-virtual {v0}, Landroidx/fragment/app/a;->k()V

    .line 91
    iget-object v1, v0, Landroidx/fragment/app/a;->c:Lo/T7;

    .line 93
    iget-boolean v2, v1, Lo/T7;->l:Z

    .line 95
    if-eqz v2, :cond_5

    .line 97
    invoke-virtual {v1}, Lo/T7;->o()Z

    .line 100
    move-result v1

    .line 101
    if-nez v1, :cond_5

    .line 103
    invoke-virtual {p1, v0}, Lo/H5;->j(Landroidx/fragment/app/a;)V

    .line 106
    goto :goto_2

    .line 107
    :cond_6
    invoke-virtual {p0}, Lo/i8;->Z()V

    .line 110
    iget-boolean p1, p0, Lo/i8;->D:Z

    .line 112
    if-eqz p1, :cond_7

    .line 114
    iget-object p1, p0, Lo/i8;->t:Lo/V7;

    .line 116
    if-eqz p1, :cond_7

    .line 118
    iget p2, p0, Lo/i8;->s:I

    .line 120
    const/4 v0, 0x7

    .line 121
    if-ne p2, v0, :cond_7

    .line 123
    iget-object p1, p1, Lo/V7;->k:Lo/U0;

    .line 125
    invoke-virtual {p1}, Lo/U0;->invalidateOptionsMenu()V

    .line 128
    const/4 p1, 0x0

    .line 129
    iput-boolean p1, p0, Lo/i8;->D:Z

    .line 131
    :cond_7
    return-void
.end method

.method public final L()V
    .locals 2

    .line 1
    iget-object v0, p0, Lo/i8;->t:Lo/V7;

    .line 3
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lo/i8;->E:Z

    .line 9
    iput-boolean v0, p0, Lo/i8;->F:Z

    .line 11
    iget-object v1, p0, Lo/i8;->L:Lo/k8;

    .line 13
    iput-boolean v0, v1, Lo/k8;->h:Z

    .line 15
    iget-object v0, p0, Lo/i8;->c:Lo/H5;

    .line 17
    invoke-virtual {v0}, Lo/H5;->h()Ljava/util/List;

    .line 20
    move-result-object v0

    .line 21
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 24
    move-result-object v0

    .line 25
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_2

    .line 31
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    move-result-object v1

    .line 35
    check-cast v1, Lo/T7;

    .line 37
    if-eqz v1, :cond_1

    .line 39
    iget-object v1, v1, Lo/T7;->t:Lo/i8;

    .line 41
    invoke-virtual {v1}, Lo/i8;->L()V

    .line 44
    goto :goto_0

    .line 45
    :cond_2
    return-void
.end method

.method public final M()Z
    .locals 2

    .line 1
    const/4 v0, -0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    invoke-virtual {p0, v0, v1}, Lo/i8;->N(II)Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final N(II)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lo/i8;->z(Z)Z

    .line 5
    const/4 v1, 0x1

    .line 6
    invoke-virtual {p0, v1}, Lo/i8;->y(Z)V

    .line 9
    iget-object v2, p0, Lo/i8;->w:Lo/T7;

    .line 11
    if-eqz v2, :cond_0

    .line 13
    if-gez p1, :cond_0

    .line 15
    invoke-virtual {v2}, Lo/T7;->g()Lo/i8;

    .line 18
    move-result-object v2

    .line 19
    invoke-virtual {v2}, Lo/i8;->M()Z

    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_0

    .line 25
    return v1

    .line 26
    :cond_0
    iget-object v2, p0, Lo/i8;->I:Ljava/util/ArrayList;

    .line 28
    iget-object v3, p0, Lo/i8;->J:Ljava/util/ArrayList;

    .line 30
    invoke-virtual {p0, v2, v3, p1, p2}, Lo/i8;->O(Ljava/util/ArrayList;Ljava/util/ArrayList;II)Z

    .line 33
    move-result p1

    .line 34
    if-eqz p1, :cond_1

    .line 36
    iput-boolean v1, p0, Lo/i8;->b:Z

    .line 38
    :try_start_0
    iget-object p2, p0, Lo/i8;->I:Ljava/util/ArrayList;

    .line 40
    iget-object v1, p0, Lo/i8;->J:Ljava/util/ArrayList;

    .line 42
    invoke-virtual {p0, p2, v1}, Lo/i8;->Q(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    invoke-virtual {p0}, Lo/i8;->d()V

    .line 48
    goto :goto_0

    .line 49
    :catchall_0
    move-exception p1

    .line 50
    invoke-virtual {p0}, Lo/i8;->d()V

    .line 53
    throw p1

    .line 54
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lo/i8;->b0()V

    .line 57
    iget-boolean p2, p0, Lo/i8;->H:Z

    .line 59
    if-eqz p2, :cond_2

    .line 61
    iput-boolean v0, p0, Lo/i8;->H:Z

    .line 63
    invoke-virtual {p0}, Lo/i8;->Z()V

    .line 66
    :cond_2
    iget-object p2, p0, Lo/i8;->c:Lo/H5;

    .line 68
    iget-object p2, p2, Lo/H5;->b:Ljava/lang/Object;

    .line 70
    check-cast p2, Ljava/util/HashMap;

    .line 72
    invoke-virtual {p2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 75
    move-result-object p2

    .line 76
    const/4 v0, 0x0

    .line 77
    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    .line 80
    move-result-object v0

    .line 81
    invoke-interface {p2, v0}, Ljava/util/Collection;->removeAll(Ljava/util/Collection;)Z

    .line 84
    return p1
.end method

.method public final O(Ljava/util/ArrayList;Ljava/util/ArrayList;II)Z
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    and-int/2addr p4, v0

    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz p4, :cond_0

    .line 6
    move p4, v0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    move p4, v1

    .line 9
    :goto_0
    iget-object v2, p0, Lo/i8;->d:Ljava/util/ArrayList;

    .line 11
    const/4 v3, -0x1

    .line 12
    if-eqz v2, :cond_a

    .line 14
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 17
    move-result v2

    .line 18
    if-eqz v2, :cond_1

    .line 20
    goto :goto_5

    .line 21
    :cond_1
    if-gez p3, :cond_3

    .line 23
    if-eqz p4, :cond_2

    .line 25
    move v3, v1

    .line 26
    goto :goto_5

    .line 27
    :cond_2
    iget-object p3, p0, Lo/i8;->d:Ljava/util/ArrayList;

    .line 29
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    .line 32
    move-result p3

    .line 33
    add-int/lit8 v3, p3, -0x1

    .line 35
    goto :goto_5

    .line 36
    :cond_3
    iget-object v2, p0, Lo/i8;->d:Ljava/util/ArrayList;

    .line 38
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 41
    move-result v2

    .line 42
    sub-int/2addr v2, v0

    .line 43
    :goto_1
    if-ltz v2, :cond_5

    .line 45
    iget-object v4, p0, Lo/i8;->d:Ljava/util/ArrayList;

    .line 47
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 50
    move-result-object v4

    .line 51
    check-cast v4, Lo/M2;

    .line 53
    if-ltz p3, :cond_4

    .line 55
    iget v4, v4, Lo/M2;->r:I

    .line 57
    if-ne p3, v4, :cond_4

    .line 59
    goto :goto_2

    .line 60
    :cond_4
    add-int/lit8 v2, v2, -0x1

    .line 62
    goto :goto_1

    .line 63
    :cond_5
    :goto_2
    if-gez v2, :cond_7

    .line 65
    :cond_6
    :goto_3
    move v3, v2

    .line 66
    goto :goto_5

    .line 67
    :cond_7
    if-eqz p4, :cond_8

    .line 69
    :goto_4
    if-lez v2, :cond_6

    .line 71
    iget-object p4, p0, Lo/i8;->d:Ljava/util/ArrayList;

    .line 73
    add-int/lit8 v3, v2, -0x1

    .line 75
    invoke-virtual {p4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 78
    move-result-object p4

    .line 79
    check-cast p4, Lo/M2;

    .line 81
    if-ltz p3, :cond_6

    .line 83
    iget p4, p4, Lo/M2;->r:I

    .line 85
    if-ne p3, p4, :cond_6

    .line 87
    add-int/lit8 v2, v2, -0x1

    .line 89
    goto :goto_4

    .line 90
    :cond_8
    iget-object p3, p0, Lo/i8;->d:Ljava/util/ArrayList;

    .line 92
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    .line 95
    move-result p3

    .line 96
    sub-int/2addr p3, v0

    .line 97
    if-ne v2, p3, :cond_9

    .line 99
    goto :goto_5

    .line 100
    :cond_9
    add-int/lit8 v2, v2, 0x1

    .line 102
    goto :goto_3

    .line 103
    :cond_a
    :goto_5
    if-gez v3, :cond_b

    .line 105
    return v1

    .line 106
    :cond_b
    iget-object p3, p0, Lo/i8;->d:Ljava/util/ArrayList;

    .line 108
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    .line 111
    move-result p3

    .line 112
    sub-int/2addr p3, v0

    .line 113
    :goto_6
    if-lt p3, v3, :cond_c

    .line 115
    iget-object p4, p0, Lo/i8;->d:Ljava/util/ArrayList;

    .line 117
    invoke-virtual {p4, p3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 120
    move-result-object p4

    .line 121
    check-cast p4, Lo/M2;

    .line 123
    invoke-virtual {p1, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 126
    sget-object p4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 128
    invoke-virtual {p2, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    add-int/lit8 p3, p3, -0x1

    .line 133
    goto :goto_6

    .line 134
    :cond_c
    return v0
.end method

.method public final P(Lo/T7;)V
    .locals 3

    .line 1
    const-string v0, "FragmentManager"

    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 7
    move-result v1

    .line 8
    if-eqz v1, :cond_0

    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    .line 12
    const-string v2, "remove: "

    .line 14
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 20
    const-string v2, " nesting="

    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    iget v2, p1, Lo/T7;->q:I

    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    move-result-object v1

    .line 34
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    :cond_0
    invoke-virtual {p1}, Lo/T7;->o()Z

    .line 40
    move-result v0

    .line 41
    iget-boolean v1, p1, Lo/T7;->z:Z

    .line 43
    if-eqz v1, :cond_1

    .line 45
    if-nez v0, :cond_3

    .line 47
    :cond_1
    iget-object v0, p0, Lo/i8;->c:Lo/H5;

    .line 49
    iget-object v1, v0, Lo/H5;->a:Ljava/lang/Object;

    .line 51
    check-cast v1, Ljava/util/ArrayList;

    .line 53
    monitor-enter v1

    .line 54
    :try_start_0
    iget-object v0, v0, Lo/H5;->a:Ljava/lang/Object;

    .line 56
    check-cast v0, Ljava/util/ArrayList;

    .line 58
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 61
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    const/4 v0, 0x0

    .line 63
    iput-boolean v0, p1, Lo/T7;->k:Z

    .line 65
    invoke-static {p1}, Lo/i8;->G(Lo/T7;)Z

    .line 68
    move-result v0

    .line 69
    const/4 v1, 0x1

    .line 70
    if-eqz v0, :cond_2

    .line 72
    iput-boolean v1, p0, Lo/i8;->D:Z

    .line 74
    :cond_2
    iput-boolean v1, p1, Lo/T7;->l:Z

    .line 76
    invoke-virtual {p0, p1}, Lo/i8;->X(Lo/T7;)V

    .line 79
    :cond_3
    return-void

    .line 80
    :catchall_0
    move-exception p1

    .line 81
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 82
    throw p1
.end method

.method public final Q(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 11
    move-result v0

    .line 12
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 15
    move-result v1

    .line 16
    if-ne v0, v1, :cond_6

    .line 18
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 21
    move-result v0

    .line 22
    const/4 v1, 0x0

    .line 23
    move v2, v1

    .line 24
    :goto_0
    if-ge v1, v0, :cond_4

    .line 26
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 29
    move-result-object v3

    .line 30
    check-cast v3, Lo/M2;

    .line 32
    iget-boolean v3, v3, Lo/M2;->o:Z

    .line 34
    if-nez v3, :cond_3

    .line 36
    if-eq v2, v1, :cond_1

    .line 38
    invoke-virtual {p0, p1, p2, v2, v1}, Lo/i8;->A(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    .line 41
    :cond_1
    add-int/lit8 v2, v1, 0x1

    .line 43
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 46
    move-result-object v3

    .line 47
    check-cast v3, Ljava/lang/Boolean;

    .line 49
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 52
    move-result v3

    .line 53
    if-eqz v3, :cond_2

    .line 55
    :goto_1
    if-ge v2, v0, :cond_2

    .line 57
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 60
    move-result-object v3

    .line 61
    check-cast v3, Ljava/lang/Boolean;

    .line 63
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 66
    move-result v3

    .line 67
    if-eqz v3, :cond_2

    .line 69
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 72
    move-result-object v3

    .line 73
    check-cast v3, Lo/M2;

    .line 75
    iget-boolean v3, v3, Lo/M2;->o:Z

    .line 77
    if-nez v3, :cond_2

    .line 79
    add-int/lit8 v2, v2, 0x1

    .line 81
    goto :goto_1

    .line 82
    :cond_2
    invoke-virtual {p0, p1, p2, v1, v2}, Lo/i8;->A(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    .line 85
    add-int/lit8 v1, v2, -0x1

    .line 87
    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 89
    goto :goto_0

    .line 90
    :cond_4
    if-eq v2, v0, :cond_5

    .line 92
    invoke-virtual {p0, p1, p2, v2, v0}, Lo/i8;->A(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    .line 95
    :cond_5
    return-void

    .line 96
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 98
    const-string p2, "Internal error with the back stack records"

    .line 100
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 103
    throw p1
.end method

.method public final R(Landroid/os/Parcelable;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 3
    move-object/from16 v1, p1

    .line 5
    check-cast v1, Landroid/os/Bundle;

    .line 7
    invoke-virtual {v1}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    .line 10
    move-result-object v2

    .line 11
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 14
    move-result-object v2

    .line 15
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    move-result v3

    .line 19
    if-eqz v3, :cond_1

    .line 21
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    move-result-object v3

    .line 25
    check-cast v3, Ljava/lang/String;

    .line 27
    const-string v4, "result_"

    .line 29
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 32
    move-result v4

    .line 33
    if-eqz v4, :cond_0

    .line 35
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 38
    move-result-object v4

    .line 39
    if-eqz v4, :cond_0

    .line 41
    iget-object v5, v0, Lo/i8;->t:Lo/V7;

    .line 43
    iget-object v5, v5, Lo/V7;->h:Lo/U0;

    .line 45
    invoke-virtual {v5}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    .line 48
    move-result-object v5

    .line 49
    invoke-virtual {v4, v5}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 52
    const/4 v5, 0x7

    .line 53
    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 56
    move-result-object v3

    .line 57
    iget-object v5, v0, Lo/i8;->k:Ljava/util/Map;

    .line 59
    invoke-interface {v5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    goto :goto_0

    .line 63
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    .line 65
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 68
    invoke-virtual {v1}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    .line 71
    move-result-object v3

    .line 72
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 75
    move-result-object v3

    .line 76
    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 79
    move-result v4

    .line 80
    const-string v5, "state"

    .line 82
    if-eqz v4, :cond_3

    .line 84
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 87
    move-result-object v4

    .line 88
    check-cast v4, Ljava/lang/String;

    .line 90
    const-string v6, "fragment_"

    .line 92
    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 95
    move-result v6

    .line 96
    if-eqz v6, :cond_2

    .line 98
    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 101
    move-result-object v4

    .line 102
    if-eqz v4, :cond_2

    .line 104
    iget-object v6, v0, Lo/i8;->t:Lo/V7;

    .line 106
    iget-object v6, v6, Lo/V7;->h:Lo/U0;

    .line 108
    invoke-virtual {v6}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    .line 111
    move-result-object v6

    .line 112
    invoke-virtual {v4, v6}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 115
    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 118
    move-result-object v4

    .line 119
    check-cast v4, Lo/n8;

    .line 121
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    goto :goto_1

    .line 125
    :cond_3
    iget-object v3, v0, Lo/i8;->c:Lo/H5;

    .line 127
    iget-object v4, v3, Lo/H5;->c:Ljava/lang/Object;

    .line 129
    check-cast v4, Ljava/util/HashMap;

    .line 131
    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 134
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 137
    move-result-object v2

    .line 138
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 141
    move-result v6

    .line 142
    if-eqz v6, :cond_4

    .line 144
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 147
    move-result-object v6

    .line 148
    check-cast v6, Lo/n8;

    .line 150
    iget-object v7, v6, Lo/n8;->b:Ljava/lang/String;

    .line 152
    invoke-virtual {v4, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    goto :goto_2

    .line 156
    :cond_4
    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 159
    move-result-object v1

    .line 160
    check-cast v1, Lo/j8;

    .line 162
    if-nez v1, :cond_5

    .line 164
    return-void

    .line 165
    :cond_5
    iget-object v2, v3, Lo/H5;->b:Ljava/lang/Object;

    .line 167
    check-cast v2, Ljava/util/HashMap;

    .line 169
    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 172
    iget-object v4, v1, Lo/j8;->a:Ljava/util/ArrayList;

    .line 174
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 177
    move-result-object v4

    .line 178
    :cond_6
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 181
    move-result v5

    .line 182
    const/4 v6, 0x2

    .line 183
    iget-object v7, v0, Lo/i8;->l:Lo/H1;

    .line 185
    const-string v8, "): "

    .line 187
    const-string v9, "FragmentManager"

    .line 189
    if-eqz v5, :cond_a

    .line 191
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 194
    move-result-object v5

    .line 195
    check-cast v5, Ljava/lang/String;

    .line 197
    iget-object v10, v3, Lo/H5;->c:Ljava/lang/Object;

    .line 199
    check-cast v10, Ljava/util/HashMap;

    .line 201
    invoke-virtual {v10, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    move-result-object v5

    .line 205
    move-object v15, v5

    .line 206
    check-cast v15, Lo/n8;

    .line 208
    if-eqz v15, :cond_6

    .line 210
    iget-object v5, v0, Lo/i8;->L:Lo/k8;

    .line 212
    iget-object v5, v5, Lo/k8;->c:Ljava/util/HashMap;

    .line 214
    iget-object v10, v15, Lo/n8;->b:Ljava/lang/String;

    .line 216
    invoke-virtual {v5, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    move-result-object v5

    .line 220
    check-cast v5, Lo/T7;

    .line 222
    if-eqz v5, :cond_8

    .line 224
    invoke-static {v9, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 227
    move-result v10

    .line 228
    if-eqz v10, :cond_7

    .line 230
    new-instance v10, Ljava/lang/StringBuilder;

    .line 232
    const-string v11, "restoreSaveState: re-attaching retained "

    .line 234
    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 237
    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 240
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 243
    move-result-object v10

    .line 244
    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    :cond_7
    new-instance v10, Landroidx/fragment/app/a;

    .line 249
    invoke-direct {v10, v7, v3, v5, v15}, Landroidx/fragment/app/a;-><init>(Lo/H1;Lo/H5;Lo/T7;Lo/n8;)V

    .line 252
    goto :goto_4

    .line 253
    :cond_8
    new-instance v5, Landroidx/fragment/app/a;

    .line 255
    iget-object v7, v0, Lo/i8;->t:Lo/V7;

    .line 257
    iget-object v7, v7, Lo/V7;->h:Lo/U0;

    .line 259
    invoke-virtual {v7}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    .line 262
    move-result-object v13

    .line 263
    invoke-virtual/range {p0 .. p0}, Lo/i8;->D()Lo/d8;

    .line 266
    move-result-object v14

    .line 267
    iget-object v11, v0, Lo/i8;->l:Lo/H1;

    .line 269
    iget-object v12, v0, Lo/i8;->c:Lo/H5;

    .line 271
    move-object v10, v5

    .line 272
    invoke-direct/range {v10 .. v15}, Landroidx/fragment/app/a;-><init>(Lo/H1;Lo/H5;Ljava/lang/ClassLoader;Lo/d8;Lo/n8;)V

    .line 275
    :goto_4
    iget-object v5, v10, Landroidx/fragment/app/a;->c:Lo/T7;

    .line 277
    iput-object v0, v5, Lo/T7;->r:Lo/i8;

    .line 279
    invoke-static {v9, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 282
    move-result v6

    .line 283
    if-eqz v6, :cond_9

    .line 285
    new-instance v6, Ljava/lang/StringBuilder;

    .line 287
    const-string v7, "restoreSaveState: active ("

    .line 289
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 292
    iget-object v7, v5, Lo/T7;->e:Ljava/lang/String;

    .line 294
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 303
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 306
    move-result-object v5

    .line 307
    invoke-static {v9, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    :cond_9
    iget-object v5, v0, Lo/i8;->t:Lo/V7;

    .line 312
    iget-object v5, v5, Lo/V7;->h:Lo/U0;

    .line 314
    invoke-virtual {v5}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    .line 317
    move-result-object v5

    .line 318
    invoke-virtual {v10, v5}, Landroidx/fragment/app/a;->m(Ljava/lang/ClassLoader;)V

    .line 321
    invoke-virtual {v3, v10}, Lo/H5;->i(Landroidx/fragment/app/a;)V

    .line 324
    iget v5, v0, Lo/i8;->s:I

    .line 326
    iput v5, v10, Landroidx/fragment/app/a;->e:I

    .line 328
    goto/16 :goto_3

    .line 330
    :cond_a
    iget-object v4, v0, Lo/i8;->L:Lo/k8;

    .line 332
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 335
    new-instance v5, Ljava/util/ArrayList;

    .line 337
    iget-object v4, v4, Lo/k8;->c:Ljava/util/HashMap;

    .line 339
    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 342
    move-result-object v4

    .line 343
    invoke-direct {v5, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 346
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 349
    move-result-object v4

    .line 350
    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 353
    move-result v5

    .line 354
    const/4 v10, 0x1

    .line 355
    if-eqz v5, :cond_d

    .line 357
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 360
    move-result-object v5

    .line 361
    check-cast v5, Lo/T7;

    .line 363
    iget-object v11, v5, Lo/T7;->e:Ljava/lang/String;

    .line 365
    invoke-virtual {v2, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    move-result-object v11

    .line 369
    if-eqz v11, :cond_b

    .line 371
    goto :goto_5

    .line 372
    :cond_b
    invoke-static {v9, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 375
    move-result v11

    .line 376
    if-eqz v11, :cond_c

    .line 378
    new-instance v11, Ljava/lang/StringBuilder;

    .line 380
    const-string v12, "Discarding retained Fragment "

    .line 382
    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 385
    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 388
    const-string v12, " that was not found in the set of active Fragments "

    .line 390
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 393
    iget-object v12, v1, Lo/j8;->a:Ljava/util/ArrayList;

    .line 395
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 398
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 401
    move-result-object v11

    .line 402
    invoke-static {v9, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    :cond_c
    iget-object v11, v0, Lo/i8;->L:Lo/k8;

    .line 407
    invoke-virtual {v11, v5}, Lo/k8;->d(Lo/T7;)V

    .line 410
    iput-object v0, v5, Lo/T7;->r:Lo/i8;

    .line 412
    new-instance v11, Landroidx/fragment/app/a;

    .line 414
    invoke-direct {v11, v7, v3, v5}, Landroidx/fragment/app/a;-><init>(Lo/H1;Lo/H5;Lo/T7;)V

    .line 417
    iput v10, v11, Landroidx/fragment/app/a;->e:I

    .line 419
    invoke-virtual {v11}, Landroidx/fragment/app/a;->k()V

    .line 422
    iput-boolean v10, v5, Lo/T7;->l:Z

    .line 424
    invoke-virtual {v11}, Landroidx/fragment/app/a;->k()V

    .line 427
    goto :goto_5

    .line 428
    :cond_d
    iget-object v2, v1, Lo/j8;->b:Ljava/util/ArrayList;

    .line 430
    iget-object v4, v3, Lo/H5;->a:Ljava/lang/Object;

    .line 432
    check-cast v4, Ljava/util/ArrayList;

    .line 434
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 437
    if-eqz v2, :cond_10

    .line 439
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 442
    move-result-object v2

    .line 443
    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 446
    move-result v4

    .line 447
    if-eqz v4, :cond_10

    .line 449
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 452
    move-result-object v4

    .line 453
    check-cast v4, Ljava/lang/String;

    .line 455
    invoke-virtual {v3, v4}, Lo/H5;->c(Ljava/lang/String;)Lo/T7;

    .line 458
    move-result-object v5

    .line 459
    if-eqz v5, :cond_f

    .line 461
    invoke-static {v9, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 464
    move-result v7

    .line 465
    if-eqz v7, :cond_e

    .line 467
    new-instance v7, Ljava/lang/StringBuilder;

    .line 469
    const-string v11, "restoreSaveState: added ("

    .line 471
    invoke-direct {v7, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 474
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 477
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 480
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 483
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 486
    move-result-object v4

    .line 487
    invoke-static {v9, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    :cond_e
    invoke-virtual {v3, v5}, Lo/H5;->a(Lo/T7;)V

    .line 493
    goto :goto_6

    .line 494
    :cond_f
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 496
    const-string v2, "No instantiated fragment for ("

    .line 498
    const-string v3, ")"

    .line 500
    invoke-static {v2, v4, v3}, Lo/o5;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 503
    move-result-object v2

    .line 504
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 507
    throw v1

    .line 508
    :cond_10
    iget-object v2, v1, Lo/j8;->c:[Lo/N2;

    .line 510
    if-eqz v2, :cond_18

    .line 512
    new-instance v2, Ljava/util/ArrayList;

    .line 514
    iget-object v5, v1, Lo/j8;->c:[Lo/N2;

    .line 516
    array-length v5, v5

    .line 517
    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 520
    iput-object v2, v0, Lo/i8;->d:Ljava/util/ArrayList;

    .line 522
    const/4 v2, 0x0

    .line 523
    :goto_7
    iget-object v5, v1, Lo/j8;->c:[Lo/N2;

    .line 525
    array-length v7, v5

    .line 526
    if-ge v2, v7, :cond_17

    .line 528
    aget-object v5, v5, v2

    .line 530
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 533
    new-instance v7, Lo/M2;

    .line 535
    invoke-direct {v7, v0}, Lo/M2;-><init>(Lo/i8;)V

    .line 538
    const/4 v11, 0x0

    .line 539
    const/4 v12, 0x0

    .line 540
    :goto_8
    iget-object v13, v5, Lo/N2;->a:[I

    .line 542
    array-length v14, v13

    .line 543
    if-ge v11, v14, :cond_13

    .line 545
    new-instance v14, Lo/r8;

    .line 547
    invoke-direct {v14}, Ljava/lang/Object;-><init>()V

    .line 550
    add-int/lit8 v15, v11, 0x1

    .line 552
    aget v4, v13, v11

    .line 554
    iput v4, v14, Lo/r8;->a:I

    .line 556
    invoke-static {v9, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 559
    move-result v4

    .line 560
    if-eqz v4, :cond_11

    .line 562
    new-instance v4, Ljava/lang/StringBuilder;

    .line 564
    const-string v6, "Instantiate "

    .line 566
    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 569
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 572
    const-string v6, " op #"

    .line 574
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 577
    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 580
    const-string v6, " base fragment #"

    .line 582
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 585
    aget v6, v13, v15

    .line 587
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 590
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 593
    move-result-object v4

    .line 594
    invoke-static {v9, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    :cond_11
    invoke-static {}, Lo/M9;->values()[Lo/M9;

    .line 600
    move-result-object v4

    .line 601
    iget-object v6, v5, Lo/N2;->c:[I

    .line 603
    aget v6, v6, v12

    .line 605
    aget-object v4, v4, v6

    .line 607
    iput-object v4, v14, Lo/r8;->h:Lo/M9;

    .line 609
    invoke-static {}, Lo/M9;->values()[Lo/M9;

    .line 612
    move-result-object v4

    .line 613
    iget-object v6, v5, Lo/N2;->d:[I

    .line 615
    aget v6, v6, v12

    .line 617
    aget-object v4, v4, v6

    .line 619
    iput-object v4, v14, Lo/r8;->i:Lo/M9;

    .line 621
    add-int/lit8 v4, v11, 0x2

    .line 623
    aget v6, v13, v15

    .line 625
    if-eqz v6, :cond_12

    .line 627
    move v6, v10

    .line 628
    goto :goto_9

    .line 629
    :cond_12
    const/4 v6, 0x0

    .line 630
    :goto_9
    iput-boolean v6, v14, Lo/r8;->c:Z

    .line 632
    add-int/lit8 v6, v11, 0x3

    .line 634
    aget v4, v13, v4

    .line 636
    iput v4, v14, Lo/r8;->d:I

    .line 638
    add-int/lit8 v15, v11, 0x4

    .line 640
    aget v6, v13, v6

    .line 642
    iput v6, v14, Lo/r8;->e:I

    .line 644
    add-int/lit8 v16, v11, 0x5

    .line 646
    aget v15, v13, v15

    .line 648
    iput v15, v14, Lo/r8;->f:I

    .line 650
    add-int/lit8 v11, v11, 0x6

    .line 652
    aget v13, v13, v16

    .line 654
    iput v13, v14, Lo/r8;->g:I

    .line 656
    iput v4, v7, Lo/M2;->b:I

    .line 658
    iput v6, v7, Lo/M2;->c:I

    .line 660
    iput v15, v7, Lo/M2;->d:I

    .line 662
    iput v13, v7, Lo/M2;->e:I

    .line 664
    invoke-virtual {v7, v14}, Lo/M2;->b(Lo/r8;)V

    .line 667
    add-int/lit8 v12, v12, 0x1

    .line 669
    const/4 v6, 0x2

    .line 670
    goto/16 :goto_8

    .line 672
    :cond_13
    iget v4, v5, Lo/N2;->e:I

    .line 674
    iput v4, v7, Lo/M2;->f:I

    .line 676
    iget-object v4, v5, Lo/N2;->f:Ljava/lang/String;

    .line 678
    iput-object v4, v7, Lo/M2;->h:Ljava/lang/String;

    .line 680
    iput-boolean v10, v7, Lo/M2;->g:Z

    .line 682
    iget v4, v5, Lo/N2;->h:I

    .line 684
    iput v4, v7, Lo/M2;->i:I

    .line 686
    iget-object v4, v5, Lo/N2;->i:Ljava/lang/CharSequence;

    .line 688
    iput-object v4, v7, Lo/M2;->j:Ljava/lang/CharSequence;

    .line 690
    iget v4, v5, Lo/N2;->j:I

    .line 692
    iput v4, v7, Lo/M2;->k:I

    .line 694
    iget-object v4, v5, Lo/N2;->k:Ljava/lang/CharSequence;

    .line 696
    iput-object v4, v7, Lo/M2;->l:Ljava/lang/CharSequence;

    .line 698
    iget-object v4, v5, Lo/N2;->l:Ljava/util/ArrayList;

    .line 700
    iput-object v4, v7, Lo/M2;->m:Ljava/util/ArrayList;

    .line 702
    iget-object v4, v5, Lo/N2;->m:Ljava/util/ArrayList;

    .line 704
    iput-object v4, v7, Lo/M2;->n:Ljava/util/ArrayList;

    .line 706
    iget-boolean v4, v5, Lo/N2;->n:Z

    .line 708
    iput-boolean v4, v7, Lo/M2;->o:Z

    .line 710
    iget v4, v5, Lo/N2;->g:I

    .line 712
    iput v4, v7, Lo/M2;->r:I

    .line 714
    const/4 v4, 0x0

    .line 715
    :goto_a
    iget-object v6, v5, Lo/N2;->b:Ljava/util/ArrayList;

    .line 717
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 720
    move-result v11

    .line 721
    if-ge v4, v11, :cond_15

    .line 723
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 726
    move-result-object v6

    .line 727
    check-cast v6, Ljava/lang/String;

    .line 729
    if-eqz v6, :cond_14

    .line 731
    iget-object v11, v7, Lo/M2;->a:Ljava/util/ArrayList;

    .line 733
    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 736
    move-result-object v11

    .line 737
    check-cast v11, Lo/r8;

    .line 739
    invoke-virtual {v3, v6}, Lo/H5;->c(Ljava/lang/String;)Lo/T7;

    .line 742
    move-result-object v6

    .line 743
    iput-object v6, v11, Lo/r8;->b:Lo/T7;

    .line 745
    :cond_14
    add-int/lit8 v4, v4, 0x1

    .line 747
    goto :goto_a

    .line 748
    :cond_15
    invoke-virtual {v7, v10}, Lo/M2;->c(I)V

    .line 751
    const/4 v4, 0x2

    .line 752
    invoke-static {v9, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 755
    move-result v5

    .line 756
    if-eqz v5, :cond_16

    .line 758
    new-instance v5, Ljava/lang/StringBuilder;

    .line 760
    const-string v6, "restoreAllState: back stack #"

    .line 762
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 765
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 768
    const-string v6, " (index "

    .line 770
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 773
    iget v6, v7, Lo/M2;->r:I

    .line 775
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 778
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 781
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 784
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 787
    move-result-object v5

    .line 788
    invoke-static {v9, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    new-instance v5, Lo/ua;

    .line 793
    invoke-direct {v5}, Lo/ua;-><init>()V

    .line 796
    new-instance v6, Ljava/io/PrintWriter;

    .line 798
    invoke-direct {v6, v5}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 801
    const-string v5, "  "

    .line 803
    const/4 v11, 0x0

    .line 804
    invoke-virtual {v7, v5, v6, v11}, Lo/M2;->d(Ljava/lang/String;Ljava/io/PrintWriter;Z)V

    .line 807
    invoke-virtual {v6}, Ljava/io/PrintWriter;->close()V

    .line 810
    goto :goto_b

    .line 811
    :cond_16
    const/4 v11, 0x0

    .line 812
    :goto_b
    iget-object v5, v0, Lo/i8;->d:Ljava/util/ArrayList;

    .line 814
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 817
    add-int/lit8 v2, v2, 0x1

    .line 819
    move v6, v4

    .line 820
    goto/16 :goto_7

    .line 822
    :cond_17
    const/4 v11, 0x0

    .line 823
    goto :goto_c

    .line 824
    :cond_18
    const/4 v11, 0x0

    .line 825
    const/4 v2, 0x0

    .line 826
    iput-object v2, v0, Lo/i8;->d:Ljava/util/ArrayList;

    .line 828
    :goto_c
    iget-object v2, v0, Lo/i8;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 830
    iget v4, v1, Lo/j8;->d:I

    .line 832
    invoke-virtual {v2, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 835
    iget-object v2, v1, Lo/j8;->e:Ljava/lang/String;

    .line 837
    if-eqz v2, :cond_19

    .line 839
    invoke-virtual {v3, v2}, Lo/H5;->c(Ljava/lang/String;)Lo/T7;

    .line 842
    move-result-object v2

    .line 843
    iput-object v2, v0, Lo/i8;->w:Lo/T7;

    .line 845
    invoke-virtual {v0, v2}, Lo/i8;->r(Lo/T7;)V

    .line 848
    :cond_19
    iget-object v2, v1, Lo/j8;->f:Ljava/util/ArrayList;

    .line 850
    if-eqz v2, :cond_1a

    .line 852
    move v4, v11

    .line 853
    :goto_d
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 856
    move-result v3

    .line 857
    if-ge v4, v3, :cond_1a

    .line 859
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 862
    move-result-object v3

    .line 863
    check-cast v3, Ljava/lang/String;

    .line 865
    iget-object v5, v1, Lo/j8;->g:Ljava/util/ArrayList;

    .line 867
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 870
    move-result-object v5

    .line 871
    check-cast v5, Lo/O2;

    .line 873
    iget-object v6, v0, Lo/i8;->j:Ljava/util/Map;

    .line 875
    invoke-interface {v6, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 878
    add-int/lit8 v4, v4, 0x1

    .line 880
    goto :goto_d

    .line 881
    :cond_1a
    new-instance v2, Ljava/util/ArrayDeque;

    .line 883
    iget-object v1, v1, Lo/j8;->h:Ljava/util/ArrayList;

    .line 885
    invoke-direct {v2, v1}, Ljava/util/ArrayDeque;-><init>(Ljava/util/Collection;)V

    .line 888
    iput-object v2, v0, Lo/i8;->C:Ljava/util/ArrayDeque;

    .line 890
    return-void
.end method

.method public final S()Landroid/os/Bundle;
    .locals 13

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 6
    invoke-virtual {p0}, Lo/i8;->e()Ljava/util/HashSet;

    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 13
    move-result-object v1

    .line 14
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    move-result v2

    .line 18
    const/4 v3, 0x0

    .line 19
    const/4 v4, 0x2

    .line 20
    if-eqz v2, :cond_2

    .line 22
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    move-result-object v2

    .line 26
    check-cast v2, Lo/K5;

    .line 28
    iget-boolean v5, v2, Lo/K5;->e:Z

    .line 30
    if-eqz v5, :cond_0

    .line 32
    const-string v5, "FragmentManager"

    .line 34
    invoke-static {v5, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 37
    move-result v4

    .line 38
    if-eqz v4, :cond_1

    .line 40
    const-string v4, "SpecialEffectsController: Forcing postponed operations"

    .line 42
    invoke-static {v5, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    :cond_1
    iput-boolean v3, v2, Lo/K5;->e:Z

    .line 47
    invoke-virtual {v2}, Lo/K5;->c()V

    .line 50
    goto :goto_0

    .line 51
    :cond_2
    invoke-virtual {p0}, Lo/i8;->w()V

    .line 54
    const/4 v1, 0x1

    .line 55
    invoke-virtual {p0, v1}, Lo/i8;->z(Z)Z

    .line 58
    iput-boolean v1, p0, Lo/i8;->E:Z

    .line 60
    iget-object v2, p0, Lo/i8;->L:Lo/k8;

    .line 62
    iput-boolean v1, v2, Lo/k8;->h:Z

    .line 64
    iget-object v1, p0, Lo/i8;->c:Lo/H5;

    .line 66
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 69
    new-instance v2, Ljava/util/ArrayList;

    .line 71
    iget-object v1, v1, Lo/H5;->b:Ljava/lang/Object;

    .line 73
    check-cast v1, Ljava/util/HashMap;

    .line 75
    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    .line 78
    move-result v5

    .line 79
    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 82
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 85
    move-result-object v1

    .line 86
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 89
    move-result-object v1

    .line 90
    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 93
    move-result v5

    .line 94
    const/4 v6, 0x0

    .line 95
    if-eqz v5, :cond_f

    .line 97
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 100
    move-result-object v5

    .line 101
    check-cast v5, Landroidx/fragment/app/a;

    .line 103
    if-eqz v5, :cond_3

    .line 105
    new-instance v7, Lo/n8;

    .line 107
    iget-object v8, v5, Landroidx/fragment/app/a;->c:Lo/T7;

    .line 109
    invoke-direct {v7, v8}, Lo/n8;-><init>(Lo/T7;)V

    .line 112
    iget v9, v8, Lo/T7;->a:I

    .line 114
    const/4 v10, -0x1

    .line 115
    if-le v9, v10, :cond_d

    .line 117
    iget-object v9, v7, Lo/n8;->m:Landroid/os/Bundle;

    .line 119
    if-nez v9, :cond_d

    .line 121
    new-instance v9, Landroid/os/Bundle;

    .line 123
    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 126
    invoke-virtual {v8, v9}, Lo/T7;->x(Landroid/os/Bundle;)V

    .line 129
    iget-object v10, v8, Lo/T7;->P:Lo/t8;

    .line 131
    invoke-virtual {v10, v9}, Lo/t8;->c(Landroid/os/Bundle;)V

    .line 134
    iget-object v10, v8, Lo/T7;->t:Lo/i8;

    .line 136
    invoke-virtual {v10}, Lo/i8;->S()Landroid/os/Bundle;

    .line 139
    move-result-object v10

    .line 140
    const-string v11, "android:support:fragments"

    .line 142
    invoke-virtual {v9, v11, v10}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 145
    iget-object v10, v5, Landroidx/fragment/app/a;->a:Lo/H1;

    .line 147
    invoke-virtual {v10, v3}, Lo/H1;->m(Z)V

    .line 150
    invoke-virtual {v9}, Landroid/os/BaseBundle;->isEmpty()Z

    .line 153
    move-result v10

    .line 154
    if-eqz v10, :cond_4

    .line 156
    goto :goto_2

    .line 157
    :cond_4
    move-object v6, v9

    .line 158
    :goto_2
    iget-object v9, v8, Lo/T7;->E:Landroid/view/View;

    .line 160
    if-eqz v9, :cond_5

    .line 162
    invoke-virtual {v5}, Landroidx/fragment/app/a;->o()V

    .line 165
    :cond_5
    iget-object v9, v8, Lo/T7;->c:Landroid/util/SparseArray;

    .line 167
    if-eqz v9, :cond_7

    .line 169
    if-nez v6, :cond_6

    .line 171
    new-instance v6, Landroid/os/Bundle;

    .line 173
    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 176
    :cond_6
    const-string v9, "android:view_state"

    .line 178
    iget-object v10, v8, Lo/T7;->c:Landroid/util/SparseArray;

    .line 180
    invoke-virtual {v6, v9, v10}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 183
    :cond_7
    iget-object v9, v8, Lo/T7;->d:Landroid/os/Bundle;

    .line 185
    if-eqz v9, :cond_9

    .line 187
    if-nez v6, :cond_8

    .line 189
    new-instance v6, Landroid/os/Bundle;

    .line 191
    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 194
    :cond_8
    const-string v9, "android:view_registry_state"

    .line 196
    iget-object v10, v8, Lo/T7;->d:Landroid/os/Bundle;

    .line 198
    invoke-virtual {v6, v9, v10}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 201
    :cond_9
    iget-boolean v9, v8, Lo/T7;->G:Z

    .line 203
    if-nez v9, :cond_b

    .line 205
    if-nez v6, :cond_a

    .line 207
    new-instance v6, Landroid/os/Bundle;

    .line 209
    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 212
    :cond_a
    const-string v9, "android:user_visible_hint"

    .line 214
    iget-boolean v10, v8, Lo/T7;->G:Z

    .line 216
    invoke-virtual {v6, v9, v10}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 219
    :cond_b
    iput-object v6, v7, Lo/n8;->m:Landroid/os/Bundle;

    .line 221
    iget-object v9, v8, Lo/T7;->h:Ljava/lang/String;

    .line 223
    if-eqz v9, :cond_e

    .line 225
    if-nez v6, :cond_c

    .line 227
    new-instance v6, Landroid/os/Bundle;

    .line 229
    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 232
    iput-object v6, v7, Lo/n8;->m:Landroid/os/Bundle;

    .line 234
    :cond_c
    iget-object v6, v7, Lo/n8;->m:Landroid/os/Bundle;

    .line 236
    const-string v9, "android:target_state"

    .line 238
    iget-object v10, v8, Lo/T7;->h:Ljava/lang/String;

    .line 240
    invoke-virtual {v6, v9, v10}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    iget v6, v8, Lo/T7;->i:I

    .line 245
    if-eqz v6, :cond_e

    .line 247
    iget-object v9, v7, Lo/n8;->m:Landroid/os/Bundle;

    .line 249
    const-string v10, "android:target_req_state"

    .line 251
    invoke-virtual {v9, v10, v6}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 254
    goto :goto_3

    .line 255
    :cond_d
    iget-object v6, v8, Lo/T7;->b:Landroid/os/Bundle;

    .line 257
    iput-object v6, v7, Lo/n8;->m:Landroid/os/Bundle;

    .line 259
    :cond_e
    :goto_3
    iget-object v6, v8, Lo/T7;->e:Ljava/lang/String;

    .line 261
    iget-object v8, v5, Landroidx/fragment/app/a;->b:Lo/H5;

    .line 263
    iget-object v8, v8, Lo/H5;->c:Ljava/lang/Object;

    .line 265
    check-cast v8, Ljava/util/HashMap;

    .line 267
    invoke-virtual {v8, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    move-result-object v6

    .line 271
    check-cast v6, Lo/n8;

    .line 273
    iget-object v5, v5, Landroidx/fragment/app/a;->c:Lo/T7;

    .line 275
    iget-object v6, v5, Lo/T7;->e:Ljava/lang/String;

    .line 277
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 280
    const-string v6, "FragmentManager"

    .line 282
    invoke-static {v6, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 285
    move-result v7

    .line 286
    if-eqz v7, :cond_3

    .line 288
    new-instance v7, Ljava/lang/StringBuilder;

    .line 290
    const-string v8, "Saved state of "

    .line 292
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 295
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 298
    const-string v8, ": "

    .line 300
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    iget-object v5, v5, Lo/T7;->b:Landroid/os/Bundle;

    .line 305
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 308
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 311
    move-result-object v5

    .line 312
    invoke-static {v6, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    goto/16 :goto_1

    .line 317
    :cond_f
    iget-object v1, p0, Lo/i8;->c:Lo/H5;

    .line 319
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 322
    new-instance v5, Ljava/util/ArrayList;

    .line 324
    iget-object v1, v1, Lo/H5;->c:Ljava/lang/Object;

    .line 326
    check-cast v1, Ljava/util/HashMap;

    .line 328
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 331
    move-result-object v1

    .line 332
    invoke-direct {v5, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 335
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    .line 338
    move-result v1

    .line 339
    if-eqz v1, :cond_10

    .line 341
    const-string v1, "FragmentManager"

    .line 343
    invoke-static {v1, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 346
    move-result v1

    .line 347
    if-eqz v1, :cond_19

    .line 349
    const-string v1, "FragmentManager"

    .line 351
    const-string v2, "saveAllState: no fragments!"

    .line 353
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    goto/16 :goto_9

    .line 358
    :cond_10
    iget-object v1, p0, Lo/i8;->c:Lo/H5;

    .line 360
    iget-object v7, v1, Lo/H5;->a:Ljava/lang/Object;

    .line 362
    check-cast v7, Ljava/util/ArrayList;

    .line 364
    monitor-enter v7

    .line 365
    :try_start_0
    iget-object v8, v1, Lo/H5;->a:Ljava/lang/Object;

    .line 367
    check-cast v8, Ljava/util/ArrayList;

    .line 369
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    .line 372
    move-result v8

    .line 373
    if-eqz v8, :cond_11

    .line 375
    monitor-exit v7

    .line 376
    move-object v8, v6

    .line 377
    goto :goto_5

    .line 378
    :catchall_0
    move-exception v0

    .line 379
    goto/16 :goto_a

    .line 381
    :cond_11
    new-instance v8, Ljava/util/ArrayList;

    .line 383
    iget-object v9, v1, Lo/H5;->a:Ljava/lang/Object;

    .line 385
    check-cast v9, Ljava/util/ArrayList;

    .line 387
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    .line 390
    move-result v9

    .line 391
    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 394
    iget-object v1, v1, Lo/H5;->a:Ljava/lang/Object;

    .line 396
    check-cast v1, Ljava/util/ArrayList;

    .line 398
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 401
    move-result-object v1

    .line 402
    :cond_12
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 405
    move-result v9

    .line 406
    if-eqz v9, :cond_13

    .line 408
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 411
    move-result-object v9

    .line 412
    check-cast v9, Lo/T7;

    .line 414
    iget-object v10, v9, Lo/T7;->e:Ljava/lang/String;

    .line 416
    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 419
    const-string v10, "FragmentManager"

    .line 421
    invoke-static {v10, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 424
    move-result v10

    .line 425
    if-eqz v10, :cond_12

    .line 427
    const-string v10, "FragmentManager"

    .line 429
    new-instance v11, Ljava/lang/StringBuilder;

    .line 431
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 434
    const-string v12, "saveAllState: adding fragment ("

    .line 436
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 439
    iget-object v12, v9, Lo/T7;->e:Ljava/lang/String;

    .line 441
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 444
    const-string v12, "): "

    .line 446
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 449
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 452
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 455
    move-result-object v9

    .line 456
    invoke-static {v10, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    goto :goto_4

    .line 460
    :cond_13
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 461
    :goto_5
    iget-object v1, p0, Lo/i8;->d:Ljava/util/ArrayList;

    .line 463
    if-eqz v1, :cond_15

    .line 465
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 468
    move-result v1

    .line 469
    if-lez v1, :cond_15

    .line 471
    new-array v7, v1, [Lo/N2;

    .line 473
    :goto_6
    if-ge v3, v1, :cond_16

    .line 475
    new-instance v9, Lo/N2;

    .line 477
    iget-object v10, p0, Lo/i8;->d:Ljava/util/ArrayList;

    .line 479
    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 482
    move-result-object v10

    .line 483
    check-cast v10, Lo/M2;

    .line 485
    invoke-direct {v9, v10}, Lo/N2;-><init>(Lo/M2;)V

    .line 488
    aput-object v9, v7, v3

    .line 490
    const-string v9, "FragmentManager"

    .line 492
    invoke-static {v9, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 495
    move-result v9

    .line 496
    if-eqz v9, :cond_14

    .line 498
    const-string v9, "FragmentManager"

    .line 500
    new-instance v10, Ljava/lang/StringBuilder;

    .line 502
    const-string v11, "saveAllState: adding back stack #"

    .line 504
    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 507
    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 510
    const-string v11, ": "

    .line 512
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 515
    iget-object v11, p0, Lo/i8;->d:Ljava/util/ArrayList;

    .line 517
    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 520
    move-result-object v11

    .line 521
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 524
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 527
    move-result-object v10

    .line 528
    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    :cond_14
    add-int/lit8 v3, v3, 0x1

    .line 533
    goto :goto_6

    .line 534
    :cond_15
    move-object v7, v6

    .line 535
    :cond_16
    new-instance v1, Lo/j8;

    .line 537
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 540
    iput-object v6, v1, Lo/j8;->e:Ljava/lang/String;

    .line 542
    new-instance v3, Ljava/util/ArrayList;

    .line 544
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 547
    iput-object v3, v1, Lo/j8;->f:Ljava/util/ArrayList;

    .line 549
    new-instance v4, Ljava/util/ArrayList;

    .line 551
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 554
    iput-object v4, v1, Lo/j8;->g:Ljava/util/ArrayList;

    .line 556
    iput-object v2, v1, Lo/j8;->a:Ljava/util/ArrayList;

    .line 558
    iput-object v8, v1, Lo/j8;->b:Ljava/util/ArrayList;

    .line 560
    iput-object v7, v1, Lo/j8;->c:[Lo/N2;

    .line 562
    iget-object v2, p0, Lo/i8;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 564
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 567
    move-result v2

    .line 568
    iput v2, v1, Lo/j8;->d:I

    .line 570
    iget-object v2, p0, Lo/i8;->w:Lo/T7;

    .line 572
    if-eqz v2, :cond_17

    .line 574
    iget-object v2, v2, Lo/T7;->e:Ljava/lang/String;

    .line 576
    iput-object v2, v1, Lo/j8;->e:Ljava/lang/String;

    .line 578
    :cond_17
    iget-object v2, p0, Lo/i8;->j:Ljava/util/Map;

    .line 580
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 583
    move-result-object v2

    .line 584
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 587
    iget-object v2, p0, Lo/i8;->j:Ljava/util/Map;

    .line 589
    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 592
    move-result-object v2

    .line 593
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 596
    new-instance v2, Ljava/util/ArrayList;

    .line 598
    iget-object v3, p0, Lo/i8;->C:Ljava/util/ArrayDeque;

    .line 600
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 603
    iput-object v2, v1, Lo/j8;->h:Ljava/util/ArrayList;

    .line 605
    const-string v2, "state"

    .line 607
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 610
    iget-object v1, p0, Lo/i8;->k:Ljava/util/Map;

    .line 612
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 615
    move-result-object v1

    .line 616
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 619
    move-result-object v1

    .line 620
    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 623
    move-result v2

    .line 624
    if-eqz v2, :cond_18

    .line 626
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 629
    move-result-object v2

    .line 630
    check-cast v2, Ljava/lang/String;

    .line 632
    const-string v3, "result_"

    .line 634
    invoke-static {v3, v2}, Lo/Ve;->y(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 637
    move-result-object v3

    .line 638
    iget-object v4, p0, Lo/i8;->k:Ljava/util/Map;

    .line 640
    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 643
    move-result-object v2

    .line 644
    check-cast v2, Landroid/os/Bundle;

    .line 646
    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 649
    goto :goto_7

    .line 650
    :cond_18
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 653
    move-result-object v1

    .line 654
    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 657
    move-result v2

    .line 658
    if-eqz v2, :cond_19

    .line 660
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 663
    move-result-object v2

    .line 664
    check-cast v2, Lo/n8;

    .line 666
    new-instance v3, Landroid/os/Bundle;

    .line 668
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 671
    const-string v4, "state"

    .line 673
    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 676
    new-instance v4, Ljava/lang/StringBuilder;

    .line 678
    const-string v5, "fragment_"

    .line 680
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 683
    iget-object v2, v2, Lo/n8;->b:Ljava/lang/String;

    .line 685
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 688
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 691
    move-result-object v2

    .line 692
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 695
    goto :goto_8

    .line 696
    :cond_19
    :goto_9
    return-object v0

    .line 697
    :goto_a
    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 698
    throw v0
.end method

.method public final T()V
    .locals 3

    .line 1
    iget-object v0, p0, Lo/i8;->a:Ljava/util/ArrayList;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lo/i8;->a:Ljava/util/ArrayList;

    .line 6
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 9
    move-result v1

    .line 10
    const/4 v2, 0x1

    .line 11
    if-ne v1, v2, :cond_0

    .line 13
    iget-object v1, p0, Lo/i8;->t:Lo/V7;

    .line 15
    iget-object v1, v1, Lo/V7;->i:Landroid/os/Handler;

    .line 17
    iget-object v2, p0, Lo/i8;->M:Lo/J2;

    .line 19
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 22
    iget-object v1, p0, Lo/i8;->t:Lo/V7;

    .line 24
    iget-object v1, v1, Lo/V7;->i:Landroid/os/Handler;

    .line 26
    iget-object v2, p0, Lo/i8;->M:Lo/J2;

    .line 28
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 31
    invoke-virtual {p0}, Lo/i8;->b0()V

    .line 34
    goto :goto_0

    .line 35
    :catchall_0
    move-exception v1

    .line 36
    goto :goto_1

    .line 37
    :cond_0
    :goto_0
    monitor-exit v0

    .line 38
    return-void

    .line 39
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    throw v1
.end method

.method public final U(Lo/T7;Z)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lo/i8;->C(Lo/T7;)Landroid/view/ViewGroup;

    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_0

    .line 7
    instance-of v0, p1, Landroidx/fragment/app/FragmentContainerView;

    .line 9
    if-eqz v0, :cond_0

    .line 11
    check-cast p1, Landroidx/fragment/app/FragmentContainerView;

    .line 13
    xor-int/lit8 p2, p2, 0x1

    .line 15
    invoke-virtual {p1, p2}, Landroidx/fragment/app/FragmentContainerView;->setDrawDisappearingViewsLast(Z)V

    .line 18
    :cond_0
    return-void
.end method

.method public final V(Lo/T7;Lo/M9;)V
    .locals 2

    .line 1
    iget-object v0, p1, Lo/T7;->e:Ljava/lang/String;

    .line 3
    iget-object v1, p0, Lo/i8;->c:Lo/H5;

    .line 5
    invoke-virtual {v1, v0}, Lo/H5;->c(Ljava/lang/String;)Lo/T7;

    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_1

    .line 15
    iget-object v0, p1, Lo/T7;->s:Lo/V7;

    .line 17
    if-eqz v0, :cond_0

    .line 19
    iget-object v0, p1, Lo/T7;->r:Lo/i8;

    .line 21
    if-ne v0, p0, :cond_1

    .line 23
    :cond_0
    iput-object p2, p1, Lo/T7;->L:Lo/M9;

    .line 25
    return-void

    .line 26
    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    .line 30
    const-string v1, "Fragment "

    .line 32
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 38
    const-string p1, " is not an active fragment of FragmentManager "

    .line 40
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    move-result-object p1

    .line 50
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 53
    throw p2
.end method

.method public final W(Lo/T7;)V
    .locals 3

    .line 1
    if-eqz p1, :cond_1

    .line 3
    iget-object v0, p1, Lo/T7;->e:Ljava/lang/String;

    .line 5
    iget-object v1, p0, Lo/i8;->c:Lo/H5;

    .line 7
    invoke-virtual {v1, v0}, Lo/H5;->c(Ljava/lang/String;)Lo/T7;

    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 17
    iget-object v0, p1, Lo/T7;->s:Lo/V7;

    .line 19
    if-eqz v0, :cond_1

    .line 21
    iget-object v0, p1, Lo/T7;->r:Lo/i8;

    .line 23
    if-ne v0, p0, :cond_0

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 28
    new-instance v1, Ljava/lang/StringBuilder;

    .line 30
    const-string v2, "Fragment "

    .line 32
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 38
    const-string p1, " is not an active fragment of FragmentManager "

    .line 40
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    move-result-object p1

    .line 50
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 53
    throw v0

    .line 54
    :cond_1
    :goto_0
    iget-object v0, p0, Lo/i8;->w:Lo/T7;

    .line 56
    iput-object p1, p0, Lo/i8;->w:Lo/T7;

    .line 58
    invoke-virtual {p0, v0}, Lo/i8;->r(Lo/T7;)V

    .line 61
    iget-object p1, p0, Lo/i8;->w:Lo/T7;

    .line 63
    invoke-virtual {p0, p1}, Lo/i8;->r(Lo/T7;)V

    .line 66
    return-void
.end method

.method public final X(Lo/T7;)V
    .locals 5

    .line 1
    invoke-virtual {p0, p1}, Lo/i8;->C(Lo/T7;)Landroid/view/ViewGroup;

    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_7

    .line 7
    iget-object v1, p1, Lo/T7;->H:Lo/R7;

    .line 9
    const/4 v2, 0x0

    .line 10
    if-nez v1, :cond_0

    .line 12
    move v3, v2

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget v3, v1, Lo/R7;->b:I

    .line 16
    :goto_0
    if-nez v1, :cond_1

    .line 18
    move v4, v2

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    iget v4, v1, Lo/R7;->c:I

    .line 22
    :goto_1
    add-int/2addr v4, v3

    .line 23
    if-nez v1, :cond_2

    .line 25
    move v3, v2

    .line 26
    goto :goto_2

    .line 27
    :cond_2
    iget v3, v1, Lo/R7;->d:I

    .line 29
    :goto_2
    add-int/2addr v3, v4

    .line 30
    if-nez v1, :cond_3

    .line 32
    move v1, v2

    .line 33
    goto :goto_3

    .line 34
    :cond_3
    iget v1, v1, Lo/R7;->e:I

    .line 36
    :goto_3
    add-int/2addr v1, v3

    .line 37
    if-lez v1, :cond_7

    .line 39
    const v1, 0x7f0801fe

    .line 42
    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 45
    move-result-object v3

    .line 46
    if-nez v3, :cond_4

    .line 48
    invoke-virtual {v0, v1, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 51
    :cond_4
    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 54
    move-result-object v0

    .line 55
    check-cast v0, Lo/T7;

    .line 57
    iget-object p1, p1, Lo/T7;->H:Lo/R7;

    .line 59
    if-nez p1, :cond_5

    .line 61
    goto :goto_4

    .line 62
    :cond_5
    iget-boolean v2, p1, Lo/R7;->a:Z

    .line 64
    :goto_4
    iget-object p1, v0, Lo/T7;->H:Lo/R7;

    .line 66
    if-nez p1, :cond_6

    .line 68
    goto :goto_5

    .line 69
    :cond_6
    invoke-virtual {v0}, Lo/T7;->f()Lo/R7;

    .line 72
    move-result-object p1

    .line 73
    iput-boolean v2, p1, Lo/R7;->a:Z

    .line 75
    :cond_7
    :goto_5
    return-void
.end method

.method public final Z()V
    .locals 4

    .line 1
    iget-object v0, p0, Lo/i8;->c:Lo/H5;

    .line 3
    invoke-virtual {v0}, Lo/H5;->f()Ljava/util/ArrayList;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 10
    move-result-object v0

    .line 11
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_2

    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Landroidx/fragment/app/a;

    .line 23
    iget-object v2, v1, Landroidx/fragment/app/a;->c:Lo/T7;

    .line 25
    iget-boolean v3, v2, Lo/T7;->F:Z

    .line 27
    if-eqz v3, :cond_0

    .line 29
    iget-boolean v3, p0, Lo/i8;->b:Z

    .line 31
    if-eqz v3, :cond_1

    .line 33
    const/4 v1, 0x1

    .line 34
    iput-boolean v1, p0, Lo/i8;->H:Z

    .line 36
    goto :goto_0

    .line 37
    :cond_1
    const/4 v3, 0x0

    .line 38
    iput-boolean v3, v2, Lo/T7;->F:Z

    .line 40
    invoke-virtual {v1}, Landroidx/fragment/app/a;->k()V

    .line 43
    goto :goto_0

    .line 44
    :cond_2
    return-void
.end method

.method public final a(Lo/T7;)Landroidx/fragment/app/a;
    .locals 3

    .line 1
    iget-object v0, p1, Lo/T7;->K:Ljava/lang/String;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    invoke-static {p1, v0}, Lo/q8;->c(Lo/T7;Ljava/lang/String;)V

    .line 8
    :cond_0
    const/4 v0, 0x2

    .line 9
    const-string v1, "FragmentManager"

    .line 11
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_1

    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    .line 19
    const-string v2, "add: "

    .line 21
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    move-result-object v0

    .line 31
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    :cond_1
    invoke-virtual {p0, p1}, Lo/i8;->f(Lo/T7;)Landroidx/fragment/app/a;

    .line 37
    move-result-object v0

    .line 38
    iput-object p0, p1, Lo/T7;->r:Lo/i8;

    .line 40
    iget-object v1, p0, Lo/i8;->c:Lo/H5;

    .line 42
    invoke-virtual {v1, v0}, Lo/H5;->i(Landroidx/fragment/app/a;)V

    .line 45
    iget-boolean v2, p1, Lo/T7;->z:Z

    .line 47
    if-nez v2, :cond_3

    .line 49
    invoke-virtual {v1, p1}, Lo/H5;->a(Lo/T7;)V

    .line 52
    const/4 v1, 0x0

    .line 53
    iput-boolean v1, p1, Lo/T7;->l:Z

    .line 55
    iget-object v2, p1, Lo/T7;->E:Landroid/view/View;

    .line 57
    if-nez v2, :cond_2

    .line 59
    iput-boolean v1, p1, Lo/T7;->I:Z

    .line 61
    :cond_2
    invoke-static {p1}, Lo/i8;->G(Lo/T7;)Z

    .line 64
    move-result p1

    .line 65
    if-eqz p1, :cond_3

    .line 67
    const/4 p1, 0x1

    .line 68
    iput-boolean p1, p0, Lo/i8;->D:Z

    .line 70
    :cond_3
    return-object v0
.end method

.method public final a0(Ljava/lang/IllegalStateException;)V
    .locals 7

    .line 1
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    const-string v1, "FragmentManager"

    .line 7
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    const-string v0, "Activity state:"

    .line 12
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    new-instance v0, Lo/ua;

    .line 17
    invoke-direct {v0}, Lo/ua;-><init>()V

    .line 20
    new-instance v2, Ljava/io/PrintWriter;

    .line 22
    invoke-direct {v2, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 25
    iget-object v0, p0, Lo/i8;->t:Lo/V7;

    .line 27
    const-string v3, "Failed dumping state"

    .line 29
    const/4 v4, 0x0

    .line 30
    const/4 v5, 0x0

    .line 31
    const-string v6, "  "

    .line 33
    if-eqz v0, :cond_0

    .line 35
    :try_start_0
    new-array v4, v4, [Ljava/lang/String;

    .line 37
    iget-object v0, v0, Lo/V7;->k:Lo/U0;

    .line 39
    invoke-virtual {v0, v6, v5, v2, v4}, Lo/U0;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    goto :goto_0

    .line 43
    :catch_0
    move-exception v0

    .line 44
    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 47
    goto :goto_0

    .line 48
    :cond_0
    :try_start_1
    new-array v0, v4, [Ljava/lang/String;

    .line 50
    invoke-virtual {p0, v6, v5, v2, v0}, Lo/i8;->v(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 53
    goto :goto_0

    .line 54
    :catch_1
    move-exception v0

    .line 55
    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 58
    :goto_0
    throw p1
.end method

.method public final b(Lo/V7;Lo/L1;Lo/T7;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lo/i8;->t:Lo/V7;

    .line 3
    if-nez v0, :cond_15

    .line 5
    iput-object p1, p0, Lo/i8;->t:Lo/V7;

    .line 7
    iput-object p2, p0, Lo/i8;->u:Lo/L1;

    .line 9
    iput-object p3, p0, Lo/i8;->v:Lo/T7;

    .line 11
    iget-object p2, p0, Lo/i8;->m:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 13
    if-eqz p3, :cond_0

    .line 15
    new-instance v0, Lo/e8;

    .line 17
    invoke-direct {v0, p3}, Lo/e8;-><init>(Lo/T7;)V

    .line 20
    invoke-virtual {p2, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    if-eqz p1, :cond_1

    .line 26
    invoke-virtual {p2, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 29
    :cond_1
    :goto_0
    iget-object p2, p0, Lo/i8;->v:Lo/T7;

    .line 31
    if-eqz p2, :cond_2

    .line 33
    invoke-virtual {p0}, Lo/i8;->b0()V

    .line 36
    :cond_2
    if-eqz p1, :cond_4

    .line 38
    iget-object p2, p1, Lo/V7;->k:Lo/U0;

    .line 40
    invoke-virtual {p2}, Landroidx/activity/a;->i()Landroidx/activity/b;

    .line 43
    move-result-object p2

    .line 44
    iput-object p2, p0, Lo/i8;->g:Landroidx/activity/b;

    .line 46
    if-eqz p3, :cond_3

    .line 48
    move-object v0, p3

    .line 49
    goto :goto_1

    .line 50
    :cond_3
    move-object v0, p1

    .line 51
    :goto_1
    iget-object v1, p0, Lo/i8;->h:Lo/b8;

    .line 53
    invoke-virtual {p2, v0, v1}, Landroidx/activity/b;->a(Lo/R9;Lo/b8;)V

    .line 56
    :cond_4
    const/4 p2, 0x0

    .line 57
    const/4 v0, 0x1

    .line 58
    if-eqz p3, :cond_6

    .line 60
    iget-object p1, p3, Lo/T7;->r:Lo/i8;

    .line 62
    iget-object p1, p1, Lo/i8;->L:Lo/k8;

    .line 64
    iget-object v1, p1, Lo/k8;->d:Ljava/util/HashMap;

    .line 66
    iget-object v2, p3, Lo/T7;->e:Ljava/lang/String;

    .line 68
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    move-result-object v2

    .line 72
    check-cast v2, Lo/k8;

    .line 74
    if-nez v2, :cond_5

    .line 76
    new-instance v2, Lo/k8;

    .line 78
    iget-boolean p1, p1, Lo/k8;->f:Z

    .line 80
    invoke-direct {v2, p1}, Lo/k8;-><init>(Z)V

    .line 83
    iget-object p1, p3, Lo/T7;->e:Ljava/lang/String;

    .line 85
    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    :cond_5
    iput-object v2, p0, Lo/i8;->L:Lo/k8;

    .line 90
    goto/16 :goto_5

    .line 92
    :cond_6
    if-eqz p1, :cond_a

    .line 94
    iget-object p1, p1, Lo/V7;->k:Lo/U0;

    .line 96
    invoke-virtual {p1}, Landroidx/activity/a;->d()Lo/Lh;

    .line 99
    move-result-object p1

    .line 100
    const-string v1, "store"

    .line 102
    invoke-static {p1, v1}, Lo/x9;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    sget-object v1, Lo/e5;->b:Lo/e5;

    .line 107
    const-string v2, "defaultCreationExtras"

    .line 109
    invoke-static {v1, v2}, Lo/x9;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    const-class v2, Lo/k8;

    .line 114
    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 117
    move-result-object v3

    .line 118
    if-eqz v3, :cond_9

    .line 120
    const-string v4, "androidx.lifecycle.ViewModelProvider.DefaultKey:"

    .line 122
    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 125
    move-result-object v3

    .line 126
    const-string v4, "key"

    .line 128
    invoke-static {v3, v4}, Lo/x9;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 131
    iget-object p1, p1, Lo/Lh;->a:Ljava/util/LinkedHashMap;

    .line 133
    invoke-virtual {p1, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    move-result-object v4

    .line 137
    check-cast v4, Lo/Jh;

    .line 139
    invoke-virtual {v2, v4}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 142
    move-result v2

    .line 143
    if-eqz v2, :cond_7

    .line 145
    const-string p1, "null cannot be cast to non-null type T of androidx.lifecycle.ViewModelProvider.get"

    .line 147
    invoke-static {v4, p1}, Lo/x9;->m(Ljava/lang/Object;Ljava/lang/String;)V

    .line 150
    goto :goto_4

    .line 151
    :cond_7
    new-instance v2, Ljava/util/LinkedHashMap;

    .line 153
    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 156
    iget-object v1, v1, Lo/f5;->a:Ljava/util/LinkedHashMap;

    .line 158
    invoke-interface {v2, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 161
    sget-object v1, Lo/u6;->e:Lo/u6;

    .line 163
    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    :try_start_0
    new-instance v1, Lo/k8;

    .line 168
    invoke-direct {v1, v0}, Lo/k8;-><init>(Z)V
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    :goto_2
    move-object v4, v1

    .line 172
    goto :goto_3

    .line 173
    :catch_0
    new-instance v1, Lo/k8;

    .line 175
    invoke-direct {v1, v0}, Lo/k8;-><init>(Z)V

    .line 178
    goto :goto_2

    .line 179
    :goto_3
    invoke-interface {p1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    move-result-object p1

    .line 183
    check-cast p1, Lo/Jh;

    .line 185
    if-eqz p1, :cond_8

    .line 187
    invoke-virtual {p1}, Lo/Jh;->a()V

    .line 190
    :cond_8
    :goto_4
    check-cast v4, Lo/k8;

    .line 192
    iput-object v4, p0, Lo/i8;->L:Lo/k8;

    .line 194
    goto :goto_5

    .line 195
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 197
    const-string p2, "Local and anonymous classes can not be ViewModels"

    .line 199
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 202
    throw p1

    .line 203
    :cond_a
    new-instance p1, Lo/k8;

    .line 205
    invoke-direct {p1, p2}, Lo/k8;-><init>(Z)V

    .line 208
    iput-object p1, p0, Lo/i8;->L:Lo/k8;

    .line 210
    :goto_5
    iget-object p1, p0, Lo/i8;->L:Lo/k8;

    .line 212
    iget-boolean v1, p0, Lo/i8;->E:Z

    .line 214
    if-nez v1, :cond_b

    .line 216
    iget-boolean v1, p0, Lo/i8;->F:Z

    .line 218
    if-eqz v1, :cond_c

    .line 220
    :cond_b
    move p2, v0

    .line 221
    :cond_c
    iput-boolean p2, p1, Lo/k8;->h:Z

    .line 223
    iget-object p2, p0, Lo/i8;->c:Lo/H5;

    .line 225
    iput-object p1, p2, Lo/H5;->d:Ljava/lang/Object;

    .line 227
    iget-object p1, p0, Lo/i8;->t:Lo/V7;

    .line 229
    if-eqz p1, :cond_d

    .line 231
    if-nez p3, :cond_d

    .line 233
    invoke-virtual {p1}, Lo/V7;->b()Lo/b1;

    .line 236
    move-result-object p1

    .line 237
    new-instance p2, Lo/n4;

    .line 239
    const/4 v0, 0x2

    .line 240
    invoke-direct {p2, v0, p0}, Lo/n4;-><init>(ILjava/lang/Object;)V

    .line 243
    const-string v0, "android:support:fragments"

    .line 245
    invoke-virtual {p1, v0, p2}, Lo/b1;->e(Ljava/lang/String;Lo/se;)V

    .line 248
    invoke-virtual {p1, v0}, Lo/b1;->c(Ljava/lang/String;)Landroid/os/Bundle;

    .line 251
    move-result-object p1

    .line 252
    if-eqz p1, :cond_d

    .line 254
    invoke-virtual {p0, p1}, Lo/i8;->R(Landroid/os/Parcelable;)V

    .line 257
    :cond_d
    iget-object p1, p0, Lo/i8;->t:Lo/V7;

    .line 259
    if-eqz p1, :cond_f

    .line 261
    iget-object p1, p1, Lo/V7;->k:Lo/U0;

    .line 263
    if-eqz p3, :cond_e

    .line 265
    new-instance p2, Ljava/lang/StringBuilder;

    .line 267
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 270
    iget-object v0, p3, Lo/T7;->e:Ljava/lang/String;

    .line 272
    const-string v1, ":"

    .line 274
    invoke-static {p2, v0, v1}, Lo/Ve;->k(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 277
    move-result-object p2

    .line 278
    goto :goto_6

    .line 279
    :cond_e
    const-string p2, ""

    .line 281
    :goto_6
    const-string v0, "FragmentManager:"

    .line 283
    invoke-static {v0, p2}, Lo/Ve;->y(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 286
    move-result-object p2

    .line 287
    const-string v0, "StartActivityForResult"

    .line 289
    invoke-static {p2, v0}, Lo/Ve;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 292
    move-result-object v0

    .line 293
    new-instance v1, Lo/n0;

    .line 295
    const/4 v2, 0x1

    .line 296
    invoke-direct {v1, v2}, Lo/n0;-><init>(I)V

    .line 299
    new-instance v2, Lo/a8;

    .line 301
    const/4 v3, 0x1

    .line 302
    invoke-direct {v2, p0, v3}, Lo/a8;-><init>(Lo/i8;I)V

    .line 305
    iget-object p1, p1, Landroidx/activity/a;->j:Lo/p4;

    .line 307
    invoke-virtual {p1, v0, v1, v2}, Lo/p4;->b(Ljava/lang/String;Lo/x9;Lo/a8;)Lo/H1;

    .line 310
    move-result-object v0

    .line 311
    iput-object v0, p0, Lo/i8;->z:Lo/H1;

    .line 313
    const-string v0, "StartIntentSenderForResult"

    .line 315
    invoke-static {p2, v0}, Lo/Ve;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 318
    move-result-object v0

    .line 319
    new-instance v1, Lo/n0;

    .line 321
    const/4 v2, 0x2

    .line 322
    invoke-direct {v1, v2}, Lo/n0;-><init>(I)V

    .line 325
    new-instance v2, Lo/a8;

    .line 327
    const/4 v3, 0x2

    .line 328
    invoke-direct {v2, p0, v3}, Lo/a8;-><init>(Lo/i8;I)V

    .line 331
    invoke-virtual {p1, v0, v1, v2}, Lo/p4;->b(Ljava/lang/String;Lo/x9;Lo/a8;)Lo/H1;

    .line 334
    move-result-object v0

    .line 335
    iput-object v0, p0, Lo/i8;->A:Lo/H1;

    .line 337
    const-string v0, "RequestPermissions"

    .line 339
    invoke-static {p2, v0}, Lo/Ve;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 342
    move-result-object p2

    .line 343
    new-instance v0, Lo/n0;

    .line 345
    const/4 v1, 0x0

    .line 346
    invoke-direct {v0, v1}, Lo/n0;-><init>(I)V

    .line 349
    new-instance v1, Lo/a8;

    .line 351
    const/4 v2, 0x0

    .line 352
    invoke-direct {v1, p0, v2}, Lo/a8;-><init>(Lo/i8;I)V

    .line 355
    invoke-virtual {p1, p2, v0, v1}, Lo/p4;->b(Ljava/lang/String;Lo/x9;Lo/a8;)Lo/H1;

    .line 358
    move-result-object p1

    .line 359
    iput-object p1, p0, Lo/i8;->B:Lo/H1;

    .line 361
    :cond_f
    iget-object p1, p0, Lo/i8;->t:Lo/V7;

    .line 363
    if-eqz p1, :cond_10

    .line 365
    iget-object p1, p1, Lo/V7;->k:Lo/U0;

    .line 367
    iget-object p2, p0, Lo/i8;->n:Lo/Z7;

    .line 369
    invoke-virtual {p1, p2}, Landroidx/activity/a;->g(Lo/O4;)V

    .line 372
    :cond_10
    iget-object p1, p0, Lo/i8;->t:Lo/V7;

    .line 374
    if-eqz p1, :cond_11

    .line 376
    iget-object p1, p1, Lo/V7;->k:Lo/U0;

    .line 378
    iget-object p2, p0, Lo/i8;->o:Lo/Z7;

    .line 380
    iget-object p1, p1, Landroidx/activity/a;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 382
    invoke-virtual {p1, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 385
    :cond_11
    iget-object p1, p0, Lo/i8;->t:Lo/V7;

    .line 387
    if-eqz p1, :cond_12

    .line 389
    iget-object p1, p1, Lo/V7;->k:Lo/U0;

    .line 391
    iget-object p2, p0, Lo/i8;->p:Lo/Z7;

    .line 393
    iget-object p1, p1, Landroidx/activity/a;->n:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 395
    invoke-virtual {p1, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 398
    :cond_12
    iget-object p1, p0, Lo/i8;->t:Lo/V7;

    .line 400
    if-eqz p1, :cond_13

    .line 402
    iget-object p1, p1, Lo/V7;->k:Lo/U0;

    .line 404
    iget-object p2, p0, Lo/i8;->q:Lo/Z7;

    .line 406
    iget-object p1, p1, Landroidx/activity/a;->o:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 408
    invoke-virtual {p1, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 411
    :cond_13
    iget-object p1, p0, Lo/i8;->t:Lo/V7;

    .line 413
    if-eqz p1, :cond_14

    .line 415
    if-nez p3, :cond_14

    .line 417
    iget-object p1, p1, Lo/V7;->k:Lo/U0;

    .line 419
    iget-object p2, p0, Lo/i8;->r:Lo/c8;

    .line 421
    iget-object p1, p1, Landroidx/activity/a;->c:Lo/s2;

    .line 423
    iget-object p3, p1, Lo/s2;->d:Ljava/lang/Object;

    .line 425
    check-cast p3, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 427
    invoke-virtual {p3, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 430
    iget-object p1, p1, Lo/s2;->c:Ljava/lang/Object;

    .line 432
    check-cast p1, Ljava/lang/Runnable;

    .line 434
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 437
    :cond_14
    return-void

    .line 438
    :cond_15
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 440
    const-string p2, "Already attached"

    .line 442
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 445
    throw p1
.end method

.method public final b0()V
    .locals 4

    .line 1
    iget-object v0, p0, Lo/i8;->a:Ljava/util/ArrayList;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lo/i8;->a:Ljava/util/ArrayList;

    .line 6
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 9
    move-result v1

    .line 10
    const/4 v2, 0x1

    .line 11
    if-nez v1, :cond_1

    .line 13
    iget-object v1, p0, Lo/i8;->h:Lo/b8;

    .line 15
    iput-boolean v2, v1, Lo/b8;->a:Z

    .line 17
    iget-object v1, v1, Lo/b8;->c:Lo/lc;

    .line 19
    if-eqz v1, :cond_0

    .line 21
    invoke-interface {v1}, Lo/u8;->a()Ljava/lang/Object;

    .line 24
    :cond_0
    monitor-exit v0

    .line 25
    return-void

    .line 26
    :catchall_0
    move-exception v1

    .line 27
    goto :goto_2

    .line 28
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    iget-object v0, p0, Lo/i8;->h:Lo/b8;

    .line 31
    iget-object v1, p0, Lo/i8;->d:Ljava/util/ArrayList;

    .line 33
    const/4 v3, 0x0

    .line 34
    if-eqz v1, :cond_2

    .line 36
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 39
    move-result v1

    .line 40
    goto :goto_0

    .line 41
    :cond_2
    move v1, v3

    .line 42
    :goto_0
    if-lez v1, :cond_3

    .line 44
    iget-object v1, p0, Lo/i8;->v:Lo/T7;

    .line 46
    invoke-static {v1}, Lo/i8;->J(Lo/T7;)Z

    .line 49
    move-result v1

    .line 50
    if-eqz v1, :cond_3

    .line 52
    goto :goto_1

    .line 53
    :cond_3
    move v2, v3

    .line 54
    :goto_1
    iput-boolean v2, v0, Lo/b8;->a:Z

    .line 56
    iget-object v0, v0, Lo/b8;->c:Lo/lc;

    .line 58
    if-eqz v0, :cond_4

    .line 60
    invoke-interface {v0}, Lo/u8;->a()Ljava/lang/Object;

    .line 63
    :cond_4
    return-void

    .line 64
    :goto_2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 65
    throw v1
.end method

.method public final c(Lo/T7;)V
    .locals 4

    .line 1
    const-string v0, "FragmentManager"

    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 7
    move-result v2

    .line 8
    if-eqz v2, :cond_0

    .line 10
    new-instance v2, Ljava/lang/StringBuilder;

    .line 12
    const-string v3, "attach: "

    .line 14
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    move-result-object v2

    .line 24
    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    :cond_0
    iget-boolean v2, p1, Lo/T7;->z:Z

    .line 29
    if-eqz v2, :cond_2

    .line 31
    const/4 v2, 0x0

    .line 32
    iput-boolean v2, p1, Lo/T7;->z:Z

    .line 34
    iget-boolean v2, p1, Lo/T7;->k:Z

    .line 36
    if-nez v2, :cond_2

    .line 38
    iget-object v2, p0, Lo/i8;->c:Lo/H5;

    .line 40
    invoke-virtual {v2, p1}, Lo/H5;->a(Lo/T7;)V

    .line 43
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 46
    move-result v1

    .line 47
    if-eqz v1, :cond_1

    .line 49
    new-instance v1, Ljava/lang/StringBuilder;

    .line 51
    const-string v2, "add from attach: "

    .line 53
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 56
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 59
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    move-result-object v1

    .line 63
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    :cond_1
    invoke-static {p1}, Lo/i8;->G(Lo/T7;)Z

    .line 69
    move-result p1

    .line 70
    if-eqz p1, :cond_2

    .line 72
    const/4 p1, 0x1

    .line 73
    iput-boolean p1, p0, Lo/i8;->D:Z

    .line 75
    :cond_2
    return-void
.end method

.method public final d()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lo/i8;->b:Z

    .line 4
    iget-object v0, p0, Lo/i8;->J:Ljava/util/ArrayList;

    .line 6
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 9
    iget-object v0, p0, Lo/i8;->I:Ljava/util/ArrayList;

    .line 11
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 14
    return-void
.end method

.method public final e()Ljava/util/HashSet;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/HashSet;

    .line 3
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 6
    iget-object v1, p0, Lo/i8;->c:Lo/H5;

    .line 8
    invoke-virtual {v1}, Lo/H5;->f()Ljava/util/ArrayList;

    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 15
    move-result-object v1

    .line 16
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    move-result v2

    .line 20
    if-eqz v2, :cond_1

    .line 22
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    move-result-object v2

    .line 26
    check-cast v2, Landroidx/fragment/app/a;

    .line 28
    iget-object v2, v2, Landroidx/fragment/app/a;->c:Lo/T7;

    .line 30
    iget-object v2, v2, Lo/T7;->D:Landroid/view/ViewGroup;

    .line 32
    if-eqz v2, :cond_0

    .line 34
    invoke-virtual {p0}, Lo/i8;->E()Lo/u6;

    .line 37
    move-result-object v3

    .line 38
    invoke-static {v2, v3}, Lo/K5;->f(Landroid/view/ViewGroup;Lo/u6;)Lo/K5;

    .line 41
    move-result-object v2

    .line 42
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 45
    goto :goto_0

    .line 46
    :cond_1
    return-object v0
.end method

.method public final f(Lo/T7;)Landroidx/fragment/app/a;
    .locals 3

    .line 1
    iget-object v0, p1, Lo/T7;->e:Ljava/lang/String;

    .line 3
    iget-object v1, p0, Lo/i8;->c:Lo/H5;

    .line 5
    iget-object v2, v1, Lo/H5;->b:Ljava/lang/Object;

    .line 7
    check-cast v2, Ljava/util/HashMap;

    .line 9
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Landroidx/fragment/app/a;

    .line 15
    if-eqz v0, :cond_0

    .line 17
    return-object v0

    .line 18
    :cond_0
    new-instance v0, Landroidx/fragment/app/a;

    .line 20
    iget-object v2, p0, Lo/i8;->l:Lo/H1;

    .line 22
    invoke-direct {v0, v2, v1, p1}, Landroidx/fragment/app/a;-><init>(Lo/H1;Lo/H5;Lo/T7;)V

    .line 25
    iget-object p1, p0, Lo/i8;->t:Lo/V7;

    .line 27
    iget-object p1, p1, Lo/V7;->h:Lo/U0;

    .line 29
    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {v0, p1}, Landroidx/fragment/app/a;->m(Ljava/lang/ClassLoader;)V

    .line 36
    iget p1, p0, Lo/i8;->s:I

    .line 38
    iput p1, v0, Landroidx/fragment/app/a;->e:I

    .line 40
    return-object v0
.end method

.method public final g(Lo/T7;)V
    .locals 4

    .line 1
    const-string v0, "FragmentManager"

    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 7
    move-result v2

    .line 8
    if-eqz v2, :cond_0

    .line 10
    new-instance v2, Ljava/lang/StringBuilder;

    .line 12
    const-string v3, "detach: "

    .line 14
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    move-result-object v2

    .line 24
    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    :cond_0
    iget-boolean v2, p1, Lo/T7;->z:Z

    .line 29
    if-nez v2, :cond_3

    .line 31
    const/4 v2, 0x1

    .line 32
    iput-boolean v2, p1, Lo/T7;->z:Z

    .line 34
    iget-boolean v3, p1, Lo/T7;->k:Z

    .line 36
    if-eqz v3, :cond_3

    .line 38
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 41
    move-result v1

    .line 42
    if-eqz v1, :cond_1

    .line 44
    new-instance v1, Ljava/lang/StringBuilder;

    .line 46
    const-string v3, "remove from detach: "

    .line 48
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 51
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 54
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    move-result-object v1

    .line 58
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    :cond_1
    iget-object v0, p0, Lo/i8;->c:Lo/H5;

    .line 63
    iget-object v1, v0, Lo/H5;->a:Ljava/lang/Object;

    .line 65
    check-cast v1, Ljava/util/ArrayList;

    .line 67
    monitor-enter v1

    .line 68
    :try_start_0
    iget-object v0, v0, Lo/H5;->a:Ljava/lang/Object;

    .line 70
    check-cast v0, Ljava/util/ArrayList;

    .line 72
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 75
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    const/4 v0, 0x0

    .line 77
    iput-boolean v0, p1, Lo/T7;->k:Z

    .line 79
    invoke-static {p1}, Lo/i8;->G(Lo/T7;)Z

    .line 82
    move-result v0

    .line 83
    if-eqz v0, :cond_2

    .line 85
    iput-boolean v2, p0, Lo/i8;->D:Z

    .line 87
    :cond_2
    invoke-virtual {p0, p1}, Lo/i8;->X(Lo/T7;)V

    .line 90
    goto :goto_0

    .line 91
    :catchall_0
    move-exception p1

    .line 92
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 93
    throw p1

    .line 94
    :cond_3
    :goto_0
    return-void
.end method

.method public final h(Z)V
    .locals 3

    .line 1
    if-eqz p1, :cond_1

    .line 3
    iget-object v0, p0, Lo/i8;->t:Lo/V7;

    .line 5
    if-nez v0, :cond_0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 10
    const-string v0, "Do not call dispatchConfigurationChanged() on host. Host implements OnConfigurationChangedProvider and automatically dispatches configuration changes to fragments."

    .line 12
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 15
    invoke-virtual {p0, p1}, Lo/i8;->a0(Ljava/lang/IllegalStateException;)V

    .line 18
    const/4 p1, 0x0

    .line 19
    throw p1

    .line 20
    :cond_1
    :goto_0
    iget-object v0, p0, Lo/i8;->c:Lo/H5;

    .line 22
    invoke-virtual {v0}, Lo/H5;->h()Ljava/util/List;

    .line 25
    move-result-object v0

    .line 26
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 29
    move-result-object v0

    .line 30
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 33
    move-result v1

    .line 34
    if-eqz v1, :cond_3

    .line 36
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 39
    move-result-object v1

    .line 40
    check-cast v1, Lo/T7;

    .line 42
    if-eqz v1, :cond_2

    .line 44
    const/4 v2, 0x1

    .line 45
    iput-boolean v2, v1, Lo/T7;->C:Z

    .line 47
    if-eqz p1, :cond_2

    .line 49
    iget-object v1, v1, Lo/T7;->t:Lo/i8;

    .line 51
    invoke-virtual {v1, v2}, Lo/i8;->h(Z)V

    .line 54
    goto :goto_1

    .line 55
    :cond_3
    return-void
.end method

.method public final i()Z
    .locals 5

    .line 1
    iget v0, p0, Lo/i8;->s:I

    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-ge v0, v2, :cond_0

    .line 7
    return v1

    .line 8
    :cond_0
    iget-object v0, p0, Lo/i8;->c:Lo/H5;

    .line 10
    invoke-virtual {v0}, Lo/H5;->h()Ljava/util/List;

    .line 13
    move-result-object v0

    .line 14
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 17
    move-result-object v0

    .line 18
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    move-result v3

    .line 22
    if-eqz v3, :cond_3

    .line 24
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    move-result-object v3

    .line 28
    check-cast v3, Lo/T7;

    .line 30
    if-eqz v3, :cond_1

    .line 32
    iget-boolean v4, v3, Lo/T7;->y:Z

    .line 34
    if-nez v4, :cond_2

    .line 36
    iget-object v3, v3, Lo/T7;->t:Lo/i8;

    .line 38
    invoke-virtual {v3}, Lo/i8;->i()Z

    .line 41
    move-result v3

    .line 42
    goto :goto_0

    .line 43
    :cond_2
    move v3, v1

    .line 44
    :goto_0
    if-eqz v3, :cond_1

    .line 46
    return v2

    .line 47
    :cond_3
    return v1
.end method

.method public final j()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lo/i8;->E:Z

    .line 4
    iput-boolean v0, p0, Lo/i8;->F:Z

    .line 6
    iget-object v1, p0, Lo/i8;->L:Lo/k8;

    .line 8
    iput-boolean v0, v1, Lo/k8;->h:Z

    .line 10
    const/4 v0, 0x1

    .line 11
    invoke-virtual {p0, v0}, Lo/i8;->u(I)V

    .line 14
    return-void
.end method

.method public final k()Z
    .locals 7

    .line 1
    iget v0, p0, Lo/i8;->s:I

    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-ge v0, v2, :cond_0

    .line 7
    return v1

    .line 8
    :cond_0
    iget-object v0, p0, Lo/i8;->c:Lo/H5;

    .line 10
    invoke-virtual {v0}, Lo/H5;->h()Ljava/util/List;

    .line 13
    move-result-object v0

    .line 14
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 17
    move-result-object v0

    .line 18
    const/4 v3, 0x0

    .line 19
    move v4, v1

    .line 20
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    move-result v5

    .line 24
    if-eqz v5, :cond_4

    .line 26
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    move-result-object v5

    .line 30
    check-cast v5, Lo/T7;

    .line 32
    if-eqz v5, :cond_1

    .line 34
    invoke-static {v5}, Lo/i8;->I(Lo/T7;)Z

    .line 37
    move-result v6

    .line 38
    if-eqz v6, :cond_1

    .line 40
    iget-boolean v6, v5, Lo/T7;->y:Z

    .line 42
    if-nez v6, :cond_2

    .line 44
    iget-object v6, v5, Lo/T7;->t:Lo/i8;

    .line 46
    invoke-virtual {v6}, Lo/i8;->k()Z

    .line 49
    move-result v6

    .line 50
    goto :goto_1

    .line 51
    :cond_2
    move v6, v1

    .line 52
    :goto_1
    if-eqz v6, :cond_1

    .line 54
    if-nez v3, :cond_3

    .line 56
    new-instance v3, Ljava/util/ArrayList;

    .line 58
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 61
    :cond_3
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    move v4, v2

    .line 65
    goto :goto_0

    .line 66
    :cond_4
    iget-object v0, p0, Lo/i8;->e:Ljava/util/ArrayList;

    .line 68
    if-eqz v0, :cond_7

    .line 70
    :goto_2
    iget-object v0, p0, Lo/i8;->e:Ljava/util/ArrayList;

    .line 72
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 75
    move-result v0

    .line 76
    if-ge v1, v0, :cond_7

    .line 78
    iget-object v0, p0, Lo/i8;->e:Ljava/util/ArrayList;

    .line 80
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 83
    move-result-object v0

    .line 84
    check-cast v0, Lo/T7;

    .line 86
    if-eqz v3, :cond_5

    .line 88
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 91
    move-result v2

    .line 92
    if-nez v2, :cond_6

    .line 94
    :cond_5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 97
    :cond_6
    add-int/lit8 v1, v1, 0x1

    .line 99
    goto :goto_2

    .line 100
    :cond_7
    iput-object v3, p0, Lo/i8;->e:Ljava/util/ArrayList;

    .line 102
    return v4
.end method

.method public final l()V
    .locals 8

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lo/i8;->G:Z

    .line 4
    invoke-virtual {p0, v0}, Lo/i8;->z(Z)Z

    .line 7
    invoke-virtual {p0}, Lo/i8;->w()V

    .line 10
    iget-object v1, p0, Lo/i8;->t:Lo/V7;

    .line 12
    iget-object v2, p0, Lo/i8;->c:Lo/H5;

    .line 14
    if-eqz v1, :cond_0

    .line 16
    iget-object v0, v2, Lo/H5;->d:Ljava/lang/Object;

    .line 18
    check-cast v0, Lo/k8;

    .line 20
    iget-boolean v0, v0, Lo/k8;->g:Z

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    iget-object v1, v1, Lo/V7;->h:Lo/U0;

    .line 25
    if-eqz v1, :cond_1

    .line 27
    invoke-virtual {v1}, Landroid/app/Activity;->isChangingConfigurations()Z

    .line 30
    move-result v1

    .line 31
    xor-int/2addr v0, v1

    .line 32
    :cond_1
    :goto_0
    if-eqz v0, :cond_4

    .line 34
    iget-object v0, p0, Lo/i8;->j:Ljava/util/Map;

    .line 36
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 39
    move-result-object v0

    .line 40
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 43
    move-result-object v0

    .line 44
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 47
    move-result v1

    .line 48
    if-eqz v1, :cond_4

    .line 50
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 53
    move-result-object v1

    .line 54
    check-cast v1, Lo/O2;

    .line 56
    iget-object v1, v1, Lo/O2;->a:Ljava/util/ArrayList;

    .line 58
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 61
    move-result-object v1

    .line 62
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 65
    move-result v3

    .line 66
    if-eqz v3, :cond_2

    .line 68
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 71
    move-result-object v3

    .line 72
    check-cast v3, Ljava/lang/String;

    .line 74
    iget-object v4, v2, Lo/H5;->d:Ljava/lang/Object;

    .line 76
    check-cast v4, Lo/k8;

    .line 78
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 81
    const/4 v5, 0x3

    .line 82
    const-string v6, "FragmentManager"

    .line 84
    invoke-static {v6, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 87
    move-result v5

    .line 88
    if-eqz v5, :cond_3

    .line 90
    new-instance v5, Ljava/lang/StringBuilder;

    .line 92
    const-string v7, "Clearing non-config state for saved state of Fragment "

    .line 94
    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 97
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    move-result-object v5

    .line 104
    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    :cond_3
    invoke-virtual {v4, v3}, Lo/k8;->c(Ljava/lang/String;)V

    .line 110
    goto :goto_1

    .line 111
    :cond_4
    const/4 v0, -0x1

    .line 112
    invoke-virtual {p0, v0}, Lo/i8;->u(I)V

    .line 115
    iget-object v0, p0, Lo/i8;->t:Lo/V7;

    .line 117
    if-eqz v0, :cond_5

    .line 119
    iget-object v0, v0, Lo/V7;->k:Lo/U0;

    .line 121
    iget-object v1, p0, Lo/i8;->o:Lo/Z7;

    .line 123
    iget-object v0, v0, Landroidx/activity/a;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 125
    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 128
    :cond_5
    iget-object v0, p0, Lo/i8;->t:Lo/V7;

    .line 130
    if-eqz v0, :cond_6

    .line 132
    iget-object v0, v0, Lo/V7;->k:Lo/U0;

    .line 134
    iget-object v1, p0, Lo/i8;->n:Lo/Z7;

    .line 136
    iget-object v0, v0, Landroidx/activity/a;->k:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 138
    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 141
    :cond_6
    iget-object v0, p0, Lo/i8;->t:Lo/V7;

    .line 143
    if-eqz v0, :cond_7

    .line 145
    iget-object v0, v0, Lo/V7;->k:Lo/U0;

    .line 147
    iget-object v1, p0, Lo/i8;->p:Lo/Z7;

    .line 149
    iget-object v0, v0, Landroidx/activity/a;->n:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 151
    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 154
    :cond_7
    iget-object v0, p0, Lo/i8;->t:Lo/V7;

    .line 156
    if-eqz v0, :cond_8

    .line 158
    iget-object v0, v0, Lo/V7;->k:Lo/U0;

    .line 160
    iget-object v1, p0, Lo/i8;->q:Lo/Z7;

    .line 162
    iget-object v0, v0, Landroidx/activity/a;->o:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 164
    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 167
    :cond_8
    iget-object v0, p0, Lo/i8;->t:Lo/V7;

    .line 169
    if-eqz v0, :cond_a

    .line 171
    iget-object v0, v0, Lo/V7;->k:Lo/U0;

    .line 173
    iget-object v1, p0, Lo/i8;->r:Lo/c8;

    .line 175
    iget-object v0, v0, Landroidx/activity/a;->c:Lo/s2;

    .line 177
    iget-object v2, v0, Lo/s2;->d:Ljava/lang/Object;

    .line 179
    check-cast v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 181
    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 184
    iget-object v2, v0, Lo/s2;->b:Ljava/lang/Object;

    .line 186
    check-cast v2, Ljava/util/HashMap;

    .line 188
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    move-result-object v1

    .line 192
    if-nez v1, :cond_9

    .line 194
    iget-object v0, v0, Lo/s2;->c:Ljava/lang/Object;

    .line 196
    check-cast v0, Ljava/lang/Runnable;

    .line 198
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 201
    goto :goto_2

    .line 202
    :cond_9
    new-instance v0, Ljava/lang/ClassCastException;

    .line 204
    invoke-direct {v0}, Ljava/lang/ClassCastException;-><init>()V

    .line 207
    throw v0

    .line 208
    :cond_a
    :goto_2
    const/4 v0, 0x0

    .line 209
    iput-object v0, p0, Lo/i8;->t:Lo/V7;

    .line 211
    iput-object v0, p0, Lo/i8;->u:Lo/L1;

    .line 213
    iput-object v0, p0, Lo/i8;->v:Lo/T7;

    .line 215
    iget-object v1, p0, Lo/i8;->g:Landroidx/activity/b;

    .line 217
    if-eqz v1, :cond_c

    .line 219
    iget-object v1, p0, Lo/i8;->h:Lo/b8;

    .line 221
    iget-object v1, v1, Lo/b8;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 223
    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 226
    move-result-object v1

    .line 227
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 230
    move-result v2

    .line 231
    if-eqz v2, :cond_b

    .line 233
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 236
    move-result-object v2

    .line 237
    check-cast v2, Lo/q3;

    .line 239
    invoke-interface {v2}, Lo/q3;->cancel()V

    .line 242
    goto :goto_3

    .line 243
    :cond_b
    iput-object v0, p0, Lo/i8;->g:Landroidx/activity/b;

    .line 245
    :cond_c
    iget-object v0, p0, Lo/i8;->z:Lo/H1;

    .line 247
    if-eqz v0, :cond_19

    .line 249
    iget-object v1, v0, Lo/H1;->c:Ljava/lang/Object;

    .line 251
    check-cast v1, Lo/p4;

    .line 253
    iget-object v2, v1, Lo/p4;->d:Ljava/util/ArrayList;

    .line 255
    iget-object v0, v0, Lo/H1;->b:Ljava/lang/Object;

    .line 257
    check-cast v0, Ljava/lang/String;

    .line 259
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 262
    move-result v2

    .line 263
    if-nez v2, :cond_d

    .line 265
    iget-object v2, v1, Lo/p4;->b:Ljava/util/HashMap;

    .line 267
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    move-result-object v2

    .line 271
    check-cast v2, Ljava/lang/Integer;

    .line 273
    if-eqz v2, :cond_d

    .line 275
    iget-object v3, v1, Lo/p4;->a:Ljava/util/HashMap;

    .line 277
    invoke-virtual {v3, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    :cond_d
    iget-object v2, v1, Lo/p4;->e:Ljava/util/HashMap;

    .line 282
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    iget-object v2, v1, Lo/p4;->f:Ljava/util/HashMap;

    .line 287
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 290
    move-result v3

    .line 291
    const-string v4, "ActivityResultRegistry"

    .line 293
    const-string v5, "Dropping pending result for request "

    .line 295
    const-string v6, ": "

    .line 297
    if-eqz v3, :cond_e

    .line 299
    invoke-static {v5, v0, v6}, Lo/Ve;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    move-result-object v3

    .line 303
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    move-result-object v7

    .line 307
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 310
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 313
    move-result-object v3

    .line 314
    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    :cond_e
    iget-object v2, v1, Lo/p4;->g:Landroid/os/Bundle;

    .line 322
    invoke-virtual {v2, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 325
    move-result v3

    .line 326
    if-eqz v3, :cond_f

    .line 328
    invoke-static {v5, v0, v6}, Lo/Ve;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    move-result-object v3

    .line 332
    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 335
    move-result-object v7

    .line 336
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 339
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 342
    move-result-object v3

    .line 343
    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    invoke-virtual {v2, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 349
    :cond_f
    iget-object v1, v1, Lo/p4;->c:Ljava/util/HashMap;

    .line 351
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    move-result-object v0

    .line 355
    if-nez v0, :cond_18

    .line 357
    iget-object v0, p0, Lo/i8;->A:Lo/H1;

    .line 359
    iget-object v1, v0, Lo/H1;->c:Ljava/lang/Object;

    .line 361
    check-cast v1, Lo/p4;

    .line 363
    iget-object v2, v1, Lo/p4;->d:Ljava/util/ArrayList;

    .line 365
    iget-object v0, v0, Lo/H1;->b:Ljava/lang/Object;

    .line 367
    check-cast v0, Ljava/lang/String;

    .line 369
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 372
    move-result v2

    .line 373
    if-nez v2, :cond_10

    .line 375
    iget-object v2, v1, Lo/p4;->b:Ljava/util/HashMap;

    .line 377
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    move-result-object v2

    .line 381
    check-cast v2, Ljava/lang/Integer;

    .line 383
    if-eqz v2, :cond_10

    .line 385
    iget-object v3, v1, Lo/p4;->a:Ljava/util/HashMap;

    .line 387
    invoke-virtual {v3, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 390
    :cond_10
    iget-object v2, v1, Lo/p4;->e:Ljava/util/HashMap;

    .line 392
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 395
    iget-object v2, v1, Lo/p4;->f:Ljava/util/HashMap;

    .line 397
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 400
    move-result v3

    .line 401
    if-eqz v3, :cond_11

    .line 403
    invoke-static {v5, v0, v6}, Lo/Ve;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 406
    move-result-object v3

    .line 407
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 410
    move-result-object v7

    .line 411
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 414
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 417
    move-result-object v3

    .line 418
    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 424
    :cond_11
    iget-object v2, v1, Lo/p4;->g:Landroid/os/Bundle;

    .line 426
    invoke-virtual {v2, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 429
    move-result v3

    .line 430
    if-eqz v3, :cond_12

    .line 432
    invoke-static {v5, v0, v6}, Lo/Ve;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 435
    move-result-object v3

    .line 436
    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 439
    move-result-object v7

    .line 440
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 443
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 446
    move-result-object v3

    .line 447
    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    invoke-virtual {v2, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 453
    :cond_12
    iget-object v1, v1, Lo/p4;->c:Ljava/util/HashMap;

    .line 455
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 458
    move-result-object v0

    .line 459
    if-nez v0, :cond_17

    .line 461
    iget-object v0, p0, Lo/i8;->B:Lo/H1;

    .line 463
    iget-object v1, v0, Lo/H1;->c:Ljava/lang/Object;

    .line 465
    check-cast v1, Lo/p4;

    .line 467
    iget-object v2, v1, Lo/p4;->d:Ljava/util/ArrayList;

    .line 469
    iget-object v0, v0, Lo/H1;->b:Ljava/lang/Object;

    .line 471
    check-cast v0, Ljava/lang/String;

    .line 473
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 476
    move-result v2

    .line 477
    if-nez v2, :cond_13

    .line 479
    iget-object v2, v1, Lo/p4;->b:Ljava/util/HashMap;

    .line 481
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 484
    move-result-object v2

    .line 485
    check-cast v2, Ljava/lang/Integer;

    .line 487
    if-eqz v2, :cond_13

    .line 489
    iget-object v3, v1, Lo/p4;->a:Ljava/util/HashMap;

    .line 491
    invoke-virtual {v3, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 494
    :cond_13
    iget-object v2, v1, Lo/p4;->e:Ljava/util/HashMap;

    .line 496
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 499
    iget-object v2, v1, Lo/p4;->f:Ljava/util/HashMap;

    .line 501
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 504
    move-result v3

    .line 505
    if-eqz v3, :cond_14

    .line 507
    invoke-static {v5, v0, v6}, Lo/Ve;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 510
    move-result-object v3

    .line 511
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 514
    move-result-object v7

    .line 515
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 518
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 521
    move-result-object v3

    .line 522
    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 528
    :cond_14
    iget-object v2, v1, Lo/p4;->g:Landroid/os/Bundle;

    .line 530
    invoke-virtual {v2, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 533
    move-result v3

    .line 534
    if-eqz v3, :cond_15

    .line 536
    invoke-static {v5, v0, v6}, Lo/Ve;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 539
    move-result-object v3

    .line 540
    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 543
    move-result-object v5

    .line 544
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 547
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 550
    move-result-object v3

    .line 551
    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    invoke-virtual {v2, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 557
    :cond_15
    iget-object v1, v1, Lo/p4;->c:Ljava/util/HashMap;

    .line 559
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 562
    move-result-object v0

    .line 563
    if-nez v0, :cond_16

    .line 565
    goto :goto_4

    .line 566
    :cond_16
    new-instance v0, Ljava/lang/ClassCastException;

    .line 568
    invoke-direct {v0}, Ljava/lang/ClassCastException;-><init>()V

    .line 571
    throw v0

    .line 572
    :cond_17
    new-instance v0, Ljava/lang/ClassCastException;

    .line 574
    invoke-direct {v0}, Ljava/lang/ClassCastException;-><init>()V

    .line 577
    throw v0

    .line 578
    :cond_18
    new-instance v0, Ljava/lang/ClassCastException;

    .line 580
    invoke-direct {v0}, Ljava/lang/ClassCastException;-><init>()V

    .line 583
    throw v0

    .line 584
    :cond_19
    :goto_4
    return-void
.end method

.method public final m(Z)V
    .locals 3

    .line 1
    if-eqz p1, :cond_1

    .line 3
    iget-object v0, p0, Lo/i8;->t:Lo/V7;

    .line 5
    if-nez v0, :cond_0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 10
    const-string v0, "Do not call dispatchLowMemory() on host. Host implements OnTrimMemoryProvider and automatically dispatches low memory callbacks to fragments."

    .line 12
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 15
    invoke-virtual {p0, p1}, Lo/i8;->a0(Ljava/lang/IllegalStateException;)V

    .line 18
    const/4 p1, 0x0

    .line 19
    throw p1

    .line 20
    :cond_1
    :goto_0
    iget-object v0, p0, Lo/i8;->c:Lo/H5;

    .line 22
    invoke-virtual {v0}, Lo/H5;->h()Ljava/util/List;

    .line 25
    move-result-object v0

    .line 26
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 29
    move-result-object v0

    .line 30
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 33
    move-result v1

    .line 34
    if-eqz v1, :cond_3

    .line 36
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 39
    move-result-object v1

    .line 40
    check-cast v1, Lo/T7;

    .line 42
    if-eqz v1, :cond_2

    .line 44
    const/4 v2, 0x1

    .line 45
    iput-boolean v2, v1, Lo/T7;->C:Z

    .line 47
    if-eqz p1, :cond_2

    .line 49
    iget-object v1, v1, Lo/T7;->t:Lo/i8;

    .line 51
    invoke-virtual {v1, v2}, Lo/i8;->m(Z)V

    .line 54
    goto :goto_1

    .line 55
    :cond_3
    return-void
.end method

.method public final n(Z)V
    .locals 3

    .line 1
    if-eqz p1, :cond_1

    .line 3
    iget-object v0, p0, Lo/i8;->t:Lo/V7;

    .line 5
    if-nez v0, :cond_0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 10
    const-string v0, "Do not call dispatchMultiWindowModeChanged() on host. Host implements OnMultiWindowModeChangedProvider and automatically dispatches multi-window mode changes to fragments."

    .line 12
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 15
    invoke-virtual {p0, p1}, Lo/i8;->a0(Ljava/lang/IllegalStateException;)V

    .line 18
    const/4 p1, 0x0

    .line 19
    throw p1

    .line 20
    :cond_1
    :goto_0
    iget-object v0, p0, Lo/i8;->c:Lo/H5;

    .line 22
    invoke-virtual {v0}, Lo/H5;->h()Ljava/util/List;

    .line 25
    move-result-object v0

    .line 26
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 29
    move-result-object v0

    .line 30
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 33
    move-result v1

    .line 34
    if-eqz v1, :cond_3

    .line 36
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 39
    move-result-object v1

    .line 40
    check-cast v1, Lo/T7;

    .line 42
    if-eqz v1, :cond_2

    .line 44
    if-eqz p1, :cond_2

    .line 46
    iget-object v1, v1, Lo/T7;->t:Lo/i8;

    .line 48
    const/4 v2, 0x1

    .line 49
    invoke-virtual {v1, v2}, Lo/i8;->n(Z)V

    .line 52
    goto :goto_1

    .line 53
    :cond_3
    return-void
.end method

.method public final o()V
    .locals 2

    .line 1
    iget-object v0, p0, Lo/i8;->c:Lo/H5;

    .line 3
    invoke-virtual {v0}, Lo/H5;->g()Ljava/util/ArrayList;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 10
    move-result-object v0

    .line 11
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_1

    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Lo/T7;

    .line 23
    if-eqz v1, :cond_0

    .line 25
    invoke-virtual {v1}, Lo/T7;->n()Z

    .line 28
    iget-object v1, v1, Lo/T7;->t:Lo/i8;

    .line 30
    invoke-virtual {v1}, Lo/i8;->o()V

    .line 33
    goto :goto_0

    .line 34
    :cond_1
    return-void
.end method

.method public final p()Z
    .locals 5

    .line 1
    iget v0, p0, Lo/i8;->s:I

    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-ge v0, v2, :cond_0

    .line 7
    return v1

    .line 8
    :cond_0
    iget-object v0, p0, Lo/i8;->c:Lo/H5;

    .line 10
    invoke-virtual {v0}, Lo/H5;->h()Ljava/util/List;

    .line 13
    move-result-object v0

    .line 14
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 17
    move-result-object v0

    .line 18
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    move-result v3

    .line 22
    if-eqz v3, :cond_3

    .line 24
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    move-result-object v3

    .line 28
    check-cast v3, Lo/T7;

    .line 30
    if-eqz v3, :cond_1

    .line 32
    iget-boolean v4, v3, Lo/T7;->y:Z

    .line 34
    if-nez v4, :cond_2

    .line 36
    iget-object v3, v3, Lo/T7;->t:Lo/i8;

    .line 38
    invoke-virtual {v3}, Lo/i8;->p()Z

    .line 41
    move-result v3

    .line 42
    goto :goto_0

    .line 43
    :cond_2
    move v3, v1

    .line 44
    :goto_0
    if-eqz v3, :cond_1

    .line 46
    return v2

    .line 47
    :cond_3
    return v1
.end method

.method public final q()V
    .locals 3

    .line 1
    iget v0, p0, Lo/i8;->s:I

    .line 3
    const/4 v1, 0x1

    .line 4
    if-ge v0, v1, :cond_0

    .line 6
    return-void

    .line 7
    :cond_0
    iget-object v0, p0, Lo/i8;->c:Lo/H5;

    .line 9
    invoke-virtual {v0}, Lo/H5;->h()Ljava/util/List;

    .line 12
    move-result-object v0

    .line 13
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 16
    move-result-object v0

    .line 17
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_2

    .line 23
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Lo/T7;

    .line 29
    if-eqz v1, :cond_1

    .line 31
    iget-boolean v2, v1, Lo/T7;->y:Z

    .line 33
    if-nez v2, :cond_1

    .line 35
    iget-object v1, v1, Lo/T7;->t:Lo/i8;

    .line 37
    invoke-virtual {v1}, Lo/i8;->q()V

    .line 40
    goto :goto_0

    .line 41
    :cond_2
    return-void
.end method

.method public final r(Lo/T7;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_1

    .line 3
    iget-object v0, p1, Lo/T7;->e:Ljava/lang/String;

    .line 5
    iget-object v1, p0, Lo/i8;->c:Lo/H5;

    .line 7
    invoke-virtual {v1, v0}, Lo/H5;->c(Ljava/lang/String;)Lo/T7;

    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_1

    .line 17
    iget-object v0, p1, Lo/T7;->r:Lo/i8;

    .line 19
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    invoke-static {p1}, Lo/i8;->J(Lo/T7;)Z

    .line 25
    move-result v0

    .line 26
    iget-object v1, p1, Lo/T7;->j:Ljava/lang/Boolean;

    .line 28
    if-eqz v1, :cond_0

    .line 30
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 33
    move-result v1

    .line 34
    if-eq v1, v0, :cond_1

    .line 36
    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 39
    move-result-object v0

    .line 40
    iput-object v0, p1, Lo/T7;->j:Ljava/lang/Boolean;

    .line 42
    iget-object p1, p1, Lo/T7;->t:Lo/i8;

    .line 44
    invoke-virtual {p1}, Lo/i8;->b0()V

    .line 47
    iget-object v0, p1, Lo/i8;->w:Lo/T7;

    .line 49
    invoke-virtual {p1, v0}, Lo/i8;->r(Lo/T7;)V

    .line 52
    :cond_1
    return-void
.end method

.method public final s(Z)V
    .locals 3

    .line 1
    if-eqz p1, :cond_1

    .line 3
    iget-object v0, p0, Lo/i8;->t:Lo/V7;

    .line 5
    if-nez v0, :cond_0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 10
    const-string v0, "Do not call dispatchPictureInPictureModeChanged() on host. Host implements OnPictureInPictureModeChangedProvider and automatically dispatches picture-in-picture mode changes to fragments."

    .line 12
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 15
    invoke-virtual {p0, p1}, Lo/i8;->a0(Ljava/lang/IllegalStateException;)V

    .line 18
    const/4 p1, 0x0

    .line 19
    throw p1

    .line 20
    :cond_1
    :goto_0
    iget-object v0, p0, Lo/i8;->c:Lo/H5;

    .line 22
    invoke-virtual {v0}, Lo/H5;->h()Ljava/util/List;

    .line 25
    move-result-object v0

    .line 26
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 29
    move-result-object v0

    .line 30
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 33
    move-result v1

    .line 34
    if-eqz v1, :cond_3

    .line 36
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 39
    move-result-object v1

    .line 40
    check-cast v1, Lo/T7;

    .line 42
    if-eqz v1, :cond_2

    .line 44
    if-eqz p1, :cond_2

    .line 46
    iget-object v1, v1, Lo/T7;->t:Lo/i8;

    .line 48
    const/4 v2, 0x1

    .line 49
    invoke-virtual {v1, v2}, Lo/i8;->s(Z)V

    .line 52
    goto :goto_1

    .line 53
    :cond_3
    return-void
.end method

.method public final t()Z
    .locals 6

    .line 1
    iget v0, p0, Lo/i8;->s:I

    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-ge v0, v2, :cond_0

    .line 7
    return v1

    .line 8
    :cond_0
    iget-object v0, p0, Lo/i8;->c:Lo/H5;

    .line 10
    invoke-virtual {v0}, Lo/H5;->h()Ljava/util/List;

    .line 13
    move-result-object v0

    .line 14
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 17
    move-result-object v0

    .line 18
    move v3, v1

    .line 19
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    move-result v4

    .line 23
    if-eqz v4, :cond_3

    .line 25
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    move-result-object v4

    .line 29
    check-cast v4, Lo/T7;

    .line 31
    if-eqz v4, :cond_1

    .line 33
    invoke-static {v4}, Lo/i8;->I(Lo/T7;)Z

    .line 36
    move-result v5

    .line 37
    if-eqz v5, :cond_1

    .line 39
    iget-boolean v5, v4, Lo/T7;->y:Z

    .line 41
    if-nez v5, :cond_2

    .line 43
    iget-object v4, v4, Lo/T7;->t:Lo/i8;

    .line 45
    invoke-virtual {v4}, Lo/i8;->t()Z

    .line 48
    move-result v4

    .line 49
    goto :goto_1

    .line 50
    :cond_2
    move v4, v1

    .line 51
    :goto_1
    if-eqz v4, :cond_1

    .line 53
    move v3, v2

    .line 54
    goto :goto_0

    .line 55
    :cond_3
    return v3
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const/16 v1, 0x80

    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 8
    const-string v1, "FragmentManager{"

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 16
    move-result v1

    .line 17
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    const-string v1, " in "

    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    iget-object v1, p0, Lo/i8;->v:Lo/T7;

    .line 31
    const-string v2, "}"

    .line 33
    const-string v3, "{"

    .line 35
    if-eqz v1, :cond_0

    .line 37
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    move-result-object v1

    .line 41
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 44
    move-result-object v1

    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    iget-object v1, p0, Lo/i8;->v:Lo/T7;

    .line 53
    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 56
    move-result v1

    .line 57
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 60
    move-result-object v1

    .line 61
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    goto :goto_0

    .line 68
    :cond_0
    iget-object v1, p0, Lo/i8;->t:Lo/V7;

    .line 70
    if-eqz v1, :cond_1

    .line 72
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 75
    move-result-object v1

    .line 76
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 79
    move-result-object v1

    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    iget-object v1, p0, Lo/i8;->t:Lo/V7;

    .line 88
    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 91
    move-result v1

    .line 92
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 95
    move-result-object v1

    .line 96
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    goto :goto_0

    .line 103
    :cond_1
    const-string v1, "null"

    .line 105
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    :goto_0
    const-string v1, "}}"

    .line 110
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 116
    move-result-object v0

    .line 117
    return-object v0
.end method

.method public final u(I)V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    :try_start_0
    iput-boolean v0, p0, Lo/i8;->b:Z

    .line 5
    iget-object v2, p0, Lo/i8;->c:Lo/H5;

    .line 7
    iget-object v2, v2, Lo/H5;->b:Ljava/lang/Object;

    .line 9
    check-cast v2, Ljava/util/HashMap;

    .line 11
    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 14
    move-result-object v2

    .line 15
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 18
    move-result-object v2

    .line 19
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    move-result v3

    .line 23
    if-eqz v3, :cond_1

    .line 25
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    move-result-object v3

    .line 29
    check-cast v3, Landroidx/fragment/app/a;

    .line 31
    if-eqz v3, :cond_0

    .line 33
    iput p1, v3, Landroidx/fragment/app/a;->e:I

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    invoke-virtual {p0, p1, v1}, Lo/i8;->K(IZ)V

    .line 39
    invoke-virtual {p0}, Lo/i8;->e()Ljava/util/HashSet;

    .line 42
    move-result-object p1

    .line 43
    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 46
    move-result-object p1

    .line 47
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 50
    move-result v2

    .line 51
    if-eqz v2, :cond_2

    .line 53
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 56
    move-result-object v2

    .line 57
    check-cast v2, Lo/K5;

    .line 59
    invoke-virtual {v2}, Lo/K5;->e()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    goto :goto_1

    .line 63
    :catchall_0
    move-exception p1

    .line 64
    goto :goto_2

    .line 65
    :cond_2
    iput-boolean v1, p0, Lo/i8;->b:Z

    .line 67
    invoke-virtual {p0, v0}, Lo/i8;->z(Z)Z

    .line 70
    return-void

    .line 71
    :goto_2
    iput-boolean v1, p0, Lo/i8;->b:Z

    .line 73
    throw p1
.end method

.method public final v(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 8

    .line 1
    const-string v0, "    "

    .line 2
    invoke-static {p1, v0}, Lo/Ve;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lo/i8;->c:Lo/H5;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "    "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 5
    iget-object v3, v1, Lo/H5;->b:Ljava/lang/Object;

    check-cast v3, Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_1b

    .line 6
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7
    const-string v4, "Active Fragments:"

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/fragment/app/a;

    .line 9
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    if-eqz v4, :cond_1a

    .line 10
    iget-object v4, v4, Landroidx/fragment/app/a;->c:Lo/T7;

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 11
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "mFragmentId=#"

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 13
    iget v6, v4, Lo/T7;->v:I

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 14
    const-string v6, " mContainerId=#"

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 15
    iget v6, v4, Lo/T7;->w:I

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 16
    const-string v6, " mTag="

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, v4, Lo/T7;->x:Ljava/lang/String;

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 17
    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "mState="

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v6, v4, Lo/T7;->a:I

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(I)V

    .line 18
    const-string v6, " mWho="

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, v4, Lo/T7;->e:Ljava/lang/String;

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 19
    const-string v6, " mBackStackNesting="

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v6, v4, Lo/T7;->q:I

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(I)V

    .line 20
    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "mAdded="

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v6, v4, Lo/T7;->k:Z

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Z)V

    .line 21
    const-string v6, " mRemoving="

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v6, v4, Lo/T7;->l:Z

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Z)V

    .line 22
    const-string v6, " mFromLayout="

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v6, v4, Lo/T7;->m:Z

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Z)V

    .line 23
    const-string v6, " mInLayout="

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v6, v4, Lo/T7;->n:Z

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Z)V

    .line 24
    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "mHidden="

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v6, v4, Lo/T7;->y:Z

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Z)V

    .line 25
    const-string v6, " mDetached="

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v6, v4, Lo/T7;->z:Z

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Z)V

    .line 26
    const-string v6, " mMenuVisible="

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v6, v4, Lo/T7;->B:Z

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Z)V

    .line 27
    const-string v6, " mHasMenu="

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->println(Z)V

    .line 28
    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "mRetainInstance="

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v6, v4, Lo/T7;->A:Z

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Z)V

    .line 29
    const-string v6, " mUserVisibleHint="

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v6, v4, Lo/T7;->G:Z

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Z)V

    .line 30
    iget-object v6, v4, Lo/T7;->r:Lo/i8;

    if-eqz v6, :cond_0

    .line 31
    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "mFragmentManager="

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 32
    iget-object v6, v4, Lo/T7;->r:Lo/i8;

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 33
    :cond_0
    iget-object v6, v4, Lo/T7;->s:Lo/V7;

    if-eqz v6, :cond_1

    .line 34
    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "mHost="

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 35
    iget-object v6, v4, Lo/T7;->s:Lo/V7;

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 36
    :cond_1
    iget-object v6, v4, Lo/T7;->u:Lo/T7;

    if-eqz v6, :cond_2

    .line 37
    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "mParentFragment="

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 38
    iget-object v6, v4, Lo/T7;->u:Lo/T7;

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 39
    :cond_2
    iget-object v6, v4, Lo/T7;->f:Landroid/os/Bundle;

    if-eqz v6, :cond_3

    .line 40
    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "mArguments="

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, v4, Lo/T7;->f:Landroid/os/Bundle;

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 41
    :cond_3
    iget-object v6, v4, Lo/T7;->b:Landroid/os/Bundle;

    if-eqz v6, :cond_4

    .line 42
    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "mSavedFragmentState="

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 43
    iget-object v6, v4, Lo/T7;->b:Landroid/os/Bundle;

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 44
    :cond_4
    iget-object v6, v4, Lo/T7;->c:Landroid/util/SparseArray;

    if-eqz v6, :cond_5

    .line 45
    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "mSavedViewState="

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 46
    iget-object v6, v4, Lo/T7;->c:Landroid/util/SparseArray;

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 47
    :cond_5
    iget-object v6, v4, Lo/T7;->d:Landroid/os/Bundle;

    if-eqz v6, :cond_6

    .line 48
    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "mSavedViewRegistryState="

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 49
    iget-object v6, v4, Lo/T7;->d:Landroid/os/Bundle;

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 50
    :cond_6
    iget-object v6, v4, Lo/T7;->g:Lo/T7;

    if-eqz v6, :cond_7

    goto :goto_1

    .line 51
    :cond_7
    iget-object v6, v4, Lo/T7;->r:Lo/i8;

    if-eqz v6, :cond_8

    iget-object v7, v4, Lo/T7;->h:Ljava/lang/String;

    if-eqz v7, :cond_8

    .line 52
    iget-object v6, v6, Lo/i8;->c:Lo/H5;

    .line 53
    invoke-virtual {v6, v7}, Lo/H5;->c(Ljava/lang/String;)Lo/T7;

    move-result-object v6

    goto :goto_1

    :cond_8
    const/4 v6, 0x0

    :goto_1
    if-eqz v6, :cond_9

    .line 54
    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, "mTarget="

    invoke-virtual {p3, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 55
    const-string v6, " mTargetRequestCode="

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 56
    iget v6, v4, Lo/T7;->i:I

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(I)V

    .line 57
    :cond_9
    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "mPopDirection="

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 58
    iget-object v6, v4, Lo/T7;->H:Lo/R7;

    if-nez v6, :cond_a

    move v6, v5

    goto :goto_2

    .line 59
    :cond_a
    iget-boolean v6, v6, Lo/R7;->a:Z

    .line 60
    :goto_2
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Z)V

    .line 61
    iget-object v6, v4, Lo/T7;->H:Lo/R7;

    if-nez v6, :cond_b

    move v6, v5

    goto :goto_3

    .line 62
    :cond_b
    iget v6, v6, Lo/R7;->b:I

    :goto_3
    if-eqz v6, :cond_d

    .line 63
    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "getEnterAnim="

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 64
    iget-object v6, v4, Lo/T7;->H:Lo/R7;

    if-nez v6, :cond_c

    move v6, v5

    goto :goto_4

    .line 65
    :cond_c
    iget v6, v6, Lo/R7;->b:I

    .line 66
    :goto_4
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(I)V

    .line 67
    :cond_d
    iget-object v6, v4, Lo/T7;->H:Lo/R7;

    if-nez v6, :cond_e

    move v6, v5

    goto :goto_5

    .line 68
    :cond_e
    iget v6, v6, Lo/R7;->c:I

    :goto_5
    if-eqz v6, :cond_10

    .line 69
    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "getExitAnim="

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 70
    iget-object v6, v4, Lo/T7;->H:Lo/R7;

    if-nez v6, :cond_f

    move v6, v5

    goto :goto_6

    .line 71
    :cond_f
    iget v6, v6, Lo/R7;->c:I

    .line 72
    :goto_6
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(I)V

    .line 73
    :cond_10
    iget-object v6, v4, Lo/T7;->H:Lo/R7;

    if-nez v6, :cond_11

    move v6, v5

    goto :goto_7

    .line 74
    :cond_11
    iget v6, v6, Lo/R7;->d:I

    :goto_7
    if-eqz v6, :cond_13

    .line 75
    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "getPopEnterAnim="

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 76
    iget-object v6, v4, Lo/T7;->H:Lo/R7;

    if-nez v6, :cond_12

    move v6, v5

    goto :goto_8

    .line 77
    :cond_12
    iget v6, v6, Lo/R7;->d:I

    .line 78
    :goto_8
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(I)V

    .line 79
    :cond_13
    iget-object v6, v4, Lo/T7;->H:Lo/R7;

    if-nez v6, :cond_14

    move v6, v5

    goto :goto_9

    .line 80
    :cond_14
    iget v6, v6, Lo/R7;->e:I

    :goto_9
    if-eqz v6, :cond_16

    .line 81
    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "getPopExitAnim="

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 82
    iget-object v6, v4, Lo/T7;->H:Lo/R7;

    if-nez v6, :cond_15

    move v6, v5

    goto :goto_a

    .line 83
    :cond_15
    iget v6, v6, Lo/R7;->e:I

    .line 84
    :goto_a
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(I)V

    .line 85
    :cond_16
    iget-object v6, v4, Lo/T7;->D:Landroid/view/ViewGroup;

    if-eqz v6, :cond_17

    .line 86
    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "mContainer="

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, v4, Lo/T7;->D:Landroid/view/ViewGroup;

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 87
    :cond_17
    iget-object v6, v4, Lo/T7;->E:Landroid/view/View;

    if-eqz v6, :cond_18

    .line 88
    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "mView="

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, v4, Lo/T7;->E:Landroid/view/View;

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 89
    :cond_18
    invoke-virtual {v4}, Lo/T7;->h()Landroid/content/Context;

    move-result-object v6

    if-eqz v6, :cond_19

    .line 90
    invoke-static {v4}, Lo/H1;->v(Lo/R9;)Lo/H1;

    move-result-object v6

    invoke-virtual {v6, v2, p3}, Lo/H1;->r(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 91
    :cond_19
    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 92
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Child "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, v4, Lo/T7;->t:Lo/i8;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 93
    iget-object v4, v4, Lo/T7;->t:Lo/i8;

    const-string v6, "  "

    .line 94
    invoke-static {v2, v6}, Lo/Ve;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 95
    invoke-virtual {v4, v6, p2, p3, p4}, Lo/i8;->v(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto/16 :goto_0

    .line 96
    :cond_1a
    const-string v4, "null"

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 97
    :cond_1b
    iget-object p2, v1, Lo/H5;->a:Ljava/lang/Object;

    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p4

    if-lez p4, :cond_1c

    .line 98
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "Added Fragments:"

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v1, v5

    :goto_b
    if-ge v1, p4, :cond_1c

    .line 99
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/T7;

    .line 100
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 101
    const-string v3, "  #"

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 102
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 103
    const-string v3, ": "

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 104
    invoke-virtual {v2}, Lo/T7;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 105
    :cond_1c
    iget-object p2, p0, Lo/i8;->e:Ljava/util/ArrayList;

    if-eqz p2, :cond_1d

    .line 106
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_1d

    .line 107
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p4, "Fragments Created Menus:"

    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move p4, v5

    :goto_c
    if-ge p4, p2, :cond_1d

    .line 108
    iget-object v1, p0, Lo/i8;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/T7;

    .line 109
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 110
    const-string v2, "  #"

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 111
    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->print(I)V

    .line 112
    const-string v2, ": "

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 113
    invoke-virtual {v1}, Lo/T7;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 p4, p4, 0x1

    goto :goto_c

    .line 114
    :cond_1d
    iget-object p2, p0, Lo/i8;->d:Ljava/util/ArrayList;

    if-eqz p2, :cond_1e

    .line 115
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_1e

    .line 116
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p4, "Back Stack:"

    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move p4, v5

    :goto_d
    if-ge p4, p2, :cond_1e

    .line 117
    iget-object v1, p0, Lo/i8;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/M2;

    .line 118
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 119
    const-string v2, "  #"

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 120
    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->print(I)V

    .line 121
    const-string v2, ": "

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 122
    invoke-virtual {v1}, Lo/M2;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v2, 0x1

    .line 123
    invoke-virtual {v1, v0, p3, v2}, Lo/M2;->d(Ljava/lang/String;Ljava/io/PrintWriter;Z)V

    add-int/lit8 p4, p4, 0x1

    goto :goto_d

    .line 124
    :cond_1e
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 125
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p4, "Back Stack Index: "

    invoke-direct {p2, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p4, p0, Lo/i8;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p4

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 126
    iget-object p2, p0, Lo/i8;->a:Ljava/util/ArrayList;

    monitor-enter p2

    .line 127
    :try_start_0
    iget-object p4, p0, Lo/i8;->a:Ljava/util/ArrayList;

    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result p4

    if-lez p4, :cond_1f

    .line 128
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Pending Actions:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_e
    if-ge v5, p4, :cond_1f

    .line 129
    iget-object v0, p0, Lo/i8;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/g8;

    .line 130
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 131
    const-string v1, "  #"

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 132
    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 133
    const-string v1, ": "

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 134
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_e

    :catchall_0
    move-exception p1

    goto :goto_f

    .line 135
    :cond_1f
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 137
    const-string p2, "FragmentManager misc state:"

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 138
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 139
    const-string p2, "  mHost="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 140
    iget-object p2, p0, Lo/i8;->t:Lo/V7;

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 141
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 142
    const-string p2, "  mContainer="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 143
    iget-object p2, p0, Lo/i8;->u:Lo/L1;

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 144
    iget-object p2, p0, Lo/i8;->v:Lo/T7;

    if-eqz p2, :cond_20

    .line 145
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 146
    const-string p2, "  mParent="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 147
    iget-object p2, p0, Lo/i8;->v:Lo/T7;

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 148
    :cond_20
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 149
    const-string p2, "  mCurState="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 150
    iget p2, p0, Lo/i8;->s:I

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(I)V

    .line 151
    const-string p2, " mStateSaved="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 152
    iget-boolean p2, p0, Lo/i8;->E:Z

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Z)V

    .line 153
    const-string p2, " mStopped="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 154
    iget-boolean p2, p0, Lo/i8;->F:Z

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Z)V

    .line 155
    const-string p2, " mDestroyed="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 156
    iget-boolean p2, p0, Lo/i8;->G:Z

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Z)V

    .line 157
    iget-boolean p2, p0, Lo/i8;->D:Z

    if-eqz p2, :cond_21

    .line 158
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 159
    const-string p1, "  mNeedMenuInvalidate="

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 160
    iget-boolean p1, p0, Lo/i8;->D:Z

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->println(Z)V

    :cond_21
    return-void

    .line 161
    :goto_f
    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final w()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lo/i8;->e()Ljava/util/HashSet;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 8
    move-result-object v0

    .line 9
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Lo/K5;

    .line 21
    invoke-virtual {v1}, Lo/K5;->e()V

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    return-void
.end method

.method public final x(Lo/g8;Z)V
    .locals 2

    .line 1
    if-nez p2, :cond_3

    .line 3
    iget-object v0, p0, Lo/i8;->t:Lo/V7;

    .line 5
    if-nez v0, :cond_1

    .line 7
    iget-boolean p1, p0, Lo/i8;->G:Z

    .line 9
    if-eqz p1, :cond_0

    .line 11
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 13
    const-string p2, "FragmentManager has been destroyed"

    .line 15
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 18
    throw p1

    .line 19
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 21
    const-string p2, "FragmentManager has not been attached to a host."

    .line 23
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 26
    throw p1

    .line 27
    :cond_1
    iget-boolean v0, p0, Lo/i8;->E:Z

    .line 29
    if-nez v0, :cond_2

    .line 31
    iget-boolean v0, p0, Lo/i8;->F:Z

    .line 33
    if-nez v0, :cond_2

    .line 35
    goto :goto_0

    .line 36
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 38
    const-string p2, "Can not perform this action after onSaveInstanceState"

    .line 40
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 43
    throw p1

    .line 44
    :cond_3
    :goto_0
    iget-object v0, p0, Lo/i8;->a:Ljava/util/ArrayList;

    .line 46
    monitor-enter v0

    .line 47
    :try_start_0
    iget-object v1, p0, Lo/i8;->t:Lo/V7;

    .line 49
    if-nez v1, :cond_5

    .line 51
    if-eqz p2, :cond_4

    .line 53
    monitor-exit v0

    .line 54
    return-void

    .line 55
    :catchall_0
    move-exception p1

    .line 56
    goto :goto_1

    .line 57
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 59
    const-string p2, "Activity has been destroyed"

    .line 61
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 64
    throw p1

    .line 65
    :cond_5
    iget-object p2, p0, Lo/i8;->a:Ljava/util/ArrayList;

    .line 67
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    invoke-virtual {p0}, Lo/i8;->T()V

    .line 73
    monitor-exit v0

    .line 74
    return-void

    .line 75
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    throw p1
.end method

.method public final y(Z)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lo/i8;->b:Z

    .line 3
    if-nez v0, :cond_6

    .line 5
    iget-object v0, p0, Lo/i8;->t:Lo/V7;

    .line 7
    if-nez v0, :cond_1

    .line 9
    iget-boolean p1, p0, Lo/i8;->G:Z

    .line 11
    if-eqz p1, :cond_0

    .line 13
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 15
    const-string v0, "FragmentManager has been destroyed"

    .line 17
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 20
    throw p1

    .line 21
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 23
    const-string v0, "FragmentManager has not been attached to a host."

    .line 25
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 28
    throw p1

    .line 29
    :cond_1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 32
    move-result-object v0

    .line 33
    iget-object v1, p0, Lo/i8;->t:Lo/V7;

    .line 35
    iget-object v1, v1, Lo/V7;->i:Landroid/os/Handler;

    .line 37
    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 40
    move-result-object v1

    .line 41
    if-ne v0, v1, :cond_5

    .line 43
    if-nez p1, :cond_3

    .line 45
    iget-boolean p1, p0, Lo/i8;->E:Z

    .line 47
    if-nez p1, :cond_2

    .line 49
    iget-boolean p1, p0, Lo/i8;->F:Z

    .line 51
    if-nez p1, :cond_2

    .line 53
    goto :goto_0

    .line 54
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 56
    const-string v0, "Can not perform this action after onSaveInstanceState"

    .line 58
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 61
    throw p1

    .line 62
    :cond_3
    :goto_0
    iget-object p1, p0, Lo/i8;->I:Ljava/util/ArrayList;

    .line 64
    if-nez p1, :cond_4

    .line 66
    new-instance p1, Ljava/util/ArrayList;

    .line 68
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 71
    iput-object p1, p0, Lo/i8;->I:Ljava/util/ArrayList;

    .line 73
    new-instance p1, Ljava/util/ArrayList;

    .line 75
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 78
    iput-object p1, p0, Lo/i8;->J:Ljava/util/ArrayList;

    .line 80
    :cond_4
    return-void

    .line 81
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 83
    const-string v0, "Must be called from main thread of fragment host"

    .line 85
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 88
    throw p1

    .line 89
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 91
    const-string v0, "FragmentManager is already executing transactions"

    .line 93
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 96
    throw p1
.end method

.method public final z(Z)Z
    .locals 8

    .line 1
    invoke-virtual {p0, p1}, Lo/i8;->y(Z)V

    .line 4
    const/4 p1, 0x0

    .line 5
    move v0, p1

    .line 6
    :goto_0
    iget-object v1, p0, Lo/i8;->I:Ljava/util/ArrayList;

    .line 8
    iget-object v2, p0, Lo/i8;->J:Ljava/util/ArrayList;

    .line 10
    iget-object v3, p0, Lo/i8;->a:Ljava/util/ArrayList;

    .line 12
    monitor-enter v3

    .line 13
    :try_start_0
    iget-object v4, p0, Lo/i8;->a:Ljava/util/ArrayList;

    .line 15
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    .line 18
    move-result v4

    .line 19
    if-eqz v4, :cond_0

    .line 21
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    move v6, p1

    .line 23
    goto :goto_2

    .line 24
    :catchall_0
    move-exception p1

    .line 25
    goto :goto_4

    .line 26
    :cond_0
    :try_start_1
    iget-object v4, p0, Lo/i8;->a:Ljava/util/ArrayList;

    .line 28
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 31
    move-result v4

    .line 32
    move v5, p1

    .line 33
    move v6, v5

    .line 34
    :goto_1
    if-ge v5, v4, :cond_1

    .line 36
    iget-object v7, p0, Lo/i8;->a:Ljava/util/ArrayList;

    .line 38
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 41
    move-result-object v7

    .line 42
    check-cast v7, Lo/g8;

    .line 44
    invoke-interface {v7, v1, v2}, Lo/g8;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    .line 47
    move-result v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 48
    or-int/2addr v6, v7

    .line 49
    add-int/lit8 v5, v5, 0x1

    .line 51
    goto :goto_1

    .line 52
    :catchall_1
    move-exception p1

    .line 53
    goto :goto_3

    .line 54
    :cond_1
    :try_start_2
    iget-object v1, p0, Lo/i8;->a:Ljava/util/ArrayList;

    .line 56
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 59
    iget-object v1, p0, Lo/i8;->t:Lo/V7;

    .line 61
    iget-object v1, v1, Lo/V7;->i:Landroid/os/Handler;

    .line 63
    iget-object v2, p0, Lo/i8;->M:Lo/J2;

    .line 65
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 68
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 69
    :goto_2
    if-eqz v6, :cond_2

    .line 71
    const/4 v0, 0x1

    .line 72
    iput-boolean v0, p0, Lo/i8;->b:Z

    .line 74
    :try_start_3
    iget-object v1, p0, Lo/i8;->I:Ljava/util/ArrayList;

    .line 76
    iget-object v2, p0, Lo/i8;->J:Ljava/util/ArrayList;

    .line 78
    invoke-virtual {p0, v1, v2}, Lo/i8;->Q(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 81
    invoke-virtual {p0}, Lo/i8;->d()V

    .line 84
    goto :goto_0

    .line 85
    :catchall_2
    move-exception p1

    .line 86
    invoke-virtual {p0}, Lo/i8;->d()V

    .line 89
    throw p1

    .line 90
    :cond_2
    invoke-virtual {p0}, Lo/i8;->b0()V

    .line 93
    iget-boolean v1, p0, Lo/i8;->H:Z

    .line 95
    if-eqz v1, :cond_3

    .line 97
    iput-boolean p1, p0, Lo/i8;->H:Z

    .line 99
    invoke-virtual {p0}, Lo/i8;->Z()V

    .line 102
    :cond_3
    iget-object p1, p0, Lo/i8;->c:Lo/H5;

    .line 104
    iget-object p1, p1, Lo/H5;->b:Ljava/lang/Object;

    .line 106
    check-cast p1, Ljava/util/HashMap;

    .line 108
    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 111
    move-result-object p1

    .line 112
    const/4 v1, 0x0

    .line 113
    invoke-static {v1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    .line 116
    move-result-object v1

    .line 117
    invoke-interface {p1, v1}, Ljava/util/Collection;->removeAll(Ljava/util/Collection;)Z

    .line 120
    return v0

    .line 121
    :goto_3
    :try_start_4
    iget-object v0, p0, Lo/i8;->a:Ljava/util/ArrayList;

    .line 123
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 126
    iget-object v0, p0, Lo/i8;->t:Lo/V7;

    .line 128
    iget-object v0, v0, Lo/V7;->i:Landroid/os/Handler;

    .line 130
    iget-object v1, p0, Lo/i8;->M:Lo/J2;

    .line 132
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 135
    throw p1

    .line 136
    :goto_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 137
    throw p1
.end method
