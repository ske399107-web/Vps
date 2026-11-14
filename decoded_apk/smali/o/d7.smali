.class public final Lo/d7;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:F

.field public final c:F

.field public final d:F

.field public final e:F

.field public final f:F

.field public final g:F

.field public final h:J

.field public final i:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(IFFFFFFJ)V
    .locals 11

    .line 1
    const-string v10, ""

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-wide/from16 v8, p8

    invoke-direct/range {v0 .. v10}, Lo/d7;-><init>(IFFFFFFJLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(IFFFFFFJLjava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lo/d7;->a:I

    .line 4
    iput p2, p0, Lo/d7;->b:F

    .line 5
    iput p3, p0, Lo/d7;->c:F

    .line 6
    iput p4, p0, Lo/d7;->d:F

    .line 7
    iput p5, p0, Lo/d7;->e:F

    .line 8
    iput p6, p0, Lo/d7;->f:F

    .line 9
    iput p7, p0, Lo/d7;->g:F

    .line 10
    iput-wide p8, p0, Lo/d7;->h:J

    .line 11
    iput-object p10, p0, Lo/d7;->i:Ljava/lang/String;

    return-void
.end method

.method public static a(Lo/d7;FFF)Lo/d7;
    .locals 11

    .line 1
    iget v1, p0, Lo/d7;->a:I

    .line 3
    iget v5, p0, Lo/d7;->e:F

    .line 5
    iget v6, p0, Lo/d7;->f:F

    .line 7
    iget v7, p0, Lo/d7;->g:F

    .line 9
    iget-wide v8, p0, Lo/d7;->h:J

    .line 11
    iget-object v10, p0, Lo/d7;->i:Ljava/lang/String;

    .line 13
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    const-string p0, "name"

    .line 18
    invoke-static {v10, p0}, Lo/x9;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    new-instance p0, Lo/d7;

    .line 23
    move-object v0, p0

    .line 24
    move v2, p1

    .line 25
    move v3, p2

    .line 26
    move v4, p3

    .line 27
    invoke-direct/range {v0 .. v10}, Lo/d7;-><init>(IFFFFFFJLjava/lang/String;)V

    .line 30
    return-object p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lo/d7;

    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 10
    return v2

    .line 11
    :cond_1
    check-cast p1, Lo/d7;

    .line 13
    iget v1, p1, Lo/d7;->a:I

    .line 15
    iget v3, p0, Lo/d7;->a:I

    .line 17
    if-eq v3, v1, :cond_2

    .line 19
    return v2

    .line 20
    :cond_2
    iget v1, p0, Lo/d7;->b:F

    .line 22
    iget v3, p1, Lo/d7;->b:F

    .line 24
    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_3

    .line 30
    return v2

    .line 31
    :cond_3
    iget v1, p0, Lo/d7;->c:F

    .line 33
    iget v3, p1, Lo/d7;->c:F

    .line 35
    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    .line 38
    move-result v1

    .line 39
    if-eqz v1, :cond_4

    .line 41
    return v2

    .line 42
    :cond_4
    iget v1, p0, Lo/d7;->d:F

    .line 44
    iget v3, p1, Lo/d7;->d:F

    .line 46
    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    .line 49
    move-result v1

    .line 50
    if-eqz v1, :cond_5

    .line 52
    return v2

    .line 53
    :cond_5
    iget v1, p0, Lo/d7;->e:F

    .line 55
    iget v3, p1, Lo/d7;->e:F

    .line 57
    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    .line 60
    move-result v1

    .line 61
    if-eqz v1, :cond_6

    .line 63
    return v2

    .line 64
    :cond_6
    iget v1, p0, Lo/d7;->f:F

    .line 66
    iget v3, p1, Lo/d7;->f:F

    .line 68
    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    .line 71
    move-result v1

    .line 72
    if-eqz v1, :cond_7

    .line 74
    return v2

    .line 75
    :cond_7
    iget v1, p0, Lo/d7;->g:F

    .line 77
    iget v3, p1, Lo/d7;->g:F

    .line 79
    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    .line 82
    move-result v1

    .line 83
    if-eqz v1, :cond_8

    .line 85
    return v2

    .line 86
    :cond_8
    iget-wide v3, p0, Lo/d7;->h:J

    .line 88
    iget-wide v5, p1, Lo/d7;->h:J

    .line 90
    cmp-long v1, v3, v5

    .line 92
    if-eqz v1, :cond_9

    .line 94
    return v2

    .line 95
    :cond_9
    iget-object v1, p0, Lo/d7;->i:Ljava/lang/String;

    .line 97
    iget-object p1, p1, Lo/d7;->i:Ljava/lang/String;

    .line 99
    invoke-static {v1, p1}, Lo/x9;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 102
    move-result p1

    .line 103
    if-nez p1, :cond_a

    .line 105
    return v2

    .line 106
    :cond_a
    return v0
.end method

.method public final hashCode()I
    .locals 3

    .line 1
    iget v0, p0, Lo/d7;->a:I

    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    .line 6
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 9
    iget v1, p0, Lo/d7;->b:F

    .line 11
    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    .line 14
    move-result v1

    .line 15
    add-int/2addr v1, v0

    .line 16
    mul-int/lit8 v1, v1, 0x1f

    .line 18
    iget v0, p0, Lo/d7;->c:F

    .line 20
    invoke-static {v0}, Ljava/lang/Float;->hashCode(F)I

    .line 23
    move-result v0

    .line 24
    add-int/2addr v0, v1

    .line 25
    mul-int/lit8 v0, v0, 0x1f

    .line 27
    iget v1, p0, Lo/d7;->d:F

    .line 29
    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    .line 32
    move-result v1

    .line 33
    add-int/2addr v1, v0

    .line 34
    mul-int/lit8 v1, v1, 0x1f

    .line 36
    iget v0, p0, Lo/d7;->e:F

    .line 38
    invoke-static {v0}, Ljava/lang/Float;->hashCode(F)I

    .line 41
    move-result v0

    .line 42
    add-int/2addr v0, v1

    .line 43
    mul-int/lit8 v0, v0, 0x1f

    .line 45
    iget v1, p0, Lo/d7;->f:F

    .line 47
    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    .line 50
    move-result v1

    .line 51
    add-int/2addr v1, v0

    .line 52
    mul-int/lit8 v1, v1, 0x1f

    .line 54
    iget v0, p0, Lo/d7;->g:F

    .line 56
    invoke-static {v0}, Ljava/lang/Float;->hashCode(F)I

    .line 59
    move-result v0

    .line 60
    add-int/2addr v0, v1

    .line 61
    mul-int/lit8 v0, v0, 0x1f

    .line 63
    iget-wide v1, p0, Lo/d7;->h:J

    .line 65
    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    .line 68
    move-result v1

    .line 69
    add-int/2addr v1, v0

    .line 70
    mul-int/lit8 v1, v1, 0x1f

    .line 72
    iget-object v0, p0, Lo/d7;->i:Ljava/lang/String;

    .line 74
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 77
    move-result v0

    .line 78
    add-int/2addr v0, v1

    .line 79
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string v1, "EnemyPos(id="

    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    iget v1, p0, Lo/d7;->a:I

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 13
    const-string v1, ", x="

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    iget v1, p0, Lo/d7;->b:F

    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 23
    const-string v1, ", y="

    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    iget v1, p0, Lo/d7;->c:F

    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 33
    const-string v1, ", z="

    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    iget v1, p0, Lo/d7;->d:F

    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 43
    const-string v1, ", vx="

    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    iget v1, p0, Lo/d7;->e:F

    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 53
    const-string v1, ", vy="

    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    iget v1, p0, Lo/d7;->f:F

    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 63
    const-string v1, ", vz="

    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    iget v1, p0, Lo/d7;->g:F

    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 73
    const-string v1, ", t="

    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    iget-wide v1, p0, Lo/d7;->h:J

    .line 80
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 83
    const-string v1, ", name="

    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    iget-object v1, p0, Lo/d7;->i:Ljava/lang/String;

    .line 90
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    const-string v1, ")"

    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 101
    move-result-object v0

    .line 102
    return-object v0
.end method
