.class public Lo/L4;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public A:I

.field public B:F

.field public final C:[I

.field public D:F

.field public E:Z

.field public F:Z

.field public G:I

.field public H:I

.field public final I:Lo/x4;

.field public final J:Lo/x4;

.field public final K:Lo/x4;

.field public final L:Lo/x4;

.field public final M:Lo/x4;

.field public final N:Lo/x4;

.field public final O:Lo/x4;

.field public final P:Lo/x4;

.field public final Q:[Lo/x4;

.field public final R:Ljava/util/ArrayList;

.field public final S:[Z

.field public T:Lo/L4;

.field public U:I

.field public V:I

.field public W:F

.field public X:I

.field public Y:I

.field public Z:I

.field public a:Z

.field public a0:I

.field public b:Lo/C3;

.field public b0:I

.field public c:Lo/C3;

.field public c0:I

.field public d:Lo/c9;

.field public d0:F

.field public e:Lo/oh;

.field public e0:F

.field public final f:[Z

.field public f0:Landroid/view/View;

.field public g:Z

.field public g0:I

.field public h:I

.field public h0:Ljava/lang/String;

.field public i:I

.field public i0:I

.field public j:Ljava/lang/String;

.field public j0:I

.field public k:Z

.field public final k0:[F

.field public l:Z

.field public final l0:[Lo/L4;

.field public m:Z

.field public final m0:[Lo/L4;

.field public n:Z

.field public n0:I

.field public o:I

.field public o0:I

.field public p:I

.field public final p0:[I

.field public q:I

.field public r:I

.field public s:I

.field public final t:[I

.field public u:I

.field public v:I

.field public w:F

.field public x:I

.field public y:I

.field public z:F


# direct methods
.method public constructor <init>()V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 3
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 6
    const/4 v1, 0x0

    .line 7
    iput-boolean v1, v0, Lo/L4;->a:Z

    .line 9
    const/4 v2, 0x0

    .line 10
    iput-object v2, v0, Lo/L4;->d:Lo/c9;

    .line 12
    iput-object v2, v0, Lo/L4;->e:Lo/oh;

    .line 14
    const/4 v3, 0x1

    .line 15
    const/4 v4, 0x2

    .line 16
    new-array v5, v4, [Z

    .line 18
    fill-array-data v5, :array_0

    .line 21
    iput-object v5, v0, Lo/L4;->f:[Z

    .line 23
    iput-boolean v3, v0, Lo/L4;->g:Z

    .line 25
    const/4 v5, -0x1

    .line 26
    iput v5, v0, Lo/L4;->h:I

    .line 28
    iput v5, v0, Lo/L4;->i:I

    .line 30
    new-instance v6, Ljava/util/HashMap;

    .line 32
    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 35
    iput-boolean v1, v0, Lo/L4;->k:Z

    .line 37
    iput-boolean v1, v0, Lo/L4;->l:Z

    .line 39
    iput-boolean v1, v0, Lo/L4;->m:Z

    .line 41
    iput-boolean v1, v0, Lo/L4;->n:Z

    .line 43
    iput v5, v0, Lo/L4;->o:I

    .line 45
    iput v5, v0, Lo/L4;->p:I

    .line 47
    iput v1, v0, Lo/L4;->q:I

    .line 49
    iput v1, v0, Lo/L4;->r:I

    .line 51
    iput v1, v0, Lo/L4;->s:I

    .line 53
    new-array v6, v4, [I

    .line 55
    iput-object v6, v0, Lo/L4;->t:[I

    .line 57
    iput v1, v0, Lo/L4;->u:I

    .line 59
    iput v1, v0, Lo/L4;->v:I

    .line 61
    const/high16 v6, 0x3f800000    # 1.0f

    .line 63
    iput v6, v0, Lo/L4;->w:F

    .line 65
    iput v1, v0, Lo/L4;->x:I

    .line 67
    iput v1, v0, Lo/L4;->y:I

    .line 69
    iput v6, v0, Lo/L4;->z:F

    .line 71
    iput v5, v0, Lo/L4;->A:I

    .line 73
    iput v6, v0, Lo/L4;->B:F

    .line 75
    const v6, 0x7fffffff

    .line 78
    filled-new-array {v6, v6}, [I

    .line 81
    move-result-object v6

    .line 82
    iput-object v6, v0, Lo/L4;->C:[I

    .line 84
    const/high16 v6, 0x7fc00000    # Float.NaN

    .line 86
    iput v6, v0, Lo/L4;->D:F

    .line 88
    iput-boolean v1, v0, Lo/L4;->E:Z

    .line 90
    iput-boolean v1, v0, Lo/L4;->F:Z

    .line 92
    iput v1, v0, Lo/L4;->G:I

    .line 94
    iput v1, v0, Lo/L4;->H:I

    .line 96
    new-instance v6, Lo/x4;

    .line 98
    invoke-direct {v6, v0, v4}, Lo/x4;-><init>(Lo/L4;I)V

    .line 101
    iput-object v6, v0, Lo/L4;->I:Lo/x4;

    .line 103
    new-instance v13, Lo/x4;

    .line 105
    const/4 v7, 0x3

    .line 106
    invoke-direct {v13, v0, v7}, Lo/x4;-><init>(Lo/L4;I)V

    .line 109
    iput-object v13, v0, Lo/L4;->J:Lo/x4;

    .line 111
    new-instance v14, Lo/x4;

    .line 113
    const/4 v7, 0x4

    .line 114
    invoke-direct {v14, v0, v7}, Lo/x4;-><init>(Lo/L4;I)V

    .line 117
    iput-object v14, v0, Lo/L4;->K:Lo/x4;

    .line 119
    new-instance v15, Lo/x4;

    .line 121
    const/4 v7, 0x5

    .line 122
    invoke-direct {v15, v0, v7}, Lo/x4;-><init>(Lo/L4;I)V

    .line 125
    iput-object v15, v0, Lo/L4;->L:Lo/x4;

    .line 127
    new-instance v12, Lo/x4;

    .line 129
    const/4 v7, 0x6

    .line 130
    invoke-direct {v12, v0, v7}, Lo/x4;-><init>(Lo/L4;I)V

    .line 133
    iput-object v12, v0, Lo/L4;->M:Lo/x4;

    .line 135
    new-instance v11, Lo/x4;

    .line 137
    const/16 v7, 0x8

    .line 139
    invoke-direct {v11, v0, v7}, Lo/x4;-><init>(Lo/L4;I)V

    .line 142
    iput-object v11, v0, Lo/L4;->N:Lo/x4;

    .line 144
    new-instance v10, Lo/x4;

    .line 146
    const/16 v7, 0x9

    .line 148
    invoke-direct {v10, v0, v7}, Lo/x4;-><init>(Lo/L4;I)V

    .line 151
    iput-object v10, v0, Lo/L4;->O:Lo/x4;

    .line 153
    new-instance v9, Lo/x4;

    .line 155
    const/4 v7, 0x7

    .line 156
    invoke-direct {v9, v0, v7}, Lo/x4;-><init>(Lo/L4;I)V

    .line 159
    iput-object v9, v0, Lo/L4;->P:Lo/x4;

    .line 161
    move-object v7, v6

    .line 162
    move-object v8, v14

    .line 163
    move-object/from16 v16, v9

    .line 165
    move-object v9, v13

    .line 166
    move-object/from16 v17, v10

    .line 168
    move-object v10, v15

    .line 169
    move-object/from16 v18, v11

    .line 171
    move-object v11, v12

    .line 172
    move-object/from16 v19, v12

    .line 174
    move-object/from16 v12, v16

    .line 176
    filled-new-array/range {v7 .. v12}, [Lo/x4;

    .line 179
    move-result-object v7

    .line 180
    iput-object v7, v0, Lo/L4;->Q:[Lo/x4;

    .line 182
    new-instance v7, Ljava/util/ArrayList;

    .line 184
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 187
    iput-object v7, v0, Lo/L4;->R:Ljava/util/ArrayList;

    .line 189
    new-array v8, v4, [Z

    .line 191
    iput-object v8, v0, Lo/L4;->S:[Z

    .line 193
    filled-new-array {v3, v3}, [I

    .line 196
    move-result-object v3

    .line 197
    iput-object v3, v0, Lo/L4;->p0:[I

    .line 199
    iput-object v2, v0, Lo/L4;->T:Lo/L4;

    .line 201
    iput v1, v0, Lo/L4;->U:I

    .line 203
    iput v1, v0, Lo/L4;->V:I

    .line 205
    const/4 v3, 0x0

    .line 206
    iput v3, v0, Lo/L4;->W:F

    .line 208
    iput v5, v0, Lo/L4;->X:I

    .line 210
    iput v1, v0, Lo/L4;->Y:I

    .line 212
    iput v1, v0, Lo/L4;->Z:I

    .line 214
    iput v1, v0, Lo/L4;->a0:I

    .line 216
    const/high16 v3, 0x3f000000    # 0.5f

    .line 218
    iput v3, v0, Lo/L4;->d0:F

    .line 220
    iput v3, v0, Lo/L4;->e0:F

    .line 222
    iput v1, v0, Lo/L4;->g0:I

    .line 224
    iput-object v2, v0, Lo/L4;->h0:Ljava/lang/String;

    .line 226
    iput v1, v0, Lo/L4;->i0:I

    .line 228
    iput v1, v0, Lo/L4;->j0:I

    .line 230
    new-array v1, v4, [F

    .line 232
    fill-array-data v1, :array_1

    .line 235
    iput-object v1, v0, Lo/L4;->k0:[F

    .line 237
    filled-new-array {v2, v2}, [Lo/L4;

    .line 240
    move-result-object v1

    .line 241
    iput-object v1, v0, Lo/L4;->l0:[Lo/L4;

    .line 243
    filled-new-array {v2, v2}, [Lo/L4;

    .line 246
    move-result-object v1

    .line 247
    iput-object v1, v0, Lo/L4;->m0:[Lo/L4;

    .line 249
    iput v5, v0, Lo/L4;->n0:I

    .line 251
    iput v5, v0, Lo/L4;->o0:I

    .line 253
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 256
    invoke-virtual {v7, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 259
    invoke-virtual {v7, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 262
    invoke-virtual {v7, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 265
    move-object/from16 v1, v18

    .line 267
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 270
    move-object/from16 v1, v17

    .line 272
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 275
    move-object/from16 v1, v16

    .line 277
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 280
    move-object/from16 v1, v19

    .line 282
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 285
    return-void

    nop

    .line 287
    :array_0
    .array-data 1
        0x1t
        0x1t
    .end array-data

    nop

    .line 293
    :array_1
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
    .end array-data
.end method

.method public static G(IILjava/lang/String;Ljava/lang/StringBuilder;)V
    .locals 0

    .line 1
    if-ne p0, p1, :cond_0

    .line 3
    return-void

    .line 4
    :cond_0
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    const-string p1, " :   "

    .line 9
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 15
    const-string p0, ",\n"

    .line 17
    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    return-void
.end method

.method public static H(Ljava/lang/StringBuilder;Ljava/lang/String;FF)V
    .locals 0

    .line 1
    cmpl-float p3, p2, p3

    .line 3
    if-nez p3, :cond_0

    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    const-string p1, " :   "

    .line 11
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 17
    const-string p1, ",\n"

    .line 19
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    return-void
.end method

.method public static o(Ljava/lang/StringBuilder;Ljava/lang/String;IIIIIFI)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    const-string p1, " :  {\n"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x1

    if-eq p8, p1, :cond_3

    const/4 p1, 0x2

    if-eq p8, p1, :cond_2

    const/4 p1, 0x3

    if-eq p8, p1, :cond_1

    const/4 p1, 0x4

    if-ne p8, p1, :cond_0

    .line 3
    const-string p1, "MATCH_PARENT"

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    throw p0

    :cond_1
    const-string p1, "MATCH_CONSTRAINT"

    goto :goto_0

    :cond_2
    const-string p1, "WRAP_CONTENT"

    goto :goto_0

    :cond_3
    const-string p1, "FIXED"

    .line 4
    :goto_0
    const-string p8, "FIXED"

    invoke-virtual {p8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p8

    if-eqz p8, :cond_4

    goto :goto_1

    .line 5
    :cond_4
    const-string p8, "      behavior"

    invoke-virtual {p0, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    const-string p8, " :   "

    invoke-virtual {p0, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    const-string p1, ",\n"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    :goto_1
    const-string p1, "      size"

    const/4 p8, 0x0

    invoke-static {p2, p8, p1, p0}, Lo/L4;->G(IILjava/lang/String;Ljava/lang/StringBuilder;)V

    .line 10
    const-string p1, "      min"

    invoke-static {p3, p8, p1, p0}, Lo/L4;->G(IILjava/lang/String;Ljava/lang/StringBuilder;)V

    .line 11
    const-string p1, "      max"

    const p2, 0x7fffffff

    invoke-static {p4, p2, p1, p0}, Lo/L4;->G(IILjava/lang/String;Ljava/lang/StringBuilder;)V

    .line 12
    const-string p1, "      matchMin"

    invoke-static {p5, p8, p1, p0}, Lo/L4;->G(IILjava/lang/String;Ljava/lang/StringBuilder;)V

    .line 13
    const-string p1, "      matchDef"

    invoke-static {p6, p8, p1, p0}, Lo/L4;->G(IILjava/lang/String;Ljava/lang/StringBuilder;)V

    .line 14
    const-string p1, "      matchPercent"

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-static {p0, p1, p7, p2}, Lo/L4;->H(Ljava/lang/StringBuilder;Ljava/lang/String;FF)V

    .line 15
    const-string p1, "    },\n"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public static p(Ljava/lang/StringBuilder;Ljava/lang/String;Lo/x4;)V
    .locals 2

    .line 1
    iget-object v0, p2, Lo/x4;->f:Lo/x4;

    .line 3
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    :cond_0
    const-string v0, "    "

    .line 8
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    const-string p1, " : [ \'"

    .line 16
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    iget-object p1, p2, Lo/x4;->f:Lo/x4;

    .line 21
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 24
    const-string p1, "\'"

    .line 26
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    iget p1, p2, Lo/x4;->h:I

    .line 31
    const/high16 v0, -0x80000000

    .line 33
    if-ne p1, v0, :cond_1

    .line 35
    iget p1, p2, Lo/x4;->g:I

    .line 37
    if-eqz p1, :cond_2

    .line 39
    :cond_1
    const-string p1, ","

    .line 41
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    iget v1, p2, Lo/x4;->g:I

    .line 46
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 49
    iget v1, p2, Lo/x4;->h:I

    .line 51
    if-eq v1, v0, :cond_2

    .line 53
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    iget p2, p2, Lo/x4;->h:I

    .line 58
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 61
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    :cond_2
    const-string p1, " ] ,\n"

    .line 66
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    return-void
.end method


# virtual methods
.method public A()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lo/L4;->k:Z

    .line 3
    if-nez v0, :cond_1

    .line 5
    iget-object v0, p0, Lo/L4;->I:Lo/x4;

    .line 7
    iget-boolean v0, v0, Lo/x4;->c:Z

    .line 9
    if-eqz v0, :cond_0

    .line 11
    iget-object v0, p0, Lo/L4;->K:Lo/x4;

    .line 13
    iget-boolean v0, v0, Lo/x4;->c:Z

    .line 15
    if-eqz v0, :cond_0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 21
    :goto_1
    return v0
.end method

.method public B()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lo/L4;->l:Z

    .line 3
    if-nez v0, :cond_1

    .line 5
    iget-object v0, p0, Lo/L4;->J:Lo/x4;

    .line 7
    iget-boolean v0, v0, Lo/x4;->c:Z

    .line 9
    if-eqz v0, :cond_0

    .line 11
    iget-object v0, p0, Lo/L4;->L:Lo/x4;

    .line 13
    iget-boolean v0, v0, Lo/x4;->c:Z

    .line 15
    if-eqz v0, :cond_0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 21
    :goto_1
    return v0
.end method

.method public C()V
    .locals 5

    .line 1
    iget-object v0, p0, Lo/L4;->I:Lo/x4;

    .line 3
    invoke-virtual {v0}, Lo/x4;->j()V

    .line 6
    iget-object v0, p0, Lo/L4;->J:Lo/x4;

    .line 8
    invoke-virtual {v0}, Lo/x4;->j()V

    .line 11
    iget-object v0, p0, Lo/L4;->K:Lo/x4;

    .line 13
    invoke-virtual {v0}, Lo/x4;->j()V

    .line 16
    iget-object v0, p0, Lo/L4;->L:Lo/x4;

    .line 18
    invoke-virtual {v0}, Lo/x4;->j()V

    .line 21
    iget-object v0, p0, Lo/L4;->M:Lo/x4;

    .line 23
    invoke-virtual {v0}, Lo/x4;->j()V

    .line 26
    iget-object v0, p0, Lo/L4;->N:Lo/x4;

    .line 28
    invoke-virtual {v0}, Lo/x4;->j()V

    .line 31
    iget-object v0, p0, Lo/L4;->O:Lo/x4;

    .line 33
    invoke-virtual {v0}, Lo/x4;->j()V

    .line 36
    iget-object v0, p0, Lo/L4;->P:Lo/x4;

    .line 38
    invoke-virtual {v0}, Lo/x4;->j()V

    .line 41
    const/4 v0, 0x0

    .line 42
    iput-object v0, p0, Lo/L4;->T:Lo/L4;

    .line 44
    const/high16 v1, 0x7fc00000    # Float.NaN

    .line 46
    iput v1, p0, Lo/L4;->D:F

    .line 48
    const/4 v1, 0x0

    .line 49
    iput v1, p0, Lo/L4;->U:I

    .line 51
    iput v1, p0, Lo/L4;->V:I

    .line 53
    const/4 v2, 0x0

    .line 54
    iput v2, p0, Lo/L4;->W:F

    .line 56
    const/4 v2, -0x1

    .line 57
    iput v2, p0, Lo/L4;->X:I

    .line 59
    iput v1, p0, Lo/L4;->Y:I

    .line 61
    iput v1, p0, Lo/L4;->Z:I

    .line 63
    iput v1, p0, Lo/L4;->a0:I

    .line 65
    iput v1, p0, Lo/L4;->b0:I

    .line 67
    iput v1, p0, Lo/L4;->c0:I

    .line 69
    const/high16 v3, 0x3f000000    # 0.5f

    .line 71
    iput v3, p0, Lo/L4;->d0:F

    .line 73
    iput v3, p0, Lo/L4;->e0:F

    .line 75
    iget-object v3, p0, Lo/L4;->p0:[I

    .line 77
    const/4 v4, 0x1

    .line 78
    aput v4, v3, v1

    .line 80
    aput v4, v3, v4

    .line 82
    iput-object v0, p0, Lo/L4;->f0:Landroid/view/View;

    .line 84
    iput v1, p0, Lo/L4;->g0:I

    .line 86
    iput v1, p0, Lo/L4;->i0:I

    .line 88
    iput v1, p0, Lo/L4;->j0:I

    .line 90
    iget-object v0, p0, Lo/L4;->k0:[F

    .line 92
    const/high16 v3, -0x40800000    # -1.0f

    .line 94
    aput v3, v0, v1

    .line 96
    aput v3, v0, v4

    .line 98
    iput v2, p0, Lo/L4;->o:I

    .line 100
    iput v2, p0, Lo/L4;->p:I

    .line 102
    iget-object v0, p0, Lo/L4;->C:[I

    .line 104
    const v3, 0x7fffffff

    .line 107
    aput v3, v0, v1

    .line 109
    aput v3, v0, v4

    .line 111
    iput v1, p0, Lo/L4;->r:I

    .line 113
    iput v1, p0, Lo/L4;->s:I

    .line 115
    const/high16 v0, 0x3f800000    # 1.0f

    .line 117
    iput v0, p0, Lo/L4;->w:F

    .line 119
    iput v0, p0, Lo/L4;->z:F

    .line 121
    iput v3, p0, Lo/L4;->v:I

    .line 123
    iput v3, p0, Lo/L4;->y:I

    .line 125
    iput v1, p0, Lo/L4;->u:I

    .line 127
    iput v1, p0, Lo/L4;->x:I

    .line 129
    iput v2, p0, Lo/L4;->A:I

    .line 131
    iput v0, p0, Lo/L4;->B:F

    .line 133
    iget-object v0, p0, Lo/L4;->f:[Z

    .line 135
    aput-boolean v4, v0, v1

    .line 137
    aput-boolean v4, v0, v4

    .line 139
    iput-boolean v1, p0, Lo/L4;->F:Z

    .line 141
    iget-object v0, p0, Lo/L4;->S:[Z

    .line 143
    aput-boolean v1, v0, v1

    .line 145
    aput-boolean v1, v0, v4

    .line 147
    iput-boolean v4, p0, Lo/L4;->g:Z

    .line 149
    iget-object v0, p0, Lo/L4;->t:[I

    .line 151
    aput v1, v0, v1

    .line 153
    aput v1, v0, v4

    .line 155
    iput v2, p0, Lo/L4;->h:I

    .line 157
    iput v2, p0, Lo/L4;->i:I

    .line 159
    return-void
.end method

.method public final D()V
    .locals 4

    .line 1
    iget-object v0, p0, Lo/L4;->T:Lo/L4;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    instance-of v1, v0, Lo/M4;

    .line 7
    if-eqz v1, :cond_0

    .line 9
    check-cast v0, Lo/M4;

    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    :cond_0
    iget-object v0, p0, Lo/L4;->R:Ljava/util/ArrayList;

    .line 16
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 19
    move-result v1

    .line 20
    const/4 v2, 0x0

    .line 21
    :goto_0
    if-ge v2, v1, :cond_1

    .line 23
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 26
    move-result-object v3

    .line 27
    check-cast v3, Lo/x4;

    .line 29
    invoke-virtual {v3}, Lo/x4;->j()V

    .line 32
    add-int/lit8 v2, v2, 0x1

    .line 34
    goto :goto_0

    .line 35
    :cond_1
    return-void
.end method

.method public final E()V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lo/L4;->k:Z

    .line 4
    iput-boolean v0, p0, Lo/L4;->l:Z

    .line 6
    iput-boolean v0, p0, Lo/L4;->m:Z

    .line 8
    iput-boolean v0, p0, Lo/L4;->n:Z

    .line 10
    iget-object v1, p0, Lo/L4;->R:Ljava/util/ArrayList;

    .line 12
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 15
    move-result v2

    .line 16
    move v3, v0

    .line 17
    :goto_0
    if-ge v3, v2, :cond_0

    .line 19
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 22
    move-result-object v4

    .line 23
    check-cast v4, Lo/x4;

    .line 25
    iput-boolean v0, v4, Lo/x4;->c:Z

    .line 27
    iput v0, v4, Lo/x4;->b:I

    .line 29
    add-int/lit8 v3, v3, 0x1

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    return-void
.end method

.method public F(Lo/s2;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lo/L4;->I:Lo/x4;

    .line 3
    invoke-virtual {p1}, Lo/x4;->k()V

    .line 6
    iget-object p1, p0, Lo/L4;->J:Lo/x4;

    .line 8
    invoke-virtual {p1}, Lo/x4;->k()V

    .line 11
    iget-object p1, p0, Lo/L4;->K:Lo/x4;

    .line 13
    invoke-virtual {p1}, Lo/x4;->k()V

    .line 16
    iget-object p1, p0, Lo/L4;->L:Lo/x4;

    .line 18
    invoke-virtual {p1}, Lo/x4;->k()V

    .line 21
    iget-object p1, p0, Lo/L4;->M:Lo/x4;

    .line 23
    invoke-virtual {p1}, Lo/x4;->k()V

    .line 26
    iget-object p1, p0, Lo/L4;->P:Lo/x4;

    .line 28
    invoke-virtual {p1}, Lo/x4;->k()V

    .line 31
    iget-object p1, p0, Lo/L4;->N:Lo/x4;

    .line 33
    invoke-virtual {p1}, Lo/x4;->k()V

    .line 36
    iget-object p1, p0, Lo/L4;->O:Lo/x4;

    .line 38
    invoke-virtual {p1}, Lo/x4;->k()V

    .line 41
    return-void
.end method

.method public final I(I)V
    .locals 0

    .line 1
    iput p1, p0, Lo/L4;->a0:I

    .line 3
    if-lez p1, :cond_0

    .line 5
    const/4 p1, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 p1, 0x0

    .line 8
    :goto_0
    iput-boolean p1, p0, Lo/L4;->E:Z

    .line 10
    return-void
.end method

.method public final J(II)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lo/L4;->k:Z

    .line 3
    if-eqz v0, :cond_0

    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lo/L4;->I:Lo/x4;

    .line 8
    invoke-virtual {v0, p1}, Lo/x4;->l(I)V

    .line 11
    iget-object v0, p0, Lo/L4;->K:Lo/x4;

    .line 13
    invoke-virtual {v0, p2}, Lo/x4;->l(I)V

    .line 16
    iput p1, p0, Lo/L4;->Y:I

    .line 18
    sub-int/2addr p2, p1

    .line 19
    iput p2, p0, Lo/L4;->U:I

    .line 21
    const/4 p1, 0x1

    .line 22
    iput-boolean p1, p0, Lo/L4;->k:Z

    .line 24
    return-void
.end method

.method public final K(II)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lo/L4;->l:Z

    .line 3
    if-eqz v0, :cond_0

    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lo/L4;->J:Lo/x4;

    .line 8
    invoke-virtual {v0, p1}, Lo/x4;->l(I)V

    .line 11
    iget-object v0, p0, Lo/L4;->L:Lo/x4;

    .line 13
    invoke-virtual {v0, p2}, Lo/x4;->l(I)V

    .line 16
    iput p1, p0, Lo/L4;->Z:I

    .line 18
    sub-int/2addr p2, p1

    .line 19
    iput p2, p0, Lo/L4;->V:I

    .line 21
    iget-boolean p2, p0, Lo/L4;->E:Z

    .line 23
    if-eqz p2, :cond_1

    .line 25
    iget p2, p0, Lo/L4;->a0:I

    .line 27
    add-int/2addr p1, p2

    .line 28
    iget-object p2, p0, Lo/L4;->M:Lo/x4;

    .line 30
    invoke-virtual {p2, p1}, Lo/x4;->l(I)V

    .line 33
    :cond_1
    const/4 p1, 0x1

    .line 34
    iput-boolean p1, p0, Lo/L4;->l:Z

    .line 36
    return-void
.end method

.method public final L(I)V
    .locals 1

    .line 1
    iput p1, p0, Lo/L4;->V:I

    .line 3
    iget v0, p0, Lo/L4;->c0:I

    .line 5
    if-ge p1, v0, :cond_0

    .line 7
    iput v0, p0, Lo/L4;->V:I

    .line 9
    :cond_0
    return-void
.end method

.method public final M(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lo/L4;->p0:[I

    .line 3
    const/4 v1, 0x0

    .line 4
    aput p1, v0, v1

    .line 6
    return-void
.end method

.method public final N(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lo/L4;->p0:[I

    .line 3
    const/4 v1, 0x1

    .line 4
    aput p1, v0, v1

    .line 6
    return-void
.end method

.method public final O(I)V
    .locals 1

    .line 1
    iput p1, p0, Lo/L4;->U:I

    .line 3
    iget v0, p0, Lo/L4;->b0:I

    .line 5
    if-ge p1, v0, :cond_0

    .line 7
    iput v0, p0, Lo/L4;->U:I

    .line 9
    :cond_0
    return-void
.end method

.method public P(ZZ)V
    .locals 7

    .line 1
    iget-object v0, p0, Lo/L4;->d:Lo/c9;

    .line 3
    iget-boolean v1, v0, Lo/mi;->g:Z

    .line 5
    and-int/2addr p1, v1

    .line 6
    iget-object v1, p0, Lo/L4;->e:Lo/oh;

    .line 8
    iget-boolean v2, v1, Lo/mi;->g:Z

    .line 10
    and-int/2addr p2, v2

    .line 11
    iget-object v2, v0, Lo/mi;->h:Lo/P5;

    .line 13
    iget v2, v2, Lo/P5;->g:I

    .line 15
    iget-object v3, v1, Lo/mi;->h:Lo/P5;

    .line 17
    iget v3, v3, Lo/P5;->g:I

    .line 19
    iget-object v0, v0, Lo/mi;->i:Lo/P5;

    .line 21
    iget v0, v0, Lo/P5;->g:I

    .line 23
    iget-object v1, v1, Lo/mi;->i:Lo/P5;

    .line 25
    iget v1, v1, Lo/P5;->g:I

    .line 27
    sub-int v4, v0, v2

    .line 29
    sub-int v5, v1, v3

    .line 31
    const/4 v6, 0x0

    .line 32
    if-ltz v4, :cond_0

    .line 34
    if-ltz v5, :cond_0

    .line 36
    const/high16 v4, -0x80000000

    .line 38
    if-eq v2, v4, :cond_0

    .line 40
    const v5, 0x7fffffff

    .line 43
    if-eq v2, v5, :cond_0

    .line 45
    if-eq v3, v4, :cond_0

    .line 47
    if-eq v3, v5, :cond_0

    .line 49
    if-eq v0, v4, :cond_0

    .line 51
    if-eq v0, v5, :cond_0

    .line 53
    if-eq v1, v4, :cond_0

    .line 55
    if-ne v1, v5, :cond_1

    .line 57
    :cond_0
    move v0, v6

    .line 58
    move v1, v0

    .line 59
    move v2, v1

    .line 60
    move v3, v2

    .line 61
    :cond_1
    sub-int/2addr v0, v2

    .line 62
    sub-int/2addr v1, v3

    .line 63
    if-eqz p1, :cond_2

    .line 65
    iput v2, p0, Lo/L4;->Y:I

    .line 67
    :cond_2
    if-eqz p2, :cond_3

    .line 69
    iput v3, p0, Lo/L4;->Z:I

    .line 71
    :cond_3
    iget v2, p0, Lo/L4;->g0:I

    .line 73
    const/16 v3, 0x8

    .line 75
    if-ne v2, v3, :cond_4

    .line 77
    iput v6, p0, Lo/L4;->U:I

    .line 79
    iput v6, p0, Lo/L4;->V:I

    .line 81
    return-void

    .line 82
    :cond_4
    iget-object v2, p0, Lo/L4;->p0:[I

    .line 84
    const/4 v3, 0x1

    .line 85
    if-eqz p1, :cond_6

    .line 87
    aget p1, v2, v6

    .line 89
    if-ne p1, v3, :cond_5

    .line 91
    iget p1, p0, Lo/L4;->U:I

    .line 93
    if-ge v0, p1, :cond_5

    .line 95
    move v0, p1

    .line 96
    :cond_5
    iput v0, p0, Lo/L4;->U:I

    .line 98
    iget p1, p0, Lo/L4;->b0:I

    .line 100
    if-ge v0, p1, :cond_6

    .line 102
    iput p1, p0, Lo/L4;->U:I

    .line 104
    :cond_6
    if-eqz p2, :cond_8

    .line 106
    aget p1, v2, v3

    .line 108
    if-ne p1, v3, :cond_7

    .line 110
    iget p1, p0, Lo/L4;->V:I

    .line 112
    if-ge v1, p1, :cond_7

    .line 114
    move v1, p1

    .line 115
    :cond_7
    iput v1, p0, Lo/L4;->V:I

    .line 117
    iget p1, p0, Lo/L4;->c0:I

    .line 119
    if-ge v1, p1, :cond_8

    .line 121
    iput p1, p0, Lo/L4;->V:I

    .line 123
    :cond_8
    return-void
.end method

.method public Q(Lo/ba;Z)V
    .locals 6

    .line 1
    iget-object v0, p0, Lo/L4;->I:Lo/x4;

    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    invoke-static {v0}, Lo/ba;->n(Ljava/lang/Object;)I

    .line 9
    move-result p1

    .line 10
    iget-object v0, p0, Lo/L4;->J:Lo/x4;

    .line 12
    invoke-static {v0}, Lo/ba;->n(Ljava/lang/Object;)I

    .line 15
    move-result v0

    .line 16
    iget-object v1, p0, Lo/L4;->K:Lo/x4;

    .line 18
    invoke-static {v1}, Lo/ba;->n(Ljava/lang/Object;)I

    .line 21
    move-result v1

    .line 22
    iget-object v2, p0, Lo/L4;->L:Lo/x4;

    .line 24
    invoke-static {v2}, Lo/ba;->n(Ljava/lang/Object;)I

    .line 27
    move-result v2

    .line 28
    if-eqz p2, :cond_0

    .line 30
    iget-object v3, p0, Lo/L4;->d:Lo/c9;

    .line 32
    if-eqz v3, :cond_0

    .line 34
    iget-object v4, v3, Lo/mi;->h:Lo/P5;

    .line 36
    iget-boolean v5, v4, Lo/P5;->j:Z

    .line 38
    if-eqz v5, :cond_0

    .line 40
    iget-object v3, v3, Lo/mi;->i:Lo/P5;

    .line 42
    iget-boolean v5, v3, Lo/P5;->j:Z

    .line 44
    if-eqz v5, :cond_0

    .line 46
    iget p1, v4, Lo/P5;->g:I

    .line 48
    iget v1, v3, Lo/P5;->g:I

    .line 50
    :cond_0
    if-eqz p2, :cond_1

    .line 52
    iget-object p2, p0, Lo/L4;->e:Lo/oh;

    .line 54
    if-eqz p2, :cond_1

    .line 56
    iget-object v3, p2, Lo/mi;->h:Lo/P5;

    .line 58
    iget-boolean v4, v3, Lo/P5;->j:Z

    .line 60
    if-eqz v4, :cond_1

    .line 62
    iget-object p2, p2, Lo/mi;->i:Lo/P5;

    .line 64
    iget-boolean v4, p2, Lo/P5;->j:Z

    .line 66
    if-eqz v4, :cond_1

    .line 68
    iget v0, v3, Lo/P5;->g:I

    .line 70
    iget v2, p2, Lo/P5;->g:I

    .line 72
    :cond_1
    sub-int p2, v1, p1

    .line 74
    sub-int v3, v2, v0

    .line 76
    const/4 v4, 0x0

    .line 77
    if-ltz p2, :cond_2

    .line 79
    if-ltz v3, :cond_2

    .line 81
    const/high16 p2, -0x80000000

    .line 83
    if-eq p1, p2, :cond_2

    .line 85
    const v3, 0x7fffffff

    .line 88
    if-eq p1, v3, :cond_2

    .line 90
    if-eq v0, p2, :cond_2

    .line 92
    if-eq v0, v3, :cond_2

    .line 94
    if-eq v1, p2, :cond_2

    .line 96
    if-eq v1, v3, :cond_2

    .line 98
    if-eq v2, p2, :cond_2

    .line 100
    if-ne v2, v3, :cond_3

    .line 102
    :cond_2
    move p1, v4

    .line 103
    move v0, p1

    .line 104
    move v1, v0

    .line 105
    move v2, v1

    .line 106
    :cond_3
    sub-int/2addr v1, p1

    .line 107
    sub-int/2addr v2, v0

    .line 108
    iput p1, p0, Lo/L4;->Y:I

    .line 110
    iput v0, p0, Lo/L4;->Z:I

    .line 112
    iget p1, p0, Lo/L4;->g0:I

    .line 114
    const/16 p2, 0x8

    .line 116
    if-ne p1, p2, :cond_4

    .line 118
    iput v4, p0, Lo/L4;->U:I

    .line 120
    iput v4, p0, Lo/L4;->V:I

    .line 122
    goto :goto_0

    .line 123
    :cond_4
    iget-object p1, p0, Lo/L4;->p0:[I

    .line 125
    aget p2, p1, v4

    .line 127
    const/4 v0, 0x1

    .line 128
    if-ne p2, v0, :cond_5

    .line 130
    iget v3, p0, Lo/L4;->U:I

    .line 132
    if-ge v1, v3, :cond_5

    .line 134
    move v1, v3

    .line 135
    :cond_5
    aget v3, p1, v0

    .line 137
    if-ne v3, v0, :cond_6

    .line 139
    iget v3, p0, Lo/L4;->V:I

    .line 141
    if-ge v2, v3, :cond_6

    .line 143
    move v2, v3

    .line 144
    :cond_6
    iput v1, p0, Lo/L4;->U:I

    .line 146
    iput v2, p0, Lo/L4;->V:I

    .line 148
    iget v3, p0, Lo/L4;->c0:I

    .line 150
    if-ge v2, v3, :cond_7

    .line 152
    iput v3, p0, Lo/L4;->V:I

    .line 154
    :cond_7
    iget v3, p0, Lo/L4;->b0:I

    .line 156
    if-ge v1, v3, :cond_8

    .line 158
    iput v3, p0, Lo/L4;->U:I

    .line 160
    :cond_8
    iget v3, p0, Lo/L4;->v:I

    .line 162
    const/4 v4, 0x3

    .line 163
    if-lez v3, :cond_9

    .line 165
    if-ne p2, v4, :cond_9

    .line 167
    iget p2, p0, Lo/L4;->U:I

    .line 169
    invoke-static {p2, v3}, Ljava/lang/Math;->min(II)I

    .line 172
    move-result p2

    .line 173
    iput p2, p0, Lo/L4;->U:I

    .line 175
    :cond_9
    iget p2, p0, Lo/L4;->y:I

    .line 177
    if-lez p2, :cond_a

    .line 179
    aget p1, p1, v0

    .line 181
    if-ne p1, v4, :cond_a

    .line 183
    iget p1, p0, Lo/L4;->V:I

    .line 185
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    .line 188
    move-result p1

    .line 189
    iput p1, p0, Lo/L4;->V:I

    .line 191
    :cond_a
    iget p1, p0, Lo/L4;->U:I

    .line 193
    if-eq v1, p1, :cond_b

    .line 195
    iput p1, p0, Lo/L4;->h:I

    .line 197
    :cond_b
    iget p1, p0, Lo/L4;->V:I

    .line 199
    if-eq v2, p1, :cond_c

    .line 201
    iput p1, p0, Lo/L4;->i:I

    .line 203
    :cond_c
    :goto_0
    return-void
.end method

.method public final a(Lo/M4;Lo/ba;Ljava/util/HashSet;IZ)V
    .locals 7

    .line 1
    if-eqz p5, :cond_1

    .line 3
    invoke-virtual {p3, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 6
    move-result p5

    .line 7
    if-nez p5, :cond_0

    .line 9
    return-void

    .line 10
    :cond_0
    invoke-static {p1, p2, p0}, Lo/x9;->k(Lo/M4;Lo/ba;Lo/L4;)V

    .line 13
    invoke-virtual {p3, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 16
    const/16 p5, 0x40

    .line 18
    invoke-virtual {p1, p5}, Lo/M4;->W(I)Z

    .line 21
    move-result p5

    .line 22
    invoke-virtual {p0, p2, p5}, Lo/L4;->b(Lo/ba;Z)V

    .line 25
    :cond_1
    if-nez p4, :cond_3

    .line 27
    iget-object p5, p0, Lo/L4;->I:Lo/x4;

    .line 29
    iget-object p5, p5, Lo/x4;->a:Ljava/util/HashSet;

    .line 31
    if-eqz p5, :cond_2

    .line 33
    invoke-virtual {p5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 36
    move-result-object p5

    .line 37
    :goto_0
    invoke-interface {p5}, Ljava/util/Iterator;->hasNext()Z

    .line 40
    move-result v0

    .line 41
    if-eqz v0, :cond_2

    .line 43
    invoke-interface {p5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 46
    move-result-object v0

    .line 47
    check-cast v0, Lo/x4;

    .line 49
    iget-object v1, v0, Lo/x4;->d:Lo/L4;

    .line 51
    const/4 v6, 0x1

    .line 52
    move-object v2, p1

    .line 53
    move-object v3, p2

    .line 54
    move-object v4, p3

    .line 55
    move v5, p4

    .line 56
    invoke-virtual/range {v1 .. v6}, Lo/L4;->a(Lo/M4;Lo/ba;Ljava/util/HashSet;IZ)V

    .line 59
    goto :goto_0

    .line 60
    :cond_2
    iget-object p5, p0, Lo/L4;->K:Lo/x4;

    .line 62
    iget-object p5, p5, Lo/x4;->a:Ljava/util/HashSet;

    .line 64
    if-eqz p5, :cond_6

    .line 66
    invoke-virtual {p5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 69
    move-result-object p5

    .line 70
    :goto_1
    invoke-interface {p5}, Ljava/util/Iterator;->hasNext()Z

    .line 73
    move-result v0

    .line 74
    if-eqz v0, :cond_6

    .line 76
    invoke-interface {p5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 79
    move-result-object v0

    .line 80
    check-cast v0, Lo/x4;

    .line 82
    iget-object v1, v0, Lo/x4;->d:Lo/L4;

    .line 84
    const/4 v6, 0x1

    .line 85
    move-object v2, p1

    .line 86
    move-object v3, p2

    .line 87
    move-object v4, p3

    .line 88
    move v5, p4

    .line 89
    invoke-virtual/range {v1 .. v6}, Lo/L4;->a(Lo/M4;Lo/ba;Ljava/util/HashSet;IZ)V

    .line 92
    goto :goto_1

    .line 93
    :cond_3
    iget-object p5, p0, Lo/L4;->J:Lo/x4;

    .line 95
    iget-object p5, p5, Lo/x4;->a:Ljava/util/HashSet;

    .line 97
    if-eqz p5, :cond_4

    .line 99
    invoke-virtual {p5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 102
    move-result-object p5

    .line 103
    :goto_2
    invoke-interface {p5}, Ljava/util/Iterator;->hasNext()Z

    .line 106
    move-result v0

    .line 107
    if-eqz v0, :cond_4

    .line 109
    invoke-interface {p5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 112
    move-result-object v0

    .line 113
    check-cast v0, Lo/x4;

    .line 115
    iget-object v1, v0, Lo/x4;->d:Lo/L4;

    .line 117
    const/4 v6, 0x1

    .line 118
    move-object v2, p1

    .line 119
    move-object v3, p2

    .line 120
    move-object v4, p3

    .line 121
    move v5, p4

    .line 122
    invoke-virtual/range {v1 .. v6}, Lo/L4;->a(Lo/M4;Lo/ba;Ljava/util/HashSet;IZ)V

    .line 125
    goto :goto_2

    .line 126
    :cond_4
    iget-object p5, p0, Lo/L4;->L:Lo/x4;

    .line 128
    iget-object p5, p5, Lo/x4;->a:Ljava/util/HashSet;

    .line 130
    if-eqz p5, :cond_5

    .line 132
    invoke-virtual {p5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 135
    move-result-object p5

    .line 136
    :goto_3
    invoke-interface {p5}, Ljava/util/Iterator;->hasNext()Z

    .line 139
    move-result v0

    .line 140
    if-eqz v0, :cond_5

    .line 142
    invoke-interface {p5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 145
    move-result-object v0

    .line 146
    check-cast v0, Lo/x4;

    .line 148
    iget-object v1, v0, Lo/x4;->d:Lo/L4;

    .line 150
    const/4 v6, 0x1

    .line 151
    move-object v2, p1

    .line 152
    move-object v3, p2

    .line 153
    move-object v4, p3

    .line 154
    move v5, p4

    .line 155
    invoke-virtual/range {v1 .. v6}, Lo/L4;->a(Lo/M4;Lo/ba;Ljava/util/HashSet;IZ)V

    .line 158
    goto :goto_3

    .line 159
    :cond_5
    iget-object p5, p0, Lo/L4;->M:Lo/x4;

    .line 161
    iget-object p5, p5, Lo/x4;->a:Ljava/util/HashSet;

    .line 163
    if-eqz p5, :cond_6

    .line 165
    invoke-virtual {p5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 168
    move-result-object p5

    .line 169
    :goto_4
    invoke-interface {p5}, Ljava/util/Iterator;->hasNext()Z

    .line 172
    move-result v0

    .line 173
    if-eqz v0, :cond_6

    .line 175
    invoke-interface {p5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 178
    move-result-object v0

    .line 179
    check-cast v0, Lo/x4;

    .line 181
    iget-object v1, v0, Lo/x4;->d:Lo/L4;

    .line 183
    const/4 v6, 0x1

    .line 184
    move-object v2, p1

    .line 185
    move-object v3, p2

    .line 186
    move-object v4, p3

    .line 187
    move v5, p4

    .line 188
    invoke-virtual/range {v1 .. v6}, Lo/L4;->a(Lo/M4;Lo/ba;Ljava/util/HashSet;IZ)V

    .line 191
    goto :goto_4

    .line 192
    :cond_6
    return-void
.end method

.method public b(Lo/ba;Z)V
    .locals 58

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    .line 1
    iget-object v0, v15, Lo/L4;->I:Lo/x4;

    invoke-virtual {v14, v0}, Lo/ba;->k(Ljava/lang/Object;)Lo/We;

    move-result-object v13

    .line 2
    iget-object v1, v15, Lo/L4;->K:Lo/x4;

    invoke-virtual {v14, v1}, Lo/ba;->k(Ljava/lang/Object;)Lo/We;

    move-result-object v12

    .line 3
    iget-object v2, v15, Lo/L4;->J:Lo/x4;

    invoke-virtual {v14, v2}, Lo/ba;->k(Ljava/lang/Object;)Lo/We;

    move-result-object v9

    .line 4
    iget-object v8, v15, Lo/L4;->L:Lo/x4;

    invoke-virtual {v14, v8}, Lo/ba;->k(Ljava/lang/Object;)Lo/We;

    move-result-object v7

    .line 5
    iget-object v6, v15, Lo/L4;->M:Lo/x4;

    invoke-virtual {v14, v6}, Lo/ba;->k(Ljava/lang/Object;)Lo/We;

    move-result-object v5

    .line 6
    iget-object v3, v15, Lo/L4;->T:Lo/L4;

    const/4 v4, 0x2

    const/4 v11, 0x0

    if-eqz v3, :cond_2

    .line 7
    iget-object v3, v3, Lo/L4;->p0:[I

    aget v10, v3, v11

    if-ne v10, v4, :cond_0

    const/4 v10, 0x1

    const/16 v18, 0x1

    goto :goto_0

    :cond_0
    move/from16 v18, v11

    const/4 v10, 0x1

    .line 8
    :goto_0
    aget v3, v3, v10

    if-ne v3, v4, :cond_1

    move v3, v10

    goto :goto_1

    :cond_1
    move v3, v11

    .line 9
    :goto_1
    iget v11, v15, Lo/L4;->q:I

    if-eq v11, v10, :cond_4

    if-eq v11, v4, :cond_3

    const/4 v10, 0x3

    if-eq v11, v10, :cond_2

    move/from16 v28, v3

    move/from16 v29, v18

    goto :goto_3

    :cond_2
    const/16 v28, 0x0

    :goto_2
    const/16 v29, 0x0

    goto :goto_3

    :cond_3
    move/from16 v28, v3

    goto :goto_2

    :cond_4
    move/from16 v29, v18

    const/16 v28, 0x0

    .line 10
    :goto_3
    iget v3, v15, Lo/L4;->g0:I

    iget-object v10, v15, Lo/L4;->S:[Z

    const/16 v11, 0x8

    if-ne v3, v11, :cond_8

    .line 11
    iget-object v3, v15, Lo/L4;->R:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v11, 0x0

    :goto_4
    if-ge v11, v4, :cond_7

    .line 12
    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v22, v3

    move-object/from16 v3, v21

    check-cast v3, Lo/x4;

    .line 13
    iget-object v3, v3, Lo/x4;->a:Ljava/util/HashSet;

    if-nez v3, :cond_5

    goto :goto_5

    .line 14
    :cond_5
    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v3

    if-lez v3, :cond_6

    goto :goto_6

    :cond_6
    :goto_5
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v3, v22

    goto :goto_4

    :cond_7
    const/4 v3, 0x0

    .line 15
    aget-boolean v4, v10, v3

    if-nez v4, :cond_8

    const/4 v3, 0x1

    aget-boolean v4, v10, v3

    if-nez v4, :cond_8

    return-void

    .line 16
    :cond_8
    :goto_6
    iget-boolean v3, v15, Lo/L4;->k:Z

    if-nez v3, :cond_9

    iget-boolean v4, v15, Lo/L4;->l:Z

    if-eqz v4, :cond_14

    :cond_9
    if-eqz v3, :cond_d

    .line 17
    iget v3, v15, Lo/L4;->Y:I

    invoke-virtual {v14, v13, v3}, Lo/ba;->d(Lo/We;I)V

    .line 18
    iget v3, v15, Lo/L4;->Y:I

    iget v4, v15, Lo/L4;->U:I

    add-int/2addr v3, v4

    invoke-virtual {v14, v12, v3}, Lo/ba;->d(Lo/We;I)V

    if-eqz v29, :cond_d

    .line 19
    iget-object v3, v15, Lo/L4;->T:Lo/L4;

    if-eqz v3, :cond_d

    .line 20
    check-cast v3, Lo/M4;

    .line 21
    iget-object v4, v3, Lo/M4;->H0:Ljava/lang/ref/WeakReference;

    if-eqz v4, :cond_a

    invoke-virtual {v4}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_a

    .line 22
    invoke-virtual {v0}, Lo/x4;->d()I

    move-result v4

    iget-object v11, v3, Lo/M4;->H0:Ljava/lang/ref/WeakReference;

    invoke-virtual {v11}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lo/x4;

    invoke-virtual {v11}, Lo/x4;->d()I

    move-result v11

    if-le v4, v11, :cond_b

    .line 23
    :cond_a
    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v4, v3, Lo/M4;->H0:Ljava/lang/ref/WeakReference;

    .line 24
    :cond_b
    iget-object v4, v3, Lo/M4;->J0:Ljava/lang/ref/WeakReference;

    if-eqz v4, :cond_c

    invoke-virtual {v4}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_c

    .line 25
    invoke-virtual {v1}, Lo/x4;->d()I

    move-result v4

    iget-object v11, v3, Lo/M4;->J0:Ljava/lang/ref/WeakReference;

    invoke-virtual {v11}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lo/x4;

    invoke-virtual {v11}, Lo/x4;->d()I

    move-result v11

    if-le v4, v11, :cond_d

    .line 26
    :cond_c
    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v4, v3, Lo/M4;->J0:Ljava/lang/ref/WeakReference;

    .line 27
    :cond_d
    iget-boolean v3, v15, Lo/L4;->l:Z

    if-eqz v3, :cond_13

    .line 28
    iget v3, v15, Lo/L4;->Z:I

    invoke-virtual {v14, v9, v3}, Lo/ba;->d(Lo/We;I)V

    .line 29
    iget v3, v15, Lo/L4;->Z:I

    iget v4, v15, Lo/L4;->V:I

    add-int/2addr v3, v4

    invoke-virtual {v14, v7, v3}, Lo/ba;->d(Lo/We;I)V

    .line 30
    iget-object v3, v6, Lo/x4;->a:Ljava/util/HashSet;

    if-nez v3, :cond_e

    goto :goto_7

    .line 31
    :cond_e
    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v3

    if-lez v3, :cond_f

    .line 32
    iget v3, v15, Lo/L4;->Z:I

    iget v4, v15, Lo/L4;->a0:I

    add-int/2addr v3, v4

    invoke-virtual {v14, v5, v3}, Lo/ba;->d(Lo/We;I)V

    :cond_f
    :goto_7
    if-eqz v28, :cond_13

    .line 33
    iget-object v3, v15, Lo/L4;->T:Lo/L4;

    if-eqz v3, :cond_13

    .line 34
    check-cast v3, Lo/M4;

    .line 35
    iget-object v4, v3, Lo/M4;->G0:Ljava/lang/ref/WeakReference;

    if-eqz v4, :cond_10

    invoke-virtual {v4}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_10

    .line 36
    invoke-virtual {v2}, Lo/x4;->d()I

    move-result v4

    iget-object v11, v3, Lo/M4;->G0:Ljava/lang/ref/WeakReference;

    invoke-virtual {v11}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lo/x4;

    invoke-virtual {v11}, Lo/x4;->d()I

    move-result v11

    if-le v4, v11, :cond_11

    .line 37
    :cond_10
    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v4, v3, Lo/M4;->G0:Ljava/lang/ref/WeakReference;

    .line 38
    :cond_11
    iget-object v4, v3, Lo/M4;->I0:Ljava/lang/ref/WeakReference;

    if-eqz v4, :cond_12

    invoke-virtual {v4}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_12

    .line 39
    invoke-virtual {v8}, Lo/x4;->d()I

    move-result v4

    iget-object v11, v3, Lo/M4;->I0:Ljava/lang/ref/WeakReference;

    invoke-virtual {v11}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lo/x4;

    invoke-virtual {v11}, Lo/x4;->d()I

    move-result v11

    if-le v4, v11, :cond_13

    .line 40
    :cond_12
    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, v8}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v4, v3, Lo/M4;->I0:Ljava/lang/ref/WeakReference;

    .line 41
    :cond_13
    iget-boolean v3, v15, Lo/L4;->k:Z

    if-eqz v3, :cond_14

    iget-boolean v3, v15, Lo/L4;->l:Z

    if-eqz v3, :cond_14

    const/4 v3, 0x0

    .line 42
    iput-boolean v3, v15, Lo/L4;->k:Z

    .line 43
    iput-boolean v3, v15, Lo/L4;->l:Z

    return-void

    .line 44
    :cond_14
    iget-object v4, v15, Lo/L4;->f:[Z

    if-eqz p2, :cond_18

    iget-object v3, v15, Lo/L4;->d:Lo/c9;

    if-eqz v3, :cond_18

    iget-object v11, v15, Lo/L4;->e:Lo/oh;

    if-eqz v11, :cond_18

    move-object/from16 v21, v10

    iget-object v10, v3, Lo/mi;->h:Lo/P5;

    move-object/from16 v22, v6

    iget-boolean v6, v10, Lo/P5;->j:Z

    if-eqz v6, :cond_17

    iget-object v3, v3, Lo/mi;->i:Lo/P5;

    iget-boolean v3, v3, Lo/P5;->j:Z

    if-eqz v3, :cond_17

    iget-object v3, v11, Lo/mi;->h:Lo/P5;

    iget-boolean v3, v3, Lo/P5;->j:Z

    if-eqz v3, :cond_17

    iget-object v3, v11, Lo/mi;->i:Lo/P5;

    iget-boolean v3, v3, Lo/P5;->j:Z

    if-eqz v3, :cond_17

    .line 45
    iget v0, v10, Lo/P5;->g:I

    invoke-virtual {v14, v13, v0}, Lo/ba;->d(Lo/We;I)V

    .line 46
    iget-object v0, v15, Lo/L4;->d:Lo/c9;

    iget-object v0, v0, Lo/mi;->i:Lo/P5;

    iget v0, v0, Lo/P5;->g:I

    invoke-virtual {v14, v12, v0}, Lo/ba;->d(Lo/We;I)V

    .line 47
    iget-object v0, v15, Lo/L4;->e:Lo/oh;

    iget-object v0, v0, Lo/mi;->h:Lo/P5;

    iget v0, v0, Lo/P5;->g:I

    invoke-virtual {v14, v9, v0}, Lo/ba;->d(Lo/We;I)V

    .line 48
    iget-object v0, v15, Lo/L4;->e:Lo/oh;

    iget-object v0, v0, Lo/mi;->i:Lo/P5;

    iget v0, v0, Lo/P5;->g:I

    invoke-virtual {v14, v7, v0}, Lo/ba;->d(Lo/We;I)V

    .line 49
    iget-object v0, v15, Lo/L4;->e:Lo/oh;

    iget-object v0, v0, Lo/oh;->k:Lo/P5;

    iget v0, v0, Lo/P5;->g:I

    invoke-virtual {v14, v5, v0}, Lo/ba;->d(Lo/We;I)V

    .line 50
    iget-object v0, v15, Lo/L4;->T:Lo/L4;

    if-eqz v0, :cond_16

    if-eqz v29, :cond_15

    const/4 v0, 0x0

    .line 51
    aget-boolean v1, v4, v0

    if-eqz v1, :cond_15

    .line 52
    invoke-virtual/range {p0 .. p0}, Lo/L4;->x()Z

    move-result v1

    if-nez v1, :cond_15

    .line 53
    iget-object v1, v15, Lo/L4;->T:Lo/L4;

    iget-object v1, v1, Lo/L4;->K:Lo/x4;

    invoke-virtual {v14, v1}, Lo/ba;->k(Ljava/lang/Object;)Lo/We;

    move-result-object v1

    const/16 v2, 0x8

    .line 54
    invoke-virtual {v14, v1, v12, v0, v2}, Lo/ba;->f(Lo/We;Lo/We;II)V

    :cond_15
    if-eqz v28, :cond_16

    const/4 v0, 0x1

    .line 55
    aget-boolean v0, v4, v0

    if-eqz v0, :cond_16

    .line 56
    invoke-virtual/range {p0 .. p0}, Lo/L4;->y()Z

    move-result v0

    if-nez v0, :cond_16

    .line 57
    iget-object v0, v15, Lo/L4;->T:Lo/L4;

    iget-object v0, v0, Lo/L4;->L:Lo/x4;

    invoke-virtual {v14, v0}, Lo/ba;->k(Ljava/lang/Object;)Lo/We;

    move-result-object v0

    const/16 v1, 0x8

    const/4 v3, 0x0

    .line 58
    invoke-virtual {v14, v0, v7, v3, v1}, Lo/ba;->f(Lo/We;Lo/We;II)V

    goto :goto_8

    :cond_16
    const/4 v3, 0x0

    .line 59
    :goto_8
    iput-boolean v3, v15, Lo/L4;->k:Z

    .line 60
    iput-boolean v3, v15, Lo/L4;->l:Z

    return-void

    :cond_17
    :goto_9
    const/4 v3, 0x0

    goto :goto_a

    :cond_18
    move-object/from16 v22, v6

    move-object/from16 v21, v10

    goto :goto_9

    .line 61
    :goto_a
    iget-object v6, v15, Lo/L4;->T:Lo/L4;

    if-eqz v6, :cond_1d

    .line 62
    invoke-virtual {v15, v3}, Lo/L4;->w(I)Z

    move-result v6

    if-eqz v6, :cond_19

    .line 63
    iget-object v6, v15, Lo/L4;->T:Lo/L4;

    check-cast v6, Lo/M4;

    invoke-virtual {v6, v15, v3}, Lo/M4;->R(Lo/L4;I)V

    const/4 v3, 0x1

    :goto_b
    const/4 v6, 0x1

    goto :goto_c

    .line 64
    :cond_19
    invoke-virtual/range {p0 .. p0}, Lo/L4;->x()Z

    move-result v3

    goto :goto_b

    .line 65
    :goto_c
    invoke-virtual {v15, v6}, Lo/L4;->w(I)Z

    move-result v10

    if-eqz v10, :cond_1a

    .line 66
    iget-object v10, v15, Lo/L4;->T:Lo/L4;

    check-cast v10, Lo/M4;

    invoke-virtual {v10, v15, v6}, Lo/M4;->R(Lo/L4;I)V

    const/4 v6, 0x1

    goto :goto_d

    .line 67
    :cond_1a
    invoke-virtual/range {p0 .. p0}, Lo/L4;->y()Z

    move-result v6

    :goto_d
    if-nez v3, :cond_1b

    if-eqz v29, :cond_1b

    .line 68
    iget v10, v15, Lo/L4;->g0:I

    const/16 v11, 0x8

    if-eq v10, v11, :cond_1b

    iget-object v10, v0, Lo/x4;->f:Lo/x4;

    if-nez v10, :cond_1b

    iget-object v10, v1, Lo/x4;->f:Lo/x4;

    if-nez v10, :cond_1b

    .line 69
    iget-object v10, v15, Lo/L4;->T:Lo/L4;

    iget-object v10, v10, Lo/L4;->K:Lo/x4;

    invoke-virtual {v14, v10}, Lo/ba;->k(Ljava/lang/Object;)Lo/We;

    move-result-object v10

    move/from16 v23, v3

    const/4 v3, 0x0

    const/4 v11, 0x1

    .line 70
    invoke-virtual {v14, v10, v12, v3, v11}, Lo/ba;->f(Lo/We;Lo/We;II)V

    goto :goto_e

    :cond_1b
    move/from16 v23, v3

    :goto_e
    if-nez v6, :cond_1c

    if-eqz v28, :cond_1c

    .line 71
    iget v3, v15, Lo/L4;->g0:I

    const/16 v10, 0x8

    if-eq v3, v10, :cond_1c

    iget-object v3, v2, Lo/x4;->f:Lo/x4;

    if-nez v3, :cond_1c

    iget-object v3, v8, Lo/x4;->f:Lo/x4;

    if-nez v3, :cond_1c

    if-nez v22, :cond_1c

    .line 72
    iget-object v3, v15, Lo/L4;->T:Lo/L4;

    iget-object v3, v3, Lo/L4;->L:Lo/x4;

    invoke-virtual {v14, v3}, Lo/ba;->k(Ljava/lang/Object;)Lo/We;

    move-result-object v3

    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 73
    invoke-virtual {v14, v3, v7, v11, v10}, Lo/ba;->f(Lo/We;Lo/We;II)V

    :cond_1c
    move/from16 v30, v6

    move/from16 v31, v23

    goto :goto_f

    :cond_1d
    const/16 v30, 0x0

    const/16 v31, 0x0

    .line 74
    :goto_f
    iget v3, v15, Lo/L4;->U:I

    .line 75
    iget v6, v15, Lo/L4;->b0:I

    if-ge v3, v6, :cond_1e

    goto :goto_10

    :cond_1e
    move v6, v3

    .line 76
    :goto_10
    iget v10, v15, Lo/L4;->V:I

    .line 77
    iget v11, v15, Lo/L4;->c0:I

    move-object/from16 v23, v9

    if-ge v10, v11, :cond_1f

    goto :goto_11

    :cond_1f
    move v11, v10

    .line 78
    :goto_11
    iget-object v9, v15, Lo/L4;->p0:[I

    move-object/from16 v27, v5

    const/16 v19, 0x0

    aget v5, v9, v19

    move/from16 v24, v6

    const/4 v6, 0x3

    move-object/from16 v32, v7

    const/16 v16, 0x1

    if-eq v5, v6, :cond_20

    const/16 v25, 0x1

    goto :goto_12

    :cond_20
    const/16 v25, 0x0

    .line 79
    :goto_12
    aget v7, v9, v16

    move/from16 v26, v11

    if-eq v7, v6, :cond_21

    const/4 v6, 0x1

    goto :goto_13

    :cond_21
    const/4 v6, 0x0

    .line 80
    :goto_13
    iget v11, v15, Lo/L4;->X:I

    iput v11, v15, Lo/L4;->A:I

    move-object/from16 v33, v4

    .line 81
    iget v4, v15, Lo/L4;->W:F

    iput v4, v15, Lo/L4;->B:F

    move-object/from16 v34, v12

    .line 82
    iget v12, v15, Lo/L4;->r:I

    move-object/from16 v35, v13

    .line 83
    iget v13, v15, Lo/L4;->s:I

    const/16 v36, 0x0

    cmpl-float v36, v4, v36

    if-lez v36, :cond_35

    .line 84
    iget v14, v15, Lo/L4;->g0:I

    move-object/from16 v39, v9

    const/16 v9, 0x8

    if-eq v14, v9, :cond_34

    const/4 v9, 0x3

    if-ne v5, v9, :cond_22

    if-nez v12, :cond_22

    move v12, v9

    :cond_22
    if-ne v7, v9, :cond_23

    if-nez v13, :cond_23

    move v13, v9

    :cond_23
    if-ne v5, v9, :cond_2f

    if-ne v7, v9, :cond_2f

    if-ne v12, v9, :cond_2f

    if-ne v13, v9, :cond_2f

    const/4 v9, -0x1

    if-ne v11, v9, :cond_25

    if-eqz v25, :cond_24

    if-nez v6, :cond_24

    const/4 v3, 0x0

    .line 85
    iput v3, v15, Lo/L4;->A:I

    goto :goto_14

    :cond_24
    if-nez v25, :cond_25

    if-eqz v6, :cond_25

    const/4 v3, 0x1

    .line 86
    iput v3, v15, Lo/L4;->A:I

    if-ne v11, v9, :cond_25

    const/high16 v3, 0x3f800000    # 1.0f

    div-float v14, v3, v4

    .line 87
    iput v14, v15, Lo/L4;->B:F

    .line 88
    :cond_25
    :goto_14
    iget v3, v15, Lo/L4;->A:I

    if-nez v3, :cond_27

    .line 89
    invoke-virtual {v2}, Lo/x4;->h()Z

    move-result v3

    if-eqz v3, :cond_26

    invoke-virtual {v8}, Lo/x4;->h()Z

    move-result v3

    if-nez v3, :cond_27

    :cond_26
    const/4 v3, 0x1

    goto :goto_15

    :cond_27
    const/4 v3, 0x1

    goto :goto_16

    .line 90
    :goto_15
    iput v3, v15, Lo/L4;->A:I

    goto :goto_17

    .line 91
    :goto_16
    iget v4, v15, Lo/L4;->A:I

    if-ne v4, v3, :cond_29

    .line 92
    invoke-virtual {v0}, Lo/x4;->h()Z

    move-result v3

    if-eqz v3, :cond_28

    invoke-virtual {v1}, Lo/x4;->h()Z

    move-result v3

    if-nez v3, :cond_29

    :cond_28
    const/4 v3, 0x0

    .line 93
    iput v3, v15, Lo/L4;->A:I

    .line 94
    :cond_29
    :goto_17
    iget v3, v15, Lo/L4;->A:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_2c

    .line 95
    invoke-virtual {v2}, Lo/x4;->h()Z

    move-result v3

    if-eqz v3, :cond_2a

    invoke-virtual {v8}, Lo/x4;->h()Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 96
    invoke-virtual {v0}, Lo/x4;->h()Z

    move-result v3

    if-eqz v3, :cond_2a

    invoke-virtual {v1}, Lo/x4;->h()Z

    move-result v3

    if-nez v3, :cond_2c

    .line 97
    :cond_2a
    invoke-virtual {v2}, Lo/x4;->h()Z

    move-result v2

    if-eqz v2, :cond_2b

    invoke-virtual {v8}, Lo/x4;->h()Z

    move-result v2

    if-eqz v2, :cond_2b

    const/4 v2, 0x0

    .line 98
    iput v2, v15, Lo/L4;->A:I

    goto :goto_18

    .line 99
    :cond_2b
    invoke-virtual {v0}, Lo/x4;->h()Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-virtual {v1}, Lo/x4;->h()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 100
    iget v0, v15, Lo/L4;->B:F

    const/high16 v1, 0x3f800000    # 1.0f

    div-float v14, v1, v0

    iput v14, v15, Lo/L4;->B:F

    const/4 v0, 0x1

    .line 101
    iput v0, v15, Lo/L4;->A:I

    .line 102
    :cond_2c
    :goto_18
    iget v0, v15, Lo/L4;->A:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2e

    .line 103
    iget v0, v15, Lo/L4;->u:I

    if-lez v0, :cond_2d

    iget v1, v15, Lo/L4;->x:I

    if-nez v1, :cond_2d

    const/4 v1, 0x0

    .line 104
    iput v1, v15, Lo/L4;->A:I

    goto :goto_19

    :cond_2d
    if-nez v0, :cond_2e

    .line 105
    iget v0, v15, Lo/L4;->x:I

    if-lez v0, :cond_2e

    .line 106
    iget v0, v15, Lo/L4;->B:F

    const/high16 v1, 0x3f800000    # 1.0f

    div-float v14, v1, v0

    iput v14, v15, Lo/L4;->B:F

    const/4 v0, 0x1

    .line 107
    iput v0, v15, Lo/L4;->A:I

    :cond_2e
    :goto_19
    const/high16 v14, 0x3f800000    # 1.0f

    goto :goto_1b

    :cond_2f
    move v0, v9

    if-ne v5, v0, :cond_31

    if-ne v12, v0, :cond_31

    const/4 v1, 0x0

    .line 108
    iput v1, v15, Lo/L4;->A:I

    int-to-float v1, v10

    mul-float/2addr v4, v1

    float-to-int v6, v4

    if-eq v7, v0, :cond_30

    move/from16 v41, v13

    move/from16 v40, v26

    const/high16 v14, 0x3f800000    # 1.0f

    const/16 v38, 0x0

    const/16 v42, 0x4

    goto :goto_1e

    :cond_30
    move/from16 v42, v12

    move/from16 v41, v13

    move/from16 v40, v26

    const/high16 v14, 0x3f800000    # 1.0f

    :goto_1a
    const/16 v38, 0x1

    goto :goto_1e

    :cond_31
    if-ne v7, v0, :cond_2e

    if-ne v13, v0, :cond_2e

    const/4 v1, 0x1

    .line 109
    iput v1, v15, Lo/L4;->A:I

    const/4 v1, -0x1

    const/high16 v14, 0x3f800000    # 1.0f

    if-ne v11, v1, :cond_32

    div-float v1, v14, v4

    .line 110
    iput v1, v15, Lo/L4;->B:F

    .line 111
    :cond_32
    iget v1, v15, Lo/L4;->B:F

    int-to-float v2, v3

    mul-float/2addr v1, v2

    float-to-int v11, v1

    move/from16 v40, v11

    move/from16 v42, v12

    if-eq v5, v0, :cond_33

    move/from16 v6, v24

    const/16 v38, 0x0

    const/16 v41, 0x4

    goto :goto_1e

    :cond_33
    move/from16 v41, v13

    move/from16 v6, v24

    goto :goto_1a

    :goto_1b
    move/from16 v42, v12

    move/from16 v41, v13

    move/from16 v6, v24

    move/from16 v40, v26

    goto :goto_1a

    :cond_34
    :goto_1c
    const/high16 v14, 0x3f800000    # 1.0f

    goto :goto_1d

    :cond_35
    move-object/from16 v39, v9

    goto :goto_1c

    :goto_1d
    move/from16 v42, v12

    move/from16 v41, v13

    move/from16 v6, v24

    move/from16 v40, v26

    const/16 v38, 0x0

    .line 112
    :goto_1e
    iget-object v0, v15, Lo/L4;->t:[I

    const/4 v1, 0x0

    aput v42, v0, v1

    const/4 v1, 0x1

    .line 113
    aput v41, v0, v1

    if-eqz v38, :cond_37

    .line 114
    iget v0, v15, Lo/L4;->A:I

    const/4 v1, -0x1

    if-eqz v0, :cond_36

    if-ne v0, v1, :cond_38

    :cond_36
    const/16 v36, 0x1

    goto :goto_1f

    :cond_37
    const/4 v1, -0x1

    :cond_38
    const/16 v36, 0x0

    :goto_1f
    if-eqz v38, :cond_3a

    .line 115
    iget v0, v15, Lo/L4;->A:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_39

    if-ne v0, v1, :cond_3a

    :cond_39
    const/4 v0, 0x0

    const/16 v43, 0x1

    goto :goto_20

    :cond_3a
    const/4 v0, 0x0

    const/16 v43, 0x0

    .line 116
    :goto_20
    aget v1, v39, v0

    const/4 v0, 0x2

    if-ne v1, v0, :cond_3b

    instance-of v0, v15, Lo/M4;

    if-eqz v0, :cond_3b

    const/4 v9, 0x1

    goto :goto_21

    :cond_3b
    const/4 v9, 0x0

    :goto_21
    if-eqz v9, :cond_3c

    const/4 v13, 0x0

    goto :goto_22

    :cond_3c
    move v13, v6

    .line 117
    :goto_22
    iget-object v12, v15, Lo/L4;->P:Lo/x4;

    invoke-virtual {v12}, Lo/x4;->h()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/lit8 v44, v0, 0x1

    const/4 v0, 0x0

    .line 118
    aget-boolean v45, v21, v0

    .line 119
    aget-boolean v46, v21, v1

    .line 120
    iget v0, v15, Lo/L4;->o:I

    iget-object v7, v15, Lo/L4;->C:[I

    const/16 v47, 0x0

    const/4 v4, 0x2

    if-eq v0, v4, :cond_41

    iget-boolean v0, v15, Lo/L4;->k:Z

    if-nez v0, :cond_41

    if-eqz p2, :cond_3d

    .line 121
    iget-object v0, v15, Lo/L4;->d:Lo/c9;

    if-eqz v0, :cond_3d

    iget-object v1, v0, Lo/mi;->h:Lo/P5;

    iget-boolean v2, v1, Lo/P5;->j:Z

    if-eqz v2, :cond_3d

    iget-object v0, v0, Lo/mi;->i:Lo/P5;

    iget-boolean v0, v0, Lo/P5;->j:Z

    if-nez v0, :cond_3e

    :cond_3d
    move-object/from16 v6, p1

    move-object/from16 v1, v34

    move-object/from16 v5, v35

    const/4 v3, 0x4

    const/16 v11, 0x8

    goto :goto_24

    :cond_3e
    if-eqz p2, :cond_40

    .line 122
    iget v0, v1, Lo/P5;->g:I

    move-object/from16 v6, p1

    move-object/from16 v5, v35

    const/4 v3, 0x4

    invoke-virtual {v6, v5, v0}, Lo/ba;->d(Lo/We;I)V

    .line 123
    iget-object v0, v15, Lo/L4;->d:Lo/c9;

    iget-object v0, v0, Lo/mi;->i:Lo/P5;

    iget v0, v0, Lo/P5;->g:I

    move-object/from16 v1, v34

    invoke-virtual {v6, v1, v0}, Lo/ba;->d(Lo/We;I)V

    .line 124
    iget-object v0, v15, Lo/L4;->T:Lo/L4;

    if-eqz v0, :cond_3f

    if-eqz v29, :cond_3f

    const/4 v0, 0x0

    .line 125
    aget-boolean v2, v33, v0

    if-eqz v2, :cond_3f

    .line 126
    invoke-virtual/range {p0 .. p0}, Lo/L4;->x()Z

    move-result v2

    if-nez v2, :cond_3f

    .line 127
    iget-object v2, v15, Lo/L4;->T:Lo/L4;

    iget-object v2, v2, Lo/L4;->K:Lo/x4;

    invoke-virtual {v6, v2}, Lo/ba;->k(Ljava/lang/Object;)Lo/We;

    move-result-object v2

    const/16 v11, 0x8

    .line 128
    invoke-virtual {v6, v2, v1, v0, v11}, Lo/ba;->f(Lo/We;Lo/We;II)V

    :cond_3f
    move-object/from16 v54, v1

    move-object/from16 v55, v5

    move-object/from16 v52, v8

    move-object/from16 v37, v12

    move-object/from16 v50, v22

    move-object/from16 v53, v23

    move-object/from16 v49, v27

    move-object/from16 v51, v32

    :goto_23
    move-object/from16 v32, v7

    goto/16 :goto_29

    :cond_40
    move-object/from16 v6, p1

    :cond_41
    move-object/from16 v52, v8

    move-object/from16 v37, v12

    move-object/from16 v50, v22

    move-object/from16 v53, v23

    move-object/from16 v49, v27

    move-object/from16 v51, v32

    move-object/from16 v54, v34

    move-object/from16 v55, v35

    goto :goto_23

    .line 129
    :goto_24
    iget-object v0, v15, Lo/L4;->T:Lo/L4;

    if-eqz v0, :cond_42

    .line 130
    iget-object v0, v0, Lo/L4;->K:Lo/x4;

    invoke-virtual {v6, v0}, Lo/ba;->k(Ljava/lang/Object;)Lo/We;

    move-result-object v0

    move-object/from16 v18, v0

    goto :goto_25

    :cond_42
    move-object/from16 v18, v47

    .line 131
    :goto_25
    iget-object v0, v15, Lo/L4;->T:Lo/L4;

    if-eqz v0, :cond_43

    .line 132
    iget-object v0, v0, Lo/L4;->I:Lo/x4;

    invoke-virtual {v6, v0}, Lo/ba;->k(Ljava/lang/Object;)Lo/We;

    move-result-object v0

    move-object/from16 v19, v0

    :goto_26
    const/4 v0, 0x0

    goto :goto_27

    :cond_43
    move-object/from16 v19, v47

    goto :goto_26

    .line 133
    :goto_27
    aget-boolean v20, v33, v0

    aget v21, v39, v0

    iget v2, v15, Lo/L4;->Y:I

    iget v10, v15, Lo/L4;->b0:I

    aget v34, v7, v0

    move/from16 v35, v2

    iget v2, v15, Lo/L4;->d0:F

    const/16 v17, 0x1

    aget v0, v39, v17

    const/4 v3, 0x3

    if-ne v0, v3, :cond_44

    move/from16 v48, v17

    goto :goto_28

    :cond_44
    const/16 v48, 0x0

    :goto_28
    iget v0, v15, Lo/L4;->u:I

    move/from16 v24, v0

    iget v0, v15, Lo/L4;->v:I

    move/from16 v25, v0

    iget v0, v15, Lo/L4;->w:F

    move/from16 v26, v0

    iget-object v0, v15, Lo/L4;->I:Lo/x4;

    move/from16 v16, v10

    move-object v10, v0

    iget-object v0, v15, Lo/L4;->K:Lo/x4;

    const/4 v3, 0x0

    move-object v11, v0

    const/4 v0, 0x1

    move/from16 v17, v35

    move/from16 v35, v2

    move v2, v0

    move-object/from16 v0, p0

    move-object/from16 v37, v1

    move-object/from16 v1, p1

    move/from16 v3, v29

    move/from16 v4, v28

    move-object/from16 v49, v27

    move-object/from16 v27, v5

    move/from16 v5, v20

    move-object/from16 v50, v22

    move-object/from16 v6, v19

    move-object/from16 v51, v32

    move-object/from16 v32, v7

    move-object/from16 v7, v18

    move-object/from16 v52, v8

    move/from16 v8, v21

    move-object/from16 v53, v23

    move-object/from16 v54, v37

    move-object/from16 v37, v12

    move/from16 v12, v17

    move-object/from16 v55, v27

    move/from16 v14, v16

    move/from16 v15, v34

    move/from16 v16, v35

    move/from16 v17, v36

    move/from16 v18, v48

    move/from16 v19, v31

    move/from16 v20, v30

    move/from16 v21, v45

    move/from16 v22, v42

    move/from16 v23, v41

    move/from16 v27, v44

    invoke-virtual/range {v0 .. v27}, Lo/L4;->d(Lo/ba;ZZZZLo/We;Lo/We;IZLo/x4;Lo/x4;IIIIFZZZZZIIIIFZ)V

    :goto_29
    if-eqz p2, :cond_48

    move-object/from16 v15, p0

    .line 134
    iget-object v0, v15, Lo/L4;->e:Lo/oh;

    if-eqz v0, :cond_47

    iget-object v1, v0, Lo/mi;->h:Lo/P5;

    iget-boolean v2, v1, Lo/P5;->j:Z

    if-eqz v2, :cond_47

    iget-object v0, v0, Lo/mi;->i:Lo/P5;

    iget-boolean v0, v0, Lo/P5;->j:Z

    if-eqz v0, :cond_47

    .line 135
    iget v0, v1, Lo/P5;->g:I

    move-object/from16 v14, p1

    move-object/from16 v13, v53

    invoke-virtual {v14, v13, v0}, Lo/ba;->d(Lo/We;I)V

    .line 136
    iget-object v0, v15, Lo/L4;->e:Lo/oh;

    iget-object v0, v0, Lo/mi;->i:Lo/P5;

    iget v0, v0, Lo/P5;->g:I

    move-object/from16 v12, v51

    invoke-virtual {v14, v12, v0}, Lo/ba;->d(Lo/We;I)V

    .line 137
    iget-object v0, v15, Lo/L4;->e:Lo/oh;

    iget-object v0, v0, Lo/oh;->k:Lo/P5;

    iget v0, v0, Lo/P5;->g:I

    move-object/from16 v1, v49

    invoke-virtual {v14, v1, v0}, Lo/ba;->d(Lo/We;I)V

    .line 138
    iget-object v0, v15, Lo/L4;->T:Lo/L4;

    if-eqz v0, :cond_46

    if-nez v30, :cond_46

    if-eqz v28, :cond_46

    const/4 v9, 0x1

    .line 139
    aget-boolean v2, v33, v9

    if-eqz v2, :cond_45

    .line 140
    iget-object v0, v0, Lo/L4;->L:Lo/x4;

    invoke-virtual {v14, v0}, Lo/ba;->k(Ljava/lang/Object;)Lo/We;

    move-result-object v0

    const/16 v2, 0x8

    const/4 v8, 0x0

    .line 141
    invoke-virtual {v14, v0, v12, v8, v2}, Lo/ba;->f(Lo/We;Lo/We;II)V

    goto :goto_2a

    :cond_45
    const/16 v2, 0x8

    const/4 v8, 0x0

    goto :goto_2a

    :cond_46
    const/16 v2, 0x8

    const/4 v8, 0x0

    const/4 v9, 0x1

    :goto_2a
    move v10, v8

    goto :goto_2c

    :cond_47
    move-object/from16 v14, p1

    move-object/from16 v1, v49

    move-object/from16 v12, v51

    move-object/from16 v13, v53

    const/16 v2, 0x8

    const/4 v8, 0x0

    const/4 v9, 0x1

    goto :goto_2b

    :cond_48
    const/16 v2, 0x8

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v1, v49

    move-object/from16 v12, v51

    move-object/from16 v13, v53

    :goto_2b
    move v10, v9

    .line 142
    :goto_2c
    iget v0, v15, Lo/L4;->p:I

    const/4 v7, 0x2

    if-ne v0, v7, :cond_49

    move v11, v8

    goto :goto_2d

    :cond_49
    move v11, v10

    :goto_2d
    const/4 v6, 0x5

    if-eqz v11, :cond_54

    .line 143
    iget-boolean v0, v15, Lo/L4;->l:Z

    if-nez v0, :cond_54

    .line 144
    aget v0, v39, v9

    if-ne v0, v7, :cond_4a

    instance-of v0, v15, Lo/M4;

    if-eqz v0, :cond_4a

    move/from16 v16, v9

    goto :goto_2e

    :cond_4a
    move/from16 v16, v8

    :goto_2e
    if-eqz v16, :cond_4b

    move/from16 v40, v8

    .line 145
    :cond_4b
    iget-object v0, v15, Lo/L4;->T:Lo/L4;

    if-eqz v0, :cond_4c

    .line 146
    iget-object v0, v0, Lo/L4;->L:Lo/x4;

    invoke-virtual {v14, v0}, Lo/ba;->k(Ljava/lang/Object;)Lo/We;

    move-result-object v0

    move-object v5, v0

    goto :goto_2f

    :cond_4c
    move-object/from16 v5, v47

    .line 147
    :goto_2f
    iget-object v0, v15, Lo/L4;->T:Lo/L4;

    if-eqz v0, :cond_4d

    .line 148
    iget-object v0, v0, Lo/L4;->J:Lo/x4;

    invoke-virtual {v14, v0}, Lo/ba;->k(Ljava/lang/Object;)Lo/We;

    move-result-object v0

    move-object/from16 v47, v0

    .line 149
    :cond_4d
    iget v0, v15, Lo/L4;->a0:I

    if-gtz v0, :cond_4e

    iget v3, v15, Lo/L4;->g0:I

    if-ne v3, v2, :cond_52

    :cond_4e
    move-object/from16 v3, v50

    .line 150
    iget-object v4, v3, Lo/x4;->f:Lo/x4;

    if-eqz v4, :cond_50

    .line 151
    invoke-virtual {v14, v1, v13, v0, v2}, Lo/ba;->e(Lo/We;Lo/We;II)V

    .line 152
    iget-object v0, v3, Lo/x4;->f:Lo/x4;

    invoke-virtual {v14, v0}, Lo/ba;->k(Ljava/lang/Object;)Lo/We;

    move-result-object v0

    .line 153
    invoke-virtual {v3}, Lo/x4;->e()I

    move-result v3

    .line 154
    invoke-virtual {v14, v1, v0, v3, v2}, Lo/ba;->e(Lo/We;Lo/We;II)V

    if-eqz v28, :cond_4f

    move-object/from16 v0, v52

    .line 155
    invoke-virtual {v14, v0}, Lo/ba;->k(Ljava/lang/Object;)Lo/We;

    move-result-object v0

    .line 156
    invoke-virtual {v14, v5, v0, v8, v6}, Lo/ba;->f(Lo/We;Lo/We;II)V

    :cond_4f
    move/from16 v27, v8

    goto :goto_31

    .line 157
    :cond_50
    iget v4, v15, Lo/L4;->g0:I

    if-ne v4, v2, :cond_51

    .line 158
    invoke-virtual {v3}, Lo/x4;->e()I

    move-result v0

    invoke-virtual {v14, v1, v13, v0, v2}, Lo/ba;->e(Lo/We;Lo/We;II)V

    goto :goto_30

    .line 159
    :cond_51
    invoke-virtual {v14, v1, v13, v0, v2}, Lo/ba;->e(Lo/We;Lo/We;II)V

    :cond_52
    :goto_30
    move/from16 v27, v44

    .line 160
    :goto_31
    aget-boolean v17, v33, v9

    aget v18, v39, v9

    iget v4, v15, Lo/L4;->Z:I

    iget v3, v15, Lo/L4;->c0:I

    aget v19, v32, v9

    iget v1, v15, Lo/L4;->e0:F

    aget v0, v39, v8

    const/4 v2, 0x3

    if-ne v0, v2, :cond_53

    move/from16 v20, v9

    goto :goto_32

    :cond_53
    move/from16 v20, v8

    :goto_32
    iget v0, v15, Lo/L4;->x:I

    move/from16 v24, v0

    iget v0, v15, Lo/L4;->y:I

    move/from16 v25, v0

    iget v0, v15, Lo/L4;->z:F

    move/from16 v26, v0

    iget-object v10, v15, Lo/L4;->J:Lo/x4;

    iget-object v11, v15, Lo/L4;->L:Lo/x4;

    const/4 v0, 0x0

    move v2, v0

    move-object/from16 v0, p0

    move/from16 v21, v1

    move-object/from16 v1, p1

    move/from16 v22, v3

    move/from16 v3, v28

    move/from16 v23, v4

    move/from16 v4, v29

    move-object/from16 v28, v5

    move/from16 v5, v17

    move-object/from16 v6, v47

    move-object/from16 v7, v28

    move/from16 v8, v18

    move/from16 v9, v16

    move-object/from16 v56, v12

    move/from16 v12, v23

    move-object/from16 v57, v13

    move/from16 v13, v40

    move/from16 v14, v22

    move/from16 v15, v19

    move/from16 v16, v21

    move/from16 v17, v43

    move/from16 v18, v20

    move/from16 v19, v30

    move/from16 v20, v31

    move/from16 v21, v46

    move/from16 v22, v41

    move/from16 v23, v42

    invoke-virtual/range {v0 .. v27}, Lo/L4;->d(Lo/ba;ZZZZLo/We;Lo/We;IZLo/x4;Lo/x4;IIIIFZZZZZIIIIFZ)V

    goto :goto_33

    :cond_54
    move-object/from16 v56, v12

    move-object/from16 v57, v13

    :goto_33
    move-object/from16 v0, p0

    if-eqz v38, :cond_56

    .line 161
    iget v1, v0, Lo/L4;->A:I

    const/high16 v2, -0x40800000    # -1.0f

    const/4 v3, 0x1

    if-ne v1, v3, :cond_55

    .line 162
    iget v1, v0, Lo/L4;->B:F

    .line 163
    invoke-virtual/range {p1 .. p1}, Lo/ba;->l()Lo/F2;

    move-result-object v3

    .line 164
    iget-object v4, v3, Lo/F2;->d:Lo/y2;

    move-object/from16 v5, v56

    invoke-virtual {v4, v5, v2}, Lo/y2;->g(Lo/We;F)V

    .line 165
    iget-object v2, v3, Lo/F2;->d:Lo/y2;

    move-object/from16 v4, v57

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v2, v4, v6}, Lo/y2;->g(Lo/We;F)V

    .line 166
    iget-object v2, v3, Lo/F2;->d:Lo/y2;

    move-object/from16 v7, v54

    invoke-virtual {v2, v7, v1}, Lo/y2;->g(Lo/We;F)V

    .line 167
    iget-object v2, v3, Lo/F2;->d:Lo/y2;

    neg-float v1, v1

    move-object/from16 v8, v55

    invoke-virtual {v2, v8, v1}, Lo/y2;->g(Lo/We;F)V

    move-object/from16 v1, p1

    .line 168
    invoke-virtual {v1, v3}, Lo/ba;->c(Lo/F2;)V

    goto :goto_34

    :cond_55
    move-object/from16 v1, p1

    move-object/from16 v7, v54

    move-object/from16 v8, v55

    move-object/from16 v5, v56

    move-object/from16 v4, v57

    const/high16 v6, 0x3f800000    # 1.0f

    .line 169
    iget v3, v0, Lo/L4;->B:F

    .line 170
    invoke-virtual/range {p1 .. p1}, Lo/ba;->l()Lo/F2;

    move-result-object v9

    .line 171
    iget-object v10, v9, Lo/F2;->d:Lo/y2;

    invoke-virtual {v10, v7, v2}, Lo/y2;->g(Lo/We;F)V

    .line 172
    iget-object v2, v9, Lo/F2;->d:Lo/y2;

    invoke-virtual {v2, v8, v6}, Lo/y2;->g(Lo/We;F)V

    .line 173
    iget-object v2, v9, Lo/F2;->d:Lo/y2;

    invoke-virtual {v2, v5, v3}, Lo/y2;->g(Lo/We;F)V

    .line 174
    iget-object v2, v9, Lo/F2;->d:Lo/y2;

    neg-float v3, v3

    invoke-virtual {v2, v4, v3}, Lo/y2;->g(Lo/We;F)V

    .line 175
    invoke-virtual {v1, v9}, Lo/ba;->c(Lo/F2;)V

    goto :goto_34

    :cond_56
    move-object/from16 v1, p1

    .line 176
    :goto_34
    invoke-virtual/range {v37 .. v37}, Lo/x4;->h()Z

    move-result v2

    if-eqz v2, :cond_57

    move-object/from16 v2, v37

    .line 177
    iget-object v3, v2, Lo/x4;->f:Lo/x4;

    .line 178
    iget-object v3, v3, Lo/x4;->d:Lo/L4;

    .line 179
    iget v4, v0, Lo/L4;->D:F

    const/high16 v5, 0x42b40000    # 90.0f

    add-float/2addr v4, v5

    float-to-double v4, v4

    .line 180
    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    double-to-float v4, v4

    invoke-virtual {v2}, Lo/x4;->e()I

    move-result v2

    const/4 v5, 0x2

    .line 181
    invoke-virtual {v0, v5}, Lo/L4;->i(I)Lo/x4;

    move-result-object v6

    invoke-virtual {v1, v6}, Lo/ba;->k(Ljava/lang/Object;)Lo/We;

    move-result-object v6

    const/4 v7, 0x3

    .line 182
    invoke-virtual {v0, v7}, Lo/L4;->i(I)Lo/x4;

    move-result-object v8

    invoke-virtual {v1, v8}, Lo/ba;->k(Ljava/lang/Object;)Lo/We;

    move-result-object v8

    const/4 v9, 0x4

    .line 183
    invoke-virtual {v0, v9}, Lo/L4;->i(I)Lo/x4;

    move-result-object v10

    invoke-virtual {v1, v10}, Lo/ba;->k(Ljava/lang/Object;)Lo/We;

    move-result-object v10

    const/4 v11, 0x5

    .line 184
    invoke-virtual {v0, v11}, Lo/L4;->i(I)Lo/x4;

    move-result-object v12

    invoke-virtual {v1, v12}, Lo/ba;->k(Ljava/lang/Object;)Lo/We;

    move-result-object v12

    .line 185
    invoke-virtual {v3, v5}, Lo/L4;->i(I)Lo/x4;

    move-result-object v5

    invoke-virtual {v1, v5}, Lo/ba;->k(Ljava/lang/Object;)Lo/We;

    move-result-object v5

    .line 186
    invoke-virtual {v3, v7}, Lo/L4;->i(I)Lo/x4;

    move-result-object v7

    invoke-virtual {v1, v7}, Lo/ba;->k(Ljava/lang/Object;)Lo/We;

    move-result-object v7

    .line 187
    invoke-virtual {v3, v9}, Lo/L4;->i(I)Lo/x4;

    move-result-object v9

    invoke-virtual {v1, v9}, Lo/ba;->k(Ljava/lang/Object;)Lo/We;

    move-result-object v9

    .line 188
    invoke-virtual {v3, v11}, Lo/L4;->i(I)Lo/x4;

    move-result-object v3

    invoke-virtual {v1, v3}, Lo/ba;->k(Ljava/lang/Object;)Lo/We;

    move-result-object v3

    .line 189
    invoke-virtual/range {p1 .. p1}, Lo/ba;->l()Lo/F2;

    move-result-object v11

    float-to-double v13, v4

    .line 190
    invoke-static {v13, v14}, Ljava/lang/Math;->sin(D)D

    move-result-wide v15

    move-object v4, v9

    move-object/from16 p2, v10

    int-to-double v9, v2

    move-object/from16 v17, v4

    move-object v2, v5

    mul-double v4, v15, v9

    double-to-float v4, v4

    .line 191
    iget-object v5, v11, Lo/F2;->d:Lo/y2;

    const/high16 v15, 0x3f000000    # 0.5f

    invoke-virtual {v5, v7, v15}, Lo/y2;->g(Lo/We;F)V

    .line 192
    iget-object v5, v11, Lo/F2;->d:Lo/y2;

    invoke-virtual {v5, v3, v15}, Lo/y2;->g(Lo/We;F)V

    .line 193
    iget-object v3, v11, Lo/F2;->d:Lo/y2;

    const/high16 v5, -0x41000000    # -0.5f

    invoke-virtual {v3, v8, v5}, Lo/y2;->g(Lo/We;F)V

    .line 194
    iget-object v3, v11, Lo/F2;->d:Lo/y2;

    invoke-virtual {v3, v12, v5}, Lo/y2;->g(Lo/We;F)V

    neg-float v3, v4

    .line 195
    iput v3, v11, Lo/F2;->b:F

    .line 196
    invoke-virtual {v1, v11}, Lo/ba;->c(Lo/F2;)V

    .line 197
    invoke-virtual/range {p1 .. p1}, Lo/ba;->l()Lo/F2;

    move-result-object v3

    .line 198
    invoke-static {v13, v14}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    mul-double/2addr v7, v9

    double-to-float v4, v7

    .line 199
    iget-object v7, v3, Lo/F2;->d:Lo/y2;

    invoke-virtual {v7, v2, v15}, Lo/y2;->g(Lo/We;F)V

    .line 200
    iget-object v2, v3, Lo/F2;->d:Lo/y2;

    move-object/from16 v7, v17

    invoke-virtual {v2, v7, v15}, Lo/y2;->g(Lo/We;F)V

    .line 201
    iget-object v2, v3, Lo/F2;->d:Lo/y2;

    invoke-virtual {v2, v6, v5}, Lo/y2;->g(Lo/We;F)V

    .line 202
    iget-object v2, v3, Lo/F2;->d:Lo/y2;

    move-object/from16 v6, p2

    invoke-virtual {v2, v6, v5}, Lo/y2;->g(Lo/We;F)V

    neg-float v2, v4

    .line 203
    iput v2, v3, Lo/F2;->b:F

    .line 204
    invoke-virtual {v1, v3}, Lo/ba;->c(Lo/F2;)V

    :cond_57
    const/4 v1, 0x0

    .line 205
    iput-boolean v1, v0, Lo/L4;->k:Z

    .line 206
    iput-boolean v1, v0, Lo/L4;->l:Z

    return-void
.end method

.method public c()Z
    .locals 2

    .line 1
    iget v0, p0, Lo/L4;->g0:I

    .line 3
    const/16 v1, 0x8

    .line 5
    if-eq v0, v1, :cond_0

    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    return v0
.end method

.method public final d(Lo/ba;ZZZZLo/We;Lo/We;IZLo/x4;Lo/x4;IIIIFZZZZZIIIIFZ)V
    .locals 30

    move-object/from16 v0, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p6

    move-object/from16 v12, p7

    move-object/from16 v13, p10

    move-object/from16 v14, p11

    move/from16 v15, p14

    move/from16 v1, p15

    move/from16 v2, p23

    move/from16 v3, p24

    move/from16 v4, p25

    move/from16 v5, p26

    .line 1
    invoke-virtual {v10, v13}, Lo/ba;->k(Ljava/lang/Object;)Lo/We;

    move-result-object v9

    .line 2
    invoke-virtual {v10, v14}, Lo/ba;->k(Ljava/lang/Object;)Lo/We;

    move-result-object v8

    .line 3
    iget-object v6, v13, Lo/x4;->f:Lo/x4;

    .line 4
    invoke-virtual {v10, v6}, Lo/ba;->k(Ljava/lang/Object;)Lo/We;

    move-result-object v7

    .line 5
    iget-object v6, v14, Lo/x4;->f:Lo/x4;

    .line 6
    invoke-virtual {v10, v6}, Lo/ba;->k(Ljava/lang/Object;)Lo/We;

    move-result-object v6

    .line 7
    invoke-virtual/range {p10 .. p10}, Lo/x4;->h()Z

    move-result v16

    .line 8
    invoke-virtual/range {p11 .. p11}, Lo/x4;->h()Z

    move-result v17

    .line 9
    iget-object v12, v0, Lo/L4;->P:Lo/x4;

    invoke-virtual {v12}, Lo/x4;->h()Z

    move-result v12

    if-eqz v17, :cond_0

    add-int/lit8 v18, v16, 0x1

    goto :goto_0

    :cond_0
    move/from16 v18, v16

    :goto_0
    if-eqz v12, :cond_1

    add-int/lit8 v18, v18, 0x1

    :cond_1
    move/from16 v2, v18

    if-eqz p17, :cond_2

    const/4 v14, 0x3

    goto :goto_1

    :cond_2
    move/from16 v14, p22

    .line 10
    :goto_1
    invoke-static/range {p8 .. p8}, Lo/Ve;->C(I)I

    move-result v11

    move-object/from16 v19, v6

    const/4 v6, 0x1

    if-eqz v11, :cond_3

    if-eq v11, v6, :cond_3

    const/4 v6, 0x2

    if-eq v11, v6, :cond_4

    :cond_3
    const/4 v6, 0x0

    goto :goto_2

    :cond_4
    const/4 v6, 0x4

    if-eq v14, v6, :cond_3

    const/4 v6, 0x1

    .line 11
    :goto_2
    iget v11, v0, Lo/L4;->h:I

    const/4 v5, -0x1

    if-eq v11, v5, :cond_5

    if-eqz p2, :cond_5

    .line 12
    iput v5, v0, Lo/L4;->h:I

    const/16 p13, 0x0

    goto :goto_3

    :cond_5
    move/from16 v11, p13

    move/from16 p13, v6

    .line 13
    :goto_3
    iget v6, v0, Lo/L4;->i:I

    if-eq v6, v5, :cond_6

    if-nez p2, :cond_6

    .line 14
    iput v5, v0, Lo/L4;->i:I

    move v11, v6

    const/4 v6, 0x0

    goto :goto_4

    :cond_6
    move/from16 v6, p13

    .line 15
    :goto_4
    iget v5, v0, Lo/L4;->g0:I

    move/from16 p13, v11

    const/16 v11, 0x8

    if-ne v5, v11, :cond_7

    const/4 v5, 0x0

    const/4 v6, 0x0

    goto :goto_5

    :cond_7
    move/from16 v5, p13

    :goto_5
    if-eqz p27, :cond_a

    if-nez v16, :cond_9

    if-nez v17, :cond_9

    if-nez v12, :cond_9

    move/from16 v11, p12

    .line 16
    invoke-virtual {v10, v9, v11}, Lo/ba;->d(Lo/We;I)V

    :cond_8
    move/from16 v22, v12

    const/16 v12, 0x8

    goto :goto_6

    :cond_9
    if-eqz v16, :cond_8

    if-nez v17, :cond_8

    .line 17
    invoke-virtual/range {p10 .. p10}, Lo/x4;->e()I

    move-result v11

    move/from16 v22, v12

    const/16 v12, 0x8

    .line 18
    invoke-virtual {v10, v9, v7, v11, v12}, Lo/ba;->e(Lo/We;Lo/We;II)V

    goto :goto_6

    :cond_a
    move/from16 v22, v12

    move v12, v11

    :goto_6
    if-nez v6, :cond_e

    if-eqz p9, :cond_c

    const/4 v11, 0x3

    const/4 v12, 0x0

    .line 19
    invoke-virtual {v10, v8, v9, v12, v11}, Lo/ba;->e(Lo/We;Lo/We;II)V

    const/16 v11, 0x8

    if-lez v15, :cond_b

    .line 20
    invoke-virtual {v10, v8, v9, v15, v11}, Lo/ba;->f(Lo/We;Lo/We;II)V

    :cond_b
    const v5, 0x7fffffff

    if-ge v1, v5, :cond_d

    .line 21
    invoke-virtual {v10, v8, v9, v1, v11}, Lo/ba;->g(Lo/We;Lo/We;II)V

    goto :goto_7

    :cond_c
    move v11, v12

    const/4 v12, 0x0

    .line 22
    invoke-virtual {v10, v8, v9, v5, v11}, Lo/ba;->e(Lo/We;Lo/We;II)V

    :cond_d
    :goto_7
    move/from16 v11, p5

    move/from16 v23, v2

    move v12, v3

    move/from16 v24, v6

    goto/16 :goto_c

    :cond_e
    const/4 v1, 0x2

    const/4 v12, 0x0

    if-eq v2, v1, :cond_11

    if-nez p17, :cond_11

    const/4 v1, 0x1

    if-eq v14, v1, :cond_f

    if-nez v14, :cond_11

    .line 23
    :cond_f
    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    if-lez v4, :cond_10

    .line 24
    invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    :cond_10
    const/16 v5, 0x8

    .line 25
    invoke-virtual {v10, v8, v9, v1, v5}, Lo/ba;->e(Lo/We;Lo/We;II)V

    move/from16 v11, p5

    move/from16 v23, v2

    move/from16 v24, v12

    move v12, v3

    goto/16 :goto_c

    :cond_11
    const/4 v1, -0x2

    if-ne v3, v1, :cond_12

    move v3, v5

    :cond_12
    if-ne v4, v1, :cond_13

    move v4, v5

    :cond_13
    if-lez v5, :cond_14

    const/4 v1, 0x1

    if-eq v14, v1, :cond_14

    move v5, v12

    :cond_14
    const/16 v1, 0x8

    if-lez v3, :cond_15

    .line 26
    invoke-virtual {v10, v8, v9, v3, v1}, Lo/ba;->f(Lo/We;Lo/We;II)V

    .line 27
    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v5

    :cond_15
    const/4 v11, 0x1

    if-lez v4, :cond_17

    if-eqz p3, :cond_16

    if-ne v14, v11, :cond_16

    goto :goto_8

    .line 28
    :cond_16
    invoke-virtual {v10, v8, v9, v4, v1}, Lo/ba;->g(Lo/We;Lo/We;II)V

    .line 29
    :goto_8
    invoke-static {v5, v4}, Ljava/lang/Math;->min(II)I

    move-result v5

    :cond_17
    if-ne v14, v11, :cond_1a

    if-eqz p3, :cond_18

    .line 30
    invoke-virtual {v10, v8, v9, v5, v1}, Lo/ba;->e(Lo/We;Lo/We;II)V

    const/4 v11, 0x5

    goto :goto_7

    :cond_18
    if-eqz p19, :cond_19

    const/4 v11, 0x5

    .line 31
    invoke-virtual {v10, v8, v9, v5, v11}, Lo/ba;->e(Lo/We;Lo/We;II)V

    .line 32
    invoke-virtual {v10, v8, v9, v5, v1}, Lo/ba;->g(Lo/We;Lo/We;II)V

    goto :goto_7

    :cond_19
    const/4 v11, 0x5

    .line 33
    invoke-virtual {v10, v8, v9, v5, v11}, Lo/ba;->e(Lo/We;Lo/We;II)V

    .line 34
    invoke-virtual {v10, v8, v9, v5, v1}, Lo/ba;->g(Lo/We;Lo/We;II)V

    goto :goto_7

    :cond_1a
    const/4 v1, 0x2

    const/4 v11, 0x5

    if-ne v14, v1, :cond_1e

    .line 35
    iget v5, v13, Lo/x4;->e:I

    const/4 v12, 0x3

    if-eq v5, v12, :cond_1b

    if-ne v5, v11, :cond_1c

    :cond_1b
    const/4 v11, 0x4

    goto :goto_9

    .line 36
    :cond_1c
    iget-object v5, v0, Lo/L4;->T:Lo/L4;

    .line 37
    invoke-virtual {v5, v1}, Lo/L4;->i(I)Lo/x4;

    move-result-object v5

    .line 38
    invoke-virtual {v10, v5}, Lo/ba;->k(Ljava/lang/Object;)Lo/We;

    move-result-object v1

    .line 39
    iget-object v5, v0, Lo/L4;->T:Lo/L4;

    const/4 v11, 0x4

    .line 40
    invoke-virtual {v5, v11}, Lo/L4;->i(I)Lo/x4;

    move-result-object v5

    .line 41
    invoke-virtual {v10, v5}, Lo/ba;->k(Ljava/lang/Object;)Lo/We;

    move-result-object v5

    goto :goto_a

    .line 42
    :goto_9
    iget-object v1, v0, Lo/L4;->T:Lo/L4;

    const/4 v5, 0x3

    .line 43
    invoke-virtual {v1, v5}, Lo/L4;->i(I)Lo/x4;

    move-result-object v1

    .line 44
    invoke-virtual {v10, v1}, Lo/ba;->k(Ljava/lang/Object;)Lo/We;

    move-result-object v1

    .line 45
    iget-object v12, v0, Lo/L4;->T:Lo/L4;

    const/4 v5, 0x5

    .line 46
    invoke-virtual {v12, v5}, Lo/L4;->i(I)Lo/x4;

    move-result-object v12

    .line 47
    invoke-virtual {v10, v12}, Lo/ba;->k(Ljava/lang/Object;)Lo/We;

    move-result-object v5

    .line 48
    :goto_a
    invoke-virtual/range {p1 .. p1}, Lo/ba;->l()Lo/F2;

    move-result-object v12

    .line 49
    iget-object v11, v12, Lo/F2;->d:Lo/y2;

    move/from16 v23, v2

    const/high16 v2, -0x40800000    # -1.0f

    invoke-virtual {v11, v8, v2}, Lo/y2;->g(Lo/We;F)V

    .line 50
    iget-object v2, v12, Lo/F2;->d:Lo/y2;

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-virtual {v2, v9, v11}, Lo/y2;->g(Lo/We;F)V

    .line 51
    iget-object v2, v12, Lo/F2;->d:Lo/y2;

    move/from16 v11, p26

    invoke-virtual {v2, v5, v11}, Lo/y2;->g(Lo/We;F)V

    .line 52
    iget-object v2, v12, Lo/F2;->d:Lo/y2;

    neg-float v5, v11

    invoke-virtual {v2, v1, v5}, Lo/y2;->g(Lo/We;F)V

    .line 53
    invoke-virtual {v10, v12}, Lo/ba;->c(Lo/F2;)V

    if-eqz p3, :cond_1d

    const/4 v5, 0x0

    goto :goto_b

    :cond_1d
    move v5, v6

    :goto_b
    move/from16 v11, p5

    move v12, v3

    move/from16 v24, v5

    goto :goto_c

    :cond_1e
    move/from16 v23, v2

    move v12, v3

    move/from16 v24, v6

    const/4 v11, 0x1

    :goto_c
    if-eqz p27, :cond_5a

    if-eqz p19, :cond_1f

    move-object/from16 v2, p6

    move-object/from16 v4, p7

    move-object v3, v8

    move-object v13, v9

    move/from16 p5, v11

    move/from16 v1, v23

    const/4 v5, 0x2

    const/16 v29, 0x1

    goto/16 :goto_2c

    :cond_1f
    if-nez v16, :cond_20

    if-nez v17, :cond_20

    if-nez v22, :cond_20

    move-object/from16 v14, p11

    move-object v3, v8

    move/from16 p5, v11

    move-object/from16 v1, v19

    :goto_d
    const/4 v4, 0x5

    goto/16 :goto_29

    :cond_20
    if-eqz v16, :cond_22

    if-nez v17, :cond_22

    .line 54
    iget-object v1, v13, Lo/x4;->f:Lo/x4;

    iget-object v1, v1, Lo/x4;->d:Lo/L4;

    if-eqz p3, :cond_21

    .line 55
    instance-of v1, v1, Lo/Q2;

    if-eqz v1, :cond_21

    const/16 v1, 0x8

    goto :goto_e

    :cond_21
    const/4 v1, 0x5

    :goto_e
    move-object/from16 v14, p11

    move-object v3, v8

    move/from16 p5, v11

    move v11, v1

    move-object/from16 v1, v19

    move/from16 v19, p3

    goto/16 :goto_2a

    :cond_22
    if-nez v16, :cond_24

    if-eqz v17, :cond_24

    .line 56
    invoke-virtual/range {p11 .. p11}, Lo/x4;->e()I

    move-result v1

    neg-int v1, v1

    move-object/from16 v6, v19

    const/16 v2, 0x8

    .line 57
    invoke-virtual {v10, v8, v6, v1, v2}, Lo/ba;->e(Lo/We;Lo/We;II)V

    if-eqz p3, :cond_23

    move-object/from16 v5, p6

    const/4 v1, 0x0

    const/4 v2, 0x5

    .line 58
    invoke-virtual {v10, v9, v5, v1, v2}, Lo/ba;->f(Lo/We;Lo/We;II)V

    move-object/from16 v14, p11

    move v4, v2

    move-object v1, v6

    move-object v3, v8

    move/from16 p5, v11

    goto/16 :goto_29

    :cond_23
    move-object/from16 v14, p11

    move-object v1, v6

    move-object v3, v8

    move/from16 p5, v11

    goto :goto_d

    :cond_24
    move-object/from16 v5, p6

    move-object/from16 v6, v19

    if-eqz v16, :cond_23

    if-eqz v17, :cond_23

    .line 59
    iget-object v1, v13, Lo/x4;->f:Lo/x4;

    iget-object v3, v1, Lo/x4;->d:Lo/L4;

    move-object/from16 v2, p11

    .line 60
    iget-object v1, v2, Lo/x4;->f:Lo/x4;

    iget-object v1, v1, Lo/x4;->d:Lo/L4;

    .line 61
    iget-object v13, v0, Lo/L4;->T:Lo/L4;

    const/16 v16, 0x6

    if-eqz v24, :cond_39

    if-nez v14, :cond_29

    if-nez v4, :cond_26

    if-nez v12, :cond_26

    .line 62
    iget-boolean v4, v7, Lo/We;->f:Z

    if-eqz v4, :cond_25

    iget-boolean v4, v6, Lo/We;->f:Z

    if-eqz v4, :cond_25

    .line 63
    invoke-virtual/range {p10 .. p10}, Lo/x4;->e()I

    move-result v1

    const/16 v3, 0x8

    .line 64
    invoke-virtual {v10, v9, v7, v1, v3}, Lo/ba;->e(Lo/We;Lo/We;II)V

    .line 65
    invoke-virtual/range {p11 .. p11}, Lo/x4;->e()I

    move-result v1

    neg-int v1, v1

    .line 66
    invoke-virtual {v10, v8, v6, v1, v3}, Lo/ba;->e(Lo/We;Lo/We;II)V

    return-void

    :cond_25
    const/16 p2, 0x8

    const/16 v17, 0x0

    const/16 v19, 0x1

    const/16 v21, 0x0

    const/16 v22, 0x8

    goto :goto_f

    :cond_26
    const/16 p2, 0x5

    const/16 v17, 0x1

    const/16 v19, 0x0

    const/16 v21, 0x1

    const/16 v22, 0x5

    .line 67
    :goto_f
    instance-of v4, v3, Lo/Q2;

    if-nez v4, :cond_28

    instance-of v4, v1, Lo/Q2;

    if-eqz v4, :cond_27

    goto :goto_12

    :cond_27
    move/from16 v4, p2

    move/from16 v20, v21

    move/from16 v23, v22

    const/4 v15, 0x1

    move/from16 v22, v16

    :goto_10
    move/from16 v21, v19

    move/from16 v19, v17

    move/from16 v17, v14

    :goto_11
    move-object/from16 v14, p7

    goto/16 :goto_1c

    :cond_28
    :goto_12
    move/from16 v4, p2

    move/from16 v22, v16

    move/from16 v20, v21

    const/4 v15, 0x1

    const/16 v23, 0x4

    goto :goto_10

    :cond_29
    const/4 v15, 0x2

    if-ne v14, v15, :cond_2c

    .line 68
    instance-of v4, v3, Lo/Q2;

    if-nez v4, :cond_2b

    instance-of v4, v1, Lo/Q2;

    if-eqz v4, :cond_2a

    goto :goto_13

    :cond_2a
    move/from16 v17, v14

    move/from16 v22, v16

    const/4 v4, 0x5

    const/4 v15, 0x1

    const/16 v19, 0x1

    const/16 v20, 0x1

    const/16 v21, 0x0

    const/16 v23, 0x5

    goto :goto_11

    :cond_2b
    :goto_13
    move/from16 v17, v14

    move/from16 v22, v16

    const/4 v4, 0x5

    :goto_14
    const/4 v15, 0x1

    const/16 v19, 0x1

    const/16 v20, 0x1

    const/16 v21, 0x0

    const/16 v23, 0x4

    goto :goto_11

    :cond_2c
    const/4 v15, 0x1

    if-ne v14, v15, :cond_2d

    move/from16 v17, v14

    move/from16 v22, v16

    const/16 v4, 0x8

    goto :goto_14

    :cond_2d
    const/4 v15, 0x3

    if-ne v14, v15, :cond_38

    .line 69
    iget v15, v0, Lo/L4;->A:I

    move/from16 v17, v14

    const/4 v14, -0x1

    if-ne v15, v14, :cond_30

    if-eqz p20, :cond_2f

    move-object/from16 v14, p7

    const/16 v4, 0x8

    const/4 v15, 0x1

    const/16 v19, 0x1

    const/16 v20, 0x1

    const/16 v21, 0x1

    if-eqz p3, :cond_2e

    const/16 v22, 0x5

    :goto_15
    const/16 v23, 0x5

    goto/16 :goto_1c

    :cond_2e
    const/16 v22, 0x4

    goto :goto_15

    :cond_2f
    move-object/from16 v14, p7

    const/16 v4, 0x8

    const/4 v15, 0x1

    const/16 v19, 0x1

    const/16 v20, 0x1

    const/16 v21, 0x1

    const/16 v22, 0x8

    goto :goto_15

    :cond_30
    if-eqz p17, :cond_33

    move/from16 v14, p23

    const/4 v15, 0x2

    if-eq v14, v15, :cond_32

    const/4 v15, 0x1

    if-ne v14, v15, :cond_31

    goto :goto_16

    :cond_31
    const/16 v4, 0x8

    const/4 v14, 0x5

    goto :goto_17

    :cond_32
    const/4 v15, 0x1

    :goto_16
    const/4 v4, 0x5

    const/4 v14, 0x4

    :goto_17
    move/from16 v23, v14

    move/from16 v19, v15

    move/from16 v20, v19

    move/from16 v21, v20

    move/from16 v22, v16

    goto/16 :goto_11

    :cond_33
    const/4 v15, 0x1

    if-lez v4, :cond_34

    move-object/from16 v14, p7

    move/from16 v19, v15

    move/from16 v20, v19

    move/from16 v21, v20

    move/from16 v22, v16

    const/4 v4, 0x5

    goto :goto_15

    :cond_34
    if-nez v4, :cond_37

    if-nez v12, :cond_37

    if-nez p20, :cond_35

    move-object/from16 v14, p7

    move/from16 v19, v15

    move/from16 v20, v19

    move/from16 v21, v20

    move/from16 v22, v16

    const/4 v4, 0x5

    const/16 v23, 0x8

    goto/16 :goto_1c

    :cond_35
    if-eq v3, v13, :cond_36

    if-eq v1, v13, :cond_36

    const/4 v4, 0x4

    goto :goto_18

    :cond_36
    const/4 v4, 0x5

    :goto_18
    move-object/from16 v14, p7

    move/from16 v19, v15

    move/from16 v20, v19

    move/from16 v21, v20

    move/from16 v22, v16

    :goto_19
    const/16 v23, 0x4

    goto/16 :goto_1c

    :cond_37
    move-object/from16 v14, p7

    move/from16 v19, v15

    move/from16 v20, v19

    move/from16 v21, v20

    move/from16 v22, v16

    const/4 v4, 0x5

    goto :goto_19

    :cond_38
    move/from16 v17, v14

    const/4 v15, 0x1

    move-object/from16 v14, p7

    move/from16 v22, v16

    const/4 v4, 0x5

    const/16 v19, 0x0

    const/16 v20, 0x0

    :goto_1a
    const/16 v21, 0x0

    goto :goto_19

    :cond_39
    move/from16 v17, v14

    const/4 v15, 0x1

    .line 70
    iget-boolean v4, v7, Lo/We;->f:Z

    if-eqz v4, :cond_3c

    iget-boolean v4, v6, Lo/We;->f:Z

    if-eqz v4, :cond_3c

    .line 71
    invoke-virtual/range {p10 .. p10}, Lo/x4;->e()I

    move-result v1

    .line 72
    invoke-virtual/range {p11 .. p11}, Lo/x4;->e()I

    move-result v3

    const/16 v4, 0x8

    move-object/from16 p17, p1

    move-object/from16 p18, v9

    move-object/from16 p19, v7

    move/from16 p20, v1

    move/from16 p21, p16

    move-object/from16 p22, v6

    move-object/from16 p23, v8

    move/from16 p24, v3

    move/from16 p25, v4

    .line 73
    invoke-virtual/range {p17 .. p25}, Lo/ba;->b(Lo/We;Lo/We;IFLo/We;Lo/We;II)V

    if-eqz p3, :cond_3b

    if-eqz v11, :cond_3b

    .line 74
    iget-object v1, v2, Lo/x4;->f:Lo/x4;

    if-eqz v1, :cond_3a

    .line 75
    invoke-virtual/range {p11 .. p11}, Lo/x4;->e()I

    move-result v5

    move-object/from16 v14, p7

    goto :goto_1b

    :cond_3a
    move-object/from16 v14, p7

    const/4 v5, 0x0

    :goto_1b
    if-eq v6, v14, :cond_3b

    const/4 v1, 0x5

    .line 76
    invoke-virtual {v10, v14, v8, v5, v1}, Lo/ba;->f(Lo/We;Lo/We;II)V

    :cond_3b
    return-void

    :cond_3c
    move-object/from16 v14, p7

    move/from16 v19, v15

    move/from16 v20, v19

    move/from16 v22, v16

    const/4 v4, 0x5

    goto :goto_1a

    :goto_1c
    if-eqz v20, :cond_3d

    if-ne v7, v6, :cond_3d

    if-eq v3, v13, :cond_3d

    const/16 v20, 0x0

    const/16 v25, 0x0

    goto :goto_1d

    :cond_3d
    move/from16 v25, v15

    :goto_1d
    if-eqz v19, :cond_3f

    if-nez v24, :cond_3e

    if-nez p18, :cond_3e

    if-nez p20, :cond_3e

    if-ne v7, v5, :cond_3e

    if-ne v6, v14, :cond_3e

    const/16 v19, 0x0

    const/16 v22, 0x8

    const/16 v25, 0x0

    const/16 v26, 0x8

    goto :goto_1e

    :cond_3e
    move/from16 v19, p3

    move/from16 v26, v22

    move/from16 v22, v4

    .line 77
    :goto_1e
    invoke-virtual/range {p10 .. p10}, Lo/x4;->e()I

    move-result v4

    .line 78
    invoke-virtual/range {p11 .. p11}, Lo/x4;->e()I

    move-result v27

    move-object v15, v1

    move-object/from16 v1, p1

    move-object v14, v2

    move-object v2, v9

    move/from16 p5, v11

    move-object v11, v3

    move-object v3, v7

    move/from16 p9, v12

    move-object v12, v5

    move/from16 v5, p16

    move-object/from16 p2, v6

    const/16 v28, 0x4

    const/16 v29, 0x1

    move-object v12, v7

    move-object v7, v8

    move-object/from16 p8, v13

    move-object v13, v8

    move/from16 v8, v27

    move-object/from16 v27, v13

    move-object v13, v9

    move/from16 v9, v26

    .line 79
    invoke-virtual/range {v1 .. v9}, Lo/ba;->b(Lo/We;Lo/We;IFLo/We;Lo/We;II)V

    move/from16 v4, v22

    :goto_1f
    move/from16 v6, v25

    goto :goto_20

    :cond_3f
    move-object v14, v2

    move-object/from16 p2, v6

    move-object/from16 v27, v8

    move/from16 p5, v11

    move/from16 p9, v12

    move-object/from16 p8, v13

    move/from16 v29, v15

    const/16 v28, 0x4

    move-object v15, v1

    move-object v11, v3

    move-object v12, v7

    move-object v13, v9

    move/from16 v19, p3

    goto :goto_1f

    .line 80
    :goto_20
    iget v1, v0, Lo/L4;->g0:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_42

    .line 81
    iget-object v1, v14, Lo/x4;->a:Ljava/util/HashSet;

    if-nez v1, :cond_40

    goto :goto_21

    .line 82
    :cond_40
    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v1

    if-lez v1, :cond_41

    goto :goto_22

    :cond_41
    :goto_21
    return-void

    :cond_42
    :goto_22
    move-object/from16 v1, p2

    if-eqz v20, :cond_45

    if-eqz v19, :cond_44

    if-eq v12, v1, :cond_44

    if-nez v24, :cond_44

    .line 83
    instance-of v2, v11, Lo/Q2;

    if-nez v2, :cond_43

    instance-of v2, v15, Lo/Q2;

    if-eqz v2, :cond_44

    :cond_43
    move/from16 v4, v16

    .line 84
    :cond_44
    invoke-virtual/range {p10 .. p10}, Lo/x4;->e()I

    move-result v2

    .line 85
    invoke-virtual {v10, v13, v12, v2, v4}, Lo/ba;->f(Lo/We;Lo/We;II)V

    .line 86
    invoke-virtual/range {p11 .. p11}, Lo/x4;->e()I

    move-result v2

    neg-int v2, v2

    move-object/from16 v3, v27

    invoke-virtual {v10, v3, v1, v2, v4}, Lo/ba;->g(Lo/We;Lo/We;II)V

    goto :goto_23

    :cond_45
    move-object/from16 v3, v27

    :goto_23
    if-eqz v19, :cond_46

    if-eqz p21, :cond_46

    .line 87
    instance-of v2, v11, Lo/Q2;

    if-nez v2, :cond_46

    instance-of v2, v15, Lo/Q2;

    if-nez v2, :cond_46

    move-object/from16 v2, p8

    if-eq v15, v2, :cond_47

    move/from16 v4, v16

    move v5, v4

    move/from16 v6, v29

    goto :goto_24

    :cond_46
    move-object/from16 v2, p8

    :cond_47
    move/from16 v5, v23

    :goto_24
    if-eqz v6, :cond_53

    if-eqz v21, :cond_50

    if-eqz p20, :cond_48

    if-eqz p4, :cond_50

    :cond_48
    if-eq v11, v2, :cond_4a

    if-ne v15, v2, :cond_49

    goto :goto_25

    :cond_49
    move/from16 v16, v5

    .line 88
    :cond_4a
    :goto_25
    instance-of v6, v11, Lo/X8;

    if-nez v6, :cond_4b

    instance-of v6, v15, Lo/X8;

    if-eqz v6, :cond_4c

    :cond_4b
    const/16 v16, 0x5

    .line 89
    :cond_4c
    instance-of v6, v11, Lo/Q2;

    if-nez v6, :cond_4d

    instance-of v6, v15, Lo/Q2;

    if-eqz v6, :cond_4e

    :cond_4d
    const/16 v16, 0x5

    :cond_4e
    if-eqz p20, :cond_4f

    const/4 v6, 0x5

    goto :goto_26

    :cond_4f
    move/from16 v6, v16

    .line 90
    :goto_26
    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    :cond_50
    move v6, v5

    if-eqz v19, :cond_52

    .line 91
    invoke-static {v4, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    if-eqz p17, :cond_52

    if-nez p20, :cond_52

    if-eq v11, v2, :cond_51

    if-ne v15, v2, :cond_52

    :cond_51
    move/from16 v6, v28

    .line 92
    :cond_52
    invoke-virtual/range {p10 .. p10}, Lo/x4;->e()I

    move-result v2

    .line 93
    invoke-virtual {v10, v13, v12, v2, v6}, Lo/ba;->e(Lo/We;Lo/We;II)V

    .line 94
    invoke-virtual/range {p11 .. p11}, Lo/x4;->e()I

    move-result v2

    neg-int v2, v2

    invoke-virtual {v10, v3, v1, v2, v6}, Lo/ba;->e(Lo/We;Lo/We;II)V

    :cond_53
    if-eqz v19, :cond_55

    move-object/from16 v2, p6

    move-object v4, v12

    if-ne v2, v4, :cond_54

    .line 95
    invoke-virtual/range {p10 .. p10}, Lo/x4;->e()I

    move-result v5

    goto :goto_27

    :cond_54
    const/4 v5, 0x0

    :goto_27
    if-eq v4, v2, :cond_55

    const/4 v4, 0x5

    .line 96
    invoke-virtual {v10, v13, v2, v5, v4}, Lo/ba;->f(Lo/We;Lo/We;II)V

    :cond_55
    if-eqz v19, :cond_56

    if-eqz v24, :cond_56

    if-nez p14, :cond_56

    if-nez p9, :cond_56

    if-eqz v24, :cond_57

    move/from16 v4, v17

    const/4 v2, 0x3

    if-ne v4, v2, :cond_57

    const/4 v2, 0x0

    const/16 v4, 0x8

    .line 97
    invoke-virtual {v10, v3, v13, v2, v4}, Lo/ba;->f(Lo/We;Lo/We;II)V

    :cond_56
    const/4 v4, 0x5

    goto :goto_28

    :cond_57
    const/4 v2, 0x0

    const/4 v4, 0x5

    .line 98
    invoke-virtual {v10, v3, v13, v2, v4}, Lo/ba;->f(Lo/We;Lo/We;II)V

    :goto_28
    move v11, v4

    goto :goto_2a

    :goto_29
    move/from16 v19, p3

    goto :goto_28

    :goto_2a
    if-eqz v19, :cond_59

    if-eqz p5, :cond_59

    .line 99
    iget-object v2, v14, Lo/x4;->f:Lo/x4;

    if-eqz v2, :cond_58

    .line 100
    invoke-virtual/range {p11 .. p11}, Lo/x4;->e()I

    move-result v5

    move-object/from16 v4, p7

    goto :goto_2b

    :cond_58
    move-object/from16 v4, p7

    const/4 v5, 0x0

    :goto_2b
    if-eq v1, v4, :cond_59

    .line 101
    invoke-virtual {v10, v4, v3, v5, v11}, Lo/ba;->f(Lo/We;Lo/We;II)V

    :cond_59
    return-void

    :cond_5a
    move-object/from16 v2, p6

    move-object/from16 v4, p7

    move-object v3, v8

    move-object v13, v9

    move/from16 p5, v11

    move/from16 v1, v23

    const/16 v29, 0x1

    const/4 v5, 0x2

    :goto_2c
    if-ge v1, v5, :cond_5f

    if-eqz p3, :cond_5f

    if-eqz p5, :cond_5f

    const/4 v1, 0x0

    const/16 v5, 0x8

    .line 102
    invoke-virtual {v10, v13, v2, v1, v5}, Lo/ba;->f(Lo/We;Lo/We;II)V

    .line 103
    iget-object v1, v0, Lo/L4;->M:Lo/x4;

    if-nez p2, :cond_5c

    iget-object v2, v1, Lo/x4;->f:Lo/x4;

    if-nez v2, :cond_5b

    goto :goto_2d

    :cond_5b
    const/4 v6, 0x0

    goto :goto_2e

    :cond_5c
    :goto_2d
    move/from16 v6, v29

    :goto_2e
    if-nez p2, :cond_5e

    .line 104
    iget-object v1, v1, Lo/x4;->f:Lo/x4;

    if-eqz v1, :cond_5e

    .line 105
    iget-object v1, v1, Lo/x4;->d:Lo/L4;

    iget v2, v1, Lo/L4;->W:F

    const/4 v5, 0x0

    cmpl-float v2, v2, v5

    if-eqz v2, :cond_5d

    iget-object v1, v1, Lo/L4;->p0:[I

    const/4 v2, 0x0

    aget v5, v1, v2

    const/4 v2, 0x3

    if-ne v5, v2, :cond_5d

    aget v1, v1, v29

    if-ne v1, v2, :cond_5d

    move/from16 v6, v29

    goto :goto_2f

    :cond_5d
    const/4 v6, 0x0

    :cond_5e
    :goto_2f
    if-eqz v6, :cond_5f

    const/4 v1, 0x0

    const/16 v2, 0x8

    .line 106
    invoke-virtual {v10, v4, v3, v1, v2}, Lo/ba;->f(Lo/We;Lo/We;II)V

    :cond_5f
    return-void
.end method

.method public final e(ILo/L4;II)V
    .locals 10

    .line 1
    const/4 v0, 0x7

    .line 2
    const/16 v1, 0x9

    .line 4
    const/16 v2, 0x8

    .line 6
    const/4 v3, 0x2

    .line 7
    const/4 v4, 0x3

    .line 8
    const/4 v5, 0x4

    .line 9
    const/4 v6, 0x5

    .line 10
    const/4 v7, 0x0

    .line 11
    if-ne p1, v0, :cond_c

    .line 13
    if-ne p3, v0, :cond_8

    .line 15
    invoke-virtual {p0, v3}, Lo/L4;->i(I)Lo/x4;

    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {p0, v5}, Lo/L4;->i(I)Lo/x4;

    .line 22
    move-result-object p3

    .line 23
    invoke-virtual {p0, v4}, Lo/L4;->i(I)Lo/x4;

    .line 26
    move-result-object p4

    .line 27
    invoke-virtual {p0, v6}, Lo/L4;->i(I)Lo/x4;

    .line 30
    move-result-object v8

    .line 31
    const/4 v9, 0x1

    .line 32
    if-eqz p1, :cond_0

    .line 34
    invoke-virtual {p1}, Lo/x4;->h()Z

    .line 37
    move-result p1

    .line 38
    if-nez p1, :cond_1

    .line 40
    :cond_0
    if-eqz p3, :cond_2

    .line 42
    invoke-virtual {p3}, Lo/x4;->h()Z

    .line 45
    move-result p1

    .line 46
    if-eqz p1, :cond_2

    .line 48
    :cond_1
    move p1, v7

    .line 49
    goto :goto_0

    .line 50
    :cond_2
    invoke-virtual {p0, v3, p2, v3, v7}, Lo/L4;->e(ILo/L4;II)V

    .line 53
    invoke-virtual {p0, v5, p2, v5, v7}, Lo/L4;->e(ILo/L4;II)V

    .line 56
    move p1, v9

    .line 57
    :goto_0
    if-eqz p4, :cond_3

    .line 59
    invoke-virtual {p4}, Lo/x4;->h()Z

    .line 62
    move-result p3

    .line 63
    if-nez p3, :cond_4

    .line 65
    :cond_3
    if-eqz v8, :cond_5

    .line 67
    invoke-virtual {v8}, Lo/x4;->h()Z

    .line 70
    move-result p3

    .line 71
    if-eqz p3, :cond_5

    .line 73
    :cond_4
    move v9, v7

    .line 74
    goto :goto_1

    .line 75
    :cond_5
    invoke-virtual {p0, v4, p2, v4, v7}, Lo/L4;->e(ILo/L4;II)V

    .line 78
    invoke-virtual {p0, v6, p2, v6, v7}, Lo/L4;->e(ILo/L4;II)V

    .line 81
    :goto_1
    if-eqz p1, :cond_6

    .line 83
    if-eqz v9, :cond_6

    .line 85
    invoke-virtual {p0, v0}, Lo/L4;->i(I)Lo/x4;

    .line 88
    move-result-object p1

    .line 89
    invoke-virtual {p2, v0}, Lo/L4;->i(I)Lo/x4;

    .line 92
    move-result-object p2

    .line 93
    invoke-virtual {p1, p2, v7}, Lo/x4;->a(Lo/x4;I)V

    .line 96
    goto/16 :goto_5

    .line 98
    :cond_6
    if-eqz p1, :cond_7

    .line 100
    invoke-virtual {p0, v2}, Lo/L4;->i(I)Lo/x4;

    .line 103
    move-result-object p1

    .line 104
    invoke-virtual {p2, v2}, Lo/L4;->i(I)Lo/x4;

    .line 107
    move-result-object p2

    .line 108
    invoke-virtual {p1, p2, v7}, Lo/x4;->a(Lo/x4;I)V

    .line 111
    goto/16 :goto_5

    .line 113
    :cond_7
    if-eqz v9, :cond_1c

    .line 115
    invoke-virtual {p0, v1}, Lo/L4;->i(I)Lo/x4;

    .line 118
    move-result-object p1

    .line 119
    invoke-virtual {p2, v1}, Lo/L4;->i(I)Lo/x4;

    .line 122
    move-result-object p2

    .line 123
    invoke-virtual {p1, p2, v7}, Lo/x4;->a(Lo/x4;I)V

    .line 126
    goto/16 :goto_5

    .line 128
    :cond_8
    if-eq p3, v3, :cond_b

    .line 130
    if-ne p3, v5, :cond_9

    .line 132
    goto :goto_2

    .line 133
    :cond_9
    if-eq p3, v4, :cond_a

    .line 135
    if-ne p3, v6, :cond_1c

    .line 137
    :cond_a
    invoke-virtual {p0, v4, p2, p3, v7}, Lo/L4;->e(ILo/L4;II)V

    .line 140
    invoke-virtual {p0, v6, p2, p3, v7}, Lo/L4;->e(ILo/L4;II)V

    .line 143
    invoke-virtual {p0, v0}, Lo/L4;->i(I)Lo/x4;

    .line 146
    move-result-object p1

    .line 147
    invoke-virtual {p2, p3}, Lo/L4;->i(I)Lo/x4;

    .line 150
    move-result-object p2

    .line 151
    invoke-virtual {p1, p2, v7}, Lo/x4;->a(Lo/x4;I)V

    .line 154
    goto/16 :goto_5

    .line 156
    :cond_b
    :goto_2
    invoke-virtual {p0, v3, p2, p3, v7}, Lo/L4;->e(ILo/L4;II)V

    .line 159
    invoke-virtual {p0, v5, p2, p3, v7}, Lo/L4;->e(ILo/L4;II)V

    .line 162
    invoke-virtual {p0, v0}, Lo/L4;->i(I)Lo/x4;

    .line 165
    move-result-object p1

    .line 166
    invoke-virtual {p2, p3}, Lo/L4;->i(I)Lo/x4;

    .line 169
    move-result-object p2

    .line 170
    invoke-virtual {p1, p2, v7}, Lo/x4;->a(Lo/x4;I)V

    .line 173
    goto/16 :goto_5

    .line 175
    :cond_c
    if-ne p1, v2, :cond_e

    .line 177
    if-eq p3, v3, :cond_d

    .line 179
    if-ne p3, v5, :cond_e

    .line 181
    :cond_d
    invoke-virtual {p0, v3}, Lo/L4;->i(I)Lo/x4;

    .line 184
    move-result-object p1

    .line 185
    invoke-virtual {p2, p3}, Lo/L4;->i(I)Lo/x4;

    .line 188
    move-result-object p2

    .line 189
    invoke-virtual {p0, v5}, Lo/L4;->i(I)Lo/x4;

    .line 192
    move-result-object p3

    .line 193
    invoke-virtual {p1, p2, v7}, Lo/x4;->a(Lo/x4;I)V

    .line 196
    invoke-virtual {p3, p2, v7}, Lo/x4;->a(Lo/x4;I)V

    .line 199
    invoke-virtual {p0, v2}, Lo/L4;->i(I)Lo/x4;

    .line 202
    move-result-object p1

    .line 203
    invoke-virtual {p1, p2, v7}, Lo/x4;->a(Lo/x4;I)V

    .line 206
    goto/16 :goto_5

    .line 208
    :cond_e
    if-ne p1, v1, :cond_10

    .line 210
    if-eq p3, v4, :cond_f

    .line 212
    if-ne p3, v6, :cond_10

    .line 214
    :cond_f
    invoke-virtual {p2, p3}, Lo/L4;->i(I)Lo/x4;

    .line 217
    move-result-object p1

    .line 218
    invoke-virtual {p0, v4}, Lo/L4;->i(I)Lo/x4;

    .line 221
    move-result-object p2

    .line 222
    invoke-virtual {p2, p1, v7}, Lo/x4;->a(Lo/x4;I)V

    .line 225
    invoke-virtual {p0, v6}, Lo/L4;->i(I)Lo/x4;

    .line 228
    move-result-object p2

    .line 229
    invoke-virtual {p2, p1, v7}, Lo/x4;->a(Lo/x4;I)V

    .line 232
    invoke-virtual {p0, v1}, Lo/L4;->i(I)Lo/x4;

    .line 235
    move-result-object p2

    .line 236
    invoke-virtual {p2, p1, v7}, Lo/x4;->a(Lo/x4;I)V

    .line 239
    goto/16 :goto_5

    .line 241
    :cond_10
    if-ne p1, v2, :cond_11

    .line 243
    if-ne p3, v2, :cond_11

    .line 245
    invoke-virtual {p0, v3}, Lo/L4;->i(I)Lo/x4;

    .line 248
    move-result-object p1

    .line 249
    invoke-virtual {p2, v3}, Lo/L4;->i(I)Lo/x4;

    .line 252
    move-result-object p4

    .line 253
    invoke-virtual {p1, p4, v7}, Lo/x4;->a(Lo/x4;I)V

    .line 256
    invoke-virtual {p0, v5}, Lo/L4;->i(I)Lo/x4;

    .line 259
    move-result-object p1

    .line 260
    invoke-virtual {p2, v5}, Lo/L4;->i(I)Lo/x4;

    .line 263
    move-result-object p4

    .line 264
    invoke-virtual {p1, p4, v7}, Lo/x4;->a(Lo/x4;I)V

    .line 267
    invoke-virtual {p0, v2}, Lo/L4;->i(I)Lo/x4;

    .line 270
    move-result-object p1

    .line 271
    invoke-virtual {p2, p3}, Lo/L4;->i(I)Lo/x4;

    .line 274
    move-result-object p2

    .line 275
    invoke-virtual {p1, p2, v7}, Lo/x4;->a(Lo/x4;I)V

    .line 278
    goto/16 :goto_5

    .line 280
    :cond_11
    if-ne p1, v1, :cond_12

    .line 282
    if-ne p3, v1, :cond_12

    .line 284
    invoke-virtual {p0, v4}, Lo/L4;->i(I)Lo/x4;

    .line 287
    move-result-object p1

    .line 288
    invoke-virtual {p2, v4}, Lo/L4;->i(I)Lo/x4;

    .line 291
    move-result-object p4

    .line 292
    invoke-virtual {p1, p4, v7}, Lo/x4;->a(Lo/x4;I)V

    .line 295
    invoke-virtual {p0, v6}, Lo/L4;->i(I)Lo/x4;

    .line 298
    move-result-object p1

    .line 299
    invoke-virtual {p2, v6}, Lo/L4;->i(I)Lo/x4;

    .line 302
    move-result-object p4

    .line 303
    invoke-virtual {p1, p4, v7}, Lo/x4;->a(Lo/x4;I)V

    .line 306
    invoke-virtual {p0, v1}, Lo/L4;->i(I)Lo/x4;

    .line 309
    move-result-object p1

    .line 310
    invoke-virtual {p2, p3}, Lo/L4;->i(I)Lo/x4;

    .line 313
    move-result-object p2

    .line 314
    invoke-virtual {p1, p2, v7}, Lo/x4;->a(Lo/x4;I)V

    .line 317
    goto/16 :goto_5

    .line 319
    :cond_12
    invoke-virtual {p0, p1}, Lo/L4;->i(I)Lo/x4;

    .line 322
    move-result-object v7

    .line 323
    invoke-virtual {p2, p3}, Lo/L4;->i(I)Lo/x4;

    .line 326
    move-result-object p2

    .line 327
    invoke-virtual {v7, p2}, Lo/x4;->i(Lo/x4;)Z

    .line 330
    move-result p3

    .line 331
    if-eqz p3, :cond_1c

    .line 333
    const/4 p3, 0x6

    .line 334
    if-ne p1, p3, :cond_14

    .line 336
    invoke-virtual {p0, v4}, Lo/L4;->i(I)Lo/x4;

    .line 339
    move-result-object p1

    .line 340
    invoke-virtual {p0, v6}, Lo/L4;->i(I)Lo/x4;

    .line 343
    move-result-object p3

    .line 344
    if-eqz p1, :cond_13

    .line 346
    invoke-virtual {p1}, Lo/x4;->j()V

    .line 349
    :cond_13
    if-eqz p3, :cond_1b

    .line 351
    invoke-virtual {p3}, Lo/x4;->j()V

    .line 354
    goto :goto_4

    .line 355
    :cond_14
    if-eq p1, v4, :cond_18

    .line 357
    if-ne p1, v6, :cond_15

    .line 359
    goto :goto_3

    .line 360
    :cond_15
    if-eq p1, v3, :cond_16

    .line 362
    if-ne p1, v5, :cond_1b

    .line 364
    :cond_16
    invoke-virtual {p0, v0}, Lo/L4;->i(I)Lo/x4;

    .line 367
    move-result-object p3

    .line 368
    iget-object v0, p3, Lo/x4;->f:Lo/x4;

    .line 370
    if-eq v0, p2, :cond_17

    .line 372
    invoke-virtual {p3}, Lo/x4;->j()V

    .line 375
    :cond_17
    invoke-virtual {p0, p1}, Lo/L4;->i(I)Lo/x4;

    .line 378
    move-result-object p1

    .line 379
    invoke-virtual {p1}, Lo/x4;->f()Lo/x4;

    .line 382
    move-result-object p1

    .line 383
    invoke-virtual {p0, v2}, Lo/L4;->i(I)Lo/x4;

    .line 386
    move-result-object p3

    .line 387
    invoke-virtual {p3}, Lo/x4;->h()Z

    .line 390
    move-result v0

    .line 391
    if-eqz v0, :cond_1b

    .line 393
    invoke-virtual {p1}, Lo/x4;->j()V

    .line 396
    invoke-virtual {p3}, Lo/x4;->j()V

    .line 399
    goto :goto_4

    .line 400
    :cond_18
    :goto_3
    invoke-virtual {p0, p3}, Lo/L4;->i(I)Lo/x4;

    .line 403
    move-result-object p3

    .line 404
    if-eqz p3, :cond_19

    .line 406
    invoke-virtual {p3}, Lo/x4;->j()V

    .line 409
    :cond_19
    invoke-virtual {p0, v0}, Lo/L4;->i(I)Lo/x4;

    .line 412
    move-result-object p3

    .line 413
    iget-object v0, p3, Lo/x4;->f:Lo/x4;

    .line 415
    if-eq v0, p2, :cond_1a

    .line 417
    invoke-virtual {p3}, Lo/x4;->j()V

    .line 420
    :cond_1a
    invoke-virtual {p0, p1}, Lo/L4;->i(I)Lo/x4;

    .line 423
    move-result-object p1

    .line 424
    invoke-virtual {p1}, Lo/x4;->f()Lo/x4;

    .line 427
    move-result-object p1

    .line 428
    invoke-virtual {p0, v1}, Lo/L4;->i(I)Lo/x4;

    .line 431
    move-result-object p3

    .line 432
    invoke-virtual {p3}, Lo/x4;->h()Z

    .line 435
    move-result v0

    .line 436
    if-eqz v0, :cond_1b

    .line 438
    invoke-virtual {p1}, Lo/x4;->j()V

    .line 441
    invoke-virtual {p3}, Lo/x4;->j()V

    .line 444
    :cond_1b
    :goto_4
    invoke-virtual {v7, p2, p4}, Lo/x4;->a(Lo/x4;I)V

    .line 447
    :cond_1c
    :goto_5
    return-void
.end method

.method public final f(Lo/x4;Lo/x4;I)V
    .locals 1

    .line 1
    iget-object v0, p1, Lo/x4;->d:Lo/L4;

    .line 3
    if-ne v0, p0, :cond_0

    .line 5
    iget-object v0, p2, Lo/x4;->d:Lo/L4;

    .line 7
    iget p1, p1, Lo/x4;->e:I

    .line 9
    iget p2, p2, Lo/x4;->e:I

    .line 11
    invoke-virtual {p0, p1, v0, p2, p3}, Lo/L4;->e(ILo/L4;II)V

    .line 14
    :cond_0
    return-void
.end method

.method public final g(Lo/ba;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lo/L4;->I:Lo/x4;

    .line 3
    invoke-virtual {p1, v0}, Lo/ba;->k(Ljava/lang/Object;)Lo/We;

    .line 6
    iget-object v0, p0, Lo/L4;->J:Lo/x4;

    .line 8
    invoke-virtual {p1, v0}, Lo/ba;->k(Ljava/lang/Object;)Lo/We;

    .line 11
    iget-object v0, p0, Lo/L4;->K:Lo/x4;

    .line 13
    invoke-virtual {p1, v0}, Lo/ba;->k(Ljava/lang/Object;)Lo/We;

    .line 16
    iget-object v0, p0, Lo/L4;->L:Lo/x4;

    .line 18
    invoke-virtual {p1, v0}, Lo/ba;->k(Ljava/lang/Object;)Lo/We;

    .line 21
    iget v0, p0, Lo/L4;->a0:I

    .line 23
    if-lez v0, :cond_0

    .line 25
    iget-object v0, p0, Lo/L4;->M:Lo/x4;

    .line 27
    invoke-virtual {p1, v0}, Lo/ba;->k(Ljava/lang/Object;)Lo/We;

    .line 30
    :cond_0
    return-void
.end method

.method public final h()V
    .locals 4

    .line 1
    iget-object v0, p0, Lo/L4;->d:Lo/c9;

    .line 3
    if-nez v0, :cond_0

    .line 5
    new-instance v0, Lo/c9;

    .line 7
    invoke-direct {v0, p0}, Lo/mi;-><init>(Lo/L4;)V

    .line 10
    iget-object v1, v0, Lo/mi;->h:Lo/P5;

    .line 12
    const/4 v2, 0x4

    .line 13
    iput v2, v1, Lo/P5;->e:I

    .line 15
    iget-object v1, v0, Lo/mi;->i:Lo/P5;

    .line 17
    const/4 v2, 0x5

    .line 18
    iput v2, v1, Lo/P5;->e:I

    .line 20
    const/4 v1, 0x0

    .line 21
    iput v1, v0, Lo/mi;->f:I

    .line 23
    iput-object v0, p0, Lo/L4;->d:Lo/c9;

    .line 25
    :cond_0
    iget-object v0, p0, Lo/L4;->e:Lo/oh;

    .line 27
    if-nez v0, :cond_1

    .line 29
    new-instance v0, Lo/oh;

    .line 31
    invoke-direct {v0, p0}, Lo/mi;-><init>(Lo/L4;)V

    .line 34
    new-instance v1, Lo/P5;

    .line 36
    invoke-direct {v1, v0}, Lo/P5;-><init>(Lo/mi;)V

    .line 39
    iput-object v1, v0, Lo/oh;->k:Lo/P5;

    .line 41
    const/4 v2, 0x0

    .line 42
    iput-object v2, v0, Lo/oh;->l:Lo/b3;

    .line 44
    iget-object v2, v0, Lo/mi;->h:Lo/P5;

    .line 46
    const/4 v3, 0x6

    .line 47
    iput v3, v2, Lo/P5;->e:I

    .line 49
    iget-object v2, v0, Lo/mi;->i:Lo/P5;

    .line 51
    const/4 v3, 0x7

    .line 52
    iput v3, v2, Lo/P5;->e:I

    .line 54
    const/16 v2, 0x8

    .line 56
    iput v2, v1, Lo/P5;->e:I

    .line 58
    const/4 v1, 0x1

    .line 59
    iput v1, v0, Lo/mi;->f:I

    .line 61
    iput-object v0, p0, Lo/L4;->e:Lo/oh;

    .line 63
    :cond_1
    return-void
.end method

.method public i(I)Lo/x4;
    .locals 1

    .line 1
    invoke-static {p1}, Lo/Ve;->C(I)I

    .line 4
    move-result v0

    .line 5
    packed-switch v0, :pswitch_data_0

    .line 8
    new-instance v0, Ljava/lang/AssertionError;

    .line 10
    invoke-static {p1}, Lo/Ve;->B(I)Ljava/lang/String;

    .line 13
    move-result-object p1

    .line 14
    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 17
    throw v0

    .line 18
    :pswitch_0
    iget-object p1, p0, Lo/L4;->O:Lo/x4;

    .line 20
    return-object p1

    .line 21
    :pswitch_1
    iget-object p1, p0, Lo/L4;->N:Lo/x4;

    .line 23
    return-object p1

    .line 24
    :pswitch_2
    iget-object p1, p0, Lo/L4;->P:Lo/x4;

    .line 26
    return-object p1

    .line 27
    :pswitch_3
    iget-object p1, p0, Lo/L4;->M:Lo/x4;

    .line 29
    return-object p1

    .line 30
    :pswitch_4
    iget-object p1, p0, Lo/L4;->L:Lo/x4;

    .line 32
    return-object p1

    .line 33
    :pswitch_5
    iget-object p1, p0, Lo/L4;->K:Lo/x4;

    .line 35
    return-object p1

    .line 36
    :pswitch_6
    iget-object p1, p0, Lo/L4;->J:Lo/x4;

    .line 38
    return-object p1

    .line 39
    :pswitch_7
    iget-object p1, p0, Lo/L4;->I:Lo/x4;

    .line 41
    return-object p1

    .line 42
    :pswitch_8
    const/4 p1, 0x0

    .line 43
    return-object p1

    nop

    .line 45
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final j(I)I
    .locals 3

    .line 1
    iget-object v0, p0, Lo/L4;->p0:[I

    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez p1, :cond_0

    .line 6
    aget p1, v0, v1

    .line 8
    return p1

    .line 9
    :cond_0
    const/4 v2, 0x1

    .line 10
    if-ne p1, v2, :cond_1

    .line 12
    aget p1, v0, v2

    .line 14
    return p1

    .line 15
    :cond_1
    return v1
.end method

.method public final k()I
    .locals 2

    .line 1
    iget v0, p0, Lo/L4;->g0:I

    .line 3
    const/16 v1, 0x8

    .line 5
    if-ne v0, v1, :cond_0

    .line 7
    const/4 v0, 0x0

    .line 8
    return v0

    .line 9
    :cond_0
    iget v0, p0, Lo/L4;->V:I

    .line 11
    return v0
.end method

.method public final l(I)Lo/L4;
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 3
    iget-object p1, p0, Lo/L4;->K:Lo/x4;

    .line 5
    iget-object v0, p1, Lo/x4;->f:Lo/x4;

    .line 7
    if-eqz v0, :cond_1

    .line 9
    iget-object v1, v0, Lo/x4;->f:Lo/x4;

    .line 11
    if-ne v1, p1, :cond_1

    .line 13
    iget-object p1, v0, Lo/x4;->d:Lo/L4;

    .line 15
    return-object p1

    .line 16
    :cond_0
    const/4 v0, 0x1

    .line 17
    if-ne p1, v0, :cond_1

    .line 19
    iget-object p1, p0, Lo/L4;->L:Lo/x4;

    .line 21
    iget-object v0, p1, Lo/x4;->f:Lo/x4;

    .line 23
    if-eqz v0, :cond_1

    .line 25
    iget-object v1, v0, Lo/x4;->f:Lo/x4;

    .line 27
    if-ne v1, p1, :cond_1

    .line 29
    iget-object p1, v0, Lo/x4;->d:Lo/L4;

    .line 31
    return-object p1

    .line 32
    :cond_1
    const/4 p1, 0x0

    .line 33
    return-object p1
.end method

.method public final m(I)Lo/L4;
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 3
    iget-object p1, p0, Lo/L4;->I:Lo/x4;

    .line 5
    iget-object v0, p1, Lo/x4;->f:Lo/x4;

    .line 7
    if-eqz v0, :cond_1

    .line 9
    iget-object v1, v0, Lo/x4;->f:Lo/x4;

    .line 11
    if-ne v1, p1, :cond_1

    .line 13
    iget-object p1, v0, Lo/x4;->d:Lo/L4;

    .line 15
    return-object p1

    .line 16
    :cond_0
    const/4 v0, 0x1

    .line 17
    if-ne p1, v0, :cond_1

    .line 19
    iget-object p1, p0, Lo/L4;->J:Lo/x4;

    .line 21
    iget-object v0, p1, Lo/x4;->f:Lo/x4;

    .line 23
    if-eqz v0, :cond_1

    .line 25
    iget-object v1, v0, Lo/x4;->f:Lo/x4;

    .line 27
    if-ne v1, p1, :cond_1

    .line 29
    iget-object p1, v0, Lo/x4;->d:Lo/L4;

    .line 31
    return-object p1

    .line 32
    :cond_1
    const/4 p1, 0x0

    .line 33
    return-object p1
.end method

.method public n(Ljava/lang/StringBuilder;)V
    .locals 15

    .line 1
    move-object v0, p0

    .line 2
    move-object/from16 v10, p1

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    const-string v2, "  "

    .line 8
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    iget-object v2, v0, Lo/L4;->j:Ljava/lang/String;

    .line 13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    const-string v2, ":{\n"

    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    new-instance v1, Ljava/lang/StringBuilder;

    .line 30
    const-string v2, "    actualWidth:"

    .line 32
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    iget v2, v0, Lo/L4;->U:I

    .line 37
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 40
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    move-result-object v1

    .line 44
    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    const-string v1, "\n"

    .line 49
    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    new-instance v2, Ljava/lang/StringBuilder;

    .line 54
    const-string v3, "    actualHeight:"

    .line 56
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 59
    iget v3, v0, Lo/L4;->V:I

    .line 61
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 64
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    move-result-object v2

    .line 68
    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    new-instance v2, Ljava/lang/StringBuilder;

    .line 76
    const-string v3, "    actualLeft:"

    .line 78
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 81
    iget v3, v0, Lo/L4;->Y:I

    .line 83
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 86
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    move-result-object v2

    .line 90
    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    new-instance v2, Ljava/lang/StringBuilder;

    .line 98
    const-string v3, "    actualTop:"

    .line 100
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 103
    iget v3, v0, Lo/L4;->Z:I

    .line 105
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 108
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    move-result-object v2

    .line 112
    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    const-string v1, "left"

    .line 120
    iget-object v2, v0, Lo/L4;->I:Lo/x4;

    .line 122
    invoke-static {v10, v1, v2}, Lo/L4;->p(Ljava/lang/StringBuilder;Ljava/lang/String;Lo/x4;)V

    .line 125
    const-string v1, "top"

    .line 127
    iget-object v2, v0, Lo/L4;->J:Lo/x4;

    .line 129
    invoke-static {v10, v1, v2}, Lo/L4;->p(Ljava/lang/StringBuilder;Ljava/lang/String;Lo/x4;)V

    .line 132
    const-string v1, "right"

    .line 134
    iget-object v2, v0, Lo/L4;->K:Lo/x4;

    .line 136
    invoke-static {v10, v1, v2}, Lo/L4;->p(Ljava/lang/StringBuilder;Ljava/lang/String;Lo/x4;)V

    .line 139
    const-string v1, "bottom"

    .line 141
    iget-object v2, v0, Lo/L4;->L:Lo/x4;

    .line 143
    invoke-static {v10, v1, v2}, Lo/L4;->p(Ljava/lang/StringBuilder;Ljava/lang/String;Lo/x4;)V

    .line 146
    const-string v1, "baseline"

    .line 148
    iget-object v2, v0, Lo/L4;->M:Lo/x4;

    .line 150
    invoke-static {v10, v1, v2}, Lo/L4;->p(Ljava/lang/StringBuilder;Ljava/lang/String;Lo/x4;)V

    .line 153
    const-string v1, "centerX"

    .line 155
    iget-object v2, v0, Lo/L4;->N:Lo/x4;

    .line 157
    invoke-static {v10, v1, v2}, Lo/L4;->p(Ljava/lang/StringBuilder;Ljava/lang/String;Lo/x4;)V

    .line 160
    const-string v1, "centerY"

    .line 162
    iget-object v2, v0, Lo/L4;->O:Lo/x4;

    .line 164
    invoke-static {v10, v1, v2}, Lo/L4;->p(Ljava/lang/StringBuilder;Ljava/lang/String;Lo/x4;)V

    .line 167
    iget v3, v0, Lo/L4;->U:I

    .line 169
    iget v4, v0, Lo/L4;->b0:I

    .line 171
    iget-object v11, v0, Lo/L4;->C:[I

    .line 173
    const/4 v12, 0x0

    .line 174
    aget v5, v11, v12

    .line 176
    iget v6, v0, Lo/L4;->u:I

    .line 178
    iget v7, v0, Lo/L4;->r:I

    .line 180
    iget v8, v0, Lo/L4;->w:F

    .line 182
    iget-object v13, v0, Lo/L4;->p0:[I

    .line 184
    aget v9, v13, v12

    .line 186
    iget-object v14, v0, Lo/L4;->k0:[F

    .line 188
    aget v1, v14, v12

    .line 190
    const-string v2, "    width"

    .line 192
    move-object/from16 v1, p1

    .line 194
    invoke-static/range {v1 .. v9}, Lo/L4;->o(Ljava/lang/StringBuilder;Ljava/lang/String;IIIIIFI)V

    .line 197
    iget v3, v0, Lo/L4;->V:I

    .line 199
    iget v4, v0, Lo/L4;->c0:I

    .line 201
    const/4 v1, 0x1

    .line 202
    aget v5, v11, v1

    .line 204
    iget v6, v0, Lo/L4;->x:I

    .line 206
    iget v7, v0, Lo/L4;->s:I

    .line 208
    iget v8, v0, Lo/L4;->z:F

    .line 210
    aget v9, v13, v1

    .line 212
    aget v1, v14, v1

    .line 214
    const-string v2, "    height"

    .line 216
    move-object/from16 v1, p1

    .line 218
    invoke-static/range {v1 .. v9}, Lo/L4;->o(Ljava/lang/StringBuilder;Ljava/lang/String;IIIIIFI)V

    .line 221
    iget v1, v0, Lo/L4;->W:F

    .line 223
    iget v2, v0, Lo/L4;->X:I

    .line 225
    const/4 v3, 0x0

    .line 226
    cmpl-float v3, v1, v3

    .line 228
    if-nez v3, :cond_0

    .line 230
    goto :goto_0

    .line 231
    :cond_0
    const-string v3, "    dimensionRatio"

    .line 233
    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    const-string v3, " :  ["

    .line 238
    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 244
    const-string v1, ","

    .line 246
    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 252
    const-string v1, ""

    .line 254
    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    const-string v1, "],\n"

    .line 259
    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    :goto_0
    iget v1, v0, Lo/L4;->d0:F

    .line 264
    const-string v2, "    horizontalBias"

    .line 266
    const/high16 v3, 0x3f000000    # 0.5f

    .line 268
    invoke-static {v10, v2, v1, v3}, Lo/L4;->H(Ljava/lang/StringBuilder;Ljava/lang/String;FF)V

    .line 271
    const-string v1, "    verticalBias"

    .line 273
    iget v2, v0, Lo/L4;->e0:F

    .line 275
    invoke-static {v10, v1, v2, v3}, Lo/L4;->H(Ljava/lang/StringBuilder;Ljava/lang/String;FF)V

    .line 278
    const-string v1, "    horizontalChainStyle"

    .line 280
    iget v2, v0, Lo/L4;->i0:I

    .line 282
    invoke-static {v2, v12, v1, v10}, Lo/L4;->G(IILjava/lang/String;Ljava/lang/StringBuilder;)V

    .line 285
    const-string v1, "    verticalChainStyle"

    .line 287
    iget v2, v0, Lo/L4;->j0:I

    .line 289
    invoke-static {v2, v12, v1, v10}, Lo/L4;->G(IILjava/lang/String;Ljava/lang/StringBuilder;)V

    .line 292
    const-string v1, "  }"

    .line 294
    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    return-void
.end method

.method public final q()I
    .locals 2

    .line 1
    iget v0, p0, Lo/L4;->g0:I

    .line 3
    const/16 v1, 0x8

    .line 5
    if-ne v0, v1, :cond_0

    .line 7
    const/4 v0, 0x0

    .line 8
    return v0

    .line 9
    :cond_0
    iget v0, p0, Lo/L4;->U:I

    .line 11
    return v0
.end method

.method public final r()I
    .locals 2

    .line 1
    iget-object v0, p0, Lo/L4;->T:Lo/L4;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    instance-of v1, v0, Lo/M4;

    .line 7
    if-eqz v1, :cond_0

    .line 9
    check-cast v0, Lo/M4;

    .line 11
    iget v0, v0, Lo/M4;->x0:I

    .line 13
    iget v1, p0, Lo/L4;->Y:I

    .line 15
    add-int/2addr v0, v1

    .line 16
    return v0

    .line 17
    :cond_0
    iget v0, p0, Lo/L4;->Y:I

    .line 19
    return v0
.end method

.method public final s()I
    .locals 2

    .line 1
    iget-object v0, p0, Lo/L4;->T:Lo/L4;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    instance-of v1, v0, Lo/M4;

    .line 7
    if-eqz v1, :cond_0

    .line 9
    check-cast v0, Lo/M4;

    .line 11
    iget v0, v0, Lo/M4;->y0:I

    .line 13
    iget v1, p0, Lo/L4;->Z:I

    .line 15
    add-int/2addr v0, v1

    .line 16
    return v0

    .line 17
    :cond_0
    iget v0, p0, Lo/L4;->Z:I

    .line 19
    return v0
.end method

.method public final t(I)Z
    .locals 4

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x1

    .line 4
    if-nez p1, :cond_3

    .line 6
    iget-object p1, p0, Lo/L4;->I:Lo/x4;

    .line 8
    iget-object p1, p1, Lo/x4;->f:Lo/x4;

    .line 10
    if-eqz p1, :cond_0

    .line 12
    move p1, v2

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    move p1, v1

    .line 15
    :goto_0
    iget-object v3, p0, Lo/L4;->K:Lo/x4;

    .line 17
    iget-object v3, v3, Lo/x4;->f:Lo/x4;

    .line 19
    if-eqz v3, :cond_1

    .line 21
    move v3, v2

    .line 22
    goto :goto_1

    .line 23
    :cond_1
    move v3, v1

    .line 24
    :goto_1
    add-int/2addr p1, v3

    .line 25
    if-ge p1, v0, :cond_2

    .line 27
    move v1, v2

    .line 28
    :cond_2
    return v1

    .line 29
    :cond_3
    iget-object p1, p0, Lo/L4;->J:Lo/x4;

    .line 31
    iget-object p1, p1, Lo/x4;->f:Lo/x4;

    .line 33
    if-eqz p1, :cond_4

    .line 35
    move p1, v2

    .line 36
    goto :goto_2

    .line 37
    :cond_4
    move p1, v1

    .line 38
    :goto_2
    iget-object v3, p0, Lo/L4;->L:Lo/x4;

    .line 40
    iget-object v3, v3, Lo/x4;->f:Lo/x4;

    .line 42
    if-eqz v3, :cond_5

    .line 44
    move v3, v2

    .line 45
    goto :goto_3

    .line 46
    :cond_5
    move v3, v1

    .line 47
    :goto_3
    add-int/2addr p1, v3

    .line 48
    iget-object v3, p0, Lo/L4;->M:Lo/x4;

    .line 50
    iget-object v3, v3, Lo/x4;->f:Lo/x4;

    .line 52
    if-eqz v3, :cond_6

    .line 54
    move v3, v2

    .line 55
    goto :goto_4

    .line 56
    :cond_6
    move v3, v1

    .line 57
    :goto_4
    add-int/2addr p1, v3

    .line 58
    if-ge p1, v0, :cond_7

    .line 60
    move v1, v2

    .line 61
    :cond_7
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    const-string v0, ""

    .line 3
    invoke-static {v0}, Lo/Ve;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    move-result-object v1

    .line 7
    iget-object v2, p0, Lo/L4;->h0:Ljava/lang/String;

    .line 9
    if-eqz v2, :cond_0

    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    .line 13
    const-string v2, "id: "

    .line 15
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    iget-object v2, p0, Lo/L4;->h0:Ljava/lang/String;

    .line 20
    const-string v3, " "

    .line 22
    invoke-static {v0, v2, v3}, Lo/Ve;->k(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 25
    move-result-object v0

    .line 26
    :cond_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    const-string v0, "("

    .line 31
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    iget v0, p0, Lo/L4;->Y:I

    .line 36
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 39
    const-string v0, ", "

    .line 41
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    iget v0, p0, Lo/L4;->Z:I

    .line 46
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 49
    const-string v0, ") - ("

    .line 51
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    iget v0, p0, Lo/L4;->U:I

    .line 56
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 59
    const-string v0, " x "

    .line 61
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    iget v0, p0, Lo/L4;->V:I

    .line 66
    const-string v2, ")"

    .line 68
    invoke-static {v1, v0, v2}, Lo/Ve;->j(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 71
    move-result-object v0

    .line 72
    return-object v0
.end method

.method public final u(II)Z
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    if-nez p1, :cond_1

    .line 5
    iget-object p1, p0, Lo/L4;->I:Lo/x4;

    .line 7
    iget-object v2, p1, Lo/x4;->f:Lo/x4;

    .line 9
    if-eqz v2, :cond_3

    .line 11
    iget-boolean v2, v2, Lo/x4;->c:Z

    .line 13
    if-eqz v2, :cond_3

    .line 15
    iget-object v2, p0, Lo/L4;->K:Lo/x4;

    .line 17
    iget-object v3, v2, Lo/x4;->f:Lo/x4;

    .line 19
    if-eqz v3, :cond_3

    .line 21
    iget-boolean v4, v3, Lo/x4;->c:Z

    .line 23
    if-eqz v4, :cond_3

    .line 25
    invoke-virtual {v3}, Lo/x4;->d()I

    .line 28
    move-result v3

    .line 29
    invoke-virtual {v2}, Lo/x4;->e()I

    .line 32
    move-result v2

    .line 33
    sub-int/2addr v3, v2

    .line 34
    iget-object v2, p1, Lo/x4;->f:Lo/x4;

    .line 36
    invoke-virtual {v2}, Lo/x4;->d()I

    .line 39
    move-result v2

    .line 40
    invoke-virtual {p1}, Lo/x4;->e()I

    .line 43
    move-result p1

    .line 44
    add-int/2addr p1, v2

    .line 45
    sub-int/2addr v3, p1

    .line 46
    if-lt v3, p2, :cond_0

    .line 48
    goto :goto_0

    .line 49
    :cond_0
    move v0, v1

    .line 50
    :goto_0
    return v0

    .line 51
    :cond_1
    iget-object p1, p0, Lo/L4;->J:Lo/x4;

    .line 53
    iget-object v2, p1, Lo/x4;->f:Lo/x4;

    .line 55
    if-eqz v2, :cond_3

    .line 57
    iget-boolean v2, v2, Lo/x4;->c:Z

    .line 59
    if-eqz v2, :cond_3

    .line 61
    iget-object v2, p0, Lo/L4;->L:Lo/x4;

    .line 63
    iget-object v3, v2, Lo/x4;->f:Lo/x4;

    .line 65
    if-eqz v3, :cond_3

    .line 67
    iget-boolean v4, v3, Lo/x4;->c:Z

    .line 69
    if-eqz v4, :cond_3

    .line 71
    invoke-virtual {v3}, Lo/x4;->d()I

    .line 74
    move-result v3

    .line 75
    invoke-virtual {v2}, Lo/x4;->e()I

    .line 78
    move-result v2

    .line 79
    sub-int/2addr v3, v2

    .line 80
    iget-object v2, p1, Lo/x4;->f:Lo/x4;

    .line 82
    invoke-virtual {v2}, Lo/x4;->d()I

    .line 85
    move-result v2

    .line 86
    invoke-virtual {p1}, Lo/x4;->e()I

    .line 89
    move-result p1

    .line 90
    add-int/2addr p1, v2

    .line 91
    sub-int/2addr v3, p1

    .line 92
    if-lt v3, p2, :cond_2

    .line 94
    goto :goto_1

    .line 95
    :cond_2
    move v0, v1

    .line 96
    :goto_1
    return v0

    .line 97
    :cond_3
    return v1
.end method

.method public final v(IIIILo/L4;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lo/L4;->i(I)Lo/x4;

    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p5, p2}, Lo/L4;->i(I)Lo/x4;

    .line 8
    move-result-object p2

    .line 9
    const/4 p5, 0x1

    .line 10
    invoke-virtual {p1, p2, p3, p4, p5}, Lo/x4;->b(Lo/x4;IIZ)Z

    .line 13
    return-void
.end method

.method public final w(I)Z
    .locals 3

    .line 1
    mul-int/lit8 p1, p1, 0x2

    .line 3
    iget-object v0, p0, Lo/L4;->Q:[Lo/x4;

    .line 5
    aget-object v1, v0, p1

    .line 7
    iget-object v2, v1, Lo/x4;->f:Lo/x4;

    .line 9
    if-eqz v2, :cond_0

    .line 11
    iget-object v2, v2, Lo/x4;->f:Lo/x4;

    .line 13
    if-eq v2, v1, :cond_0

    .line 15
    const/4 v1, 0x1

    .line 16
    add-int/2addr p1, v1

    .line 17
    aget-object p1, v0, p1

    .line 19
    iget-object v0, p1, Lo/x4;->f:Lo/x4;

    .line 21
    if-eqz v0, :cond_0

    .line 23
    iget-object v0, v0, Lo/x4;->f:Lo/x4;

    .line 25
    if-ne v0, p1, :cond_0

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 v1, 0x0

    .line 29
    :goto_0
    return v1
.end method

.method public final x()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lo/L4;->I:Lo/x4;

    .line 3
    iget-object v1, v0, Lo/x4;->f:Lo/x4;

    .line 5
    if-eqz v1, :cond_0

    .line 7
    iget-object v1, v1, Lo/x4;->f:Lo/x4;

    .line 9
    if-eq v1, v0, :cond_1

    .line 11
    :cond_0
    iget-object v0, p0, Lo/L4;->K:Lo/x4;

    .line 13
    iget-object v1, v0, Lo/x4;->f:Lo/x4;

    .line 15
    if-eqz v1, :cond_2

    .line 17
    iget-object v1, v1, Lo/x4;->f:Lo/x4;

    .line 19
    if-ne v1, v0, :cond_2

    .line 21
    :cond_1
    const/4 v0, 0x1

    .line 22
    return v0

    .line 23
    :cond_2
    const/4 v0, 0x0

    .line 24
    return v0
.end method

.method public final y()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lo/L4;->J:Lo/x4;

    .line 3
    iget-object v1, v0, Lo/x4;->f:Lo/x4;

    .line 5
    if-eqz v1, :cond_0

    .line 7
    iget-object v1, v1, Lo/x4;->f:Lo/x4;

    .line 9
    if-eq v1, v0, :cond_1

    .line 11
    :cond_0
    iget-object v0, p0, Lo/L4;->L:Lo/x4;

    .line 13
    iget-object v1, v0, Lo/x4;->f:Lo/x4;

    .line 15
    if-eqz v1, :cond_2

    .line 17
    iget-object v1, v1, Lo/x4;->f:Lo/x4;

    .line 19
    if-ne v1, v0, :cond_2

    .line 21
    :cond_1
    const/4 v0, 0x1

    .line 22
    return v0

    .line 23
    :cond_2
    const/4 v0, 0x0

    .line 24
    return v0
.end method

.method public final z()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lo/L4;->g:Z

    .line 3
    if-eqz v0, :cond_0

    .line 5
    iget v0, p0, Lo/L4;->g0:I

    .line 7
    const/16 v1, 0x8

    .line 9
    if-eq v0, v1, :cond_0

    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    return v0
.end method
