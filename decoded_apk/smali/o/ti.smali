.class public final Lo/ti;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Lo/zi;

.field public final synthetic b:Lo/Mi;

.field public final synthetic c:Lo/Mi;

.field public final synthetic d:I

.field public final synthetic e:Landroid/view/View;


# direct methods
.method public constructor <init>(Lo/zi;Lo/Mi;Lo/Mi;ILandroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lo/ti;->a:Lo/zi;

    .line 6
    iput-object p2, p0, Lo/ti;->b:Lo/Mi;

    .line 8
    iput-object p3, p0, Lo/ti;->c:Lo/Mi;

    .line 10
    iput p4, p0, Lo/ti;->d:I

    .line 12
    iput-object p5, p0, Lo/ti;->e:Landroid/view/View;

    .line 14
    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 3
    invoke-virtual/range {p1 .. p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    .line 6
    move-result v2

    .line 7
    iget-object v3, v0, Lo/ti;->a:Lo/zi;

    .line 9
    iget-object v4, v3, Lo/zi;->a:Lo/yi;

    .line 11
    invoke-virtual {v4, v2}, Lo/yi;->d(F)V

    .line 14
    iget-object v2, v3, Lo/zi;->a:Lo/yi;

    .line 16
    invoke-virtual {v2}, Lo/yi;->b()F

    .line 19
    move-result v2

    .line 20
    sget-object v4, Lo/vi;->e:Landroid/view/animation/PathInterpolator;

    .line 22
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 24
    iget-object v5, v0, Lo/ti;->b:Lo/Mi;

    .line 26
    const/16 v6, 0x1e

    .line 28
    if-lt v4, v6, :cond_0

    .line 30
    new-instance v4, Lo/Di;

    .line 32
    invoke-direct {v4, v5}, Lo/Di;-><init>(Lo/Mi;)V

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    const/16 v6, 0x1d

    .line 38
    if-lt v4, v6, :cond_1

    .line 40
    new-instance v4, Lo/Ci;

    .line 42
    invoke-direct {v4, v5}, Lo/Ci;-><init>(Lo/Mi;)V

    .line 45
    goto :goto_0

    .line 46
    :cond_1
    new-instance v4, Lo/Ai;

    .line 48
    invoke-direct {v4, v5}, Lo/Ai;-><init>(Lo/Mi;)V

    .line 51
    :goto_0
    const/4 v6, 0x1

    .line 52
    :goto_1
    const/16 v7, 0x100

    .line 54
    if-gt v6, v7, :cond_3

    .line 56
    iget v7, v0, Lo/ti;->d:I

    .line 58
    and-int/2addr v7, v6

    .line 59
    iget-object v8, v5, Lo/Mi;->a:Lo/Ki;

    .line 61
    if-nez v7, :cond_2

    .line 63
    invoke-virtual {v8, v6}, Lo/Ki;->f(I)Lo/t9;

    .line 66
    move-result-object v7

    .line 67
    invoke-virtual {v4, v6, v7}, Lo/Ei;->c(ILo/t9;)V

    .line 70
    move/from16 p1, v2

    .line 72
    move-object v8, v3

    .line 73
    :goto_2
    const/4 v1, 0x1

    .line 74
    goto :goto_3

    .line 75
    :cond_2
    invoke-virtual {v8, v6}, Lo/Ki;->f(I)Lo/t9;

    .line 78
    move-result-object v7

    .line 79
    iget-object v8, v0, Lo/ti;->c:Lo/Mi;

    .line 81
    iget-object v8, v8, Lo/Mi;->a:Lo/Ki;

    .line 83
    invoke-virtual {v8, v6}, Lo/Ki;->f(I)Lo/t9;

    .line 86
    move-result-object v8

    .line 87
    iget v9, v7, Lo/t9;->a:I

    .line 89
    iget v10, v8, Lo/t9;->a:I

    .line 91
    sub-int/2addr v9, v10

    .line 92
    int-to-float v9, v9

    .line 93
    const/high16 v10, 0x3f800000    # 1.0f

    .line 95
    sub-float/2addr v10, v2

    .line 96
    mul-float/2addr v9, v10

    .line 97
    float-to-double v11, v9

    .line 98
    const-wide/high16 v13, 0x3fe0000000000000L    # 0.5

    .line 100
    add-double/2addr v11, v13

    .line 101
    double-to-int v9, v11

    .line 102
    iget v11, v7, Lo/t9;->b:I

    .line 104
    iget v12, v8, Lo/t9;->b:I

    .line 106
    sub-int/2addr v11, v12

    .line 107
    int-to-float v11, v11

    .line 108
    mul-float/2addr v11, v10

    .line 109
    float-to-double v11, v11

    .line 110
    add-double/2addr v11, v13

    .line 111
    double-to-int v11, v11

    .line 112
    iget v12, v7, Lo/t9;->c:I

    .line 114
    iget v15, v8, Lo/t9;->c:I

    .line 116
    sub-int/2addr v12, v15

    .line 117
    int-to-float v12, v12

    .line 118
    mul-float/2addr v12, v10

    .line 119
    move/from16 p1, v2

    .line 121
    float-to-double v1, v12

    .line 122
    add-double/2addr v1, v13

    .line 123
    double-to-int v1, v1

    .line 124
    iget v2, v7, Lo/t9;->d:I

    .line 126
    iget v8, v8, Lo/t9;->d:I

    .line 128
    sub-int/2addr v2, v8

    .line 129
    int-to-float v2, v2

    .line 130
    mul-float/2addr v2, v10

    .line 131
    move-object v8, v3

    .line 132
    float-to-double v2, v2

    .line 133
    add-double/2addr v2, v13

    .line 134
    double-to-int v2, v2

    .line 135
    invoke-static {v7, v9, v11, v1, v2}, Lo/Mi;->e(Lo/t9;IIII)Lo/t9;

    .line 138
    move-result-object v1

    .line 139
    invoke-virtual {v4, v6, v1}, Lo/Ei;->c(ILo/t9;)V

    .line 142
    goto :goto_2

    .line 143
    :goto_3
    shl-int/2addr v6, v1

    .line 144
    move/from16 v2, p1

    .line 146
    move-object v3, v8

    .line 147
    goto :goto_1

    .line 148
    :cond_3
    move-object v8, v3

    .line 149
    invoke-virtual {v4}, Lo/Ei;->b()Lo/Mi;

    .line 152
    move-result-object v1

    .line 153
    invoke-static {v8}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 156
    move-result-object v2

    .line 157
    iget-object v3, v0, Lo/ti;->e:Landroid/view/View;

    .line 159
    invoke-static {v3, v1, v2}, Lo/vi;->g(Landroid/view/View;Lo/Mi;Ljava/util/List;)V

    .line 162
    return-void
.end method
