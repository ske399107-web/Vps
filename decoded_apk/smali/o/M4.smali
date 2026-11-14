.class public final Lo/M4;
.super Lo/L4;
.source "SourceFile"


# instance fields
.field public A0:I

.field public B0:[Lo/B3;

.field public C0:[Lo/B3;

.field public D0:I

.field public E0:Z

.field public F0:Z

.field public G0:Ljava/lang/ref/WeakReference;

.field public H0:Ljava/lang/ref/WeakReference;

.field public I0:Ljava/lang/ref/WeakReference;

.field public J0:Ljava/lang/ref/WeakReference;

.field public final K0:Ljava/util/HashSet;

.field public final L0:Lo/c3;

.field public q0:Ljava/util/ArrayList;

.field public final r0:Lo/s2;

.field public final s0:Lo/O5;

.field public t0:I

.field public u0:Lo/C4;

.field public v0:Z

.field public final w0:Lo/ba;

.field public x0:I

.field public y0:I

.field public z0:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lo/L4;-><init>()V

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    iput-object v0, p0, Lo/M4;->q0:Ljava/util/ArrayList;

    .line 11
    new-instance v0, Lo/s2;

    .line 13
    invoke-direct {v0, p0}, Lo/s2;-><init>(Lo/M4;)V

    .line 16
    iput-object v0, p0, Lo/M4;->r0:Lo/s2;

    .line 18
    new-instance v0, Lo/O5;

    .line 20
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v1, 0x1

    .line 24
    iput-boolean v1, v0, Lo/O5;->b:Z

    .line 26
    iput-boolean v1, v0, Lo/O5;->c:Z

    .line 28
    new-instance v1, Ljava/util/ArrayList;

    .line 30
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 33
    iput-object v1, v0, Lo/O5;->e:Ljava/util/ArrayList;

    .line 35
    new-instance v1, Ljava/util/ArrayList;

    .line 37
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 40
    const/4 v1, 0x0

    .line 41
    iput-object v1, v0, Lo/O5;->f:Lo/C4;

    .line 43
    new-instance v2, Lo/c3;

    .line 45
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object v2, v0, Lo/O5;->g:Lo/c3;

    .line 50
    new-instance v2, Ljava/util/ArrayList;

    .line 52
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 55
    iput-object v2, v0, Lo/O5;->h:Ljava/util/ArrayList;

    .line 57
    iput-object p0, v0, Lo/O5;->a:Lo/M4;

    .line 59
    iput-object p0, v0, Lo/O5;->d:Lo/M4;

    .line 61
    iput-object v0, p0, Lo/M4;->s0:Lo/O5;

    .line 63
    iput-object v1, p0, Lo/M4;->u0:Lo/C4;

    .line 65
    const/4 v0, 0x0

    .line 66
    iput-boolean v0, p0, Lo/M4;->v0:Z

    .line 68
    new-instance v2, Lo/ba;

    .line 70
    invoke-direct {v2}, Lo/ba;-><init>()V

    .line 73
    iput-object v2, p0, Lo/M4;->w0:Lo/ba;

    .line 75
    iput v0, p0, Lo/M4;->z0:I

    .line 77
    iput v0, p0, Lo/M4;->A0:I

    .line 79
    const/4 v2, 0x4

    .line 80
    new-array v3, v2, [Lo/B3;

    .line 82
    iput-object v3, p0, Lo/M4;->B0:[Lo/B3;

    .line 84
    new-array v2, v2, [Lo/B3;

    .line 86
    iput-object v2, p0, Lo/M4;->C0:[Lo/B3;

    .line 88
    const/16 v2, 0x101

    .line 90
    iput v2, p0, Lo/M4;->D0:I

    .line 92
    iput-boolean v0, p0, Lo/M4;->E0:Z

    .line 94
    iput-boolean v0, p0, Lo/M4;->F0:Z

    .line 96
    iput-object v1, p0, Lo/M4;->G0:Ljava/lang/ref/WeakReference;

    .line 98
    iput-object v1, p0, Lo/M4;->H0:Ljava/lang/ref/WeakReference;

    .line 100
    iput-object v1, p0, Lo/M4;->I0:Ljava/lang/ref/WeakReference;

    .line 102
    iput-object v1, p0, Lo/M4;->J0:Ljava/lang/ref/WeakReference;

    .line 104
    new-instance v0, Ljava/util/HashSet;

    .line 106
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 109
    iput-object v0, p0, Lo/M4;->K0:Ljava/util/HashSet;

    .line 111
    new-instance v0, Lo/c3;

    .line 113
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 116
    iput-object v0, p0, Lo/M4;->L0:Lo/c3;

    .line 118
    return-void
.end method

.method public static V(Lo/L4;Lo/C4;Lo/c3;)V
    .locals 9

    .line 1
    if-nez p1, :cond_0

    .line 3
    return-void

    .line 4
    :cond_0
    iget v0, p0, Lo/L4;->g0:I

    .line 6
    const/16 v1, 0x8

    .line 8
    const/4 v2, 0x0

    .line 9
    if-eq v0, v1, :cond_13

    .line 11
    instance-of v0, p0, Lo/X8;

    .line 13
    if-nez v0, :cond_13

    .line 15
    instance-of v0, p0, Lo/Q2;

    .line 17
    if-eqz v0, :cond_1

    .line 19
    goto/16 :goto_8

    .line 21
    :cond_1
    iget-object v0, p0, Lo/L4;->p0:[I

    .line 23
    aget v1, v0, v2

    .line 25
    iput v1, p2, Lo/c3;->a:I

    .line 27
    const/4 v1, 0x1

    .line 28
    aget v0, v0, v1

    .line 30
    iput v0, p2, Lo/c3;->b:I

    .line 32
    invoke-virtual {p0}, Lo/L4;->q()I

    .line 35
    move-result v0

    .line 36
    iput v0, p2, Lo/c3;->c:I

    .line 38
    invoke-virtual {p0}, Lo/L4;->k()I

    .line 41
    move-result v0

    .line 42
    iput v0, p2, Lo/c3;->d:I

    .line 44
    iput-boolean v2, p2, Lo/c3;->i:Z

    .line 46
    iput v2, p2, Lo/c3;->j:I

    .line 48
    iget v0, p2, Lo/c3;->a:I

    .line 50
    const/4 v3, 0x3

    .line 51
    if-ne v0, v3, :cond_2

    .line 53
    move v0, v1

    .line 54
    goto :goto_0

    .line 55
    :cond_2
    move v0, v2

    .line 56
    :goto_0
    iget v4, p2, Lo/c3;->b:I

    .line 58
    if-ne v4, v3, :cond_3

    .line 60
    move v3, v1

    .line 61
    goto :goto_1

    .line 62
    :cond_3
    move v3, v2

    .line 63
    :goto_1
    const/4 v4, 0x0

    .line 64
    if-eqz v0, :cond_4

    .line 66
    iget v5, p0, Lo/L4;->W:F

    .line 68
    cmpl-float v5, v5, v4

    .line 70
    if-lez v5, :cond_4

    .line 72
    move v5, v1

    .line 73
    goto :goto_2

    .line 74
    :cond_4
    move v5, v2

    .line 75
    :goto_2
    if-eqz v3, :cond_5

    .line 77
    iget v6, p0, Lo/L4;->W:F

    .line 79
    cmpl-float v4, v6, v4

    .line 81
    if-lez v4, :cond_5

    .line 83
    move v4, v1

    .line 84
    goto :goto_3

    .line 85
    :cond_5
    move v4, v2

    .line 86
    :goto_3
    const/4 v6, 0x2

    .line 87
    if-eqz v0, :cond_7

    .line 89
    invoke-virtual {p0, v2}, Lo/L4;->t(I)Z

    .line 92
    move-result v7

    .line 93
    if-eqz v7, :cond_7

    .line 95
    iget v7, p0, Lo/L4;->r:I

    .line 97
    if-nez v7, :cond_7

    .line 99
    if-nez v5, :cond_7

    .line 101
    iput v6, p2, Lo/c3;->a:I

    .line 103
    if-eqz v3, :cond_6

    .line 105
    iget v0, p0, Lo/L4;->s:I

    .line 107
    if-nez v0, :cond_6

    .line 109
    iput v1, p2, Lo/c3;->a:I

    .line 111
    :cond_6
    move v0, v2

    .line 112
    :cond_7
    if-eqz v3, :cond_9

    .line 114
    invoke-virtual {p0, v1}, Lo/L4;->t(I)Z

    .line 117
    move-result v7

    .line 118
    if-eqz v7, :cond_9

    .line 120
    iget v7, p0, Lo/L4;->s:I

    .line 122
    if-nez v7, :cond_9

    .line 124
    if-nez v4, :cond_9

    .line 126
    iput v6, p2, Lo/c3;->b:I

    .line 128
    if-eqz v0, :cond_8

    .line 130
    iget v3, p0, Lo/L4;->r:I

    .line 132
    if-nez v3, :cond_8

    .line 134
    iput v1, p2, Lo/c3;->b:I

    .line 136
    :cond_8
    move v3, v2

    .line 137
    :cond_9
    invoke-virtual {p0}, Lo/L4;->A()Z

    .line 140
    move-result v7

    .line 141
    if-eqz v7, :cond_a

    .line 143
    iput v1, p2, Lo/c3;->a:I

    .line 145
    move v0, v2

    .line 146
    :cond_a
    invoke-virtual {p0}, Lo/L4;->B()Z

    .line 149
    move-result v7

    .line 150
    if-eqz v7, :cond_b

    .line 152
    iput v1, p2, Lo/c3;->b:I

    .line 154
    move v3, v2

    .line 155
    :cond_b
    iget-object v7, p0, Lo/L4;->t:[I

    .line 157
    const/4 v8, 0x4

    .line 158
    if-eqz v5, :cond_e

    .line 160
    aget v5, v7, v2

    .line 162
    if-ne v5, v8, :cond_c

    .line 164
    iput v1, p2, Lo/c3;->a:I

    .line 166
    goto :goto_5

    .line 167
    :cond_c
    if-nez v3, :cond_e

    .line 169
    iget v3, p2, Lo/c3;->b:I

    .line 171
    if-ne v3, v1, :cond_d

    .line 173
    iget v3, p2, Lo/c3;->d:I

    .line 175
    goto :goto_4

    .line 176
    :cond_d
    iput v6, p2, Lo/c3;->a:I

    .line 178
    invoke-virtual {p1, p0, p2}, Lo/C4;->b(Lo/L4;Lo/c3;)V

    .line 181
    iget v3, p2, Lo/c3;->f:I

    .line 183
    :goto_4
    iput v1, p2, Lo/c3;->a:I

    .line 185
    iget v5, p0, Lo/L4;->W:F

    .line 187
    int-to-float v3, v3

    .line 188
    mul-float/2addr v5, v3

    .line 189
    float-to-int v3, v5

    .line 190
    iput v3, p2, Lo/c3;->c:I

    .line 192
    :cond_e
    :goto_5
    if-eqz v4, :cond_12

    .line 194
    aget v3, v7, v1

    .line 196
    if-ne v3, v8, :cond_f

    .line 198
    iput v1, p2, Lo/c3;->b:I

    .line 200
    goto :goto_7

    .line 201
    :cond_f
    if-nez v0, :cond_12

    .line 203
    iget v0, p2, Lo/c3;->a:I

    .line 205
    if-ne v0, v1, :cond_10

    .line 207
    iget v0, p2, Lo/c3;->c:I

    .line 209
    goto :goto_6

    .line 210
    :cond_10
    iput v6, p2, Lo/c3;->b:I

    .line 212
    invoke-virtual {p1, p0, p2}, Lo/C4;->b(Lo/L4;Lo/c3;)V

    .line 215
    iget v0, p2, Lo/c3;->e:I

    .line 217
    :goto_6
    iput v1, p2, Lo/c3;->b:I

    .line 219
    iget v1, p0, Lo/L4;->X:I

    .line 221
    const/4 v3, -0x1

    .line 222
    if-ne v1, v3, :cond_11

    .line 224
    int-to-float v0, v0

    .line 225
    iget v1, p0, Lo/L4;->W:F

    .line 227
    div-float/2addr v0, v1

    .line 228
    float-to-int v0, v0

    .line 229
    iput v0, p2, Lo/c3;->d:I

    .line 231
    goto :goto_7

    .line 232
    :cond_11
    iget v1, p0, Lo/L4;->W:F

    .line 234
    int-to-float v0, v0

    .line 235
    mul-float/2addr v1, v0

    .line 236
    float-to-int v0, v1

    .line 237
    iput v0, p2, Lo/c3;->d:I

    .line 239
    :cond_12
    :goto_7
    invoke-virtual {p1, p0, p2}, Lo/C4;->b(Lo/L4;Lo/c3;)V

    .line 242
    iget p1, p2, Lo/c3;->e:I

    .line 244
    invoke-virtual {p0, p1}, Lo/L4;->O(I)V

    .line 247
    iget p1, p2, Lo/c3;->f:I

    .line 249
    invoke-virtual {p0, p1}, Lo/L4;->L(I)V

    .line 252
    iget-boolean p1, p2, Lo/c3;->h:Z

    .line 254
    iput-boolean p1, p0, Lo/L4;->E:Z

    .line 256
    iget p1, p2, Lo/c3;->g:I

    .line 258
    invoke-virtual {p0, p1}, Lo/L4;->I(I)V

    .line 261
    iput v2, p2, Lo/c3;->j:I

    .line 263
    return-void

    .line 264
    :cond_13
    :goto_8
    iput v2, p2, Lo/c3;->e:I

    .line 266
    iput v2, p2, Lo/c3;->f:I

    .line 268
    return-void
.end method


# virtual methods
.method public final C()V
    .locals 1

    .line 1
    iget-object v0, p0, Lo/M4;->w0:Lo/ba;

    .line 3
    invoke-virtual {v0}, Lo/ba;->t()V

    .line 6
    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lo/M4;->x0:I

    .line 9
    iput v0, p0, Lo/M4;->y0:I

    .line 11
    iget-object v0, p0, Lo/M4;->q0:Ljava/util/ArrayList;

    .line 13
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 16
    invoke-super {p0}, Lo/L4;->C()V

    .line 19
    return-void
.end method

.method public final F(Lo/s2;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lo/L4;->F(Lo/s2;)V

    .line 4
    iget-object v0, p0, Lo/M4;->q0:Ljava/util/ArrayList;

    .line 6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    :goto_0
    if-ge v1, v0, :cond_0

    .line 13
    iget-object v2, p0, Lo/M4;->q0:Ljava/util/ArrayList;

    .line 15
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 18
    move-result-object v2

    .line 19
    check-cast v2, Lo/L4;

    .line 21
    invoke-virtual {v2, p1}, Lo/L4;->F(Lo/s2;)V

    .line 24
    add-int/lit8 v1, v1, 0x1

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    return-void
.end method

.method public final P(ZZ)V
    .locals 3

    .line 1
    invoke-super {p0, p1, p2}, Lo/L4;->P(ZZ)V

    .line 4
    iget-object v0, p0, Lo/M4;->q0:Ljava/util/ArrayList;

    .line 6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    :goto_0
    if-ge v1, v0, :cond_0

    .line 13
    iget-object v2, p0, Lo/M4;->q0:Ljava/util/ArrayList;

    .line 15
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 18
    move-result-object v2

    .line 19
    check-cast v2, Lo/L4;

    .line 21
    invoke-virtual {v2, p1, p2}, Lo/L4;->P(ZZ)V

    .line 24
    add-int/lit8 v1, v1, 0x1

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    return-void
.end method

.method public final R(Lo/L4;I)V
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    if-nez p2, :cond_1

    .line 4
    iget p2, p0, Lo/M4;->z0:I

    .line 6
    add-int/2addr p2, v0

    .line 7
    iget-object v1, p0, Lo/M4;->C0:[Lo/B3;

    .line 9
    array-length v2, v1

    .line 10
    if-lt p2, v2, :cond_0

    .line 12
    array-length p2, v1

    .line 13
    mul-int/lit8 p2, p2, 0x2

    .line 15
    invoke-static {v1, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 18
    move-result-object p2

    .line 19
    check-cast p2, [Lo/B3;

    .line 21
    iput-object p2, p0, Lo/M4;->C0:[Lo/B3;

    .line 23
    :cond_0
    iget-object p2, p0, Lo/M4;->C0:[Lo/B3;

    .line 25
    iget v1, p0, Lo/M4;->z0:I

    .line 27
    new-instance v2, Lo/B3;

    .line 29
    iget-boolean v3, p0, Lo/M4;->v0:Z

    .line 31
    const/4 v4, 0x0

    .line 32
    invoke-direct {v2, p1, v4, v3}, Lo/B3;-><init>(Lo/L4;IZ)V

    .line 35
    aput-object v2, p2, v1

    .line 37
    add-int/2addr v1, v0

    .line 38
    iput v1, p0, Lo/M4;->z0:I

    .line 40
    goto :goto_0

    .line 41
    :cond_1
    if-ne p2, v0, :cond_3

    .line 43
    iget p2, p0, Lo/M4;->A0:I

    .line 45
    add-int/2addr p2, v0

    .line 46
    iget-object v1, p0, Lo/M4;->B0:[Lo/B3;

    .line 48
    array-length v2, v1

    .line 49
    if-lt p2, v2, :cond_2

    .line 51
    array-length p2, v1

    .line 52
    mul-int/lit8 p2, p2, 0x2

    .line 54
    invoke-static {v1, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 57
    move-result-object p2

    .line 58
    check-cast p2, [Lo/B3;

    .line 60
    iput-object p2, p0, Lo/M4;->B0:[Lo/B3;

    .line 62
    :cond_2
    iget-object p2, p0, Lo/M4;->B0:[Lo/B3;

    .line 64
    iget v1, p0, Lo/M4;->A0:I

    .line 66
    new-instance v2, Lo/B3;

    .line 68
    iget-boolean v3, p0, Lo/M4;->v0:Z

    .line 70
    invoke-direct {v2, p1, v0, v3}, Lo/B3;-><init>(Lo/L4;IZ)V

    .line 73
    aput-object v2, p2, v1

    .line 75
    add-int/2addr v1, v0

    .line 76
    iput v1, p0, Lo/M4;->A0:I

    .line 78
    :cond_3
    :goto_0
    return-void
.end method

.method public final S(Lo/ba;)V
    .locals 12

    .line 1
    const/16 v0, 0x40

    .line 3
    invoke-virtual {p0, v0}, Lo/M4;->W(I)Z

    .line 6
    move-result v0

    .line 7
    invoke-virtual {p0, p1, v0}, Lo/L4;->b(Lo/ba;Z)V

    .line 10
    iget-object v1, p0, Lo/M4;->q0:Ljava/util/ArrayList;

    .line 12
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 15
    move-result v1

    .line 16
    const/4 v2, 0x0

    .line 17
    move v3, v2

    .line 18
    move v4, v3

    .line 19
    :goto_0
    const/4 v5, 0x1

    .line 20
    if-ge v3, v1, :cond_1

    .line 22
    iget-object v6, p0, Lo/M4;->q0:Ljava/util/ArrayList;

    .line 24
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 27
    move-result-object v6

    .line 28
    check-cast v6, Lo/L4;

    .line 30
    iget-object v7, v6, Lo/L4;->S:[Z

    .line 32
    aput-boolean v2, v7, v2

    .line 34
    aput-boolean v2, v7, v5

    .line 36
    instance-of v6, v6, Lo/Q2;

    .line 38
    if-eqz v6, :cond_0

    .line 40
    move v4, v5

    .line 41
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 43
    goto :goto_0

    .line 44
    :cond_1
    const/4 v3, 0x2

    .line 45
    if-eqz v4, :cond_8

    .line 47
    move v4, v2

    .line 48
    :goto_1
    if-ge v4, v1, :cond_8

    .line 50
    iget-object v6, p0, Lo/M4;->q0:Ljava/util/ArrayList;

    .line 52
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 55
    move-result-object v6

    .line 56
    check-cast v6, Lo/L4;

    .line 58
    instance-of v7, v6, Lo/Q2;

    .line 60
    if-eqz v7, :cond_7

    .line 62
    check-cast v6, Lo/Q2;

    .line 64
    move v7, v2

    .line 65
    :goto_2
    iget v8, v6, Lo/b9;->r0:I

    .line 67
    if-ge v7, v8, :cond_7

    .line 69
    iget-object v8, v6, Lo/b9;->q0:[Lo/L4;

    .line 71
    aget-object v8, v8, v7

    .line 73
    iget-boolean v9, v6, Lo/Q2;->t0:Z

    .line 75
    if-nez v9, :cond_2

    .line 77
    invoke-virtual {v8}, Lo/L4;->c()Z

    .line 80
    move-result v9

    .line 81
    if-nez v9, :cond_2

    .line 83
    goto :goto_4

    .line 84
    :cond_2
    iget v9, v6, Lo/Q2;->s0:I

    .line 86
    if-eqz v9, :cond_5

    .line 88
    if-ne v9, v5, :cond_3

    .line 90
    goto :goto_3

    .line 91
    :cond_3
    if-eq v9, v3, :cond_4

    .line 93
    const/4 v10, 0x3

    .line 94
    if-ne v9, v10, :cond_6

    .line 96
    :cond_4
    iget-object v8, v8, Lo/L4;->S:[Z

    .line 98
    aput-boolean v5, v8, v5

    .line 100
    goto :goto_4

    .line 101
    :cond_5
    :goto_3
    iget-object v8, v8, Lo/L4;->S:[Z

    .line 103
    aput-boolean v5, v8, v2

    .line 105
    :cond_6
    :goto_4
    add-int/lit8 v7, v7, 0x1

    .line 107
    goto :goto_2

    .line 108
    :cond_7
    add-int/lit8 v4, v4, 0x1

    .line 110
    goto :goto_1

    .line 111
    :cond_8
    iget-object v4, p0, Lo/M4;->K0:Ljava/util/HashSet;

    .line 113
    invoke-virtual {v4}, Ljava/util/HashSet;->clear()V

    .line 116
    move v6, v2

    .line 117
    :goto_5
    if-ge v6, v1, :cond_c

    .line 119
    iget-object v7, p0, Lo/M4;->q0:Ljava/util/ArrayList;

    .line 121
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 124
    move-result-object v7

    .line 125
    check-cast v7, Lo/L4;

    .line 127
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 130
    instance-of v8, v7, Lo/v7;

    .line 132
    if-nez v8, :cond_9

    .line 134
    instance-of v9, v7, Lo/X8;

    .line 136
    if-eqz v9, :cond_b

    .line 138
    :cond_9
    if-eqz v8, :cond_a

    .line 140
    invoke-virtual {v4, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 143
    goto :goto_6

    .line 144
    :cond_a
    invoke-virtual {v7, p1, v0}, Lo/L4;->b(Lo/ba;Z)V

    .line 147
    :cond_b
    :goto_6
    add-int/lit8 v6, v6, 0x1

    .line 149
    goto :goto_5

    .line 150
    :cond_c
    :goto_7
    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    .line 153
    move-result v6

    .line 154
    if-lez v6, :cond_11

    .line 156
    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    .line 159
    move-result v6

    .line 160
    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 163
    move-result-object v7

    .line 164
    :cond_d
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 167
    move-result v8

    .line 168
    if-eqz v8, :cond_f

    .line 170
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 173
    move-result-object v8

    .line 174
    check-cast v8, Lo/L4;

    .line 176
    check-cast v8, Lo/v7;

    .line 178
    move v9, v2

    .line 179
    :goto_8
    iget v10, v8, Lo/b9;->r0:I

    .line 181
    if-ge v9, v10, :cond_d

    .line 183
    iget-object v10, v8, Lo/b9;->q0:[Lo/L4;

    .line 185
    aget-object v10, v10, v9

    .line 187
    invoke-virtual {v4, v10}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 190
    move-result v10

    .line 191
    if-eqz v10, :cond_e

    .line 193
    invoke-virtual {v8, p1, v0}, Lo/v7;->b(Lo/ba;Z)V

    .line 196
    invoke-virtual {v4, v8}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 199
    goto :goto_9

    .line 200
    :cond_e
    add-int/lit8 v9, v9, 0x1

    .line 202
    goto :goto_8

    .line 203
    :cond_f
    :goto_9
    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    .line 206
    move-result v7

    .line 207
    if-ne v6, v7, :cond_c

    .line 209
    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 212
    move-result-object v6

    .line 213
    :goto_a
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 216
    move-result v7

    .line 217
    if-eqz v7, :cond_10

    .line 219
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 222
    move-result-object v7

    .line 223
    check-cast v7, Lo/L4;

    .line 225
    invoke-virtual {v7, p1, v0}, Lo/L4;->b(Lo/ba;Z)V

    .line 228
    goto :goto_a

    .line 229
    :cond_10
    invoke-virtual {v4}, Ljava/util/HashSet;->clear()V

    .line 232
    goto :goto_7

    .line 233
    :cond_11
    sget-boolean v4, Lo/ba;->q:Z

    .line 235
    if-eqz v4, :cond_16

    .line 237
    new-instance v4, Ljava/util/HashSet;

    .line 239
    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 242
    move v6, v2

    .line 243
    :goto_b
    if-ge v6, v1, :cond_14

    .line 245
    iget-object v7, p0, Lo/M4;->q0:Ljava/util/ArrayList;

    .line 247
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 250
    move-result-object v7

    .line 251
    check-cast v7, Lo/L4;

    .line 253
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 256
    instance-of v8, v7, Lo/v7;

    .line 258
    if-nez v8, :cond_13

    .line 260
    instance-of v8, v7, Lo/X8;

    .line 262
    if-eqz v8, :cond_12

    .line 264
    goto :goto_c

    .line 265
    :cond_12
    invoke-virtual {v4, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 268
    :cond_13
    :goto_c
    add-int/lit8 v6, v6, 0x1

    .line 270
    goto :goto_b

    .line 271
    :cond_14
    iget-object v1, p0, Lo/L4;->p0:[I

    .line 273
    aget v1, v1, v2

    .line 275
    if-ne v1, v3, :cond_15

    .line 277
    move v10, v2

    .line 278
    goto :goto_d

    .line 279
    :cond_15
    move v10, v5

    .line 280
    :goto_d
    const/4 v11, 0x0

    .line 281
    move-object v6, p0

    .line 282
    move-object v7, p0

    .line 283
    move-object v8, p1

    .line 284
    move-object v9, v4

    .line 285
    invoke-virtual/range {v6 .. v11}, Lo/L4;->a(Lo/M4;Lo/ba;Ljava/util/HashSet;IZ)V

    .line 288
    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 291
    move-result-object v1

    .line 292
    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 295
    move-result v3

    .line 296
    if-eqz v3, :cond_1d

    .line 298
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 301
    move-result-object v3

    .line 302
    check-cast v3, Lo/L4;

    .line 304
    invoke-static {p0, p1, v3}, Lo/x9;->k(Lo/M4;Lo/ba;Lo/L4;)V

    .line 307
    invoke-virtual {v3, p1, v0}, Lo/L4;->b(Lo/ba;Z)V

    .line 310
    goto :goto_e

    .line 311
    :cond_16
    move v4, v2

    .line 312
    :goto_f
    if-ge v4, v1, :cond_1d

    .line 314
    iget-object v6, p0, Lo/M4;->q0:Ljava/util/ArrayList;

    .line 316
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 319
    move-result-object v6

    .line 320
    check-cast v6, Lo/L4;

    .line 322
    instance-of v7, v6, Lo/M4;

    .line 324
    if-eqz v7, :cond_1a

    .line 326
    iget-object v7, v6, Lo/L4;->p0:[I

    .line 328
    aget v8, v7, v2

    .line 330
    aget v7, v7, v5

    .line 332
    if-ne v8, v3, :cond_17

    .line 334
    invoke-virtual {v6, v5}, Lo/L4;->M(I)V

    .line 337
    :cond_17
    if-ne v7, v3, :cond_18

    .line 339
    invoke-virtual {v6, v5}, Lo/L4;->N(I)V

    .line 342
    :cond_18
    invoke-virtual {v6, p1, v0}, Lo/L4;->b(Lo/ba;Z)V

    .line 345
    if-ne v8, v3, :cond_19

    .line 347
    invoke-virtual {v6, v8}, Lo/L4;->M(I)V

    .line 350
    :cond_19
    if-ne v7, v3, :cond_1c

    .line 352
    invoke-virtual {v6, v7}, Lo/L4;->N(I)V

    .line 355
    goto :goto_10

    .line 356
    :cond_1a
    invoke-static {p0, p1, v6}, Lo/x9;->k(Lo/M4;Lo/ba;Lo/L4;)V

    .line 359
    instance-of v7, v6, Lo/v7;

    .line 361
    if-nez v7, :cond_1c

    .line 363
    instance-of v7, v6, Lo/X8;

    .line 365
    if-eqz v7, :cond_1b

    .line 367
    goto :goto_10

    .line 368
    :cond_1b
    invoke-virtual {v6, p1, v0}, Lo/L4;->b(Lo/ba;Z)V

    .line 371
    :cond_1c
    :goto_10
    add-int/lit8 v4, v4, 0x1

    .line 373
    goto :goto_f

    .line 374
    :cond_1d
    iget v0, p0, Lo/M4;->z0:I

    .line 376
    const/4 v1, 0x0

    .line 377
    if-lez v0, :cond_1e

    .line 379
    invoke-static {p0, p1, v1, v2}, Lo/L1;->f(Lo/M4;Lo/ba;Ljava/util/ArrayList;I)V

    .line 382
    :cond_1e
    iget v0, p0, Lo/M4;->A0:I

    .line 384
    if-lez v0, :cond_1f

    .line 386
    invoke-static {p0, p1, v1, v5}, Lo/L1;->f(Lo/M4;Lo/ba;Ljava/util/ArrayList;I)V

    .line 389
    :cond_1f
    return-void
.end method

.method public final T(IZ)Z
    .locals 13

    .line 1
    iget-object v0, p0, Lo/M4;->s0:Lo/O5;

    .line 3
    iget-object v1, v0, Lo/O5;->a:Lo/M4;

    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-virtual {v1, v2}, Lo/L4;->j(I)I

    .line 9
    move-result v3

    .line 10
    const/4 v4, 0x1

    .line 11
    invoke-virtual {v1, v4}, Lo/L4;->j(I)I

    .line 14
    move-result v5

    .line 15
    invoke-virtual {v1}, Lo/L4;->r()I

    .line 18
    move-result v6

    .line 19
    invoke-virtual {v1}, Lo/L4;->s()I

    .line 22
    move-result v7

    .line 23
    iget-object v8, v0, Lo/O5;->e:Ljava/util/ArrayList;

    .line 25
    if-eqz p2, :cond_4

    .line 27
    const/4 v9, 0x2

    .line 28
    if-eq v3, v9, :cond_0

    .line 30
    if-ne v5, v9, :cond_4

    .line 32
    :cond_0
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 35
    move-result-object v10

    .line 36
    :cond_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 39
    move-result v11

    .line 40
    if-eqz v11, :cond_2

    .line 42
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 45
    move-result-object v11

    .line 46
    check-cast v11, Lo/mi;

    .line 48
    iget v12, v11, Lo/mi;->f:I

    .line 50
    if-ne v12, p1, :cond_1

    .line 52
    invoke-virtual {v11}, Lo/mi;->k()Z

    .line 55
    move-result v11

    .line 56
    if-nez v11, :cond_1

    .line 58
    move p2, v2

    .line 59
    :cond_2
    if-nez p1, :cond_3

    .line 61
    if-eqz p2, :cond_4

    .line 63
    if-ne v3, v9, :cond_4

    .line 65
    invoke-virtual {v1, v4}, Lo/L4;->M(I)V

    .line 68
    invoke-virtual {v0, v1, v2}, Lo/O5;->d(Lo/M4;I)I

    .line 71
    move-result p2

    .line 72
    invoke-virtual {v1, p2}, Lo/L4;->O(I)V

    .line 75
    iget-object p2, v1, Lo/L4;->d:Lo/c9;

    .line 77
    iget-object p2, p2, Lo/mi;->e:Lo/a6;

    .line 79
    invoke-virtual {v1}, Lo/L4;->q()I

    .line 82
    move-result v9

    .line 83
    invoke-virtual {p2, v9}, Lo/a6;->d(I)V

    .line 86
    goto :goto_0

    .line 87
    :cond_3
    if-eqz p2, :cond_4

    .line 89
    if-ne v5, v9, :cond_4

    .line 91
    invoke-virtual {v1, v4}, Lo/L4;->N(I)V

    .line 94
    invoke-virtual {v0, v1, v4}, Lo/O5;->d(Lo/M4;I)I

    .line 97
    move-result p2

    .line 98
    invoke-virtual {v1, p2}, Lo/L4;->L(I)V

    .line 101
    iget-object p2, v1, Lo/L4;->e:Lo/oh;

    .line 103
    iget-object p2, p2, Lo/mi;->e:Lo/a6;

    .line 105
    invoke-virtual {v1}, Lo/L4;->k()I

    .line 108
    move-result v9

    .line 109
    invoke-virtual {p2, v9}, Lo/a6;->d(I)V

    .line 112
    :cond_4
    :goto_0
    iget-object p2, v1, Lo/L4;->p0:[I

    .line 114
    const/4 v9, 0x4

    .line 115
    if-nez p1, :cond_6

    .line 117
    aget p2, p2, v2

    .line 119
    if-eq p2, v4, :cond_5

    .line 121
    if-ne p2, v9, :cond_7

    .line 123
    :cond_5
    invoke-virtual {v1}, Lo/L4;->q()I

    .line 126
    move-result p2

    .line 127
    add-int/2addr p2, v6

    .line 128
    iget-object v7, v1, Lo/L4;->d:Lo/c9;

    .line 130
    iget-object v7, v7, Lo/mi;->i:Lo/P5;

    .line 132
    invoke-virtual {v7, p2}, Lo/P5;->d(I)V

    .line 135
    iget-object v7, v1, Lo/L4;->d:Lo/c9;

    .line 137
    iget-object v7, v7, Lo/mi;->e:Lo/a6;

    .line 139
    sub-int/2addr p2, v6

    .line 140
    invoke-virtual {v7, p2}, Lo/a6;->d(I)V

    .line 143
    :goto_1
    move p2, v4

    .line 144
    goto :goto_3

    .line 145
    :cond_6
    aget p2, p2, v4

    .line 147
    if-eq p2, v4, :cond_8

    .line 149
    if-ne p2, v9, :cond_7

    .line 151
    goto :goto_2

    .line 152
    :cond_7
    move p2, v2

    .line 153
    goto :goto_3

    .line 154
    :cond_8
    :goto_2
    invoke-virtual {v1}, Lo/L4;->k()I

    .line 157
    move-result p2

    .line 158
    add-int/2addr p2, v7

    .line 159
    iget-object v6, v1, Lo/L4;->e:Lo/oh;

    .line 161
    iget-object v6, v6, Lo/mi;->i:Lo/P5;

    .line 163
    invoke-virtual {v6, p2}, Lo/P5;->d(I)V

    .line 166
    iget-object v6, v1, Lo/L4;->e:Lo/oh;

    .line 168
    iget-object v6, v6, Lo/mi;->e:Lo/a6;

    .line 170
    sub-int/2addr p2, v7

    .line 171
    invoke-virtual {v6, p2}, Lo/a6;->d(I)V

    .line 174
    goto :goto_1

    .line 175
    :goto_3
    invoke-virtual {v0}, Lo/O5;->g()V

    .line 178
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 181
    move-result-object v0

    .line 182
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 185
    move-result v6

    .line 186
    if-eqz v6, :cond_b

    .line 188
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 191
    move-result-object v6

    .line 192
    check-cast v6, Lo/mi;

    .line 194
    iget v7, v6, Lo/mi;->f:I

    .line 196
    if-eq v7, p1, :cond_9

    .line 198
    goto :goto_4

    .line 199
    :cond_9
    iget-object v7, v6, Lo/mi;->b:Lo/L4;

    .line 201
    if-ne v7, v1, :cond_a

    .line 203
    iget-boolean v7, v6, Lo/mi;->g:Z

    .line 205
    if-nez v7, :cond_a

    .line 207
    goto :goto_4

    .line 208
    :cond_a
    invoke-virtual {v6}, Lo/mi;->e()V

    .line 211
    goto :goto_4

    .line 212
    :cond_b
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 215
    move-result-object v0

    .line 216
    :cond_c
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 219
    move-result v6

    .line 220
    if-eqz v6, :cond_11

    .line 222
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 225
    move-result-object v6

    .line 226
    check-cast v6, Lo/mi;

    .line 228
    iget v7, v6, Lo/mi;->f:I

    .line 230
    if-eq v7, p1, :cond_d

    .line 232
    goto :goto_5

    .line 233
    :cond_d
    if-nez p2, :cond_e

    .line 235
    iget-object v7, v6, Lo/mi;->b:Lo/L4;

    .line 237
    if-ne v7, v1, :cond_e

    .line 239
    goto :goto_5

    .line 240
    :cond_e
    iget-object v7, v6, Lo/mi;->h:Lo/P5;

    .line 242
    iget-boolean v7, v7, Lo/P5;->j:Z

    .line 244
    if-nez v7, :cond_f

    .line 246
    goto :goto_6

    .line 247
    :cond_f
    iget-object v7, v6, Lo/mi;->i:Lo/P5;

    .line 249
    iget-boolean v7, v7, Lo/P5;->j:Z

    .line 251
    if-nez v7, :cond_10

    .line 253
    goto :goto_6

    .line 254
    :cond_10
    instance-of v7, v6, Lo/C3;

    .line 256
    if-nez v7, :cond_c

    .line 258
    iget-object v6, v6, Lo/mi;->e:Lo/a6;

    .line 260
    iget-boolean v6, v6, Lo/P5;->j:Z

    .line 262
    if-nez v6, :cond_c

    .line 264
    goto :goto_6

    .line 265
    :cond_11
    move v2, v4

    .line 266
    :goto_6
    invoke-virtual {v1, v3}, Lo/L4;->M(I)V

    .line 269
    invoke-virtual {v1, v5}, Lo/L4;->N(I)V

    .line 272
    return v2
.end method

.method public final U()V
    .locals 31

    .line 1
    move-object/from16 v1, p0

    .line 3
    const/4 v2, 0x0

    .line 4
    iput v2, v1, Lo/L4;->Y:I

    .line 6
    iput v2, v1, Lo/L4;->Z:I

    .line 8
    iput-boolean v2, v1, Lo/M4;->E0:Z

    .line 10
    iput-boolean v2, v1, Lo/M4;->F0:Z

    .line 12
    iget-object v0, v1, Lo/M4;->q0:Ljava/util/ArrayList;

    .line 14
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 17
    move-result v3

    .line 18
    invoke-virtual/range {p0 .. p0}, Lo/L4;->q()I

    .line 21
    move-result v0

    .line 22
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    .line 25
    move-result v0

    .line 26
    invoke-virtual/range {p0 .. p0}, Lo/L4;->k()I

    .line 29
    move-result v4

    .line 30
    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    .line 33
    move-result v4

    .line 34
    iget-object v5, v1, Lo/L4;->p0:[I

    .line 36
    const/4 v6, 0x1

    .line 37
    aget v7, v5, v6

    .line 39
    aget v8, v5, v2

    .line 41
    iget v9, v1, Lo/M4;->t0:I

    .line 43
    iget-object v10, v1, Lo/L4;->J:Lo/x4;

    .line 45
    iget-object v11, v1, Lo/L4;->I:Lo/x4;

    .line 47
    if-nez v9, :cond_1d

    .line 49
    iget v9, v1, Lo/M4;->D0:I

    .line 51
    invoke-static {v9, v6}, Lo/x9;->w(II)Z

    .line 54
    move-result v9

    .line 55
    if-eqz v9, :cond_1d

    .line 57
    iget-object v9, v1, Lo/M4;->u0:Lo/C4;

    .line 59
    aget v14, v5, v2

    .line 61
    aget v15, v5, v6

    .line 63
    invoke-virtual/range {p0 .. p0}, Lo/L4;->E()V

    .line 66
    iget-object v12, v1, Lo/M4;->q0:Ljava/util/ArrayList;

    .line 68
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    .line 71
    move-result v13

    .line 72
    :goto_0
    if-ge v2, v13, :cond_0

    .line 74
    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 77
    move-result-object v18

    .line 78
    check-cast v18, Lo/L4;

    .line 80
    invoke-virtual/range {v18 .. v18}, Lo/L4;->E()V

    .line 83
    add-int/lit8 v2, v2, 0x1

    .line 85
    goto :goto_0

    .line 86
    :cond_0
    iget-boolean v2, v1, Lo/M4;->v0:Z

    .line 88
    if-ne v14, v6, :cond_1

    .line 90
    invoke-virtual/range {p0 .. p0}, Lo/L4;->q()I

    .line 93
    move-result v14

    .line 94
    const/4 v6, 0x0

    .line 95
    invoke-virtual {v1, v6, v14}, Lo/L4;->J(II)V

    .line 98
    goto :goto_1

    .line 99
    :cond_1
    const/4 v6, 0x0

    .line 100
    invoke-virtual {v11, v6}, Lo/x4;->l(I)V

    .line 103
    iput v6, v1, Lo/L4;->Y:I

    .line 105
    :goto_1
    const/4 v6, 0x0

    .line 106
    const/4 v14, 0x0

    .line 107
    const/16 v19, 0x0

    .line 109
    :goto_2
    const/high16 v20, 0x3f000000    # 0.5f

    .line 111
    if-ge v6, v13, :cond_7

    .line 113
    invoke-virtual {v12, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 116
    move-result-object v21

    .line 117
    move-object/from16 v22, v11

    .line 119
    move-object/from16 v11, v21

    .line 121
    check-cast v11, Lo/L4;

    .line 123
    move/from16 v21, v4

    .line 125
    instance-of v4, v11, Lo/X8;

    .line 127
    if-eqz v4, :cond_5

    .line 129
    check-cast v11, Lo/X8;

    .line 131
    iget v4, v11, Lo/X8;->u0:I

    .line 133
    move-object/from16 v23, v5

    .line 135
    const/4 v5, 0x1

    .line 136
    if-ne v4, v5, :cond_6

    .line 138
    iget v4, v11, Lo/X8;->r0:I

    .line 140
    const/4 v5, -0x1

    .line 141
    if-eq v4, v5, :cond_2

    .line 143
    invoke-virtual {v11, v4}, Lo/X8;->R(I)V

    .line 146
    goto :goto_3

    .line 147
    :cond_2
    iget v4, v11, Lo/X8;->s0:I

    .line 149
    if-eq v4, v5, :cond_3

    .line 151
    invoke-virtual/range {p0 .. p0}, Lo/L4;->A()Z

    .line 154
    move-result v4

    .line 155
    if-eqz v4, :cond_3

    .line 157
    invoke-virtual/range {p0 .. p0}, Lo/L4;->q()I

    .line 160
    move-result v4

    .line 161
    iget v5, v11, Lo/X8;->s0:I

    .line 163
    sub-int/2addr v4, v5

    .line 164
    invoke-virtual {v11, v4}, Lo/X8;->R(I)V

    .line 167
    goto :goto_3

    .line 168
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lo/L4;->A()Z

    .line 171
    move-result v4

    .line 172
    if-eqz v4, :cond_4

    .line 174
    iget v4, v11, Lo/X8;->q0:F

    .line 176
    invoke-virtual/range {p0 .. p0}, Lo/L4;->q()I

    .line 179
    move-result v5

    .line 180
    int-to-float v5, v5

    .line 181
    mul-float/2addr v4, v5

    .line 182
    add-float v4, v4, v20

    .line 184
    float-to-int v4, v4

    .line 185
    invoke-virtual {v11, v4}, Lo/X8;->R(I)V

    .line 188
    :cond_4
    :goto_3
    const/4 v14, 0x1

    .line 189
    goto :goto_4

    .line 190
    :cond_5
    move-object/from16 v23, v5

    .line 192
    instance-of v4, v11, Lo/Q2;

    .line 194
    if-eqz v4, :cond_6

    .line 196
    check-cast v11, Lo/Q2;

    .line 198
    invoke-virtual {v11}, Lo/Q2;->U()I

    .line 201
    move-result v4

    .line 202
    if-nez v4, :cond_6

    .line 204
    const/16 v19, 0x1

    .line 206
    :cond_6
    :goto_4
    add-int/lit8 v6, v6, 0x1

    .line 208
    move/from16 v4, v21

    .line 210
    move-object/from16 v11, v22

    .line 212
    move-object/from16 v5, v23

    .line 214
    goto :goto_2

    .line 215
    :cond_7
    move/from16 v21, v4

    .line 217
    move-object/from16 v23, v5

    .line 219
    move-object/from16 v22, v11

    .line 221
    if-eqz v14, :cond_9

    .line 223
    const/4 v4, 0x0

    .line 224
    :goto_5
    if-ge v4, v13, :cond_9

    .line 226
    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 229
    move-result-object v5

    .line 230
    check-cast v5, Lo/L4;

    .line 232
    instance-of v6, v5, Lo/X8;

    .line 234
    if-eqz v6, :cond_8

    .line 236
    check-cast v5, Lo/X8;

    .line 238
    iget v6, v5, Lo/X8;->u0:I

    .line 240
    const/4 v11, 0x1

    .line 241
    if-ne v6, v11, :cond_8

    .line 243
    const/4 v6, 0x0

    .line 244
    invoke-static {v6, v9, v5, v2}, Lo/x9;->z(ILo/C4;Lo/L4;Z)V

    .line 247
    goto :goto_6

    .line 248
    :cond_8
    const/4 v6, 0x0

    .line 249
    :goto_6
    add-int/lit8 v4, v4, 0x1

    .line 251
    goto :goto_5

    .line 252
    :cond_9
    const/4 v6, 0x0

    .line 253
    invoke-static {v6, v9, v1, v2}, Lo/x9;->z(ILo/C4;Lo/L4;Z)V

    .line 256
    if-eqz v19, :cond_b

    .line 258
    const/4 v4, 0x0

    .line 259
    :goto_7
    if-ge v4, v13, :cond_b

    .line 261
    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 264
    move-result-object v5

    .line 265
    check-cast v5, Lo/L4;

    .line 267
    instance-of v6, v5, Lo/Q2;

    .line 269
    if-eqz v6, :cond_a

    .line 271
    check-cast v5, Lo/Q2;

    .line 273
    invoke-virtual {v5}, Lo/Q2;->U()I

    .line 276
    move-result v6

    .line 277
    if-nez v6, :cond_a

    .line 279
    invoke-virtual {v5}, Lo/Q2;->T()Z

    .line 282
    move-result v6

    .line 283
    if-eqz v6, :cond_a

    .line 285
    const/4 v6, 0x1

    .line 286
    invoke-static {v6, v9, v5, v2}, Lo/x9;->z(ILo/C4;Lo/L4;Z)V

    .line 289
    goto :goto_8

    .line 290
    :cond_a
    const/4 v6, 0x1

    .line 291
    :goto_8
    add-int/lit8 v4, v4, 0x1

    .line 293
    goto :goto_7

    .line 294
    :cond_b
    const/4 v6, 0x1

    .line 295
    if-ne v15, v6, :cond_c

    .line 297
    invoke-virtual/range {p0 .. p0}, Lo/L4;->k()I

    .line 300
    move-result v4

    .line 301
    const/4 v5, 0x0

    .line 302
    invoke-virtual {v1, v5, v4}, Lo/L4;->K(II)V

    .line 305
    goto :goto_9

    .line 306
    :cond_c
    const/4 v5, 0x0

    .line 307
    invoke-virtual {v10, v5}, Lo/x4;->l(I)V

    .line 310
    iput v5, v1, Lo/L4;->Z:I

    .line 312
    :goto_9
    const/4 v4, 0x0

    .line 313
    const/4 v5, 0x0

    .line 314
    const/4 v6, 0x0

    .line 315
    :goto_a
    if-ge v4, v13, :cond_12

    .line 317
    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 320
    move-result-object v11

    .line 321
    check-cast v11, Lo/L4;

    .line 323
    instance-of v14, v11, Lo/X8;

    .line 325
    if-eqz v14, :cond_10

    .line 327
    check-cast v11, Lo/X8;

    .line 329
    iget v14, v11, Lo/X8;->u0:I

    .line 331
    if-nez v14, :cond_11

    .line 333
    iget v5, v11, Lo/X8;->r0:I

    .line 335
    const/4 v14, -0x1

    .line 336
    if-eq v5, v14, :cond_d

    .line 338
    invoke-virtual {v11, v5}, Lo/X8;->R(I)V

    .line 341
    goto :goto_b

    .line 342
    :cond_d
    iget v5, v11, Lo/X8;->s0:I

    .line 344
    if-eq v5, v14, :cond_e

    .line 346
    invoke-virtual/range {p0 .. p0}, Lo/L4;->B()Z

    .line 349
    move-result v5

    .line 350
    if-eqz v5, :cond_e

    .line 352
    invoke-virtual/range {p0 .. p0}, Lo/L4;->k()I

    .line 355
    move-result v5

    .line 356
    iget v14, v11, Lo/X8;->s0:I

    .line 358
    sub-int/2addr v5, v14

    .line 359
    invoke-virtual {v11, v5}, Lo/X8;->R(I)V

    .line 362
    goto :goto_b

    .line 363
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lo/L4;->B()Z

    .line 366
    move-result v5

    .line 367
    if-eqz v5, :cond_f

    .line 369
    iget v5, v11, Lo/X8;->q0:F

    .line 371
    invoke-virtual/range {p0 .. p0}, Lo/L4;->k()I

    .line 374
    move-result v14

    .line 375
    int-to-float v14, v14

    .line 376
    mul-float/2addr v5, v14

    .line 377
    add-float v5, v5, v20

    .line 379
    float-to-int v5, v5

    .line 380
    invoke-virtual {v11, v5}, Lo/X8;->R(I)V

    .line 383
    :cond_f
    :goto_b
    const/4 v5, 0x1

    .line 384
    goto :goto_c

    .line 385
    :cond_10
    instance-of v14, v11, Lo/Q2;

    .line 387
    if-eqz v14, :cond_11

    .line 389
    check-cast v11, Lo/Q2;

    .line 391
    invoke-virtual {v11}, Lo/Q2;->U()I

    .line 394
    move-result v11

    .line 395
    const/4 v14, 0x1

    .line 396
    if-ne v11, v14, :cond_11

    .line 398
    const/4 v6, 0x1

    .line 399
    :cond_11
    :goto_c
    add-int/lit8 v4, v4, 0x1

    .line 401
    goto :goto_a

    .line 402
    :cond_12
    if-eqz v5, :cond_14

    .line 404
    const/4 v4, 0x0

    .line 405
    :goto_d
    if-ge v4, v13, :cond_14

    .line 407
    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 410
    move-result-object v5

    .line 411
    check-cast v5, Lo/L4;

    .line 413
    instance-of v11, v5, Lo/X8;

    .line 415
    if-eqz v11, :cond_13

    .line 417
    check-cast v5, Lo/X8;

    .line 419
    iget v11, v5, Lo/X8;->u0:I

    .line 421
    if-nez v11, :cond_13

    .line 423
    const/4 v11, 0x1

    .line 424
    invoke-static {v11, v9, v5}, Lo/x9;->i0(ILo/C4;Lo/L4;)V

    .line 427
    :cond_13
    add-int/lit8 v4, v4, 0x1

    .line 429
    goto :goto_d

    .line 430
    :cond_14
    const/4 v4, 0x0

    .line 431
    invoke-static {v4, v9, v1}, Lo/x9;->i0(ILo/C4;Lo/L4;)V

    .line 434
    if-eqz v6, :cond_16

    .line 436
    const/4 v4, 0x0

    .line 437
    :goto_e
    if-ge v4, v13, :cond_16

    .line 439
    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 442
    move-result-object v5

    .line 443
    check-cast v5, Lo/L4;

    .line 445
    instance-of v6, v5, Lo/Q2;

    .line 447
    if-eqz v6, :cond_15

    .line 449
    check-cast v5, Lo/Q2;

    .line 451
    invoke-virtual {v5}, Lo/Q2;->U()I

    .line 454
    move-result v6

    .line 455
    const/4 v11, 0x1

    .line 456
    if-ne v6, v11, :cond_15

    .line 458
    invoke-virtual {v5}, Lo/Q2;->T()Z

    .line 461
    move-result v6

    .line 462
    if-eqz v6, :cond_15

    .line 464
    invoke-static {v11, v9, v5}, Lo/x9;->i0(ILo/C4;Lo/L4;)V

    .line 467
    :cond_15
    add-int/lit8 v4, v4, 0x1

    .line 469
    goto :goto_e

    .line 470
    :cond_16
    const/4 v4, 0x0

    .line 471
    :goto_f
    if-ge v4, v13, :cond_1a

    .line 473
    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 476
    move-result-object v5

    .line 477
    check-cast v5, Lo/L4;

    .line 479
    invoke-virtual {v5}, Lo/L4;->z()Z

    .line 482
    move-result v6

    .line 483
    if-eqz v6, :cond_19

    .line 485
    invoke-static {v5}, Lo/x9;->f(Lo/L4;)Z

    .line 488
    move-result v6

    .line 489
    if-eqz v6, :cond_19

    .line 491
    sget-object v6, Lo/x9;->o:Lo/c3;

    .line 493
    invoke-static {v5, v9, v6}, Lo/M4;->V(Lo/L4;Lo/C4;Lo/c3;)V

    .line 496
    instance-of v6, v5, Lo/X8;

    .line 498
    if-eqz v6, :cond_18

    .line 500
    move-object v6, v5

    .line 501
    check-cast v6, Lo/X8;

    .line 503
    iget v6, v6, Lo/X8;->u0:I

    .line 505
    if-nez v6, :cond_17

    .line 507
    const/4 v6, 0x0

    .line 508
    invoke-static {v6, v9, v5}, Lo/x9;->i0(ILo/C4;Lo/L4;)V

    .line 511
    goto :goto_10

    .line 512
    :cond_17
    const/4 v6, 0x0

    .line 513
    invoke-static {v6, v9, v5, v2}, Lo/x9;->z(ILo/C4;Lo/L4;Z)V

    .line 516
    goto :goto_10

    .line 517
    :cond_18
    const/4 v6, 0x0

    .line 518
    invoke-static {v6, v9, v5, v2}, Lo/x9;->z(ILo/C4;Lo/L4;Z)V

    .line 521
    invoke-static {v6, v9, v5}, Lo/x9;->i0(ILo/C4;Lo/L4;)V

    .line 524
    :cond_19
    :goto_10
    add-int/lit8 v4, v4, 0x1

    .line 526
    goto :goto_f

    .line 527
    :cond_1a
    const/4 v2, 0x0

    .line 528
    :goto_11
    if-ge v2, v3, :cond_1e

    .line 530
    iget-object v4, v1, Lo/M4;->q0:Ljava/util/ArrayList;

    .line 532
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 535
    move-result-object v4

    .line 536
    check-cast v4, Lo/L4;

    .line 538
    invoke-virtual {v4}, Lo/L4;->z()Z

    .line 541
    move-result v5

    .line 542
    if-eqz v5, :cond_1c

    .line 544
    instance-of v5, v4, Lo/X8;

    .line 546
    if-nez v5, :cond_1c

    .line 548
    instance-of v5, v4, Lo/Q2;

    .line 550
    if-nez v5, :cond_1c

    .line 552
    instance-of v5, v4, Lo/v7;

    .line 554
    if-nez v5, :cond_1c

    .line 556
    iget-boolean v5, v4, Lo/L4;->F:Z

    .line 558
    if-nez v5, :cond_1c

    .line 560
    const/4 v5, 0x0

    .line 561
    invoke-virtual {v4, v5}, Lo/L4;->j(I)I

    .line 564
    move-result v6

    .line 565
    const/4 v5, 0x1

    .line 566
    invoke-virtual {v4, v5}, Lo/L4;->j(I)I

    .line 569
    move-result v9

    .line 570
    const/4 v11, 0x3

    .line 571
    if-ne v6, v11, :cond_1b

    .line 573
    iget v6, v4, Lo/L4;->r:I

    .line 575
    if-eq v6, v5, :cond_1b

    .line 577
    if-ne v9, v11, :cond_1b

    .line 579
    iget v6, v4, Lo/L4;->s:I

    .line 581
    if-eq v6, v5, :cond_1b

    .line 583
    goto :goto_12

    .line 584
    :cond_1b
    new-instance v5, Lo/c3;

    .line 586
    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 589
    iget-object v6, v1, Lo/M4;->u0:Lo/C4;

    .line 591
    invoke-static {v4, v6, v5}, Lo/M4;->V(Lo/L4;Lo/C4;Lo/c3;)V

    .line 594
    :cond_1c
    :goto_12
    add-int/lit8 v2, v2, 0x1

    .line 596
    goto :goto_11

    .line 597
    :cond_1d
    move/from16 v21, v4

    .line 599
    move-object/from16 v23, v5

    .line 601
    move-object/from16 v22, v11

    .line 603
    :cond_1e
    iget-object v2, v1, Lo/M4;->w0:Lo/ba;

    .line 605
    const/4 v5, 0x2

    .line 606
    if-le v3, v5, :cond_1f

    .line 608
    if-eq v8, v5, :cond_20

    .line 610
    if-ne v7, v5, :cond_1f

    .line 612
    goto :goto_13

    .line 613
    :cond_1f
    move/from16 v26, v3

    .line 615
    move v4, v7

    .line 616
    move-object/from16 v24, v10

    .line 618
    move/from16 v5, v21

    .line 620
    move v3, v0

    .line 621
    move/from16 v30, v8

    .line 623
    move-object v8, v2

    .line 624
    move/from16 v2, v30

    .line 626
    goto/16 :goto_35

    .line 628
    :cond_20
    :goto_13
    iget v9, v1, Lo/M4;->D0:I

    .line 630
    const/16 v11, 0x400

    .line 632
    invoke-static {v9, v11}, Lo/x9;->w(II)Z

    .line 635
    move-result v9

    .line 636
    if-eqz v9, :cond_1f

    .line 638
    iget-object v9, v1, Lo/M4;->u0:Lo/C4;

    .line 640
    iget-object v11, v1, Lo/M4;->q0:Ljava/util/ArrayList;

    .line 642
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    .line 645
    move-result v12

    .line 646
    const/4 v13, 0x0

    .line 647
    :goto_14
    if-ge v13, v12, :cond_23

    .line 649
    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 652
    move-result-object v14

    .line 653
    check-cast v14, Lo/L4;

    .line 655
    const/4 v15, 0x0

    .line 656
    aget v6, v23, v15

    .line 658
    const/16 v18, 0x1

    .line 660
    aget v5, v23, v18

    .line 662
    iget-object v4, v14, Lo/L4;->p0:[I

    .line 664
    move-object/from16 v24, v10

    .line 666
    aget v10, v4, v15

    .line 668
    aget v4, v4, v18

    .line 670
    invoke-static {v6, v5, v10, v4}, Lo/L1;->d0(IIII)Z

    .line 673
    move-result v4

    .line 674
    if-nez v4, :cond_21

    .line 676
    :goto_15
    move/from16 v27, v0

    .line 678
    move/from16 v26, v3

    .line 680
    move/from16 v25, v7

    .line 682
    move/from16 v28, v8

    .line 684
    move-object v8, v2

    .line 685
    goto/16 :goto_2e

    .line 687
    :cond_21
    instance-of v4, v14, Lo/v7;

    .line 689
    if-eqz v4, :cond_22

    .line 691
    goto :goto_15

    .line 692
    :cond_22
    add-int/lit8 v13, v13, 0x1

    .line 694
    move-object/from16 v10, v24

    .line 696
    const/4 v5, 0x2

    .line 697
    goto :goto_14

    .line 698
    :cond_23
    move-object/from16 v24, v10

    .line 700
    const/4 v4, 0x0

    .line 701
    const/4 v5, 0x0

    .line 702
    const/4 v6, 0x0

    .line 703
    const/4 v10, 0x0

    .line 704
    const/4 v13, 0x0

    .line 705
    const/4 v14, 0x0

    .line 706
    const/4 v15, 0x0

    .line 707
    :goto_16
    if-ge v4, v12, :cond_34

    .line 709
    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 712
    move-result-object v25

    .line 713
    move/from16 v26, v3

    .line 715
    move-object/from16 v3, v25

    .line 717
    check-cast v3, Lo/L4;

    .line 719
    move/from16 v25, v7

    .line 721
    const/16 v17, 0x0

    .line 723
    aget v7, v23, v17

    .line 725
    move/from16 v27, v0

    .line 727
    const/16 v18, 0x1

    .line 729
    aget v0, v23, v18

    .line 731
    move/from16 v28, v8

    .line 733
    iget-object v8, v3, Lo/L4;->p0:[I

    .line 735
    move-object/from16 v29, v2

    .line 737
    aget v2, v8, v17

    .line 739
    aget v8, v8, v18

    .line 741
    invoke-static {v7, v0, v2, v8}, Lo/L1;->d0(IIII)Z

    .line 744
    move-result v0

    .line 745
    if-nez v0, :cond_24

    .line 747
    iget-object v0, v1, Lo/M4;->L0:Lo/c3;

    .line 749
    invoke-static {v3, v9, v0}, Lo/M4;->V(Lo/L4;Lo/C4;Lo/c3;)V

    .line 752
    :cond_24
    instance-of v0, v3, Lo/X8;

    .line 754
    if-eqz v0, :cond_28

    .line 756
    move-object v2, v3

    .line 757
    check-cast v2, Lo/X8;

    .line 759
    iget v7, v2, Lo/X8;->u0:I

    .line 761
    if-nez v7, :cond_26

    .line 763
    if-nez v10, :cond_25

    .line 765
    new-instance v10, Ljava/util/ArrayList;

    .line 767
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 770
    :cond_25
    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 773
    :cond_26
    iget v7, v2, Lo/X8;->u0:I

    .line 775
    const/4 v8, 0x1

    .line 776
    if-ne v7, v8, :cond_28

    .line 778
    if-nez v5, :cond_27

    .line 780
    new-instance v5, Ljava/util/ArrayList;

    .line 782
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 785
    :cond_27
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 788
    :cond_28
    instance-of v2, v3, Lo/b9;

    .line 790
    if-eqz v2, :cond_2f

    .line 792
    instance-of v2, v3, Lo/Q2;

    .line 794
    if-eqz v2, :cond_2c

    .line 796
    move-object v2, v3

    .line 797
    check-cast v2, Lo/Q2;

    .line 799
    invoke-virtual {v2}, Lo/Q2;->U()I

    .line 802
    move-result v7

    .line 803
    if-nez v7, :cond_2a

    .line 805
    if-nez v6, :cond_29

    .line 807
    new-instance v6, Ljava/util/ArrayList;

    .line 809
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 812
    :cond_29
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 815
    :cond_2a
    invoke-virtual {v2}, Lo/Q2;->U()I

    .line 818
    move-result v7

    .line 819
    const/4 v8, 0x1

    .line 820
    if-ne v7, v8, :cond_2f

    .line 822
    if-nez v13, :cond_2b

    .line 824
    new-instance v13, Ljava/util/ArrayList;

    .line 826
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 829
    :cond_2b
    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 832
    goto :goto_17

    .line 833
    :cond_2c
    move-object v2, v3

    .line 834
    check-cast v2, Lo/b9;

    .line 836
    if-nez v6, :cond_2d

    .line 838
    new-instance v6, Ljava/util/ArrayList;

    .line 840
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 843
    :cond_2d
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 846
    if-nez v13, :cond_2e

    .line 848
    new-instance v13, Ljava/util/ArrayList;

    .line 850
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 853
    :cond_2e
    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 856
    :cond_2f
    :goto_17
    iget-object v2, v3, Lo/L4;->I:Lo/x4;

    .line 858
    iget-object v2, v2, Lo/x4;->f:Lo/x4;

    .line 860
    if-nez v2, :cond_31

    .line 862
    iget-object v2, v3, Lo/L4;->K:Lo/x4;

    .line 864
    iget-object v2, v2, Lo/x4;->f:Lo/x4;

    .line 866
    if-nez v2, :cond_31

    .line 868
    if-nez v0, :cond_31

    .line 870
    instance-of v2, v3, Lo/Q2;

    .line 872
    if-nez v2, :cond_31

    .line 874
    if-nez v14, :cond_30

    .line 876
    new-instance v14, Ljava/util/ArrayList;

    .line 878
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 881
    :cond_30
    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 884
    :cond_31
    iget-object v2, v3, Lo/L4;->J:Lo/x4;

    .line 886
    iget-object v2, v2, Lo/x4;->f:Lo/x4;

    .line 888
    if-nez v2, :cond_33

    .line 890
    iget-object v2, v3, Lo/L4;->L:Lo/x4;

    .line 892
    iget-object v2, v2, Lo/x4;->f:Lo/x4;

    .line 894
    if-nez v2, :cond_33

    .line 896
    iget-object v2, v3, Lo/L4;->M:Lo/x4;

    .line 898
    iget-object v2, v2, Lo/x4;->f:Lo/x4;

    .line 900
    if-nez v2, :cond_33

    .line 902
    if-nez v0, :cond_33

    .line 904
    instance-of v0, v3, Lo/Q2;

    .line 906
    if-nez v0, :cond_33

    .line 908
    if-nez v15, :cond_32

    .line 910
    new-instance v15, Ljava/util/ArrayList;

    .line 912
    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 915
    :cond_32
    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 918
    :cond_33
    add-int/lit8 v4, v4, 0x1

    .line 920
    move/from16 v7, v25

    .line 922
    move/from16 v3, v26

    .line 924
    move/from16 v0, v27

    .line 926
    move/from16 v8, v28

    .line 928
    move-object/from16 v2, v29

    .line 930
    goto/16 :goto_16

    .line 932
    :cond_34
    move/from16 v27, v0

    .line 934
    move-object/from16 v29, v2

    .line 936
    move/from16 v26, v3

    .line 938
    move/from16 v25, v7

    .line 940
    move/from16 v28, v8

    .line 942
    new-instance v0, Ljava/util/ArrayList;

    .line 944
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 947
    if-eqz v5, :cond_35

    .line 949
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 952
    move-result-object v2

    .line 953
    :goto_18
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 956
    move-result v3

    .line 957
    if-eqz v3, :cond_35

    .line 959
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 962
    move-result-object v3

    .line 963
    check-cast v3, Lo/X8;

    .line 965
    const/4 v4, 0x0

    .line 966
    const/4 v5, 0x0

    .line 967
    invoke-static {v3, v4, v0, v5}, Lo/L1;->u(Lo/L4;ILjava/util/ArrayList;Lo/li;)Lo/li;

    .line 970
    goto :goto_18

    .line 971
    :cond_35
    const/4 v4, 0x0

    .line 972
    const/4 v5, 0x0

    .line 973
    if-eqz v6, :cond_36

    .line 975
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 978
    move-result-object v2

    .line 979
    :goto_19
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 982
    move-result v3

    .line 983
    if-eqz v3, :cond_36

    .line 985
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 988
    move-result-object v3

    .line 989
    check-cast v3, Lo/b9;

    .line 991
    invoke-static {v3, v4, v0, v5}, Lo/L1;->u(Lo/L4;ILjava/util/ArrayList;Lo/li;)Lo/li;

    .line 994
    move-result-object v6

    .line 995
    invoke-virtual {v3, v4, v0, v6}, Lo/b9;->R(ILjava/util/ArrayList;Lo/li;)V

    .line 998
    invoke-virtual {v6, v0}, Lo/li;->a(Ljava/util/ArrayList;)V

    .line 1001
    const/4 v4, 0x0

    .line 1002
    const/4 v5, 0x0

    .line 1003
    goto :goto_19

    .line 1004
    :cond_36
    const/4 v2, 0x2

    .line 1005
    invoke-virtual {v1, v2}, Lo/L4;->i(I)Lo/x4;

    .line 1008
    move-result-object v3

    .line 1009
    iget-object v2, v3, Lo/x4;->a:Ljava/util/HashSet;

    .line 1011
    if-eqz v2, :cond_37

    .line 1013
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 1016
    move-result-object v2

    .line 1017
    :goto_1a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 1020
    move-result v3

    .line 1021
    if-eqz v3, :cond_37

    .line 1023
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1026
    move-result-object v3

    .line 1027
    check-cast v3, Lo/x4;

    .line 1029
    iget-object v3, v3, Lo/x4;->d:Lo/L4;

    .line 1031
    const/4 v4, 0x0

    .line 1032
    const/4 v5, 0x0

    .line 1033
    invoke-static {v3, v4, v0, v5}, Lo/L1;->u(Lo/L4;ILjava/util/ArrayList;Lo/li;)Lo/li;

    .line 1036
    goto :goto_1a

    .line 1037
    :cond_37
    const/4 v2, 0x4

    .line 1038
    invoke-virtual {v1, v2}, Lo/L4;->i(I)Lo/x4;

    .line 1041
    move-result-object v2

    .line 1042
    iget-object v2, v2, Lo/x4;->a:Ljava/util/HashSet;

    .line 1044
    if-eqz v2, :cond_38

    .line 1046
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 1049
    move-result-object v2

    .line 1050
    :goto_1b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 1053
    move-result v3

    .line 1054
    if-eqz v3, :cond_38

    .line 1056
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1059
    move-result-object v3

    .line 1060
    check-cast v3, Lo/x4;

    .line 1062
    iget-object v3, v3, Lo/x4;->d:Lo/L4;

    .line 1064
    const/4 v4, 0x0

    .line 1065
    const/4 v5, 0x0

    .line 1066
    invoke-static {v3, v4, v0, v5}, Lo/L1;->u(Lo/L4;ILjava/util/ArrayList;Lo/li;)Lo/li;

    .line 1069
    goto :goto_1b

    .line 1070
    :cond_38
    const/4 v2, 0x7

    .line 1071
    invoke-virtual {v1, v2}, Lo/L4;->i(I)Lo/x4;

    .line 1074
    move-result-object v3

    .line 1075
    iget-object v3, v3, Lo/x4;->a:Ljava/util/HashSet;

    .line 1077
    if-eqz v3, :cond_39

    .line 1079
    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 1082
    move-result-object v3

    .line 1083
    :goto_1c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 1086
    move-result v4

    .line 1087
    if-eqz v4, :cond_39

    .line 1089
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1092
    move-result-object v4

    .line 1093
    check-cast v4, Lo/x4;

    .line 1095
    iget-object v4, v4, Lo/x4;->d:Lo/L4;

    .line 1097
    const/4 v5, 0x0

    .line 1098
    const/4 v6, 0x0

    .line 1099
    invoke-static {v4, v5, v0, v6}, Lo/L1;->u(Lo/L4;ILjava/util/ArrayList;Lo/li;)Lo/li;

    .line 1102
    goto :goto_1c

    .line 1103
    :cond_39
    const/4 v5, 0x0

    .line 1104
    const/4 v6, 0x0

    .line 1105
    if-eqz v14, :cond_3a

    .line 1107
    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1110
    move-result-object v3

    .line 1111
    :goto_1d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 1114
    move-result v4

    .line 1115
    if-eqz v4, :cond_3a

    .line 1117
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1120
    move-result-object v4

    .line 1121
    check-cast v4, Lo/L4;

    .line 1123
    invoke-static {v4, v5, v0, v6}, Lo/L1;->u(Lo/L4;ILjava/util/ArrayList;Lo/li;)Lo/li;

    .line 1126
    goto :goto_1d

    .line 1127
    :cond_3a
    if-eqz v10, :cond_3b

    .line 1129
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1132
    move-result-object v3

    .line 1133
    :goto_1e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 1136
    move-result v4

    .line 1137
    if-eqz v4, :cond_3b

    .line 1139
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1142
    move-result-object v4

    .line 1143
    check-cast v4, Lo/X8;

    .line 1145
    const/4 v5, 0x1

    .line 1146
    invoke-static {v4, v5, v0, v6}, Lo/L1;->u(Lo/L4;ILjava/util/ArrayList;Lo/li;)Lo/li;

    .line 1149
    goto :goto_1e

    .line 1150
    :cond_3b
    const/4 v5, 0x1

    .line 1151
    if-eqz v13, :cond_3c

    .line 1153
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1156
    move-result-object v3

    .line 1157
    :goto_1f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 1160
    move-result v4

    .line 1161
    if-eqz v4, :cond_3c

    .line 1163
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1166
    move-result-object v4

    .line 1167
    check-cast v4, Lo/b9;

    .line 1169
    invoke-static {v4, v5, v0, v6}, Lo/L1;->u(Lo/L4;ILjava/util/ArrayList;Lo/li;)Lo/li;

    .line 1172
    move-result-object v7

    .line 1173
    invoke-virtual {v4, v5, v0, v7}, Lo/b9;->R(ILjava/util/ArrayList;Lo/li;)V

    .line 1176
    invoke-virtual {v7, v0}, Lo/li;->a(Ljava/util/ArrayList;)V

    .line 1179
    const/4 v5, 0x1

    .line 1180
    const/4 v6, 0x0

    .line 1181
    goto :goto_1f

    .line 1182
    :cond_3c
    const/4 v3, 0x3

    .line 1183
    invoke-virtual {v1, v3}, Lo/L4;->i(I)Lo/x4;

    .line 1186
    move-result-object v4

    .line 1187
    iget-object v3, v4, Lo/x4;->a:Ljava/util/HashSet;

    .line 1189
    if-eqz v3, :cond_3d

    .line 1191
    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 1194
    move-result-object v3

    .line 1195
    :goto_20
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 1198
    move-result v4

    .line 1199
    if-eqz v4, :cond_3d

    .line 1201
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1204
    move-result-object v4

    .line 1205
    check-cast v4, Lo/x4;

    .line 1207
    iget-object v4, v4, Lo/x4;->d:Lo/L4;

    .line 1209
    const/4 v5, 0x1

    .line 1210
    const/4 v6, 0x0

    .line 1211
    invoke-static {v4, v5, v0, v6}, Lo/L1;->u(Lo/L4;ILjava/util/ArrayList;Lo/li;)Lo/li;

    .line 1214
    goto :goto_20

    .line 1215
    :cond_3d
    const/4 v3, 0x6

    .line 1216
    invoke-virtual {v1, v3}, Lo/L4;->i(I)Lo/x4;

    .line 1219
    move-result-object v3

    .line 1220
    iget-object v3, v3, Lo/x4;->a:Ljava/util/HashSet;

    .line 1222
    if-eqz v3, :cond_3e

    .line 1224
    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 1227
    move-result-object v3

    .line 1228
    :goto_21
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 1231
    move-result v4

    .line 1232
    if-eqz v4, :cond_3e

    .line 1234
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1237
    move-result-object v4

    .line 1238
    check-cast v4, Lo/x4;

    .line 1240
    iget-object v4, v4, Lo/x4;->d:Lo/L4;

    .line 1242
    const/4 v5, 0x1

    .line 1243
    const/4 v6, 0x0

    .line 1244
    invoke-static {v4, v5, v0, v6}, Lo/L1;->u(Lo/L4;ILjava/util/ArrayList;Lo/li;)Lo/li;

    .line 1247
    goto :goto_21

    .line 1248
    :cond_3e
    const/4 v3, 0x5

    .line 1249
    invoke-virtual {v1, v3}, Lo/L4;->i(I)Lo/x4;

    .line 1252
    move-result-object v4

    .line 1253
    iget-object v3, v4, Lo/x4;->a:Ljava/util/HashSet;

    .line 1255
    if-eqz v3, :cond_3f

    .line 1257
    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 1260
    move-result-object v3

    .line 1261
    :goto_22
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 1264
    move-result v4

    .line 1265
    if-eqz v4, :cond_3f

    .line 1267
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1270
    move-result-object v4

    .line 1271
    check-cast v4, Lo/x4;

    .line 1273
    iget-object v4, v4, Lo/x4;->d:Lo/L4;

    .line 1275
    const/4 v5, 0x1

    .line 1276
    const/4 v6, 0x0

    .line 1277
    invoke-static {v4, v5, v0, v6}, Lo/L1;->u(Lo/L4;ILjava/util/ArrayList;Lo/li;)Lo/li;

    .line 1280
    goto :goto_22

    .line 1281
    :cond_3f
    invoke-virtual {v1, v2}, Lo/L4;->i(I)Lo/x4;

    .line 1284
    move-result-object v2

    .line 1285
    iget-object v2, v2, Lo/x4;->a:Ljava/util/HashSet;

    .line 1287
    if-eqz v2, :cond_40

    .line 1289
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 1292
    move-result-object v2

    .line 1293
    :goto_23
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 1296
    move-result v3

    .line 1297
    if-eqz v3, :cond_40

    .line 1299
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1302
    move-result-object v3

    .line 1303
    check-cast v3, Lo/x4;

    .line 1305
    iget-object v3, v3, Lo/x4;->d:Lo/L4;

    .line 1307
    const/4 v4, 0x1

    .line 1308
    const/4 v5, 0x0

    .line 1309
    invoke-static {v3, v4, v0, v5}, Lo/L1;->u(Lo/L4;ILjava/util/ArrayList;Lo/li;)Lo/li;

    .line 1312
    goto :goto_23

    .line 1313
    :cond_40
    const/4 v4, 0x1

    .line 1314
    const/4 v5, 0x0

    .line 1315
    if-eqz v15, :cond_41

    .line 1317
    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1320
    move-result-object v2

    .line 1321
    :goto_24
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 1324
    move-result v3

    .line 1325
    if-eqz v3, :cond_41

    .line 1327
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1330
    move-result-object v3

    .line 1331
    check-cast v3, Lo/L4;

    .line 1333
    invoke-static {v3, v4, v0, v5}, Lo/L1;->u(Lo/L4;ILjava/util/ArrayList;Lo/li;)Lo/li;

    .line 1336
    goto :goto_24

    .line 1337
    :cond_41
    const/4 v2, 0x0

    .line 1338
    :goto_25
    if-ge v2, v12, :cond_47

    .line 1340
    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1343
    move-result-object v3

    .line 1344
    check-cast v3, Lo/L4;

    .line 1346
    iget-object v4, v3, Lo/L4;->p0:[I

    .line 1348
    const/4 v5, 0x0

    .line 1349
    aget v6, v4, v5

    .line 1351
    const/4 v5, 0x3

    .line 1352
    if-ne v6, v5, :cond_46

    .line 1354
    const/4 v6, 0x1

    .line 1355
    aget v4, v4, v6

    .line 1357
    if-ne v4, v5, :cond_46

    .line 1359
    iget v4, v3, Lo/L4;->n0:I

    .line 1361
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 1364
    move-result v6

    .line 1365
    const/4 v7, 0x0

    .line 1366
    :goto_26
    if-ge v7, v6, :cond_43

    .line 1368
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1371
    move-result-object v8

    .line 1372
    check-cast v8, Lo/li;

    .line 1374
    iget v9, v8, Lo/li;->b:I

    .line 1376
    if-ne v4, v9, :cond_42

    .line 1378
    goto :goto_27

    .line 1379
    :cond_42
    add-int/lit8 v7, v7, 0x1

    .line 1381
    goto :goto_26

    .line 1382
    :cond_43
    const/4 v8, 0x0

    .line 1383
    :goto_27
    iget v3, v3, Lo/L4;->o0:I

    .line 1385
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 1388
    move-result v4

    .line 1389
    const/4 v6, 0x0

    .line 1390
    :goto_28
    if-ge v6, v4, :cond_45

    .line 1392
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1395
    move-result-object v7

    .line 1396
    check-cast v7, Lo/li;

    .line 1398
    iget v9, v7, Lo/li;->b:I

    .line 1400
    if-ne v3, v9, :cond_44

    .line 1402
    goto :goto_29

    .line 1403
    :cond_44
    add-int/lit8 v6, v6, 0x1

    .line 1405
    goto :goto_28

    .line 1406
    :cond_45
    const/4 v7, 0x0

    .line 1407
    :goto_29
    if-eqz v8, :cond_46

    .line 1409
    if-eqz v7, :cond_46

    .line 1411
    const/4 v3, 0x0

    .line 1412
    invoke-virtual {v8, v3, v7}, Lo/li;->c(ILo/li;)V

    .line 1415
    const/4 v3, 0x2

    .line 1416
    iput v3, v7, Lo/li;->c:I

    .line 1418
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1421
    :cond_46
    add-int/lit8 v2, v2, 0x1

    .line 1423
    goto :goto_25

    .line 1424
    :cond_47
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 1427
    move-result v2

    .line 1428
    const/4 v3, 0x1

    .line 1429
    if-gt v2, v3, :cond_48

    .line 1431
    move-object/from16 v8, v29

    .line 1433
    goto/16 :goto_2e

    .line 1435
    :cond_48
    const/4 v2, 0x0

    .line 1436
    aget v3, v23, v2

    .line 1438
    const/4 v2, 0x2

    .line 1439
    if-ne v3, v2, :cond_4c

    .line 1441
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1444
    move-result-object v2

    .line 1445
    const/4 v3, 0x0

    .line 1446
    const/4 v4, 0x0

    .line 1447
    :goto_2a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 1450
    move-result v5

    .line 1451
    if-eqz v5, :cond_4b

    .line 1453
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1456
    move-result-object v5

    .line 1457
    check-cast v5, Lo/li;

    .line 1459
    iget v6, v5, Lo/li;->c:I

    .line 1461
    const/4 v7, 0x1

    .line 1462
    if-ne v6, v7, :cond_49

    .line 1464
    goto :goto_2a

    .line 1465
    :cond_49
    move-object/from16 v8, v29

    .line 1467
    const/4 v6, 0x0

    .line 1468
    invoke-virtual {v5, v8, v6}, Lo/li;->b(Lo/ba;I)I

    .line 1471
    move-result v9

    .line 1472
    if-le v9, v3, :cond_4a

    .line 1474
    move-object v4, v5

    .line 1475
    move v3, v9

    .line 1476
    :cond_4a
    move-object/from16 v29, v8

    .line 1478
    goto :goto_2a

    .line 1479
    :cond_4b
    move-object/from16 v8, v29

    .line 1481
    const/4 v7, 0x1

    .line 1482
    if-eqz v4, :cond_4d

    .line 1484
    invoke-virtual {v1, v7}, Lo/L4;->M(I)V

    .line 1487
    invoke-virtual {v1, v3}, Lo/L4;->O(I)V

    .line 1490
    goto :goto_2b

    .line 1491
    :cond_4c
    move-object/from16 v8, v29

    .line 1493
    const/4 v7, 0x1

    .line 1494
    :cond_4d
    const/4 v4, 0x0

    .line 1495
    :goto_2b
    aget v2, v23, v7

    .line 1497
    const/4 v3, 0x2

    .line 1498
    if-ne v2, v3, :cond_51

    .line 1500
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1503
    move-result-object v0

    .line 1504
    const/4 v2, 0x0

    .line 1505
    const/4 v3, 0x0

    .line 1506
    :cond_4e
    :goto_2c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 1509
    move-result v5

    .line 1510
    if-eqz v5, :cond_50

    .line 1512
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1515
    move-result-object v5

    .line 1516
    check-cast v5, Lo/li;

    .line 1518
    iget v6, v5, Lo/li;->c:I

    .line 1520
    if-nez v6, :cond_4f

    .line 1522
    goto :goto_2c

    .line 1523
    :cond_4f
    const/4 v6, 0x1

    .line 1524
    invoke-virtual {v5, v8, v6}, Lo/li;->b(Lo/ba;I)I

    .line 1527
    move-result v7

    .line 1528
    if-le v7, v2, :cond_4e

    .line 1530
    move-object v3, v5

    .line 1531
    move v2, v7

    .line 1532
    goto :goto_2c

    .line 1533
    :cond_50
    const/4 v6, 0x1

    .line 1534
    if-eqz v3, :cond_51

    .line 1536
    invoke-virtual {v1, v6}, Lo/L4;->N(I)V

    .line 1539
    invoke-virtual {v1, v2}, Lo/L4;->L(I)V

    .line 1542
    goto :goto_2d

    .line 1543
    :cond_51
    const/4 v3, 0x0

    .line 1544
    :goto_2d
    if-nez v4, :cond_52

    .line 1546
    if-eqz v3, :cond_53

    .line 1548
    :cond_52
    move/from16 v2, v28

    .line 1550
    const/4 v3, 0x2

    .line 1551
    goto :goto_2f

    .line 1552
    :cond_53
    :goto_2e
    move/from16 v5, v21

    .line 1554
    move/from16 v4, v25

    .line 1556
    move/from16 v3, v27

    .line 1558
    move/from16 v2, v28

    .line 1560
    goto :goto_35

    .line 1561
    :goto_2f
    if-ne v2, v3, :cond_55

    .line 1563
    invoke-virtual/range {p0 .. p0}, Lo/L4;->q()I

    .line 1566
    move-result v0

    .line 1567
    move/from16 v3, v27

    .line 1569
    if-ge v3, v0, :cond_54

    .line 1571
    if-lez v3, :cond_54

    .line 1573
    invoke-virtual {v1, v3}, Lo/L4;->O(I)V

    .line 1576
    const/4 v4, 0x1

    .line 1577
    iput-boolean v4, v1, Lo/M4;->E0:Z

    .line 1579
    goto :goto_31

    .line 1580
    :cond_54
    invoke-virtual/range {p0 .. p0}, Lo/L4;->q()I

    .line 1583
    move-result v0

    .line 1584
    :goto_30
    move/from16 v4, v25

    .line 1586
    const/4 v3, 0x2

    .line 1587
    goto :goto_32

    .line 1588
    :cond_55
    move/from16 v3, v27

    .line 1590
    :goto_31
    move v0, v3

    .line 1591
    goto :goto_30

    .line 1592
    :goto_32
    if-ne v4, v3, :cond_57

    .line 1594
    invoke-virtual/range {p0 .. p0}, Lo/L4;->k()I

    .line 1597
    move-result v3

    .line 1598
    move/from16 v5, v21

    .line 1600
    if-ge v5, v3, :cond_56

    .line 1602
    if-lez v5, :cond_56

    .line 1604
    invoke-virtual {v1, v5}, Lo/L4;->L(I)V

    .line 1607
    const/4 v3, 0x1

    .line 1608
    iput-boolean v3, v1, Lo/M4;->F0:Z

    .line 1610
    goto :goto_33

    .line 1611
    :cond_56
    invoke-virtual/range {p0 .. p0}, Lo/L4;->k()I

    .line 1614
    move-result v3

    .line 1615
    goto :goto_34

    .line 1616
    :cond_57
    move/from16 v5, v21

    .line 1618
    :goto_33
    move v3, v5

    .line 1619
    :goto_34
    move v5, v3

    .line 1620
    move v3, v0

    .line 1621
    const/4 v0, 0x1

    .line 1622
    goto :goto_36

    .line 1623
    :goto_35
    const/4 v0, 0x0

    .line 1624
    :goto_36
    const/16 v6, 0x40

    .line 1626
    invoke-virtual {v1, v6}, Lo/M4;->W(I)Z

    .line 1629
    move-result v7

    .line 1630
    if-nez v7, :cond_59

    .line 1632
    const/16 v7, 0x80

    .line 1634
    invoke-virtual {v1, v7}, Lo/M4;->W(I)Z

    .line 1637
    move-result v7

    .line 1638
    if-eqz v7, :cond_58

    .line 1640
    goto :goto_37

    .line 1641
    :cond_58
    const/4 v7, 0x0

    .line 1642
    goto :goto_38

    .line 1643
    :cond_59
    :goto_37
    const/4 v7, 0x1

    .line 1644
    :goto_38
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1647
    const/4 v9, 0x0

    .line 1648
    iput-boolean v9, v8, Lo/ba;->h:Z

    .line 1650
    iget v10, v1, Lo/M4;->D0:I

    .line 1652
    if-eqz v10, :cond_5a

    .line 1654
    if-eqz v7, :cond_5a

    .line 1656
    const/4 v7, 0x1

    .line 1657
    iput-boolean v7, v8, Lo/ba;->h:Z

    .line 1659
    goto :goto_39

    .line 1660
    :cond_5a
    const/4 v7, 0x1

    .line 1661
    :goto_39
    iget-object v10, v1, Lo/M4;->q0:Ljava/util/ArrayList;

    .line 1663
    aget v11, v23, v9

    .line 1665
    const/4 v12, 0x2

    .line 1666
    if-eq v11, v12, :cond_5c

    .line 1668
    aget v11, v23, v7

    .line 1670
    if-ne v11, v12, :cond_5b

    .line 1672
    goto :goto_3a

    .line 1673
    :cond_5b
    move v7, v9

    .line 1674
    goto :goto_3b

    .line 1675
    :cond_5c
    :goto_3a
    const/4 v7, 0x1

    .line 1676
    :goto_3b
    iput v9, v1, Lo/M4;->z0:I

    .line 1678
    iput v9, v1, Lo/M4;->A0:I

    .line 1680
    move/from16 v11, v26

    .line 1682
    const/4 v9, 0x0

    .line 1683
    :goto_3c
    if-ge v9, v11, :cond_5e

    .line 1685
    iget-object v12, v1, Lo/M4;->q0:Ljava/util/ArrayList;

    .line 1687
    invoke-virtual {v12, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1690
    move-result-object v12

    .line 1691
    check-cast v12, Lo/L4;

    .line 1693
    instance-of v13, v12, Lo/M4;

    .line 1695
    if-eqz v13, :cond_5d

    .line 1697
    check-cast v12, Lo/M4;

    .line 1699
    invoke-virtual {v12}, Lo/M4;->U()V

    .line 1702
    :cond_5d
    add-int/lit8 v9, v9, 0x1

    .line 1704
    goto :goto_3c

    .line 1705
    :cond_5e
    invoke-virtual {v1, v6}, Lo/M4;->W(I)Z

    .line 1708
    move-result v9

    .line 1709
    move v12, v0

    .line 1710
    const/4 v0, 0x0

    .line 1711
    const/4 v13, 0x1

    .line 1712
    :goto_3d
    if-eqz v13, :cond_72

    .line 1714
    const/4 v14, 0x1

    .line 1715
    add-int/lit8 v15, v0, 0x1

    .line 1717
    :try_start_0
    invoke-virtual {v8}, Lo/ba;->t()V

    .line 1720
    const/4 v14, 0x0

    .line 1721
    iput v14, v1, Lo/M4;->z0:I

    .line 1723
    iput v14, v1, Lo/M4;->A0:I

    .line 1725
    invoke-virtual {v1, v8}, Lo/L4;->g(Lo/ba;)V

    .line 1728
    const/4 v0, 0x0

    .line 1729
    :goto_3e
    if-ge v0, v11, :cond_5f

    .line 1731
    iget-object v14, v1, Lo/M4;->q0:Ljava/util/ArrayList;

    .line 1733
    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1736
    move-result-object v14

    .line 1737
    check-cast v14, Lo/L4;

    .line 1739
    invoke-virtual {v14, v8}, Lo/L4;->g(Lo/ba;)V

    .line 1742
    add-int/lit8 v0, v0, 0x1

    .line 1744
    goto :goto_3e

    .line 1745
    :catch_0
    move-exception v0

    .line 1746
    move/from16 v21, v12

    .line 1748
    const/4 v6, 0x0

    .line 1749
    :goto_3f
    const/4 v14, 0x5

    .line 1750
    goto/16 :goto_46

    .line 1752
    :cond_5f
    invoke-virtual {v1, v8}, Lo/M4;->S(Lo/ba;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1755
    :try_start_1
    iget-object v0, v1, Lo/M4;->G0:Ljava/lang/ref/WeakReference;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_9

    .line 1757
    if-eqz v0, :cond_60

    .line 1759
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 1762
    move-result-object v0

    .line 1763
    if-eqz v0, :cond_60

    .line 1765
    iget-object v0, v1, Lo/M4;->G0:Ljava/lang/ref/WeakReference;

    .line 1767
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 1770
    move-result-object v0

    .line 1771
    check-cast v0, Lo/x4;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 1773
    move-object/from16 v14, v24

    .line 1775
    :try_start_3
    invoke-virtual {v8, v14}, Lo/ba;->k(Ljava/lang/Object;)Lo/We;

    .line 1778
    move-result-object v13

    .line 1779
    iget-object v6, v1, Lo/M4;->w0:Lo/ba;

    .line 1781
    invoke-virtual {v6, v0}, Lo/ba;->k(Ljava/lang/Object;)Lo/We;

    .line 1784
    move-result-object v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 1785
    move/from16 v21, v12

    .line 1787
    move-object/from16 v24, v14

    .line 1789
    const/4 v12, 0x5

    .line 1790
    const/4 v14, 0x0

    .line 1791
    :try_start_4
    invoke-virtual {v6, v0, v13, v14, v12}, Lo/ba;->f(Lo/We;Lo/We;II)V

    .line 1794
    const/4 v6, 0x0

    .line 1795
    iput-object v6, v1, Lo/M4;->G0:Ljava/lang/ref/WeakReference;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 1797
    goto :goto_41

    .line 1798
    :catch_1
    move-exception v0

    .line 1799
    :goto_40
    const/4 v6, 0x0

    .line 1800
    const/4 v13, 0x1

    .line 1801
    goto :goto_3f

    .line 1802
    :catch_2
    move-exception v0

    .line 1803
    move/from16 v21, v12

    .line 1805
    move-object/from16 v24, v14

    .line 1807
    goto :goto_40

    .line 1808
    :catch_3
    move-exception v0

    .line 1809
    move/from16 v21, v12

    .line 1811
    goto :goto_40

    .line 1812
    :cond_60
    move/from16 v21, v12

    .line 1814
    :goto_41
    :try_start_5
    iget-object v0, v1, Lo/M4;->I0:Ljava/lang/ref/WeakReference;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_8

    .line 1816
    if-eqz v0, :cond_61

    .line 1818
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 1821
    move-result-object v0

    .line 1822
    if-eqz v0, :cond_61

    .line 1824
    iget-object v0, v1, Lo/M4;->I0:Ljava/lang/ref/WeakReference;

    .line 1826
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 1829
    move-result-object v0

    .line 1830
    check-cast v0, Lo/x4;

    .line 1832
    iget-object v6, v1, Lo/L4;->L:Lo/x4;

    .line 1834
    invoke-virtual {v8, v6}, Lo/ba;->k(Ljava/lang/Object;)Lo/We;

    .line 1837
    move-result-object v6

    .line 1838
    iget-object v12, v1, Lo/M4;->w0:Lo/ba;

    .line 1840
    invoke-virtual {v12, v0}, Lo/ba;->k(Ljava/lang/Object;)Lo/We;

    .line 1843
    move-result-object v0

    .line 1844
    const/4 v13, 0x0

    .line 1845
    const/4 v14, 0x5

    .line 1846
    invoke-virtual {v12, v6, v0, v13, v14}, Lo/ba;->f(Lo/We;Lo/We;II)V

    .line 1849
    const/4 v6, 0x0

    .line 1850
    iput-object v6, v1, Lo/M4;->I0:Ljava/lang/ref/WeakReference;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    .line 1852
    :cond_61
    :try_start_7
    iget-object v0, v1, Lo/M4;->H0:Ljava/lang/ref/WeakReference;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_8

    .line 1854
    if-eqz v0, :cond_62

    .line 1856
    :try_start_8
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 1859
    move-result-object v0

    .line 1860
    if-eqz v0, :cond_62

    .line 1862
    iget-object v0, v1, Lo/M4;->H0:Ljava/lang/ref/WeakReference;

    .line 1864
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 1867
    move-result-object v0

    .line 1868
    check-cast v0, Lo/x4;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    .line 1870
    move-object/from16 v6, v22

    .line 1872
    :try_start_9
    invoke-virtual {v8, v6}, Lo/ba;->k(Ljava/lang/Object;)Lo/We;

    .line 1875
    move-result-object v12

    .line 1876
    iget-object v13, v1, Lo/M4;->w0:Lo/ba;

    .line 1878
    invoke-virtual {v13, v0}, Lo/ba;->k(Ljava/lang/Object;)Lo/We;

    .line 1881
    move-result-object v0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    .line 1882
    move-object/from16 v22, v6

    .line 1884
    const/4 v6, 0x5

    .line 1885
    const/4 v14, 0x0

    .line 1886
    :try_start_a
    invoke-virtual {v13, v0, v12, v14, v6}, Lo/ba;->f(Lo/We;Lo/We;II)V

    .line 1889
    const/4 v6, 0x0

    .line 1890
    iput-object v6, v1, Lo/M4;->H0:Ljava/lang/ref/WeakReference;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1

    .line 1892
    goto :goto_42

    .line 1893
    :catch_4
    move-exception v0

    .line 1894
    move-object/from16 v22, v6

    .line 1896
    goto :goto_40

    .line 1897
    :cond_62
    :goto_42
    :try_start_b
    iget-object v0, v1, Lo/M4;->J0:Ljava/lang/ref/WeakReference;

    .line 1899
    if-eqz v0, :cond_63

    .line 1901
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 1904
    move-result-object v0

    .line 1905
    if-eqz v0, :cond_63

    .line 1907
    iget-object v0, v1, Lo/M4;->J0:Ljava/lang/ref/WeakReference;

    .line 1909
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 1912
    move-result-object v0

    .line 1913
    check-cast v0, Lo/x4;

    .line 1915
    iget-object v6, v1, Lo/L4;->K:Lo/x4;

    .line 1917
    invoke-virtual {v8, v6}, Lo/ba;->k(Ljava/lang/Object;)Lo/We;

    .line 1920
    move-result-object v6
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_8

    .line 1921
    :try_start_c
    iget-object v12, v1, Lo/M4;->w0:Lo/ba;

    .line 1923
    invoke-virtual {v12, v0}, Lo/ba;->k(Ljava/lang/Object;)Lo/We;

    .line 1926
    move-result-object v0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_7

    .line 1927
    const/4 v13, 0x0

    .line 1928
    const/4 v14, 0x5

    .line 1929
    :try_start_d
    invoke-virtual {v12, v6, v0, v13, v14}, Lo/ba;->f(Lo/We;Lo/We;II)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_6

    .line 1932
    const/4 v6, 0x0

    .line 1933
    :try_start_e
    iput-object v6, v1, Lo/M4;->J0:Ljava/lang/ref/WeakReference;

    .line 1935
    goto :goto_45

    .line 1936
    :catch_5
    move-exception v0

    .line 1937
    :goto_43
    const/4 v13, 0x1

    .line 1938
    goto :goto_46

    .line 1939
    :catch_6
    move-exception v0

    .line 1940
    const/4 v6, 0x0

    .line 1941
    goto :goto_43

    .line 1942
    :catch_7
    move-exception v0

    .line 1943
    goto :goto_44

    .line 1944
    :catch_8
    move-exception v0

    .line 1945
    :goto_44
    const/4 v6, 0x0

    .line 1946
    const/4 v14, 0x5

    .line 1947
    goto :goto_43

    .line 1948
    :cond_63
    const/4 v6, 0x0

    .line 1949
    const/4 v14, 0x5

    .line 1950
    :goto_45
    invoke-virtual {v8}, Lo/ba;->p()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_5

    .line 1953
    const/4 v13, 0x1

    .line 1954
    goto :goto_47

    .line 1955
    :catch_9
    move-exception v0

    .line 1956
    move/from16 v21, v12

    .line 1958
    goto :goto_44

    .line 1959
    :goto_46
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1962
    sget-object v12, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 1964
    new-instance v6, Ljava/lang/StringBuilder;

    .line 1966
    const-string v14, "EXCEPTION : "

    .line 1968
    invoke-direct {v6, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1971
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1974
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1977
    move-result-object v0

    .line 1978
    invoke-virtual {v12, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1981
    :goto_47
    sget-object v0, Lo/x9;->y:[Z

    .line 1983
    if-eqz v13, :cond_67

    .line 1985
    const/4 v6, 0x0

    .line 1986
    const/4 v12, 0x2

    .line 1987
    aput-boolean v6, v0, v12

    .line 1989
    const/16 v6, 0x40

    .line 1991
    invoke-virtual {v1, v6}, Lo/M4;->W(I)Z

    .line 1994
    move-result v12

    .line 1995
    invoke-virtual {v1, v8, v12}, Lo/L4;->Q(Lo/ba;Z)V

    .line 1998
    iget-object v13, v1, Lo/M4;->q0:Ljava/util/ArrayList;

    .line 2000
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    .line 2003
    move-result v13

    .line 2004
    const/4 v14, 0x0

    .line 2005
    const/16 v16, 0x0

    .line 2007
    :goto_48
    if-ge v14, v13, :cond_66

    .line 2009
    iget-object v6, v1, Lo/M4;->q0:Ljava/util/ArrayList;

    .line 2011
    invoke-virtual {v6, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 2014
    move-result-object v6

    .line 2015
    check-cast v6, Lo/L4;

    .line 2017
    invoke-virtual {v6, v8, v12}, Lo/L4;->Q(Lo/ba;Z)V

    .line 2020
    move/from16 v26, v12

    .line 2022
    iget v12, v6, Lo/L4;->h:I

    .line 2024
    move/from16 v27, v13

    .line 2026
    const/4 v13, -0x1

    .line 2027
    if-ne v12, v13, :cond_64

    .line 2029
    iget v6, v6, Lo/L4;->i:I

    .line 2031
    if-eq v6, v13, :cond_65

    .line 2033
    :cond_64
    const/16 v16, 0x1

    .line 2035
    :cond_65
    add-int/lit8 v14, v14, 0x1

    .line 2037
    move/from16 v12, v26

    .line 2039
    move/from16 v13, v27

    .line 2041
    const/16 v6, 0x40

    .line 2043
    goto :goto_48

    .line 2044
    :cond_66
    const/4 v13, -0x1

    .line 2045
    goto :goto_4a

    .line 2046
    :cond_67
    const/4 v13, -0x1

    .line 2047
    invoke-virtual {v1, v8, v9}, Lo/L4;->Q(Lo/ba;Z)V

    .line 2050
    const/4 v6, 0x0

    .line 2051
    :goto_49
    if-ge v6, v11, :cond_68

    .line 2053
    iget-object v12, v1, Lo/M4;->q0:Ljava/util/ArrayList;

    .line 2055
    invoke-virtual {v12, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 2058
    move-result-object v12

    .line 2059
    check-cast v12, Lo/L4;

    .line 2061
    invoke-virtual {v12, v8, v9}, Lo/L4;->Q(Lo/ba;Z)V

    .line 2064
    add-int/lit8 v6, v6, 0x1

    .line 2066
    goto :goto_49

    .line 2067
    :cond_68
    const/16 v16, 0x0

    .line 2069
    :goto_4a
    const/16 v6, 0x8

    .line 2071
    if-eqz v7, :cond_6b

    .line 2073
    if-ge v15, v6, :cond_6b

    .line 2075
    const/4 v12, 0x2

    .line 2076
    aget-boolean v0, v0, v12

    .line 2078
    if-eqz v0, :cond_6b

    .line 2080
    const/4 v0, 0x0

    .line 2081
    const/4 v12, 0x0

    .line 2082
    const/4 v14, 0x0

    .line 2083
    :goto_4b
    if-ge v0, v11, :cond_69

    .line 2085
    iget-object v13, v1, Lo/M4;->q0:Ljava/util/ArrayList;

    .line 2087
    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 2090
    move-result-object v13

    .line 2091
    check-cast v13, Lo/L4;

    .line 2093
    iget v6, v13, Lo/L4;->Y:I

    .line 2095
    invoke-virtual {v13}, Lo/L4;->q()I

    .line 2098
    move-result v27

    .line 2099
    add-int v6, v27, v6

    .line 2101
    invoke-static {v12, v6}, Ljava/lang/Math;->max(II)I

    .line 2104
    move-result v12

    .line 2105
    iget v6, v13, Lo/L4;->Z:I

    .line 2107
    invoke-virtual {v13}, Lo/L4;->k()I

    .line 2110
    move-result v13

    .line 2111
    add-int/2addr v13, v6

    .line 2112
    invoke-static {v14, v13}, Ljava/lang/Math;->max(II)I

    .line 2115
    move-result v14

    .line 2116
    add-int/lit8 v0, v0, 0x1

    .line 2118
    const/16 v6, 0x8

    .line 2120
    const/4 v13, -0x1

    .line 2121
    goto :goto_4b

    .line 2122
    :cond_69
    iget v0, v1, Lo/L4;->b0:I

    .line 2124
    invoke-static {v0, v12}, Ljava/lang/Math;->max(II)I

    .line 2127
    move-result v0

    .line 2128
    iget v6, v1, Lo/L4;->c0:I

    .line 2130
    invoke-static {v6, v14}, Ljava/lang/Math;->max(II)I

    .line 2133
    move-result v6

    .line 2134
    const/4 v12, 0x2

    .line 2135
    if-ne v2, v12, :cond_6a

    .line 2137
    invoke-virtual/range {p0 .. p0}, Lo/L4;->q()I

    .line 2140
    move-result v13

    .line 2141
    if-ge v13, v0, :cond_6a

    .line 2143
    invoke-virtual {v1, v0}, Lo/L4;->O(I)V

    .line 2146
    const/4 v13, 0x0

    .line 2147
    aput v12, v23, v13

    .line 2149
    const/16 v16, 0x1

    .line 2151
    const/16 v21, 0x1

    .line 2153
    :cond_6a
    if-ne v4, v12, :cond_6b

    .line 2155
    invoke-virtual/range {p0 .. p0}, Lo/L4;->k()I

    .line 2158
    move-result v0

    .line 2159
    if-ge v0, v6, :cond_6b

    .line 2161
    invoke-virtual {v1, v6}, Lo/L4;->L(I)V

    .line 2164
    const/4 v6, 0x1

    .line 2165
    aput v12, v23, v6

    .line 2167
    const/16 v16, 0x1

    .line 2169
    const/16 v21, 0x1

    .line 2171
    :cond_6b
    iget v0, v1, Lo/L4;->b0:I

    .line 2173
    invoke-virtual/range {p0 .. p0}, Lo/L4;->q()I

    .line 2176
    move-result v6

    .line 2177
    invoke-static {v0, v6}, Ljava/lang/Math;->max(II)I

    .line 2180
    move-result v0

    .line 2181
    invoke-virtual/range {p0 .. p0}, Lo/L4;->q()I

    .line 2184
    move-result v6

    .line 2185
    if-le v0, v6, :cond_6c

    .line 2187
    invoke-virtual {v1, v0}, Lo/L4;->O(I)V

    .line 2190
    const/4 v6, 0x1

    .line 2191
    const/4 v12, 0x0

    .line 2192
    aput v6, v23, v12

    .line 2194
    move/from16 v16, v6

    .line 2196
    move/from16 v18, v16

    .line 2198
    goto :goto_4c

    .line 2199
    :cond_6c
    const/4 v6, 0x1

    .line 2200
    move/from16 v18, v21

    .line 2202
    :goto_4c
    iget v0, v1, Lo/L4;->c0:I

    .line 2204
    invoke-virtual/range {p0 .. p0}, Lo/L4;->k()I

    .line 2207
    move-result v12

    .line 2208
    invoke-static {v0, v12}, Ljava/lang/Math;->max(II)I

    .line 2211
    move-result v0

    .line 2212
    invoke-virtual/range {p0 .. p0}, Lo/L4;->k()I

    .line 2215
    move-result v12

    .line 2216
    if-le v0, v12, :cond_6d

    .line 2218
    invoke-virtual {v1, v0}, Lo/L4;->L(I)V

    .line 2221
    aput v6, v23, v6

    .line 2223
    move v0, v6

    .line 2224
    move/from16 v16, v0

    .line 2226
    goto :goto_4d

    .line 2227
    :cond_6d
    move/from16 v0, v18

    .line 2229
    :goto_4d
    if-nez v0, :cond_70

    .line 2231
    const/4 v12, 0x0

    .line 2232
    aget v13, v23, v12

    .line 2234
    const/4 v14, 0x2

    .line 2235
    if-ne v13, v14, :cond_6e

    .line 2237
    if-lez v3, :cond_6e

    .line 2239
    invoke-virtual/range {p0 .. p0}, Lo/L4;->q()I

    .line 2242
    move-result v13

    .line 2243
    if-le v13, v3, :cond_6e

    .line 2245
    iput-boolean v6, v1, Lo/M4;->E0:Z

    .line 2247
    aput v6, v23, v12

    .line 2249
    invoke-virtual {v1, v3}, Lo/L4;->O(I)V

    .line 2252
    move v0, v6

    .line 2253
    move/from16 v16, v0

    .line 2255
    :cond_6e
    aget v12, v23, v6

    .line 2257
    const/4 v13, 0x2

    .line 2258
    if-ne v12, v13, :cond_6f

    .line 2260
    if-lez v5, :cond_6f

    .line 2262
    invoke-virtual/range {p0 .. p0}, Lo/L4;->k()I

    .line 2265
    move-result v12

    .line 2266
    if-le v12, v5, :cond_6f

    .line 2268
    iput-boolean v6, v1, Lo/M4;->F0:Z

    .line 2270
    aput v6, v23, v6

    .line 2272
    invoke-virtual {v1, v5}, Lo/L4;->L(I)V

    .line 2275
    const/16 v0, 0x8

    .line 2277
    const/4 v6, 0x1

    .line 2278
    const/4 v12, 0x1

    .line 2279
    goto :goto_4f

    .line 2280
    :cond_6f
    :goto_4e
    move v12, v0

    .line 2281
    move/from16 v6, v16

    .line 2283
    const/16 v0, 0x8

    .line 2285
    goto :goto_4f

    .line 2286
    :cond_70
    const/4 v13, 0x2

    .line 2287
    goto :goto_4e

    .line 2288
    :goto_4f
    if-le v15, v0, :cond_71

    .line 2290
    const/4 v6, 0x0

    .line 2291
    :cond_71
    move v13, v6

    .line 2292
    move v0, v15

    .line 2293
    const/16 v6, 0x40

    .line 2295
    goto/16 :goto_3d

    .line 2297
    :cond_72
    move/from16 v21, v12

    .line 2299
    iput-object v10, v1, Lo/M4;->q0:Ljava/util/ArrayList;

    .line 2301
    if-eqz v21, :cond_73

    .line 2303
    const/4 v3, 0x0

    .line 2304
    aput v2, v23, v3

    .line 2306
    const/4 v2, 0x1

    .line 2307
    aput v4, v23, v2

    .line 2309
    :cond_73
    iget-object v0, v8, Lo/ba;->m:Lo/s2;

    .line 2311
    invoke-virtual {v1, v0}, Lo/M4;->F(Lo/s2;)V

    .line 2314
    return-void
.end method

.method public final W(I)Z
    .locals 1

    .line 1
    iget v0, p0, Lo/M4;->D0:I

    .line 3
    and-int/2addr v0, p1

    .line 4
    if-ne v0, p1, :cond_0

    .line 6
    const/4 p1, 0x1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 p1, 0x0

    .line 9
    :goto_0
    return p1
.end method

.method public final n(Ljava/lang/StringBuilder;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    iget-object v1, p0, Lo/L4;->j:Ljava/lang/String;

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    const-string v1, ":{\n"

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    .line 25
    const-string v1, "  actualWidth:"

    .line 27
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    iget v1, p0, Lo/L4;->U:I

    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    const-string v0, "\n"

    .line 44
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    new-instance v1, Ljava/lang/StringBuilder;

    .line 49
    const-string v2, "  actualHeight:"

    .line 51
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 54
    iget v2, p0, Lo/L4;->V:I

    .line 56
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 59
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    move-result-object v1

    .line 63
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    iget-object v0, p0, Lo/M4;->q0:Ljava/util/ArrayList;

    .line 71
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 74
    move-result-object v0

    .line 75
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 78
    move-result v1

    .line 79
    if-eqz v1, :cond_0

    .line 81
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 84
    move-result-object v1

    .line 85
    check-cast v1, Lo/L4;

    .line 87
    invoke-virtual {v1, p1}, Lo/L4;->n(Ljava/lang/StringBuilder;)V

    .line 90
    const-string v1, ",\n"

    .line 92
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    goto :goto_0

    .line 96
    :cond_0
    const-string v0, "}"

    .line 98
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    return-void
.end method
