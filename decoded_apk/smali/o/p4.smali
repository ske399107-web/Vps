.class public final Lo/p4;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/HashMap;

.field public final b:Ljava/util/HashMap;

.field public final c:Ljava/util/HashMap;

.field public d:Ljava/util/ArrayList;

.field public final transient e:Ljava/util/HashMap;

.field public final f:Ljava/util/HashMap;

.field public final g:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 9
    iput-object v0, p0, Lo/p4;->a:Ljava/util/HashMap;

    .line 11
    new-instance v0, Ljava/util/HashMap;

    .line 13
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 16
    iput-object v0, p0, Lo/p4;->b:Ljava/util/HashMap;

    .line 18
    new-instance v0, Ljava/util/HashMap;

    .line 20
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 23
    iput-object v0, p0, Lo/p4;->c:Ljava/util/HashMap;

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    .line 27
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 30
    iput-object v0, p0, Lo/p4;->d:Ljava/util/ArrayList;

    .line 32
    new-instance v0, Ljava/util/HashMap;

    .line 34
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 37
    iput-object v0, p0, Lo/p4;->e:Ljava/util/HashMap;

    .line 39
    new-instance v0, Ljava/util/HashMap;

    .line 41
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 44
    iput-object v0, p0, Lo/p4;->f:Ljava/util/HashMap;

    .line 46
    new-instance v0, Landroid/os/Bundle;

    .line 48
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 51
    iput-object v0, p0, Lo/p4;->g:Landroid/os/Bundle;

    .line 53
    return-void
.end method


# virtual methods
.method public final a(IILandroid/content/Intent;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lo/p4;->a:Ljava/util/HashMap;

    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Ljava/lang/String;

    .line 13
    if-nez p1, :cond_0

    .line 15
    const/4 p1, 0x0

    .line 16
    return p1

    .line 17
    :cond_0
    iget-object v0, p0, Lo/p4;->e:Ljava/util/HashMap;

    .line 19
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Lo/o0;

    .line 25
    if-eqz v0, :cond_1

    .line 27
    iget-object v1, v0, Lo/o0;->a:Lo/a8;

    .line 29
    iget-object v2, p0, Lo/p4;->d:Ljava/util/ArrayList;

    .line 31
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 34
    move-result v2

    .line 35
    if-eqz v2, :cond_1

    .line 37
    iget-object v0, v0, Lo/o0;->b:Lo/x9;

    .line 39
    invoke-virtual {v0, p2, p3}, Lo/x9;->K(ILandroid/content/Intent;)Ljava/lang/Object;

    .line 42
    move-result-object p2

    .line 43
    invoke-virtual {v1, p2}, Lo/a8;->a(Ljava/lang/Object;)V

    .line 46
    iget-object p2, p0, Lo/p4;->d:Ljava/util/ArrayList;

    .line 48
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 51
    goto :goto_0

    .line 52
    :cond_1
    iget-object v0, p0, Lo/p4;->f:Ljava/util/HashMap;

    .line 54
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    new-instance v0, Lo/m0;

    .line 59
    invoke-direct {v0, p2, p3}, Lo/m0;-><init>(ILandroid/content/Intent;)V

    .line 62
    iget-object p2, p0, Lo/p4;->g:Landroid/os/Bundle;

    .line 64
    invoke-virtual {p2, p1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 67
    :goto_0
    const/4 p1, 0x1

    .line 68
    return p1
.end method

.method public final b(Ljava/lang/String;Lo/x9;Lo/a8;)Lo/H1;
    .locals 6

    .line 1
    iget-object v0, p0, Lo/p4;->b:Ljava/util/HashMap;

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object v1

    .line 7
    check-cast v1, Ljava/lang/Integer;

    .line 9
    if-eqz v1, :cond_0

    .line 11
    goto :goto_1

    .line 12
    :cond_0
    sget-object v1, Lo/jd;->a:Lo/id;

    .line 14
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    sget-object v1, Lo/jd;->b:Lo/h;

    .line 19
    invoke-virtual {v1}, Lo/h;->c()Ljava/util/Random;

    .line 22
    move-result-object v1

    .line 23
    const/high16 v2, 0x7fff0000

    .line 25
    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    .line 28
    move-result v1

    .line 29
    const/high16 v3, 0x10000

    .line 31
    :goto_0
    add-int/2addr v1, v3

    .line 32
    iget-object v4, p0, Lo/p4;->a:Ljava/util/HashMap;

    .line 34
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 37
    move-result-object v5

    .line 38
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 41
    move-result v5

    .line 42
    if-eqz v5, :cond_1

    .line 44
    sget-object v1, Lo/jd;->a:Lo/id;

    .line 46
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    sget-object v1, Lo/jd;->b:Lo/h;

    .line 51
    invoke-virtual {v1}, Lo/h;->c()Ljava/util/Random;

    .line 54
    move-result-object v1

    .line 55
    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    .line 58
    move-result v1

    .line 59
    goto :goto_0

    .line 60
    :cond_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 63
    move-result-object v2

    .line 64
    invoke-virtual {v4, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 70
    move-result-object v1

    .line 71
    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    :goto_1
    iget-object v0, p0, Lo/p4;->e:Ljava/util/HashMap;

    .line 76
    new-instance v1, Lo/o0;

    .line 78
    invoke-direct {v1, p3, p2}, Lo/o0;-><init>(Lo/a8;Lo/x9;)V

    .line 81
    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    iget-object v0, p0, Lo/p4;->f:Ljava/util/HashMap;

    .line 86
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 89
    move-result v1

    .line 90
    if-eqz v1, :cond_2

    .line 92
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    move-result-object v1

    .line 96
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    invoke-virtual {p3, v1}, Lo/a8;->a(Ljava/lang/Object;)V

    .line 102
    :cond_2
    iget-object v0, p0, Lo/p4;->g:Landroid/os/Bundle;

    .line 104
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 107
    move-result-object v1

    .line 108
    check-cast v1, Lo/m0;

    .line 110
    if-eqz v1, :cond_3

    .line 112
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 115
    iget v0, v1, Lo/m0;->a:I

    .line 117
    iget-object v1, v1, Lo/m0;->b:Landroid/content/Intent;

    .line 119
    invoke-virtual {p2, v0, v1}, Lo/x9;->K(ILandroid/content/Intent;)Ljava/lang/Object;

    .line 122
    move-result-object p2

    .line 123
    invoke-virtual {p3, p2}, Lo/a8;->a(Ljava/lang/Object;)V

    .line 126
    :cond_3
    new-instance p2, Lo/H1;

    .line 128
    const/4 p3, 0x1

    .line 129
    invoke-direct {p2, p0, p3, p1}, Lo/H1;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 132
    return-object p2
.end method
