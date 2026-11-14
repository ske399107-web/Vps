.class public Lo/eb;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"

# interfaces
.implements Lo/Le;


# static fields
.field public static final w:Landroid/graphics/Paint;


# instance fields
.field public a:Lo/db;

.field public final b:[Lo/Je;

.field public final c:[Lo/Je;

.field public final d:Ljava/util/BitSet;

.field public e:Z

.field public final f:Landroid/graphics/Matrix;

.field public final g:Landroid/graphics/Path;

.field public final h:Landroid/graphics/Path;

.field public final i:Landroid/graphics/RectF;

.field public final j:Landroid/graphics/RectF;

.field public final k:Landroid/graphics/Region;

.field public final l:Landroid/graphics/Region;

.field public m:Lo/Ae;

.field public final n:Landroid/graphics/Paint;

.field public final o:Landroid/graphics/Paint;

.field public final p:Lo/ye;

.field public final q:Lo/C;

.field public final r:Lo/Ce;

.field public s:Landroid/graphics/PorterDuffColorFilter;

.field public t:Landroid/graphics/PorterDuffColorFilter;

.field public final u:Landroid/graphics/RectF;

.field public final v:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Landroid/graphics/Paint;

    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 7
    sput-object v0, Lo/eb;->w:Landroid/graphics/Paint;

    .line 9
    const/4 v1, -0x1

    .line 10
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 13
    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    .line 15
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    .line 17
    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    .line 20
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 23
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Lo/Ae;

    invoke-direct {v0}, Lo/Ae;-><init>()V

    invoke-direct {p0, v0}, Lo/eb;-><init>(Lo/Ae;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 2
    invoke-static {p1, p2, p3, p4}, Lo/Ae;->b(Landroid/content/Context;Landroid/util/AttributeSet;II)Lo/ze;

    move-result-object p1

    invoke-virtual {p1}, Lo/ze;->a()Lo/Ae;

    move-result-object p1

    invoke-direct {p0, p1}, Lo/eb;-><init>(Lo/Ae;)V

    return-void
.end method

.method public constructor <init>(Lo/Ae;)V
    .locals 1

    .line 3
    new-instance v0, Lo/db;

    invoke-direct {v0, p1}, Lo/db;-><init>(Lo/Ae;)V

    invoke-direct {p0, v0}, Lo/eb;-><init>(Lo/db;)V

    return-void
.end method

.method public constructor <init>(Lo/db;)V
    .locals 5

    .line 4
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/4 v0, 0x4

    .line 5
    new-array v1, v0, [Lo/Je;

    iput-object v1, p0, Lo/eb;->b:[Lo/Je;

    .line 6
    new-array v0, v0, [Lo/Je;

    iput-object v0, p0, Lo/eb;->c:[Lo/Je;

    .line 7
    new-instance v0, Ljava/util/BitSet;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Lo/eb;->d:Ljava/util/BitSet;

    .line 8
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lo/eb;->f:Landroid/graphics/Matrix;

    .line 9
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lo/eb;->g:Landroid/graphics/Path;

    .line 10
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lo/eb;->h:Landroid/graphics/Path;

    .line 11
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lo/eb;->i:Landroid/graphics/RectF;

    .line 12
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lo/eb;->j:Landroid/graphics/RectF;

    .line 13
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Lo/eb;->k:Landroid/graphics/Region;

    .line 14
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Lo/eb;->l:Landroid/graphics/Region;

    .line 15
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lo/eb;->n:Landroid/graphics/Paint;

    .line 16
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lo/eb;->o:Landroid/graphics/Paint;

    .line 17
    new-instance v3, Lo/ye;

    invoke-direct {v3}, Lo/ye;-><init>()V

    iput-object v3, p0, Lo/eb;->p:Lo/ye;

    .line 18
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    if-ne v3, v4, :cond_0

    .line 19
    sget-object v3, Lo/Be;->a:Lo/Ce;

    goto :goto_0

    .line 20
    :cond_0
    new-instance v3, Lo/Ce;

    invoke-direct {v3}, Lo/Ce;-><init>()V

    :goto_0
    iput-object v3, p0, Lo/eb;->r:Lo/Ce;

    .line 21
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    iput-object v3, p0, Lo/eb;->u:Landroid/graphics/RectF;

    .line 22
    iput-boolean v1, p0, Lo/eb;->v:Z

    .line 23
    iput-object p1, p0, Lo/eb;->a:Lo/db;

    .line 24
    sget-object p1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 25
    sget-object p1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 26
    invoke-virtual {p0}, Lo/eb;->o()Z

    .line 27
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p1

    invoke-virtual {p0, p1}, Lo/eb;->n([I)Z

    .line 28
    new-instance p1, Lo/C;

    const/16 v0, 0x14

    invoke-direct {p1, v0, p0}, Lo/C;-><init>(ILjava/lang/Object;)V

    iput-object p1, p0, Lo/eb;->q:Lo/C;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lo/eb;->invalidateSelf()V

    .line 4
    return-void
.end method

.method public final b(Landroid/graphics/RectF;Landroid/graphics/Path;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lo/eb;->a:Lo/db;

    .line 3
    iget-object v2, v0, Lo/db;->a:Lo/Ae;

    .line 5
    iget v3, v0, Lo/db;->i:F

    .line 7
    iget-object v5, p0, Lo/eb;->q:Lo/C;

    .line 9
    iget-object v1, p0, Lo/eb;->r:Lo/Ce;

    .line 11
    move-object v4, p1

    .line 12
    move-object v6, p2

    .line 13
    invoke-virtual/range {v1 .. v6}, Lo/Ce;->a(Lo/Ae;FLandroid/graphics/RectF;Lo/C;Landroid/graphics/Path;)V

    .line 16
    iget-object v0, p0, Lo/eb;->a:Lo/db;

    .line 18
    iget v0, v0, Lo/db;->h:F

    .line 20
    const/high16 v1, 0x3f800000    # 1.0f

    .line 22
    cmpl-float v0, v0, v1

    .line 24
    if-eqz v0, :cond_0

    .line 26
    iget-object v0, p0, Lo/eb;->f:Landroid/graphics/Matrix;

    .line 28
    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 31
    iget-object v1, p0, Lo/eb;->a:Lo/db;

    .line 33
    iget v1, v1, Lo/db;->h:F

    .line 35
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    .line 38
    move-result v2

    .line 39
    const/high16 v3, 0x40000000    # 2.0f

    .line 41
    div-float/2addr v2, v3

    .line 42
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    .line 45
    move-result p1

    .line 46
    div-float/2addr p1, v3

    .line 47
    invoke-virtual {v0, v1, v1, v2, p1}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 50
    invoke-virtual {p2, v0}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 53
    :cond_0
    iget-object p1, p0, Lo/eb;->u:Landroid/graphics/RectF;

    .line 55
    const/4 v0, 0x1

    .line 56
    invoke-virtual {p2, p1, v0}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 59
    return-void
.end method

.method public final c(I)I
    .locals 3

    .line 1
    iget-object v0, p0, Lo/eb;->a:Lo/db;

    .line 3
    iget v1, v0, Lo/db;->m:F

    .line 5
    const/4 v2, 0x0

    .line 6
    add-float/2addr v1, v2

    .line 7
    iget v2, v0, Lo/db;->l:F

    .line 9
    add-float/2addr v1, v2

    .line 10
    iget-object v0, v0, Lo/db;->b:Lo/w6;

    .line 12
    if-eqz v0, :cond_0

    .line 14
    invoke-virtual {v0, p1, v1}, Lo/w6;->a(IF)I

    .line 17
    move-result p1

    .line 18
    :cond_0
    return p1
.end method

.method public final d(Landroid/graphics/Canvas;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lo/eb;->d:Ljava/util/BitSet;

    .line 3
    invoke-virtual {v0}, Ljava/util/BitSet;->cardinality()I

    .line 6
    move-result v0

    .line 7
    if-lez v0, :cond_0

    .line 9
    const-string v0, "eb"

    .line 11
    const-string v1, "Compatibility shadow requested but can\'t be drawn for all operations in this shape."

    .line 13
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    :cond_0
    iget-object v0, p0, Lo/eb;->a:Lo/db;

    .line 18
    iget v0, v0, Lo/db;->p:I

    .line 20
    iget-object v1, p0, Lo/eb;->g:Landroid/graphics/Path;

    .line 22
    iget-object v2, p0, Lo/eb;->p:Lo/ye;

    .line 24
    if-eqz v0, :cond_1

    .line 26
    iget-object v0, v2, Lo/ye;->a:Landroid/graphics/Paint;

    .line 28
    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 31
    :cond_1
    const/4 v0, 0x0

    .line 32
    move v3, v0

    .line 33
    :goto_0
    const/4 v4, 0x4

    .line 34
    if-ge v3, v4, :cond_2

    .line 36
    iget-object v4, p0, Lo/eb;->b:[Lo/Je;

    .line 38
    aget-object v4, v4, v3

    .line 40
    iget-object v5, p0, Lo/eb;->a:Lo/db;

    .line 42
    iget v5, v5, Lo/db;->o:I

    .line 44
    sget-object v6, Lo/Je;->b:Landroid/graphics/Matrix;

    .line 46
    invoke-virtual {v4, v6, v2, v5, p1}, Lo/Je;->a(Landroid/graphics/Matrix;Lo/ye;ILandroid/graphics/Canvas;)V

    .line 49
    iget-object v4, p0, Lo/eb;->c:[Lo/Je;

    .line 51
    aget-object v4, v4, v3

    .line 53
    iget-object v5, p0, Lo/eb;->a:Lo/db;

    .line 55
    iget v5, v5, Lo/db;->o:I

    .line 57
    invoke-virtual {v4, v6, v2, v5, p1}, Lo/Je;->a(Landroid/graphics/Matrix;Lo/ye;ILandroid/graphics/Canvas;)V

    .line 60
    add-int/lit8 v3, v3, 0x1

    .line 62
    goto :goto_0

    .line 63
    :cond_2
    iget-boolean v2, p0, Lo/eb;->v:Z

    .line 65
    if-eqz v2, :cond_3

    .line 67
    iget-object v2, p0, Lo/eb;->a:Lo/db;

    .line 69
    iget v2, v2, Lo/db;->p:I

    .line 71
    int-to-double v2, v2

    .line 72
    int-to-double v4, v0

    .line 73
    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    .line 76
    move-result-wide v6

    .line 77
    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    .line 80
    move-result-wide v6

    .line 81
    mul-double/2addr v6, v2

    .line 82
    double-to-int v0, v6

    .line 83
    iget-object v2, p0, Lo/eb;->a:Lo/db;

    .line 85
    iget v2, v2, Lo/db;->p:I

    .line 87
    int-to-double v2, v2

    .line 88
    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    .line 91
    move-result-wide v4

    .line 92
    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    .line 95
    move-result-wide v4

    .line 96
    mul-double/2addr v4, v2

    .line 97
    double-to-int v2, v4

    .line 98
    neg-int v3, v0

    .line 99
    int-to-float v3, v3

    .line 100
    neg-int v4, v2

    .line 101
    int-to-float v4, v4

    .line 102
    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 105
    sget-object v3, Lo/eb;->w:Landroid/graphics/Paint;

    .line 107
    invoke-virtual {p1, v1, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 110
    int-to-float v0, v0

    .line 111
    int-to-float v1, v2

    .line 112
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 115
    :cond_3
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 19

    .line 1
    move-object/from16 v6, p0

    .line 3
    move-object/from16 v7, p1

    .line 5
    iget-object v8, v6, Lo/eb;->n:Landroid/graphics/Paint;

    .line 7
    iget-object v0, v6, Lo/eb;->s:Landroid/graphics/PorterDuffColorFilter;

    .line 9
    invoke-virtual {v8, v0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 12
    invoke-virtual {v8}, Landroid/graphics/Paint;->getAlpha()I

    .line 15
    move-result v9

    .line 16
    iget-object v0, v6, Lo/eb;->a:Lo/db;

    .line 18
    iget v0, v0, Lo/db;->k:I

    .line 20
    ushr-int/lit8 v1, v0, 0x7

    .line 22
    add-int/2addr v0, v1

    .line 23
    mul-int/2addr v0, v9

    .line 24
    ushr-int/lit8 v0, v0, 0x8

    .line 26
    invoke-virtual {v8, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 29
    iget-object v10, v6, Lo/eb;->o:Landroid/graphics/Paint;

    .line 31
    iget-object v0, v6, Lo/eb;->t:Landroid/graphics/PorterDuffColorFilter;

    .line 33
    invoke-virtual {v10, v0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 36
    iget-object v0, v6, Lo/eb;->a:Lo/db;

    .line 38
    iget v0, v0, Lo/db;->j:F

    .line 40
    invoke-virtual {v10, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 43
    invoke-virtual {v10}, Landroid/graphics/Paint;->getAlpha()I

    .line 46
    move-result v11

    .line 47
    iget-object v0, v6, Lo/eb;->a:Lo/db;

    .line 49
    iget v0, v0, Lo/db;->k:I

    .line 51
    ushr-int/lit8 v1, v0, 0x7

    .line 53
    add-int/2addr v0, v1

    .line 54
    mul-int/2addr v0, v11

    .line 55
    ushr-int/lit8 v0, v0, 0x8

    .line 57
    invoke-virtual {v10, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 60
    iget-boolean v0, v6, Lo/eb;->e:Z

    .line 62
    iget-object v3, v6, Lo/eb;->g:Landroid/graphics/Path;

    .line 64
    const/4 v1, 0x0

    .line 65
    if-eqz v0, :cond_6

    .line 67
    invoke-virtual/range {p0 .. p0}, Lo/eb;->h()Z

    .line 70
    move-result v0

    .line 71
    const/4 v2, 0x0

    .line 72
    const/high16 v4, 0x40000000    # 2.0f

    .line 74
    if-eqz v0, :cond_0

    .line 76
    invoke-virtual {v10}, Landroid/graphics/Paint;->getStrokeWidth()F

    .line 79
    move-result v0

    .line 80
    div-float/2addr v0, v4

    .line 81
    goto :goto_0

    .line 82
    :cond_0
    move v0, v2

    .line 83
    :goto_0
    neg-float v0, v0

    .line 84
    iget-object v5, v6, Lo/eb;->a:Lo/db;

    .line 86
    iget-object v5, v5, Lo/db;->a:Lo/Ae;

    .line 88
    invoke-virtual {v5}, Lo/Ae;->e()Lo/ze;

    .line 91
    move-result-object v12

    .line 92
    iget-object v13, v5, Lo/Ae;->e:Lo/d5;

    .line 94
    instance-of v14, v13, Lo/Nd;

    .line 96
    if-eqz v14, :cond_1

    .line 98
    goto :goto_1

    .line 99
    :cond_1
    new-instance v14, Lo/C0;

    .line 101
    invoke-direct {v14, v0, v13}, Lo/C0;-><init>(FLo/d5;)V

    .line 104
    move-object v13, v14

    .line 105
    :goto_1
    iput-object v13, v12, Lo/ze;->e:Lo/d5;

    .line 107
    iget-object v13, v5, Lo/Ae;->f:Lo/d5;

    .line 109
    instance-of v14, v13, Lo/Nd;

    .line 111
    if-eqz v14, :cond_2

    .line 113
    goto :goto_2

    .line 114
    :cond_2
    new-instance v14, Lo/C0;

    .line 116
    invoke-direct {v14, v0, v13}, Lo/C0;-><init>(FLo/d5;)V

    .line 119
    move-object v13, v14

    .line 120
    :goto_2
    iput-object v13, v12, Lo/ze;->f:Lo/d5;

    .line 122
    iget-object v13, v5, Lo/Ae;->h:Lo/d5;

    .line 124
    instance-of v14, v13, Lo/Nd;

    .line 126
    if-eqz v14, :cond_3

    .line 128
    goto :goto_3

    .line 129
    :cond_3
    new-instance v14, Lo/C0;

    .line 131
    invoke-direct {v14, v0, v13}, Lo/C0;-><init>(FLo/d5;)V

    .line 134
    move-object v13, v14

    .line 135
    :goto_3
    iput-object v13, v12, Lo/ze;->h:Lo/d5;

    .line 137
    iget-object v5, v5, Lo/Ae;->g:Lo/d5;

    .line 139
    instance-of v13, v5, Lo/Nd;

    .line 141
    if-eqz v13, :cond_4

    .line 143
    goto :goto_4

    .line 144
    :cond_4
    new-instance v13, Lo/C0;

    .line 146
    invoke-direct {v13, v0, v5}, Lo/C0;-><init>(FLo/d5;)V

    .line 149
    move-object v5, v13

    .line 150
    :goto_4
    iput-object v5, v12, Lo/ze;->g:Lo/d5;

    .line 152
    invoke-virtual {v12}, Lo/ze;->a()Lo/Ae;

    .line 155
    move-result-object v14

    .line 156
    iput-object v14, v6, Lo/eb;->m:Lo/Ae;

    .line 158
    iget-object v0, v6, Lo/eb;->a:Lo/db;

    .line 160
    iget v15, v0, Lo/db;->i:F

    .line 162
    iget-object v0, v6, Lo/eb;->j:Landroid/graphics/RectF;

    .line 164
    invoke-virtual/range {p0 .. p0}, Lo/eb;->g()Landroid/graphics/RectF;

    .line 167
    move-result-object v5

    .line 168
    invoke-virtual {v0, v5}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 171
    invoke-virtual/range {p0 .. p0}, Lo/eb;->h()Z

    .line 174
    move-result v5

    .line 175
    if-eqz v5, :cond_5

    .line 177
    invoke-virtual {v10}, Landroid/graphics/Paint;->getStrokeWidth()F

    .line 180
    move-result v2

    .line 181
    div-float/2addr v2, v4

    .line 182
    :cond_5
    invoke-virtual {v0, v2, v2}, Landroid/graphics/RectF;->inset(FF)V

    .line 185
    iget-object v2, v6, Lo/eb;->h:Landroid/graphics/Path;

    .line 187
    const/16 v17, 0x0

    .line 189
    iget-object v13, v6, Lo/eb;->r:Lo/Ce;

    .line 191
    move-object/from16 v16, v0

    .line 193
    move-object/from16 v18, v2

    .line 195
    invoke-virtual/range {v13 .. v18}, Lo/Ce;->a(Lo/Ae;FLandroid/graphics/RectF;Lo/C;Landroid/graphics/Path;)V

    .line 198
    invoke-virtual/range {p0 .. p0}, Lo/eb;->g()Landroid/graphics/RectF;

    .line 201
    move-result-object v0

    .line 202
    invoke-virtual {v6, v0, v3}, Lo/eb;->b(Landroid/graphics/RectF;Landroid/graphics/Path;)V

    .line 205
    iput-boolean v1, v6, Lo/eb;->e:Z

    .line 207
    :cond_6
    iget-object v0, v6, Lo/eb;->a:Lo/db;

    .line 209
    iget v2, v0, Lo/db;->n:I

    .line 211
    const/4 v4, 0x1

    .line 212
    if-eq v2, v4, :cond_a

    .line 214
    iget v4, v0, Lo/db;->o:I

    .line 216
    if-lez v4, :cond_a

    .line 218
    const/4 v4, 0x2

    .line 219
    if-eq v2, v4, :cond_7

    .line 221
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 223
    iget-object v0, v0, Lo/db;->a:Lo/Ae;

    .line 225
    invoke-virtual/range {p0 .. p0}, Lo/eb;->g()Landroid/graphics/RectF;

    .line 228
    move-result-object v5

    .line 229
    invoke-virtual {v0, v5}, Lo/Ae;->d(Landroid/graphics/RectF;)Z

    .line 232
    move-result v0

    .line 233
    if-nez v0, :cond_a

    .line 235
    invoke-virtual {v3}, Landroid/graphics/Path;->isConvex()Z

    .line 238
    move-result v0

    .line 239
    if-nez v0, :cond_a

    .line 241
    const/16 v0, 0x1d

    .line 243
    if-ge v2, v0, :cond_a

    .line 245
    :cond_7
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 248
    iget-object v0, v6, Lo/eb;->a:Lo/db;

    .line 250
    iget v0, v0, Lo/db;->p:I

    .line 252
    int-to-double v12, v0

    .line 253
    int-to-double v0, v1

    .line 254
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    .line 257
    move-result-wide v14

    .line 258
    invoke-static {v14, v15}, Ljava/lang/Math;->sin(D)D

    .line 261
    move-result-wide v14

    .line 262
    mul-double/2addr v14, v12

    .line 263
    double-to-int v2, v14

    .line 264
    iget-object v5, v6, Lo/eb;->a:Lo/db;

    .line 266
    iget v5, v5, Lo/db;->p:I

    .line 268
    int-to-double v12, v5

    .line 269
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    .line 272
    move-result-wide v0

    .line 273
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    .line 276
    move-result-wide v0

    .line 277
    mul-double/2addr v0, v12

    .line 278
    double-to-int v0, v0

    .line 279
    int-to-float v1, v2

    .line 280
    int-to-float v0, v0

    .line 281
    invoke-virtual {v7, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 284
    iget-boolean v0, v6, Lo/eb;->v:Z

    .line 286
    if-nez v0, :cond_8

    .line 288
    invoke-virtual/range {p0 .. p1}, Lo/eb;->d(Landroid/graphics/Canvas;)V

    .line 291
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 294
    goto/16 :goto_5

    .line 296
    :cond_8
    iget-object v0, v6, Lo/eb;->u:Landroid/graphics/RectF;

    .line 298
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    .line 301
    move-result v1

    .line 302
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 305
    move-result-object v2

    .line 306
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    .line 309
    move-result v2

    .line 310
    int-to-float v2, v2

    .line 311
    sub-float/2addr v1, v2

    .line 312
    float-to-int v1, v1

    .line 313
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    .line 316
    move-result v2

    .line 317
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 320
    move-result-object v5

    .line 321
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    .line 324
    move-result v5

    .line 325
    int-to-float v5, v5

    .line 326
    sub-float/2addr v2, v5

    .line 327
    float-to-int v2, v2

    .line 328
    if-ltz v1, :cond_9

    .line 330
    if-ltz v2, :cond_9

    .line 332
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    .line 335
    move-result v5

    .line 336
    float-to-int v5, v5

    .line 337
    iget-object v12, v6, Lo/eb;->a:Lo/db;

    .line 339
    iget v12, v12, Lo/db;->o:I

    .line 341
    invoke-static {v12, v4, v5, v1}, Lo/o5;->d(IIII)I

    .line 344
    move-result v5

    .line 345
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    .line 348
    move-result v0

    .line 349
    float-to-int v0, v0

    .line 350
    iget-object v12, v6, Lo/eb;->a:Lo/db;

    .line 352
    iget v12, v12, Lo/db;->o:I

    .line 354
    invoke-static {v12, v4, v0, v2}, Lo/o5;->d(IIII)I

    .line 357
    move-result v0

    .line 358
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 360
    invoke-static {v5, v0, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 363
    move-result-object v0

    .line 364
    new-instance v4, Landroid/graphics/Canvas;

    .line 366
    invoke-direct {v4, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 369
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 372
    move-result-object v5

    .line 373
    iget v5, v5, Landroid/graphics/Rect;->left:I

    .line 375
    iget-object v12, v6, Lo/eb;->a:Lo/db;

    .line 377
    iget v12, v12, Lo/db;->o:I

    .line 379
    sub-int/2addr v5, v12

    .line 380
    sub-int/2addr v5, v1

    .line 381
    int-to-float v1, v5

    .line 382
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 385
    move-result-object v5

    .line 386
    iget v5, v5, Landroid/graphics/Rect;->top:I

    .line 388
    iget-object v12, v6, Lo/eb;->a:Lo/db;

    .line 390
    iget v12, v12, Lo/db;->o:I

    .line 392
    sub-int/2addr v5, v12

    .line 393
    sub-int/2addr v5, v2

    .line 394
    int-to-float v2, v5

    .line 395
    neg-float v5, v1

    .line 396
    neg-float v12, v2

    .line 397
    invoke-virtual {v4, v5, v12}, Landroid/graphics/Canvas;->translate(FF)V

    .line 400
    invoke-virtual {v6, v4}, Lo/eb;->d(Landroid/graphics/Canvas;)V

    .line 403
    const/4 v4, 0x0

    .line 404
    invoke-virtual {v7, v0, v1, v2, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 407
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 410
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 413
    goto :goto_5

    .line 414
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 416
    const-string v1, "Invalid shadow bounds. Check that the treatments result in a valid path."

    .line 418
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 421
    throw v0

    .line 422
    :cond_a
    :goto_5
    iget-object v0, v6, Lo/eb;->a:Lo/db;

    .line 424
    iget-object v1, v0, Lo/db;->q:Landroid/graphics/Paint$Style;

    .line 426
    sget-object v2, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    .line 428
    if-eq v1, v2, :cond_b

    .line 430
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 432
    if-ne v1, v2, :cond_c

    .line 434
    :cond_b
    iget-object v4, v0, Lo/db;->a:Lo/Ae;

    .line 436
    invoke-virtual/range {p0 .. p0}, Lo/eb;->g()Landroid/graphics/RectF;

    .line 439
    move-result-object v5

    .line 440
    move-object/from16 v0, p0

    .line 442
    move-object/from16 v1, p1

    .line 444
    move-object v2, v8

    .line 445
    invoke-virtual/range {v0 .. v5}, Lo/eb;->e(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Path;Lo/Ae;Landroid/graphics/RectF;)V

    .line 448
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lo/eb;->h()Z

    .line 451
    move-result v0

    .line 452
    if-eqz v0, :cond_d

    .line 454
    invoke-virtual/range {p0 .. p1}, Lo/eb;->f(Landroid/graphics/Canvas;)V

    .line 457
    :cond_d
    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 460
    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 463
    return-void
.end method

.method public final e(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Path;Lo/Ae;Landroid/graphics/RectF;)V
    .locals 1

    .line 1
    invoke-virtual {p4, p5}, Lo/Ae;->d(Landroid/graphics/RectF;)Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    iget-object p3, p4, Lo/Ae;->f:Lo/d5;

    .line 9
    invoke-interface {p3, p5}, Lo/d5;->a(Landroid/graphics/RectF;)F

    .line 12
    move-result p3

    .line 13
    iget-object p4, p0, Lo/eb;->a:Lo/db;

    .line 15
    iget p4, p4, Lo/db;->i:F

    .line 17
    mul-float/2addr p3, p4

    .line 18
    invoke-virtual {p1, p5, p3, p3, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {p1, p3, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 25
    :goto_0
    return-void
.end method

.method public f(Landroid/graphics/Canvas;)V
    .locals 6

    .line 1
    iget-object v2, p0, Lo/eb;->o:Landroid/graphics/Paint;

    .line 3
    iget-object v3, p0, Lo/eb;->h:Landroid/graphics/Path;

    .line 5
    iget-object v4, p0, Lo/eb;->m:Lo/Ae;

    .line 7
    iget-object v5, p0, Lo/eb;->j:Landroid/graphics/RectF;

    .line 9
    invoke-virtual {p0}, Lo/eb;->g()Landroid/graphics/RectF;

    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v5, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 16
    invoke-virtual {p0}, Lo/eb;->h()Z

    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_0

    .line 22
    invoke-virtual {v2}, Landroid/graphics/Paint;->getStrokeWidth()F

    .line 25
    move-result v0

    .line 26
    const/high16 v1, 0x40000000    # 2.0f

    .line 28
    div-float/2addr v0, v1

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/4 v0, 0x0

    .line 31
    :goto_0
    invoke-virtual {v5, v0, v0}, Landroid/graphics/RectF;->inset(FF)V

    .line 34
    move-object v0, p0

    .line 35
    move-object v1, p1

    .line 36
    invoke-virtual/range {v0 .. v5}, Lo/eb;->e(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Path;Lo/Ae;Landroid/graphics/RectF;)V

    .line 39
    return-void
.end method

.method public final g()Landroid/graphics/RectF;
    .locals 2

    .line 1
    iget-object v0, p0, Lo/eb;->i:Landroid/graphics/RectF;

    .line 3
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 10
    return-object v0
.end method

.method public getAlpha()I
    .locals 1

    .line 1
    iget-object v0, p0, Lo/eb;->a:Lo/db;

    .line 3
    iget v0, v0, Lo/db;->k:I

    .line 5
    return v0
.end method

.method public final getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 1

    .line 1
    iget-object v0, p0, Lo/eb;->a:Lo/db;

    .line 3
    return-object v0
.end method

.method public getOpacity()I
    .locals 1

    .line 1
    const/4 v0, -0x3

    .line 2
    return v0
.end method

.method public getOutline(Landroid/graphics/Outline;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lo/eb;->a:Lo/db;

    .line 3
    iget v1, v0, Lo/db;->n:I

    .line 5
    const/4 v2, 0x2

    .line 6
    if-ne v1, v2, :cond_0

    .line 8
    return-void

    .line 9
    :cond_0
    iget-object v0, v0, Lo/db;->a:Lo/Ae;

    .line 11
    invoke-virtual {p0}, Lo/eb;->g()Landroid/graphics/RectF;

    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v0, v1}, Lo/Ae;->d(Landroid/graphics/RectF;)Z

    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_1

    .line 21
    iget-object v0, p0, Lo/eb;->a:Lo/db;

    .line 23
    iget-object v0, v0, Lo/db;->a:Lo/Ae;

    .line 25
    iget-object v0, v0, Lo/Ae;->e:Lo/d5;

    .line 27
    invoke-virtual {p0}, Lo/eb;->g()Landroid/graphics/RectF;

    .line 30
    move-result-object v1

    .line 31
    invoke-interface {v0, v1}, Lo/d5;->a(Landroid/graphics/RectF;)F

    .line 34
    move-result v0

    .line 35
    iget-object v1, p0, Lo/eb;->a:Lo/db;

    .line 37
    iget v1, v1, Lo/db;->i:F

    .line 39
    mul-float/2addr v0, v1

    .line 40
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 43
    move-result-object v1

    .line 44
    invoke-virtual {p1, v1, v0}, Landroid/graphics/Outline;->setRoundRect(Landroid/graphics/Rect;F)V

    .line 47
    return-void

    .line 48
    :cond_1
    invoke-virtual {p0}, Lo/eb;->g()Landroid/graphics/RectF;

    .line 51
    move-result-object v0

    .line 52
    iget-object v1, p0, Lo/eb;->g:Landroid/graphics/Path;

    .line 54
    invoke-virtual {p0, v0, v1}, Lo/eb;->b(Landroid/graphics/RectF;Landroid/graphics/Path;)V

    .line 57
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 59
    const/16 v2, 0x1e

    .line 61
    if-lt v0, v2, :cond_2

    .line 63
    invoke-static {p1, v1}, Lo/g6;->a(Landroid/graphics/Outline;Landroid/graphics/Path;)V

    .line 66
    goto :goto_0

    .line 67
    :cond_2
    const/16 v2, 0x1d

    .line 69
    if-lt v0, v2, :cond_3

    .line 71
    :try_start_0
    invoke-static {p1, v1}, Lo/f6;->a(Landroid/graphics/Outline;Landroid/graphics/Path;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    goto :goto_0

    .line 75
    :cond_3
    invoke-virtual {v1}, Landroid/graphics/Path;->isConvex()Z

    .line 78
    move-result v0

    .line 79
    if-eqz v0, :cond_4

    .line 81
    invoke-static {p1, v1}, Lo/f6;->a(Landroid/graphics/Outline;Landroid/graphics/Path;)V

    .line 84
    :catch_0
    :cond_4
    :goto_0
    return-void
.end method

.method public final getPadding(Landroid/graphics/Rect;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lo/eb;->a:Lo/db;

    .line 3
    iget-object v0, v0, Lo/db;->g:Landroid/graphics/Rect;

    .line 5
    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 10
    const/4 p1, 0x1

    .line 11
    return p1

    .line 12
    :cond_0
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 15
    move-result p1

    .line 16
    return p1
.end method

.method public final getTransparentRegion()Landroid/graphics/Region;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lo/eb;->k:Landroid/graphics/Region;

    .line 7
    invoke-virtual {v1, v0}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    .line 10
    invoke-virtual {p0}, Lo/eb;->g()Landroid/graphics/RectF;

    .line 13
    move-result-object v0

    .line 14
    iget-object v2, p0, Lo/eb;->g:Landroid/graphics/Path;

    .line 16
    invoke-virtual {p0, v0, v2}, Lo/eb;->b(Landroid/graphics/RectF;Landroid/graphics/Path;)V

    .line 19
    iget-object v0, p0, Lo/eb;->l:Landroid/graphics/Region;

    .line 21
    invoke-virtual {v0, v2, v1}, Landroid/graphics/Region;->setPath(Landroid/graphics/Path;Landroid/graphics/Region;)Z

    .line 24
    sget-object v2, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    .line 26
    invoke-virtual {v1, v0, v2}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    .line 29
    return-object v1
.end method

.method public final h()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lo/eb;->a:Lo/db;

    .line 3
    iget-object v0, v0, Lo/db;->q:Landroid/graphics/Paint$Style;

    .line 5
    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    .line 7
    if-eq v0, v1, :cond_0

    .line 9
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 11
    if-ne v0, v1, :cond_1

    .line 13
    :cond_0
    iget-object v0, p0, Lo/eb;->o:Landroid/graphics/Paint;

    .line 15
    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    .line 18
    move-result v0

    .line 19
    const/4 v1, 0x0

    .line 20
    cmpl-float v0, v0, v1

    .line 22
    if-lez v0, :cond_1

    .line 24
    const/4 v0, 0x1

    .line 25
    goto :goto_0

    .line 26
    :cond_1
    const/4 v0, 0x0

    .line 27
    :goto_0
    return v0
.end method

.method public final i(Landroid/content/Context;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lo/eb;->a:Lo/db;

    .line 3
    new-instance v1, Lo/w6;

    .line 5
    invoke-direct {v1, p1}, Lo/w6;-><init>(Landroid/content/Context;)V

    .line 8
    iput-object v1, v0, Lo/db;->b:Lo/w6;

    .line 10
    invoke-virtual {p0}, Lo/eb;->p()V

    .line 13
    return-void
.end method

.method public final invalidateSelf()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lo/eb;->e:Z

    .line 4
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 7
    return-void
.end method

.method public isStateful()Z
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_3

    .line 7
    iget-object v0, p0, Lo/eb;->a:Lo/db;

    .line 9
    iget-object v0, v0, Lo/db;->e:Landroid/content/res/ColorStateList;

    .line 11
    if-eqz v0, :cond_0

    .line 13
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_3

    .line 19
    :cond_0
    iget-object v0, p0, Lo/eb;->a:Lo/db;

    .line 21
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    iget-object v0, p0, Lo/eb;->a:Lo/db;

    .line 26
    iget-object v0, v0, Lo/db;->d:Landroid/content/res/ColorStateList;

    .line 28
    if-eqz v0, :cond_1

    .line 30
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    .line 33
    move-result v0

    .line 34
    if-nez v0, :cond_3

    .line 36
    :cond_1
    iget-object v0, p0, Lo/eb;->a:Lo/db;

    .line 38
    iget-object v0, v0, Lo/db;->c:Landroid/content/res/ColorStateList;

    .line 40
    if-eqz v0, :cond_2

    .line 42
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    .line 45
    move-result v0

    .line 46
    if-eqz v0, :cond_2

    .line 48
    goto :goto_0

    .line 49
    :cond_2
    const/4 v0, 0x0

    .line 50
    goto :goto_1

    .line 51
    :cond_3
    :goto_0
    const/4 v0, 0x1

    .line 52
    :goto_1
    return v0
.end method

.method public final j(F)V
    .locals 2

    .line 1
    iget-object v0, p0, Lo/eb;->a:Lo/db;

    .line 3
    iget v1, v0, Lo/db;->m:F

    .line 5
    cmpl-float v1, v1, p1

    .line 7
    if-eqz v1, :cond_0

    .line 9
    iput p1, v0, Lo/db;->m:F

    .line 11
    invoke-virtual {p0}, Lo/eb;->p()V

    .line 14
    :cond_0
    return-void
.end method

.method public final k(Landroid/content/res/ColorStateList;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lo/eb;->a:Lo/db;

    .line 3
    iget-object v1, v0, Lo/db;->c:Landroid/content/res/ColorStateList;

    .line 5
    if-eq v1, p1, :cond_0

    .line 7
    iput-object p1, v0, Lo/db;->c:Landroid/content/res/ColorStateList;

    .line 9
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p0, p1}, Lo/eb;->onStateChange([I)Z

    .line 16
    :cond_0
    return-void
.end method

.method public final l()V
    .locals 3

    .line 1
    iget-object v0, p0, Lo/eb;->a:Lo/db;

    .line 3
    iget v1, v0, Lo/db;->n:I

    .line 5
    const/4 v2, 0x2

    .line 6
    if-eq v1, v2, :cond_0

    .line 8
    iput v2, v0, Lo/db;->n:I

    .line 10
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 13
    :cond_0
    return-void
.end method

.method public final m(Landroid/content/res/ColorStateList;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lo/eb;->a:Lo/db;

    .line 3
    iget-object v1, v0, Lo/db;->d:Landroid/content/res/ColorStateList;

    .line 5
    if-eq v1, p1, :cond_0

    .line 7
    iput-object p1, v0, Lo/db;->d:Landroid/content/res/ColorStateList;

    .line 9
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p0, p1}, Lo/eb;->onStateChange([I)Z

    .line 16
    :cond_0
    return-void
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 1
    new-instance v0, Lo/db;

    .line 3
    iget-object v1, p0, Lo/eb;->a:Lo/db;

    .line 5
    invoke-direct {v0, v1}, Lo/db;-><init>(Lo/db;)V

    .line 8
    iput-object v0, p0, Lo/eb;->a:Lo/db;

    .line 10
    return-object p0
.end method

.method public final n([I)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lo/eb;->a:Lo/db;

    .line 3
    iget-object v0, v0, Lo/db;->c:Landroid/content/res/ColorStateList;

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eqz v0, :cond_0

    .line 8
    iget-object v0, p0, Lo/eb;->n:Landroid/graphics/Paint;

    .line 10
    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    .line 13
    move-result v2

    .line 14
    iget-object v3, p0, Lo/eb;->a:Lo/db;

    .line 16
    iget-object v3, v3, Lo/db;->c:Landroid/content/res/ColorStateList;

    .line 18
    invoke-virtual {v3, p1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    .line 21
    move-result v3

    .line 22
    if-eq v2, v3, :cond_0

    .line 24
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 27
    move v0, v1

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/4 v0, 0x0

    .line 30
    :goto_0
    iget-object v2, p0, Lo/eb;->a:Lo/db;

    .line 32
    iget-object v2, v2, Lo/db;->d:Landroid/content/res/ColorStateList;

    .line 34
    if-eqz v2, :cond_1

    .line 36
    iget-object v2, p0, Lo/eb;->o:Landroid/graphics/Paint;

    .line 38
    invoke-virtual {v2}, Landroid/graphics/Paint;->getColor()I

    .line 41
    move-result v3

    .line 42
    iget-object v4, p0, Lo/eb;->a:Lo/db;

    .line 44
    iget-object v4, v4, Lo/db;->d:Landroid/content/res/ColorStateList;

    .line 46
    invoke-virtual {v4, p1, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    .line 49
    move-result p1

    .line 50
    if-eq v3, p1, :cond_1

    .line 52
    invoke-virtual {v2, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 55
    goto :goto_1

    .line 56
    :cond_1
    move v1, v0

    .line 57
    :goto_1
    return v1
.end method

.method public final o()Z
    .locals 7

    .line 1
    iget-object v0, p0, Lo/eb;->s:Landroid/graphics/PorterDuffColorFilter;

    .line 3
    iget-object v1, p0, Lo/eb;->t:Landroid/graphics/PorterDuffColorFilter;

    .line 5
    iget-object v2, p0, Lo/eb;->a:Lo/db;

    .line 7
    iget-object v3, v2, Lo/db;->e:Landroid/content/res/ColorStateList;

    .line 9
    iget-object v2, v2, Lo/db;->f:Landroid/graphics/PorterDuff$Mode;

    .line 11
    iget-object v4, p0, Lo/eb;->n:Landroid/graphics/Paint;

    .line 13
    const/4 v5, 0x1

    .line 14
    if-eqz v3, :cond_1

    .line 16
    if-nez v2, :cond_0

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    .line 22
    move-result-object v4

    .line 23
    const/4 v6, 0x0

    .line 24
    invoke-virtual {v3, v4, v6}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    .line 27
    move-result v3

    .line 28
    invoke-virtual {p0, v3}, Lo/eb;->c(I)I

    .line 31
    move-result v3

    .line 32
    new-instance v4, Landroid/graphics/PorterDuffColorFilter;

    .line 34
    invoke-direct {v4, v3, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 37
    goto :goto_2

    .line 38
    :cond_1
    :goto_0
    invoke-virtual {v4}, Landroid/graphics/Paint;->getColor()I

    .line 41
    move-result v2

    .line 42
    invoke-virtual {p0, v2}, Lo/eb;->c(I)I

    .line 45
    move-result v3

    .line 46
    if-eq v3, v2, :cond_2

    .line 48
    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    .line 50
    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 52
    invoke-direct {v2, v3, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 55
    :goto_1
    move-object v4, v2

    .line 56
    goto :goto_2

    .line 57
    :cond_2
    const/4 v2, 0x0

    .line 58
    goto :goto_1

    .line 59
    :goto_2
    iput-object v4, p0, Lo/eb;->s:Landroid/graphics/PorterDuffColorFilter;

    .line 61
    iget-object v2, p0, Lo/eb;->a:Lo/db;

    .line 63
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 66
    const/4 v2, 0x0

    .line 67
    iput-object v2, p0, Lo/eb;->t:Landroid/graphics/PorterDuffColorFilter;

    .line 69
    iget-object v2, p0, Lo/eb;->a:Lo/db;

    .line 71
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 74
    iget-object v2, p0, Lo/eb;->s:Landroid/graphics/PorterDuffColorFilter;

    .line 76
    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 79
    move-result v0

    .line 80
    if-eqz v0, :cond_4

    .line 82
    iget-object v0, p0, Lo/eb;->t:Landroid/graphics/PorterDuffColorFilter;

    .line 84
    invoke-static {v1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 87
    move-result v0

    .line 88
    if-nez v0, :cond_3

    .line 90
    goto :goto_3

    .line 91
    :cond_3
    const/4 v5, 0x0

    .line 92
    :cond_4
    :goto_3
    return v5
.end method

.method public onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lo/eb;->e:Z

    .line 4
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 7
    return-void
.end method

.method public onStateChange([I)Z
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lo/eb;->n([I)Z

    .line 4
    move-result p1

    .line 5
    invoke-virtual {p0}, Lo/eb;->o()Z

    .line 8
    move-result v0

    .line 9
    if-nez p1, :cond_1

    .line 11
    if-eqz v0, :cond_0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p1, 0x0

    .line 15
    goto :goto_1

    .line 16
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 17
    :goto_1
    if-eqz p1, :cond_2

    .line 19
    invoke-virtual {p0}, Lo/eb;->invalidateSelf()V

    .line 22
    :cond_2
    return p1
.end method

.method public final p()V
    .locals 4

    .line 1
    iget-object v0, p0, Lo/eb;->a:Lo/db;

    .line 3
    iget v1, v0, Lo/db;->m:F

    .line 5
    const/4 v2, 0x0

    .line 6
    add-float/2addr v1, v2

    .line 7
    const/high16 v2, 0x3f400000    # 0.75f

    .line 9
    mul-float/2addr v2, v1

    .line 10
    float-to-double v2, v2

    .line 11
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    .line 14
    move-result-wide v2

    .line 15
    double-to-int v2, v2

    .line 16
    iput v2, v0, Lo/db;->o:I

    .line 18
    iget-object v0, p0, Lo/eb;->a:Lo/db;

    .line 20
    const/high16 v2, 0x3e800000    # 0.25f

    .line 22
    mul-float/2addr v1, v2

    .line 23
    float-to-double v1, v1

    .line 24
    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    .line 27
    move-result-wide v1

    .line 28
    double-to-int v1, v1

    .line 29
    iput v1, v0, Lo/db;->p:I

    .line 31
    invoke-virtual {p0}, Lo/eb;->o()Z

    .line 34
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 37
    return-void
.end method

.method public setAlpha(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lo/eb;->a:Lo/db;

    .line 3
    iget v1, v0, Lo/db;->k:I

    .line 5
    if-eq v1, p1, :cond_0

    .line 7
    iput p1, v0, Lo/db;->k:I

    .line 9
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 12
    :cond_0
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lo/eb;->a:Lo/db;

    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 9
    return-void
.end method

.method public final setShapeAppearanceModel(Lo/Ae;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lo/eb;->a:Lo/db;

    .line 3
    iput-object p1, v0, Lo/db;->a:Lo/Ae;

    .line 5
    invoke-virtual {p0}, Lo/eb;->invalidateSelf()V

    .line 8
    return-void
.end method

.method public final setTint(I)V
    .locals 0

    .line 1
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0, p1}, Lo/eb;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 8
    return-void
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lo/eb;->a:Lo/db;

    .line 3
    iput-object p1, v0, Lo/db;->e:Landroid/content/res/ColorStateList;

    .line 5
    invoke-virtual {p0}, Lo/eb;->o()Z

    .line 8
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 11
    return-void
.end method

.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lo/eb;->a:Lo/db;

    .line 3
    iget-object v1, v0, Lo/db;->f:Landroid/graphics/PorterDuff$Mode;

    .line 5
    if-eq v1, p1, :cond_0

    .line 7
    iput-object p1, v0, Lo/db;->f:Landroid/graphics/PorterDuff$Mode;

    .line 9
    invoke-virtual {p0}, Lo/eb;->o()Z

    .line 12
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 15
    :cond_0
    return-void
.end method
