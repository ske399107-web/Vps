.class public final Lo/M5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:Lo/w9;

.field public final synthetic e:Lo/H1;


# direct methods
.method public constructor <init>(Lo/H1;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lo/M5;->e:Lo/H1;

    .line 6
    const/4 v0, -0x1

    .line 7
    iput v0, p0, Lo/M5;->a:I

    .line 9
    iget-object p1, p1, Lo/H1;->b:Ljava/lang/Object;

    .line 11
    check-cast p1, Ljava/lang/String;

    .line 13
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 16
    move-result p1

    .line 17
    const/4 v0, 0x0

    .line 18
    invoke-static {v0, v0, p1}, Lo/Ha;->l(III)I

    .line 21
    move-result p1

    .line 22
    iput p1, p0, Lo/M5;->b:I

    .line 24
    iput p1, p0, Lo/M5;->c:I

    .line 26
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 7

    .line 1
    iget v0, p0, Lo/M5;->c:I

    .line 3
    const/4 v1, 0x0

    .line 4
    if-gez v0, :cond_0

    .line 6
    iput v1, p0, Lo/M5;->a:I

    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lo/M5;->d:Lo/w9;

    .line 11
    goto :goto_2

    .line 12
    :cond_0
    iget-object v2, p0, Lo/M5;->e:Lo/H1;

    .line 14
    iget-object v3, v2, Lo/H1;->b:Ljava/lang/Object;

    .line 16
    check-cast v3, Ljava/lang/String;

    .line 18
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 21
    move-result v4

    .line 22
    const/4 v5, 0x1

    .line 23
    const/4 v6, -0x1

    .line 24
    if-le v0, v4, :cond_1

    .line 26
    new-instance v0, Lo/w9;

    .line 28
    iget v1, p0, Lo/M5;->b:I

    .line 30
    invoke-static {v3}, Lo/tf;->E0(Ljava/lang/CharSequence;)I

    .line 33
    move-result v2

    .line 34
    invoke-direct {v0, v1, v2, v5}, Lo/u9;-><init>(III)V

    .line 37
    iput-object v0, p0, Lo/M5;->d:Lo/w9;

    .line 39
    iput v6, p0, Lo/M5;->c:I

    .line 41
    goto :goto_1

    .line 42
    :cond_1
    iget-object v0, v2, Lo/H1;->c:Ljava/lang/Object;

    .line 44
    check-cast v0, Lo/sf;

    .line 46
    iget v2, p0, Lo/M5;->c:I

    .line 48
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 51
    move-result-object v2

    .line 52
    invoke-virtual {v0, v3, v2}, Lo/sf;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    move-result-object v0

    .line 56
    check-cast v0, Lo/Cc;

    .line 58
    if-nez v0, :cond_2

    .line 60
    new-instance v0, Lo/w9;

    .line 62
    iget v1, p0, Lo/M5;->b:I

    .line 64
    invoke-static {v3}, Lo/tf;->E0(Ljava/lang/CharSequence;)I

    .line 67
    move-result v2

    .line 68
    invoke-direct {v0, v1, v2, v5}, Lo/u9;-><init>(III)V

    .line 71
    iput-object v0, p0, Lo/M5;->d:Lo/w9;

    .line 73
    iput v6, p0, Lo/M5;->c:I

    .line 75
    goto :goto_1

    .line 76
    :cond_2
    iget-object v2, v0, Lo/Cc;->a:Ljava/lang/Object;

    .line 78
    check-cast v2, Ljava/lang/Number;

    .line 80
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 83
    move-result v2

    .line 84
    iget-object v0, v0, Lo/Cc;->b:Ljava/lang/Object;

    .line 86
    check-cast v0, Ljava/lang/Number;

    .line 88
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 91
    move-result v0

    .line 92
    iget v3, p0, Lo/M5;->b:I

    .line 94
    const/high16 v4, -0x80000000

    .line 96
    if-gt v2, v4, :cond_3

    .line 98
    sget-object v3, Lo/w9;->d:Lo/w9;

    .line 100
    goto :goto_0

    .line 101
    :cond_3
    new-instance v4, Lo/w9;

    .line 103
    add-int/lit8 v6, v2, -0x1

    .line 105
    invoke-direct {v4, v3, v6, v5}, Lo/u9;-><init>(III)V

    .line 108
    move-object v3, v4

    .line 109
    :goto_0
    iput-object v3, p0, Lo/M5;->d:Lo/w9;

    .line 111
    add-int/2addr v2, v0

    .line 112
    iput v2, p0, Lo/M5;->b:I

    .line 114
    if-nez v0, :cond_4

    .line 116
    move v1, v5

    .line 117
    :cond_4
    add-int/2addr v2, v1

    .line 118
    iput v2, p0, Lo/M5;->c:I

    .line 120
    :goto_1
    iput v5, p0, Lo/M5;->a:I

    .line 122
    :goto_2
    return-void
.end method

.method public final hasNext()Z
    .locals 2

    .line 1
    iget v0, p0, Lo/M5;->a:I

    .line 3
    const/4 v1, -0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 6
    invoke-virtual {p0}, Lo/M5;->a()V

    .line 9
    :cond_0
    iget v0, p0, Lo/M5;->a:I

    .line 11
    const/4 v1, 0x1

    .line 12
    if-ne v0, v1, :cond_1

    .line 14
    goto :goto_0

    .line 15
    :cond_1
    const/4 v1, 0x0

    .line 16
    :goto_0
    return v1
.end method

.method public final next()Ljava/lang/Object;
    .locals 3

    .line 1
    iget v0, p0, Lo/M5;->a:I

    .line 3
    const/4 v1, -0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 6
    invoke-virtual {p0}, Lo/M5;->a()V

    .line 9
    :cond_0
    iget v0, p0, Lo/M5;->a:I

    .line 11
    if-eqz v0, :cond_1

    .line 13
    iget-object v0, p0, Lo/M5;->d:Lo/w9;

    .line 15
    const-string v2, "null cannot be cast to non-null type kotlin.ranges.IntRange"

    .line 17
    invoke-static {v0, v2}, Lo/x9;->m(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    const/4 v2, 0x0

    .line 21
    iput-object v2, p0, Lo/M5;->d:Lo/w9;

    .line 23
    iput v1, p0, Lo/M5;->a:I

    .line 25
    return-object v0

    .line 26
    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    .line 28
    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    .line 31
    throw v0
.end method

.method public final remove()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 3
    const-string v1, "Operation is not supported for read-only collection"

    .line 5
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 8
    throw v0
.end method
