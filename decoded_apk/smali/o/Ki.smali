.class public Lo/Ki;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:Lo/Mi;


# instance fields
.field public final a:Lo/Mi;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    const/16 v1, 0x1e

    .line 5
    if-lt v0, v1, :cond_0

    .line 7
    new-instance v0, Lo/Di;

    .line 9
    invoke-direct {v0}, Lo/Di;-><init>()V

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/16 v1, 0x1d

    .line 15
    if-lt v0, v1, :cond_1

    .line 17
    new-instance v0, Lo/Ci;

    .line 19
    invoke-direct {v0}, Lo/Ci;-><init>()V

    .line 22
    goto :goto_0

    .line 23
    :cond_1
    new-instance v0, Lo/Ai;

    .line 25
    invoke-direct {v0}, Lo/Ai;-><init>()V

    .line 28
    :goto_0
    invoke-virtual {v0}, Lo/Ei;->b()Lo/Mi;

    .line 31
    move-result-object v0

    .line 32
    iget-object v0, v0, Lo/Mi;->a:Lo/Ki;

    .line 34
    invoke-virtual {v0}, Lo/Ki;->a()Lo/Mi;

    .line 37
    move-result-object v0

    .line 38
    iget-object v0, v0, Lo/Mi;->a:Lo/Ki;

    .line 40
    invoke-virtual {v0}, Lo/Ki;->b()Lo/Mi;

    .line 43
    move-result-object v0

    .line 44
    iget-object v0, v0, Lo/Mi;->a:Lo/Ki;

    .line 46
    invoke-virtual {v0}, Lo/Ki;->c()Lo/Mi;

    .line 49
    move-result-object v0

    .line 50
    sput-object v0, Lo/Ki;->b:Lo/Mi;

    .line 52
    return-void
.end method

.method public constructor <init>(Lo/Mi;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lo/Ki;->a:Lo/Mi;

    .line 6
    return-void
.end method


# virtual methods
.method public a()Lo/Mi;
    .locals 1

    .line 1
    iget-object v0, p0, Lo/Ki;->a:Lo/Mi;

    .line 3
    return-object v0
.end method

.method public b()Lo/Mi;
    .locals 1

    .line 1
    iget-object v0, p0, Lo/Ki;->a:Lo/Mi;

    .line 3
    return-object v0
.end method

.method public c()Lo/Mi;
    .locals 1

    .line 1
    iget-object v0, p0, Lo/Ki;->a:Lo/Mi;

    .line 3
    return-object v0
.end method

.method public d(Landroid/view/View;)V
    .locals 0

    .line 1
    return-void
.end method

.method public e()Lo/c6;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lo/Ki;

    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 10
    return v2

    .line 11
    :cond_1
    check-cast p1, Lo/Ki;

    .line 13
    invoke-virtual {p0}, Lo/Ki;->n()Z

    .line 16
    move-result v1

    .line 17
    invoke-virtual {p1}, Lo/Ki;->n()Z

    .line 20
    move-result v3

    .line 21
    if-ne v1, v3, :cond_2

    .line 23
    invoke-virtual {p0}, Lo/Ki;->m()Z

    .line 26
    move-result v1

    .line 27
    invoke-virtual {p1}, Lo/Ki;->m()Z

    .line 30
    move-result v3

    .line 31
    if-ne v1, v3, :cond_2

    .line 33
    invoke-virtual {p0}, Lo/Ki;->j()Lo/t9;

    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {p1}, Lo/Ki;->j()Lo/t9;

    .line 40
    move-result-object v3

    .line 41
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 44
    move-result v1

    .line 45
    if-eqz v1, :cond_2

    .line 47
    invoke-virtual {p0}, Lo/Ki;->h()Lo/t9;

    .line 50
    move-result-object v1

    .line 51
    invoke-virtual {p1}, Lo/Ki;->h()Lo/t9;

    .line 54
    move-result-object v3

    .line 55
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 58
    move-result v1

    .line 59
    if-eqz v1, :cond_2

    .line 61
    invoke-virtual {p0}, Lo/Ki;->e()Lo/c6;

    .line 64
    move-result-object v1

    .line 65
    invoke-virtual {p1}, Lo/Ki;->e()Lo/c6;

    .line 68
    move-result-object p1

    .line 69
    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 72
    move-result p1

    .line 73
    if-eqz p1, :cond_2

    .line 75
    goto :goto_0

    .line 76
    :cond_2
    move v0, v2

    .line 77
    :goto_0
    return v0
.end method

.method public f(I)Lo/t9;
    .locals 0

    .line 1
    sget-object p1, Lo/t9;->e:Lo/t9;

    .line 3
    return-object p1
.end method

.method public g()Lo/t9;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lo/Ki;->j()Lo/t9;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public h()Lo/t9;
    .locals 1

    .line 1
    sget-object v0, Lo/t9;->e:Lo/t9;

    .line 3
    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .line 1
    invoke-virtual {p0}, Lo/Ki;->n()Z

    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p0}, Lo/Ki;->m()Z

    .line 12
    move-result v1

    .line 13
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {p0}, Lo/Ki;->j()Lo/t9;

    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {p0}, Lo/Ki;->h()Lo/t9;

    .line 24
    move-result-object v3

    .line 25
    invoke-virtual {p0}, Lo/Ki;->e()Lo/c6;

    .line 28
    move-result-object v4

    .line 29
    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/Object;

    .line 32
    move-result-object v0

    .line 33
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 36
    move-result v0

    .line 37
    return v0
.end method

.method public i()Lo/t9;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lo/Ki;->j()Lo/t9;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public j()Lo/t9;
    .locals 1

    .line 1
    sget-object v0, Lo/t9;->e:Lo/t9;

    .line 3
    return-object v0
.end method

.method public k()Lo/t9;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lo/Ki;->j()Lo/t9;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public l(IIII)Lo/Mi;
    .locals 0

    .line 1
    sget-object p1, Lo/Ki;->b:Lo/Mi;

    .line 3
    return-object p1
.end method

.method public m()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public n()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public o([Lo/t9;)V
    .locals 0

    .line 1
    return-void
.end method

.method public p(Lo/Mi;)V
    .locals 0

    .line 1
    return-void
.end method

.method public q(Lo/t9;)V
    .locals 0

    .line 1
    return-void
.end method
